=head1 Plans for world domination
=timestamp 1308168802
=tags Perl, Strawberry Perl, Windows, Padre

The <a href="http://padre.perlide.org/download.html">Padre on Strawberry</a> project started 
out with my need to make it easy to install Padre on Windows machines along with some CPAN modules.

I was giving an Advanced Perl class and I wanted to make sure the students don't need to spend 
time installing additional modules.

I'll want to enhance it so that it includes all the modules I need for my various training classes.
This means a lot of the testing related modules. Both from Test::* namespace and tools that help
interact with the environment. eg. [dist://WWW::Mechanize], [dist://Net::Telnet], [dist://Win32::GUITest], etc.

Then I thought this distribution could be enhanced to include a lot more things
to satisfy almost all the prerequisites for Perl development. 

That is probably going to be larger than the Strawberry Professional (that used to have a code name Chocolate Perl).

But I dreamt further.

It could showcase a number of applications written in Perl. Both desktop and web based. So people 
can download a single package to their Windows desktop and have a web application running within minutes.

While I'd like to stick to CPAN as much as possible there are already pieces that come from elsewhere.
Starting with a fresh Strawberry installation and the source code of WxWidgets. There are more.

I am not sure though that I wan to include MySQL or PostgreSQL in the package. 
Nor do I wan to supply Apache. That would be scary. 

As the database drivers are already included in Strawberry I might be able to tell the users how 
to install the database separately. In any case the application must be able to run without 
further configuration.

Anyway, I think I'll focus on distributing simple applications that use plain files or SQLite.

So what kind of applications are there on CPAN that are worth to distribute?

