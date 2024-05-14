=head1 Programming language popularity: Rust
=timestamp 123
=tags blogs



I have been learning Rust for more than a month. I already managed to upload a crate called [rustatic](https://crates.io/crates/rustatic) a small tool I use to show the static web pages created by some of my projects. I also made nice progress on the [Rust Digger](https://rust-digger.code-maven.com/) and my [Rust slides](https://code-maven.com/slides/rust/).

On one hand I enjoy learning a new language, but I have to keep in mind that my goal is to be able to provide training courses in a field where I can become the obvious choice for many companies.

This process has its ups and downs and today I started to wonder again if investing so much energy in Rust is justifiable? Is it trending upwards? How does it compare to other languages?

I looked at a number of resources.



## TIOBE

I know [TIOBE](https://www.tiobe.com/tiobe-index/) is a very problematic tool to measure programming language popularity and trends, but many people look at it so I should too.

A few selected numbers as of 26 July 2023:

<table class="table">
  <thead>
     <tr><th>Jul 2023</th><th>Jul 2022</th><th>Name</th><th>Ratings %</th><th>Change %</th></tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>1</td><td>Python</td><td class="has-text-right">13.42</td><td class="has-text-right">-0.01</td></tr>
    <tr><td>6</td><td>7</td><td>JavaScript</td><td class="has-text-right">3.11</td><td class="has-text-right">+1.34</td></tr>
    <tr><td>9</td><td>11</td><td>PHP</td><td class="has-text-right">1.41</td><td class="has-text-right">+0.21</td></tr>
    <tr><td>13</td><td>12</td><td>Go</td><td class="has-text-right">1.07</td><td class="has-text-right">-0.07</td></tr>
    <tr><td>16</td><td>15</td><td>Ruby</td><td class="has-text-right">0.91</td><td class="has-text-right">+0.08</td></tr>
    <tr><td>17</td><td>29</td><td><b>Rust</b></td><td class="has-text-right">0.89</td><td class="has-text-right">+0.47</td></tr>
    <tr><td>27</td><td>na</td><td>Perl</td><td class="has-text-right">0.65</td><td class="has-text-right">na</td></tr>
    <tr><td>41</td><td>na</td><td>TypeScript</td><td class="has-text-right">0.31</td><td class="has-text-right">na</td></tr>
  <tbody>
</table>


## PYPL PopularitY of Programming Language

As far as I know [PYPL PopularitY of Programming Language](https://pypl.github.io/PYPL.html) is a much better measurement:

<table class="table">
  <thead>
     <tr><th>Rank</th><th>Change</th><th>Name</th><th>Share %</th><th>1-year trend %</th></tr>
  </thead>
  <tbody>
    <tr><td>1</td><td></td><td>Python</td><td class="has-text-right">27.43</td><td class="has-text-right">-0.2</td></tr>
    <tr><td>3</td><td></td><td>JavaScript</td><td class="has-text-right">9.40</td><td class="has-text-right">-0.1</td></tr>
    <tr><td>6</td><td></td><td>PHP</td><td class="has-text-right">5.03</td><td class="has-text-right">-0.4</td></tr>
    <tr><td>8</td><td></td><td>TypeScript</td><td class="has-text-right">3.02</td><td class="has-text-right">+0.3</td></tr>
    <tr><td>10</td><td>+++</td><td><b>Rust</b></td><td class="has-text-right">2.15</td><td class="has-text-right">+0.6</td></tr>
    <tr><td>12</td><td>-</td><td>Go</td><td class="has-text-right">2.01</td><td class="has-text-right">+0.0</td></tr>
    <tr><td>15</td><td></td><td>Ruby</td><td class="has-text-right">1.10</td><td class="has-text-right">-0.0</td></tr>
    <tr><td>27</td><td>-</td><td>Perl</td><td class="has-text-right">0.29</td><td class="has-text-right">-0.0</td></tr>
  <tbody>
</table>


## Google Trends

Finally I looked at [Google Tends](https://trends.google.com/trends/). I know that at PYPL is partially (?) based on Google Trends
so these two are definitely not independent sources of information, but it is nice to look at the graphs.

However, those graphs don't seem to make any sense.

* When I looked at "Perl tutorial" since 2004 it went down from 100 to under 1. It is very dramatic, but maybe that's true.
* However "Python tutorial" was around 30 in 2004 and it is around 20 now in 2023 when looking at it together with "Perl tutorial".
* When looking at "Python tutorial" alone the shape of the graph is the same, but of course the numbers are different. (around 75 in 2004, peak 100 between 2018-2020 and 42 now.)
* I was expecting "Python tutorial" to have increased a lot since 2004.
* If I use the search term "python" (which can also refer to the snake, to the comedy troupe, and probably other things) then I can see the upward graph from 28 in 2004 to 75 now with a peak of 100 in the last year. Compared to that "python tutorial" does not even register on the graph.
* The "perl" vs. "python" graph looks a lot more the way I was expecting it.
* When I added "rust" to the graph of "perl" and "python" it started at around 6 in 2004 and 18 now. Given that the Rust language first appeared in 2015, means that a large chunk of those searches refer to other meanings of "rust".

### Just Rust

Let's try to focus just on Rust.

* "rust" alone clearly means other things as well, not just the programming language.
* If I compare "rust" to "rust language" or "rust lang" or "rust tutorial", none of these pass the 1% compared to "rust".
* "rust itself is mostly flat between 2004-2013 with seasonal fluctuation.
* In January 2014 there is a jump to 76 then it levels at around 40 with maybe a slight upward slope.
* In January 2021 there is another jump to 100 and since then it is between 60-70.

When looking at the **related queries** I can see that there is a game called **rust console** for the PlayStation
and the Xbox. There is also a French movie called **Rust and Bone** that came out in 2012.

Two notes: I set the location to "Worldwide", the timeframe to "Since 2004"

## GitHub

Another way to measure popularity of programming languages is to look at GitHub.

* In [The state of open source software 2022](https://octoverse.github.com/2022/top-programming-languages) I see the following numbers

### Top languages used in 2022

1. JavaScript
2. Python
3. Java
4. TypeScript
5. C#
6. C++
7. PHP
8. Shell
9. C
10. Ruby

### The fastest growing languages


<table class="table">
  <thead>
     <tr><th>Rank</th><th>Name</th><th>Growth %</th></tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>HCL (Hashicorp Configuration Language)</td><td class="has-text-right">56.1</td></tr>
    <tr><td>2</td><td><b>Rust</b></td><td class="has-text-right">50.1</td></tr>
    <tr><td>3</td><td>TypeScript</td><td class="has-text-right">37.8</td></tr>
    <tr><td>4</td><td>Lua</td><td class="has-text-right">34.2</td></tr>
    <tr><td>5</td><td>Go</td><td class="has-text-right">28.3</td></tr>
    <tr><td>6</td><td>Shell</td><td class="has-text-right">27.7</td></tr>
    <tr><td>7</td><td>Makefile</td><td class="has-text-right">23.7</td></tr>
    <tr><td>8</td><td>C</td><td class="has-text-right">23.5</td></tr>
    <tr><td>9</td><td>Kotlin</td><td class="has-text-right">22.9</td></tr>
    <tr><td>10</td><td>Python</td><td class="has-text-right">22.5</td></tr>
  <tbody>
</table>

## Languish

* [Languish](https://tjpalmer.github.io/languish/) is another nice graph based on data from GitHub and Stack Overflow

This one tells us:

1. Python is going up
2. JavaScript is going down
3. TypeScript is going up
4. Java is down
5. C# slightly down
6. C++ stagnates
7. Markdown is booming (really? who is programming in Markdown?)
8. Leveled with slight downward slope recently
9. HTML slight downward slope (where are all the HTML programmer?)
10. C leveled
11. **Rust**  upward except in the last quarter. Is there trouble ahead?
...
49. Perl sadly fading away.


## OSS Insight

* The 2020 report of [Open Source Software Insight](https://ossinsight.io/2022/)

### Rankings of back-end programming languages

This puts Rust in the 9th place

1. Python
2. Java
3. Go
4. C++
5. C#
6. PHP
7. Ruby
8. Shell
9. **Rust**
10. C

## GH Archive

* [GitHub Archive](https://www.gharchive.org/) is a project to record the public GitHub timeline, archive it, and make it easily accessible for further analysis.

There were no reports here, but this could be really useful at one point.

## Redmonk

* [The RedMonk Programming Language Rankings: January 2023](https://redmonk.com/sogrady/2023/05/16/language-rankings-1-23/) puts Rust on the 19th place.

## GitHut

* [GitHut for 2023-02](https://madnight.github.io/githut/#/pull_requests/2023/2) another way to look at the stats.

Ranking of languages based on pull-reuqets, stars, pushes, issues. Rust is 10-13 in all 4 categories.


## Comment

As you might have noticed, at one point I got tired detailing my understanding and copying over some numbers. It does not mean the reports and sites at the bottom of this
page are less good. I just got to them later.

## Conclusion

* Go is more popular than Rust, but Rust is trending upward very fast.
* They are both far away from Python which is number 1 in most places.
* Perl has almost disappeared from most of the charts and rankings.

## Conlusion round 2

* As someone rather new to Rust, but nevertheless someone who would like to make a living of it, I was interested in the popularity of Rust and the trends. I looked at a number of resources.

* My conclusion is that Rust is slightly behind Go in terms of popularity. Around 10-12th place among all the languages. They are both far behind Python which is ranked as the most popular language in most places. They are both far ahead of Perl.

(I am comparing to Python and Perl as these are the two other languages I am most familiar with and because I have access to a lot of behind-the scenes data about Perl, being the editor of the [Perl weekly newsletter](https://perlweekly.com/) and the [largest Perl web site](https://perlmaven.com).)

The popularity of Rust grew a lot in the last year.

So if I am looking at the time I spend on learning Rust, beyond the fun, as an investment, it looks good.

