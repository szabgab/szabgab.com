=head1 Moving to a new server
=timestamp 1180108685
=tags ISP

A few days ago I was informed by my ISP that the server I used for Tracert.com
generated some attack on a distant machine. They blocked the traffic but asked
me to check what was that and stop it.

So that's official already, the server was compromised.

I knew I should have moved to another, more modern machine and OS for a long
time ago but this is a clear sign that I cannot postpone the move any more.
So I rented a new server with Ubuntu on it. While it is not (yet?) one of the
popular server OS-es I have been using it as my desktop for almost a year now,
I am very satisfied, and with this at least I know how to keep the machine
up-to-date with the most recent packages.

I decided that I will try to stick to the official distribution as much as
possible and install from source only if it is really really necessary. That
should reduce the maintenance load and increase the likelihood that my server
keeps running.

So far I managed to moved a few sites but tracert.com is still on the old
machine as it needs a complete rewrite before I can move it. For now I managed
to move the DNS service of most of the domains I own to
<a href="http://www.godaddy.com/">GoDaddy</a> so soon I can shut down the DNS service
on my machine.

I have moved the web site of <a href="http://www.goldnames.com/">Goldnames</a> that
I keep for free for my old employer. I don't know if it has any use for him but it
still generates quite a lot of hits but it is a static page so it does not need much CPU.

<a href="http://www.verele.com/">Verele.com</a> - my sisters hardly used web site was also
moved.

Today I setup the new home of <a href="http://www.hostlocal.com/">Hostlocal.com</a> which should
actually be my official web site as this is the real name of my company but it has hardly been
used in the recent years since I gave up on the idea of providing hosting and mirroring services
all over the world. The problem I encountered suddenly is that for some reason my GoDaddy account
was locked and I could not yet update the DNS records. I really hope they fix it soon as I
really don't want this to be the obstacle.


Right now I am trying to move <a href="http://www.szabgab.com/">my own web site</a> and
the site of <a href="http://pti.co.il/">Perl Training Israel</a>. The first one used to
be generated off-line using [dist://HTML::Template] and the uploaded. To add a new page
I had to generate two files, one for the template and one for the titles. It was a good experiment
on how to generate static pages but I think I could as well generate the pages on the fly. This
site hardly sees any traffic so with mod_perl it won't generate much CPU load even if it is
generated on the fly.

The only part that is still generated off-line and then uploaded is this blog.

