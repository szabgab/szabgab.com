=head1 Open Source IDE for Perl
=timestamp 1211438612
=tags Perl, Perl 5, editor, IDE, open source, debugger, Gtk, WxWidgets, Windows, training

During my classes I always need to get into this explanation of why there is
no really good open source IDE for Perl. I always go by explaining that most of
the Perl developers either use some version of vi or emacs but every time
there are students who insist on that they need an IDE.

Actually as I am thinking about this more, I don't really know if there is no
good IDE for Perl as I personally don't feel I need anything more than what
I am currently using: gvim + command UNIX line tools including ack and lots of
unit tests.

Thinking it even more there are a few places where I could improve my own
development environment. One of them is that I constantly need to look up
things in tons of pod files and I think I am typing perldoc and the names of
the module just too many times.

Anyway, that's my environment and the problem is with people who are either
starting out on perl or have only a few years experience. They need much more
hand holding from the tools.

When I am at clients, I see many developers insisting on using <strong>a real IDE</strong>.
These are either people with only a few years experience or people who switched from
languages where you live in your IDE such as Java or C++.
They are also mostly people with Windows only background.
Some of these people use Eclipse with Epic, others use Komodo yet other use some
text editor with syntax highlighting but complain about the lack of debugger.

In the classes I always explain the advantage of vi/emacs and knowing the built-in
debugger of Perl by the fact that in just too many cases we are required to work
on remote Unix systems with nothing on them.

Of course if I have an IDE that can run on my desktop but edit files on a remote machine
(via ftp or scp) and then can execute that code on the remote machine (via telnet or ssh)
but show the debugging information on my IDE. That could be cool.

I see people using Komodo for remote editing at one of the clients and while I
am sure there are advantages we suffer a lot as saving the files take time and
we often switch to another console and start running the program before it is fully
saved. This leads to all kinds of nasty error message that often confuse us.

Anyway, for people with hardly any experience in Perl having all the information
in the IDE (e.g. what parameters a function can get) will often out weight the
inconvenience of having to wait for the ftp to complete.

In addition there should be many more people using Perl on Windows. Part of the
reason that there are not so many might be the fact that both the environment
and even the Perl documentation expects some Unix experience.

So I decided I try to further investigate the issue, first by trying to find out
what kind of editors and IDEs are out there and what am I missing - if anything -
by using vi instead of some real IDE. In addition I'd like to know what others
use for their Perl development? Finally to see what improvement do we need
and how to reach that?

There are plenty of good free text editors for Windows, they do quite a good
job in syntax highlighting, some of them can even be configured to launch your
script from within the editor but none of them is and IDE.

After some search I found that there is an entry in the Perl FAQ that comes with your
standard perl installation but one that you can also read here:
<a href="http://perldoc.perl.org/perlfaq3.html#Is-there-an-IDE-or-Windows-Perl-Editor">IDE or Windows Perl Editor</a>
Unfortunately Notepad++, the editor I use sometimes on Windows isn't mentioned there.

Then I looked at <a href="http://www.perlmonks.org/">PerlMonks</a> and I found several nodes about the topic.
Both new and old. Here are a few links. Following them will lead for the other nodes.

* <a href="http://www.perlmonks.org/?node_id=639314">What's the best Perl IDE?</a>
* <a href="http://www.perlmonks.org/?node_id=604586">Perl Development Environment - Revisited</a>
* <a href="http://www.perlmonks.org/?node=Perl%20Development%20Tools">Perl Development Tools</a>

In addition there was an article on perl.com a few years ago with the title
<a href="http://www.perl.com/pub/a/2005/08/25/tools.html">Perl Needs Better Tools</a>

There is also a page on the Perl Foundation wiki describing some of the
<a href="http://www.perlfoundation.org/perl5/index.cgi?editors">editors</a>.
I added some links there but that page still lack any substantial information.

So based on all the discussions I tried to list what do people need from their IDE?

Beginners (especially in classes) need these:

* Good Syntax highlighting
* Automatic syntax checking
* Bracket highlighting and bracket matching
* Code suggestion and auto-completion for perl keywords
* Showing the available parameters of keywords
* Context sensitive help on perl built-ins (including variables and constructs) and on modules
* Pod viewer
* Integrated Debugger (expression evaluation, breakpoints, watches etc.)
* Mouse over tool tips for variable contents
* Debugging: Edit and Continue support
* Jump directly to locations (editor-wise) Perl has warned or died at.

When writing applications (the first few years) people also need these:

* Display subroutines in a sidebar
* Auto-completion for methods in OOP development
* Remote editing (via ftp, ssh, etc.)
* Remote debugging (when the code is actually running on another machine
* Integration with version control
* For web application emulation of a real Web server

And the more advanced stuff is here:

* Refactoring support
* Tool to build GUI
* Integration with unit testing

So what tools are out there?

Before finding all the above links I turned to Google.
There were some interesting results most notably the big difference in numbers when one is searching for
<a href="http://www.google.com/search?hl=en&q=perl+editor&btnG=Google+Search">perl editor</a> ( 2,940,000 hits )
or for <a href="http://www.google.com/search?hl=en&q=perl+ide&btnG=Search">perl ide</a> ( 307,000 hits ).

So if I am already there I decided to run the same search for other languages:

Number of hits on Google for <b>XYZ editor</b> and <b>XYZ IDE</b>:
<table border="1" >
<tr><td></td><td>Editor</td><td>IDE</td></tr>
<tr><td>Perl</td><td align="right">2,940,000</td><td align="right">307,000</td></tr>
<tr><td>Python</td><td align="right">312,000</td><td align="right">381,000</td></tr>
<tr><td>Ruby</td><td align="right">302,000</td><td align="right">570,000</td></tr>
<tr><td>Java</td><td align="right">903,000</td><td align="right">1,300,000</td></tr>
<tr><td>PHP</td><td align="right">8,620,000</td><td align="right">1,310,000</td></tr>
<tr><td>.NET</td><td align="right">14,700,000</td><td align="right">864,000</td></tr>
</table>

You do whatever you want with this data.


Anyway why am I writing all this?

I don't worry too much about people using Linux or Unix directly.
There are Perl beginners there too but they are much more used to rough edges
and using several tools at the same time.

What I am interested in is having a great and free version of Perl width
loads of tools for the Windows developers.
<a href="http://www.strawberryperl.com/">Strawberry Perl for Windows</a> is quite promising
but I think it would be great if it came with a built in editor. Especially when
the Perl-on-a-stick project is done we'll be able to have a working perl
installation on a disk-on-key so we can just plug it in a computer and start
using our Perl scripts or give a demo. It would be great to have an editor there
too.

So a month or so ago I thought I'll write one. I know it must be lots of work but it
might be quite rewarding. I started to write in Gtk2-Perl and within a few days
I had a working version. Then I found out that
<a href="http://search.cpan.org/~nkh/">Nadim</a> has also started to write on in Gtk2.
I tried to play around with that one but then I talked with Adam Kennedy, the maintainer
of Strawberry Perl. He suggested to include <a href="http://kephra.sourceforge.net/">Kephra</a>
with Strawberry or Chocolate Perl. It was written in Wx-Perl.

While I like Gtk2 better than WxWidgets it is mostly because I had bad experience with WxWidgets.
It was hard to install and I have not found any documentation for it. Nevertheless I have
to admit that probably an application written in Wx-Perl will have better chances on Windows
than one written in Gtk2-Perl as the former looks smoother on Windows.

I am still at odds whether I should invest any more energy in it, given that there are plenty
of editors out there and given that it is not likely that I personally will need it.
Anyway it can be a good way to learn Wx-Perl and I have a few ideas on how to make
it more useful for windows developers.

## Comments by

<a href="http://nxadm.wordpress.com/2008/05/23/an-ide-for-perl/">Claudio Ramirez</a>
<br />
See more comments on <a href="http://use.perl.org/~gabor/journal/36500">use.perl.org</a>

