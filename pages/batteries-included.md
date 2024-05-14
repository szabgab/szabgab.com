=head1 Batteries included - the biggest impact on programming language popularity
=timestamp 1497691155
=tags Perl, PHP, Python, Ruby



In business, and especially in real estate it is said that the most important thing is <b>Location, Location, Location</b>.

As the popularity of JavaScript shows this is also true in programming languages though I think the biggest impact on the popularity of a programming language is how easy it is to get things done in it which is directly impacted by the <b>batteries included</b>.



<h2>The rise of Perl</h2>

Back in the '80s you'd either use C or Shell, but C was too low-level for many tasks and the various Unix Shells were not very powerful and were very fragmented. 
(BASIC and Pascal were also popular, but mostly for learning programming.)

Then in 1987 came <a href="http://www.wall.org/~larry/">Larry Wall</a> with <a href="https://en.wikipedia.org/wiki/Perl">Perl</a> that filled a void in the intersection between C and Shell.

With a motto of <b>Making Easy Things Easy and Hard Things Possible</b> Perl eliminated the frustrating time spent by C programmers on memory management and made several daily tasks much easier than either in C or in Shell.

It had very powerful built-in string processing capabilities and soon it got built-in regexes as well.

People who downloaded <a href="http://www.perl.org/">Perl</a> got a package with <b>batteries included</b>, tools that were need for the tasks of those days.

The <a href="https://en.wikipedia.org/wiki/World_Wide_Web">World Wide Web</a> was launched to the general public in 1991. It gave Perl another boost as HTML was just text and Perl was already good at text processing.

Then in 1993 the <a href="https://en.wikipedia.org/wiki/Common_Gateway_Interface">Common Gateway Interface (CGI)</a> was specified and Perl was again there (Location) and it had the tools better than any other language that were available that time. (Batteries were included.)

Perl 5 came out in 1994, and by 1997 it included CGI.pm, a library that made the writing of CGI-scripts very easy: No need to ask for permission to install it. No need to know how to install it.

That gave Perl another boost, but at the same time PHP started to gather followers as it provided a better user experience.

<h2>The rise of PHP</h2>

<a href="https://en.wikipedia.org/wiki/PHP">PHP</a> was created by <a href="https://lerdorf.com/">Rasmus Lerdorf</a> in 1995 and then it grew quickly. The main reasons for its growth was that it made web development easier than it was in Perl. More and better suited batteries were included. As its popularity grew, many web hosting companies started to provide it as part of the package which meant that the "Location" was also right.

Configuring a Perl-based CGI script was not a complex task, but it required some understanding of Unix and there were a number of pitfalls that could make the process unpleasant.

PHP was there when it was need on the web server. Most people did not have to install or configure anything to start using it. They might had to rename a file from .html to .php, but that was it.

PHP also included special functions for reading and writing CSV files and it included access to MySQL.

While PHP was not well suited for tasks on the command line, and in general it was not well designed, especially in the early years, there were a few areas where it was better than Perl and every other language around that time.

<h2>The rise of Ruby</h2>

Even though <a href="https://en.wikipedia.org/wiki/Ruby_(programming_language)">Ruby</a> was created in 1995 by Yukihiro Matsumoto, it hardly attracted any following outside of Japan till <a href="http://rubyonrails.org/">Ruby on Rails</a> came along in 2005. Then Ruby became very popular as Rails made it easier to develop web applications.

While Ruby did not have the advantage of being installed on every system, once you installed it together with Rails, you got a set of tools that included much better ways to build web applications than were available with other languages and frameworks.

<h2>The rise of Python</h2>

<a href="https://en.wikipedia.org/wiki/Python_(programming_language)">Python</a> was created in 1991, but in the early years it was not well suited to either command line text processing or web development. However it attracted a few people who were ready to invest lots of energy to make their own tools better suited to their own tasks than any other tool. It started to pay off in the early years of 2000.

Today if we look at a Python distribution it has the advantage of being included in every Linux distribution and that its standard library includes lot of tools that are expect for the tasks of today.

Just to name a few things that are taken as obvious these days: It includes parsers for CSV, JSON, YAML, XML formats. It includes a library to access SQLite.
<a href="https://en.wikipedia.org/wiki/Django_(web_framework)">Django</a>, the most popular Python-based web framework even includes its own <a href="https://en.wikipedia.org/wiki/Object-relational_mapping">ORM</a>.

In addition the way people distribute packages makes it easy to install many of the packages without the need to rely on the "administrator" or "root" of the operating system being used. (eggs, virtualenv)

<h2>How to create a popular programming language?</h2>

I mean, besides designing a language that people would like to use...

The language must be easy to learn, or at least easy to get started with.

Location: Being available on every Linux distribution as part of the default installation is not something a new language can achieve. So it needs to be easily installable on all the 3 major Operating systems: MS Windows, Mac OSX, and Linux.

In its standard distribution it needs to provide tools that are seen as basic by developers
or at least it needs to provide a way to select and install packages without need to ask
for favors by system administrators and without the need to make real decisions.
Beginners should not need to know which JSON parser to install.

Processing various standard file formats. Writing both synchronous and asynchronous web applications. Database access.
These are just a few of the tasks that are expected to be simple these days.

It must be easy to distribute stand-alone applications written in the language without the need to ask the end-users to first install something else. (Like Go.)

