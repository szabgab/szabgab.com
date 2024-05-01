=head1 Padre 0.53 Stand Alone for Linux on perl 5.11.3 released
=timestamp 1261601193
=tags Perl, Padre, IDE, Linux

As <a href="http://perlwannabe.vox.com/">Peter Lavender</a> has <a href="http://perlwannabe.vox.com/library/post/padre-053-is-released.html">announced</a> 
Padre 0.53 was released a few hours ago. Among many other things it contains the first version of a built-in debugger. You can download and install Padre 
from CPAN but if your are using Linux there is also a new binary package that you can download and use.

It is a very experimental package, not only because of Padre but because it is using perl 5.11.3 the recently 
released monthly build of perl 5.12 to be. 

While building it I encountered a few problems related to changes made to perl. These changes might 
affect your code as well. You might want to try your modules to see how they behave on 5.11.3.


One of the modules was generating warnings like this:

   defined(%hash) is deprecated at .../SomeFile.pm line 82.
   
Another one was generating warnings like this:
   
  UNIVERSAL->import is deprecated and will be removed in a future perl
     at .../SomeFile.pm line 7
  
They passed their tests but Padre, during its own tests checks if there are not unexpected
warnings using [dist://Test::NoWarnings] and fails if there are. So I had to patch those modules
in order to allow the installation to proceed. ( Reports were sent to the authors so I hope these will
be fixed soon ).

[dist://Test::Exception] failed one of its test. I force installed the module and reported to the
author and to p5p where I quickly got a response from <a href="http://www.dagolden.com/">David Golden</a>
pointing out that there is already a fixed developer version on CPAN.

I also had to patch one of the tests of Padre due to a change in a warning text perl 5.11.3 gives.
The same change was then committed to the version control of Padre.

It was a bit annoying to hunt down the issues as my build system does not report correctly yet but in the end
I got it working. When I tried to install the Perl 6 and the Catalyst plugins I encountered further issues
so I decided to postpone them.

If you want to try it now, look at the instructions:

<h2>Download</h2>

Download <a href="http://perlide.org/download/binary/perl-5.11.3-xl-0.03.tar.gz">perl-5.11.3-xl-0.03.tar.gz</a> (File size: 29,002,849)

  wget http://perlide.org/download/binary/perl-5.11.3-xl-0.03.tar.gz

Unzip it

  tar xzf  perl-5.11.3-xl-0.03.tar.gz
  
and You can run the padre.sh file:

  ./perl-5.11.3-xl-0.03/perl/bin/padre.sh 

Enjoy and <a href="http://padre.perlide.org/contact.html">report</a> any issues.

