=head1 The Five Forces in the Language Wars
=timestamp 1234281912
=tags Economy, Languages, Perl, Perl 5, IDE

Adam Kennedy has just posted about his new interest in
<a href="http://use.perl.org/~Alias/journal/38446">Cognative Load Theory</a>
(I wonder if writing Cognative instead of Cognitive is because of 
his New Britsralian accent or just a typo).

That reminded me one of the most useful tools I learned during my MBA was the 
<a href="http://en.wikipedia.org/wiki/Porter_5_forces_analysis">Five Forces Analysis</a> 
of <a href="http://en.wikipedia.org/wiki/Michael_Porter">Michael E. Porter</a>.

In his theory markets have a so-called <b>Barrier of entry</b> 
(or <b>Threats of New Entrants</b>). It is good to be in a market where the
barriers of entry are high as it will be hard for new competitors to show up.
Less competitors, more profit potential.

If we look at the Programming Language market then the barrier of entry
(of a new language) is not only the design of the language but also the tools 
around it. The compiler, the libraries, a development environment and educating
the developers. So while it is relatively easy to create a new language, 
(making it good is a whole other story and I am not a language designer)
but all the tools around it make it extremely difficult to turn a 
language mainstream or even just useful.

<a href="/parrot.html">Parrot</a> and <a href="/perl6.html">Perl 6</a> are 
trying to help in this by providing a platform for creating
compilers for such languages. If all goes well languages running on Parrot will
be able to reuse each others libraries reducing that barrier.

With <a href="http://padre.perlide.org/">Padre, the Perl IDE</a> we also have
a plan to help this. Once we manage to integrate Padre better with 
Parrot we will be able to provide and IDE with all kinds of nice features
for any language running on top of Parrot.

That will actually also change another of the forces in the 5 forces of Porter,
the <b>Threat of Substitute Products</b>. Companies that write an application
in one language have a really hard time in changing the language as they
have invested in their code so much. If they can reuse their old libraries
and start using a new language it will be much easier to switch languages.
At least among the languages running on top of Parrot.

The way Padre can can increase the <b>Threat of Substitute Products</b> is
by reducing the <b>barrier of entry</b> of users (programmers) to new languages.
The way to do that is by eliminating some of the 
<a href="http://en.wikipedia.org/wiki/Cognitive_load">cognitive load</a>.

