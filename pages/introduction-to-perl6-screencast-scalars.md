=head1 Introduction to Perl 6 screencast - part 1 - scalars
=timestamp 1279584453
=tags Perl 6, Perl, screencast, scalars, Rakudo
=redirect http://perl6maven.com/introduction-to-perl6-screencast-scalars

This article is about <a href="/perl6.html">Perl 6</a>. If you are looking for solution regarding
the current production version of Perl 5, please check out the <a href="/perl-tutorial">Perl tutorial</a>.
<hr>

<!--
<object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/Lp8E6OiFlEM&hl=en&fs=1"></param>
<param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param>
<embed src="http://www.youtube.com/v/Lp8E6OiFlEM&hl=en&fs=1" type="application/x-shockwave-flash" 
allowscriptaccess="always" allowfullscreen="true" width="425" height="344"></embed></object>
-->

Direct link to the <a href="http://www.youtube.com/watch?v=Lp8E6OiFlEM">Perl 6 scalars screencast</a>

<a href="http://www.rakudo.org/">Rakudo</a>

IRC: <a href="webchat.freenode.net/?channels=perl6">#perl6 on irc.freenode.net</a>

<h2>Perl 6 Code examples</h2>

  use v6;
  say "Hello world";


  use v6;
  my $name = prompt "Please type in your name: ";
  say "Hello $name, how are you?";


  use v6;
  my $year = prompt "When were you born? ";
  if $year > 1987 {
    say "You are younger than Perl by { $year - 1987 } years";
  }


  use v6;
  my $year = prompt "When were you born? ";
  if 1995 > $year > 1987 {
    say "You are younger than Perl 1 but older than Perl 5";
  }



  use v6;
  my $luck = prompt "What is your lucky number? ";
  if $luck == 3 or $luck == 7 or $luck == 13 {
    say "Oh, that's like mine";
  }

  if $luck == 3|7|13 {
    say "Oh, that's still like mine";
  }


