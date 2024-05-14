=head1 Building DWIM Perl for Linux
=timestamp 1349578416
=tags Perl, DWIM Perl, Linux



The idea behind the <a href="http://dwimperl.szabgab.com/">DWIM Perl distribution</a> is to provide
an easy way to start using Perl to build applications.

Therefore it should contain every CPAN module you'd need to build any decent Perl application.

There is already a fairly good <a href="http://dwimperl.szabgab.com/windows.html">DWIM Perl for Windows</a>,
built on top of Strawberry Perl, but the experimental version of 
<a href="http://dwimperl.szabgab.com/linux.html">DWIM Perl for Linux</a> could be a lot better.

Let's see how can we build a much better distribution of Perl for Linux?



<h2>Dependencies</h2>

There are going to be two major dependency issues for this distribution.

<ol>
<li>What run-time external dependencies will this package have?</li>
<li>What additional dependencies will it have for installing more CPAN modules?</li>
</ol>

The <a href="http://dwimperl.szabgab.com/windows.html">Windows version of DWIM Perl</a> 
(which is based on <a href="http://strawberryperl.com/">Strawberry Perl</a>), comes with a C-compiler
and the C libraries for some of the most central dependencies. For example it comes libssl, libz and libexpat.
On the other hand I am quite sure it still assumes certain Windows-specific libraries (DLLs) to be available
on the system. This enables the CPAN client to be useful out-of-the box and allows it to work on any
"recent" version of Microsoft Windows.

For the long-run this might be a good objective for the Linux version as well,
but for now I'd be happy if we could make perl and the CPAN modules we supply to work.
At first we don't need to have a working CPAN client.

<h2>The Plan</h2>

I don't fully understand yet what are the thing we need to do in order to achieve
the grand objective, so let's have a rough plan that we can adjust as we go.

I am certainly looking for your ideas on this.

<ol>
<li>Compile a relocatable Perl.</li>
<li>Add some CPAN modules that don't have external dependencies.</li>
<li>Add a CPAN module with some external dependency.<br>
(Which one should be the first?)<br>
Repeat this step several times.</li>
<li>Enable the CPAN client work out of the box assuming certain things are available (e.g. C compiler, make, etc)</li>
<li>Include the C compiler and all the other tools the CPAN client requires. (Is this really necessary?)</li>
</ol>

Basically after every such step we can have a new release. As some of the steps
can be broken down to lots of smaller steps - the addition of each CPAN module or
each external dependency can be a separate sub-step - we will probably have 
multiple releases during the process.

A couple of other issues we will have to deal with:

<ul>
<li>Make the building process reproducible.</li>
<li>Maintain a repository of all the dependencies. (perl, CPAN modules, external dependencies)</li>
<li>Create an easy path to upgrade various parts of the distribution.</li>
<li>Create an easy path to create derivatives of the distribution. (Including more thing and maybe also including less things)</li>
<li>Create a list of CPAN dependencies for each module we plan to install.</li>
<li>Provide a listing of software licenses that were used in the various parts of the distribution.</li>
<li>Send reports to the <a href="http://www.cpantesters.org/">CPAN Testers</a>,
possibly bug reports to the <a href="http://dev.perl.org/perl5/">Perl 5 Porters</a>,
the authors of CPAN modules and maybe even to external dependencies.</li>
</ul>

<h2>Compile a relocatable Perl</h2>

The first step is to compile perl, make it relocatable and create the skeleton of the distribution.

<h2>The Directory Layout</h2>

Within the root directory of the package we distribute
we will have a subdirectory for <b>perl</b> and another subdirectory for <b>C</b>.
This is the same layout used on Windows.

In addition we are going to have a <b>t</b> directory for test.
At first I am going to include a few small sanity tests.
That will let the end-user test our distribution after installation.
Later we might include some or all of the tests that come with perl and
the included CPAN modules to make it possible to test the whole system
even after installation.

<h2>The build environment</h2>

If I understand correctly perl, as basically everything else on Linux,
depends on glibc. In turn glibc is backward compatible and its run-time
is available on every Linux system.
That means if we compile our perl on a relatively old version of Linux,
with a relatively old version of glibc, then it will run on
all the newer version of Linux and glibc.

We will use <a href="http://www.centos.org/">CentOS 5.8</a>.
The 5.x series of CentOS was first released in April 2007.

<h3>Install Linux</h3>

First download and set up Linux on a Virtual Box.
When installing CentOS deselect all the checkboxes
(no Gnome GUI and not even "server").

It created only a root user so better create another user.

  adduser foobar
  passwd foobar

then log-in as that user

<h3>Directory and getting perl</h3>

Create a directory called <b>dwimperl</b> as the root directory of the distribution.

   mkdir $HOME/dwimperl

Download the <a href="http://www.cpan.org/src/README.html">source of perl</a> 
Specifically we'll start with 5.16.1 which is the most recent version
at the time of this writing. Newer versions of DWIM Perl will use newer versions of perl.

Fetch the source code of Perl and unzip the tarball:

  wget http://www.cpan.org/src/5.0/perl-5.16.1.tar.gz
  tar xzf perl-5.16.1.tar.gz
  cd perl-5.16.1

Start building perl:

   sh Configure -Duserelocatableinc -Dprefix=$HOME/dwimperl/perl -des

this will immediately tell us, some stuff is missing from the computer.
We need to install a C compiler.

Login as root and type:

  yum install gcc

Then we can re-run the previous command to configure perl. Once that's successful,
we can run <b>make</b>, <b>make test</b>, and <b>make install</b>.

  make
  make test
  make install

Add a perl script for testing the installation and another shell script to run the tests
with the correct perl. (The original copies of these files are in
<a href="https://github.com/dwimperl/tools">the Github repository</a> of the project.)

  t/selftest.sh
  t/01-perl.t

Running t/selftest.sh from anywhere in the system should work.

Even if we rename the root directory to dwimperl-5.16.1.1 (or anything else for that matter).
  
Create the distribution by typing

  tar czf dwimperl-5.16.1.1-64b.tar.gz   dwimperl-5.16.1.1/

Then I set up another Virtual Box instance if CentOS. Created a different user but has not
installed any extra files. Copied the tarball, unzipped it and ran the selftest.sh there too.

It worked.

Then I copied the tarball to another machine with Ubuntu 12.4 on it. Repeated the ceremony.

It worked there too!

<h2>Distributed Perl scripts</h2>

In the perl/bin/ directory there are number of Perl scripts. For example perldoc and cpan.
They all start with an sh-bang pointing to the directory where perl was originally
installed when it was built. This is not convenient as it means
the end user won't be able to run perldoc.

The files should either have #!/usr/bin/env perl as their sh-bang line hoping
that the user puts this perl at the beginning of the PATH environment variable,
or they should be updated after relocation to point to the new location of perl.

I am not yet sure which is the better solution and if there is already a tool
to update all the scripts?

<h2>The Results</h2>

Basically this covers the first step in <b>The Plan</b>. Let's distribute it
so you can download and check if it works on your Linux?

<h2>Download</h2>

You can download this first version from here:
<a href="https://code.google.com/p/dwimperl/downloads/detail?name=dwimperl-5.16.1.1-64b.tar.gz">dwimperl-5.16.1.1-64b.tar.gz</a>
and you can "install" it by the following commands:

   wget https://dwimperl.googlecode.com/files/dwimperl-5.16.1.1-64b.tar.gz
   tar xzf dwimperl-5.16.1.1-64b.tar.gz

To run the self-test type:

   ./dwimperl-5.16.1.1/t/selftest.sh

To see the version of perl and the details of this compilation type

   ./dwimperl-5.16.1.1/perl/bin/perl -V

If you'd like to turn this perl to be your "default" perl then edit .bashrc, include the following:

  export PATH=/the/path/to/dwimperl-5.16.1.1/perl/bin/:$PATH

and reload .bashrc.

Later versions of <a href="http://dwimperl.szabgab.com/linux.html">DWIM Perl for Linux</a> will be published
on the <a href="http://dwimperl.szabgab.com/">DWIM Perl</a> web site.

<h2>How can you help?</h2>

I'd be happy to get your opinion on the questions I asked above and I'd be happy
if you downloaded this first package, tried it, and let me know what works
and what does not?

