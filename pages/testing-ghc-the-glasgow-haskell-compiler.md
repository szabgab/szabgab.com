=head1 Testing GHC, the Glasgow Haskell Compiler
=timestamp 1187768481
=tags testing, GHC, Haskell, Darcs, Build Bot, Python

This is part of a series of articles I started with <a href="/quality-assurance-and-automated-testing-in-open-source-software.html">Quality Assurance and Automated Testing in Open Source Software</a>.

<a href="http://www.haskell.org/ghc/">GHC - The Glasgow Haskell Compiler</a>
is probably the strongest compiler and interactive environment
for the <a href="http://www.haskell.org/">Haskell</a> functional language .

<h2>Development</h2>

The GHC team uses <a href="http://trac.edgewall.com/">Trac</a>
to manage their project. 
The <a href="http://hackage.haskell.org/trac/ghc">main developer page</a> 
provides a lot of information on how to get involved.<br />
They are using <a href="http://darcs.net/">Darcs</a> for version control, 
which itself is written in Haskell.

To get the source look at the
<a href="http://hackage.haskell.org/trac/ghc/wiki/Building/GettingTheSources">Getting The Sources</a>
page. It has the detailed instructions but there are many of them and each one takes a long time.
So be patient!

<h2>Testing</h2>

Writing and running tests on the
<a href="http://hackage.haskell.org/trac/ghc/wiki/Building/RunningTests">GHC Test framework</a>
is documented rather well.<br />
Tests are divided into separate files. The tests themselves are
written in Haskell. For each such test file (where the code lives)
you have to provide three additional files:
<ul>
<li>a file containing what should be placed on STDIN</li>
<li>one containing the expected output on STDOUT</li>
<li>and another one containing the expected output on STDERR</li>
</ul>

The test framework is written in Python. 
For each test file the author has to give an expected behavior which 
(such as <i>normal</i>, <i>skip</i>, <i>expect_broken(#trac bug number)</i>,
<i>expect_broken_if_platform(bug_number, platform)</i>, etc...
These are all Python functions provided by the framework.

<h2>Smoke Testing</h2>

The GHC team uses <a href="http://buildbot.net/">Buildbot</a> 
for automatic smoke testing.<br />
In order to setup a <b>build slave</b> interested people need to get a 
username/password - which I got in a few hours.<br />
Setting up client (or slave) part of BuildBot is rather simple.
There are some prerequisites for setting it up and building GHC,
but they are all nicely described on the 
<a href="http://hackage.haskell.org/trac/ghc/wiki/BuildBot">GHC BuildBot</a>
page.

So far I managed to setup the BuildBot slave but it seems the build did not
start in the scheduled time. Once the buildbot is running I'll be able
to see the results on the <a href="http://darcs.haskell.org:8010/">status page</a>.

<h2>TODO</h2>

I still would like to see how test are running, maybe write a simple one and I would
like to get my buildbot slave do its job.

<!-- Reports are sent by mail.  Are they? -->


