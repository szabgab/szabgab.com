=head1 Working with upstream - installing Perl modules from CPAN
=timestamp 1263996969
=tags Perl, CPAN, packaging, distribution, Linux, Debian, Mandriva, Fedora, ActivePerl, Strawberry Perl

On <a href="http://www.fosdem.org/2010/">FOSDEM</a> there is going to be a 
<a href="http://www.fosdem.org/2010/schedule/devrooms/distributions">Linux distribution mini-conference</a>
where I am going to give a talk about 
<a href="http://www.fosdem.org/2010/schedule/events/dist_perl_cpan">Packaging perl and CPAN modules</a>

I gave an improvised talk about the subject yesterday in front of the <a href="http://rehovot.pm.org/">Rehovot Perl Mongers</a>.
Now I am going to try to summarize that talk and further collect my thoughts on the subject. Your comments are most welcome!

<h2>The problem</h2>

When a user needs to install a Perl module from CPAN she has several choices based on the operating system 
and the perl distribution she is using. A usual case is that her company is using Fedora 9 or some other several years
old Linux distribution. She now needs to install various modules. Checking the rpms available in the official
Fedora distribution she sees that most of the modules she needs are not available. 
(BTW I am using Fedora here as an example, this would be basically the same with any other Linux distribution.)

Her choices are now

<ol>
<li>Find an rpm of the CPAN package(s) somewhere else</li>
<li>Install using the CPAN client (or manually) into the system</li>
<li>Install using the CPAN client (or manually) into a private directory (with or without the help of local::lib)</li>
<li>Build her own rpm from the CPAN package</li>
<li>Open a ticket on the Fedora bug tracker that she needs this module</li>
</ol>

As far as I know the standard recommendation of Fedora and Debian developers is to always use the packages that come
with the distribution. But that can't be done in this case.

<h2>How many CPAN packages are available in the distribution?</h2>

I don't have up-to-date data but two years ago I created a <a href="http://szabgab.com/distributions/">report on the distribution 
of CPAN modules</a> via various downstream distributors. Back in May 2007 there were 12,422 packages on CPAN. Debian stable had 971
and the latest Ubuntu had 1,007. Even FreeBSD had only 2,594 packages.(The numbers for Fedora were probably incorrect on that report
but as far as I know they were always lower than those of Debian.)

That is, <b>less than 10% packaged for Debian and Ubuntu</b>. A lot less for other distributions.

Today there are 19,500 distributions on CPAN and I don't know the number of packaged modules in the various distros but I doubt
they had increased the percentage they cover.

While we know there are many packages on CPAN that are broken or useless or both I think we can 
assume that a much larger percentage is actually useful. Maybe not for the general public of programmers 
but in niche areas.

This means that in most cases <b>people will have to find alternative ways</b> to install Perl modules from CPAN.

I am not sure what the Fedora developers would suggest in such situation but I think they would suggest 5
and not recommend any of the 1-4 options above. While I am not a speaker of the Perl community I think
people from that group would probably suggest one of those four and tell you to forget about 5.

Frankly I think most of the people - especially from the industry would never open a request to add a package
to Fedora. For one thing they are trained that they should not talk to the supplier as that will charge money
or that they have to go through their own boss to do this. They are also educated - by the commercial vendors - that
it does not help much to ask for any bug fix or additional feature. Most likely the vendor won't do it.
Neither of these are true for Debian or Fedora or for the other community based distributions but most of 
the people in the industry are probably not aware of that.

<h2>Why so few?</h2>

When I ask the distributors why are there so - relatively - few packages in their distributions they usually give two reasons.

<ol>
<li>Lack of volunteers to add the packages and then maintain them</li>
<li>No one asks for the packages</li>
</ol>

The first one could be improved by either reducing the time needed to (re)package a 
CPAN distribution or by increasing the number of volunteers.

Reducing the time needed could be done by further automation of the packaging process 
and better integration between the CPAN toolchain an the packaging systems. For this the 
CPAN Authors community and the more general Perl community needs to understand 
<b>what are the time consuming parts of the packaging process</b> and see if we can solve those
issues already before they reach the downstream distributors.

One such issue we discussed earlier was the clear licensing of each file distributed
in the package. We need to further discuss the issues and give that as a feedback to
the CPAN authors.

Regarding the lack of volunteers. I am not sure I have any idea how help that but maybe
giving a talk on how and why to become a Debian/Fedora/Mandriva/SuSE/etc packager on some
of the <a href="http://www.perl.org/events.html">Perl Events</a> such as the 
Perl Monger meetings, Perl Workshops and YAPCs will yield some result. 

As to the lack of request to include packages. I already described two - 
probably invalid  but nevertheless existing reasons why people won't request the additional
packages.

There is also a valid reason though: <b>It won't help them.</b> Even if they open a ticket and 
even if the Fedora Perl packaging team adds that package to Rawhide immediately that will go into 
Fedora 13 or whatever the next version will be. It won't help on the Fedora 9 she has in production <b>NOW</b>.

So I don't expect many of them to open requests.


<h2>What about Windows?</h2>

While this is a preparation for FOSDEM I would like to look at Perl and CPAN on other operating systems.

On Windows people have 2 major choices to use Perl native:

<a href="http://www.activestate.com/">Active Perl</a> and <a href="http://www.strawberryperl.com/">Strawberry Perl for Windows</a>.

ActiveState provides a set of binary repackaged versions of the CPAN modules. In a way it is very similar 
to what the Linux distributions do except that their build and repackaging system is totally automatic. In that 
report from 2007 we can see that ActiveState provided 6,370 CPAN packages for Windows. Roughly 50% of the total packages.
In addition there are third party packagers who build ppm packages for Windows. 
<a href="http://kobesearch.cpan.org/">Kobesearch</a> helps finding those.

Strawberry Perl on the other hand is using the CPAN client with a default configuration making it very easy
if time consuming to install any CPAN module from source. At least those that don't have external
dependencies.

<h2>The frustration to use the CPAN client</h2>

While many members of the Perl community are satisfied with the way the CPAN client(s) work when you talk to people
who are <i>just users</i> you are suddenly flooded with complaints.

For one, the CPAN client is not configured on the Linux distributions. When I run it for the 
first time it asks me all kinds of questions. Most of them could be answered automatically but I think
actually all of them could be preconfigured. Once that is done later on once in a while further
configuration is needed. (e.g. I think after installing Module::Build).

Some of the packages have dependencies outside of CPAN. In some cases this is solved by an Alien package on CPAN
which - I guess - makes it further difficult to package the modules downstream as they might already have that
dependency included in another package. [dist://Alien::wxWidgtes] solves this issue by being able to work with the 
already installed wxWidgets library and install its own version only if necessary. I still wonder if this causes
extra headaches to the packager or not?


Then there is the question of recursive installation. I agree with the distributors that the preferred way 
to install a CPAN package would be via their installation tool using their repositories but I also
need to install packages not available from their repository. So what if I am installing package A that is not in the
Fedora repository that depends on package B that is? I won't check this manually but I'd prefer to get B from Fedora
and install only A via the CPAN client. Once I am done, I'd like to have a report telling me which packages were 
installed from Fedora and which directly from CPAN so I can easily send a request to the Fedora developers.

I read there are some improvements in the CPAN client in this area. I hope we will see full integration 
with the downstream packagers including the above multi-sourcing.


<h2>What can be done?</h2>

There are several ways to reduce the frustration of our end-users and make our life simple as well.

I'd like to restart the effort to get information from the downstream packagers and create reports
that can be easily used by the CPAN authors and the users. That would include the names of all the CPAN
packages distributed by Fedora along with version number, number of patches, number of open bugs and other
information if available.

The very same data could be used to build an add-on to CPAN.pm to be able to install either from 
CPAN or from the rpm/deb repositories in a recursive way.

I'd like to hear what are the most time consuming problems the downstream packagers face and 
what would be their suggestion to solve those issues?


<h2>Conclusion</h2>

There is no conclusion. I am looking for feedback from both CPAN authors, packagers and "just plain users".
How could we improve the whole process of getting this code work on your system?

