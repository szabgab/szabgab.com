=head1 Shimming for testing Perl 6 code released to CPAN
=timestamp 1234081459
=tags newsletter, testing, Perl 6, Perl, wrappers, shim, TAP

=abstract start

An entry of the <a href="/test-automation-tips">Test Automation Tips</a>
discussing how we can use the Perl 5 testing system to run 
TAP producing test in any language.

=abstract end

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>


Recently I have started to prepare a web site and I wanted to 
write the code behind it in Perl 6.
For this I decided to reuse the Perl 6 port of HTML::Template 
that was created by the developers of the 
<a href="http://november-wiki.org/">November wiki</a>.


The problem is that it is part of the November project and it 
does not have a separate releases. I am not sure if November 
has any official release or they are just copying the files 
to the production machine? After all it is a very experimental
project.


<h2>Running Perl 6 locally</h2>

Anyway as I was only running my code on my own development 
machine that was not a huge issue as I could use the 
checked out version of the November git repository by 
writing the following at the beginning of my code.

  BEGIN {
	@*INC.push('/path/to/november/p6w/');
  }

This is of course not flexible enough and does not allow easy 
sharing of Perl 6 packages. So I decided I should try to put 
Perl 6 packages on <a href="http://www.cpan.org/">CPAN</a>
and reuse the already existing packaging, *testing*, 
distribution, and installation system of Perl 5. 
Later as we learn more about what Perl 6 will need we can 
migrate over our code to a new kind of CPAN server.

<h2>Shimming for Testing</h2>

Packaging the code was not an issue but allowing 
the standard installation process to run the unit 
test was a challenge. The problem is that the 

  make test 
  
phase of the standard Perl 5 installation process will 
run the test files with the current perl, which is perl 5.

It would be nice if I could tell Test::Harness to use some 
arbitrary executable with some arbitrary parameters that 
the package developer can define but it is not yet available. 
Luckily Adam Kennedy helped me out pointing to the idea of 
<a href="http://en.wikipedia.org/wiki/Shim_(computing)">shim</a>.

In our case that means that I renamed all my *.t test files 
to *.t6 files and during the first step of the installation 
process I create a small wrapper for every .t6 file using 
the same name but with the .t extension.

The .t file contains the following Perl 5 code:

 use strict;
 use warnings;

 use Config;
 use File::Spec;
 my $sep = $Config{path_sep};

 my $rakudo_dir = File::Spec->catdir($ENV{PARROT_DIR}, 'languages', 'rakudo');

 my @libs = $ENV{PERL6LIB} ? split (/$sep/, $ENV{PERL6LIB}) : ();
 $ENV{PERL6LIB} = join $sep, $rakudo_dir, @libs;


 my $parrot = File::Spec->catfile($ENV{PARROT_DIR}, 'parrot')
   . ($^O eq "MSWin32" ? '.exe' : '');
 my $rakudo = File::Spec->catfile($ENV{PARROT_DIR}, 
   'languages', 'rakudo', 'perl6.pbc');

 (my $file = $0) =~ s/t$/t6/;
 system "$parrot $rakudo $file";


That is, the only thing it will do is to run the .t6 files with the same name
but using Rakudo over Parrot as the interpreter.

This means the TAP stream of my real tests will flow directly to the code executing
the *.t files.

This way actually we could wrap TAP streams generated by any language such as Python,
PHP or even JavaScript and integrate them into our standard reporting systems.

<h2>Improvements</h2>

Looking at the above code again I can see a couple of possibilities to improve it.

I should use exec instead of system just to keep the same process and 
to make sure the exit code does not get lost.

I think I could easily tell any of the packaging tools of Perl to look for some
other files and not .t file such as shim_testname.pl files. That way I could keep my
real test files as .t. I am not sure though how much added value that would bring to
languages other than Perl 6. AFAIK Python or PHP tests files don't normally have .t
extensions.

<h2>Shimming library</h2>

I could wrap both the above script and the code that generates the small 
shimming files into a module to make it easier to reuse.

e.g. Makefile.PL could contain something like this:

 use Test::Shim
     prepares => '*.t6', 
     executer => 'path/to/interpreter param param';
 
or

 use Test::Shim 
     prepares => '*.t6', 
     recurse  => 1, 
     executer => 'path/to/interpreter param param';
 
That would create a .t file for every .t6 file in the t/ 
subdirectory possibly recursing deeply.

The small .t file can then contain only

 use Test::Shim 
	run  => 'filename.t6', 
	with => 'path/to/interpreter param param';

that would run 'path/to/interpreter param param filename.t6'

<h2>Installing using CPAN.pm</h2>

After the testing was solved I tried to see if I can install 
the newly created package with CPAN.pm and indeed the command

   cpan .

installed my new package into the standard Perl 5 installation tree.

I could then configure the PERL6LIB environment variable to list all
the directories in the @INC of my perl 5.



<h2>Uploading to PAUSE and Indexing</h2>

Uploading to PAUSE is not an issue but then I got an e-mail 
from PAUSE telling me that it could not find any package in my
distribution so it won't index anything.

It was not too surprising as PAUSE is very perl 5 oriented and 
it probably is trying to load my modules using perl 5 which it 
will fail. Even if it only parses my code looking for the 
"package Foo::Bar;" definition it won't find it as the Perl 6 code 
contains "class Foo::Bar;".
I asked Andreas Koenig and he quickly replied that I should provide
the indexing information in META.yml but I could not figure it out
yet how exactly I am supposed to do it.

So for now you probably cannot use CPAN.pm directly to install 
the package. <a href="http://search.cpan.org/">search.cpan.org</a>
does show it so you can check it out, it is called 
[dist://Perl6::Conf] and probably 
you can also install it using [dist://pip]
which gets a URL of a .tar.gz file, fetches that file and then uses 
your already setup CPAN.pm to install all its dependencies and the module
itself. It will work as this module does not have any dependency.

<h2>Dependencies</h2>

Which brings me to the probably last issue we will have to solve.
The current standard build systems of Perl 5 will probably fail to
recognize the existence of an already installed prerequisite Perl 6 
module. We'll have to provide an alternative way to check if the
modules our module requires are already installed and to tell
CPAN.pm and CPANPLUS that they should install the dependencies
before trying to install this module.


<h2>Conclusion</h2>

Well, this story might not be entirely about testing but I think
the shimming technique suggested by Adam can be reused to 
integrate many testing libraries into one stream so
it might be useful to you as well.


<h2>Comments and Discussion</h2>

If you would like to discuss this on a public mailing list,
subscribe to the 
<a href="http://mail.szabgab.com/mailman/listinfo/test-automation">
Test Automation discussion list</a>


<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>
