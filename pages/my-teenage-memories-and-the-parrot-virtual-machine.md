=head1 My teenage memories and the Parrot Virtual Machine
=timestamp 1254515743
=tags  Parrot, Perl, Padre, Planetarium, PIR, assembly

I am on vacation and visited the <a href="http://www.planetarium.hu/">Planetarium in Budapest</a> with my son. 
After so many years it was nice to be there again even though we saw
a program about stars and not the a laser show. Back when I was 16, I used
to "work" there writing a slide-show program in assembly for the ZX Spectrum.
That was fun time, I really enjoyed programming in assembly. I thought about this earlier too, but
I think visiting there was the last straw: I am going to learn <a href="http://www.parrot.org/">Parrot</a>.

As I often play with <a href="http://www.rakudo.org/">Rakudo</a> I already have
<a href="http://www.parrot.org/">Parrot</a> on my machine. If you don't there
are instructions on how to get it on the Parrot web site.

I knew a bit about Parrot, but I hardly understand what all the words PIR, PASM, 
HLL, etc. mean so I started to read the <b>Introduction to Parrot</b> which 
is the first document linked from 
<a href="http://docs.parrot.org/parrot/latest/html/">documentation of Parrot</a>

After a short overview it quickly lead me to the first example in PIR 
(Parrot Intermediate Representation) - which if I understand correctly 
is the highest assembly language Parrot can understand.
The first example was printing hello world - what else could be.
I reached for <a href="http://padre.perlide.org/">my favorite editor</a> and tried 
to create a file a file with pir extension. It crashed. A short fight with it
and I found out that Padre was mostly OK, just the Parrot plug-in that is used 
for the syntax highlighting of the PIR files used the old API. As it is written
in Perl and I happened to know a bit of the particular code, I could fix the plug-in
and could resume learning Parrot and PIR.

Once I managed to write my first example I wanted to run it using the "Run/Run Script F5"
menu option but it told me there is no execution mode for this kind of file. Sure, 
apparently I have not implemented that part yet. So back to editing Padre::Plugin::Parrot.
I had to implement the <i>get_command</i> method in the Padre::Document::PIR class that
should contain the various PIR specific features of Padre.

Once that was done <b>I could already run my PIR script</b>, right from within my editor.

As I made some further progress in learning PIR I found out that not all the 
keywords I am using are colored so I had to patch the <b>syntax highlighter</b>
which is too in Padre::Document::PIR.

I moved along, created a few <b>example pir scripts</b>, partially based on the examples
from the Parrot web site, partially just the standard examples like the Fibonacci 
and added them to the Parrot plug-in. They should be installed now and with the next version
I might even add a menu option to the Parrot plug-in to make it easy for the users to 
open these sample scripts.

The last thing I added to the plug-in was a menu option to <b>generate a PBC file</b> (Parrot Byte Code)
from the pir file. Unfortunately it does not give you any feedback on success or 
failure yet but at least it is out on CPAN already. 

If you would like to try it, install <a href="http://padre.perlide.org/">Padre</a> and then
install v0.26 of [dist://Padre::Plugin::Parrot]. I am off reading the PIR book available on
the Parrot web site.

