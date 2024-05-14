=head1 Perl, Python, Ruby, PHP and HTML5 on Google trends
=timestamp 1369141276
=tags Perl, Python, PHP, Ruby, HTML5



Once in a while someone looks up some numbers regarding Perl and other languages, sees a downward graph, rings the
warning bells, and then others start saying why is that not important, and there are more modules on CPAN anyway...

As I have a lot of other urgent things to do, I decided a good way to procrastinate would be to look at some data.

Some people and companies think that the number of pages having the term <b>programming perl</b>, is a good indication
of language popularity.
That certainly has some value, but I think seeing how many people are actually searching for a term has better
indication for the interest in that term....

So I looked at the <a
href="http://www.google.com/trends/explore#q=perl%2C%20php%2C%20python%20-monty%2C%20ruby%20-pokemon%2C%20html5&cmpt=q">Google
Trends</a> for the above 5 terms and tried to understand what I see there.



<h2>The decline of programming languages?</h2>

<script type="text/javascript"
src="//www.google.com/trends/embed.js?hl=en-US&q=perl,+php,+python+-monty,+ruby+-pokemon,+html5&cmpt=q&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=800&h=360"></script>

I included the 4 dynamic languages and HTML5 just to have something interesting to compare to.
I even excluded some terms such as -monty and -pokemon, as those words appeared in the <b>Related terms</b> table
of the respective languages, but they are not really related to the programming languages.
I am sure there are more terms that could be excluded to have an even better focus on searches related to the
programming languages. Let me know!

The numbers on y-axis represent search volume relative to the total number of
searches done on Google over time.
Not surprisingly, all the programming languages show a downward trend.
Even if the absolute number of searches for an arbitrary term grow, there might be many other
terms that grow faster and thus the relative number shrinks.
As more and more people from the general, non-programming population starts to use the Internet, their interest
will grow compared to the interest of the programmers.

The only graph that grew was that of HTML5. This is again not surprising. Before July 2009 there was no mention of
HTML5 at all. After a little bump, it started go grow since January 2010. If you put the mouse over the graphs,
you will see it grew to 5-6.


What we can see in is that in January 2004 the numbers were as follows:

                 %
    PHP     97  63.3
    Perl    33  21.5
    Python  13   8.4
    Ruby    10   6.5
    HTML5    0   -

(The percentages are of the total of PHP+Perl+Python+Ruby.)

In other words (or numbers) there were 3 times more searches for PHP than for Perl.
There were 2.5 times more searches for Perl than Python, and 3.3 times more for Perl than for Ruby.

Looking at the other end of the graph, we can see that in April 2013 the numbers are as follows:

                   %
    PHP      31   52.5
    Python   13   22.0
    Ruby     12   20.3
    Perl      3    5.1
    HTML5     6    -

There are 10 times more searches for PHP than for Perl and 4 times more searches for both Python and for Ruby
than for Perl.

I think we can even try to see the relative number of searches for perl compared to the combination of all 4 languages:

January 2004: 33 / (97 + 33 + 13 + 10) = 21.5%

April 2013: 3 / (31 + 3 + 13 + 12) = 5.1 %

Crying over the loss of the market share of Perl provides a lot more opportunities to procrastinate,
and I am sure if the data went back to 1998 you'd see even bigger loss.

But let's see what's happening now?

<h2>Zoom in on 2012</h2>

I can link to the graph showing <a
href="http://www.google.com/trends/explore#q=perl%2C%20php%2C%20python%20-monty%2C%20ruby%20-pokemon%2C%20html5&date=today%2012-m&cmpt=q">the
past 12 month</a> but that will change, so I think it is better to look at the
<a
href="http://www.google.com/trends/explore#q=perl%2C%20php%2C%20python%20-monty%2C%20ruby%20-pokemon%2C%20html5&date=1%2F2012%2012m&cmpt=q">data
for 2012</a>.


<script type="text/javascript"
src="//www.google.com/trends/embed.js?hl=en-US&q=perl,+python+-monty,+ruby+-pokemon,+html5,+php&date=1/2012+12m&cmpt=q&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=800&h=360"></script>

In this one all the graphs seem to be quite flat. Let's see the exact numbers. I did not pick the first and last week of
the year as there are huge gaps. This in itself is an interesting issue. I'll discuss it later.

February 19-25, 2012:

                  %
    PHP      100  56.8
    Python    32  18.1
    Ruby      32  18.1
    Perl      12   6.8
    HTML5     16   -


The relative position of Perl: 12 / (100+12+32+32) = 6.8%

March 3-9, 2013:

                  %
    PHP      100  52.3
    Python    42  21.9
    Ruby      39  20.4
    Perl      10   5.2
    HTML5     19   -

The relative position of Perl: 10 / (100+10+42+39) = 5.2%


The relative decline continues, but it is not that alarming any more.

<h2>Year-end differences?</h2>

If you look at the graph (and the one showing <a
href="http://www.google.com/trends/explore#q=perl%2C%20php%2C%20python%20-monty%2C%20ruby%20-pokemon%2C%20html5&date=today%2012-m&cmpt=q">the
past 12 month</a> probably shows it more clearly), the relative search volume is much lower in the last 2 weeks of December.
(I saw the same when I looked at the visitor count of the <a href="http://perlmaven.com/">Perl Maven</a> site.) This is
probably normal. In those 2 weeks people, at least in the western world, are on vacation and are less interested in work
related things. The strange thing is that there is no decrease in the search volume of Ruby. If you remove PHP from the
graph you'll see that both Perl and HTML 5 have the hole, even if smaller than that of Python. Ruby does not have any
such hole. I am not sure why is that.

<h2>What now?</h2>

There are people who think putting <b>programming perl</b> or <b>perl programming</b> on every page will make a
difference as that's what <a href="http://www.tiobe.com/index.php/content/paperinfo/tpci/index.html">Tiobe measures</a>.

Even though others have explained why
<a href="http://blog.timbunce.org/2008/04/12/tiobe-or-not-tiobe-lies-damned-lies-and-statistics/">Tiobe is incorrect</a>
I agree that perception matters. (Heh I even wrote an article about
<a href="/perception-is-reality--we-need-a-director-of-marketing.html">perception being reality</a>, but that seems like
ages ago.)

So while I agree that getting a higher mark on Tiobe would have a positive effect on the perception of Perl (especially
if it is not a temporary improvement), but what is more important is generating real interest. Something that can be
probably measured by the relative search volume.

Relative to what? - you ask. I'd say relative to other, similar programming languages. For example the other 3 languages
mentioned in this article.

<h2>How to make Perl more popular?</h2>

There are a lot of things that can be done. Starting from ...

... but I don't want to tell you what you should do. At least not like this, through a blog post.
(I think I did it too many times already.)

I am sure you can figure out something. If not, I'd be happy to talk about this. Send me an <a href="/contact.html">e-mail</a>
or find me during <a href="http://www.yapcna.org/">YAPC::NA</a>.

Just please understand, this is not 5 minutes. This a long process with a lot of time and energy involved.
Can you spend an average of 30-60 minutes a day on this?

Instead of telling you what you should do, I'll tell you what I do.
I am sure some people will say I am just self-promoting :), and they will be almost right. I do that too,
but you understand that this is part of the story.

I also hope that you might want to contribute to either of these projects.

The <a href="http://perlweekly.com/">Perl Weekly</a> is a nice vehicle to distribute news and ideas.
I think it reaches more Perl-related people than any other publication or blog. It has its place,
but it still talks mostly to the convinced.

The <a href="http://perlmaven.com/">Perl Maven</a> site has several parts:

The <a href="http://perlmaven.com/perl-tutorial">Perl Tutorial</a> provides a platform to
show people how to use Perl. It has been partially translated to 13 languages
by some <a href="http://meta.perlmaven.com/">awesome contributors</a>.

The <a href="http://perlmaven.com/tv">Perl Maven TV show</a> is a series of interviews of people
using Perl. I hope that showing the real people behind the Perl ecosystem, I can turn it to
be more human, friendlier and more accessible.

There were a number of screencasts already on the Perl Maven site. I plan to continue them.
I have quite a few ideas what to show in screencasts. Some of them might be even exciting for people
who don't yet use Perl.

For now though I should go back and finish my training materials for the
<a href="http://www.yapcna.org/yn2013/training.html">Master classes</a> I teach at YAPC::NA.

