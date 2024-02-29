=head1 FPGA Board Integration - using Perl - Rehovot Perl Mongers
=timestamp 1263972920
=tags Perl, FPGA, Altera, Xilinx, Mentor, Python, Matlab

Last night we had the <a href="http://rehovot.pm.org/">monthly Perl Mongers meeting in Rehovot</a>. 
This time the number of people was lower - we were 7 on the meeting. In the first part 
<a href="http://il.linkedin.com/pub/lary-ecker/0/972/826">Lary Ecker</a> gave a presentation on the 
tool he developed a couple of years ago. In short he avoided a 70,000 USD purchase by investing 
partial development time of two people for two months. This tool also allows the engineers in his 
company to do the integration work in a matter of hours with an automated tool instead of two weeks
of manual integration work which is very error prone.

You can read a bit more about this on the 
<a href="http://rehovot.pm.org/meetings.html">announcement page of the Rehovot Perl Mongers</a>
and you can also contact Lary via the mailing list of the <a href="http://perl.org.il/">Israeli Perl Mongers</a>
or via his LinkedIn account.

During the break while consuming some of the refreshment we talked about sorting and the sorting function in Perl
even mentioning the <a href="http://en.wikipedia.org/wiki/Schwartzian_transform">Schwartzian Transformation</a>.

<a href="http://www.linkedin.com/in/hadarleviaharoni">Hadar</a> asked if it possible - or logical - 
to have two different transformation function in a sort function. If not then why do we need
to write it twice. E.g. why do we need two write <i>length</i> twice in the following statement?

  @sorted_by_length = sort { length $a <=> length $b } @words

I think the point is that having some kind of statement like this:

   sort { length, '<=>' } @words

would be too make the single condition too specialized. We still could not express
statement like this in a more simple way:

  @sorted_by_length_and_by_ascii = sort {
  	   length $a <=> length $b 
                      or
                    $a cmp $b 
   } @words


BTW Hadar promised to look into <a href="http://padre.perlide.org/">Padre</a> and <a href="http://pdl.perl.org/">PDL development</a>
a bit but then after her Matlab and PDL talks on the previous two meetings she already got a freelance work so she did not have the time.
Pointing this out just so you can it pays of to give talks on Perl Monger meetings...

During the sorting discussion <a href="http://il.linkedin.com/pub/amit-aronovitch/1/2ba/42b">Amit Aronovitch</a>,
our resident representative of Python and Matlab asked if Perl does not have a function to return the indexes of the elements
as Python has. Apparently I misunderstood it as I have not found any such function in Python. Matlab has that feature and PDL too:


  perldl> $x = pdl(6, 4, 8);
  perldl> p $x
  [6 4 8]
  perldl> p $x->qsort
  [4 6 8]
  perldl> p $x->qsorti
  [1 0 2]

Though this will work on numbers only.

In pure perl I'd just sort the indexes:

  @words = qw(b a c);
  @sorted = sort { $words[$a] cmp $words[$b] } 0..@words-1
  print "@sorted";
  
  # 1 0 2

After the break I offered 3 talks.

A 15 minute talk on how to create an open source project based on my experience with Padre that 
I am going to give on FOSDEM.

A talk about packaging and installing CPAN modules by downstream distributors (e.g. Linux distributions).
This is in preparation to the 45 minute talk I am going to present on FOSDEM.

The last suggestion was talking about Web development and the development of <a href="http://cpanforum.com/">CPAN::Forum</a>.

I am going to describe my talk in a bit more detail in the next post but for now I think this is enough.

See you next month on the meeting of the <a href="http://rehovot.pm.org/">Rehovot Perl Mongers</a>

