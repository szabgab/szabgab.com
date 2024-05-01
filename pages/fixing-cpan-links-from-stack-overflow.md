=head1 Fixing CPAN links on Stack Overflow
=timestamp 1396738453
=tags CPAN, MetaCPAN, StackOverflow

=abstract start

If you look at StackOverflow, you might notice that many links lead to version-specific pages
on search.cpan.org. Some of them are already broken, others will be broken soon, once the module author
decides to remove that version from CPAN.

This is quite unfortunate, but it is easy to fix. After all the pages on Stack Overflow are editable.

=abstract end

I've fixed about 50-60 pages in the last couple of days, but there are still about 1,000 with such issues.
With a little help, all of those could be fixed within a few days.

Let's see a few examples of changes:

Version specific link on search.cpan.org vs. stable link on MetaCPAN.

  Old: http://search.cpan.org/~triddle/MediaWiki-DumpFile-0.2.2/lib/MediaWiki/DumpFile.pm
  New: https://metacpan.org/pod/MediaWiki::DumpFile

Another example:

  Old: http://search.cpan.org/~kjohnson/NetxAP-0.02/Net/IMAP.pm
  New: https://metacpan.org/pod/Net::IMAP

Version specific vs stable: 

  Old: http://search.cpan.org/~kyoki/Data-Plist-0.1/
  New: https://metacpan.org/pod/Data::Plist

Local anchors are different on MetaCPAN and search.cpan.org:

  Old: http://search.cpan.org/~turnstep/DBD-Pg-2.13.1/Pg.pm#COPY_support
  New: https://metacpan.org/pod/DBD::Pg#COPY-support

A search replaced by a direct link:

  Old: http://search.cpan.org/perldoc?Devel::Size
  New: https://metacpan.org/pod/Devel::Size

This is not that bad, but I think it would be better to drive people to MetaCPAN. After all it is
open source and it is being developed:

  Old: http://search.cpan.org/dist/Dancer/lib/Dancer/Cookbook.pod
  New: https://metacpan.org/pod/Dancer::Cookbook

Even generic queries could be moved:

  Old: http://search.cpan.org/search?mode=all&query=random
  New: https://metacpan.org/search?q=random

There are also a few cases that I did not know what to do. For example in
<a href="http://stackoverflow.com/questions/22790431/sigint-ignore-not-working-with-netopenssh/22809139#22809139">this</a> case
I am not sure what is the correct URL on MetaCPAN or if it should be changed at all:

  http://search.cpan.org/~rjbs/perl-5.18.2/pod/perlipc.pod#Deferred_Signals_(Safe_Signals)
  ???

I could not find this either on MetaCPAN:

   http://search.cpan.org/dist/illguts/index-14.html
   ???

<h2>Only 10 minutes</h2>

If each one of you just fixes 1 link on StackOverflow it would be a great
step. If you fixed 10, we could eliminate all the old links within 2 days. Let's do this!

<ul>
<li>Go to <a href="http://stackoverflow.com/">StackOverflow</a> (and make sure you are logged in).</li>
<li>Search for the string <a href="http://stackoverflow.com/search?q=search.cpan.org">search.cpan.org</a></li>
<li>Click on one of the entries</li>
<li>Edit both the question and the answers.</li>
<li>When saving an edited page, you'll need to add a comment explaining the changes. You can write <b>"link to MetaCPAN"</b> or <b>"stable link to MetaCPAN"</b>.</li>
</ul>


