=head1 Strawberry Perl for Windows
=timestamp 1207249395
=tags Perl, Perl 5, windows, Oslo, testing

For a long time I neglected this project but today I create a fresh VMware image 
of Windows XP and installed <a href="http://strawberryperl.com/">Strawberry Perl</a> on it.
I was surprised to see how nice it is! It already comes with a pre-configured CPAN-shell
and everything else you need to compile modules that use C. You don't even have to setup 
your CPAN mirror as they already pre-configured one for you.

I am about to show [dist://Win32::GuiTest] in class. I know it works well on ActivePerl
but there you get a binary version of it. I wanted to see how does it work on Strawberry Perl.
It works. Great.

Then I also wanted to try [dist://Win32::GUIRobot] as that is supposed to be a superset of 
Win32::GuiTest. Unfortunately one of its dependencies [dist://Prima] did not install easily.
I had to run Makefile.PL manually. After some fighting I managed to install that too
so I hope I'll be able to play around with it. I would not be able to do so in ActivePerl
as there is no pre-compiled version of this module. I have already asked 
<a href="http://kobesearch.cpan.org/">Randy Kobes</a> to prepare one, so  by the time you 
are reading this you might already find one but in the long run I don't want to rely on this.

If you would like to get involved in the work on Strawberry Perl the place you should start
looking at is the <a href="http://win32.perl.org/">Win32 Perl wiki</a>.

