=head1 Yak shaving
=timestamp 1224765950
=tags CPAN, IRC, Modules

Two days ago I wrote about <a href="/recursive-development-that-leads-nowhere.html">Recursive development that leads nowhere</a>.

As I was not satisfied with the idea of not doing anything I started to learn about
[dist://Module::Starter]. I installed it and created a new distribution with it
just to find out it did not include the <b>license</b> key in Makefile.PL. As that is
just what I was complaining about last week in <a href="/licenses-in-meta.yml-on-cpan.html">Licenses in META.yml on CPAN</a>
I decided to ask about it on IRC.

I was lucky as Ricardo SIGNES was also awake who explained that actually he has 
stopped using Module::Starter as he is writing [dist://Dist::Zilla] 
that provides much better project management capabilities. I pointed him at
my blog entry and after reading it he asked me if I know the expression
<b>yak shaving</b>. I've heard it, actually I even read about it in 
in <a href="http://productiveprogrammer.com/">The Productive Programmer</a>
I mentioned earlier in <a href="/the-quest-for-the-perfect-editor.html">The Quest for the Perfect Editor</a> but I did not really understood it.

Actually I think I understood it back when I read the book but promptly forgotten
it as I did not have any way to connect the expression to the actions or lack of
actions.

I was so lucky to find Ricardo on IRC as he explained:

<blockquote>
I need to fix this bug, but first I better eat something so I don't get tired.<br>
So I'm going to have some cereal, but I'm out of milk.<br>
So I'll go get some milk.  But I heard that yak milk is the best, so I'll go <br>
out to Nepal to find a yak.<br>
But they're all so hairy, I can't get to their udders.<br>
So, first I'll just shave the yak.<br>
</blockquote>

This is just the way you have to teach. Now I can remember it much more easily.

So I spent some time trying to understand Dist::Zilla but came to the conclusion that
what I need now is still Module::Starter that I might later need to combine with Dist::Zilla.
Now that I know Dist::Zilla is not really a replacement for Module::Starter, I patched the
latter to include the license keys in Makefile.PL (it already worked with Build.PL).
I hope it will get in the next release.

Then I went on and integrated Module::Starter in <a href="http://padre.perlide.org/">Padre</a>
and today I released v0.11 0f it. I'll write about it shortly in a separate post.

<h2>Licenses</h2>

In other news, after the discussion in IRC I wrote to the module-authors list about
<a href="http://www.mail-archive.com/module-authors@perl.org/msg06712.html">
Integrating license related things of CPAN</a>.

I really hope we can get something moving in that department too.

