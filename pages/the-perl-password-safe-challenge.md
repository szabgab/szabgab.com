=head1 The Perl password safe Challenge
=timestamp 1310285486
=tags Perl, challenge, wxPerl, Dancer, Mojolicious, web

Keeping my growing number of passwords in my aging memory is a challenge.
Keeping them on my computer in clear text is crazy.
I'd like to add a <b>password safe</b> to the <a href="/i-need-a-name-for-a-perl-distribution.html">Big Giant Perl Distribution</a>.

As I was browsing the latest uploads to CPAN I noticed a package called
[dist://App::Raps2] which is a command line utility to keep your passwords in a safe way.
It works on Linux but does not work on Windows out of the box.

That would be acceptable as I run Ubuntu at home but when I am on the road I have a 
Windows netbook and when I am at a client I might only have web access to my computers.

So I'd like to have both wxPerl based GUI for this and a web interface that I can use via https.

I love programming (even if I am not expert) but I am not selfish.
So like to share the joy of building this with you.

So here is 

<h2>The challenge</h2>

Build a GUI using wxWidgets and/or a web interface to provide a <b>password safe</b>.
It has to work on both Linux and Windows. Extra bonus for Mac as well though I won't be 
able to verify myself. Make it available on CPAN to be installed using cpan Module::Name.

The best solution will be included in the next release of the Big Giant Perl Distribution 
that btw still <a href="/i-need-a-name-for-a-perl-distribution.html">does not have a final name</a>.

You have one week and one day. That is, the end of next weekend. I'll be flexible with the time-zone.

For extra bonus check if the given passwords are unique. While I can trust Google, Facebook and Twitter
I think I'd like to make sure I don't use the same password elsewhere.

OTOH I am registered to about 50 mailing lists on <a href="http://mail.pm.org/mailman/listinfo/">mail.pm.org</a>
and I'd prefer to use the same password on all of them.

You will have to supply an icon for the Windows menu.

If you really want to bribe me, provide a way - from the UI - to change 
the password on the remote web sites.

<h2>The tools</h2>

For the desktop interface you have to use wxPerl as that's what is already available in the 
<a href="/i-need-a-name-for-a-perl-distribution.html">nameless</a> package. You could (but it is not a requirement) use the 
wxFromBuilder that Adam Kennedy was working on recently. I think 
the <a href="http://padre.perlide.org/trac/wiki/Cookbook">Cookbooks</a> can be a handy
introduction to them.

For web application you can use any web framework. <a href="http://perldancer.org/">Dancer</a> 
and [dist://CGI::Application] are already packaged.
<a href="http://mojolicious.org/">Mojolicious</a> should not be difficult to package either.
If someone is using another framework I'll consider adding that too to the package. After all
the package should contain <a href="/i-need-a-name-for-a-perl-distribution.html">everything that is good in Perl</a>.

I expect the web versions to be easier to implement than the wxWidgets version but 
the deployment might be a bit difficult. You see I'd like to be able to run it both 
as a real web application on my server and as a desktop applications.
So I'd launch a small perl-based web server on my desktop and then access my application
via a browser. The web server can be the simple built-in development server of 
each web framework.

It would be extra nice if you could allow a launching the application from the 
Start-menu of windows but that might not be easy.

<h2>Who can participate?</h2>

There is no limitation. You can do it alone or in groups.

<h2>Enjoy!</h2>

