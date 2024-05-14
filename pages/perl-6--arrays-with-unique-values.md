=head1 Perl 6: Arrays with unique values
=timestamp 1236840041
=tags newsletter, Perl 6, Perl, arrays, uniq, unique
=redirect http://perl6maven.com/arrays-with-unique-values


<h2>Note</h2>

This article is about <a href="/perl6.html">Perl 6</a>. If you are looking for solution regarding
the current production version of Perl 5, please check out the <a href="/perl-tutorial">Perl 5 tutorial</a>.
Specifially there is an article how to handle
<a href="/unique-values-in-an-array-in-perl.html">Unique values in an array in Perl 5</a>.
<hr>



The first entry of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter. Here you can read about how to get rid of duplicate values
in an array.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome to the Perl 6 Tricks and Treats</h2>

I opened the list on 11th March 2009 and this was the 
first message and the first post.

As of the name of this newsletter, I was not sure how I'd like 
to call it. I started with "Perl 6 code" and then other ideas
such as "bread crumbs" and "bait" came up. At one point I 
was even thinking about "Gragger" - as I opened the list on 
the day of Purim - but then my sister suggested "treats" and
then we arrived to the expression 
<a href="http://en.wikipedia.org/wiki/Trick-or-treating">Trick or treat</a>

I loved the idea but I though in our case tricks are treats
so we should use "and" between the two words.

Anyway, tips would be also a good name but I did not want to 
call it "Perl 6 Tips" as there already is a 
<a href="http://perltraining.com.au/tips/">Perl Tips</a> list and a 
good one. It's worth to 
<a href="http://perltraining.com.au/cgi-bin/mailman/listinfo/perl-tips">subscribe</a>
or read them on their web site.

This brings me to one of the things I can do on this list. 
I can go over the various tips given by the folks at 
<a href="http://perltraining.com.au/">Perl Training Australia</a> 
and write the Perl 6 version
for some of them.


<h2>Arrays with unique values</h2>

I'll start with the most recent tip from Jacinta and Paul:

<a href="http://perltraining.com.au/tips/2009-03-11.html">Tricks with Arrays and Hashes</a>
    

Basically they show various ways how one can take a list 
of values and return a sublist of the same values
after eliminating the duplicates.

With Perl 6 its much easier to solve the problem as there 
is a built-in called "uniq" that will do the job.

    use v6;

    my @duplicates = (1, 1, 2, 5, 1, 4, 3, 2, 1);
    say @duplicates.perl;           # [1, 1, 2, 5, 1, 4, 3, 2, 1]


    my @unique = uniq @duplicates;
    say @unique.perl;               # prints [1, 2, 5, 4, 3]

This works on strings as well:

    use v6;

    my @chars = <b c a d b a a a b>;
    say @chars.perl;                # ["b", "c", "a", "d", "b", "a", "a", "a", "b"]

    my @singles = uniq @chars;
    say @singles.perl;              # ["b", "c", "a", "d"]


<h2>Perl 6 Comments</h2>

A few comments to people new to Perl 6:

One should start every Perl 6 script by asking for v6;
version 6 of Perl.

You can add  .perl to every kind of variable and get 
back a dumped representation of the thing. In our 
case the thing is an array. Very handy for debugging.

say() is a built-in function in Perl 6 and it behaves as 
say() in Perl 5.10 printing to the screen and adding
a newline at the end.

Angle brackets < > allow one to create a list of 
values from a space separated list of items. In Perl 5 
the qw() operator was used for this.

<h2>Method calls</h2>

Actually "uniq" can also be used as a method call on the
array object...

    use v6;

    my @chars = <b c a d b a a a b>;
    
    my @singles = @chars.uniq;
    
... and some people will prefer to add the .say call to 
after the .perl call:

    @singles.perl.say;              # ["b", "c", "a", "d"]    

<h2>How to get Perl 6 ?</h2>

The developers keep an entry with up to date instructions on 
<a href="http://rakudo.org/how-to-get-rakudo">how to get Rakudo</a>.

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

