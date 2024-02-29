=head1 Experimental Stand-alone Padre for Linux
=timestamp 1260392467
=tags Perl, Linux, Padre, Perl6, Catalyst

The last couple of days I spent building a distribution for 
Linux to make it very easy to start using a recent version of
<a href="http://padre.perlide.org/">Padre, the Perl IDE</a>.

On yesterdays entry of the <a href="http://www.catalystframework.org/calendar/2009/8">Catalyst Advent Calendar</a>
Jonathan Yu explained the advantages and disadvantages of using Catalyst as packaged by Debian vs. 
installing it from CPAN. Padre has the same issues but as Padre is younger than Catalyst it lags 
even more in the package management systems of the various Linux distributions. While on CPAN we have v0.51
some distros still come with 0.12 I think and many people use older distros that did not have Padre at all.
Padre is also more difficult to install using local::lib than Catalyst due to the need of wxWidgets.

It was also a bit embarrassing that we already had a stand alone Padre package with 
super easy installation for both Windows and Mac OSX Snow Leopard and we don't have one 
for Linux.

So I built a portable perl (meaning you can put it anywhere on the system), 
installed Padre into it and you can already 
<a href="http://perlide.org/download/binary/perl-5.10.1-xl-0.03.tar.gz">download it</a>.
(download file size 30,009,562, after unzip 119 Mb)

After downloading it do the following:

  tar xzf perl-5.10.1-xl-0.03.tar.gz

  ./perl-5.10.1-xl-0.03/perl/bin/padre.sh

Note, you need to run the .sh file!

Not only that you can use Padre now for writing Perl 5 scripts, this package
also comes with the Perl 6 plug-in so you can use it to write Perl 6 code as well.

<h2>Perl 6 on Padre</h2>

In order to use the Perl 6 plug-in, first you will have to enable it:
Go to 

Plug-ins/Plugin Manager  - Select Perl 6 and click on Enable
Due to a bug you will have to restart Padre for this to take effect.

Then go to

Edit/Preferences/Files and Colors
Select Perl 6 as File type and Std.pm as Highlighter in order to get
syntax highlighting.

<h2>Catalyst</h2>

As you could read on the Catalyst advent calendar you can use Padre 
for Catalyst development. In order to make that easier this version 
already contains the Catalyst plug-in of Padre.

In order to use it you'll need to enable the plug-in the same way as 
you did for the Perl 6 plug-in and follow the instructions of
Breno G. de Oliveira on 
<a href="http://www.catalystframework.org/calendar/2009/9">Developing Catalyst Applications with Padre</a>.


<h2>Warning and bugs</h2>

This is a very experimental version with a lot of known flaws. Please,
report issues via the 
<a href="http://padre.perlide.org/contact.html">regular channels of Padre</a>. (IRC, mailing list).

Known issues:

<b>PERL5LIB</b>

If you have PERLLIB or PERL5LIB configured (e.g. because using local::lib) 
this installation will get confused. Of course this is not specific to this build.
Any other perl would be confused. The simple work-around is to unset those variables
in the shell where you launch padre. 

The longer term solution is to make changes to perl itself so I'll be able to compile out
the PERL5LIB and PERLLIB support from perl. This does not seem to be a hard project
and I think if someone wants a bit core perl development this could be a very useful and
not too big project. Nicholas Clark told me the code is in perl.c and that I should pay attention
to sitecustomize.pl too.

<b>sh-bang</b>

All the scripts installed have an sh-bang that points to the directory where I built the package.
Hences none of them will run alone. (That's the reason I had to add a separate shell script
for Padre. I am not sure how can I achieve but I'd like to make sure that every script installed
will know that the perl it should use is relative to where the script is located.


<b>CPAN.pm</b>

The CPAN client is probably not functional. It might work for pure Perl modules but if you need a 
compiler then there might be issues with compiler mismatch with the one I used. 
(I built it on Ubuntu 8.04.03)


<b>post mortem Segmentation fault</b>

When the Catalyst plug-in is enabled, there is a segmentation fault <i>after</i> 
you shut down Padre on some of the machines we checked.


<h2>Help and feedback</h2>

Your feedback regarding this package would be really appreciated and your 
help with any of the above issues would be just a really nice present.

