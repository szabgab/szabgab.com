=head1 Perl 6 subroutines and home made operators
=timestamp 1281910212
=tags Perl, Perl 6, learning, newsletter, screencast, subroutines, Rakudo
=redirect http://perl6maven.com/perl6-subroutines-and-home-made-operators

<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

This time together with a Perl 6 screencast to show the <b>thought operator</b> 
and the <b>+- operator</b> of Perl 6.
Direct link to the <a href="http://www.youtube.com/watch?v=sBvjUi2093A">Perl 6 subroutines screencast</a>

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.<br>
It was also included the <a href="/perl6.html">Perl 6 series of screencasts</a>.
<hr>

<object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/sBvjUi2093A?fs=1&amp;hl=en_US">
</param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param>
<embed src="http://www.youtube.com/v/sBvjUi2093A?fs=1&amp;hl=en_US" type="application/x-shockwave-flash" 
allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>

<h2>The Thought operator</h2>

I just tried the thought operator in Perl 6. Typed in this:

  "szabgab" .oO "Perl 6 is cool";

and got the following:

  szabgab thinks Perl 6 is cool

<h2>The +- operator</h2>

I also tried the +- operator:

  2.78  ~~ 10 +- 3 ?? 't' !! 'f'     # f
  7.5   ~~ 10 +- 3 ?? 't' !! 'f'     # t
  13    ~~ 10 +- 3 ?? 't' !! 'f'     # t
  13.1  ~~ 10 +- 3 ?? 't' !! 'f'     # f

I think you get the point here. We check if the value on the left
is between 10 +- 3.

~~ is the smart match operator, ?? !! are the two parts of the ternary 
operator of Perl 6 and +- is, well not everyone has the +- or the thought 
operator but if you read on you'll see how you can create one for yourself.

<h2>Subroutines in Perl 6</h2>

Subroutines in Perl 6 are declared using the sub keyword just as in Perl 5
But in Perl 6, after the name of the subroutine one can provide a signature,
describing the parameters that function accepts.

    use v6;

    sub f($a, $b) {
        return "$a - $b";
    }

    say f(4, 2);

If called with a different number of arguments then Perl will issue an error message:

    say f(4, 2, 5);

gives this message:

    Too many positional parameters passed; got 3 but expected 2
      in 'f' at line 3:script.p6
      in main program body at line 8:script.p6

or

    say f(4);

gives this message:

    Not enough positional parameters passed; got 1 but expected 2
      in 'f' at line 3:script.p6
      in main program body at line 8:script.p6

<h2>Perl 5 style in Perl 6</h2>

For people who really want the Perl 5 style subroutine declaration they can use this code:

    use v6;
    
    sub f {
        return @_.perl
    }
    
    say f(4, 2);     # [4, 2]
    say f(4);        # [4]
    say f(4, 2, 3);  # [4, 2, 3]

but that would eliminate all the nice features of Perl 6.


<h2>Optional parameter</h2>

What if we would like to allow the user to pass 1 or 2 parameters?
For that case we can mark the second parameter as optional:

    use v6;
    
    sub f($a, $b?) {
        return defined $b ?? "$a - $b" !! "$a - na";
    }
    
    say f(4, 2);    # 4 - 2
    say f(4);       # 4 - na

The ?? !! is a the ternary operator of Perl 6 so what we see above is
that if $b is defined the "$a - $b" is returned and when $b is not defined
then 'na' will be returned instead of that value.

<h2>Parameters are read-only</h2>

In other cases you might be tempted to replace $b with some default value like this:

    use v6;
    
    sub f($a, $b?) {
        $b //= 17;
        return defined $b ?? "$a - $b" !! "$a - na";
    }
    
    say f(4, 2);    # 4 - 2
    say f(4);       # 4 - na

but this will throw an exception like this:

    Cannot modify readonly value
      in '&infix:<=>' at line 1
      in 'f' at line 4:02.p6
      in main program body at line 8:02.p6

as arguments in Perl 6 are by default read only;

<h2>Default value of a parameter</h2>

There are two solutions to this, depending on what do you really want to achieve:
If you only want to give a default value to $b then the best way is to add it right
in the signature:

    use v6;
    
    sub f($a, $b = 17) {
        return defined $b ?? "$a - $b" !! "$a - na";
    }
    
    say f(4, 2);    # 4 - 2
    say f(4);       # 4 - 17

In this case you don't even need the question mark '?' as the presence of a
default value automatically makes the parameter optional.
This still keeps $b read-only within the subroutine.

<h2>Making the parameter a copy and thus changeable</h2>

The other solution is to mark the $b variable as a 'copy' of the original value.
Therefore allowing the user to make changes to it:

    use v6;
    
    sub f($a, $b? is copy) {
        $b //= 17;
        return defined $b ?? "$a - $b" !! "$a - na";
    }
    
    say f(4, 2);    # 4 - 2
    say f(4);       # 4 - 17

<h2>Type restrictions on parameters</h2>

We can also restrict the parameters of a subroutine to certain data types:

    use v6;
    
    sub f($a, Int $b) {
        return "$a - $b";
    }
    
    say f(4, 2);
    say f(4, "foo");

The first call will succeed but the second will generate an exception:

    4 - 2
    Nominal type check failed for parameter '$b'; expected Int but got Str instead
      in 'f' at line 4:03.p6
      in main program body at line 9:03.p6

<h2>Other constraints on parameters</h2>

It is also possible to provide further constraints on the parameters:

    use v6;
    
    sub f($a, Int $b where { $b < 10 }) {
        return "$a - $b";
    }
    
    say f(4, 2);
    say f(4, 11);

    4 - 2
    Constraint type check failed for parameter '$b'
      in 'f' at line 4:03.p6
      in main program body at line 9:03.p6

<h2>Creating operators in Perl 6</h2>

There are of course a lot of other aspects for subroutine definition in Perl 6
but let's now go back to our original goal, to create the +- operator.


So how can one create a new operator in Perl 6?
It is quite simple as an operator is just a subroutine with a funny way of calling it.

So here is how to create the thought operator. We create a subroutine, declaring
it to be an infix operator with the name .oO

    sub infix:<.oO>($name, $thought) {  
        say "$name thinks $thought"
    }



Specifically we want to make +- an infix operator that create a Range. 
Not something complex. Within the angle brackets we put the new operator,
the sub has a signature of two scalars and within the block we put actual
code that needs to be executed.

    sub infix:<+->($a, $b) { ($a-$b) .. ($a+$b) }


Then we can use

   5 +- 2

that will create the range 5-2 .. 5+2 also known as 3 .. 7



<h2>Comments and Discussion</h2>

I am always open to comments and criticism 
(just have a positive spin to it :-)
So if you find any issue with the examples,
please don't hesitate to let me know.

If you'd like to ask question about Perl 6, 
probably the best would be to sign up on the Perl 6 
users list by sending an e-mail to

    perl6-users-subscribe@perl.org

The archive of the perl6-users list is at:   <a href="http://www.perl6.org/">Perl6.org</a>

The even better way is to join the #perl6 IRC channel on irc.freenode.net
If you have not used IRC yet, the easies way is to use the web based
<a href="http://webchat.freenode.net/?channels=perl6">IRC client of Freenode</a>

Previous issues of this newsletter can be found at
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.


