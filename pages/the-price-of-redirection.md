=head1 The social price of redirection
=timestamp 1368021552
=tags Perl, Google+, Reddit, Twitter, Social proof, Perl Maven

=abstract start

10 days ago I was wondering if I should <a href="/to-merge-or-not-to-merge">merge</a> the 3 Perl
Maven sites. The recommendation by everyone was to merge the perl5maven.com site into the <a
href="http://perlmaven.com/">perlmaven.com</a> site. As I had the same feeling too, I did it on May 1, just 8 days ago.

It went quite smooth, but there was a price!

=abstract end

The number of visitors went down from 2,200/day to 1,500 on May 6. It slightly recovered to 1,800 on May 7,
but it does not look very good today either.

I am not sure what is the exact source of this change, but let's look at
a few possibilities and ways to fix them.

## Incoming links

The incoming links are still pointing to the old domain. I used the
<a href="http://www.google.com/webmasters/">Webmaster tools</a> of Google
to locate the incoming links. Updated where it came from my other sites
and sent a few e-mails asking people to replace the link. This will take
time till Google reindexes those pages and notices the change in URL.

Obviously (?), the old domain uses 301 redirect to let every visitor,
both human, and bot, know that the pages moved. If someone clicks on
an incoming link still going to the old address, those people will
be redirected to the new address, but I think it is better to eliminate
that step.

## Page Rank

As Google is the biggest source of visitors, having a high <b>Google Page Rank</b>
is probably important. The old domain had Page Rank 4, the new one currently has 3.
In time, I am sure the new domain will get higher, especially as Google notices the updated
incoming links and as more sites will link to the new address.

One thing is unclear though. If Google still shows the links to the old site
in the search results, why would it use the Page Rank of the new site?

In the Webmaster tools of Google, I told it the old site was moved to the new address.
I guess it will take some time till Google starts to take this information in
account.

## Social proof

Another thing I noticed is that I lost all the <b>social counters</b>
indicating that this site is good for some people.
I have links to Reddit, Google+ and Twitter on each page, but as the counters on those
button are connected to the underlying URLs, they all became 0 when I moved the pages.
Same with all the comments made using Disqus.

### Disqus

Luckily, <a href="https://disqus.com/">Disqus</a> has a tool to allow easy migration.
As I set up 301 redirect on the old site, I could just tell Disqus to crawl all the pages
that had comments on them, and associate the comments with their new home. The comments have already moved.

### Twitter

In the Twitter button I can configure two URLs: <b>data-url</b> is the URL that will be included in
the tweet if someone clicks on the button. <b>data-counturl</b> is the URL that 'counts' the tweets.
I configured my system so for every page, that was created before May 1 2013, I set the
<b>data-counturl</b> to be the old URL on perl5maven.com. With this fix I can see the nice numbers of Twitter.

### Reddit

I have not found anything similar for Reddit.

For all the articles that were published before the merge-date, I set the Reddit link to point to the old site.
It would be probably better to point only the pages
that actually have been posted to Reddit, but that requires more work.

### Google+

I have not seen any place where Google mentions what to do with the Google+ count, but after a few days
I noticed that the <a href="http://perlmaven.com/perl-tutorial">Perl Tutorial</a> page, which is the most
visited page on my site had suddenly jumped to 76. I don't think that 76 people have +1-ed the
page on the new site in the past few days, so apparently Google can handle such moves automatically.
Checking the other pages, some of them still show 0 bot others already have a larger number. I assume this
happens as Google slowly notices that the old pages have moved. Nice.


### Facebook

I don't have Facebook buttons and counters on my site but <a href="http://searchenginewatch.com/article/2172926/How-to-Maintain-Social-Shares-After-a-Site-Migration">this page</a>, where I got the Twitter solution from, has some explanation for Facebook as well.



### Conclusion

There is no real conclusion yet. I have to see how does this work out in the long run. How long will it take
for the number of visitors to recover? Will people link to the new site? Will they help by sharing the
useful articles on Google+ or on Twitter?



