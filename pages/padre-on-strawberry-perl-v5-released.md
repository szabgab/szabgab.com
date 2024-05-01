=head1 Padre on Strawberry Perl v5 released
=timestamp 1308619743
=tags Padre, Perl, Windows, SDL, games, release, screencast

I am quite excited to let you know about the new release of the Padre on Strawberry Perl Windows installer.
I planned to make a release once a month but I could not wait for the full cycle to end, I wanted to get this out.
There is a <a href="http://www.youtube.com/watch?v=MKXtGgWi7qs">screencast</a> showing some of the new features of this distribution.

<iframe width="640" height="390" src="http://www.youtube.com/embed/MKXtGgWi7qs" 
frameborder="0" allowfullscreen></iframe>

Thanks to the heroic work of <a href="http://ahmadzawawi.blogspot.com/">Ahmad Zawawi</a> the upcoming 
Padre 0.86 release will finally allow you to use a modern version of the Scintilla editor. 
This means you will be able to type defined-or and the syntax highlighter won't spit on you like a 
badly maintained camel. People installing the new Padre on Strawberry package will get Padre 0.842 which
is 0.84 and this specific feature back-ported.

<h2>Welcome to the age of perl 5.10!</h2>

The distribution also includes <a href="http://moose.perl.org/">Moose</a> and [dist://Task::Kensho]. This is not new, but seems to be
surprising to some people.

There is an upgraded version of <a href="http://perldancer.org/">Dancer</a> and the package now 
includes the <a href="http://template-toolkit.org/">Template::Toolkit</a> that will allow the building
of complex applications.

<h2>CPAN Testing</h2>

The package include [dist://CPAN::Reporter] and [dist://Test::Reporter::Transport::Metabase] to make
it easier for people to start sending in test reports to the 
<a href="http://www.cpantesters.org/">CPAN Testers</a>. I think I'll have a separate blog entry about this.

<h2>Some CPAN modules</h2>

The previous package already contained a number of Spreadsheet related modules. Now it also includes 
[dist://Text::CSV_XS] to deal with CSV files.

[dist://Net::Telnet] is also included to make it easier to connect to unix machines, 
routers and other networking devices.

[dist://Win32::GuiTest] is a nice tool to automate mouse movements and pressing on keyboard on Windows.
This can be used to automate various GUI related tasks and to test desktop applications.

[dist://App::cpanoutdated] was added to make it easier to know what needs to 
be updated in the next version.

<h2>SDL and Games!</h2>

Probably the most exciting part is the inclusion of SDL and two games based on it.
One of them is the original <a href="http://en.wikipedia.org/wiki/Frozen_Bubble">Frozen Bubble</a> game. 
Yes, it has a Wikipedia entry!

The other one is the zombies game called [dist://Games::Zumbis]. It is not enough that 
you are a little red-haired girl fighting zombies, the game is also written in Portuguese!

Enjoy!

