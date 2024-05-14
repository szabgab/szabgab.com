=head1 DWIM Perl 5.14 for Windows (v7) released
=timestamp 1329048361
=tags Perl, Windows, Padre, Moose



Installing CPAN modules is time consuming. Having a Perl distribution that contains every
CPAN module you'll ever need can save you lots of hours. Having that on the laterst
Perl 5.14.2 is even better.



Last week I released and announced the <a href="/dwimperl-for-windows-v6.html">first DWIM Perl for Windows</a>
package that was based on Strawberry Perl 5.12. Then I was contacted by KMX, who built the latest
Strawberry and he directed me to the 
<a href="http://perlnews.org/2011/11/strawberry-perl-5-14-2-has-a-preview-release/">release candidate of Strawberry Perl 5.14.2</a>
that was announced on 17 November 2011.

So I downloaded it, instaled it and started to install CPAN packages. I stopped after about 400
of them. That's what you can download now.

In addition to Strawberry Perl 5.14.2, it contains a large part of [dist://Task::Kensho]
(e.g. <a href="http://moose.perl.org/">Moose</a>), <a href="http://plackperl.org/">Plack</a>,
<a href="http://perldancer.org/">Dancer</a>, <a href="http://padre.perlide.org/">Padre, the Perl IDE</a> and some other modules.

<h2>The giants and their shoulders</h2>

Let me thank all the people who make sure perl and the CPAN modules work well on Windows as well.
Let me thank all the people involved in the development of Strawberry Perl and especially KMX,
who prepared this release.

Let me also say thanks to Ahmad Zawawi and Offer Kaye who went ahead, installed the previous version
of DWIM Perl and gave me some very valuable feedback. I hope I managed to fix most of those
issues in this release, without introducting too many other problems.

<h2>Download?</h2>

On the rather minimalistic web site of <a href="http://dwimperl.szabgab.com/">DWIM Perl</a> you'll
find further information and a link to download the latest version.

<h2>Want to help?</h2>

There are a couple of ways to help. 

First and foremost, install DWIM Perl, and let me know what is missing for you or what might be broken.
You can open tickets on <a href="https://github.com/dwimperl/perl-5.14.2.1-32bit-windows">Github</a>

One of the major things is helping the folks maintaining 
<a href="http://strawberryperl.com/">Strawberry Perl</a> so they can further improve
the awesomeness that is called Strawberry Perl.

The web site of DWIM Perl needs design. Actually there is already something checked in the 
<a href="https://github.com/dwimperl/dwimperl.com">github repository</a> but I 
need to integrated it. Or I need a better design. You can help with either of that.

Spread the word. 
Getting more people to use it and report issues would be a great way to help.

