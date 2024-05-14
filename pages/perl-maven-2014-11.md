=head1 Perl Maven - November 2014
=timestamp 1417546933
=tags Perl, Perl Maven



In November I continued to write lots of Perl Maven articles. 17 in number. The visitor count was slightly down
even though most of the days it was higher than in the previous month.

Both the number of registrations to the free newsletter and the number of paying subscribers grew quite nicely.




<h2>Perl Maven Pro</h2>

I've continued to follow the <a href="http://perlmaven.com/search-cpan-org">search.cpan.org clone</a> project I started in October.
It is based on <a href="http://perlmaven.com/psgi">PSGI</a> and it use <a href="http://perlmaven.com/metacpan">MetaCPAN</a> as its back-end.


<h2>Perl Maven</h2>

I wrote an article about <a href="http://perlmaven.com/levels-of-security-using-rex">Rex</a> which is a Remote Execution
tool for DevOps. That was preceded by an article showing
<a href="http://perlmaven.com/how-to-read-a-password-on-the-command-line">how to accept password on the command line</a>.

There was also an article about the <a href="http://perlmaven.com/length-of-an-array">length of an array in Perl</a>
which is a bit controversial.

All together there were 9 articles. See them in the <a href="http://perlmaven.com/archive">archive</a>.

In addition I made <a href="https://github.com/szabgab/Perl-Maven">the source code of the Perl Maven site</a> available as open source. 
It still has a lot of hard-coded things that make it basically unusable for anything else than the Perl Maven site, but I am 
slowly cleaning up the code and one day I might turn it into a really usable product.

<h2>Perl Maven marketing</h2>

Thanks to Jon Hogue, and a friend of his, I started to put a lot of energy and thought into marketing the Perl Maven site.
I think I am already reasonably good at getting more visitors to the site - after all it is hitting the 200,000 visits per month,
but converting them to subscribers and converting those to paying customers is still a bit of a mystery.

I added a pop-up for every visitor suggesting them to sign up to the mailing list. This raised the daily sign-up ratio from
an average of 4 to an average of 30 people. Nice increase.

I also ran two promotions. One was a free months for the Perl Maven Pro, the other one was a discount for the annual membership
of the Perl Maven pro. Both of them worked out nicely, though of course it is still unclear what will happen to the people who
got in for the free first month. Will they unsubscribe before the first payment?

<h2>Perl Weekly</h2>

Nothing special though there are now two sponsors.


<h2>MetaCPAN</h2>

I worked a bit on <a href="https://metacpan.org/">MetaCPAN</a> fixing the page sizer code.

<h2>Other</h2>

I signed up to Atlantic.net, and was thrown out with some sorry excuse. I was shocked, but I am glad it happened
so far and I did not have time to rely on their service. Apparently you cannot.

On the other hand I also got two security complain at Linode. One turned out to be someone confusing a traceroute initiated from the
server (that used to host <a href="http://tracert.com/">tracert.com</a> with a port-scan. It happens, but the same person submitted
the same complain twice, exactly 6 month apart.

The other one was an ISP complaining about a "SPAM" that was clearly a confirmation e-mail sent from one of the Mailman based
mailing lists I run.  There are some strange thing out there.

<h2>Tracert.com</h2>

While the security complains were a pain in the, whatever, they prompted me to move the <a href="http://tracert.com/">tracert.com</a>
site to a a new server and to rewrite the whole thing using PSGI/Plack. I also spent a few days looking for available Traceroute
gateways and Looking glasses and managed to update the list with quite a few entries.
Now I just need more time to start improving the service there.

<h2>Conclusion</h2>

Looking back it seems this was a busy month too, and I have done quite a lot and yet I keep
having the feeling of lack of accomplishment. Probably because it is hard to measure
the actual performance. Or maybe because I don't have specific targets to hit at the
end of the month.


