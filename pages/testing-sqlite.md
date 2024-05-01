=head1 Testing SQLite 
=timestamp 1187686149
=tags SQLite, testing
=redirect http://code-maven.com/testing-sqlite

This is part of a series of articles I started with <a href="/quality-assurance-and-automated-testing-in-open-source-software.html">Quality Assurance and Automated Testing in Open Source Software</a>.

According to its site <a href="http://www.sqlite.org/">SQLite</a> is a small C library 
that implements a self-contained, embeddable, zero-configuration SQL database engine.

I usually call it an in-process database. I am using it in many applications.

<h2>Development</h2>

SQLite has been developed by D. Richard Hipp and was placed in the public domain 
so actually it is not Open Source according to the definition of
<a href="http://www.opensource.org/">OSI</a>. 
As they require signed hard-copy of public domain dedications from everybody
with check-in privileges, the number of developers is quite limited.

Current most of the development is done by Richard and Dan Kennedy with a few 
more occasional contributors. As I understood from Richard, they are looking 
for more developers now.

They are using CVS as the version control.


Building SQLite from CVS does not seem to be simple
but there is a description of the
<a href="http://www.sqlite.org/cvstrac/wiki?p=SqliteBuildProcess">SQLite build process</a>
on the site.<br />
On the other hand the released versions are easy to build. For example
the Perl driver of SQLite [dist://DBD::SQLite] contains the source code of SQLite
and you can download and install it with a single command.<br />
I checked out the source code from CVS and tried to build it following 
the instructions in the README file. As it turns out they are in 
the middle of a huge refactoring and decided that they will break the
code temporarily to make the refactoring easier.

Personally I would not be able to refactor code that way. I need the 
constant feedback after every check-in to the repository that the 
system is still working and all the tests passing. If I break 
something I want to be alerted ASAP to be able to
fix it before I get too far away from working code.

<h2>Testing</h2>

The page about <a href="http://www.sqlite.org/arch.html">the Architecture Of SQLite</a>
mentions testing as well, albeit quite shortly. (See the bottom of that page)

The point is that 50-60% of the code base are tests and quality related. 
Given that the application is written in C and most of the tests are 
written in Tcl we can assume a good number of tests.
Based on what Richard wrote me we can describe the test as follows:

There are two levels of testing in the default SQLite package.
You can type:

<b>make test</b>

And this runs a quick set of tests that provides good code coverage
of most features.  However, many of the tedious and time-consuming
tests, such as tests for recovery from malloc() errors, are omitted.
You can also do

<b>make fulltest</b>

This latter does a much longer series of tests that provides 98%
code coverage.  The remaining 2% is mostly unreachable defensive
code.

We also have some unpublished scripts that compile SQLite under
various configurations (enabling or disabling compile-time options)
and run extra-long versions of full-test. These are our "soak-test"
scripts. These soak-tests are unpublished as they contain 
configurations used by support customers who do not want their 
configurations published.

Richard wrote:

"The last time I measured, around 60% of 
the SQLite source tree was devoted to testing.  
There are over 6000 individual test
cases.  Many of those test cases are parameterized and run
in loops with varying parameters, so that a fulltest runs over
250K separate tests, depending on compile-time options.

For every bug reported against the SQLite core, we always generate
new test cases to exhibit the bug in order to avoid regressions.

In builds of SQLite that are designed for testing, we have hooks
in the OS interface that allow us to simulate malloc() failures,
disk I/O errors, and other real-world anomalies so that we can
verify that SQLite responds correctly.  We can even simulate the
effects of a power loss in the middle of a transaction in order
to verify that transactions rollback correctly after power is
restored.

Testing is done by building a executable named "testfixture"
that include a TCL interpreter and the version SQLite under
test.  We then run testfixture with an argument that is the
name of the test script we want to run.  Example:

    ./testfixture ../sqlite/test/select4.test

There are some special test scripts "quick.test" and "all.test"
that recursively run other test scripts in order to do our "test"
and "fulltest" make targets.

The high reliability of SQLite is largely a result of its 
extensive test suite.  And the test suite would not have 
been achievable without the TCL scripting language.  We
believe, therefore, that SQLite would have never been possible
without the TCL programming language."


<h2>Automated Testing</h2>

There is no smoke testing setup, it is basically only what Richard 
himself does and he does it on Linux only. As he wrote me, most of 
the complexity is in the non-platform specific parts of the code, 
so problems in the platform interfaces are not common. 
Still if those arise the user community alerts him quite quickly.

Right now most of my work is done on Linux so I am not worried about this, 
also I believe most of the issues are found and fixed quickly on other
platforms as well, but still I would be glad to see some people running
the test suite and then sending the reports to a central database 
from other platforms as well. Similar to what we can see in some of the
other successful open source projects.

