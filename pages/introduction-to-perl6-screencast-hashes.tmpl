=head1 Perl 6 screencast - part 5 - hashes
=timestamp 1280612970
=tags Perl 6, Perl, screencast, hashes

This article is about <a href="/perl6.html">Perl 6</a>. If you are looking for solution regarding
the current production version of Perl 5, please check out the <a href="/perl-tutorial">Perl tutorial</a>.
<hr>


Direct link to the <a href="http://www.youtube.com/watch?v=Cm0y9p9QYs4">Perl 6 screencast about hashes</a>

<!--
<object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/Cm0y9p9QYs4&hl=en&fs=1">
</param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always">
</param><embed src="http://www.youtube.com/v/Cm0y9p9QYs4&hl=en&fs=1" type="application/x-shockwave-flash" 
allowscriptaccess="always" allowfullscreen="true" width="425" height="344"></embed></object>

-->

See more <a href="/perl6.html">Perl 6</a> entries.

<h2>Perl 6 Code examples</h2>

Hashes in Perl 6 are denoted using % sign:
Creating a hash 


  my %h = "Foo" => 1, "Bar" => 2;
  
printing it out for debugging purposes:

  say %h.perl;    # {"Foo" => 1, "Bar" => 2}

printing the value of a single key:

  say %h{"Foo"};  # 1
  
The quotation marks are required around the string:

  say %h{Foo};    # Could not find sub &Foo

You can use variables without quoting them:

  my $name = "Foo";
  say %h{$name};   # 1

Recall from the previous section that you can use the angle brackets to quote a number of strings
and create a list of them:

  say <Foo Bar>;   # FooBar
  
This notation can be used to eliminate the need for quotation marks:

  say %h<Foo>;     # 1

You can actually use multiple keys there fetching a list of values of a hash slice:

  say %h<Foo Bar>;  # 1 2

Using the "perl" method just further proves that you get back a list of values

  say %h<Foo Bar>.perl;  # (1, 2)

In order to fetch all the keys you can use the ".keys" method and then you can iterate over the individual keys
and fetch the respective values:

  for %h.keys -> $k { say "$k %h{$k}"; }

There is also a ".values" method that will return the list of values. Even though in our case the values are unique in the general 
case you cannot easily get back the keys from the values:

  for %h.values -> $v { say $v; }

In case you prefer to iterate over the key-value pairs for that you can use the ".kv" method:

  for %h.kv -> $k, $v { say "$k - $v"; }

To add another key with its value you can use the following code:

  %h<Moo> = 3;

  say %h.perl;    # {"Moo" => 3, "Foo" => 1, "Bar" => 2}

If the key already exists this will replace the value in the hash:

  %h<Moo> = 4;
  say %h.perl;   # {"Moo" => 4, "Foo" => 1, "Bar" => 2}

On the other hand in Perl 6 you can also use the ".push" method on a hash
that will add the value to the given key creating an array as the value of
that key:

  %h.push( 'Moo' => 5 );
  say %h.perl;   # {"Moo" => [4, 5], "Foo" => 1, "Bar" => 2}


