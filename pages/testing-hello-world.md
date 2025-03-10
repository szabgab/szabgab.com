=head1 Testing Hello World
=timestamp 1213032322
=tags testing, newsletter, test automation, Perl, Perl 5, Python, Ruby, PHP, Java, JavaScript, TAP

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

Almost every introductory level programming book starts 
with the example how to print Hello World.

Let's see the examples:

<h3>Perl</h3>

Create a file called hello_world.pl with the following content:

   print "Hello World\n";

and then type on the command line

   $ perl hello_world.pl

<h3>Python</h3>

Create a file called hello_world.py with the following content:

   print "Hello World"

and run

   $ python hello_world.py

<h3>Ruby</h3>

Create the file hello_world.rb that looks like this:

    puts "Hello World";

and run

    $ ruby hello_world.rb

<h3>PHP</h3>

In PHP it is very similar but we usually put the  HTML tags
around the code as the most common environment of PHP is the web
server. Actually when installing PHP you also get a command line
executer of PHP so you can execute your PHP script like this:

    $ php hello_world.php

The code, including the regular PHP embedding sequence
looks like this:

    &lt;?php
    echo "Hello World\n";
    ?&gt;

<h3>Java</h3>

It is a bit more work in Java.

Save the following code in hello_world.java 

    class hello_world {
      static public void main( String args[] ) {
        System.out.println( "Hello World" );
      }
    }

Then compile it using 

    $ javac hello_world.java

that should create another file called hello_world.class
Run it as

    $ java hello_world

<h3>Javascript</h3>

JavaScript alone cannot print to the screen it 
relies on the environment where it is embedded.
In its most common place - the web browser - 
one would rely on the Document Object Model (DOM)
of the browser, hence hello_world.js contains the following:

    document.write("Hello World");

In order to run that we would probably create an HTML file
called hello_world.html containing the following line 

   &lt;script src="hello_world.js" type="text/javascript"&gt;&lt;/script&gt;

Opening this with a browser will display Hello World.


<h3>Other languages</h3>

If you really feel the urge to try it in other languages,
there is a site listing the 
<a href="http://www.roesler-ac.de/wolfram/hello.htm">Hello 
World program in 373 programming languages</a>

<h2>Testing Hello World</h2>

That's nice, but how do we know that our freshly created
hello_world program works properly?

We can of course execute it manually (first compiling and 
linking and doing other magic where necessary) but we are
here to automate that.

So we are going to write an automated test for this application.

<h2>Preparations</h2>

We would like to be able to execute our hello_world "application" 
regardless of the language it was written in. So we need to do some
extra work. If you are on a Linux or Unix machine what you need to
do it to put the appropriate sh-bang line in the hello_world program.
So you put one of the following lines as the first line of relevant
scripts.

    #!/usr/bin/perl
    #!/usr/bin/python
    #!/usr/bin/php
    #!/usr/bin/ruby

for example your perl script will look like this:

    #!/usr/bin/perl

    print "Hello World\n";

Then you need to make the files executable by typing

    $ chmod +x hello_world.*

For Java we need some extra work. Create a file called
java.sh and add the following:

    #!/bin/sh
    javac hello_world.java
    java hello_world


Dealing with the JavaScript version I postpone to a later edition.

So now if the current directory (.) is in you PATH variable you can
execute the scripts just by typing their name. You don't need
to give the name of the Perl/Python/Ruby/PHP interpreter any more
as it is given on the sh-bang line. We can even execute the Java 
version with a single command.

In Microsoft Windows similar effect might be achieved by connecting the
action of the extension to the appropriate command.

So now that we can execute all the versions with a single command, let's
write a test script.

<h3>Test script in Perl</h3>

Let's create a file called hello_world.t and put in the following content:

    use strict;
    use warnings;
    
    use Test::Simple tests => 1;
    
    $ENV{PATH} = '.'; 
    
    my $output = qx{@ARGV};
    
    ok($output eq "Hello World\n");


The first two lines of the script are just standard Perl best 
practices.

    use Test::Simple tests => 1;

loads the basic testing module of Perl and declares that there is 
going to be one test unit (assertion).


With the following line

    $ENV{PATH} = '.'; 

we make sure that when we run the external script via the shell, the
shell will have the current directory in the PATH.

    my $output = qx{@ARGV};

Executes a command its name was received on the command line.
The output of the command will go in the $output variable.

The last line is where we are checking if the output was equal to
the expected string including the newline at the end.

    ok($output eq "Hello World\n");

The result of the condition (a true or false value) is the parameter
of the ok() function we received when we included the Test::Simple 
module. It does not do much. Just prints "ok" or "not ok" followed by
a sequence number.


So now we can run  

    perl hello_world.t  hello_world.pl

and we will see

    1..1
    ok 1

We can also run

    perl hello_world.t  hello_world.py

or

    perl hello_world.t  hello_world.rb

or

    perl hello_world.t  hello_world.php

or even 

    perl hello_world.t  java.sh

Each one will print exactly the same results, as each one
is a correct implementation of "Hello World"

    1..1
    ok 1

The first line of the output comes from the declaration
when we said that we are planning to run one test unit.

The second line was printed by the ok() function as it
received a true value.

<h3>TAP</h3>

The output we saw declaring the expected number of test units and
the oks is a simple example of TAP - the Test Anything Protocol
used in all the testing tools in Perl. You can read about it more
here: http://www.testanything.org/ but I am going to discuss it
more in detail later on.

In short we are expected to declare the number of test units in the
beginning of our test script and then for each unit we are trying 
to verify we should call ok() with a boolean value. True if the 
unite was successful, False if it failed.

<h3>Caveats</h3>

The application we are testing might also print something to the 
standard error (STDERR) which we did not capture. We'll look at
it later.

If the application "hangs" the test will "hang". We need to think
about that too.


<h2>Other Uses</h2>

The above was a slight too long introduction how to test
a command line application written in any language.

Of course a Hello World program is quite simple but
it is actually the same issue I am facing with the examples
I have in my training classes. I have hundreds of small scripts
that  should do something - or in some case should break in a 
particular way - to show a topic. I occasionally change
something in the example code. How can I know that it
did not break or if it still breaks in the way I want it to?

We'll talk about it next time.

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

