=head1 Padre - the journey I.
=timestamp 1220171084
=tags IDE, Perl, Perl 5, open source, Padre

When my grandchildren will ask me how to run a successful
open source project I'll want to be able to tell them the story.

Actually in a recent use.perl.org post
<a href="http://use.perl.org/~chromatic/journal/">chromatic</a> wrote
about his <a href="http://use.perl.org/~chromatic/journal/37114">Free Software Project Management Axioms</a>
and I replied that I'd like to see a book on 
<a href="http://use.perl.org/comments.pl?sid=40570&cid=64256">Open Source Project Management</a>. Not only do
I think that many corporate project manager and developers could learn from such book but I'd
really want to read one.

In the meantime I have to figure out what am I doing in order 
to make <a href="http://padre.perlide.org/">Padre, the Perl IDE</a> successful.
After all I don't want to let my grandchildren down.

In order to learn wxWidgets and wxPerl I have started to write a Wx::Tutorial on 2008-June-20.
Joined the <a href="http://wxperl.sourceforge.net/support.html">wxPerl mailing list</a>
where I heard about the <a href="http://search.cpan.org/dist/Wx-Demo/">Wx::Demo</a>
which basically rendered the whole tutorial unnecessary. As I needed some project to 
let me continue and learn Wx I decided I'll try to put together some basic editor.

I believe that <b><a href="http://en.wikipedia.org/wiki/Eat_one%27s_own_dog_food">Eating one's own dog food</a></b>
is an important part of a successful project. With and editor it is easy as you always need
it for your own development. So just after a few days - once I could open and save files - 
I decided to start using it for all my coding. Yes I managed to lose data several time but that 
quickly prompted me to fix the problems. Lots of things annoyed me at the beginning. That again
made me fix those. Those are gone now. Instead there is a different set of annoying things.
As I work more and more using Padre, my expectation grows so I need to implement more and more
features and fix the broken ones.

I am a very <b>impatient</b> developer. I cannot seem to work on a project that bears fruits only
after month or years of development. I need feedback quickly. That is. I am OK with long projects
assuming we can have frequent releases. (Interestingly part of the Open Source and the Agile paradigm
fits nicely to my impatience.)

I also believe in
<a href="http://www.catb.org/~esr/writings/cathedral-bazaar/cathedral-bazaar/ar01s04.html">Release Early, Release Often</a>
and I also think that getting more people involved is important. I wanted to get a version out to the public soon
but I did not have a name for the project. Never mind, on 2008-July-16 I started to rename the project from 
Wx::Tutorial to App::Editor so I can release it under this temporary name. A short IRC discussion convinced
me mainly that it is not really a good name and I though it would be better to start using a real name from the
beginning. Hence on I asked the <a href="http://www.perlmonks.org/">Perl Monks</a> to 
<a href="http://www.perlmonks.org/?node_id=698541">suggest a name</a>. This lead to a long thread and lots of
wasted hours on my part trying to figure out which name might be good. In the end I settled with
Padre that stands for Perl Application Development and Refactoring Environment but that can also fit nicely in
the PerlMonks theme. 

Once I had a name on 2008-July-26 I released the first public version of Padre to CPAN.

