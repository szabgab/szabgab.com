=head1 Rescuing an application written in Perl from total meltdown
=timestamp 1629042519
=tags Perl, testing, BDD



A few years ago I had a client - a large non-hitech company with a small tech team and within that tech team an even smaller team that maintained an application written in Perl.
The application was using a 3rd party and proprietary Perl library that itself forced a lot of limitation on the this team.

Unfortunately the people who originally wrote the application have already moved on and the current team did not have a lot of experience in Perl.



The did not have to write Object Oriented code, nor something inherently very difficult, but they were stuck with the third-party library
and the fear of management of a negative impact on the production. Which was creating reports.

They were told to maintain and improve the application by adding various features as the business required.

They did not have the mandate to replace the 3rd party library with something saner. Nor to rewrite the whole application in
a programming language they are familiar with.

Luckily they had a bunch of acceptance tests for the whole system, that using some input could verify if the output is pixel-perfect.
Unfortunately it took about 30 minutes to run this test.

That did not provide a fast feed-back loop.

Their manager reached out to me. We had a discussion on what would be the best approach to help them.

We decided we'll go with about 20 hours of formal training in writing tests in Perl that would include both presentations
and hands-on exercises.

Then we will have another 40 hours of team-programming. In these we would take a look at various examples in their code-base,
write tests for them and even <b>refactor</b> some of the code. We did this in a driver-navigator style. Each meeting one of the members
of their team was the driver. That person had the keyboard and that person shared the screen.
(Oh yeah, the whole thing was online as the client was in another country and several of the employees worked from home.)

I was the primary navigator telling the person what to write, but the other also had to chip-in.

They had the knowledge about the code-base and the whole environment. We often bumped into limitation set by the IT,
but we always had one person on the team who already overcame that problem once so s/he could help us fix the issues now.
This meant we could move forward much faster than if we were only two people in the call.

It also helped all the team members to learn about the code-base and about writing tests for the code-base.

<h2>Behavior-driven development</h2>

We also experimented with <a href="https://en.wikipedia.org/wiki/Behavior-driven_development">BDD</a> in the hope that maybe
in an upcoming project they can work together with the business team to define the behavior of the system and easily convert
this specification to executable code.


<h2>Conclusion</h2>

<ul>
<li>Formal training can have the advantage of being well designed and structured.</li>
<li>Trainer-lead Pair- or Team-programming sessions can have the advantage of being very relevant to the specific problems the team faces.</li>
</ul>

Probably a mix of the two is what would give you the best value for your money and time.

