=head1 Yet another reason why it is important to be nice to newbies
=timestamp 1251089599
=tags Perl, newbies, Padre

In order to encourage people - especially newbies - to join our conversation on the #padre
IRC channel we offer 
<a href="http://padre.perlide.org/irc.html?channel=padre">links through the our site</a> 
to the Mibbit web based IRC client.

Today, while I was still asleep <a href="http://ahmadzawawi.blogspot.com/">azawawi</a>, 
one of the key Padre developers had an interesting encounter with a newbie joining the 
channel through Mibbit. I shorten the conversation a bit and add some comments.


 04:22:12 * user_6029 (7352fabd@widget.mibbit.com) has joined #padre 
 04:24:47 * user_6029 had the exquisite pleasure of New->Perl6 and crashing Padre...

Yeah, we know that the most recent released package for Windows still has this bug.

 04:25:22 <azawawi> interesting
 04:25:24 <azawawi> 0.41? 
 04:25:27 <user_6029> ...then I notepad'ed up a "z.p6" with "say 'Hello'",
          opened it in Padre, ensuring that it's Viewed As Perl6, and pressed F5...
 04:25:44 <user_6029> ...and it said something like "The execution mode of
          this document had not defined"...
 04:26:04 <azawawi> i see
 04:26:09 <user_6029> ...and then I  pressed ctrl-F5, typing in "1+1"; again it said
          "failed to start running the program"...
 04:26:30 <user_6029> Yes, 0.41 combined +6 installer, WinXP
 04:26:30 <azawawi> Six?
 04:26:38 <user_6029> aye.
 
OK so azawawi can already know that this is the bug we already know about. You see the "Almost Six"
package has Padre 0.41 which is 3-4 weeks old. Ancient in terms of Padre release frequency.
 
 04:26:52 <user_6029> this is my first time ever tried padre or joining 
          the #padre channel...
 04:26:59 <azawawi> hmmm we should release a new 0.44 soon that solves most problems
 04:27:09 <azawawi> 0.41 was alpha (first release of everything)
 04:27:17 <user_6029> Hah, actually!
 04:27:24 <user_6029> Start Padre, New... -> Perl 5 SCript
 04:27:24 <user_6029> also crashed Padre.
 04:27:29 <azawawi> i know
 04:27:32 <user_6029> so it's not like anything p6 specific :)
 04:28:08 <azawawi> in 0.41 we switched to new mimetypes module that screwed 
          a couple of things :)
 04:28:17 <user_6029> I'd say! ;)
 
 04:30:46 <user_6029> Uhm, the topic says latest is 0.43
 04:30:49 <user_6029> but http://padre.perlide.org/download.html
          and trac shows 0.41?
 04:31:11 <user_6029> are we midway during the 0.43 release and if so, 
          url to a 0.43 installer or build instructions?
 04:31:30 <azawawi> user_6029: cpan Padre

 04:32:17 <user_6029> aha, Ctrl-F5 runs a "shell" comand! That isn't very
          much well-translated
 04:32:32 * user_6029 had the exquisite pleasure of typing "print 1" in Ctrl-F5
          and then, get:
 04:32:34 <user_6029> �L�k�Ұ� PRN �˸m 
 04:32:39 <user_6029> which is hilarious :)
 04:33:22 <user_6029> ok, so New...->whataever crashes, P6 execution mode 
          generally doesn't work, but P5 looks solid. got it.
 04:33:28 <user_6029> thanks for the quick feedback!
 04:33:41 <azawawi> no problem i just woke up :)
 04:33:53 <azawawi> user_6029: try upgrading your Padre
 04:34:17 <user_6029> embarrasingly, I thought 0.41 was newest. how do I upgrade?
 04:34:39 <user_6029> (using the combined installer .msi)
 04:34:43 <azawawi> user_6029: 'cpan Padre' on the command line should do it
 04:35:18 <user_6029> ah. well it'd help if, like other projects, the Help menu 
          contains a "check for updates"

...

 04:38:58 <azawawi> user_6029: 
          http://padre.perlide.org/trac/browser/trunk/Padre/Changes
 04:39:22 <azawawi> user_6029: as you can see a lot has been fixed/added
 04:39:24 <azawawi> user_6029: :)
 04:39:39 <user_6029> - Temporarily remove PAR support (ADAMK) 
 04:39:56 <azawawi> or removed :)
 04:39:59 <user_6029> aww :-/ I wonder why. Perhaps I can help...

Well, it is nice to see newbies want to help though PAR is a particulary
hard subject.

 04:42:43 <user_6029> ok, padre upgraded herself (wow, nice splash screen!)
 04:42:59 <azawawi> user_6029: cpan Padre::Plugin::Perl6 
 04:43:37 <azawawi> that's Padre :: Plugin :: Perl6 in case of mibbit's emiticons
 04:45:16 * audreyt (~audreyt@64.79.205.230) has joined #padre
 04:45:24 <audreyt> there. much better than anonymous web irc :)
 04:45:39 <azawawi> wow :)

If you don't know, audreyt is 
<a href="http://en.wikipedia.org/wiki/Audrey_Tang">Audrey Tang</a>.
She is the author of PAR and about a hundred other CPAN module and that 
of Pugs, the first implementation of Perl 6 that was actually usable.

Full log can be found <a href="http://irclog.perlgeek.de/padre/2009-08-24">here</a>
and <a href="http://perlide.org/irclogs/%23padre/2009-08-23.log">here</a>.

You can join the Padre channel via Mibbit using 
<a href="http://padre.perlide.org/irc.html?channel=padre">links throught the our site</a> 
or if you have an IRC client that is #padre on irc.perl.org

<b>We welcome</b> experienced programmers, experienced programmer posing as newbies,
and authentic newbies.

