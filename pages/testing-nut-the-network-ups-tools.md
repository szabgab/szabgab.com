=head1 Testing NUT, the Network UPS Tools
=timestamp 1187763134
=tags testing, UPS 

This is part of a series of articles I started with <a href="/quality-assurance-and-automated-testing-in-open-source-software.html">Quality Assurance and Automated Testing in Open Source Software</a>.

The primary goal of the 
<a href="http://www.networkupstools.org/">Network UPS Tools (NUT)</a>
project is to provide reliable monitoring of UPS hardware and 
ensure safe shutdowns of the systems which are connected.

I gut to NUT as I saw they are using 
<a href="http://buildbot.net/">BuildBot</a> to build the
application and NUT seemed to be interesting to write about.
Not only does it have its own interface but it needs to be able to
talk to many external devices - so one might want to have some
mockup of these external devices for testing. It also talks over
the tcp/ip network so it has yet another interface that should be
tested.

So I found the 
<a href="http://buildbot.ghz.cc/public/nut/">BuildBot result page</a>
but from the reports it seems to me that there is no "make test" phase.
The reports seem to end after the compilation phase.
(ok, actually a copied tarball follows but I guess it should just copy
the result back to the BuildBot server.)

It was rather tricky to find the 
<a href="http://alioth.debian.org/">GForge page on Alioth</a>
that describes this project. There was only one link to it
under the <i>Mailing lists</i> entry.
Once I found it, I looked at the 
<a href="http://alioth.debian.org/pm/?group_id=30602">NUT Tasks</a> entry.

Under <i>NQA - NUT Quality Assurance</i> they seem to have several open tasks
to write test and to write documentation on how to test.

So it seems they don't do any automated test.

