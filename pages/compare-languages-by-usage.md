=head1 Compare Languages by usage
=timestamp 1225176511
=tags Perl, Perl 5, Python, Ruby, PHP

A few days ago I took the time and finally registered on <a href="https://www.ohloh.net/">Ohloh</a>.
Filled out some of the information about myself and <i>claimed</i> some of the contributions I made
to open source projects.

Ohloh has a few nice tools to look at relative activity in projects and in programming languages.
Today I looked at these graphs where you can 
<a href="http://www.ohloh.net/languages/compare?measure=commits&percent=&l0=c&l1=csharp&l2=-1&l3=java&l4=javascript&l5=perl&l6=php&l7=python&l8=ruby&l9=-1&commit=Update">compare languages</a>
based on activity.

Ohloh mostly follows publicly available version control repositories but AFAIK it can also analyze 
data from repositories that are more private and need authentication. Still I guess most of the data
they have and show are from open source projects with public version controls.
Take that in account when looking at the data.

They provide all kinds of data-points, the one I chose was number of commits. It seems to be a much better
indication than number of lines of code, though I am sure there are huge differences between the size of
the commits as well. It might be interesting to see if there is any correlation between language and 
size of the commits, or committer and size of the commit?

There is a strange downturn in activity in the last month or so which might or might not be a bug in the
display of Ohloh. Besides that, what I can see is
<ul>
<li>The use of C is still growing but if I look at the percentage graph I can see its relative size is dropping.</li>
<li>Java has about the same activity as C. This is interesting as if I am not mistaken there a lot more job postings
for Java developers than C programmers. So does that mean in the corporate world Java is used a lot more than in 
the open source world? That is, compared to C. (BTW C++ wold be also there)</li>
<li>PHP and Python are about half the activity of C or Java and growing.
<li>Perl, Ruby, Javascript and C# are half of the activity of PHP or Python. Javascript and C# are growing. 
Perl is stagnating and Ruby seems to have just stagnated a few months ago.
</ul>

Another page that is worth looking at is the 
<a href="http://www.ohloh.net/languages?query=&sort=commits">all language comparison</a> page sorted
by commits.

