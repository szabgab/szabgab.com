=head1 Open File in Perl
=timestamp 1324474389
=tags Perl, open, file, OOP
=indexes File::Open, fopen, File::Open::OOP, oopen



After explaining how to <a href="/modern-perl-tutorial-part-05--writing-to-files.html">open a file for writing</a> and how to 
<a href="/perl-open-and-read-from-files.html">read from a file in Perl</a> I got a lot of comments that
I should teach more "modern ways" for handling files. People pointed to [dist://IO::All] and that
can certainly be intersting but I found [dist://File::Open] by Lukas Mai to be nice and simple.
I even extended it and created [dist://File::Open::OOP].



There are various ways to read from text a file in Perl. We have already seen
how to do it with the tools available in the language itself. Now we are going to
see an even simpler way using a modules from CPAN.

<h2>Open a text file for reading</h2>

If you'd like to read from a text file line-by-line, first you need to open it.


  use File::Open qw(fopen);
  my $fh = fopen $file;

  while (my $row = <$fh>) {
     print $row;
  }

In this example we are using the [dist://File::Open] module written by Lukas Mai which is a thin
wrapper around the <hl>open</hl> function of Perl. It provides an interface that, to me, looks
much nicer than the standar open function.

There are 2.5 differences:

<hl>fopen</hl> returns the file-handle instead of putting it in the first parameter.

It throws an exception when the file cannot be opened so it eliminates the need of the
<hl>or die</hl> part and that of <hl>autodie</hl> for <hl>open</hl>.

It defaults to reading a file but you can supply the opening mode as a parameter.

<h2>Open file for writing</h2>

If you'd like to open a file for writing you would write:

  fopen $file, '>';

or better yet:

  fopen $file, 'w';

That's the half difference. That you can use letters to indicate the file opening mode.

<h2>Reading non-ASCII files</h2>

When reading a file that is saved with UTF-8 encoding it is important to
explicitelly tell this to Perl. The way to do that with <hl>fopen</hl> is
to pass the "layers" to the function:

  my $fh = fopen $file, 'r', 'utf8';

This way when we read from the file the data will be assumed to be in UTF-8 encoding.

<h2>Reading files in Object Oriented way</h2>

Warning: This is now experimental!

I thought it might be nicer to provide an OOP interface to the
reading and writing part so I started to extend the [dist://File::Open]
module and created [dist://File::Open::OOP].

Currently it works like this:

  use File::Open::OOP qw(oopen);

  my $fh = oopen 'filename';
  while ( my $row = $fh->readline ) {
    print $row;
  }


<hl>oopen</hl> accepts parameters just as <hl>fopen</hl> does but instead of
returning a file-handle it returns a File::Open::OOP obect. That object
can be then used to read the content of the file line-by-line
using its <hl>readline</hl> method.

I am not sure if this is nicer but then it can also be used in
two other ways:

The <hl>readall</hl> method will return all the rows as a list.

  my @rows = oopen('filename')->readall;

  foreach my $row (@rows) {
  }


The <hl>slurp</hl> method will read all the lines into a single scalar:

  my $rows = oopen('filename')->slurp;

This is not dependent on the environment. Even if I assign it
to an array it will always return a single string.

  my @rows = oopen('filename')->slurp;

<h2>What do you think?</h2>

Does this have any advantage? Should one just use [dist://File::Slurp] instead?

Should this <hl>oopen</hl> function be actually a part of the [dist://File::Open]
module? I sent an e-mail to Lukas Mai but I have not received a reply yet. Maybe
you know how to find him?

