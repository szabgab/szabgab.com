=head1 Writing Perl 6 can be frustrating
=timestamp 1233732069
=tags Perl 6, Perl, Rakudo, Parrot

Recently I decided to refresh my Perl 6 knowledge and to start writing my 
first really useful application in Perl 6. Two days ago I started writing it.

It was very frustrating. Many things have changed in Perl 6 since the last time
I started to write my <a href="/perl6.html">Perl 6 training course</a> so I had to 
relearn things I already knew. 
In addition there are lots of things I don't know yet and that are 
quite different from Perl 5.

In addition, as I am using <a href="http://www.rakudo.org/">Rakudo</a> 
over <a href="http://www.parrot.org/">Parrot</a> there are still 
tons of features that are broken or not yet implemented. 
Even among those that are specced.

All that was nothing compared to the frustration that was caused 
by a merge in Parrot that broke Rakudo, which has just moved to git, 
but there was no one on IRC who could tell me where is the latest Rakudo.
So for half a day I was staring at a broken Parrot and a broken Rakudo.

Anyway, in the end, once people showed up on IRC they helped me resolve
these issues. I even got a commit bit on the git repository of 
<a href="http://november-wiki.org/">November, the wiki written in Perl 6</a> 
so I could fix a minor build related issue.

So now I have a new web site that is currently consists of a few static pages
but those pages are already generated using Perl 6 running on Rakudo.

The web site is still very ugly with almost no content, but the first 
step has been made. 
It is about the <a href="http://whitecamel.org/">White Camel Award</a>

