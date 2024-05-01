=head1 What is Modern Perl?
=timestamp 1234765191
=tags Perl, Modern Perl, Perl 5, beginners

Some time ago <a href="http://use.perl.org/~chromatic/journal/">chromatic</a> wrote 
about <a href="http://use.perl.org/~chromatic/journal/38303">Modern Perl</a>.
I thought it to be a neat idea but did not follow up. 
Based on the first post I thought it is mostly about the use of high powered 
advanced features while now <a href="http://use.perl.org/~chromatic/journal/38346">reading some of the comments</a>
I understand that at least in part Modern Perl is about helping beginners.

That's much more interesting to me as I feel I understand that part more.
So today I looked at some of the discussion on use.perl.org and on the web site
of <a href="http://www.modernperlbooks.com/">Modern Perl Books</a>.

As I can understand there is a CPAN module called [dist://Modern::Perl] that would
enable <b>strict</b>, <b>warnings</b> and the <b>features of perl 5.10</b>.

I agree with the former two but unfortunately I still have an issue with 5.10. 
That's probably the main difference between <b>Modern Perl</b> and plain 
<b>Perl for Beginners</b>. The former can demand 5.10 on both the development 
and production machines, the latter has to live with whatever installed on the
machines of the corporations.

Luckily in the past 2 years I have hardly seen any perl older than 5.6.0 at 
my clients but many are still stuck with 5.6 and nearly none of them made 
the change to 5.10. I can only assume that it is similar in the other parts of the
world. That means if I want to give them good service I have to teach them 
something that will work on 5.6 or at least on 5.8.

That still gives plenty of improvements over most of the code out there in
the direction of Modern Perl but it is a different type of beast.


