=head1 The sin of no documentation
=timestamp 1318359801
=tags Perl, documentation

The Perl community now has two vocal people who demand good documentation and say <b>"if you don't write documentation you better not upload your code"</b>.
It is the same theme as was raised in <a href="/the-responsibility-of-a-cpan-developer.html">The responsibility of a CPAN developer</a>.

I don't link to the these posts as that would be just crediting them. You can find the most recent ones on the
<a href="http://ironman.enlightenedperl.org/">IronMan perl blog aggregator</a>.

They basically say "lack of documentation is a sin". 25 lashes.

Here is the thing.

<h2>Having good documentation is extremely important!</h2>

It is important as it makes the specific module more usable. It is important as it gets more respect from your peers.
It is important for the Perl community as a whole as in the end the quality and the usability of
Perl and the CPAN modules reflect on the whole community. If you would like to see more people using Perl
and joining the Perl community, <b>we have to have better documentation and better tutorials</b>.

So if you are writing a CPAN module, please invest time in writing documentation. If you cannot, for
whatever reason (e.g. lack of time) then try to find someone who would want to cooperate with you.
That can be a nice way to get someone involved.

I think we know that the Perl community recognizes the importance of the documentation.
The TPF even <a href="http://news.perlfoundation.org/2008/11/2008q4-grant-proposal-moose-do.html">paid money</a> to
<a href="http://blog.urth.org/">Dave Rolsky</a> to
write <a href="http://blog.urth.org/2009/04/moose-docs-grant-wrap-up.html">documentation for Moose</a>.


<h3>BUT</h3>

It is not a requirement to have good documentation. If I had to make a choice, I'd rather have a well
written module that has lots of tests and works but has no documentation; than a half written,
broken module with lots of documentation.

Others might prefer a broken module with lots of documentation. People can have different preferences.

If I see a module with little or no documentation I can leave it. That's sad. If I really need it
I can I invest time to figure out how to use it. Then I can write some examples and some simple docs and
submit them to the author. <a href="/helping-the-next-cpan-user-with-very-little-work.html">Helping the next CPAN user with very little work</a>.

Better yet, in many cases I can <a href="/contributing-to-a-perl-module-on-cpan-using-vim-and-github.html">submit my patch via Github</a>.

If not that, you can write a blog entry as Yanick Champoux did while
<a href="http://babyl.ca/techblog/entry/taming-pod-weaver">taming Pod::Weaver</a>.

Even too much documentation might be a problem. People like myself and apparently Wolfgang Kinkeldei
like simpler examples. He did not complain (although that was not clear from my original comment
in the <a href="http://perlweekly.com/archive/11.html">Perl Weekly</a>) he just wrote a blog
entry with an example on <a href="http://blogs.perl.org/users/wolfgang_kinkeldei/2011/10/testdbixclass.html">how to use Test::DBIx::Class</a>.

<h2>How Open Source and CPAN work?</h2>

One of the nice things about Open Source is that if there is a piece of software out
there that needs improvement (e.g. documentation) many people can help. Distributing the
work load to many, many people. Sure it would be better if all open source code was
released bug free, feature complete and with lots of good documentation.

Till that happens what you can do is

1) Contribute to existing CPAN modules.

2) Encourage others to contribute.

3) Complain and vilify the authors.

I'd recommend 1 or 2.

