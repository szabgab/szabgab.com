=head1 Perl 6 screencast - part 2 - arrays
=timestamp 1279677278
=tags Perl 6, Perl, screencast, arrays
=redirect http://perl6maven.com/introduction-to-perl6-screencast-arrays

This article is about <a href="/perl6.html">Perl 6</a>. If you are looking for solution regarding
the current production version of Perl 5, please check out the <a href="/perl-tutorial">Perl tutorial</a>.
<hr>

<!--
<object width="640" height="385"><param name="movie" value="http://www.youtube.com/v/TbjNXtU2u_0&amp;hl=en_US&amp;fs=1"></param>
<param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param>
<embed src="http://www.youtube.com/v/TbjNXtU2u_0&amp;hl=en_US&amp;fs=1" type="application/x-shockwave-flash" 
allowscriptaccess="always" allowfullscreen="true" width="640" height="385"></embed></object>
-->

Direct link to the <a href="http://www.youtube.com/watch?v=TbjNXtU2u_0">Perl 6 arrays screencast</a>

See more <a href="/perl6.html">Perl 6</a> entries.

<h2>Perl 6 Code examples</h2>

  use v6;
  my @names = "Foo", "Bar", "Moo";
  say @names[];
  say "Hello {@names} how are you?";
  say "Hello { join('; ', @names) } how are you?";


  use v6;
  my @names = <Foo Bar Moo>;
  say "Hello {@names} how are you?";
  for @names -> $n {
    say $n;
  }

