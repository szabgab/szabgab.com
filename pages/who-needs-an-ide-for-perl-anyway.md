=head1 Who needs an IDE for Perl anyway?
=timestamp 1219321463
=tags IDE, Perl, Perl 5, Padre

So I have started to release versions of 
<a href="http://padre.perlide.org/">Padre, the Perl IDE</a>.
It is usable but far from being an IDE yet.

Maybe it would be a good time to stop and think a bit about a few questions:
Who and why needs an IDE for Perl?
Why and in what can Padre be better than the existing tools?

On the web site of Padre I have started to collect links to articles and
discussions about Perl development tools. IDEs, debuggers and why people
would need or why they should not use one. I even asked on the 
<a href="http://lists.cpan.org/showlist.cgi?name=perl-trainers">perl-trainers</a>
mailing list what do they use?

Let's try to group people writing Perl code according to their level of experience
and Perl projects according to their size.

There are some <b>very experience Perl programmers</b> - mostly those who attend Perl
conferences or practicing <a href="http://www.perlmonks.org/">PerlMonks</a> or participate
in <a href="http://www.pm.org/">Perl Monger</a> meetings or mailing lists - 
(also known as <i>the Perl community</i> ) who have their own tools 
(many use vi or emacs) and don't see anything lacking. Even if they do, 
they rather solve it in their preferred tool than switch to something else.

There are a few hundred  or maybe thousand such people in the world.
I would really like those to start using Padre as they can be the people adding
more features to it but they are not likely to switch, unless the IDE can provide 
everything they had in the old system and some real advantages. At least in some
situations.


<b>Experienced developers new to Perl</b> are usually used to have an IDE in their
other languages. I see people from the C++, C# and Java world, when they need to
write in Perl they complain a lot about the lack of IDE. They are so used to have
one that it is much harder for them to switch to a simple editor. Those of them
who are already familiar with Eclipse are lucky as 
<a href="http://www.epic-ide.org/">EPIC</a> seems to be quite a nice plug-in to
Eclipse. Those who don't know Eclipse yet will still have the learning curve.

<b>Total beginners</b> and <b>people who rarely use Perl</b> might benefit a lot from
some of the features of an IDE. These people tend to use Perl for small scripts but 
they need a lot of hand holding in finding functions, finding and installing modules
that might do part of the work.
They need lots of help in writing better perl code (e.g. recommend use strict
and use warnings if they are not using).

During <b>training</b> we usually don't want to deal with editors people don't know,
hence Padre needs to behave as expected from any simple text editor. It just need to
have some extra features built in that will help the people with their first steps
in Perl.

So I think beginners can benefit a lot from an IDE, the problem is that those who
can recommend an IDE - the experienced people - will not use it much unless there
are some advantages to it.

So besides providing the features that are needed for beginners it will
be important to add advanced feature that might bring some of the advanced
Perl programmers over to use Padre. At least in cases where they have to deal
with less experienced people.

<h2>Comments</h2>

<ul>
<li><a href="http://meorero.wordpress.com/2008/08/21/why-do-i-want-a-perl-ide/">Oren Maurer</a></li>
</ul>

