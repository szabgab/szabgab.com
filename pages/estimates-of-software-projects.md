=head1 Estimates of Software Projects
=timestamp 1510145131
=tags Agile, estimates



I am a bit late to the show, but recently I bumped into the <a href="https://ryanripley.com/agile-for-humans/">Agile for Humans</a> podcast and started to listen to it from the very beginning. Today I listened to episode #5 from June 2015, a <a href="https://ryanripley.com/005-agile-for-humans/">panel discussion on #noestimates</a>. That is <a href="https://twitter.com/hashtag/NoEstimates">#noestimates</a> on Twitter.

Let me just think aloud about the subject.



<h2>Estimates are unavoidable</h2>

At every company I visited management demands to have estimates so telling them we don't do estimates would be futile. The question, what is the real value of estimates, and how can we make them safe for both the people who commit to do something by an estimated time or within an estimated budget and to the people who receive these estimates and try to enforce them.

As discussed in the podcast there might be people who demand estimates without thinking about them, but in my experience they actually need them to be able to make some decisions. For example to know what can they promise to clients. Regardless if those are in-house clients or external clients. They might need to decide which project to do with limited resources. They might need to decide to cancel a project as it might take too much time and cost to much money, or they might allocate more budget and let you hire more people to help with the project if that makes more sense business wise. (And before you mention the <a href="https://www.amazon.com/Mythical-Man-Month-Software-Engineering-Anniversary/dp/0201835959?tag=szabgab">The Mythical Man Month</a>, if you are alone on a project estimated to take 1 year, then you could probably move much faster with more people. It all depends.)

Their aim is to have control over the process and the costs.

In a nutshell there definitely is a need for estimates.

<h2>How estimates can cost us a lot of time and money?</h2>

In my experience, and I think we have enough evidence from the Industry, especially the Software industry, we are really bad at giving estimates. I think the common ball-park number is that we are regularly off by 200% in our estimates, but we can easily slip to 10 times the estimated time. So what happens when your estimations are bad and your managers hold you strictly accountable for those estimations.

Let's say you estimated that it would take you one week to do some work. What happens if you tell this estimation to your boss and then it takes you 3 weeks to actually deliver? If they hold you strictly accountable and get you fined or maybe even fire you, then you'd want to avoid this situation at all cost. Either you'd quit or you'd play safe and give an estimation of 4 weeks.

If in the end it really takes you 4 weeks to deliver the solution then everything is fine, but what happens if you actually manage to finish it after 1 week? What if after a few hours you notice that actually there is a library already doing most of what you need and you solve the problem in 4 hours? Would you tell it to your boss?

It depends.

First time you might do. Then next time when you have a project you feel will take 1 week but tell your boss 4 weeks, two things can happen. If she accepts it, that's great. More likely however she will try to argue, as bosses usually want to shrink the estimates due to business pressure. Last time it took you only one quarter of the time. She will want to reduce the time estimate you give. If you agree and end up taking 4 weeks this time then you are in trouble. You don't want that. No one wants to be in that situation.

So more likely, especially if you had similar bad experiences at the current workplace or a previous place, you will delay the delivery of that first project to align with the 4-week estimate you gave. In any case this would be the logical thing for you to do. This means you'd spend 3 weeks browsing the Internet, checking our cats on Facebook.

Maybe you'd spend some of the time learning some new things that might be useful for the company as well, but even then some of the time will be wasted.

All this while both you and the boss acted logically.

<h2>The 5 laws of Software Estimates</h2>

As I was writing this I bumped in this article on the <a href="https://ardalis.com/5-laws-of-software-estimates">The 5 Laws of Software Estimates</a> by Steve Smith. Quite a nice collection. 

He put <b>Estimates are Necessary</b> as his 5th law. I started with it.

<b>Estimates are Temporary</b>, his 4th law - as we make progress, we learn more about the problem. We learn more about the environment. (Working within a legacy application trying to untangle spaghetti code or is it actually a nicely maintained code-base?) So as time passes our own estimations will change. Will we communicate that to management?

<b>Estimates are Wrong</b> the closer we get to the goal the better the estimates will be. Or in other words, the smaller the scope of the project the easier to estimate correctly. Yet in other words, the farther we are from the goal the bigger the mistake we are going to make.

<h2>Ways out</h2>

So if estimates are necessary, but they are incorrect, and cause waste then what could be done.

Instead of giving a one-number estimate, we should give a range. The project, as we can estimate today, will be done between 2-6 months.
We need to split up the project in smaller chunks, that we can do within a few hours or few days. The estimate for that smaller chunk will still be a range, and not a fixed number. Maybe 1-3 days. then once we are done, we should update our overall estimate.

<h2>Agile / Scrum estimations</h2>

In Scrum or in more generally in Agile instead of expecting specific estimations there are two tools that make the estimations a lot more flexible.
First of all estimations are not absolute, but relative. That is, instead of saying this work will take 2 week and the other one will take 4 weeks we say the other one will take twice as long. This seems to calm down some people, but once we implemented one of the projects it will be easy to calculate the absolute values and thus some people will do it. 

The other solution seems to be a lot better: Here instead of saying exact estimations we put the projects in buckets. For example:
less than 1 day, less than 5 days, less than 10 days, less than a month buckets. Some people like the bucket sizes to follow the Fibonacci series:
1, 2, 3, 5, 8, 13, ..... where the numbers are usually days though they can also represent relative numbers.

Yet others use T-shirt sizes: Small, Medium, Large, Extra Large, etc. where the values are just relative and approximate sizes.


