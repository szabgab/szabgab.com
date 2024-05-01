=head1 The right way to install CPAN modules
=timestamp 1328008562
=tags Perl, CPAN, CM

=abstract start

There are several ways to install CPAN modules and about everyone advocates something else.

You can install the modules supplied by your vendor (e.g. using aptitude on Debian).
If the module is not available from the vendor you can prepare a package (in the case of Debian using dh-make-perl) or
you can install the modules using a CPAN client. In that case you can do it to the standard system directories or using 
[dist://local::lib].

You could also build your own perl with or without <a href="http://www.perlbrew.pl/">perlbrew</a>
and then you can install everything with a CPAN client.

=abstract end

Recently chromatic suggested we should all 
<a href="http://www.modernperlbooks.com/mt/2012/01/avoiding-the-vendor-perl-fad-diet.html">use perlbrew</a>
and install our own versions of perl. Alternatively he suggests that vendors should have a systemperl and 
a perl for users. Separately. The former can be minimal, the latter should be full featured.

This brought about some discussion both on
<a href="http://www.modernperlbooks.com/mt/2012/01/avoiding-the-vendor-perl-fad-diet.html">his blog</a>,
on <a href="http://www.reddit.com/r/perl/comments/owhrl/avoiding_the_vendor_perl_fad_diet/">Reddit</a> 
and on the <a href="http://lists.debian.org/debian-perl/2012/01/msg00092.html">Debian Perl maintainers list</a>.

Fascinating.

<h2>The right way</h2>

Frankly, I think, there is no single solution that fits all situations. Some might even say TMTOWTDI.

It boils down to how much <b>freedom</b> you have and how much <b>control</b> you'd like to have over what gets installed.

For a long time I have been using CPAN.pm, after some manual configuration installing in a private directory.
Then I switched to [dist://local::lib] but it still has a major issue when you have multiple applications
on the same server. Recently, I was experimenting with perlbrew and manual building of perl.

Each one has advantages and disadvantages.

<h2>Configuration Management</h2>

It is interesting to live on the bleeding edge and install the latest version of every module 
directly from CPAN but in most cases this should not happen on a production server.

Actually I don't know in which case should you do this, but I am sure there are many people 
and organizations who do it that way.

If you want to reduce risk you need to go through the rigorous steps of configuration management.

<ul>
<li>Put everything in version control (including the dependency tree).</li>
<li>Check out to a clean system that only has stuff from the vendor and from the version control system.</li>
<li>Build "binary" versions on the clean system.</li>
<li>Install on a test machine that is identical to the deployment machine.</li>
<li>Deploy.</li>
</ul>

You can do the above with your home built perl.

You can do it on a system perl using the CPAN client.

You can create binary packages using dh-make-perl or the respective tools on your operating system.

In every case you have to make sure you are only using modules from 
the private CPAN server which holds modules only from your version control system.

In either of the above cases we assume you have the <b>freedom</b> to use things outside the
realms of the paid vendor. (eg. RedHat). If you are restricted to what the vendor supplies then
you have a serious problem. Especially with RedHat but even Debian "only" provides 10-15% of CPAN.


