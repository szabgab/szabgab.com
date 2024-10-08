=head1 Perl 6: Looping over a list of values one at a time, two at a time and more
=timestamp 1237550823
=tags Perl 6, Perl, newsletter, for, zip
=redirect http://perl6maven.com/perl6-looping-over-a-list-of-values-one-at-a-time-two-at-a-time-and-more



The fourth entry of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter. We look at looping over lists, arrays, hashes. We look at how to
go over a list of values in pairs and how to go over two lists in parallel.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

The list does not have an archive, past issues can be 
found on <a href="http://szabgab.com/perl6-tricks-and-treats">my web site</a>.

Before the upcoming events and the actual content let
me congratulate the Parrot development team on the release
of Parrot 1.0.

Having a declared stable releases is a huge psychological 
milestone. I think now we'll be able to see many more people
starting to take Parrot seriously. This will make a positive
effect on Perl 6 and Rakudo as well.

As for myself, I should get back to try to improve the
Parrot plug-in of Padre so people who write code for Parrot
could use it as their IDE.

<h2>Looping over a list of values one at a time, two at a time and more</h2>

In Perl 6 the standard way to iterate over the elements of
a list or an array is by using the "for" statement. 
A simple version of it looks like this:


    use v6;

    my @fellows = <Foo Bar Baz>;
    for @fellows -> $name {
        say $name;
    }

This will print out the three values one under the other.

As an explanation syntax:

@fellows is an array with 3 elements in it.

The loop variable ($name) in the above case is automatically
declared in the loop so one does not need to declare it using "my"
and it is still not global. It is scoped to the block of the loop.

<h2>Looping over keys of a hash</h2>

The same way we can loop over keys of a hash - after
fetching them using the "keys" function.

    use v6;

    my %phone = (
        "Foo" => 123,
        "Bar" => 456,
    );

    for keys %phone -> $name {
        say "$name {%phone{$name}}";
    }

The declaration of hashes in Perl 6 is similar to that in 
Perl 5 but when access individual elements in the hash it
now keeps the % prefix. Thus the value of the key "Foo" will
be  %phone{"Foo"}. Similarly if $name contains "Foo" we can
use the %phone{$name} expression to get back the relevant value.

As mentioned earlier the string interpolation of hashes requires
curly braces around the statement.


<h2>Loop over every two elements in a list</h2>

So what if we have an array of pairs of values and
and we would like to go over all the pairs.
We could do that by assigning the array to a hash 
and then going over the keys just in the next example:

    use v6;

    my @phones = <Foo 123 Bar 456 Moo 789>;
    my %temp = @phones;
    for %temp.keys -> $name {
        say "$name {%temp{$name}}";
    }

Not only is the use of the temporary hash disturbing but it 
actually looses the original order of the pairs.
Sometime the order is important.


The nice thing about the for loop in Perl 6 is that it also allows 
the looping over groups of values. So in or case we can go over
every two elements preserving the order:

    use v6;

    my @phones = <Foo 123 Bar 456 Moo 789>;
    for @phones -> $name, $number {
        say "$name  $number";
    }

<h2>Going over elements of a hash</h2>

If you'd like to go over all the pairs in a hash 
you can use "for":

    use v6;

    my %phone = (
        "Foo" => 123,
        "Bar" => 456,
    );

    for %phone -> $key, $value {
        say "$key $value";
    }

That still does not indicate any specific order
(similarly to "each" in Perl 5) but now both the key
and the value are in simple scalars.


<h2>Looping over any number of elements</h2>


You can also iterate over any number of elements:

Let's say we just extracted the results of the Spanish Liga football
games from the soccer website http://soccernet.espn.go.com/ .
Those come in groups of 4 values:

  home team, 
  score of home team
  score of guest team
  guest team


    use v6;

    my @scores = <
        Valencia  1 1 Recreativo_Huelva
        Athletic_Bilbao 2 5 Real_Madrid
        Malaga  	2  2  	Sevilla_FC
        Sporting_Gijon  3 2 Deportivo_La_Coruna
     	Valladolid 	1  0 	Getafe
     	Real_Betis 	0  0 	Osasuna
     	Racing_Santander 	5  0 	Numancia
     	Espanyol 	3  3 	Mallorca
     	Atletico_Madrid 	3  2 	Villarreal
     	Almeria 	0  2 	Barcelona
    >;

We can loop over the values using a for statement with 
4 scalar variables:

    for @scores -> $home, $home_score, $guest_score, $guest {
        say "$home $guest $home_score : $guest_score";
    }

<h2>Missing values</h2>

One should ask the question what happens if the list runs out of 
values in the middle, of a multi-value iteration? That is,
what happens to the follow loop?

    use v6;

    for (1, 2, 3, 4, 5) -> $x, $y {
        say "$x $y";
    }

In this case Rakudo throws an exception when it finds out it 
does not have enough values for the last iteration. It will look
like this, (with a bunch of trace information afterwards).

    1 2
    3 4
    StopIteration


In order to avoid the exception we could tell the loop that the second and 
subsequent values are optional by adding a question mark after the variable

    use v6;

    for (1, 2, 3, 4, 5) -> $x, $y? {
            say "$x $y";
    }

Unfortunately as of today this latter construct does not work yet.
So if you have some tuits, this might be a good thing to add.

<h2>Iterating over more than one array in parallel</h2>

In the last example I'd like to show a totally different case.
What if you have two (or more) array you'd like to combine somehow?
How can you go over the elements of two arrays in parallel?

    use v6;

    my @chars   = <a b c>;
    my @numbers = <1 2 3>;

    for @chars Z @numbers -> $letter, $number {
        say "$letter $number";
    }

The Z infix operator version of the zip function allows
the parallel use of two lists.

Or that of more:

    use v6;
    
    my @operator  = <+ - *>;
    my @left      = <1 2 3>;
    my @right     = <7 8 9>;

    for @left Z @operator Z @right -> $a, $o, $b {
        say "$a $o $b";
    }


<h2>Other Resource</h2>

For further details on the "for" statement and the zip 
function you can take a look at the specification 
S04-control.pod

<h2>Getting Perl 6</h2>

I am using and recommending the Rakudo implementation
of  Perl 6 that runs on top of the Parrot Virtual Machine.

See the up-to-date instructions on 
<a href="http://rakudo.org/how-to-get-rakudo">how to get Rakudo</a>

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
<a href="http://szabgab.com/perl6-tricks-and-treats">Perl 6 web site</a>

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

