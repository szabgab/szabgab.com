=head1 Syntax highlighting nightmare
=timestamp 1225946474
=tags Perl, Perl 5, PPI, syntax highlighting, Padre

Two days ago I got, what is probably the most serious 
<a href="http://padre.perlide.org/ticket/101">bug report</a>
so far for <a href="http://padre.perlide.org/">Padre</a>. 
As it turns out while we are trying to build the best Perl IDE on Earth
or whatever big title, we cannot even parse perl 5.10 correctly.
Specifically it does not know what to do with the new defined-or <b>//</b>
operator.

By chance just a few days earlier I wrote down the version numbers
of our major non-perl dependencies, that is wxWidgets and Scintilla.
This information now helped me to locate the problem and try to 
evaluate how can we solve it.

The latest version of [dist://Alien::wxWidgets] on CPAN is 0.40 
released on Oct 15, 2008. Based on 
<a href="http://search.cpan.org/src/MBARBON/Alien-wxWidgets-0.40/patches/data">this file</a>
I understand that it is using version 2.8.8 of wxWidgets. Checking the 
<i>contrib/src/stc/scintilla/README.txt</i> file in the wxWidgets 2.8.8 
source code reveals that it uses Scintilla 1.70.

According to the <a href="http://www.wxwidgets.org/">wxWidgets</a> 
web site currently the latest version of wxWidgets is 2.8.9
that was released on Sept 22, 2008. Based on file same README
file we can find out that it also uses version 1.70 of Scintilla.

According to <a href="http://www.scintilla.org/">Scintilla</a> web site the latest version of Scintilla is 1.77.
It was released on Oct 18, 2008 while 1.70 was released 20 June 2006, more than 2 years ago.

Our problem is that perl 5.10 came out on Dec 18, 2007 and Scintilla included support for the new syntax
only in version 1.76. (See the <a href="http://www.scintilla.org/ScintillaHistory.html">Scintilla History</a>.

<h2>Solution 1</h2>

So the immediate idea was to check how can we get the latest Scintilla.

I checked the wxWidgtes development, and in their trunk, they indeed have a newer version of
Scintilla. According to 
<a href="http://trac.wxwidgets.org/browser/wxWidgets/trunk/src/stc/scintilla/README.txt">README</a>
in the trunk of wxWidgtes, it currently contains Scintilla 1.75. Argh.

That's still too old. In order for Padre to support perl 5.10, 
first Scintilla 1.77 needs to be integrated into wxWidgets. Then
we have to wait for the next release of wxWidgetes and then wait
some more till wxPerl catches on. By the time all this is done,
a newer version of Perl will come out with yet another keyword 
or construct and we are again in a awful big delay.

<h2>Solution 2</h2>

We could also sidestep the wxWidgets integration of Scintilla and integrate 
it ourself but that means an awful lot of XS work that none of us likes and
we are still dependent on Scintilla.

<h2>Solution 3 - write our own syntax highlighter</h2>

In the end no matter how good these syntax highlighters are, there
are still going to be cases when they fail. After all 
<b>only perl can parse Perl</b>.

Well, except of course [dist://PPI].

Indeed, yesterday morning, just a few hours after we discussed the 
situation on <a href="irc://irc.perl.org/#padre">#padre</a>,
<a href="http://www.fayland.org/">Fayland Lam</a> has already
implemented a solution.

Of course it was slow as Adam Kennedy promised but it worked.

Some tweaking and now it is available as an experimental feature.

<h2>TODO</h2>

We still need to solve the speed issue though.

A quick analysis using [dist://Devel::NYTProf] shows 
that the biggest time consumption is PPI analysing the file.

Two directions where people might want to help:
<ul>
<li>Implement more of [dist://PPI::XS] to make PPI fast.</li>
<li>Change PPI so it can parse only part of the file and then restart later from that point.</li>
</ul>

Other ideas are also welcome.

