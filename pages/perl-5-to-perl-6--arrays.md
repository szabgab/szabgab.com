=head1 Perl 5 to Perl 6 - Arrays
=timestamp 1245228625
=tags Perl, Perl 6, newsletter, arrays
=redirect http://perl6maven.com/perl5-to-perl6-arrays



Continuing the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter to help people switch from Perl 5 to Perl 6. Looking at arrays.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

It was interesting to see the responses to the previous posting. 
There were several comments regarding the Object Oriented part 
or the lack of it. 


On one hand I believe there are many Perl programmers who 
don't write classes and they only use Object Oriented Perl 
when they use a module from CPAN that is implemented that way. 
Even then it is only a matter of different syntax and they 
don't use any of the actual features of OOP such as inheritance.
For them saying that everything is an object in Perl 6 and you 
write $name.lc might be strange and discouraging.

On the other hand there are many people in the Perl community
who are very familiar with OOP and then there are those coming
from Java/.NET/Python/Ruby who might only use Object Oriented
and would be disappointed if they saw the procedural nature of 
Perl 6.

So we have to be careful when we introduce Perl 6 to make it
clear that both ways are working. You can keep writing in procedural
style

    say(substr($str, 3, 2));

or use Object Oriented style:
   
    $str.substr(3, 2).say;

or you can mix them if you really want:

    say $str.substr(3, 2);

but probably I should not show that in class.

That's for teaching.


As for the language itself, maybe there should be a way to enforce 
the Object Oriented style so organization can decide they want 
everything to be written in OOP and then enforce it by writing
something similar to this at the top of every file:

    use oop;

Food for thought.


<h2>Perl 5 to Perl 6 : arrays</h2>

In the previous posting I wrote about scalars. Remember there is 
a lot more you can do with scalars, I just listed the things that 
seemed to be the most important in Perl 5 and how do they translate
to Perl 6 !

This time I'll write about arrays.

<h2>Creating arrays, Data::Dumper, debug prints</h2>


Creating an array in Perl 6 can be the same as in Perl 5 
For debugging prints one will use the .perl method 
instead of some Data::Dumper.

    use v6;
    my @numbers = ("one", "two", "three");
    @numbers.perl.say;   # ["one", "two", "three"]


In Perl 6 there is no need for the parentheses around lists:

    use v6;
    
    my @digits = 1, 3, 6;
    @digits.perl.say;  # [1, 3, 6]

<h2>quote word qw() is no longer used</h2>


The Perl 5 qw() operator is replaced by the angle brackets:

    use v6;
    my @names = <foo bar baz>;
    @names.perl.say;  # ["foo", "bar", "baz"]


<h2>Array interpolation in strings</h2>

Arrays do NOT interpolate any more in double quoted strings:

    use v6;
    my @names = <foo bar baz>;
    say "@names";                        # @names


So you can safely write the following without escaping the at mark:

    use v6;
    my @names = <foo bar baz>;
    say "joe@names.org";                 # joe@names.org


If you do want to interpolate the values of an array you have 
to put it inside curly braces:

    use v6;
    my @names = <foo bar baz>;
    say "names: {@names}";               # names: foo bar baz


<h2>Elements of an array, sigil invariance</h2>

When accessing elements of an array in Perl 6 the sigil does 
NOT change! This will be very strange for Perl 5 programmers but it 
has some advantages in the long run.


    use v6;
    my @names = <foo bar baz>;
    say @names[0];                       # foo


<h2>Number of elements in an array</h2>

Instead of the quite ugly $#array notation used in Perl 5 
(that returns the highest index in the array)
fetching the number of elements of array is done in Perl 6 by the 
elems() function.
Actually I think the object oriented writing is much nicer here:

    use v6;
    my @names = <foo bar baz>;
    say elems @names;                   # 3
    say @names.elems;                   # 3


<h2>Ranges</h2>

Ranges are available in Perl 6 just as in Perl 5:

    use v6;
    my @d = 1..11;
    @d.perl.say;    # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

It works with characters as well

    use v6;
    my @chars = ('a' .. 'd');
    @chars.perl.say;    # ["a", "b", "c", "d"]


<h2>for and foreach loop</h2>

The C-style version of the Perl 5 "for" loop is now called "loop"
but I won't show it here as it is way better to use the
the iterator style for loop that most people in Perl 5 write as "foreach".
In Perl 6 it is spelled as "for" and looks like this:

    use v6;
    for 1..3 -> $i {
        say $i;       # 1   # 2    # 3     (on 3 lines) 
    }

The same works on arrays as well:

    use v6;
    my @names = <foo bar baz>;
    for @names -> $n {
        say $n;        # foo  # bar # baz    (on 3 lines)
    }

This is one of the cases where you don't need to declare a variable 
using "my". The looping variable is automatically declared for you 
and scoped to the block of the for loop.



<h2>Iterating over the indexes of an array</h2>


If you need to iterate over the indexes of an array then you could write

    use v6;
    my @names = <foo bar baz>;
    for 0..@names.elems -1 -> $i {
        say "$i {@names[$i]}"; # 0 foo   # 1 bar  # 2 baz  (on 3 lines)
    }

Or you can pick one of the suggestions I got from Moritz Lenz 
on #perl6 (Thanks Moritz!):


    use v6;
    my @names = <foo bar baz>;
    for @names.keys -> $i {
        say "$i {@names[$i]}"; # 0 foo   # 1 bar   # 2 baz    (on 3 lines)
    }

The keys() method borrowed from the hashes will return all the indexes 
of an array. Even if your array has "holes" in it, elements with undef 
as value, keys() will still include the indexes of such elements.


<h2>split</h2>

split() acts similar to its Perl 5 version but the defaults do not 
apply any more and you should read the spec anyway.
See <a href="http://perlcabal.org/syn/S32/Str.html">S32-setting-library/Str.pod</a> for more details.


    use v6;
    "a,b,c".split(',').perl.say;    # ["a", "b", "c"]


<h2>Conclusion</h2>

That's it for today. There are more things to say about arrays but 
as I also have two chapters in my regular Perl 5 training
for arrays I figure I can split that into two here as well.


Stay tuned for arrays, hashes, files, control structure
and the more advanced stuff.

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


