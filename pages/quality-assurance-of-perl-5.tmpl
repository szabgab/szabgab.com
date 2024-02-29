=head1 Quality Assurance of Perl 5
=timestamp 1187636978
=tags QA, Perl, Perl 5, automated testing, testing

This is part of a series of articles I started with <a href="/quality-assurance-and-automated-testing-in-open-source-software.html">Quality Assurance and Automated Testing in Open Source Software</a>.

<h2>Background</h2>
<p>
Perl is one of the most widely used programming language available
on over 50 platforms, UNIX/Linux/BSD, Windows, Mac, Mainframe, etc...
<br />
The name <b>perl</b> refers both to the language and its implementation. 
By implementation I mean the compiler/interpreter used to execute
programs written in the Perl programming language.

<h2>Development process</h2>
<p>
There is a group of volunteers calling them-self Perl 5 Porters
who are doing the development of Perl. A handful of them have
commit rights to the version control system. 
They are currently using <a href="http://perforce.com/">Perforce</a>.

To see what's going on, check out the archive of the 
<a href="http://archive.develooper.com/perl5-porters@perl.org/">perl5 porters</a>
mailing list.

Mere mortals don't have access to the repository but an up to date 
snapshot of the latest version can be fetched (using rsync or ftp) 
so others can use that to work on the project.
They can also follow the changes using the mailing list for 
<a href="http://www.nntp.perl.org/group/perl.perl5.changes">commit messages</a>.

most of the people are expected to send patches created by 
the diff program to the perl porters mailing list. 
The patches are then discussed, tweaked and once they are accepted 
they are applied to the version control system.

<a href="http://en.wikipedia.org/wiki/Larry_Wall">Larry Wall</a>,
the original creator of Perl is rarely involved in the current
development of Perl 5. He is working on Perl 6.

A more accurate description of the development process
can be found in the 
<a href="http://perldoc.perl.org/perlhack.html">perlhack.pod</a> 
file that is also included in the distribution of Perl.

The core of Perl is written in the C programming language but many
parts that come with the distribution are written in Perl.

<h2>Versions</h2>
<p>
As mentioned there is a single interpreter/compiler for Perl 
but with several versions out in the market. The current stable
version is 5.8.8 and the next major version is going to be 
released soon. During development it has version numbers 5.9.X
and once released as stable it will be called 5.10.

There is also a version called Perl 6 being developed but it is 
a separate project and I shall deal with it, in a separate article.
There are still many places using even older releases such as
the 5.6.1 the 5.005 line and even 4.x is used in some places.

The developers work on the so called <i>bleed perl</i>
(currently the 5.9.X tree) while certain changes are also applied
to the so called <i>maint</i> (currently the 5.8.X tree).

<h2>Testing</h2>
<p>
The current development version of Perl, the soon to be version 
5.10 comes with about 200,000 tests in its source code. 
Most of the tests are written in Perl.

The basic output of the test files are using the 
<a href="http://testanything.org/">TAP - Test Anything Protocol</a>.

The standard build process of the package includes the<br />
<b>make test</b> step that execute all the tests relevant to 
the current configuration. Exceptions might be platform 
dependent tests or tests that check features not included in
the specific build.

In order to facilitate quick feedback on things that might
have broken several volunteers are running so called 
<b>smoke tests</b> on many different platforms. That is, 
they have a process running automatically downloading the 
latest source, building Perl, running the test suit and then 
sending a report on the results to a mailing list.

Setting up automatic smoke testing is very easy, it basically
only needs a C compiler, a working version of Perl installed
and an extra package called [dist://Test::Smoke].

The test results are automatically sent to a mailing list called 
<a href="http://www.nntp.perl.org/group/perl.daily-build.reports/">
perl.daily-build.reports</a> and are the entered to a search-able
database.

Each report looks like this:

    Automated smoke report for 5.9.5 patch 31729
    pc09: Intel(R) Pentium(R) 4 CPU 1.70GHz (GenuineIntel 1695MHz) (i686/1 cpu)
        on        linux - 2.6.18.8-0.5-default [SuSE]
        using     ccache gcc version 4.0.2
        smoketime 2 days 21 hours 53 minutes (average 4 hours 22 minutes)

    Summary: FAIL(X)

    O = OK  F = Failure(s), extended report at the bottom
    X = Failure(s) under TEST but not under harness
    ? = still running or test results not (yet) available
    Build failures during:       - = unknown or N/A
    c = Configure, m = make, M = make (after miniperl), t = make test-prep
    
       31729     Configuration (common) none
    ----------- ---------------------------------------------------------
    O O O O O O 
    O O O O O O -Duse64bitint
    O O O O O O -Duselongdouble
    O O O O O O -Dusemorebits
    O O O O O O -Duseithreads
    X O O O O O -Duseithreads -Duse64bitint
    X O O O O O -Duseithreads -Duselongdouble
    O X O O O O -Duseithreads -Dusemorebits
    | | | | | +- LC_ALL = en_US.utf8 -DDEBUGGING
    | | | | +--- PERLIO = perlio -DDEBUGGING
    | | | +----- PERLIO = stdio  -DDEBUGGING
    | | +------- LC_ALL = en_US.utf8
    | +--------- PERLIO = perlio
    +----------- PERLIO = stdio
    
    Locally applied patches:
        DEVEL
        SMOKE31729
    
    Failures: (common-args) none
    [stdio] -Duseithreads -Duse64bitint
    [stdio] -Duseithreads -Duselongdouble
    Inconsistent test results (between TEST and harness):
        ../ext/threads/shared/t/waithires.t.....FAILED at test 17
    
    [perlio] -Duseithreads -Dusemorebits
    Inconsistent test results (between TEST and harness):
        ../ext/threads/shared/t/waithires.t.....FAILED at test 35
    
    MANIFEST did not declare 'merijn/Configure'
    
    Compiler messages(gcc):
    pp_sys.c:307: warning: 'S_emulate_eaccess' defined but not used
    op.c: In function 'Perl_fold_constants':
    op.c:2332: warning: variable 'curop' might be clobbered by 'longjmp' or 'vfork'
    opmini.c: In function 'Perl_fold_constants':
    opmini.c:2332: warning: variable 'curop' might be clobbered
       by 'longjmp' or 'vfork'
    
    -- 
    Report by Test::Smoke v1.19_88 build 1052 running on perl 5.8.8
    (Reporter v0.027 / Smoker v0.032)
</pre>

Besides the meta information about the test run it also shows 
a cross reference of status values for the various configurations
that were tested in this test run.

Reports are collected from the mailing list and included in a 
database which is accessible via several interfaces: 
<a href="http://db.test-smoke.org">db.test-smoke.org</a> and
<a href="http://www.test-smoke.org/">www.test-smoke.org</a>.

<h2>TODO</h2>
I still would like to add some snapshots of the database and 
an explanation of the individual reports.

