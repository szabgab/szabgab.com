=head1 PPI based Syntax highlighting for Perl 5
=timestamp 1230666325
=tags Padre, PPI, Perl, Perl 5

Yesterday <a href="http://padre.perlide.org/">Padre</a> got a 
Portuguese (BR) translation of it GUI.

Today a Spanish translation arrived.

In the morning Adam Kennedy reported a 
<a href="http://padre.perlide.org/ticket/190">Massive GDI object leakages</a>
in Padre that would make it basically unusable on Windows.

By the evening Ahmad Zawawi fixed it.

He also fixed a <a href="http://padre.perlide.org/ticket/185">crash I reported earlier</a>.

In the meantime I moved several features from experimental mode to
the regular menu options so more people will start to use them and 
give us feedback and error reports. Among these are

<ol>
<li>Incremental search with Firefox-like GUI embedded in the main window</li>
<li>Lexically replace variable which I think works only partially</li>
<li>PPI based syntax highlighting for Perl 5</li>
</ol>

The first one has been around for some time just no-one promoted it to be
a <i>blessed</i> feature of Padre.

The second one is I think not yet working well but I hope by making it
available to more people someone will come forward and finish it.

The last one, the PPI based syntax highlighting had to be allowed only
to relatively small files as it is still quite slow. So for now I limit
it to files which are less than 10,000 characters long.

This is actually the most important step for my beginner friendly plans.
Once I can make sure I always have the full PPI structure of the current
document in memory I can start to provide help on the specific elements 
of the document.

I also asked the Perl Monks about
<a href="http://www.perlmonks.org/?node_id=733201">The most common errors and warnings in Perl</a>
so I can further encourage people to translate the most important entries
of <a href="http://perldoc.perl.org/perldiag.html">perldiag</a>.

