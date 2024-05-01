=head1 Moving from SCO to MetaCPAN
=timestamp 1384952695
=tags Perl, MetaCPAN, SCO, SEO, Alexa

=abstract start

There are people out there (including myself) who think it would
be better if more people switched from
<a href="http://search.cpan.org">search.cpan.org</a>
to <a href="http://metacpan.org/">MetaCPAN</a>.
Including Google showing results on MetaCPAN instead of SCO.

My <a href="http://www.nntp.perl.org/group/perl.module-authors/2013/11/msg10225.html">recent post</a>
to the <a href="http://lists.perl.org/list/module-authors.html">Perl module authors</a> list
got a few replies discussing this topic.

Let me try to collect my thoughts to see how can this - getting more people to use MetaCPAN -
be accomplished.

While I am not a SEO expert, I managed to get the <a href="http://perlmaven.com/">Perl Maven</a>
site from 17K visits in last November to 67K visits this October. So I might have some,
otherwise obvious, insight.

=abstract end

<h2>Make sure the overwhelming majority wants the change</h2>

While MetaCPAN is great, there are still several features in SCO that
make it preferable to some people at least some of the times.
I think if we (whoever that "we" is) want to make MetaCPAN <b>the face of CPAN</b>,
first we need to address these issues.

<b>TODO:</b> Check if it already exists and if not, create a tag in the Github bug
tracker and mark the tickets that describe issues with MetaCPAN, that indicate
areas where it is still lacks a feature compared to SCO.
Ask the public to go over the list and submit more tickets. Fix those ticket.

<h2>Load, performance and scalability</h2>

I know that Alexa has giant issues but I don't have better data so I need to rely on it:
<a href="http://www.alexa.com/siteinfo/cpan.org">cpan.org</a>
has an overall ranking of 8,884 while
<a href="http://www.alexa.com/siteinfo/metacpan.org">Meta CPAN</a> is at 81,386.
(checked on 18 November 2013).

Even if this is skewed I think we can assume that SCO has at least 10 times more
traffic than MetaCPAN.org. Probably a lot more.
Could MetaCPAN in its current hardware and software configuration handled a 10-fold grows?

<b>TODO:</b> Check it and if not, make sure there is at least a plan in making
sure it will be able to handle such traffic when the time comes.

<h2>The big problem</h2>

I think the biggest issue is that both SCO and MetaCPAN serve the same content.
Because SCO was earlier Google treats it as the canonical source of this data
and probably penalizes MetaCPAN for serving the same content.

<h2>The easy solution that will not happen</h2>

Once the above 2 are in place someone could convince the maintainers of
SCO to redirect every request to MetaCPAN. This would immediately crash MetaCPAN.
Err, I mean all the traffic will arrive to MetaCPAN and within a few months
Google will show MetaCPAN as the top hit.

I doubt you can convince them, but if you can, the redirecting could be done
slowly. First only for a few pages. Then more and more. That would allow some
time for the MetaCPAN maintainers to make sure they are ready for the traffic.

(Even if this will be done it will be hurtful. In my experience,
when I moved all the content from the perl5maven.com to
<a href="http://perlmaven.com/">perlmaven.com</a>,
the site suffered a serious blow, and it 
<a href="/three-month-after-domain-name-change.html">took about 2.5 months</a>
to get back to the same level of traffic it was before the name change.
It took about 6 months to get more-or-less recover the lost growth.
I believe, a gradual redirection will reduce this problem as well.)

But again, I don't think this will be done.

<h2>The long road</h2>

SCO has a huge head-start but with time Google will trust MetaCPAN more and more,
and it will improve its position slowly. There are many things that
the general public in the Perl community can do to accelerate this.
Some involves contributing to the code-base of MetaCPAN, some involves sending
e-mails and talking to people, some involves blogging.

<ol>
<li>Add content to MetaCPAN that is not available on SCO.
This way Google will see some <b>original content</b> on MetaCPAN, not just the same
as on SCO. See the next point for some ideas.
</li>

<li>Provide <b>more value to the users</b>. Go beyond matching all the features of SCO
and provide more.

This can be tagging modules. It can be a review system. It can be commenting.
It can be getting alerted when a module or one of its dependencies changed.
It could be a much better ranking of the results.
</li>

<li>Find places that link to SCO and ask the site owners to switch to MetaCPAN.

This includes the
<a href="http://szabgab.com/wikipedia-links-to-cpan.html">links on Wikipedia</a>.
Even if Google does not take those links in account due to the rel=nofollow,
the people who visit those pages will arrive to MetaCPAN and start using,
bookmarking, and sharing it.

AFAIK <a href="http://perlmonks.org/">PerlMonks</a> still has lots of links
leading to SCO.

Google can help
<a href="https://www.google.co.il/?#q=link:search.cpan.org">finding pages that link to search.cpan.org</a>.
</li>

<li>Share pages of MetaCPAN on <b>Google+</b> and/or G+ them.  AFAIK Google takes in account
every "share" and every + on Google+. Adding G+ buttons with counters, like the
ones on the side of this site, to some of the MetaCPAN pages would encourage this behavior.
</li>

<li>Recently I asked the CPAN authors to
<a href="/claiming-your-cpan-authorship-at-google.html">tell G+ they contribute to MetaCPAN</a>.
I believe having many contributors is another indication to Google that a site is recommended.
This will further improve the position in the search results. So if you are a CPAN author and
have a G+ account, tell it you contribute to MetaCPAN.org.
</li>

<li><b>Write articles</b> on diverse pages, that link to MetaCPAN. Both to the main page and to internal pages.
</li>

<li>As a special case of some of the above, convince your <a href="http://pm.org/">Perl Monger</a> leader to update their site:
remove all the links leading to SCO and <b>add a link leading to MetaCPAN</b>.
</li>

<li>As another special case: ask the maintainers of <a href="http://perl.org/">*.perl.org</a> to remove links to search.cpan.org
and replace them with more links to metacpan.org. The same for the front page of <a href="http://cpan.org">cpan.org</a>.
This is again very unlikely to happen.
</li>

<li>Add links to your POD that link to MetaCPAN.org. That will show up on SCO and thus SCO will recommend MetaCPAN. I know.
Some people will be up in arms for this suggestion,
so please don't say I told you, and don't talk about this in public.
</li>

</ol>

In addition, as Olaf Alders 
<a href="http://www.nntp.perl.org/group/perl.module-authors/2013/11/msg10229.html">pointed out</a>,
if I understood it correctly, there are modules that have hard-coded links to SCO. (So maybe
my last suggestion wasn't that unacceptable after all.)

Karen Etheridge
<a href="http://www.nntp.perl.org/group/perl.module-authors/2013/11/msg10230.html">suggested</a>
a fix, and pointed out that links on the <a href="http://cpantesters.org/">cpantesters.org</a>
site also use SCO.
She also suggested a way to find mentions of
<a href="http://grep.cpan.me/?q=search.cpan.org">search.cpan.org</a> in CPAN modules.


