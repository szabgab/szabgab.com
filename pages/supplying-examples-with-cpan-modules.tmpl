=head1 Supplying examples with CPAN modules
=timestamp 1256311007
=tags Perl, examples, Padre, CPAN

One of the optional metrics used by <a href="http://cpants.perl.org/">CPANTS</a> 
is whether the module has examples. I think it checks if there is an eg/ directory 
but actually having an eg/ directory with examples does not give the users much.

Most of the people install the modules using CPAN.pm or the native package management
tool. Neither of those install the examples. Very few download the source and 
unzip it so they won't see the examples.

OK, I admit. I always have trouble locating examples even 
when the documentation of the module tells me to look at them.


So what other options are there?

<h2>POD in the sample script</h2>

If there is POD in the example files then search.cpan.org will display them, 
but of course it will display the POD and not the code.


<h2>Generate a module and install it</h2>

In [dist://Win32::GuiTest] there is a make_eg.pl script that is executed when 
the distribution is generated. It takes all the files from the eg/ directory 
and creates a module called 
<a href="http://search.cpan.org/dist/Win32-GuiTest/lib/Win32/GuiTest/Examples.pm">Win32::GuiTest::Examples</a>
putting the examples in the POD section. This means the actual examples can be easily read
on search.cpan.org and once the module is installed they can be easily found by typing

  perldoc Win32::GuiTest::Examples

<h2>Install the examples</h2>

In [dist://Padre] and in [dist:Padre::Plugin::Parrot] we instruct CPAN.pm to 
install the examples in the share directory. Actually we have a share/ directory
and the examples are within that directory in share/examples. Then in Makefile.PL
we have instruction to install the share directory. 
(In the case of [dist://Module::Install] it is a call to <i>install_share</i>.)

Once the module is installed the examples are also installed and they can be found
with the following call:

  $dir = File::Spec->catdir(
		File::ShareDir::dist_dir('Padre-Plugin-Parrot'),
		'examples');

That is

  File::ShareDir::dist_dir('Padre-Plugin-Parrot')

returns the path to the share directory of the package.

In Padre then we can create menu items to <b>Open Example</b> that
will open the regular <i>Open File</i> window just it will position
it in the directory of the examples supplied by Padre. Similarily
the Parrot Plugin has (or I think will have in the next release)
a menu item for the same thing.

Of course it is not restricted to people using Padre as anyone could use
the above code.


<h2>run examples embedded in modules</h2>

There are a number of modules on CPAN with some way to run the examples
embedded in modules. for example if you look at the SDL::Tutorial package of 
<a href="http://search.cpan.org/dist/SDL_Perl/">SDL_Perl</a>, you know, the 
newly (and rightly) hyped module that will help you burn all your free 
time by writing games in Perl... there you will find simple instructions on
how to run the sample script:

  perl -MSDL::Tutorial -e 1


<h2>Auto-extract examples</h2>

There are a number of modules on CPAN with some form of auto-extract examples
I just can't find them. The idea there is that the sample script is embedded 
in a module and running 

  perl -MModule::Name -e1

will create a file example.pl that will hold the example script.
Actually I think the SDL examples meant to do this as well but if I remember 
correctly they don't extract anything, just run the example.

<h2>Conclusion</h2>

As we can see there are several ways to include examples in a CPAN 
distribution with varying levels of ease of use. Actually we could even
combine all the solutions and make sure people have several 
easy ways to see running examples of the modules on CPAN.

These could also help a lot with 
<a href="http://perl-yarg.blogspot.com/2009/10/of-module-evaluation.html">module evaluation</a>
and learning.

