=head1 SEO for Rust Digger
=timestamp 1695045636
=tags Rust



I have been working on the [Rust Digger](https://rust-digger.code-maven.com/) project for some time now and apparently if you type in **Rust Digger** [in my favorite search engine](https://duckduckgo.com/?t=ffab&q=rust+digger), or even if you [search on Google](https://www.google.com/search?q=rust+digger) it is not the top hit. It is not even listed.

I have to do something about this.



I think the obvious will be to add [Google Analytics](https://analytics.google.com/analytics/), create a **sitemap.xml**, and add it to the [Google search console](https://search.google.com/search-console).

Actually the Analytics is probably (or officially) does not help. So I should focus on the **sitemap.xml**. The thing is that I already have code in place that creates it, but when I submitted it, Google complained that it is too big and I should split it up. So I guess this is what I have to do. Once the split up files are ready, I can submit them to the search console. On a second thought maybe I should not create a sitemap.xml listing all the 100,000 + pages for all the crates and all the owners. Maybe I should start with a file that list the main page, the lists, and the about pages.

In addition I'll have to blog about the Rust digger more on sites that are already indexed by Google. I mentioned it several times in the Perl Weekly which means both the [Perl Weekly](https://perlweekly.com/) and [dev.to](https://dev.to/) link to it. I am now posting on szabgab.com.
