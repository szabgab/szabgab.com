=head1 Extracting data from a file with multi-line records
=timestamp 1331377863
=tags Perl
=indexes .., flip-flop, range

=abstract start

There are lots of software and devices that generate log files in which
each record of data spreads multiple lines. If the file is too big to fit into
memory - and log files can be huge - then we have no choice but read the file
line-by-line, recognize the records manually and process each record after we
collected all the lines belonging to this record.

=abstract end

<h2>A log file with multi-line records</h2>

This is a "pseudo file" that resembles the generic case.

There might be some data at the beginning - several lines of <b>Header</b>.

Then, each record or section starts with some recognizable line.
There is usually some kind of a string or character that marks the
beginning of each section of data. I used the <b>Start</b> word in this example.

Then, there are lines of data and finally the section ends with another recognizable
string. In our case this is the <b>End</b> word.

There can be even some data between the sections that we called <b>Garbage</b>.

  Header

  Start
  data 1
  End

  Garbage

  Start
  data 2
  data 3

  End

<h2>The simple but long solution</h2>

Let's see how can we extract the sections from this file.
This is the longer solution but the one that might be easier to understand:

  use strict;
  use warnings;
  use v5.10;
  use autodie;

  my $file = shift or die "Usage: $0 FILENAME\n";
  open my $fh, '<', $file;

  my $in_section;
  my @data;
  while (my $line = <$fh>) {
    if ($line =~ /^Start/) {
      $in_section = 1;
      next;
    }

    if ($line =~ /End/) {
      $in_section = 0;
      process_data();
      next;
    }
    if ($in_section) {
      push @data, $line;
      next;
    }
    # arrives here only outside of sections (Header, Garbage)
    # shall we report those line or just disregard them?
  }

  sub process_data {
    return if not @data;
    say 'Data:';
    print @data;
    say '-' x 10;
    @data = ();
  }

After the compulsory boiler-plate header, and after getting and opening
the file, we declare two global variables. One of them <hl>@data</hl>
will hold the lines of the current section. It starts out empty.
The other one, <hl>$in_section</hl> is a flag that indicates if
the current line is within a section. It starts out as <hl>undef</hl>
which indicates false.

The <hl>while</hl> loop goes over the file line-by-line and has 3 parts.
The first part recognizes the beginning of the section and sets the
<hl>$in_section</hl> flag to some true value (1 in our case).

The second part recognizes when the section ends. Turns off the
<hl>$in_section</hl> flag and calls the <hl>process_data()</hl> subroutine
that will, well, process the data in <hl>@data</hl>.

The third <hl>if</hl> statement will be true only when we are inside a section and
the only thing it does is saving the current line in the <hl>@data</hl> array.

In all 3 cases we call <hl>next</hl> at the end of the if block as we
have finished processing the current line. So we go for the next line.

What is left is dealing with the header and the garbage. Depending on the task
you might want to disregard any data outside of the sections or warn about the fact
that you encountered such data.

As you can see the <hl>process_data</hl> function acts on the global <hl>@data</hl> array.
Our version does not do much, just prints the data to the screen, but there is an important
part in that subroutine. At the end we remove all the content from the <hl>@data</hl>
array so lines from one section won't be included in the next section.

Obviously recognizing the beginning and the end of the section will be different
and probably more difficult in your case but at lest now you have a skeleton for
the solution.

<h2>.. the flip-flop operator</h2>

Here is another, shorter solution:

  use strict;
  use warnings;
  use v5.10;
  use autodie;

  my $file = shift or die "Usage: $0 FILENAME\n";
  open my $fh, '<', $file;

  my @data;
  while (my $line = <$fh>) {
    if ($line =~ /^Start/ .. $line =~ /End/) {
      next if $line =~ /^Start/;
      if ($line =~ /End/) {
        process_data();
      } else {
        push @data, $line;
      }
      next;
    }
    # report (or not) Header and Garbage
  }

  sub process_data {
     return if not @data;
     say 'Data:';
     print @data;
     say '-' x 10;
     @data = ();
  }

We have eliminated the need for the <hl>$in_section</hl> flag and we changed the content
of the <hl>while</hl> loop. We are using the <hl>..</hl> operator which is also called the
<b>range</b> or in this case the <b>flip-flop</b> operator.

We created an if-statement with two conditions and <hl>..</hl> between the two.
This if-statement will be true exactly within the sections (between the Start and End tags)
including both the line with the Start and the line with the End.

At the the if-statement with the flip-flop checks only the first condition.
As long as that is false (in the Header) the whole if-statement will be false.

Once the first condition becomes true - meaning on the "Start" line - the
whole if-statement becomes true. From that point when this if-statement is executed
it will only check the second condition. As long as the second condition is false
the whole if-statement will remain true. At the line where the second condition is true
- meaning on the "End" line - the whole if-statement becomes false. (Though for the
End line itself it is still true).

Basically the first condition is the "on" button and the second condition is the "off" button.

In the block of the if-statement we have to deal with both the "Start" line that we just skip
and the "End" line that triggers the processing of the data we collected.

<h2>A more idiomatic way using $_</h2>

As mentioned by a couple of people in the comments, the while loop of the second solution
can be written in a more idiomatic way if, instead of the explicit <hl>$line</hl> variable
we relyed on <hl>$_</hl>, the <a href="/the-default-variable-of-perl.html">implicit topic variable</a>.
After the change the code will look like this:

  my @data;
  while (<$fh>) {
    if (/^Start/ .. /End/) {
      next if /^Start/;
      if (/End/) {
        process_data();
      } else {
        push @data, $_;
      }
      next;
    }
    # report (or not) Header and Garbage
  }

Both the read-line operator and all the regexes work by default on <hl>$_</hl>.
The only statement that does not default to using that variable is <hl>push</hl>.
Hence we had to explicitely <hl>push @data, $_</hl>.

I am usually quite against any code that uses <hl>$_</hl> explicitly but maybe
in this case the code that uses <hl>$_</hl> is clearer.

(Thanks for Gego for suggesting this)


<h2>Missing start or end-marks</h2>

In the above solution we assumed that all the "Start" and "End" marks are there
and have not dealt with cases when some of them might be missing. It could
be an interesting add-on to deal with those cases as well.

<h2>Records without an obvious end-marks<h2>

There are also files where there are no (obvious) "End"
marks of the records. Where the beginning of a new record marks the
end of the previous record. We'll deal with those in a separate article.

<h2>Official Documentation</h2>

The official documentation of the flip-flop operator can be found in <a href="http://perldoc.perl.org/perlop.html">perlop</a>
under the title <b>Range Operators</b>.


