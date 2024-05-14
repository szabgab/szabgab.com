=head1 How did PHP and Python take over such a huge market-share of Perl?
=timestamp 1394644203
=tags Perl, Python, PHP



Once in a while someone comes up with a Perl is .... post, and there are always people who point out
why their measurement is flawed and how everything is perfect. Yet there are people 
with <a href="http://www.modernperlbooks.com/mt/2014/02/the-mid-career-crisis-of-the-perl-programmer.html">mid-career crisis</a>
and then others who tell me this was a wake-up call for them and they start learning a more marketable language.



I had part of the following post in a draft for ages now, there is no particular reason to publish it now, but who knows, maybe
some people will agree with me.

The numbers show that the <a href="/the-popularity-of-perl-in-2013.html">market-share of Perl has been shrinking for ages</a>,
way below I'd expect. (4% of the JavaScript+PHP+Python+Ruby+Perl market) 

There are many reasons for that, let me just point out one that I think is critical.


<h2>How did Perl manage to become so successful in the 90's ?</h2>

It was the easiest tool around to do sysadmin work and to create dynamic web applications due to its features
combining all the power of Unix and due to the availability of CGI.pm in the core.

It was Ubiquitous.

<h2>How did PHP took over leadership for the web?</h2>

It was easier for a front-end web developer (HTML) to move from pure HTML to PHP, and a lot of the necessary
tools were available without any additional installation.
(e.g. access to MySQL)


<h2>How did Python become so successful?</h2>

Why is Python more and more preferred by people who just need to do some work on a Linux box?
Even by system administrators?

Besides being easier to learn than Perl and besides the disgusting socialization of "Perl is bad"
I think there is another very important issue.

The default Python distribution comes with a lot of modules
in its <a href="http://docs.python.org/2.7/library/">standard library</a>,
that in Perl would require additional installation. Either from CPAN or from the package
management system of the operating system.


I know, it is not very difficult to install from CPAN, but it is yet another obstacle,
both technically and administratively.
A beginner does not know what to install, how to install, and if they are allowed to install at all.

<b>People will go in the direction of least resistance.</b>.

So I think unless a future version of Perl will come with a lot of libraries built in,
there won't be an easy way to convince people to pick Perl.

(Oh, and of course it is not the number of libraries what is important, but that they solve the
problems people face.)


Having an up-to-date release of <a href="http://dwimperl.szabgab.com/">DWIM Perl</a> both for Linux and
Windows would be a good step in the direction, though I think the real solution would be if
the <a href="http://www.cpan.org/src/README.html">Standard Perl</a>, released by the
Perl 5 Porters already included a much larger selection of modules.



