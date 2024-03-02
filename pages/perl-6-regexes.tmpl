=head1 Perl 6 Regexes
=timestamp 1247748032
=tags Perl, Perl 6, regex, newsletter
=redirect http://perl6maven.com/perl6-regexes

=abstract start

Making the first steps learning regular expressions in Perl 6
in the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a> newsletter.

=abstract end


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

As a preparation to my Perl 6 class just before YAPC I
am going to keep sending out stuff, some of which might
not go deep in the guts of Perl 6. Some of this might
seem to be obvious but I have hard time putting the 
ideas in the right order to teach them so I hope you will
help me with comments either in e-mail to me or on my
web-site.


In any case I'd like to draw your attention to 
<a href="http://perlgeek.de/blog-en/">the blogs of Moritz Lenz</a>.
He has excellent explanations on some of the interesting
stuff in Perl 6.


<h2>Perl 6 regex</h2>

Let's start by saying that in Perl 6 we call these thing a Regexes
not Regular Expressions but you'd be forgiven if you used
either name. Just don't get into an argument with someone from
a University.

<h2>Regex operator</h2>

In Perl 6 the smart match ~~ operator is used for regex matching.

For negative matching use the !~~ operator.

<h2>Basic usage</h2>

Let's start with a simple example.

    use v6;

    my $str = 'abc123';

    if ($str ~~ m/a/) {
        say "Matching";
    }

    if ($str !~~ m/z/) {
        say "No z in $str";
    }

Both conditions will be true so both the word "Matching" and 
"No z in abc123" will be printed

<h2>Special characters</h2>

An important change from the way the regular expressions worked 
in Perl 5 is that in Perl 6 any non-alphanumeric character needs 
to be escaped. Even if they don't currently have any special 
meaning or you'll get a "Statement not terminated properly" 
error during compilation. In a way this will make all the 
regexes look less clean as we will seen a lot more character 
escaping but it might force us to pick cleaner solution 
even if they are more wordy.

So for example we will have to escape the = sign.

    use v6;


    my $str = 'abc = 123';

    if ($str ~~ m/\=/) {
        say "Matching";
    }


We will have to be very careful as there are going to 
be a number of cases that can easily trip up anyone who 
already uses regular expressions. For example the pound key # 
is now a special character by default meaning a comment.

So you'd better escape it when you really mean to match a # character.

The following example seems to be a bug in Rakudo as it should not even
compile but in fact it runs and prints "match 'a'"

    use v6;

    my $str = 'abc 123';


    if ($str ~~ m/ (#.) /) {
        say "match '$/'";
    }

Anyway, you get the point. That regex should have written something like this:

    if ($str ~~ m/ (\#.) /) {

<h2>The Match variable</h2>

I ran a bit forward with that example. Let me explain.

Every time there is a regex operation a localized version of 
the match variable $/ gets set to the actual match. 
That variable has a lot more power than simply containing the match.
We'll talk about that later but for now see this example:

    use v6;

    my $str = 'abc123';

    if ($str ~~ m/a/) {
        say "Matching   '$/'";       # Matching  'a'
    }

    if ($str !~~ m/z/) {
        say "No z in $str   '$/'";   # No z in abc123  ''
    }


<h2>Spaces in regex</h2>

Regex in Perl 6 disregard spaces by default. People who are used to
the Perl 5 style regular expressions - which means basically 
every programming language that has a regular expression library -
will usually think as spaces being significant in the regular 
expressions.

We will have to unlearn that and think about the individual 
bits and pieces that are the tokens we would like to match.

Basically Perl 6 regexes work as if you always had the /x modifier on
which in Perl 5 means disregard spaces and treat # as start of comment.

    use v6;


    my $str = 'The black cat climbed to the green tree.';

    if ($str ~~ m/black/) {
        say "Matching '$/'";     # Matching 'black'
    }

    if ($str ~~ m/black cat/) {
        say "Matching '$/'";
    } else {
        say "No match as whitespaces are disregarded";  # prints this
    }

As we can see in the above example the space in the regex does 
not match the space in the string.

The following will all match and print "Matching 'black cat'"
and the text after it.

    if ($str ~~ m/black\scat/) {
        say "Matching '$/' - Perl 5 style white-space meta character works";
    }

    if ($str ~~ m:Perl5/black cat/) {
        say "Matching '$/' - if some really wants, he can use the Perl 5 regexes";
    }

    if ($str ~~ m/black  ' '  cat/) {
        print "Matching '$/' - ";
        say "the real Perl 6 style would be to use strings embedded in regexes";
    }

    if ($str ~~ m/black <space> cat/) {
        print "Matching '$/' - ";
        say "or maybe the Perl 6 style is using named character classes ";
    }

In any case this points out that we could just as well write:

    if ($str ~~ m/  b l a c k <space> c a t/) {
        say "Matching '$/' - a regex in Perl 6 is just a sequence of tokens";
    }

So you can see that as a fall-back mechanism one can always 
use plain Perl 5 regular expressions but of course that's not recommended.

You can see that once can embed literal strings in the regex 
using single quotes and there are new type of character classes 
writing angle brackets.


<h2>Matching everything</h2>

The . (dot) is a meta-character that will be ready to match 
any character.

As opposed to the Perl regular expressions in Perl 6 this includes
newlines

If you want to match any character except newline you can use the 
\N special character class.

    use v6;

    my $str = 'The black cat climbed to the green tree.';


    if ($str ~~ m/c./) {
        say "Matching '$/'";      # 'ck'
    }

    my $text = "
    The black cat
    climbed the green tree";

    if ($text ~~ m/t./) {
        say "Matching '$/'";
    }
    
You can see that the output is on two lines:
't
'

    if ($text ~~ m/t\N/) {
        say "Matching '$/'";     # 'th'    of the word 'the'
    }

In the last two example you can see that . will be ready to match
a newline while \N not.


<h2>Conclusion</h2>

That's it for now. 
I am already preparing the next post about regexes. 
Please post/send your comments!


<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

