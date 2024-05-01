=head1 Moaning Goat Meter
=timestamp 1235133251
=tags Perl, Perl 5, Linux, CPAN, TODO

Recently I looked for some graphical tool to monitor the memory and CPU 
usage of some of the applications I am running and found <b>mgm</b>. It is
not exactly what I was looking for but its a nice GUI tool to show various parameters 
of your system.

When it launches it shows a horizontal bar with various titles written on 
the vertical side making them unreadable. I could not find a way to click on the GUI to change it
so I though I'll look for the documentation.

Typing man mgm points me at /usr/share/doc/mgm/html/docs.html which is not 
on my system and to http://www.xiph.org/mgm/ which returns 404 Not Found.

On the positive side it revealed that the code is written in Perl/Tk but
after seeing the other two pieces of information to be invalid I had to
check it. Indeed /usr/bin/mgm is a 600 lines long Perl script using Tk.

It also uses a bunch of other modules located in /usr/share/mgm/
Looking at the code that was written in 2001 it is not bad at all.
Well, maybe except of this line:

  $0="moaning-goat-meter"; # OK, this is evil.

and a slight lack of spaces.

Unfortunately the packages its using are not real modules
and are loaded via require.

Anyway my point is not to criticize the code.
I'd be proud if wrote such code back in 2001.

The problem was that I could not find any indication regarding the source 
of the code. A short search on my hard disk and I found /usr/share/doc/mgm/README.Debian.
That too points to the above not existing URL.

I had to turn to Google and even there I got many links pointing to the wrong, 
presumably old URL. Finally though I found it the web site of

<a href="http://linuxmafia.com/mgm/">Linux Mafia</a> which points back to the 
<a href="http://www.xiph.org/">Xiph</a> web site so there is obviously some relationship.

There are many nice things in that code for system administrators. 
I wonder if it was worth to take it from there and CPAN-ify the code?


Oh and by the way I can use mgm with the following options to put it in vertical mode:

   mgm -bars horizontal -stack vertical

