=head1 What does "if it ain't broke, don't fix it" really mean?
=timestamp 1259431123
=tags Perl, refactoring

I keep hearing and reading this nice proverb <b>if it ain't broke, don't fix it</b>. The latest
appearance was in response to <a href="http://community.livejournal.com/shlomif_tech/37969.html">Shlomi Fish</a>
suggesting that some Ancient Perl code should be replaced by Modern Perl code.

I am not saying that every piece of code should be rewritten every 6 months but in my understanding
that sentence actually translates to <b>let's wait till it breaks and then panic</b>.

I think people who say that sentence are afraid that the new version will break something. Sure 
there is always a chance that a change introduces an error but if we are afraid to touch the code 
what will happen when later on we encounter a case where it does not work? For example if we
need to use it in a new environment. Will we have the courage to change the code then? How much will it 
cost in money, time, and lost sleep?

I think we have been trying to teach ourselves that we should have really good test coverage of our
code and then we can easily refactor it and get rid of technical debt. So why do we keep hearing
that sentence?

