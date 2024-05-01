=head1 Reporting Test Results
=timestamp 1239191451
=tags newsletter, testing, TAP, Perl, Perl 5, Smolder
=indexes TAP, Smolder, Test::Harness, TAP::Formatter::HTML

=abstract start

It is not enough to run tests and get OKs and not OKs, it is also
important to have a nice way to report these results. In this
entry we are going to look at some of the ways TAP streams can 
be displayed in a nicer way that pure text report.

=abstract end

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>


<h2>Welcome back</h2>

In preparation to the Test Automation classes in Oslo two
weeks from now I am going over my comments I made 
last month in Frankfurt. One of the missing items  was
showing how the results of the tests that are in TAP
format can be presented better.

After all a textual report such as this:

    tap/01-success..........ok   
    tap/02-failure..........1/4 
    #   Failed test 'this fails'
    #   at tap/02-failure.t line 8.
    
    #   Failed test '2+2 should be 4'
    #   at tap/02-failure.t line 9.
    #          got: '4'
    #     expected: '5'
    # Looks like you failed 2 tests of 4.
    tap/02-failure.......... Dubious, test returned 2 (wstat 512, 0x200)
     Failed 2/4 subtests 
    tap/03-exception........1/5 # planning 5 but running only 3 - with exception
    a real exception at tap/03-exception.t line 11.
    # Looks like you planned 5 tests but ran 3.

that goes on for several pages is still too much and hard to read.

Besides people with less technical background won't like it.

So let's take a look at how one can improve this.

<h2>TAP the Test Anything Protocol</h2>

Just a reminder, we are talking about test results in TAP
format. <a href="http://www.testanything.org/">TAP</a> originated from the 
Perl world but there are implementations of it in every major programming 
language and even in PostgreSQL.

Turning TAP into an IETF standard is on its way.

The basic idea is that there is a separation between
the part that runs the tests and generates raw output
and the tool that creates reports from this raw output.

The raw output has an "ok" or "not ok" line for every
test unit or assertion with some additional information
between those lines.
Something like this:

    1..3
    ok 1 - Accessing web page
    ok 2 - Title is correct
    not ok 3 - Clicking on link 'release software'


<h2>Test::Harness</h2>

Traditionally in the perl world the tests are executed either when running
"make test" or "Build test" depending on the packaging system.
There is also a tool called "prove" that allows us to run some test files.
These all used the Test::Harness module to execute the tests and
then create a textual report.

People can also run the test script using the plan "perl" command and
they will see the raw, unaltered output of the test script.

Other implementations have their own tools how to run the tests.

The problem earlier was that it was quite hard to replace the formatting
options of [dist://Test::Harness].

Since the release of TAP::Harness 3 by <a href="http://www.hexten.net/">Andy Armstrong</a> about two
years ago the back-end of the Harness became much cleaner that allows 
the implementation of various other formatting options.

<h2>HTML view of TAP using TAP::Formatter::HTML</h2>

First we are going to take a look at [dist://TAP::Formatter::HTML] 
by <a href="http://www.spurkis.org/">Steve Purkis</a>.

The simples way to use it and to show it is by passing it as the
formatter option to "prove".
The following command will run all the .t files in the t/ subdirectory
merging the STDOUT and STDERR (-m) and running quietly (-Q).
The output is a single HTML file using the JQuery Javascript library
and a few external Javascript and CSS files.

   prove  -m -Q --formatter=TAP::Formatter::HTML t/ > output.html

In order to to show many parts of it I created several test script,
ran the above command on it and placed the result 
<a href="http://szabgab.com/talks/TAP_Formatter_HTML-0.07/output.html">on my web server</a>.


Go ahead, check it out. 

<h2>Collecting test data</h2>

As nice as that report is you don't always want to install 
TAP::Formatter::HTML on every system you run your tests. 
After all you might not even use Perl for generating the TAP stream.

In addition, later you might want to create additional reports
based on historical test results.

For this, we should have a way to collect the results of the test 
in raw data format. Move them to a central machine and generate 
the nice reports there, keeping the raw data files as well.

The archiving option of prove was created exactly for this:

    prove -a tap.tar.gz t/

This will run the tests and generate a tarbal from the resulting 
TAP stream along with a meta.yml file that contains some meta data
on the execution. You can take this tar.gz file and move it to another 
server. 

A warning though, the TAP streams of each test file is saved in
a file with the exact same name as the test file was. So if you create the
archive and the untar it in the same place you will overwrite your test 
scripts with the TAP streams. Better to open it in another directory.

<h2>Generating report from the archived files</h2>

Once you have the tar.gz file on the central machine you should
be able to create the HTML report.
Unfortunately I could not find a nice way to do it but 
<a href="http://perlitist.com/">Ash Berlin</a> and Steve Purkis 
showed me a workaround:

First unzip the file using 

    tar xzf tap.tar.gz

Then you can run the following command:

    prove --exec 'cat' -Q --formatter=TAP::Formatter::HTML t/ > output.html

Yes, this will only work on Unix, maybe on windows one can replace 'cat' with
'type' but I have not tried it. In any case I hope soon there will a better
solution to this.


<h2>Smolder</h2>

There is another way to collect and display test archive which is starting
to be a more integrated solution.

<a href="http://search.cpan.org/~wonko/">Michael Peters</a> has developed 
[dist://Smolder] more than a year ago but it made it to
CPAN only a week ago after the 
<a href="http://www.qa-hackathon.org/">QA Hackathon</a> that was held 
in Birmingham.


Smolder is a web based application to collect and display TAP streams.
Once installed it can be launched with the "smolder" command. 
By default it provides its own web server and uses SQLite so you don't 
have to worry about further configuration. Once you see it and decide 
that you'd like to use it in production with many test systems reporting 
to it you'll probably invest more in the installation, using Apache as the 
front-end server and MySQL as the database but at the beginning you can 
use the simple installation.

Once the system is setup you have a web based administrative interface 
to add projects, users and associate them with each other. Every user 
can then upload archived tap results as generated by the -a flag of 
prove. The system then provides various views of the tests results. 
You can view the details of a single test run and you can already
see some historical data as well.

<h2>Public Smolder Server</h2>

I did not want to setup a public Smolder server on my machine but 
if you'd like to see how it looks like you can visit the 
<a href="http://smolder.plusthree.com/">publicly accessible 
Smolder installation</a> at <a href="http://plusthree.com/">Plusthree</a>


Not only that, but if you are running an open source project you can ask 
Michael if can still add your project to use this public server.

Personally I'd really like to see some open source project that are not
written in perl or related to the Perl community having some data there
but of course Michael is the one who know if the machine still has capacity
to add your project.

<h2>Setting up Smolder</h2>

So in order to install Smolder you'll have to configure your CPAN 
shell and then type

    cpan install Smolder

That should install all the dependencies.

Once you installed it, as of version 1.35 you have to do the following 
to start the server:

First 

    mkdir ~/.smolder 
    echo "HostName    smolder.local" > ~/.smolder/smolder.conf

In addition you have to change the /etc/hosts file so smolder.local 
will resolve to 127.0.01
You can of course use any name with at least one . in it.
/etc/hosts needs to have the following line in it:

    127.0.0.1 smolder.local

Then you can launch Smolder using the following command:

    smolder -c ~/.smolder/smolder.conf

It should tell you that it is ready to be accessed 
using your browser at <a href="http://smolder.local:8080/">http://smolder.local:8080/</a>

<h2>Uploading TAP streams</h2>

You can create users, projects, associate them to each other
and upload TAP streams to the server using your browser.

When you had enough of manual uploading you can take a look at
the smolder_smoke_signal command that came with Smolder to upload
your archived files.

This is the command you can use to do it.

    smolder_smoke_signal --server smolder.foo.com:port \
         --username myself --password s3cr3t --file tap.tar.gz \
         --project MyProject

Now you can setup your test machines or instruct your developers
to upload their results after every test run. This will give you
plenty of data quickly.


Enjoy and show it around.

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>


