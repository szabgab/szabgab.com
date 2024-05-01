=head1 Recursive development that leads nowhere
=timestamp 1224584435
=tags development, CPAN, GUI, PAR

I don't know how do others deal with this but it happens to me too often.

A couple of days ago I though it would be cool the create a sort of
<b>application platform</b> for easy Perl development and distribution.
I write about that later but to be short after discussing it with 
<a href="http://steffen-mueller.net/">Steffen Mueller</a> I got to 
the conclusion I need to write a GUI for the 
[dist://PAR::Repository::Client].

Further thinking led me to the idea to first try to write a GUI for CPAN.pm.
I looked in the code and talked to 
<a href="http://search.cpan.org/~andk/">Andreas J. Koenig</a> about it and set 
to working on it.

As I am not seasoned wxPerl developer I thought I'll copy the basic modules
from Padre such as the menu and the main frame. Just to get started. When I
got to the menu part I though it would be much nicer to abstract it out
and create a module that given a data structure describing the menu would build
the menu. Sure that might be a nice module but it is already getting too far
from the original project. So I postponed this one and went on copying 
and reducing the Menu.pm file from Padre. Some more work and I am almost done
with a very basic first window but it still does not open the window. 

I got fed-up with this trial-and-error and I though I should create a script that
would generate a basic layout of modules for a wxPerl application. Oh, this is
another project now about 4 levels away from my original one. Good. So I look
around and I think what I really need is to create a plug-in for 
[dist://Module::Starter].
Shall go now on <a href="http://en.wikipedia.org/wiki/Irc">IRC</a>
to talk to <a href="http://rjbs.manxome.org/">Ricardo SIGNES</a>
or shall I just try to do that and talk later?

I should write about in my blog. But wait just a few days ago I was thinking
in <a href="/shall-i-enable-some-form-of-trackback-or-commenting.html">Shall I enable some form of track-back or commenting?</a>, that I should add some way for people to provide feedback.

So before blogging I should add a feedback form to my blogging software. It is not
much work, you know, but it is just another step in the recursion towards the
<a href="http://en.wikipedia.org/wiki/Black_hole">black hole</a> of not doing
anything.

But wait. I already started to add that form I just stopped as I noticed there
are not enough unit tests in the application so first I wanted to add more unit
tests.

I guess I should go and eat something.

