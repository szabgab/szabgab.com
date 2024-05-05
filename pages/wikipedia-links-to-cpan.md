=head1 Wikipedia links to CPAN
=timestamp 1379181453
=tags Perl, Wikipedia, CPAN, MetaCPAN

I just found out how easy it is to list all the links from Wikipedia to a specific web site.
So I check the two main search engines of CPAN:

Wikipedia has
[780 links to search.cpan.org](https://en.wikipedia.org/wiki/Special:LinkSearch/search.cpan.org?limit=1000)
while it has [only 13 to metacpan.org](https://en.wikipedia.org/wiki/Special:LinkSearch/metacpan.org?limit=1000).

Besides my personal opinion that in almost all the cases [MetaCPAN](https://metacpan.org/) should be recommended,
there is also the issue of broken and outdated links.

For example I saw a link to [Vigenere.pm](https://search.cpan.org/~alizta/Crypt-Vigenere-0.07/Vigenere.pm).
That's outdated (0.08 was released in 2009). Unless there is a point in linking to the old version,
that link could be replaced by the stable link to
[Crypt::Vigenere](https://metacpan.org/module/Crypt::Vigenere) provideing better value to the reader.

Links to authors like this one to [~chm](https://search.cpan.org/~chm/), even if not broken,
could be replaced by links to the author on MetaCPAN.
For example like this one: [CHM](https://metacpan.org/author/CHM).

Strangely I also saw a broken link to [perl-5.19.3](https://search.cpan.org/~aristotle/perl-5.19.3/), but I am
not sure what is the respective link on MetaCPAN.

Besides fixing the links, it would be also interesting to see subjects in Wikipedia that have implementations
in Perl and linking to that implementation.
As an example, the article about [Libxml2](https://en.wikipedia.org/wiki/Libxml2)
has a link to [Libxml2 on CPAN](https://metacpan.org/module/XML::LibXML/).

So if you have 5-10 minutes and would like to contribute to the Perl community, update a few links.

## Update

It turns out that the link under
[only 13 to metacpan.org](http://en.wikipedia.org/wiki/Special:LinkSearch/metacpan.org?limit=1000).
only includes the links to http and not to https. In the case of MetaCPAN,
https is probably the majority.  [This](https://en.wikipedia.org/wiki/Special:LinkSearch/https%3A%2F%2Fmetacpan.org?limit=1000) link will show the number of links to https://metacpan.org. Another related met
2 days after my initial post the number were: SCO: 566, MetaCPAN http: 66, https: 182 TOTAL = 814.

Another related value is the number of links to [perldoc.perl.org](https://en.wikipedia.org/wiki/Special:LinkSearch/perldoc.perl.org?limit=1000). 2 days after the original post it was 150. The TOTAL including
those is 964.


