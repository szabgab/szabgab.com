=head1 Traffic origins of search.cpan.org
=timestamp 1491138767
=tags CPAN, MetaCPAN

=abstract start

A while ago I expressed my hopes that people would <a href="http://blogs.perl.org/users/gabor_szabo/2017/03/google-juice.html">indicating Google</a>
that the prefferred source of <a href="https://metacpan.org/">Perl Module documentation</a> is MetaCPAN,
and then compared the <a href="/search-cpan-org-vs-metacpan.html">stats MetaCPAN vs search.cpan.org</a>.

I've also saved some numbers regarding the source of visitors to search.cpan.org

=abstract end

The first column is for 1 year between Mar 17 2016 and Mar 17 2017.

The second column is for 1 month between Feb 17 2017 and Mar 17 2017.



Google Analytics - Acquisition:

    All Traffic (Default Channel Grouping):   
                                  Mar 17 2016 - Mar 17 2017    Feb 17 2017 - Mar 17 2017
        Organic:                                81.19 %        80.52 %
        Direct:                                  8.51 %        10.20 %
        Referral:                                7.78 %         7.85 %
        Social:                                  2.52 %         1.43 %

    All Traffic by Source/Medium   (Channel)
        google:                    (Organic)    78.88 %        77.97 % 
        (direct):                  (Direct)      8.51 %        10.20 %
        perlmonks.org:                           1.56 %         1.95 %
        baidu:                     (Organic)     0.90 %         1.05 %
        stackoverflow.com:                       1.86 %         0.86 % 
        yandex:                    (Organic)     0.47 %         0.51 %
        duckduckgo.com:                          0.34 %         0.49 %
        bing:                      (Organic)     0.43 %         0.48 %
        yahoo:                     (Organic)     0.37 %         0.36 %
        cpan.org                                 0.29 %         0.27 %
        perldoc.perl.org:                        0.24 %         0.25 %
        com.google.android.googlequicksearchbox: 0.15 %         0.25 %
        unix.stackexchange.com:                  0.12 %         0.11 %
        cpansearch.perl.org:                     0.24 %         0.09 %
        d.hatena.ne.jp:                          0.09 %         0.09 %
        mysqlsandbox.net:                        0.06 %         0.07 %
        validator.w3.org:                        0.07 %         0.06 %
        thegeekstuff.com:                        0.07 %         0.06 %
        linuxquestions.org:                      0.05 %         0.06 %
        t.co                                     0.02 %         0.06 %
        plackperl.org:                           0.05 %         0.05 %
        reddit.com:                              0.05 %         0.05 %
        unix.com:                                0.04 %         0.05 %
        sqlfairy.sourceforge.net                 0.05 %         0.05 %
        perlenespanol.com                        0.03 %         0.05 %
        perl.com:                                0.05 %         0.04 %
        blogs.perl.org:                          0.05 %         0.04 %
        cnblogs.com:                             0.03 %         0.04 %
        kent-web.com:                            0.04 %         0.04 %
        yaml.org:                                0.03 %         0.04 %

The unmarked channels are all (Referral).  The only funny thing is that duckduckgo is categorized under as "Referral" and not under "Organic".

Channel and Medium appears to be synonymes in this context.

There are over 18,000 lines in the full report and even though I listed some 30 entries the actual order among the last few entries is not
very important. The monthly traffic is 400,000 visits and this and thus 0.01 % of the monthly traffic is only 40 visits.
A few more visits here or there can move sites up and down quite a few step easily.

<h2>What can be done with this?</h2>

If you think it would be important to divert more traffic form the old, closed source search.cpan.org to the modern
and open source <a href="https://metacpan.org/">MetaCPAN</a> then you could grab the above data and could ask the authors of those pages
referring to search.cpan.org to change the links to point to the appropriate pages on MetaCPAN.
In some cases, such as <a href="http://stackoverflow.com/">stackoverflow</a> you could probably make the changes yourself.

Changing all those links to MetaCPAN.org will have a small immediate impact of driving more traffic to MetaCPAN.org, but more importantly
it will have an indication to all the search engines that they should offer MetaCPAN as their answer.

If you really want to be focused, one could generate a report from Google Analytics that would including the exact path of the pages
referring to search.cpan.org  which would make it easier to track down those links and try to get them changed.

The numbers were tken from Google Analytics under: Acquisition - Referrals - Secondary dimension: full referal.

Check out the <a href="/cpan-number-of-visits.html">monthly visitor count of MetaCPAN and search.cpan.org</a>
