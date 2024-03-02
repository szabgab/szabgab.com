=head1 Perl 6: Is a value IN a given list of values?
=timestamp 1237284490
=tags Perl 6, Perl, newsletter, junctions
=redirect http://perl6maven.com/perl6-is-a-value-in-a-given-list-of-values

=abstract start

The third entry of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter. Here you can read about how to find out if a given value is
among some values similar to the IN operator in SQL or what you might thing
about sets.

=abstract end

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

<h2>User Comments</h2>

After the previous post Justin C. Sherrill recommended to point 
out how to print a curly braces in a double quoted string.

You need to escape them the same way you need to escape
the $ signs in strings if you want to print literal $ signs:

    use v6;
    my $name = "Foo";
    
    print "\$name = \{  $name  \} ";

Actually in the above case you would not need to escape the closing
curly brace but I think it is better to do that always.

Thanks for mentioning it!

<h2>Is a value IN a given list of values?</h2>

Recently on the Israeli Perl Mongers mailing list someone asked
if there is 
<a href="http://perl.org.il/pipermail/perl/2009-March/010172.html">an 
operator in Perl similar to the IN word in SQL</a>.

There were several responses pointing to the right direction on
how to solve the issue but the ultimate answer remains the same.
In Perl 5 there is no such operator.

In Perl 6 there is the any() function that provides some functionality
similar to the IN word in SQL. Let's see how it works:

<h2>Is this a weekday?</h2>

    use v6;

    my @weekdays = <Monday Tuesday Wednesday 
        Thursday Friday Saturday Sunday>;

    my $day = "Tuesday";
    say $day eq any(@weekdays)
        ?? "$day is a weekday" 
        !! "$day is NOT a weekday";

The above code will print

    Tuesday is a weekday

What happens here is that perl will try to compare each element
in the @weekdays array with the content of the $day scalar using "eq". 
If *any* of them results in true then the expression is true.

<h2>Ternary operator in Perl 6</h2>

Side note: 
The ?? !! pair is the ternary operator of Perl 6 its syntax is

   CONDITION   ??    VALUE_IF_TRUE    !!    VALUE_IF_FALSE;

In other languages (including Perl 5) it is usually written as ? :
but apparently it is not used that often so in order to please
<a href="http://en.wikipedia.org/wiki/David_A._Huffman">David A. Huffman</a>
and to give way for other, more frequently used operations,
this one became longer.

<h2>Is it still a weekday ?</h2>

For the completeness let's see what happens when none
of the values match:

    my $other = "Holiday";
    say $other eq any(@weekdays)
        ?? "$other is a weekday"
        !! "$other is NOT a weekday";

The same code but without a matching value will print:

    Holiday is NOT a weekday

<h2>Compare numbers with less than</h2>

In the next example we'll see that the any function
can be used with other comparison operators such
as the numerical less than operator:

    # you can use other operators as well
    my @numbers = (6, -12, 20);
    say any(@numbers) < 0
        ?? "There is a negative number"
        !! "No negative number here";

The result is:

    There is a negative number

It works in case there is no negative number too:

    my @positive_numbers = (6, 12, 20);
    say any(@positive_numbers) < 0
        ?? "There is a negative number"
        !! "No negative number here";

Output:

    No negative number here

<h2>Other keywords: none, all, one</h2>

There are other functions too, not only the *any*
function: (all, one and none)


    say none(@positive_numbers) < 0
        ?? "No negative number here"
        !! "There is a negative number";

Will print:

    No negative number here

    say all(@positive_numbers) > 0
        ?? "All are positive numbers"
        !! "There is a NOT positive number";

Will print:

    All are positive numbers

Use whichever fits the best the sentence you are writing.

<h2>Writing it shorter</h2>

Sometimes you have a value and need to check
if it equals to any of the listed values:

    use v6;
    
    my $n = 12;
    say ($n == 23 or $n == 42) ?? "ok" !! "not ok";

With the *any* function you can also write like this:

    say $n == any(23, 42) ?? "ok" !! "not ok";

The any function also has an infix operator version 
which is the single pipe, so you can also write this:

    say $n == 23|42 ?? "ok" !! "not ok";

They will all print "not ok";

<h2>Junctions</h2>

What all these keywords and the relevant operators do is actually
creating a data type that is called a Junction. 
It is a scalar value that holds multiple values in an unordered way.
Similar to a set.

So the first example could be written like this:
    
    use v6;
    my $weekdays = any <Monday Tuesday Wednesday Thursday Friday Saturday Sunday>;

    say $day eq $weekdays 
        ?? "$day is a weekday" 
        !! "$day is NOT a weekday";

Here we create a junction instead of an array 
and then use this junction in the comparison.

<h2>Other operations on Junctions</h2>

In addition to the comparison operations we saw earlier
we can do other operations on junctions. The operation
will be executed on each one of the values in the junction
and the result will be a new junction with the changed values:

    use v6;

    my $numbers = any(23, 42);
    $numbers.perl.say;
    any(23, 42)

    $numbers++;
    $numbers.perl.say;
    
This will print the perl representation of the junction:

    any(24, 43)

<h2>Functions on Junctions</h2>

You can even pass junctions as parameters to functions.
The function will be executed on each value separately 
- in an undefined order - and the result will be another
junction. So for example if we would like to create the 
3 character version of the months we can use the following
code:

    use v6;
    my $months = any <January February March April May June 
        July August September October November December>;

    my $short_names = substr($months, 0, 3);
    $short_names.perl.say;

Which should print

    any("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
        "Aug", "Sep", "Oct", "Nov", "Dec");

Unfortunately due lack of implementation the current version of
Rakudo prints

    "Jun"

which was quite surprising. Why did it pick June? It is not even the current month.

Well, it turns out that's just the first 3 characters
of Junction. 

In any case this is an open issue and the Rakudo team
will love to see someone who wants to implement 
substr() in Perl 6 that will handle junctions correctly.

See <a href="http://rakudo.org/">Rakudo</a> for more information.

<h2>Other Resource</h2>

The weekday example is based on the 
<a href="http://perlgeek.de/blog-en/perl-5-to-6/08-junctions.html">blog entry of Moritz Lenz</a>
I recommend looking at his Perl 6 and 
<a href="http://perlgeek.de/blog-en/perl-5-to-6/">Perl 5 to Perl 6 blogs</a>.

<h2>Getting Perl 6</h2>

I am using and recommending the Rakudo implementation
of  Perl 6 that runs on top of the Parrot Virtual Machine.

See the up-to-date instructions on 
<a href="http://rakudo.org/how-to-get-rakudo">how to get Rakudo</a>

That's it for now.

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

