=head1 Perl 5 to Perl 6 - Scalars
=timestamp 1245164696
=tags Perl, Perl 5, Perl 6, newsletter, scalars
=redirect http://perl6maven.com/perl5-to-perl6-scalars



The first entry of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter in our quest to switch from Perl 5 to Perl 6. Looking at the scalars.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

I have to apologize as it has been more than 2 months since I 
sent out the last newsletter. 
After I came back from Oslo, where I gave a Perl 6
training class a client contacted with an urgent project
that had a tight schedule. That meant that up till yesterday I have
been working quite intensively at the client. That did not leave 
time for writing either the Test Automation Tips or the 
Perl 6 Tricks and Treats.

Anyway, the dead-line is now over and they are moving into a calmer 
period in which I only visit them once or twice a week.


<h2>Perl 5 to Perl 6 : scalars</h2>

So today I wanted to start writing about Perl 6 again but I was 
not really sure what to write about next. Hence I decided
to go over the Perl 6 training material and clean up parts that were 
incorrect or that were lacking during the training in Oslo.

Actually there was a part that was quite neglected since I wrote the
first version a few years ago and it might be an easier approach for
me to clean that up first.

So I am looking at the Perl 5 to Perl 6 chapter and will go over its
sections and send them out. That might be less clear to people who don't
know Perl 5. I apologize in advance. It also means I am going to send
a number of short postings in the next few days.

I wonder if I should also write similar chapters for people coming 
from other languages as well and which languages would be the most
important?

I start with scalars including the functions that seems to be the
most important to me. If you think differently, please tell me so
I can include those examples too.

<h2>print Hello World</h2>

In Perl 5 you normally use print() or starting from 5.10
you can use say() to print to the screen. The latter will
append a newline to whatever you had to say.

In Perl 6 they work the same.

    use v6;
    
    print "Hello World\n";
    say "Hello World";

<h2>Variable declaration using "my"</h2>

In Perl 6 you (almost) always need to declare your variables "my".
Think as if you had always added "use strict".
There are exceptions such as one-liners and certain constructs
that auto-declare the scoped variables for you.

    use v6;

    my $name = "Moose";

<h2>Scalar variable interpolation</h2>

In Perl 6 scalar variables still interpolate in double quoted strings:

    use v6;
    
    my $name = "Foobar";
    say "Hello $name";     # Hello Foobar

In order to make the Object Oriented people happy Perl 6 also allows this:

    use v6;
    
    my $name = "Foobar";
    "Hello $name".say;     # Hello Foobar

<h2>Reading from standard input</h2>


In Perl 5 you would use &lt;STDIN&gt;.

As reading a single line from standard input is usually preceded 
by a print statement the keyword to do that in Perl 6 is called prompt().

    use v6;
    
    my $line = prompt('Please type in your name: ');
    say "Hi $line, how are you?";        # Hi Foobar, how are you?

If you try this you will see that it chomps the newline off automatically.
Repeated reading without a prompt will be explained later.

<h2>Getting part of a string (substr)</h2>


The substr() function of Perl 5 is the same except that there is
no 4 parameter version. As all the other functions it can also
work in the object oriented way.

    use v6;

    my $line = "The brown cat climbed the green tree";
    say substr $line, 4, 3;   # bro
    $line.substr(4, 3).say;   # bro


<h2>Length of a string</h2>

In Perl 5 we used the length() function.

In order to avoid ambiguity in Perl 6 there is no length() function.
Instead there are several functions with more precise meaning of the type 
of unit you are asking for. 
So bytes() will return the number of bytes in the string while, 
chars() will return the number of characters. 
Of course in my example you won't see any difference as the string is 
written in ASCII where each character is one byte long.

    use v6;

    my $a = "This is a string";
    say chars $a;  # 16
    say bytes $a;  # 16


There are also the graphs() and codes() functions but they are not yet 
implemented in Rakudo. See S32-setting-library/Str.pod for more details
( http://perlcabal.org/syn/S32/Str.html )


<h2>chomp</h2>


In Perl 5 there is a chomp() function to remove a trailing newline
after reading a line from the standard input or from a file.

In Perl 6 this function will be almost never used as reading from 
the standard input or from files will automatically chomp 
off the newlines. In any case, in Perl 6 chomp behaves differently 
as it returns the chomped string and does NOT change the original 
string.

    use v6;
    my $a = "abcd\n";
    my $b = chomp $a;  # $b is now "abcd"


<h2>defined</h2>


The defined() function is the same in Perl 6 as in Perl 5 checking if 
a scalar value has any value different from undef.


<h2>String concatenation using dot (.)</h2>

In Perl 5 dot (.) is used for string concatenation. I think it is a lot 
less used than one would think as in many cases we use string interpolation.
Maybe one of the most frequent use-cases is actually the short-cut string 
concatenation.


In Perl 6 the string concatenation is done using the ~ operator.
I think it will be even less used than in Perl 5 as the variable
and code interpolation in Perl 6 is much stronger. Anyway here is
the example:

    use v6;
    my $str = "Foo" ~ "Bar";
    $str.say;      # FooBar

I think the only place where it will be used a lot is the short-cut
version that looks like this ~=

    $str ~= " and Moo";
    say $str;      # FooBar and Moo

This can of course lead to some confusion but =~ is not the
regular expression operator in Perl 6 and the user will be 
told so if he gets it wrong.


<h2>String repetition (x)</h2>

String repetition that was the x operator stayed the same:

    use v6;
    say "abc" x 3;   # abcabcabc

<h2>index, rindex</h2>


The index() and rindex() functions of Perl 5 that
can locate a substring stayed the same in Perl 6 as well.

    use v6;
    my $s = "The brown cat climbed the green tree";
    say index $s, "b";    # 4

<h2>lc, uc</h2>


lc() and uc() turning strings to all lower case and all upper case
are the same in Perl 6 as in Perl 5.

    use v6;
    say lc "Hello World";    # hello world
    say uc "Hello World";    # HELLO WORLD

<h2>Conclusion</h2>

I know these are no big tricks here just plain code 
but I hope this will help some people in learning Perl 6.

Stay tuned for arrays, hashes, files, control structure
and the more advanced stuff.


<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

