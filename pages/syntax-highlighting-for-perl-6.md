=head1 Syntax highlighting for Perl 6
=timestamp 1230563859
=tags Perl 6, Perl, Padre, TPF, smartlinks, grants

Following the <a href="/grant-accepted-for-integrating-padre-with-parrot-and-rakudo.html">Grant accepted for Integrating Padre with Parrot and Rakudo</a> and <a href="/plans-for-integrating-padre-with-parrot-and-rakudo.html">Plans for Integrating Padre with Parrot and Rakudo</a> I can 
already let you know that the first steps has been made. 
<a href="http://padre.perlide.org/">Padre</a> is already capable 
to provide correct albeit slow syntax highlighting for Perl 6.

Actually it was implemented by <a href="http://use.perl.org/~azawawi/">Ahmad M. Zawawi</a>,
a neighbor of mine, who is also the maintainer of [dist://Syntax::Highlight::Perl6].

That's good news. I have not been playing with Perl 6 in many months
now as some time ago I decided that I'll start to write Perl 6 again
when I can get syntax highlighting in Padre and when I can run my
Perl 6 scripts from within Padre.

That time has come so I've started to write some Perl 6 code but I need the
documentation to be handy. So we are now discussing it on the #padre IRC
channel on how to integrate Padre with the existing Perl 6 documentation
and how to provide a real-world use case.

I  would like to be able to press on F1 and get an explanation of the
element where my cursor is currently located. I'd like to get the
call-tips directly from the Perl 6 documentation. As the Perl 6 
documentation can be linked to the tests implementing the specific
elements using the smartlinks in the test files we could open 
the specific test files for editing right from the documentation.

