=head1 Perl 6: Scalar, Array and Hash interpolation
=timestamp 1236937483
=tags newsletter, Perl 6, Perl, scalar, array, hash
=redirect http://perl6maven.com/perl6-scalar-array-and-hash-interpolation



The second entry of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter (the first was <a href="/perl-6--arrays-with-unique-values.html">Perl 6: Arrays with unique values</a>) in which you'll see
how to interpolate variables and expressions in a string.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

This is the second message in 2 days already but don't worry, 
I don't think I'll be able to keep up the frequency.

The list does not have an archive, 
<a href="/perl6-tricks-and-treats">past issues</a> can be found on my 
web site.
   
I'd like to thank Thomas Maier who pointed out a bug in the 
installation instructions I gave. That's awesome. That means
at least he tried to follow them.

Anyway, I won't send his fix now, I'll let you all find it yourself; :-)

Besides, <a href="http://www.pmichaud.com/">Patrick R. Michaud</a> -
Rakudo project lead - also contacted 
me and pointed me to the current most up-to date set of 
instructions they are maintaining on the 
<a href="http://rakudo.org/how-to-get-rakudo">Rakudo web site</a>.


I am really happy that some people pointed out flaws in my first
posting already. Keep it that way!


<h2>Scalar, Array and Hash interpolation</h2>

If you place a scalar variable in a double quoted string
Perl 6 will put the value of the scalar in the the string just
as it happens in Perl 5.

    use v6;

    my $name = "Foo";
    say "Hello $name, how are you?";
    
And the output will look like this:
    
    Hello Foo, how are you?


Arrays and Hashes are not interpolated in the same way, but there
is a much more extended way for interpolating such variables.

Within a string anything you put in curly braces will be interpolated
so if you have an array you can say:

    my @names = <Foo Bar Moo>;
    say "Hello {@names}, how are you?";
    
Output:
    
    Hello Foo Bar Moo, how are you?

The problem here is that based on that output you don't know
if there were 3 elements in that array or two "Foo Bar" and "Moo"
or just one: "Foo Bar Moo".

<h2>Interpolating expressions</h2>

But that's not a real problem, actually the curly braces in the double 
quoted string allow you to put any expression between them, 
the expression will be evaluated and the result will be interpolated:
So you can say:

    say "Hello { join(', ', @names) } how are you?";

And the output will look like:

    Hello Foo, Bar, Moo how are you?

While this still does not exactly show how many values are there, it provide
a much bigger flexibility.
As a side note, for the object oriented people out there, you could write the
above code as follows:

    say "Hello { @names.join(', ') } how are you?";

Which will yield the same output as above.

<h2>Debugging prints</h2>

For ultimate debugging purposes, the best way to print is of course using the .perl
method of the array:

    say "Names: {@names.perl}";

That will print

    Names: ["Foo", "Bar", "Moo"]

But what if you'd also like to see the name of your variable as well. 
Then you can rely on the fact that arrays are not normally interpolated
in strings and write:

    say "@names = {@names.perl}";

That will print

    @names = ["Foo", "Bar", "Moo"]

<h2>Just expressions</h2>

    say "Take 1+4";

will print
    
    Take 1+4

as expected but as I wrote you can put any expression in the 
curly braces, so you can also write

    say "Take {1+4}";

that will print

    Take 5

I wonder when will it print 
<a href="http://en.wikipedia.org/wiki/Take_Five">Take Five</a>.

<h2>Interpolating Hashes</h2>

There is no any specially in interpolating hashes.
It works just the same as 

    use v6;

    my %phone = (
        foo => 1,
        bar => 2,
    );

    say "%phone = { %phone } ";

will print

    %phone = foo   1
    bar  2

which is not that nice so better use the .perl method and write:

    say "%phone = { %phone.perl } ";

which will print:

    %phone = {"foo" => 1, "bar" => 2}

that's already a usable representation of the data.

<h2>Interpolating multidimensional arrays</h2>

Just to complete the picture I'd like to show a two dimensional
array and how it looks when printed with the .perl method and
interpolated in a string.

    use v6;

    my @matrix = (
        [1, 2],
        [3, 4],
    );

    say "@matrix = { @matrix.perl }";

Output:

    @matrix = [[1, 2], [3, 4]]


<h2>Getting Perl 6</h2>

I am using and recommending the Rakudo implementation
of  Perl 6 that runs on top of the Parrot Virtual Machine.

See the up-to-date instructions on 
<a href="http://rakudo.org/how-to-get-rakudo">how to get Rakudo</a>
on the Rakudo web site

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

