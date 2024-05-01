=head1 Strawberry Perl with Cream - 5.12.3 v3 released
=timestamp 1306735299
=tags Padre, Perl, IDE, Windows, release, Moose, Dancer

<a href="http://strawberryperl.com/">Strawberry Perl</a> is great but for my recent 
Advanced Perl training class I needed a package that included the latest version of 
<a href="http://padre.perlide.org/">Padre, the Perl editor with the oversize ego</a> 
and a number of other modules. 
Eg. [dist://Try::Tiny], [dist://Moose] and [dist://Dancer].

So first I zipped all the files in the c:\Strawberry directory of my own Windows machine
and posted about it: <a href="/padre-0-84-on-strawberry-perl-5-12-3-released.html">Padre 0.84 on Strawberry Perl 5.12.3 released</a>. Then, based on the response of 
<a href="http://csjewell.dreamwidth.org/">Curtis Jewell</a> I
further improved the package and now, with help from <a href="http://www.wxperl.co.uk/">Mark Dootson</a>,
I managed to build a self installing package that already configures itself.

<h2>Yippee!!</h2>

We still have not moved it to the main download page of Padre but you 
can already find the 
<a href="http://padre.perlide.org/trac/wiki/DownloadWindows">download link on our wiki</a>
at the top.

The package contains a lot of modules. It contains
[dist://DBD::mysql], [dist://DBD::Pg] and [dist://DBD::SQLite] that came with Strawberry Perl already
and it also contains [dist://MongoDB].

All the dependencies of [dist://Task::Kensho] were added
(e.g. [dist://Log::Dispatch], [dist://Try::Tiny], [dist://Moose], [dist://POE], [dist://DBIx::Class]
and a lot more). It also includes <a href="http://perldancer.org/">Dancer</a> with several plug-ins.

For Moose I added [dist://MooseX::StrictConstructor] and [dist://MooseX::Singleton] into the mix.

For the more office related people there are 
[dist://Spreadsheet::ParseExcel], [dist://Spreadsheet::WriteExcel], [dist://Excel::Writer::XLSX] and 
[dist://Spreadsheet::WriteExcelXML].

Of course it also includes [dist://Wx] as it is used by [dist://Padre] and two main plug-ins
for using [dist://Perl::Critic] and [dist://Perl::Tidy].

The use of enhanced compression by Inno Setup also mean that the download size is not 44 Mb instead the
80 Mb I had in the previous edition even though I added a lot more CPAN modules. The installed size is
almost 300 Mb.

<h2>How to call the kid?</h2>

As for naming I am unsure. I started to call it Padre-on-Strawberry when it was mostly about making it
easy to distribute Padre but now that so many other things are already packaged, Padre is just one
component. So I started to consider calling it some other name. E.g. <b>Strawberry with Cream</b>
but I am not sure if that would not cause confusion. I certainly don't want to pose as a replacement
of Strawberry. In the best case it is a derivative of the official Strawberry Perl release.

Anyway. If you have an MS Windows box, please give it a try and let me know what do you think.

