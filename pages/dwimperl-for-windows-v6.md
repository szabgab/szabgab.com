=head1 Announcing DWIM Perl for Windows
=timestamp 1328546640
=tags Perl, Windows, Padre, Moose



Installing CPAN modules is time consuming. Having a Perl distribution that contains every
CPAN module you'll ever need can save you lots of hours. It can also help in making sure
you always get working versions of the CPAN modules. Even if they are not the absolute latest.

That's the idea behind DWIM Perl.



DWIM Perl will have releases for Window, Linux and hopefully for Mac as well.

The current package is for Windows.

This is the first time I release DWIM Perl with this name but it is following the same
path as I took when I built the "Padre on Strawberry Perl" package.

The name change has at least 3 reasons:

<ul>
<li>I am planning to release packages for other operating systems
as well. Those won't depend on Strawberry.</li>
<li>Not every release will contain Padre. For example the one I am currently building
for Linux is a non-threaded version of perl and it does not contain the Wx packages either.
Essentially it is a "server perl". I might be able to build a "client Perl" as well that will
include Wx and Padre but that might take a while.</li>
<li>Padre is not the most important part of this package. 
Padre is just one thing that this distribution contains.
It already contains Moose and will have Dancer, Catalyst, Mojolicious
and lots of other things you might need for development.
</li>
</ul>

<h2>Why not 5.14?</h2>

This package is based on 5.12.3.

Why not 5.14? - some people will ask.

Unfortunately there is no official Strawberry Perl release using
perl 5.14 and I did not want to use the pre-release.

I have been waiting for that release but in the end,
I think it is more important to move this forward even on 5.12,
than to wait more. When the official 5.14 comes out I'll also
switch to that.

<h2>Download?</h2>

On the web site of <a href="http://dwimperl.szabgab.com/">DWIM Perl</a> you'll
find further information and a link to download the latest version.


<h2>Want to help?</h2>

There are a couple of ways to help. 

First and foremost, install DWIM Perl, and let me know what is missing for you or what might be broken.
You can open tickets on <a href="https://github.com/dwimperl/perl-5.12.3.0">Github</a>

One of the major things is helping the folks maintaining 
<a href="http://strawberryperl.com/">Strawberry Perl</a> so they can release 5.14.

The web site of DWIM Perl needs design. Actually there is already something checked in the 
<a href="https://github.com/dwimperl/dwimperl.com">github repository</a> but I 
need to integrated it. You can help with that.

Spread the word. 
Getting more people to use it and report issues would be a great way to help.


