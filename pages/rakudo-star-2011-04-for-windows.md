=head1 Rakudo Star 2011.04 for Windows
=timestamp 1306951705
=tags Rakudo, Perl, Perl6, Windows, install

I am really surprised by myself. In the last 10 years I mostly 
have various Linux distributions on my computers and I only 
used Windows at clients or in a virtual environment to make sure 
<a href="http://padre.perlide.org/">the perl editor</a> works 
reasonably well there. Yet somehow I became the "Windows guy".

I am really surprised that somehow I am now creating installers for 
various things on Windows. First the <a href="/strawberry-perl-with-cream-5-12-3-v3-released.html">Strawberry Perl with Cream - 5.12.3 v3 released</a> and now Rakudo Star.

If you don't know, <a href="http://rakudo.org/">Rakudo</a> is one of the most advanced
compilers of <a href="http://www.perl6.org/">Perl 6</a>. <b>Rakudo Star</b> is a
distribution that includes 
<a href="http://rakudo.org/">Rakudo</a>, the compiler, 
<a href="http://parrot.org/">Parrot</a>, the virtual machine, 
a number of third party modules and documentation. 

It is released in source code format and you can read more in the
<a href="http://rakudo.org/2011/04/28/rakudo-star-2011-04-released/">release announcement</a>.

To make it easier to get started with it on Windows I built an installer for this package.
It is a bit experimental for me as I am really new to building installers for Windows 
but Inno Setup makes it really easy.

Both the source code version and the Windows installer can be found on the 
<a href="https://github.com/rakudo/star/downloads">download</a> page of Rakudo.

There is one important limitation of Parrot I think, that the installation cannot be moved.
So it will install the whole thing in the C:\rakudo directory.

If you would like to get some introduction to Perl 6,
I made a series of <a href="/perl6.html">screencasts about Perl 6</a>.

Enjoy, and let me know how does it work out for you!

