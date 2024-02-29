=head1 The importance of frequent binary releases
=timestamp 1243688700
=tags Padre, Rakudo, Perl 5, Perl

## Executive Summary

It would be nice to have downloadable binary versions of both <a href="http://rakudo.org/">Rakudo Perl 6</a> and <a href="http://padre.perlide.org/">Padre, the Perl refactoring tool</a>.


A month ago I took a client with a 6 weeks dead-line,
so we have 2 weeks left. Others in the company have been
writing code for some time in Matlab, Java and C. I started
my little Perl project 4 weeks ago. Three days ago started
the <b>integration</b> phase. Two days ago it turned out
that half of the API between the Matlab and the Perl code
is not designed well. You can guess who needs to rewrite
that code.

Anyway, this means I hardly have any time to write blog entries
or even just to follow the discussions. So now, that I am
catching up I read
<a href="http://www.modernperlbooks.com/mt/2009/05/why-regular-releases-matter.html">Why (Regular) Releases Matter</a>
and then <a href="http://use.perl.org/~chromatic/journal/39046">Comparatively Speaking</a> 
both by <a href="http://www.wgz.org/~chromatic/">chromatic</a>.


There are several types of users and the same person will be different 
type of user for different project. Probably there is only a very small
set of project that one would be ready to use code straight out from
version control. In most of projects we prefer to use officially released
stable version. Even in projects as volatile as 
<a href="http://rakudo.org/">Rakudo</a> we expect that 
released versions will be more stable than the one from 
version control. That is, we expect less nasty
surprises. So in that matter <b>stable</b> is a relative term.

So there are people who will be ready to try Rakudo Perl 6 fetching
it from version control and building it on their own and following the
development. There are going to be others - most likely a lot more than in
the first group - who would try Rakudo Perl 6 but who don't want to bother 
with the version controls. They need released versions of the product and
as Parrot and Rakudo evolve very fast the releases should be frequent
and the likelihood to have bugs in them should be lower than in a
random version checked out from version control.

Then there is an even larger group of people who would try Rakudo Perl 6
only if it has a binary package for their own operating system.

IMHO for a project to be successful it needs to cater to all three 
(and probably more) types of users. After all its much more likely
that someone who already tried Rakudo Perl 6 will join the development
effort than someone who did not have a chance to do so.

So I am glad Rakudo has monthly releases. Probably they should 
recommend that one instead of the code from the version control
but this is a minor issue. They should also provide downloadable
binary version of Rakudo for Windows, Linux and Mac.
I am not saying the core Rakudo team needs to do this. They have
enough on their plate. They should find other volunteers
to do this job. It is not easy but I think this will help a lot
attracting more people.

I know this is not easy at all. In <a href="http://padre.perlide.org/">Padre</a>
which is a smaller project than Rakudo at least by two orders of magnitude
we are still struggling with the stand-alone packaging. 

Very early we started with a package that could be downloaded and installed
from CPAN.  Once it was out I started to beg the various downstream packagers 
to start packaging Padre. Its almost a year now since then, but this means that 
thanks to the volunteers on those systems today Debian, Ubuntu, Fedora and 
Mandriva are all have Padre in their repository and FreeBSD in the ports. 

Interestingly most of the people who are doing the downstream packaging got
also involved in Padre development though I am not sure what came first.

So what we are still really missing is stand-alone packaging. Just two days
ago I tried to build a stand-alone executable of Padre and it had all kinds
of issues I could not yet fix. 

Anyway I think sometimes it is hard to provide an easy way to start 
using a project but making that a priority pays off.


