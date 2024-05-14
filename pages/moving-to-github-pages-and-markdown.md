=head1 Moving to GitHub pages and Markdown?
=timestamp 1637144834
=tags blog



The web site of <a href="/">szabgab.com</a> is hosted on my server using some Perl script I wrote ages ago. It does not do much, but it is
still a dynamic web app. I write it in some HTML-ish with some meta-data attached that also passes through some pre-processing. Not fun.

I have been thinking, should I move it to some static web site? Should I convert the pages to be written in Markdown and use GitHub pages?
Should I maybe switch to GitLab pages?



First I think I should go over the "features" of the web site. I have one page the, <a href="/books.html">books</a> pages which is generated from
a YAML file. There is also the <a href="/blog.html">archive</a> which is generated. There are "tags" on each page, that I think are currently not
in use. The timestamps of the articles are part of the meta-data of each file.

There are layers upon layers of old Perl code. It is fun to see various times of development when I used CGI::Application, PSGI, Moose for various parts
of the code. It is also horrific.

<b>GitHub</b> pages are very easy to set up and get started and one could use code in GitHub Actions to use any static site generator.
Not only Jekyll.

<b>GitLab</b> pages require a bit more up-front work, but then you are on GitLab.

I just managed to remove a few files that apparently were not in use any more. I hope.

There are also various redirections set up as I changed the system and as I republished pages on the
<a href="https://perlmaven.com/">Perl Maven</a> and the <a href="https://code-maven.com/">Code Maven</a> site.

Markdown would be nice to use, but for now as I went through the code, I don't think I can untangle the site and move it to some static
site generator.

