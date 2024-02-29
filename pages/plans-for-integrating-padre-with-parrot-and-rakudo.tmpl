=head1 Plans for Integrating Padre with Parrot and Rakudo
=timestamp 1229032305
=tags Perl, Perl 5, Padre, Parrot, Rakudo, TPF, TODO, grants

As I have just received the notification that my grant request for
<a href="http://news.perlfoundation.org/2008/11/2008q4_grant_proposal_integrat.html">
Integrating Padre with Parrot and Rakudo</a> was accepted
I'd better start making plans on how to achieve this.

This can then be reused by the grant coordinator, whoever that will be
to write up the reports for TPF and Vienna.pm.

I am sure there will be several tasks I need to do in parallel as some of
them (ok, all of them) needs the help of other people to make sure their
side provides what is needed.

The first think I'd like to achieve is to integrated the Perl 6 syntax 
highlighter that is written in Perl 5. STD_syntax_highlight currently lives
in the Pugs SVN repository as STD_syntax_highlighter in the
perl6 directory
but I have heared from Ahmad M. Zawawi (azawawi) that he is planning on
releasing it to CPAN. That would be awesome as that can make 
my dependency definition easier.

Fix the Parrot Plugin of Padre as I think it got out of sync lately.

Probably that Plugin should add the PIR and PASM support to Padre, so
those two will need to move out to the Parrot plugin. That will 
probably require some changes to Padre as AFAIK it still does 
not support the addition of languages via the plugin system. 
(Though I have not looked at what Adam Kennedy did lately).

Make sure Parrot::Embed can be loaded and that I can load
the available languages from the Parrot sources. Once this is
done allow developers to write plug-ins in the languages that
are already supported by Parrot.

The above step might need several iteration as Parrot::Embed might
go through several steps of supporting more and more of the 
available languages. Most notably Perl 6.

This is going to be a major milestone for Padre as this means Padre
can be extended using Perl 6 running on top of Rakudo.

Then comes the hard part. I'll need to understand how can I get
parsing information back from Parrot. I don't really know what
do I need for this but I hope by this time several of the Parrot,
Perl 6 and Rakudo hackers will be playing with Padre and thus will
be able to help me more.

Once I have the parsing information adding the syntax highlighting
is easy as we already know how to do that in Padre. The question will
be how fast it is going to be and if Parrot can do partial parsing of
a document.

Currently our (as in the Padre developers) biggest trouble with Perl 5 
and specifically with PPI is that it is too slow to be useful for syntax
highlighting for anything bigger than 100 lines. If we could tell PPI to
process the file only from the place where it changed we could save a 
lot of time. We'll have to see how this works out with Parrot.


At some point I'll start creating call-tips for Perl 6 based on some
hard coded keywords. For this first I'll have to see if there is already
anything ready that I can reuse and if not where should I create the
content of the call-tips. This version of the call-tips will be probably
based on simple keyword recognition. Once the format is defined and the
naive way of showing call-tips is working I can let others - more knowledgeable
about Perl 6 - fill in the actual text of the call-tips.

Once we have the result from parsing the document we can probably change
the call-tips to use that information better recognizing the part of the
document the cursor is located.

The last part is then to connect to the Perl 6 documentation. For this 
I'll have to see what is already available and how can I access and display
it.

I've probably missed some of the steps and I might have not evaluated the
level of difficulty of each one of them. Besides, both in December and
in January I give lots of training classes that will make my progress 
slow.

Anyway I am really looking forward this development as that would
turn into Padre a really interesting tool and hopefully will
help the adoption of both Parrot and Perl 6.

