=head1 Bad error messages
=timestamp 1406623155
=tags Perl



I just had this encounter:

  $ curl  -H 'Content-Type: application/json' ' https://....'
  curl: (1) Protocol  https not supported or disabled in libcurl

WTF, it worked yesterday?



Please. Put quotes around the values you print in error messages and warnings. This message would have been so much clearer:

  curl: (1) Protocol ' https' not supported or disabled in libcurl

Better yet, notice obvious mistakes like extra white-spaces and report them.

