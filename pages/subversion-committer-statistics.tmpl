=head1 Subversion committer statistics
=timestamp 1225609766
=tags Subversion, Perl, Perl 5, commit

I am sure there are simpler ways to do it. If you know them.

Here is a Perl one-liner that will count the number of commits in a Subversion repository
and print out the statistics.

 svn  log | perl -MData::Dumper -n 
   -e'if (/^r\d+\s*\|\s*(\w+)\s*\|/) {$c{$1}++} END {print Dumper \%c}'
 
and the result for the <a href="http://padre.perlide.org/">Padre</a> 
<a href="http://svn.perlide.org/padre/trunk/">Subversion repository</a>.
 
 $VAR1 = {
          'tsee' => 19,
          'adamk' => 86,
          'patspam' => 6,
          'bricas' => 2,
          'szabgab' => 450
        };

To have a quick explanation:

 svn log 
 
Is just to get all the logs from Subversion then we pipe it (using |) to the perl one-liner.

-MData::Dumper tells perl to load the Data::Dumper module which provides us the Dumper function
used later.

-n Basically means to split up the input stream into lines and feed one by one to the perl code.

-e'' tells perl that instead of running a script in a file, expect the Perl code between the
quotation marks.

 if (/^r\d+\s*\|\s*(\w+)\s*\|/) {
     $c{$1}++
 }

The above means: Check the current line (that is hidden away in a variable called $_ but we
don't really care). We use a regular expression to match those lines that start with and r (^r),
followed by some digits (\d+), followed by optional spaces (\s*), followed by a vertical bar (\|),
followed by more optional spaces (\s*), followed by some letters, numbers (\w+), followed by
more optional spaces (\s*) and followed by another vertical bar (\|).

This might be a bit long explanation, but this is how we can describe the beginning of those
lines that look like the following:

 r638 | szabgab | 2008-11-01 18:06:45 +0200 (Sat, 01 Nov 2008) | 1 line
 
If I was writing this in a file I probably would write it a bit more clearer 
by using the /x modifier like this:

 if (/^r\d+  \s*  \|  \s*   (\w+)  \s*  \|/x) {
     $c{$1}++
 };
 
As you can see the \w* is within parentheses which means the string it captures
will magically end up in the $1 variable. So for the above input line $1 will hold
"szabgab". I use that as a key to the %c hash incrementing the value of $c{"szabgab"}
by one.

The remaining part, the END block is a special statement that will only execute after
all the rest of the perl script ran, so it will only execute once <b>after</b>
all the lines were processed and it simply generates the out you can see above inserting
an arbitrary $VAR1 at the beginning.

 END {print Dumper \%c}

If this is the kind of things you might need to do, you don't need to learn the
full Perl language so
<a href="http://books.perl.org/book/240">Minimal Perl by Tim Maher</a> might be a
good book for you.

