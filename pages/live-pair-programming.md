=head1 Live Pair programming
=timestamp 1618308463
=tags blogs

=abstract start

In the recent weeks I ran a number of <a href="https://code-maven.com/live">live pair programming sessions</a> working on Open Source projects.

Thought I should probably not call in "programming" as in some of the cases we were doing a lot more sysadmin work, something that is referred to
by many people as DevOps. In any case for lack of better name I'll call it <b>pair programming</b>.

Questions were raised why would this be interesting to anyone.

Let me collect my thoughts on why are these sessions valuable and why you might be also interested participating.

=abstract end

So far my experience in pair programming is mostly with Perl-related projects, but I try to diversify.
I already had one with <a href="https://he.code-maven.com/front-end-testing-of-react">React</a> (in Hebrew) and I have one scheduled with
<a href="https://code-maven.com/implementing-a-feature-in-typescript-cucumber-playwright">TypeScript</a> as well. Others are in the pipeline.

First of all, while these sessions are usually open to the public only a handful of people joined the live session. The videos on YouTube were watched by a lot more.
It is still not a huge number, but for example the first part of the Mojolicious video was watched by 400 people within the first 2 weeks after publishing it.
So what did people say about these events and what are the benefits?

<h2>The two participants</h2>

For the two participants there are the usual benefits of pair programming that I won't go into.

In addition some of my pairs said that it was very useful for them to see how someone else (in this case me) was interacting with their software and with their documentation.
e.g. <a href="https://www.linkedin.com/in/ferki/">Ferenc Erki</a> about the <a href="https://code-maven.com/rex">Rex</a> sessions
and <a href="https://www.linkedin.com/in/erikhuelsmann/">Erik Hülsmann</a> about the <a href="https://perlmaven.com/exploring-bdd-in-perl-5">Test::BDD::Cucumber</a> session.
It helped them improve documentation and I could help them with ideas on how to improve the software.
Erik also told me that it was much easier to explain to me how to use the module than it was to record a similar video alone. [1]
By recording these sessions we also created material that can be used by others to learn about the software. Something that probably would not happen otherwise.

Because these are not presentations neither of the participants need to prepare themselves a lot.
We created some plans of what we are going to work on, and there might be a need for some offline preparations, but far less than for a presentation.
e.g. I wrote down the <a href="https://perlmaven.com/course-management-app-in-mojolicious">requirements of the web application</a> I wanted to develop  and
I prepared the <a href="https://code-maven.com/ansible-elk">configuration files we needed for the ELK setup</a> and I went over manually on what we wanted to automate.

Some of my partners told me they liked the idea of going out of their comfort zone.

The few viewers who participated sometimes gave us very valuable input - things we did not know or did not consider.
Sometimes they raised questions we have not thought about.

So far all the feedback was given in a very positive way. People who recommended changes were all very nice.


<h2>Watching the videos</h2>

The people who watched the videos have of course the advantage of doing so at a higher speed and stopping or even going back when needed.
Many people complain about the fact that teaching-videos are usually showing the <b>"right way out of thin air"</b> which is really not how we program or do anything for that matter.
We need to constantly check the documentation. We need to search for help. We make mistakes. Typos and design issues. We forget to write tests. We refactor code.
Even the core developers of a module or application need to look up things in the help or in the source code of the application.
I think these videos provide a more realistic and more humane picture of how development work is done.

We use our shell, our editor, our browser in ways others can pick up ideas from.
We would almost never teach these things and almost no one will go to "how to improve my browser usage" course, but we can pick up from each other and viewers can pick up from us.

The other direction of learning also happened. The viewers commented on some better approaches regarding the <a href="https://perlmaven.com/course-management-app-in-mojolicious">Mojolicious application</a>
we write with <a href="https://phoenixtrap.com/">Mark Gardner</a>.

<h2>Watching the coding live</h2>

The viewers who participated seemed to enjoy the fact that they can think together with us, that they can help us by catching errors or by suggesting better solutions.
It also seems to have an added positive feeling to being present while the code is being written.
It is a bit like an online conference. You could watch the videos later, but being present has a certain feeling of magic.


<h2>My Experiences</h2>

[1] Looking back, I can say that I had a lot of similar experiences:

When I saw how my students try to execute my instructions I could improve the instruction a lot.

When I recorded the <a href="https://code-maven.com/programming-boootcamp-for-scientists">Programming Bootcamp for Scientists</a> I had <a href="https://www.linkedin.com/in/nora-doleschall/">Nora Doleschall</a> listening and asking questions.
That helped me a lot and I think made the videos a lot more humane than the videos I record alone.


