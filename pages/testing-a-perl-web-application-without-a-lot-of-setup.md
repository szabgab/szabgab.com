=head1 Testing a (Perl) Web application without a lot of setup
=timestamp 1238019597
=tags newsletter, testing, web, Perl, Perl 5
=indexes HTTP::Server::Simple, HTTP::Server::Simple::CGI, testing



In this posting I take break from the testing PHP session as 
I had some urgent work to do on a web application I have 
written 4 years ago.

In this article I explain how to setup a small stand-alone web
server written in Perl to test a web application.

I am also busy writing the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>



<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>


<h2>Testing a Web application without a lot of setup</h2>

I wrote <a href="http://cpanforum.com/">CPAN::Forum</a> a 
web forum more than 4 years 
ago and have not worked on it for a long time.

Recently a bunch of spammers decided to post their stupid ads
and the forum does not have a way to fight it. So after long
period of not touching the code this will be a good reason 
to start working on it again. At a minimum I'll have to add
a way to remove posts using the web interface and then give 
such right to some of the users.

Unfortunately the test suite is broken and probably
covers only a small fraction of the code. I know this for sure.
The TODO file had "Write Tests" three times on the top row.

So first, before I can work on the new feature I have to add 
a reasonable test suite. As I don't want to configure Apache
every time the tests run I wanted to have a way to run them
in stand-alone mode. 

Here is where [dist://HTTP::Server::Simple] comes in the picture.

<h2>Using HTTP::Server::Simple for test setup</h2>


<h2>Simple web server</h2>

Just in a few lines it allows me to write a simple web server:

I need two things.
One of them is a module that I called MyServer.pm 
which is a subclass of HTTP::Server::Simple::CGI 
and contains the following code:

    package MyServer;

    use strict;
    use warnings;
    use base qw(HTTP::Server::Simple::CGI);

    sub handle_request {
        my ($self, $cgi) = @_;

        print "Hello World";

        return;
    }

    1;


The handle_request method is the actual implementation of my
"application". It has access to the CGI.pm object and whatever
it prints to STDOUT will go back to your browser.

Theoretically you should send both the HTTP response
and the HTTP headers but for simple cases such as above
it will work without anything.


The second thing needed is a script which I called server.pl that 
- for the sake of simplicity - I placed in the same directory 
where the module is:


    use strict;
    use warnings;

    use FindBin;
    use lib "$FindBin::Bin";
    use MyServer;

    my $server = MyServer->new;
    $server->run;


The FindBin part helps perl to find the module even if you are
not running it from the directory where the script is.

Now if I run server.pl it will launch a web server on port 8080
and print the following message to the console:

HTTP::Server::Simple: You can connect to your 
server at http://localhost:8080/


So that's what I did and it displayed "Hello World" 
in the browser.



<h2>A more complex server</h2>

Now I can be really happy that I have been using 
[dist://CGI:Application] for most of my web development
lately as in that framework almost all the code goes
into modules and the main script (or mod_perl handler)
is just a few lines of code.


I can put those few lines in the MyServer.pm and I won't
need to touch any other part of the application. 
So the server.pl script remained the same and the MyServer.pm
changed to the following code:


    package MyServer;

    use strict;
    use warnings;
    use base qw(HTTP::Server::Simple::CGI);

    use CPAN::Forum;

    sub handle_request {
        my ($self, $cgi) = @_;

        print "HTTP/1.0 200 OK\r\n";

        my $app = CPAN::Forum->new(
            TMPL_PATH => "$ENV{CPANFORUM_ROOT}/templates",
            PARAMS => {
                ROOT       => $ENV{CPANFORUM_ROOT},
                DB_CONNECT => "dbi:SQLite:$ENV{CPANFORUM_ROOT}/db/forum.db",
            },
        );
        $app->run;

        return;
    }

    1;

Here we load the CPAN::Forum module, print the "200 ok"
HTTP response header and then the rest is a copy of the
main script of CPAN::Forum. It just creates the 
CPAN::Forum object with some parameters and then runs 
it.

Now if I run the server.pl script I can browse to the 
http://localhost:8080/ address and use it exactly as it
was on the real server. So I'll be able to write test 
using this small server.


<h2>Static pages</h2>

There is one issue remaining. I know CPAN::Forum does not
have a nice visual effect but even that was slightly broken
when running off the simple server. The reason is that
normally the static files are handled by the web server and
not the application and in our case nothing dealt with them.
So no css style sheet and no images were shown. Javascript
files would have had the same fate but no Javascript was used
on this site.

In order to fix that I had to add some more code to MyServer.pm
after some searching on CPAN I found [dist://HTTP::Server::Simple::Static]
that was created exactly for this problem. It is a mixin, adding
a new method to the subclass I created:

Here is what I had to add to MyServer.pm

    use HTTP::Server::Simple::Static;

Obviously, loading the module.
Then, just after the printing of the HTTP response
I fetch the path_info from the CGI object which is the
path in the requested URL.
If this indicates one of the static files then I hand it over
to the serve_static method giving it the CGI object and the path
to the root of the web server.

    print "HTTP/1.0 200 OK\r\n";

    my $path = $cgi->path_info;
    if ($path =~  m{^/img/} or $path eq '/style.css') {
        return $self->serve_static( $cgi, "$ENV{CPANFORUM_ROOT}/www" );
    }
    #warn $path;

    my $app = CPAN::Forum->new(
    ...

The warn which commented out was used to find other requests that might
need static handling.


That's it for now.

In one of the coming issues I should report on how
testing CPAN::Forum progresses.

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

