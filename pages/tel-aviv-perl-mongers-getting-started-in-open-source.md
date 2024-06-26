=head1 Tel Aviv Perl Mongers: Getting started in open source
=timestamp 1298224005
=tags Perl, Tel Aviv, Perl Mongers, SVN, subversion, Open Source

As <a href="http://blogs.perl.org/users/sawyer_x/">SawyerX</a> announced the next meeting of 
the <a href="http://telaviv.pm.org/">Tel Aviv Perl Mongers</a> will take place on this
<b>Wednesday, the 23 February</b>. There are going to be two lightning talks but most of the time I am 
going to fill with a presentation on how to get involved in Open Source projects.

We have a web site for <a href="http://perl.org.il/">Perl in Israel</a>
that has a lot of content. It has some design but of course it could be improved a lot.
That's one of the things I'd like to achieve. A better design for perl.org.il.

For that we will also need to improve the way the site is built.
That's what I am going to use as an example on how to get involved in open source.

It might be not as interesting as contributing to <a href="http://perldancer.org/">Dancer</a>
with the possibility of thousands or even millions of users but nevertheless it allows me
to show some of the techniques required.

<h2>The web site of Perl in Israel</h2>

The website is currently a bunch of static files generated by a few perl scripts
using [dist://HTML::Template]. It is in a <a href="http://svn1.hostlocal.com/perl.org.il">Subversion</a> repository.


In order to make simple changes one needs to be able to do the following:

<ol>
<li>use subversion to check out the current code<br />
We will <a href="http://subversion.apache.org/packages.html">install SVN</a> if needed and learn a bit about it.
Checking out the source of the web site using the following command:

    svn co http://svn1.hostlocal.com/perl.org.il/
    
</li>
<li>We will need to install a few CPAN modules using the cpan command. If on Linux then first we will install 
[dist://local::lib] following the <a href="http://search.cpan.org/dist/local-lib/lib/local/lib.pm">bootstrapping instructions</a></li>
<li>the we will build the web site locally:

   cd perl.org.il/site
   perl new_site_bin/update_site.pl --outdir ~/tmp/perl.org.il

</li>
<li>We will make some changes to the templates. That's just plain editing but one needs to understand the structure of the project and the [dist://HTML::Template] templating system.</li>
<li>Then we generate the site again and check if the changes look good</li>
<li>Create a patch using <b>svn diff</b> and send it to one of the people with commit bit on the repository.</li>
</ol>

<h2>Task</h2>

Then we can start to change the actual code that generates the web site. Some of the tasks we have:

<ul>
<li>Make sure the code runs on Windows as well (I think this used to be a problem but I am not sure if this still is)</li>
<li>We will go over the code and the various templates.</li>
<li>Install, learn and use [dist://Perl::Critic] on the code. See what does it complain about and fix the issues</li>
<li>We will try to improve the code, eliminate duplicates.</li>
<li>Unite all the script in a single script/module and allow the running the individual parts by providing flags. Thereby simplifying the parameter checking.</li>
<li>I used to have some issues that I had to update new things in several places: Adding an item to the main page that did not automatically showed
up in the news bar on the right hand side.</li>
<li>Fix the RSS feed that seems to be broken</li>
</ul>


