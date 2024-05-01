=head1 Padre talk in Haifa, reality check
=timestamp 1227169027
=tags Padre, Perl IDE, Haifa, Parrot

Yesterday I gave a talk about <a href="http://padre.perlide.org/">Padre</a>
in front of some 10-12 Perl Mongers from the Haifa area.

On the way to Haifa I stopped at the <i>offices</i> of 
<a href="http://www.crictor.co.il/">Crictor</a>, a local 
start-up doing some tech oriented videos. I gave them two super
lightning talk, one about Padre and the other about 
<a href="http://www.parrot.org/">Parrot</a>.
They will screen it on their site and I think on
YouTube on <a href="http://www.youtube.com/CrictorNews">Crictor News</a>.
The talks are in Hebrew so not all of you might understand it...

I think I'll post the links when they put it videos on.


The talk in Haifa went well, it lasted more than 2 hours. I talked about
ActivePerl, a bit about the history of 
<a href="http://www.strawberryperl.com/">Strawberry Perl</a> and mentioned
some interesting Perl projects and names of the developers. I like to brag
about the fact that I personally know so many of the core CPAN developers.

By being among these smart people I hope to create the image of also 
being smart...

So I spent nearly a whole day with traveling by train and giving these talks
free of charge. People might wonder why do I do that. I think I get lots of
good feedback from such meeting.

First of all the fact I am talking about Padre requires organizing my thoughts
which helps clean up the vision of that I'd like to achieve with it.

Then the questions people ask help me improve the direction and see what
potential users are concerned of. They also usually have good comments and
suggestions on what is important for them.

It was also a good reality check.

While we, the Padre developers, are (or let me say I am) enthusiastic about 
how well Padre does it is still mostly just an editor which is way 
behind the capabilities of Notepad++ or UltraEdit. There are still lots of
things to do just to reach the capabilities of these editors.

We can brag about the fact that provides Syntaxt highlighting and code folding
but these are features any serious editor provides.

Our enthusiasm comes from the fact that we know where are we heading.
Seeing the current speed of development and the growing pool of Padre
developers we also believe that we soon are going to have many special
feature most other editors don't provide. At least not for Perl.

There are already a few areas where the specialty of Padre can be seen
and I think it is important to point them out.

<ol>
<li>When editing a Perl file there is an additional menu option <b>Perl</b>
that has a single entry <b>Find Unmatched Brace</b><br>
This is the first [dist://PPI] based tool that is Perl specific. It helps you just in
what is says to locate the brace that is unmatched, disregarding braces that might 
be in comments or embedded in strings or otherwise escaped.
</li>
<li>The capability and ease to <b>write plug-ins in Perl</b>.<br>
Unlike in other editors, in Padre you can write your plug-in in Perl,
your native language. That is. If you are a Perl programmer.
</li>
<li>New ... Modules::Starter<br>
It is not such a big issue, but you can kick-start a CPAN-like package for
your own development needs.
</li>
</ol>

The plug-in system is just getting a rewrite as we start to understand 
how it might need to look like. The first version was good to attract a few
enthusiastic developers and create 12 or 14 plug-ins but we needed clearer
definitions. So the next version of Padre in a week or so will have that.

So as a short conclusion. We are still a long way from where we would like to
be but we are so far doing quite well.

We still need to improve the <i>normal editing</i> capabilities of Padre
and we need to improve the Perl specific stuff. Especially we need to
add good documentation and examples on what kind of plug-in one might want
to write.

