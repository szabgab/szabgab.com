=head1 No good Perl for Win32 ?
=timestamp 1235462905
=tags Win32, Perl, Perl 5

I was trying to test the development version of Padre on Windows.
Update from SVN and tried it on the currently installed ActivePerl:

  C:\gabor\padre\Padre>perl Makefile.PL
  Found Wx.pm     0.90
  The required 'nmake' executable not found, fetching it...
  Fetching 'Nmake15.exe' from download.microsoft.com... 
     Can't locate object method "new" via package "URI" at C:/Perl/lib/HT
  TP/Request.pm line 80.

Not good.

But no problem, I remember <a href="http://ali.as/">Adam Kennedy</a> has just released the
first stable version of <a href="http://www.strawberryperl.com/">Strawberry Perl on a Stick</a>.
Strangely the main site only had link to the release candidates and not to the real release.

No problem, I know he announced it on 
<a href="http://use.perl.org/~Alias/journal/38533">use.perl</a>

Now that's bad. According to the comment there, it cannot build XS modules.

So I cannot use ActivePerl nor the released version of Strawberry on a stick.

Reverting to the previous Strawberry RC that I still have somewhere on my computer...

All tests passing.

