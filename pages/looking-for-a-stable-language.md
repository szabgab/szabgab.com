=head1 Looking for a stable language?
=timestamp 1342646745
=tags Perl, Perl 6, Python, Ruby



Do you want to be sure that when you upgrade any upstream stuff your code does not break?

No matter what changes, right?

Starting from the hardware, through the operating system, the the back-end database, down to
the smallest function of the smallest CPAN module your code depends on.

You just want to be sure everything works.



I totally understand you. After all who wants to see her code broken by some upstream change?

<img src="/img/226px-The_death.png" />

Upstream changes happen all the time. Some are backward compatible. Some are not.

<h2>Python</h2>

Have you already upgraded to <a href="http://wiki.python.org/moin/Python2orPython3">Python 3000</a>? Why not?


<h2>Ruby</h2>

Just check out the backward compability matrix on <a href="http://isitruby19.com/">is it Ruby 1.9</a>.

<h2>PHP</h2.

<a href="http://www.php.net/manual/en/migration53.incompatible.php">Backward Incompatible Changes between PHP 5.2 and
5.3</a>.


<h2>Perl 5</h2>

Have you used <b>Pseudo Hash</b>-es when they were hip? Have you ever relied on the order the <b>keys()</b> function
returns the keys? Just two thing that could have caused you headaches.


<h2>Perl 6</h2>

The question, how well can Rakudo handle backward compability?

No, the question was <a href="http://perlmonks.org/?node_id=982112">how should Rakudo manage breakages across versions</a>
and instead of trying to give an answer Anonymous Monk went off discussing the meaning of the word stable and backward
compability. No surprise he wanted to say Anonymous.

Of course Rakudo is still changing more frequently and drastically than the above languages. You probably should not
yet build a business upon it, but you can already start to <a href="http://perl6maven.com/">start building web sites</a>
and smaller applications. You can start porting libraries.


So

<h2>How to make sure that changes don't hurt much?</h2>

I know only one magic bullet. Write lots of tests. When you upgrade something in your upstream
- regardless if that is the hardware, the compiler or a minor library - the only way to ensure that
things still work is to test them.

It could be done manually but that's probably a waste of time. That's why you should write test.

Which reminds me to quote what I wrote in the <a href="http://perlweekly.com/archive/51.html">latest edition</a> of the
<a href="http://perlweekly.com/">Perl Weekly</a>:

I think the <a href="http://blogs.perl.org/users/buddy_burden/2012/07/the-mind-killer.html">story Buddy Burden shares
with us</a> is one of the best ways to explain how testing in general,
and TDD in particular can improve your health. I really mean it.


<h2>Conclusion</h2>

If you are looking for language that does not change, try Latin. Other than that it's up to you.
If you are ok with some extra work in exchange of some fun and building something new then
check out <a href="http://rakudo.org/">Rakudo</a>.

If you'd like to read <a href="http://perl6maven.com/">articles about Perl 6</a>, check out my new site.


<a href="http://commons.wikimedia.org/wiki/File:The_death.png">Image source</a>
