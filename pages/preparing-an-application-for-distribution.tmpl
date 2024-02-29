=head1 Preparing an application for distribution
=timestamp 1178269908
=tags distribution, application, Perl, Perl 5

To distribute an application written in Perl we have to make sure we can
easily distribute its dependencies. There might be dependencies outside of
CPAN but my focus now is the list of modules one requires from CPAN.

There are several issues we need to address:


<ol>
<li>Do all the prerequisites work on all the platforms we would like to support?</li>
<li>For easy distribution, we might want them to be actually available on
those platforms in the packaging system of the platform.<br />
Relying on the native packaging systems makes external non-CPAN dependencies
also easier to handle.</li>
<li>We have to make sure we adhere to the licence requirements of all the modules</li>
<li>In order to ensure high quality we might want to pick a certain version of
each module. We might even want to get a report of the various Kwalitee metrics
from <a href="http://cpants.perl.org/">CPANTS</a>.
</li>
</ol>

Given an application it would be nice to be able to automatically generate a report
with all this information.

<ol>
<li>First of all we need to find out <b>all</b> our prerequisites. We might know
our immediate prerequisites, the modules we <b>use</b> but they might also depend
on other modules and this way we might end up with a list a lot longer than what
we have direct knowledge about.<br />
There are several modules on CPAN that might be useful for this task. I saw
[dist://Module-Dependency],
[dist://Devel::Dependencies],
[dist://CPAN::Unwind] which uses [dist://Module::Depends::Intrusive].
[dist://PAR] has a script called scandeps.pl to do this.
</li>
<li>To see if our application works on a certain platform we will have to run
our own unit tests there but before doing that we might wand to see if
all our prereqs already work there.<br />
Especially if we don't have direct access to all the platforms.<br />
As a minimum we have to see if there is at least one passing test report
on the <a href="http://cpantesters.perl.org/">CPAN Testers</a>
site for each module on the given platform.<br />
That site has an SQLite database that can be downloaded and queried for the
relevant information.
</li>
<li>It might be easier to package our application with the standard packaging
system of each platform (e.g. rpm, deb, etc...).<br />
If we plan to do so we should make sure all our prerequisites
are available in a packaged version on the specific platforms.
<br />
This information can be partially collected using [dist://Module::Packaged].
<br />
That module still needs more work to include further linux distributions
and have it more fine grained in relation to the versions of the various
distributions.<br />
The <a href="http://www.szabgab.com/distributions/">HTML report</a> I created
recently can provide some insight without installing the module.
</li>
<li>Most of the modules on CPAN are under the "perl license" that is
GPL or Artistic but there are exceptions. For example
[dist://DBD::SQLite]
also includes software that is in the <i>Public domain</i>,
[dist://Compress::Zlib] contains the source code of
<a href="http://www.zlib.net/">Zlib</a> and
[dist://Spreadsheet::ParsExcel::Simple] is GPL only.
There might be all kind of other licenses too.
<br />
These issues need to be addressed by the legal department of
each organization.
<br />
First we need to collect the licencing information of each module.
Some of them already provide their own license information in the
META.yml file but most of them (as of late 2006 about 90% of them)
still don't have this information available.
[dist://Module::License::Report] can be of help here as it analysis
the files in the distribution in addition to checking the Meta.yml file.
<br />
This still does not address the license of the additional code in
the modules. I think currently there is no way to automatically collect
this information.
</li>
</ol>

So definitely there is some work to do in order to have such a tool. The tasks I see

<ol>
<li>Add more distros to [dist://Module::Packaged] and provide it for various
versions of each distro.</li>
<li>Download the database from CPANTS and assuming we have a list of modules
list all the prereqs modules and all the licensing information.</li>
<li>Integrate with one of the tools that given a script can tell which
modules is it using.</li>
</ol>

