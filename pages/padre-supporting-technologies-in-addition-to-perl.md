=head1 Padre supporting technologies in addition to Perl
=timestamp 1258578873
=tags Padre, Perl, IDE, editor, HTML, Javascript, JQuery, SQL, config, Parrot, PIR

Looking at the  <a href="http://perlide.org/poll200911/">results of the 2nd editor poll</a> it seems that 
most of what perl developers do is web programming. This is probably just a side effect of both the very
limited reach of the poll - mostly people reading my blog in one way or another - and the fact that not many
other technologies were listed.

My hope with the poll was to create a short list of technologies we should focus on when thinking
about improving Padre but after seeing the results and reading the comments, the poll was not 
really asking the right question.

Of course we would like to provide syntax highlighting to many languages and actually Padre 
already does in some level as we get it "free" from using <a href="http://www.scintilla.org/">Scintilla</a>.
We also want to make it easy to write your own syntax highlighter.

This is not the level of support I am thinking of. Hence the question of popularity of other technologies
among Perl users is less important. What would be more important to know is <b>what are the technologies
people use that they need help with?</b> For example I am not too familiar with CSS so when I write a CSS file
it would be great to be able to fetch the list of attributes and possible values and even have some
explanation next to it. Same with Javascript an JQuery and with 
<a href="http://pdl.perl.org/">PDL, the Perl Data Language</a>

Just as we provide context sensitive help for both Perl 5 and Perl 6 and soon for
PIR files as well, it would be great to have such help for languages we use less often.

If you are interested in helping in either of these extension, the 
<a href="http://padre.perlide.org/">Padre web site</a> have directions how to reach us.


