=head1 Perl needs is_number and similar functions (nearly built in)
=timestamp 1224054054
=tags Perl, Perl 5, number

In my years of Perl training I often encounter people who complain 
that there is no is_number function in Perl. I keep asking them what 
do they mean by number? Is that a whole number, a real number a decimal number a hex?
Would they accept .3 as a number ? and What about 3. ?
I keep telling them it is better to craft their own little regex or to use Regexp::Common.

Unfortunately I also keep encountering bad implementations of these 
functions in my consulting time at clients. For example this one:

    =head2 check_if_number
    
    Checks if the arguments value is a positive integer
    
    =cut
    sub check_if_number {
       my ($argument, $msg, $err_list) = @_;
       if ($argument !~ /^\s*\$/) {
           if ($argument <= 0 || $argument !~ /\d+/) {
               push @{$err_list}, $msg;
           }
       }
    } 

How many bugs can you spot?

So what is the conclusion?
Does Perl need to have an is_number function?

<b>comments</b>
<a href="http://vilain.net/index.php?q=node/74">Sam Vilain</a>

<b>A solution</b>

Some people have reminded me of 
<a href="http://perldoc.perl.org/Scalar/Util.html">Scalar::Util</a>
and the  Scalar::Util::looks_like_number() function that is in core perl
since 5.007003 which means the 5.8 line already has it.

But that it has a side effect.  The following code will print "yes" two times.

  use Scalar::Util
  
  # Manuel export with a shorter name
  *num = \&Scalar::Util::looks_like_number;
  
  print "Yes\n" if num('inf');
  print "Yes\n" if num('infinity');

Personally I think this manual exporting to an even shorter name just asks for 
maintenance headache as now the user who know looks_like_number will have 
to learn that in this script it is called num().

Another option on CPAN is to use the is_numeric() function of
[dist://Data::Validate] by <a href="http://search.cpan.org/~sonnen/">Richard Sonnen</a>  
which is a wrapper around Scalar::Util::looks_like_number().

Anyway, thanks for the feedback.

