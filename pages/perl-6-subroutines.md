=head1 Perl 6 subroutines
=timestamp 1238408203
=tags Perl 6, Perl, Rakudo, newsletter, subroutines
=redirect http://perl6maven.com/perl6-subroutines



In this part of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter we will look at how subroutines can be defined in Perl 6.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

<a href="/perl6-tricks-and-treats">Past issues</a>
can be found on my web site.

In the last issue I sent some example code on how I managed
to embed Perl 6 code in Perl 5. Since then I've uploaded
[dist://Inline::Rakudo]] to CPAN and even managed to implement the
first plug-in of <a href="http://padre.perlide.org/">Padre</a> in Perl 6. 
 
<h2>Subroutines in Perl 6</h2>

I have been thinking for some time now on how to teach subroutines 
in Perl 6 and I don't have a good answer yet. 
So for now, instead of some methodological introduction I'll just 
try to throw together a few examples and we'll see if something 
comes out of that?

In Perl 6 just as in Perl 5 one can define a subroutine without 
specifying the list of parameters. When someone calls that 
subroutine the values are found in the private array called @_. 
There is more to even that in Perl 6 than in Perl 5 but let's 
look at the nicer examples of Perl 6:

In Perl 6 one can define real signature for the subroutines 
and let the language, or rather the implementation, check if 
the valid set of arguments were passed.

Actually, instead of checking if the right number of arguments 
were passed Perl will not even call the function if you did 
not give the correct list of arguments.

I can already hear the people getting worried about the 
flexibility of passing an arbitrary number of arguments and then 
letting the function figure it out.
Don't worry. You can have that in Perl 6 too.

<h2>Simple scalar parameters</h2>

The most basic example I usually show is the add function with 
two parameters. That's usually enough in Perl 5 but very
far from that in Perl 6.

    use v6;

    sub add($a, $b) {
        return $a+$b;
    }

    say add(2, 3);    # 5

Then if you try to call this with 3 parameters like this:

    say add(2, 3, 4);
    
Rakudo will throw a run-time exception as it cannot 
find the appropriate function.

<h2>Subroutine with arbitrary number of parameters</h2>

That would be the time to show how to define a subroutine
that can get arbitrary number of values, but that requires 
introducing two concepts at a time. So I'll have to
find a better set of examples.

Anyway, if we would like to implement a sum() subroutine
that can get any number of values we need to define it like this:

    use v6;

    sub sum(*@values) {
        my $sum = 0;
        for @values -> $v {
            $sum += $v
        }
        return $sum;
    }

That is, we have to say that the expected parameter is a slurpy array.
The * means it is slurpy, the @ still means it is an array.
It will then accept any value as parameter and put them in the @values
array.

So I can call it either with literal scalars

    say sum(2, 3);      # 5

or even with a list of arrays and scalars mixed

    my @a = (2, 3, 4);
    my $z = 5;
    say sum(@a, $z);  # 14

We already saw the for loop earlier, if you don't recall it, 
here is the link: <a href="/perl-6--looping-over-a-list-of-values-one-at-a-time-two-at-a-time-and-more.html">Perl 6: Looping over a list of values one at a time, two at a time and more</a>

<h2>Reduction operator</h2>

Of course this is not really a good example anyway as that 
functions should be using the reduction operator 
(see S03-operators).

    sub sum(*@values) {
        return [+] @values;
    }

and of course no one should write a function for that.

The reduction operator is one of the meta-operators of Perl 6. 
It is a prefix version of an infix operator.
But I digress.


<h2>Passing arrays and hashes</h2>

In Perl 5 we had to learn about references in order to be able to
pass more than one array or hash to a subroutine. That also meant
the subroutine always has full access to the original data structure.
Effectively a call-by-reference thing. So the subroutine could change
the passed parameter by accident. Not really clean coding.

In Perl 6 there are no such references and there is no need for them.
If you'd like to accept a real array or hash as a parameter for a subroutine
you can declare that in the signature of the subroutine.

For example I have a script that generates html pages from 
templates and I have some code like this: 
(Mine was using the HTML::Template from the 
<a href="http://www.november-wiki.org/">November wiki</a>
project  but that's not relevant now so
I am just printing out the parameters.)

    use v6;

    sub process_template($input, $output, %params) {
        say "open $input";
        say "replace {%params.perl}";
        say "save $output";
    }

    my %data = (
        fname => "Foo",
        lname => "Bar",
    );

    process_template("index.tmpl", "index.html", %data);

the output

    open index.tmpl
    replace {"fname" => "Foo", "lname" => "Bar"}
    save index.html

Now I know this example does not show the real power of having 
several complex data structures in the parameter list.
I could have written:

    sub xyz($input, @value, %data) { }

and then pass a scalar, an array and a hash.
I just don't have a good example for that yet.

Anyway the above example had a bit of data multiplication and the 
name of the output file could have been generated from the name
of the template.  It is the same name just with different extension.

So I could write the code like this, passing only the name of the 
template and generating the name of the output file from that:

    use v6;

    sub process_template($input, %params) {
        my $output = substr($input, 0, -4) ~ "html";
        say "open $input";
        say "replace {%params.perl}";
        say "save $output";
    }

    my %data = (
        fname => "Foo",
        lname => "Bar",
    );

    process_template("index.tmpl", %data);


In this code ~ is the concatenation operator
(replacing the . from Perl 5).


<h2>Multiple signatures</h2>

That's ok but there are cases when the name
of the template and the output file are different.
So I need both versions. In Perl 6 it is not a problem,
I can just define both of the functions, telling Perl
that they are multies - so it won't think I am redefining
a function by mistake.

    use v6;

    multi sub process_template($input, %params) {
        my $output = substr($input, 0, -4) ~ "html";
        say "open $input";
        say "replace {%params.perl}";
        say "save $output";
    }

    multi sub process_template($input, $output, %params) {
        say "open $input";
        say "replace {%params.perl}";
        say "save $output";
    }

    my %data = (
        fname => "Foo",
        lname => "Bar",
    );

    process_template("index.tmpl", %data);
    process_template("from.tmpl", "to.html", %data);

The output will be:

    open index.tmpl
    replace {"fname" => "Foo", "lname" => "Bar"}
    save index.html
    open from.tmpl
    replace {"fname" => "Foo", "lname" => "Bar"}
    save to.html

For every function call Rakudo will look for a function that matches 
the signature and call that function.
If no match is found it will throw an exceptions so calling without a hash
will throw a run-time exception:

    process_template("from.tmpl", "to.html");

    Non-Associative argument for %params in call to process_template

Sometimes that's what we want. In other cases we might want to allow 
the user to call the above functions without providing any parameters.
We could write two additional functions without the %params but that just
unnecessary code duplication. Instead we can declare the hash as optional:

<h2>Optional parameters</h2>

    multi sub process_template($input, %params?) {

    multi sub process_template($input, $output, %params?) {


If we defined our functions that way we could call

    process_template("from.tmpl", "to.html");

and it would know how to find the right subroutine leaving
the %params hash empty.

Side note: this part is not yet implemented so the above code
won't yet work.

There is a lot more one can do with signatures but I think 
this is enough for today.


<h2>Getting Perl 6</h2>

I am using and recommending the Rakudo implementation
of  Perl 6 that runs on top of the Parrot Virtual Machine.

See the up-to-date instructions on how to get them
on the 
<a href="http://rakudo.org/how-to-get-rakudo">Rakudo web site</a>.

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

