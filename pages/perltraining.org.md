=head1 Perltraining.org
=timestamp 1153305932
=tags training, web sites, Perl, Perl 5

In 2002 I setup this web site called Perltraining.org.
The idea was to create a collection of the training companies so people who are looking for
training can locate it more easily. I also wanted to make it easier for the Perl trainers
to check out what other courses are out there - maybe in other countries - so they can enhance
their own offering.

First, if I remember correctly, I just kept some static file and used the collected information
to build the html. Later I tried various ways to let the company owners update the information.
I wanted to make it easy for them to keep the information up to date and I also wanted to make
sure I am getting the information from the right person.

In order not to build a login system and hand out account to some web application I came up
with this idea of collecting XML files from the web sites of the companies. The idea is that
the person who can update the XML file on the web site must be the right person to hand out
this information.

So I created an XML file and asked the company owners to fill in their information and put the
XML file on their web site. I would then go out and periodically grab the file and update the
internal XML file. Then it would generate static HTML files from the internal XML file.

I was not sure if I should periodically fetch the files or let the various Perl trainers click
on some link on Perltraining.org and initiate a fetch of their xml file. The former would mean
that updating the XML file is not reflected immediately on the web site, the latter would mean
that - if there is no authentication, someone could request updates from other sites. Back then
I decided to go with periodic fetch but now I think I would do both.

Anyway for various reasons a few weeks or months after launching the system I stopped the
fetching and basically stopped dealing with the site.

Later on I wrote a web interface to the database - now already using SQLite. The web interface was
built in Perl in the Maypole framework. This was mainly in order to learn Maypole, temporarily the
system was functioning and a few people update their information but in the end I did not
want to go on that direction.

A couple of month ago I decided to start offering courses in PHP as well. In order to prepare the
course I started write some PHP code and then came the idea to rewrite the site in PHP. Now that
I am <a href="http://pti.co.il/">offering training</a> in other subject as well and not
only in Perl I would enlarge the database and list other open source technologies as well.
If I do that, then I can even write the site in PHP.

Trouble came of course when suddenly I did not have time to work on the site any more. It
was already functional, some people got access to it, but I did not have time to contact the
50+ people I was in contact earlier. Several month passed and when I wanted to work on the site
again I was in trouble. I had no tests, I was afraid to touch the code. So the first thing I
did I wrote a bunch of tests covering the administrative interface of the site.
I use [dist://Test::WWW::Mechanize]
- a Perl module to test web applications. Now that I have over 400 unit tests I feel reasonable
comfortable that the site works and that I can slowly make changes.

