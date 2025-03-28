=head1 Perl 6 screencast - part 4 - files
=timestamp 1279875945
=tags Perl 6, Perl, screencast, files

This article is about <a href="/perl6.html">Perl 6</a>. If you are looking for solution regarding
the current production version of Perl 5, please check out the <a href="/perl-tutorial">Perl tutorial</a>.
<hr>


Direct link to the <a href="http://www.youtube.com/watch?v=hma55uL9qPI">Perl 6 files screencast</a>

<!--
<object width="640" height="385"><param name="movie" value="http://www.youtube.com/v/hma55uL9qPI&amp;hl=en_US&amp;fs=1"></param>
<param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param>
<embed src="http://www.youtube.com/v/hma55uL9qPI&amp;hl=en_US&amp;fs=1" type="application/x-shockwave-flash" 
allowscriptaccess="always" allowfullscreen="true" width="640" height="385"></embed></object>
-->

See more <a href="/perl6.html">Perl 6</a> entries.

<h2>Perl 6 Code examples</h2>

Reading in all the lines of a file in a single scalar using the <i>slurp</i> function:

  use v6;

  my $content = slurp "text.txt";
  say $content.chars;


Reading in all the lines of a file into the first element of an array using the <i>slurp</i>:

  use v6;

  my @content = slurp "text.txt";
  say @content.elems;
  say @content[0].chars;

Reading in all the lines, each line in a separate element of the array using the <i>lines</i> function:

  use v6;

  my @content = lines "text.txt";
  say @content.elems;
  say @content[0].chars;

Iterating over the lines one by one. <i>lines</i> is evaluated lazily  here:

  use v6;

  for lines "text.txt" -> $line {
    say $line.chars;
  }

Opening a file using the <i>open</i> function.
Reading in one line using the <i>get</i> method.
Iterating over the rest of the file using the <i>lines</i> method:

  use v6;
  my $fh = open "text.txt";

  my $first_line = $fh.get;
  say $first_line;

  for $fh.lines -> $line {
    say $line.chars;
  }


Opening a file for writing, printing a string to it using the 
<i>say</i> method and then <i>close</i>ing it to flush all the
buffered output.
Then re-reading the file just to show what happened.

  use v6;

  my $fh = open "out.txt", :w;
  $fh.say("text 4");
  $fh.close;

  say slurp "out.txt";



