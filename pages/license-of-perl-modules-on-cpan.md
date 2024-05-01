=head1 License of Perl Modules on CPAN
=timestamp 1206393751
=tags software license, CPAN, Perl, Perl 5

When looking at <a href="http://search.cpan.org/">search.cpan.org</a> one might
notice that many of the modules have <i>Unknown</i> License. Actually most of those
modules do have copyright and license information in some of its files but
search.cpan.org takes this information from the META.yml file that comes with the module.

In modules uploaded many years ago there is no META.yml at all as this is a relatively new
addition (a few years old). In addition [dist://ExtUtils::MakeMaker], the older one
of the two major packaging systems of CPAN has not supported this field.
Until recently.

I have just noticed when playing with [dist://ack] that if you add the LICENSE field
to your Makefile.PL and if you use a recent version of MakeMaker (I am using 6.42)
then it will add the license field to META.yml.

That's great news as this will soon increase the number of modules that supply the
license field. We just have to make sure module authors know about this.

Followup: <a href="/missing-licenses-on-cpan-modules.html">Missing licenses on CPAN modules?</a>

