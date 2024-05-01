=head1 Why am I writing Padre? - The business aspect
=timestamp 1247770275
=tags Padre, Perl, Perl 5, IDE, GUI, Windows, win32, testing, system administration, business


When I am telling people how much time I invested in the 
development of <a href="http://padre.perlide.org/">Padre</a> in the past 
year they usually think I am nuts.
Why instead of working at clients making money I am spending 
my time writing Padre?

On the other hand if I told people in the Perl community it will 
immediately eliminate the little karma I have as they would find out I 
am not doing it just an hour in the evening but sometimes for 
whole days. So they would find out - if they did not know earlier -
I am not such a good programmer.


So in order to convince these people I am not totally nuts I have to give
explanations that go beyond the <b>I am having fun</b> as that alone
does not bring food to the table.

Earlier I already wrote <a href="/why-am-i-writing-padre.html">Why am I writing Padre?</a> but actually with that post
I mainly wanted to draw attention to 
<a href="http://padre.perlide.org/developers.html">Why others write Padre</a>
and only as an extension I wrote about my reasons. 
Those reasons could have been mistaken - to the untrained eyes -
to be altruistic. They are not.


This time let me try to write down some of the business reasons I am 
writing Padre starting by the most obvious ones.


<h2>Consulting and training</h2>

If Padre can help make Perl 5 more accepted in the enterprise and 
if more people use Perl it will mean more companies need training in 
Perl 5 and more companies need consulting services. Some of this
hopefully will <a href="/training.html">reach me</a> as well.

<h2>Training</h2>

At least here in Israel there are 3 or 4 training companies that provide
among all the other technology stuff also Perl training. They usually employ
people who either don't know Perl, or don't care about the community aspect
or tell they don't give a shit about this Open Source thing or simply teach 
<a href="http://www.catalyzed.org/2009/04/perl-is-dead-long-live-perl.html">PERL</a>.
Even though I am relatively well known in the 
<a href="http://perl.org.il/">local Perl community</a> and people do 
recommend me, when it comes for companies to pick a trainer for a Perl course many 
times the training managers will prefer the well known names in the training industry
than someone like me who does not have a marketing budget or a sales agent.

I am told writing a book about Perl could help in this situation but I think it is 
beyond my capabilities and my patience. Hopefully they will be more ready to take 
their risk and have <b>the man who wrote the IDE</b>
as their <a href="/training.html">Perl trainer</a>, even if my role is slowly 
diminishing in the pool of Padre developers. 
(I just checked today. Only about 25% of the total commits on Padre are mine
and to my joy this is dropping rapidly.)

<h2>Customizations</h2>

I can imagine that once, when Padre becomes used by many people in many organizations
they will want to make local customizations. I think that we should connect Padre to
both various open source version control tools, bug trackers and other systems 
related to development. That will allow many people to use these connections out of 
the box but there are lots of home made customizations in the world of configuration
management. So I hope Padre will reach a point when companies want to integrate it
with their home made solutions. Who better could they hire for such task than one of 
the Padre developers?

<h2>Application development</h2>

I am still studying what applications are developed on the 
<a href="http://www.eclipse.org/">Eclipse platform</a>
and if we can provide an alternative platform but with Perl and 
Padre as the framework? If we can do that, it will open the doors 
for a lot more development projects. Both for everyone in the Perl
community and for me specifically.

After all if someone has Padre installed she already has 
wxWidgets installed so building and distributing a desktop application 
is a lot closer than before. With all the emerging plug-ins
of Padre a lot of the specialized modules on CPAN can be exposed to 
simple use via a GUI.

<h2>Test automation</h2>

Test automation is a field that I think Perl can have a lot more use than it has now.
As test code is not distributed outside of the company this field - similar to web 
applications - does not require compilation-for-code-hiding. Something Perl 5 lacks.
With that disadvantage out of the way and with the enormous set of tools on CPAN
we could provide a great platform for software testing. 

I think one of the biggest selling points of tools such as the
<a href="http://en.wikipedia.org/wiki/HP_WinRunner">HP Mercury WinRunner</a>, 
the <a href="http://www-01.ibm.com/software/awdtools/tester/robot/">IBM Rational Robot</a>
or the <a href="http://www.qualisystems.com/">TestShell of Qualisystems</a>
is the record/replay part or the <i>Code-free test creation</i> part even if in the end the 
majority of work will be done after the initial code-free session using Visual Basic or similar
language. 

We already have Perl as the backend language. We only need the GUI part to make it 
more user friendly and more manager friendly.

e.g.

After the <a href="http://www.perl-workshop.de/">German Perl Workshop</a>
I started to build a Padre plugin that would become a GUI tool to record a replay 
web access using [dist://Sniffer::HTTP]. It could already do the recording but then 
I ran out of time and it is still only half written in our SVN repository.

So I think if we can enhance Padre with a test generation and running system and
package it nicely (see the first steps in <a href="/padre-standalone-installer-for-windows--first-beta-version.html">Padre stand-alone installer for Windows - first beta version</a>) we - as in the Perl
community - will see lots of renewed interest in using Perl.


<h2>Applications for Windows system administrators</h2>

Look at this code:

    use Wx::Perl::Dialog::SingleChoice;
    my $choice = Wx::Perl::Dialog::SingleChoice::dialog( 
        title => 'Select one', 
        values => ['this', 'that', 'else'] );

    message(text => "The item you selected is $choice\n");

This will show a window with 3 options. The user can select one option
and the selection will be displayed in a new window.

This is a simple straight forward script - no callback or any other 
GUI magic - that shows how easy it is to write small utilities for Windows 
that hide the ugly Windows command window. This is now part of the 
Padre distribution but we can move it out to be a stand alone package
(at one point it was) and let anyone use it. If we can wrap the various 
Windows system utilities in a similar GUI we can start making further
inroads in the Windows small utility programming world which can 
also lead to larger applications.

<h2>Who needs GUI anyway? - Irrelevant to you?</h2>

I am sure many people will feel these are totally irrelevant to him.
Sure most of the core Perl developers are using Linux or Mac and
are comfortable with the command line but it is not true for the 
majority of the programmers and the majority of the people using
computers. Especially in the Windows world.

Part of the above solutions are aimed at those but I believe
the command line people will also see the fruits of such efforts
in increased number of projects and probably higher status
as they are the ones who know the guts of the system.

