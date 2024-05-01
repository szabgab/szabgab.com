=head1 Perl Maven - August 2014
=timestamp 1409586318
=tags Perl, Perl Maven

=abstract start

August stared way too busy updating the <b>Test Automation using Perl</b> slides and then I spent almost 2 weeks traveling.
It did not leave much time for the <a href="http://perlmaven.com/">Perl Maven</a> site and for other things.

=abstract end

<h2>Perl Maven Pro</h2>

I only published 3 Pro articles and none of them had the accompanying video. Two were about logging with
<a href="https://metacpan.org/pod/Log::Log4perl">Log::Log4perl</a>, and one was
in the <a href="http://perlmaven.com/testing">testing</a> series.

<ul>
<li><a href="http://perlmaven.com/pro/logging-with-log4perl-the-easy-way">Logging with Log4perl the easy way</a></li>
<li><a href="http://perlmaven.com/pro/logging-in-modules-with-log4perl-the-easy-way">Logging in modules with Log4perl the easy way</a></li>
<li><a href="http://perlmaven.com/pro/what-is-the-status-of-the-current-test-script">What is the status of the current test script?</a></li>
</ul>

<h2>Perl Maven free</h2>

There were 4 articles published in the free section of the Perl Maven site. Two of them were technical and they came with screencasts:
<ul>
<li><a href="http://perlmaven.com/dont-interpolate-in-printf">Don't interpolate in printf (Missing argument in sprintf at ...)</a></li>
<li><a href="http://perlmaven.com/break-lines-with-max-width">How to break lines with max width? (wrap)</a></li>
</ul>

The other two were more in the "useful to know" section.  In <a href="http://perlmaven.com/perl-sites">The 11 Most useful Perl sites</a>
I list way more than 11 sites that can be useful for Perl developers. Some of them will be probably integrated
into <a href="http://metacpan.org/">MetaCPAN</a>. Others are just useful. I'll use this page as my bookmark.

Then, I found out about a feature of MetaCPAN that will make it easy to
<a href="http://perlmaven.com/listing-all-the-modules-in-a-namespace">Find and lies all Plack Middleware or Perl::Critic Policies</a>
or for that matter, all the modules in a given name-space.

<h2>Contract development work</h2>

In August I only spent one day doing contract development and even that day was mostly spent
learning and patching the <a href="https://pypi.python.org/pypi/crowdflower">Python library for CrowdFlower</a>
to make it easier for the in-house developer to implement the application they wanted.

<h2>Training courses</h2>

I ran a 4-day <b>Test Automation using Perl</b> training course at a company in <a href="http://en.wikipedia.org/wiki/Meschede">Meschede</a>, Germany,
and on the way to and from Germany I used the opportunity to spend some time with mother in Budapest.
I had some time to meet a few friends and even spent two days at Lake Balaton. After 20 years or so. It was awesome!


<h2>EduMaven</h2>

(edumaven.com links updated.)

I kept publishing pages on the <a href="https://code-maven.com/slides/">EduMaven</a> site. By now there are
361 <a href="https://code-maven.com/slides/python-programming">Programming Python pages</a>,
350 <a href="https://code-maven.com/slides/perl-programming">Programming Perl pages</a>,
323 <a href="https://code-maven.com/slides/test-automation-using-perl">Test Automation Using Perl</a> pages,
and a bunch of other slides. A total of 1312 pages.


<h2>Perl Weekly</h2>

Nothing special happened. Yanick was kind enough to do two of the editions while I was enjoying myself at Lake Balaton.

<h2>Open Source</h2>

I got co-maintainership of <a href="https://metacpan.org/pod/Expect">Expect</a> and I spent many hours fixing bugs and writing tests.
The result? There a lot more failing test reports now that there were before I started the work. AFAIK they are all new tests, so
if they really indicate problems, those were already there. The only issue with them is that it makes it harder for people to
install the module.

While at the training I wanted to show how to send a test report to <a href="http://cpantesters.org/">CPAN Testers</a> and use the opportunity
to configure my <a href="http://cpanmin.us/">CPAN Minus</a> to do that for me.
It was surprisingly easy using <a href="https://metacpan.org/release/App-cpanminus-reporter">cpanm-reporter</a>
as explained on the <a href="http://wiki.cpantesters.org/">wiki</a>.

I wrote a small script that fetches the most recent N distributions from CPAN, and checks if they have a link to their public version control
system in the META files. Then I spent lots of hours sending pull-requests for CPAN modules fixing this issue. Quite a few of them
were already accepted.

I <a href="http://blogs.perl.org/users/gabor_szabo/2014/08/link-to-public-version-control-system-github-or-otherwise.html">wrote about this</a>,
that led me to spend a day or two patching <a href="http://metacpan.org/">MetaCPAN</a>. I fixed the issue reported in that blog,
and implemented a few other things I have been planning for a while.  One of my minor changes to the FAQ was already applied, I hope others will be merged soon.

<h2>Books</h2>

I read the <b>Az analfabéta, aki tudott számolni</b> by <a href="http://en.wikipedia.org/wiki/Jonas_Jonasson">Jonas Jonasson</a>.
The original Swedish title is <b>Analfabeten som kunde räkna</b>, and apparently the English title is <b>The Girl Who Saved The King Of Sweden</b>.
I enjoyed it very much.

