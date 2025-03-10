=head1 Plans for the next 2-3 months
=timestamp 1244481930
=tags Perl, Perl 5, Perl 6, PHP, Padre, testing, training, PDL, Matlab, plans, SQL, Parrot, OSDC, TODO


In the past 6 weeks, since I came back from Oslo I was busy working at a client.
I put in about 120% of the regular 9-hour workdays, plus 1.5 driving each day that 
did not leave much time or energy for any other activity. I barely was able to read blog 
entries and occasionally write a few lines.
Now as we almost reached the dead-line at the client with an actually functioning system, starting 
from next week I'll be reducing my workload to about 40%. That leaves 3 week-days for other 
activities for which I have a lot planned. In order to make scheduling a bit easier I'll try to split 
up the time so every day I'll focus on one of the activities.

Here is what I have planned so far:

<ul>
<li><b>Perl 6</b> In preparation to the classes in Lisbon (<a href="/perl-6-training-in-lisbon-in-august.html">Perl 6 training in Lisbon in August</a>) I need to restart writing my 
<a href="/perl6.html">Perl 6 slides</a> that will hopefully also include frequent posts on the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a> list.</li>
<li><b>Test Automation with Perl</b> There are many updates I'd like to make to the materials of the 
<a href="/perl-in-test-automation">Test Automation using Perl</a> course.
Part of those changes will be used as posts on the <a href="/test-automation-tips">Test Automation Tips</a> newsletter.
<li><b>Testing PHP</b> I am also preparing a new training class called <a href="/testing-php-applications-using-php">Testing PHP Applications</a>
for which a lot of material is still missing. I'll post parts of it to the <a href="/test-automation-tips">Test Automation Tips</a> list.
</li>
<li><b>Padre</b> I also have lots of ideas in my head that need to be implemented in <a href="http://padre.perlide.org/">Padre</a>.
There are a couple of ideas for plug-ins such as the SQL plug-in I mentioned in <a href="/planning-an-sql-or-dbi-plugin-for-padre.html">Planning an SQL or DBI plugin for Padre</a> but I'd also like to start to write 
a [dist://PDL] plug-in (so it can compete with <a href="http://www.mathworks.com/">Matlab</a>) and a local file history plug-in. 
I also would like to make sure we can build a <b>working</b> stand-alone executable 
of Padre at least for Linux. That would make it easier to get started with it. I am also planning to refactor the syntax highlighting 
code so it will be extremely easy to add another syntax with its own highlighter and it will be very easy to add several highlighters
to the same code. For that I need to patch [dist://Syntax::Highlight::Engine::Kate] and probably I'll also need to refactor the
<a href="http://www.parrot.org/">Parrot</a> based syntax highlighter used in the Perl 6 plugin.
</li>
</ul>

Hmm, counting that seems to be 4 items for 3 days and that did not include the sysadmin work I need to do, marketing
my classes and working on <a href="http://cpanforum.com/">CPAN::Forum</a> and a set of other project. Oh yes I also
started to think about a regular monthly daytime meeting for Open Source Developers under the name
<a href="http://osdc.org.il/">Open Source Developers Club</a> though I have not received enthusiastic feedback. 
In addition I have some projects going on with the localization of the Perl documentation.


Oh well, is there a tree where time grows?


