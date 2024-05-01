=head1 Smoked Parrot
=timestamp 1187639749
=tags Parrot, Perl, Perl 5, virtual machine, automated testing, smoke testing, testing

This is part of a series of articles I started with <a href="/quality-assurance-and-automated-testing-in-open-source-software.html">Quality Assurance and Automated Testing in Open Source Software</a>.

<a href="http://www.parrotcode.org/">Parrot</a> is a virtual machine 
for dynamic languages such as PHP, Perl 5, Python, Ruby, Scheme, Tcl with its
main focus on Perl 6.

As one day it is going to replace the engine of Perl 5 it must run on the 
50-so platforms where Perl 5 currently runs. It should be also tested on 
those platforms. Therefore having and easy way to setup a smoke test
environment and to report the test results should be easy.

<h2>Development</h2>

Parrot is written in C.

For version control the developers use Subversion. You can find instructions 
on how to get the source code in the <a href="http://www.parrotcode.org/source.html">download</a>
area of their web site. Links to other development and testing related pages can be found under
<a href="http://www.parrotcode.org/resources.html">resources</a>.

<h2>Testing</h2>

At the time of this writing there were <b>7380 unit tests</b> written for Parrot
and <b>3118 unit tests</b> for the language implementations.
As they don't have an automatic way to report test coverage, the team
provides a document describing the level of coverage for each subsystem
on the 
<a href="http://www.parrotcode.org/testing_status.html">Parrot Testing Status</a>
page.

Similar to the standard in Perl, tests can be found in the 
<a href="http://svn.perl.org/parrot/trunk/t/">t/</a> directory in the source code.

Tests are written on several levels and in several languages: There are tests written
in C, PIR (Parrot Intermediate Representation), PASM (Parrot Assembler) and Perl5.


A guide on 
<a href="http://www.parrotcode.org/docs/tests.html">how to write tests for Parrot</a>
can be found in the documentation of Parrot.

In addition, test for the various language implementations, that is for the compilers 
of language X to Parrot Assembler, are usually written in their respective 
language and can usually be found in their own directories under 
<a href="http://svn.perl.org/parrot/trunk/languages/">languages/</a>

The output of all the tests follows the  
<a href="http://testanything.org/">TAP - Test Anything Protocol</a> used in 
Perl 5 and in various other languages.

<h2>Smoke testing</h2>
<p>
It is extremely easy to get involved in smoke testing Parrot. 
You will only need a C compiler and a recent version of Perl5 installed
along with [dist://Test::TAP::HTMLMatrix] with its prerequisites from CPAN.

<a href="http://smoke.parrotcode.org/smoke/">Results of the Parrot smoke tests</a>
can be found following the above link. The reports are automatically posted 
there, when you run <i>make smoke</i>.

The exact instructions to run and submit smoke test reports are these:

    perl Configure.pl
    make
    make smoke

Obviously one has to check out the latest version from SVN first by

    svn co http://svn.perl.org/parrot/trunk parrot

and then update to the latest version every time before running the tests.
My scheduled job looks like this:

    cd /home/gabor/work/parrot
    svn up
    make clean
    perl Configure.pl --cc=cc --cxx=CC --link=cc --ld=cc
    make
    make smoke
    make languages-smoke

the implementation of the Smoke client and server can be found in
tools/util/  smokeserv-server.pl and smokeserv-client.pl and
smokeserv-README.pod

On the smoke report page one can see a table divided based on platform.
Within each platform you can see one row for each report. This is a 
summary of the results.

A sample row looks like this:
    Parrot 0.4.14  	 r20749  	20 Aug 2007 20:03 Mon  	languages  	11.40 min
      	99.23 % ok  	3118:  	3094,  	24,  	123,  	29,  	1    &gt;&gt;    &gt;&gt;

The columns are:
<ul>
<li>Parrot version number (the latest release before the test run) (0.4.14)</li>
<li>revision number (from the Subversion revision count) (r20749)</li>
<li>Date when the test was executed (20 Aug 2007 20:03 Mon)</li>
<li>Flags used (languages)</li> 
<li>Time the tests took (11.40 min)</li> 
<li>Percentage of successful test (99.23 % ok)</li> 
<li>Total number of test in this test run (3118)</li> 
<li>Success (3094), Failed (24), todo (123) skipped (29) unexpected success (1)</li>
<li>The remaining two &gt;&gt; signs lead us to the more detailed reports</li> 
</ul>

Potential flags can bee looked up in the parrot source code by typing <i>perldoc Configure.pl</i>.
Specifically <i>languages</i> means that we are testing some of the language implementations hence
the total number of test is only 3118.

In the details, the meaning of <b>Success</b> and <b>Failed</b> are obvious.<br>
<b>TODO</b> means test that were implemented already
before the actual feature was implemented. So we expect those tests to fail.<br>
<b>Unexpected success</b> means that there were tests marked as TODO (that is expected to fail)
that succeeded. This can happen in various cases, for example when someone implements a feature
but forgets to update the test.<br>
Tests marked as <b>skipped</b> are those that might be platform dependent (and the test is running 
on a platform where they are not relevant) or that they have some missing prerequisites.

In the <a href="/img/img.htm?parrot_smoke_report.png" target="_new" />parrot test report</a>
on the left side you can see filename. The test suit is organized into several files.

Each file contains one or more unite tests (or assertions, or ok calls). Each rectangular
next to the file name represents one such unit test. The size of the rectangulars does not
matter - they are different only to fit the screen. What is interesting is the number of
rectangulars. On one hand in scheme/t/io/basict.t (4th row) you can see 2 rectangulars meaning there
are two assertions in the file on the other hand scheme/t/arith/logic.t has many small rectangulars
meaning it has many (I counted 42) units.

The colors mean
<ul>
<li>Green: ok</li>
<li>Dark green: TODO test that failed as expected</li>
<li>Light green: SKIPed tests</li>
<li>Red: failure</li>
<li>Yellow: TODO test that was unexpectedly successful</li>
</ul>

Placing the mouse over one of the rectangulars, you'll see the tool-tip showing the exact name of
the assertion that usually explains what does that test. In case of the TODO and SKIPed tests
it usually also says why is that in TODO or why was that skipped. (Obviously this will only
work on the real report and not on this image).

On the right side of each row you can see a small summary of that file, 
the percentage of the tests that were successful.

<h2>Wish list</h2>

What I am missing form this is a report where I could see each assertion on which platform
was it successful and where did it fail. I would also like to see some statistics on how
the number of test and the success/failure rate changed throughout the development.
I would also like to see an aggregated report from all the platforms.

