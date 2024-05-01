=head1 Regular Expressions in Perl 5.10
=timestamp 1198488988
=tags Perl, Perl 5, 5.10, regular expressions
=indexes 5.10, regex, named capture, (?< name >...), \k< name >

There are many new features in the regular expression engine
of Perl 5.10. I point out some of them.

Named captures

I am trying to match a phone number and save the values in variables.

One way to do it is:

  if ($str =~ /^(\d+)-(\d+)-(\d+)$/) {
      $num{country} = $1;
      $num{area}    = $2;
      $num{phone}   = $3;
  }

The new way is

  if ($str =~ /^(?&lt;country&gt;\d+)-(?&lt;area&gt;\d+)-(?&lt;phone&gt;\d+)$/) {
      %num = %+;
  }

Starting from 5.10 we can name the capturing parenthesis and the
strings they match will be in the %+ hash using the names of
the parenthesis as the keys.

Not only that but we can use these names also instead of the \1, \2
matching buffers y writing \k<name> as in the following example:

  /(?&lt;letters&gt;[a-z]+)-(?&lt;digits&gt;\d+)-\k&lt;letters&gt;-\k&lt;digits&gt;/

Using names will make it much clearer what each pair of parenthesis
are matching and will eliminate bugs created when we add or remove
a pair that changes the numbering.

For example in this regex:

  /(.)(.)\2\1/

If I want to add a repetition to it I would start writing

  /((.)(.)\2\1){2}/

but this is incorrect and gives a syntax error as now I need to change 
the numbers of the buffers:

  /((.)(.)\3\2){2}/

Using named buffers even if they are just single letter will solve this problem:

  /(?&lt;c&gt;(?&lt;a&gt;.)(?&lt;b&gt;.)\k&lt;a&gt;\k&lt;b&gt;)/

