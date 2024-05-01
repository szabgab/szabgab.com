=head1 Beautiful Perl - creating charts and graphs
=timestamp 1259059996
=tags Perl, charts, data visualization, CPAN, PDL, SDL

Yesterday I wanted to create a graph of 4 series of numbers along an x axis
representing time. I know some GD related modules can do this so I wondered over
to <a href="http://search.cpan.org/">search.cpan.org</a> and looked at some of the
modules. The problem I encountered is lack of examples and lack of display of results.

Of course search.cpan is just a search engine that should display textual results but
did not know where should I go to find a few charts created by a Perl module so I can
see which module can generate the stuff I want to create and how to use it.

As I know the <a href="http://pdl.perl.org/">PDL</a> people generate all kinds of 2D and 3D
graphs I sent and e-mail to that list. While waiting for a reply the bright new world created
a spark and I asked the same on <a href="http://twitter.com/">Twitter</a> as well. (BTW you can
<a href="http://twitter.com/szabgab">follow me on twitter</a> it started to be useful to me!).
I got a reply within seconds on Twitter and within minutes on the PDL mailing list pointing to
two different solutions.

<a href="http://plplot.sourceforge.net/examples.php">PLplot</a> is a multilingual tool for
creating charts and <a href="http://www.onemogin.com/clicker/">Chart::Clicker</a> is Perl
only tool for simple but very nice charts. For the latter I even found the slides of a talk Cory,
the author gave: <a href="http://www.onemogin.com/blog/talks">Data Visualization with Chart::Clicker</a>.
Way nicer than any of my slides.

I am pointing out these as they and the way they are displayed are approaching what I wanted
to see and what I think can be very good for the Perl community.

I wanted to see a set of charts or graphs along with the data set and the script that generated
those charts. Visual examples of the end results make a huge difference in convincing
me that Perl - and the particular module - is nice. Having them with full code example and the data
set that generated them will helping me pick the tool that fits my needs and will help
me actually solve the problem at hand.

I'd really like to thank those who pointed out these examples and to the people who created
the examples.  I wish their work was easier to locate. Maybe such examples could be linked from
<a href="http://www.perl.org/">www.perl.org</a> or even embedded there.

Of course not every module on CPAN can have a nice visual output but it would be really nice
if those that can have such output would be presented with nice examples.

For a totally unrelated example we can look at the home page of <a href="http://sdl.perl.org/">SDL</a>.

It now has an embedded video of the Bouncy game. So visitors of the site can see a nice site and
an example of a project that was created by SDL.

