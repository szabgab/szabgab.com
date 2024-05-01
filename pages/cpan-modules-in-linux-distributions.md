=head1 CPAN Modules in Linux Distributions
=timestamp 1177742133
=tags CPAN, Linux, distribution

Just two weeks ago I <a href="http://www.szabgab.com/blog/2007/03/1176461934.html">wrote about 
Perl Module availability</a> on various platforms. I asked the wisdom of the 
<a href="http://www.perlmonks.org/?node_id=609866">PerlMonks</a> if this information is 
already available or if it is not, how to go about generating it. I got a couple of good pointers 
there and also on the 
<a href="http://www.mail-archive.com/linux-il@cs.huji.ac.il/msg48283.html">Linux-IL</a> 
mailing list.

There was even <a href="http://www.perlmonks.org/?node_id=535734">this monk</a>
who thought <a href="http://www.perlmonks.org/?node_id=609897">this is a bad idea</a>.

Seriously, why would that piece of information be bad?

His argument, that one can install everything from source directly from CPAN misses the point.
I believe most of the people out there don't want to compile anything from source. The end users
definitely not but even the developers will try to avoid that. The same way as most of us won't 
build his computer we don't want to build the kernel, nor Apache and not even the Perl modules.

We do want to have the possibility in case we need some bleeding edge stuff but mostly we will 
prefer everything to be ready made as much as possible.

I think that we are too much in love with the packaging systems used on CPAN. They are quite good
but instead of forcing our way on everyone else we should make sure the other packaging systems
can work well with our system.

I would like to see that all the major Linux and Unix distributions carry many important modules 
from CPAN. In addition I would like to have one or more virtual packages in those distributions 
that would include a large selections of these modules. Similar to the bundles we have on CPAN.

Then we could encourage web hosting companies to provide web space on <b>standard</b> Linux 
or FreeBSD distributions with tons of CPAN modules available to the individual developers.

Anyway, today as I was trying to collect all the pieces of information around I started to look 
for a Perl module that would parse the file describing all the Debian packages. After all if 
possible I would not like to write it from scratch. I found two modules that might fit the bill
but I also found [dist://Module::Packaged]
by <a href="http://www.astray.com/">Leon Brocard</a> that already does most of the work 
I wanted to do. As usual, I am not the first one to think about an idea and luckily
someone has already done most of the work already. The only thing I had to do now 
is create an <a href="http://www.szabgab.com/distributions/">HTML report</a> using that 
module. I even released my source code
to CPAN as 
[dist://Module::Packaged::Report].
so others will be able to send patches. 
(SVN repository is <a href="http://svn1.hostlocal.com/szabgab/trunk/Module-Packaged-Report/">here</a>

Comments either on the <a href="http://www.perlmonks.org/?node_id=612612">the
PerlMonks post</a> or on <a href="http://use.perl.org/~gabor/journal/33144">use.perl.org Journal</a>
or by private <a href="/contact">mail to me</a>.

