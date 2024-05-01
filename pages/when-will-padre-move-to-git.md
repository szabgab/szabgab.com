=head1 When will Padre move to Git?
=timestamp 1262751048
=tags Padre, Git, Subversion, SVN, VCS, Perl, Github

Yesterday while I was not watching the IRC channel the issue of moving to Git
came up again. You can see the <a href="http://irclog.perlgeek.de/padre/2010-01-05#i_1886659">log of the conversation</a>.
I know many Perl projects moved to Git, including the Perl 5 Porters. Maybe it is time for Padre too, to move?

I have to tell you people I really am getting fed up with the Git fanboyism. This time it wasn't so bad 
- probably because I did not see it live happening - but for a long time I wanted to write about this already. 
Git might have a huge technical advantage over Subversion and as we are told it also has an enormous social advantage but if
I am pushed (no pun intended) to use Git then I feel very uneasy. To say the least.

I don't know what is your reaction to sales people that are trying to push you into buying things. 
Usually I kick them out even if I need that thing and will try to buy somewhere else. That means more time invested
and sometimes even higher price. I know it is not rational but rather emotional. I am ok with that. I know most of
the people reading this will make only rational decisions after carefully weighting all the technical aspects 
(e.g. of Git and Subversion) but I let emotions get involve as well.

I allow myself doing this as I learned in my marketing studies that most people actually
make their decisions based on emotions and then rationalize them. 
As we were told, it is not surprising that a Porsche comes with a huge manual. After all you don't 
buy it to pick up chicks. You buy it because of its technical superiority. Or so you tell your friends
and yourself!

Well, maybe it was something else we learned. I don't know. I almost failed that class.

Anyway back to 

<h2>Padre and Git</h2>

I have been using Subversion for many many years now, since before it was release as 1.0 and 
I have been using Git for some time. For a long time I did not get anything about Git.
The first thing I liked about it was actually Github. Specifically the ease I could create 
one-off patches. Even more so to create several small patches to other projects.

If a project is using Subversion I can pull it repository make a small change and send the patch. 
That's not bad but it requires an off-the-band communication via e-mail or nopaste or putting it in the 
bug tracking system or some other way to send the patch. The author also has to deal with pulling the patch 
from that place - and the fact that these places vary already create a head-ache - in short it is more complex
than I'd want.

It is much worse in case I want to make several small patches that might depend on each other. I can't easily do 
it with subversion. I could have done it with SVK or Git, creating a local branch of the remote SVN repository,
making several commits locally and then sending the patches one by one.

The other way would be to ask the repository owner to give me a commit bit. Even if s/he gives out commit bits
easily as happened with Pugs and as happens with Padre it still takes some time to find the person who can 
give that commit bit. If I just want to make a few small changes the overhead might be too high.

<h2>Github</h2>

That's where <b>Git+Github actually has an advantage</b>. I - as someone outside of the project does not need to wait
for anyone. I can just fork, make changes and push it back to Github. The maintainers of the project can pull
my changes later on. This can work very nicely for small patches though for bigger changes people should still
talk to each other first.

I don't think it would make much sense for Padre to keep the core developers work on their own fork as with the speed of
our development we could easily create integration problems but we are told this only the fear of the unenlightened.

I can see an advantage of moving to Git and Github but I have my fears from the switch. Besides, the
biggest disadvantage I see is that many of our developers don't not know Git - including myself.
Actually I know several of them did not know even SVN before they joined the project.
The main issue <a href="http://ali.as/">Adam Kennedy</a> mentioned regarding Git was the lack of
good Git client on Windows. I don't know the state of the Git GUI client market on Windows so it might be just
his totally unaccepted emotional reaction (see above) to the pushing but I can't talk in his name.

Anyway I'd be ok moving to Git and Github and keeping a central repository on Github for the core developers
and enjoying the benefits of Github for one-off changes but I have a <b>precondition</b>.
In order to make that happen we have to <b>make sure our developers can easily use Git</b> so we 
need a <b>superb Git plug-in for Padre with Github integration</b> that works on all operating systems 
we support.

So take it as a challenge. Improve the Git plug-in to the point that it is super easy to use it even 
without knowing much about Git and you removed the biggest obstacles from our way to Git.


