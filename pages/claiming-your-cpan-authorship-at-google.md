=head1 Claiming your CPAN authorship at Google
=timestamp 1384774374
=tags Perl, Google



When you search on Google, some hits will have a little avatar next to them.
Google does that for pages where the author of the page has provided
<a href="https://support.google.com/webmasters/answer/1408986?hl=en">Author information</a>.

Now we can have this with all our modules listed on <a href="http://metacpan.org/">Meta CPAN</a>.



The theory is that having a face next to to a link on Google, will make friendlier
and thus will generate more clicks. Especially if the picture belongs to someone
you are already familiar with.

In my own little experience, I know seeing those little pictures will skew my 
otherwise totally objective opinion...

Anyway, in order to have these little pictures show up on Google for
search results involving links to <a href="http://metacpan.org/">Meta CPAN</a>
two things has to be done.

1) The pages on Meta CPAN needs to have a link to a Google+ profile of the module maintainer with <b>?rel=author</b> attached to it.

2) The module maintainer, has to add <b>metacpan.org</b> to the
<a href="http://plus.google.com/me/about/edit/co">Contributor To section</a> in her Google+
profile.

(See option 2 in the explanation of Google about 
<a href="https://support.google.com/webmasters/answer/1408986?hl=en">Author information in search results</a>.)

Users of <a href="http://metacpan.org/">Meta CPAN</a> can already list their Google+ account in their Meta CPAN profile.
Using this data Meta CPAN now links to the G+ profile of the module authors.

To do so, log-in to your <a href="https://metacpan.org/account/">MetaCPAN account</a>
(top-right corner of the MetaCPAM site).
Then visit the <a href="https://metacpan.org/account/profile">Profile</a> tab in your MetaCPAN
account. There scroll down to the list of profiles: In the selector that looks like this:

<img src="/img/metacpan-profile.png" alt="MetaCPAN - Add profile" />

select <b>Google+</b>. this will add another row underneath: 

<img src="/img/metacpan-googleplus-profile.png" alt="MetaCPAN - Google+ profile" />

In the empty box type in your Google+ ID (the long number). You can click on <b>check</b>.
That will open a new browser with loading your Google+ page. Then make sure you click
on the <b>Save Profile</b> button at the bottom.

If you visit your author page on MetaCPAN now, you should see a balck-ish + image.

(See the + link on the left hand side of <a href="https://metacpan.org/author/OALDERS">author page of Olaf Alders</a>, and on the right hand side of any other page. For example on the <a href="https://metacpan.org/release/WWW-Mechanize-Cached">release page</a>.

Now if you go to the <a href="http://www.google.com/webmasters/tools/richsnippets">Structured Data Testing Tool</a> provided by Google and <a href="http://www.google.com/webmasters/tools/richsnippets?q=https%3A%2F%2Fmetacpan.org%2Frelease%2FWWW-Mechanize-Cached">type in the above links</a> you will see that Google already connected the dots.

It will take some time till they <a href="https://www.google.com/search?q=WWW%3A%3AMechanize%3A%3ACached+-+Cache+response+to+be+polite&oq=WWW%3A%3AMechanize%3A%3ACached+-+Cache+response+to+be+polite&aqs=chrome..69i57j69i58.326j0j7&sourceid=chrome&espv=210&es_sm=119&ie=UTF-8">show up in search results</a>, and in my experience, they don't always do, but now that I checked this search, I can already see the picture of Olaf.


<h2>What to do?</h2>

So out of the two steps above, the first one has already be done.
(A little bragging: These links are my first contribution to MetaCPAN!)

If you also want to have your image to show up on regular Google searches you need to

<ol>
<li>... have a <a href="https://plus.google.com/">Google+</a> account with an avatar.</li>
<li>... have a <a href="https://metacpan.org/">MetaCPAN</a> account.</li>
<li>... add the Google+ id to to your <a href="https://metacpan.org/account/profile">MetaCPAN account</a>.</li>
<li>... tell Google+ you <a href="http://plus.google.com/me/about/edit/co">contribute to metacpan.org</a>.</li>
</ol>


Then you can go and <a href="http://www.google.com/webmasters/tools/richsnippets">check one of the URLs</a> of MetaCPAN.


