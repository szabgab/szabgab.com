=head1 Writing an HTTP Server in Perl 6
=timestamp 1307520519
=tags Perl, Perl 6, Rakudo, HTTP, screencast

I took a long break from the screencasts but I think now I am going to be back making several new ones.
I'll try to change the setup a bit and with the help of my son I plan to add some more video editing.

It is fun to prepare these short movies especially as it is now a family business but I also 
would like to know if you like what you see in these screencasts. So if you like them then 
please upvote them and tell your friends about them. Oh and don't forget to 
<a href="http://www.youtube.com/gabor529">subscribe</a> to my YouTube channel!

Now let's see the actual screencast.

Direct link to the <a href="http://www.youtube.com/watch?v=VJi1hsB4vN0">HTTP Server in Perl 6 screencast</a>

<iframe width="560" height="349" src="http://www.youtube.com/embed/VJi1hsB4vN0" frameborder="0" allowfullscreen></iframe>


The latest source code release of Rakudo Star was more than a month ago but there was no binary version.
As I recently learned how to create Windows installers for applications I built one for Rakudo as well
and posted in my blog. ( <a href="/rakudo-star-2011-04-for-windows.html">Rakudo Star 2011.04 for Windows</a> ). To get the file, go to the web site of 
<a href="http://rakudo.org/">Rakudo</a> where you will find a link to 
<a href="https://github.com/rakudo/star/downloads">the download page</a> in Github.
There you can pick the latest Windows Installer (currently rakudo-star-2011.04.v2.exe ) download it
to your local disk and run the exe file.

For various reasons the installation path had to be hard coded and it is going to be c:\rakudo.

Once you installed Rakudo, you can go to "Start -> All programs -> Rakudo Star -> Rakudo REPL".
This will open a small black window where you can start typing Perl 6 code:

  42.say

That's enough for now to be sure it works.


Rakudo Star also comes with HTTP::Server::Simple, a Perl 6 module to implement simple web servers.
Just type in

  use HTTP::Server::Simple;
  HTTP::Server::Simple.new.run;

and you have a working web server.
Of course if you kill this web server you will also kill the Perl 6 REPL but we don't need it any more now.

We will take a look at the <a href="https://github.com/mberends/http-server-simple/">examples</a> 
that are part of the HTTP::Server::Simple package. The first examples: 01-simple-base.pl6 is about the same
as we typed in. It looks like this:

  use HTTP::Server::Simple;
  my HTTP::Server::Simple $server .= new; 
  $server.run;

The first line loads the module as usual.
In the second line

  my HTTP::Server::Simple $server
  
declares a scalar variable called $server that must be of type HTTP::Server::Simple

The

   .= new;
   
part calls the constructor of the same class and assigns the result back to the left hand side.
Finally 

  $server.run;

calls the run method on the object launching the web server on its default port of 8080.


The second example ( 02-simple-small.pl6 ) is slightly more complex:


  use v6;
  use HTTP::Server::Simple;
  my $NL = "\x0D\x0A";
  
  class Example::Simple::Small is HTTP::Server::Simple {
    has %!header;
    has $!path;
    has $!query_string;
    method header ( $key, $value ) {
        %!header{$key} = $value;
    }
    method path ($path) {
        $!path = $path;
    }
    method query_string ($query_string) {
        $!query_string = $query_string;
    }
    # override the request handler of the base class
    method handle_request () {
        print "HTTP/1.0 200 OK";
        print "$NL$NL";
        say "<html>\n<body>";
        say "{self.WHAT} at {$!host}:{$!port}";
        say q{<table border="1">};
        for %!header.keys -> $key {
            my $value = %!header{$key};
            say "<tr><td>{$key}</td><td>{$value}</td></tr>";
        }
        say "</table>";
        say "Path: {$!path}<br/>";
        say "Query string: {$!query_string}<br/>";
        say "</body>\n</html>";
    }
  }
  my Example::Simple::Small $server .= new;
  $server.run; # now browse http://localhost:8080/whatever?name=value

It starts by making sure this code is only consumed by a perl 6 compiler, loads the module and then
declares a new class called Example::Simple::Small subclassing the HTTP::Server::Simple.
   
  class Example::Simple::Small is HTTP::Server::Simple {

This is followed by the definition of 3 private attributes and then 3 methods to update those attributes.
The main method (handle_request) will first print the name of the class, the host name and the port-number.
Then it will print an HTML table showing the details of the request header.
Finally it also prints the path of the request and the query string. These are the essential parts of
any HTTP request.

This is of course very bare bones but it allows you to start playing with this and 
start implementing web applications using Perl 6.

I am also sure that in any real application you will use a templating system and
will not embed html in the Perl code.


<h2>End</h2>

Thank you for watching this video. If you liked it, please upvote it and comment on 
it to encourage me to make more such screencasts.

Oh, and don't forget to <a href="http://www.youtube.com/gabor529">subscribe</a> to the channel!

<hr />
This entry was also sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr />

Watch more <a href="/perl6.html">Perl 6</a> related screencasts.
  

