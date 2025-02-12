=head1 How to teach "Modern" Perl?
=timestamp 1321367934
=tags Perl, teaching Perl, learning Perl, Perl tutorial

Since I started my <a href="/perl-tutorial">Perl Tutorial series</a>
a couple of people commented on what and how I am teaching.

Some people asked why did I show "open or die" and why not using <hl>autodie</hl>.
Others recommended the use [dist://IO::All] instead of <hl>open</hl>.

Another complaint was the introduction of <hl>time</hl> and <hl>localtime</hl>
instead of [dist://DateTime].

While I was mostly writing parts of my regular training material these comments
led me to think about it again. I wonder <b>how to teach Perl in 2012</b>?

When I started to write the tutorial I still called it "modern perl tutorial" but
now I mostly call it "Perl tutorial" and I am going to eliminate the
mention of "modern" from the first parts as well.
Partially because it is better to leave the use of that word to
<a href="http://www.modernperlbooks.com/">chromatic</a> and
also because people have strong opinions what can be called "Modern Perl".

Before deciding <b>how to teach Perl</b> I think
the first thing should be to decide <b>who is the audience</b> of this tutorial?

Let me try it:

<h2>The audience of the Perl Tutorial</h2>

A person who needs to get some job done and wants to learn Perl.

A person who inherits a piece of Perl code that was developed
a few (maybe 10) years ago and is in need of some changes.

This tutorial has no specific focus for system administrators or web
developers or configuration management engineers or anyone else.
I plan to build more specialized tutorials for them.
This is a generic tool for people who want to learn Perl.

<h2>Which version of Perl?</h2>

When I started I was not even sure I should use the features of 5.10.
After all many people are still stuck with old versions of Perl
and they still need help learning Perl.

The reason I added <hl>use 5.010</hl> is that I was hoping
this might give some push to people to start using at least 5.10.
I am not sure any more if the tutorial can have any such impact.
After all for most people who are stuck with old versions of perl,
have no other choice. They are not the decision makers.

I think I'll keep the 5.10 requirement but I'll add special pages
for people using older versions of Perl. Specifically 5.6.x and 5.8.x.
I hope this will help them deal with what they have.

<h2>Maybe use 5.12?</h2>

People who use recent versions of Linux or who use
Strawberry Perl (or the "Padre on Strawberry" package),
have at least 5.12.x already.

So I could go further and <hl>use 5.12;</hl> That would be awesome
as that already implies <hl>strict</hl> so I don't have to write
<hl>use strict</hl> in all the examples.

I think that would be a mistake though.

If I keep publishing the content as it is now, I don't
have control over the order people are reading the tutorial.
So people looking for some solution will find one of my examples.

  use warnings;
  use 5.012;

  # bla bla

They might copy it as most of the people do. Then if they
are not yet using 5.12 it will blow up telling them the script
requires 5.12. They will probably figure out this is due to the
"use 5.012" statement. They remove it. The code works.
(Assuming I did not use <hl>say()</hl> or <hl>given</hl> in that
specific example.)

But now there is a script without strict!

I am not yet sure how to deal with this.

<h2>autodie</h2>

Using autodie seem to be less problematic.

Still I am a bit afraid of people seeing

  open my $fh, '<', $filename;

and not learning the connection to the <hl>use autodie</hl>.
They will probably copy the open... part without copying the
autodie.

It will even work in most of the cases. After all, when the open
succeeds the code will keep running.
The problem is that there is no proper error checking, something that
will likely only be needed in production code.

In a nutshell, I am not sure I can avoid first explaining "open or die"
and only then explaining the wonders of autodie.

<h2>open or IO::All</h2>

After reading the comments recommending [dist://IO::All] I decided I'll give it a try.
In about one hour I found I think 4 or 5 bugs in the overloading code.
I reported them to Ingy and those might be fixed since then but it made me worry.

Even if in the end I'll show only the OOP way of using IO::All
and skip the overloading part, I am not sure the module is mature
enough to be recommended to newbies as THE way to read from files.

<h2>Your opinion?</h2>

I'd really like to read your opinion. How would <b>you</b> teach Perl?
What would you include and what would you exclude?
In what order would you teach?

