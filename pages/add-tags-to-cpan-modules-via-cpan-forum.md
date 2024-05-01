=head1 Add tags to CPAN modules via CPAN::Forum 
=timestamp 1183787717
=tags tags, CPAN, CPAN::Forum

There were several occasions when people in the 
<a href="http://www.perl.org/">Perl community</a> have
mentioned the desire to improve the way one can locate the right modules
on <a href="http://www.cpan.org/">CPAN</a>.

There are of course the two public search engines,
the better known <a href="http://search.cpan.org/">search.cpan.org</a>
written and maintained by 
<a href="http://www.spidereyeballs.com/os6/set3/small_os6_d4_f0365_sm.html">Graham Barr</a>
and open source <a href="http://kobesearch.cpan.org/">kobesearch.cpan.org</a> of
<a href="http://www.uwinnipeg.ca/index/media-experts-kobes">Randy Kobes</a> that can also be
downloaded from CPAN: <a href="http://search.cpan.org/dist/CPAN-Search-Lite/">CPAN::Search::Lite</a>
and installed locally.

There are additional tools to aid the people evaluating modules such as the
<a href="http://cpanratings.perl.org/">CPAN Ratings</a> and the
results of the <a href="http://cpantesters.perl.org/">CPAN Testers</a>.

Something that was missing is some kind of categorization or tagging.
CPAN does have a categorization but it depends on the authors (yet another
task they need to do), needs interaction from the maintainers of CPAN
(powerful but few) and is in fact hardly maintained.

So in order to let anyone help with the categorization/tagging process I added
a tagging system to <a href="http://www.cpanforum.com/">CPAN::Forum</a>.
The <a href="http://www.cpanforum.com/tags/">list of all the existing
tags on CPAN::Forum</a> can be a starting point to get ideas.

Once there is a substantial number of tags, I'll provide a way to 
download all the information in order to use it to improve any search
tool for CPAN.

It can also be used to add tags such as
<a href="http://www.cpanforum.com/tags/name/looking%20for%20a%20new%20maintainer">looking for a new maintainer</a>
though I am not sure what will happen when these modules do find a new maintainer.
Will the owner of the tag remove it?

