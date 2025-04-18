=head1 What is the last element of an infinite list or how to get started with Perl 6 ?
=timestamp 1238999462
=tags Perl 6, Perl, newsletter, IRC, pastebot



In this part of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter we look into how to get started. Where to read the documentation, the spec-test.
How they are integrated. We take a look at the IRC channel used by the Perl 6 developers,
the perl 6 evalbot and the pastebot used to share code snippets.

We'll also check out what is the last element of an infinite list.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>



<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

Yesterday was the second part of the Introduction to Perl 6 talk
I gave in the Tel-Aviv Linux User Group. Unfortunately there
were only 4 people including myself. I wonder if that reflects on the
state of Perl 6, the level of the first part I gave two weeks earlier 
or the others were just lazy and planning their Passover Holidays.

Anyway, maybe because of the small number of participants the meeting 
was good, there were lots of good questions especially on why and 
how to start writing Perl 6. So let me address those questions here too.

<h2>How to get started with Perl 6</h2>

Currently Perl 6 is not yet in the state of easily writing in it. 
There are lots of features not yet implemented, some of them being 
quite important. So if you are planning to actually start writing 
Perl 6 code be prepared that you will bump into all kinds of obstacles.

<h2>Why write Perl 6 now?</h2>

You cannot expect your Perl 6 code to be used in production yet.
It will take a lot more time to write anything in Perl 6 than
in any of the languages you actually know, so why start writing 
Perl 6 now?

The reason is to start learning it now. The learning curve of Perl 5 
is considered gentle but long. IMHO The learning curve of
Perl 6 can be still gentle but it is way longer than that of Perl 5.

Just in the previous issue I wrote about the subroutines in Perl 6.
In Perl 5 I can teach subroutines in 5-6 slides. In Perl 6 I think 
I would need more than 40 slides to cover it all. Obviously that would
be too much for an introduction course. Anyway it just shows that 
you'll have to take your time learning Perl 6.

As there are not many examples or explanations on how to write 
Perl 6 yet, a lot of things you will need to learn by reading the specs.
That can be hard as it is very dense. Then you go out to experiment
and you might quickly find that things don't work as the spec says.

As someone who is just learning Perl 6 it is hard to tell when did you
misunderstand the specs and when did you just bump into a bug in
the implementation or a feature that has not been implemented yet?

<h2>Resources</h2>

It can be frustrating but there are a couple of very good resources 
to help you. 

<h2>Specs and spec-tests</h2>

First of all the specs, the spec-test suit and their integration.
Both the specs (the Synopsis documents) and the unit tests
live in the Pugs Subversion repository. Using a web browser the specs 
can be read here: 
Perl 6 spec in the Pugs repository.
and the spec-tests are here: 
Perl 6 spec-tests in the Pugs repository
organized according to the chapters of the specs which
in turn follow the order of the <a href="http://books.perl.org/book/134">Camel book</a>.

Of course you can check then out using the svn command
and read the specs using perldoc or your favorite text editor.


The best view though might be the integration of the two
on <a href="http://perlcabal.org/syn/">Perl cabal</a>.
If you click on the word "Synopsis" in the first clickable column
- for some reason all the links are called just like that - 
you'll reach the a HTML version of the relevant chapter from the
specs integrated with the tests.

In every test file there are comments saying which part of 
the spec are they testing. These pages are build using those 
smart links so you can click on links such as this one:

    - Show t/spec/S02-literals/quoting.t lines 2558 (no results) -
    
and see the relevant tests. 

So you can read the spec and then see examples.
You can also see if those tests were successful or not
or if they are being skipped. The test suite has comments 
such as this:

    #?rakudo skip 'nested curlies in q{...}' 

meaning that the next test - a call to ok() or is() or 
some similar testing function - or the next block of
tests should be skipped on Rakudo.

That usually mean Rakudo does not understand that code, 
sometimes even cannot parse it.

In case you don't find an example or if you find the examples
lacking this can be a good opportunity to help the Perl 6
development effort by writing more tests.

Before doing that the best would be to talk to some 
of core developers. For that the best way is to use IRC.

<h2>IRC</h2>

The Internet Relay Chat is one of the oldest online chat 
systems. In order to use it you need an IRC client, then you
need to connect to an IRC server and in there to join
a channel. A channel is like a room full of people talking
at the same time. There are many desktop IRC clients
but if you don't have one the best might be to start with a 
web based IRC client. I just found <a href="http://www.mibbit.com/">Mibbit</a>
The Perl 6 people are using the    <i>irc.freenode.org</i> server
and the name of the channel is   <i>#perl6</i>.

As I am writing this there are 134 people in the channel, 
apparently most of them sleeping.

If you have an IRC client installed then <a href="irc://irc.freenode.org/#perl6">this link</a>
should open it to the right place.

Otherwise you can use Mibbit:
Go to the web site of <a href="http://www.mibbit.com/">Mibbit</a> and type in the relevant 
information by yourself or you can click on this link I prepared:
<a href="http://widget.mibbit.com/?server=irc.freenode.org&channel=%23perl6">IRC #perl6 on freenode using Mibbit</a>

You will be asked to type in a nickname with a suggested random
name already filled in then "Click to join chatroom".
Once you are in you'll see people talking. Not only can you ask question 
here, but you can also try you code snippets. just type in

    rakudo: say "hello, my name is foo"

after a few second Rakudo will print its response.
The channel is logged so you can look up previous discussions.
For example, you can 
<a href="http://irclog.perlgeek.de/perl6/2009-04-05#i_1040560">look here</a>

mib_0gaypc is just the nick I was given when connecting using mibbit
from the meeting yesterday. You can follow a few lines and see.
One of the people in the class asked me what will happen if if we 
try to fetch the last element of an infinite list. In other words what will
happen if we run this code:

     (1..Inf)[*-1]

So I tried. I was not afraid of crashing the evalbot that runs the 
code as I did that earlier that day and <a href="http://perlgeek.de/">Moritz Lenz</a>
fixed the resource limit of Rakudo.

As you can see in that log, within a few second three heavyweights
of the channel started to talk about our little experiment: 

pmichaud, <a href="http://www.pmichaud.com/">Patrick Michaud</a>, 
the project leader of  Rakudo, 

masak, <a href="http://use.perl.org/~masak/journal/">Carl Masak</a>
author of a large chunk of the good Perl 6 code out there
including <a href="http://www.november-wiki.org/">November, the wiki</a>.

jnthn, <a href="http://www.jnthn.net/">Jonathan Worthington</a> who is, well, 
just him. He is one of the key developers of Parrot and Rakudo.

Within 10 lines we got to the point that Masak submitted a Rakudo
bug report on a related issue.

So not only have we got an answer in a few seconds but we also 
helped a tiny bit the development of Perl 6.

<h2>Private IRC channel</h2>

Of course you might not want to have all your trials and errors
on the #perl6 channel so you can open a private conversation with 
the p6eval bot. Just type in the following command:

     /msg p6eval rakudo: say "hello"

this will send a private message to the p6eval bot which will open
a new conversation window - in the case of Mibbit it opens a new
"tab" and sends you the answer. Once you switched to this tab
it is enough to just type 

   rakudo: command
   
to ask for the evaluation.

<h2>Perl 6 standard</h2>

The p6eval bot can also use other implementation and it can also
use the definition of Perl 6 to see if your code is correct syntactically.
This one uses the definition as Larry Wall writes it. So I type:

    std: command

And the p6eval bot will check if it is correct syntactically:
Let's see two examples:

    <mib_yv79dh>: std: say 42
    <p6eval>: std 26098: OUTPUT<<ok 00:02 35m>>

This shows the time it took to parse that code.

    <mib_yv79dh>: std: foreach my $x (1) {}
    <p6eval>: std 26098: OUTPUT<<##### PARSE FAILED ##### 
              Syntax error (two terms in a row?) at /tmp/JTnE5W5NEt line 1:------> 
       ...

This shows that the above code (which is actually a perl 5 construct) 
cannot be parsed by Perl 6.

That's usually a good indication that the error is on our side.

<h2>Pastebot</h2>

IRC is a really nice way for quick communication but it is pretty
much limited to single lines of code. What if you have a multi-line
snippet that you would like to show to others?

Pastebots are the tool for this. Basically a pastebot is a 
web page where you can paste some code snippet. Once you submit the
form it will generate a unique page containing your code. You can 
send the address of this unique page to others.

Even better when the pastebot is connected to an IRC channel. 
Once you submit the form it will send the link along your chosen
nickname and the one-line summary you wrote to the selected IRC
channel. People can then click on those links and see your example 
immediately.

The Perl 6 people use <a href="http://sial.org/pbot/perl6">this pastebot</a>.
 
<h2>Testing and contributing</h2>

Now let me return to the testing and documentation for a second.
If you found that there are test cases missing from the test suite
and if you don't have commit access to the Pugs repository yet
then it is very much recommended to join the channel and ask how
can you submit new test cases.

You can use the pastebot to show what did you write so the 
members on the channel will be able to evaluate your suggestion
easily.


<h2>Mailing lists</h2>

There are also mailing lists that can be used but they are
usually a lot slower in response time. Try sending a message
to 

    perl6-users-subscribe@perl.org

to subscribe to the perl6-users list.

The <a href="http://www.perl6.org/">archive of the list</a>.

<h2>Getting Perl 6</h2>

I am using and recommending the Rakudo implementation
of  Perl 6 that runs on top of the Parrot Virtual Machine.

See the up-to-date instructions on how to get them
on the <a href="http://rakudo.org/how-to-get-rakudo">Rakudo web site</a>

That's it for now.

<h2>Comments and Discussion</h2>

I am always open to comments and criticism 
(just have a positive spin to it :-)
So if you find any issue with the examples,
please don't hesitate to let me know.

If you'd like to ask question about Perl 6, 
probably the best would be to sign up on the Perl 6 
users list by sending an e-mail to

    perl6-users-subscribe@perl.org

You can also look at the archive of 
the <a href="http://www.perl6.org/">perl6-users list</a>.

Previous issues of this newsletter can be found on my
<a href="/perl6-tricks-and-treats">Perl 6 web site</a>

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

