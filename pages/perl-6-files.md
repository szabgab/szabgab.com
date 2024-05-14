=head1 Perl 6 files
=timestamp 1247571588
=tags Perl, Perl 6, files, newsletter



As part of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter we are dealing with reading and writing files.



<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

Sorry for the random scheduling of these posts. Sometimes I am too 
busy at clients, other times I am busy with Padre, my main open source
project.

If you don't know about it yet Padre is and IDE for Perl. 
It was originally started as an IDE for Perl 5 but soon it 
turned out to be a good platform to become 
an IDE for Perl 6 as well.

It is interesting though understandable that most of the 
beginner-friendly features of Padre are driven by the 
Perl 6 plugin development. After all the Padre developers know 
Perl 5 quite well but we are still only at the beginning of our 
Perl 6 learning curve.

<a href="http://ahmadzawawi.blogspot.com/">Ahmad M. Zawawi</a> (azawawi) invested a lot of energy and created
a very useful Perl 6 plugin for Padre and a few nice blog entries as well:

So if you are not yet convinced that you should give Padre and its Perl 6 plugin
a try, take a look at his posts:

<a href="http://ahmadzawawi.blogspot.com/2009/06/padres-perl-6-support-and-ecliptic.html">Perl 6 support and Ecliptic</a>

<a href="http://ahmadzawawi.blogspot.com/2009/06/padres-perl-6-quick-fixes-in-action.html">Perl 6 Quick Fixes in Action</a>

<a href="http://ahmadzawawi.blogspot.com/2009/07/whats-new-with-padre-perl-6.html">What's new with Padre Perl 6?</a>


<h2>Perl 6 files</h2>

In the previous posting I wrote about arrays. There is a lot 
more one could do with array in Perl 6 but lets look at the file
operations now as without reading and writing files coding
might not be that useful.


<h2>Open a file</h2>

As in other high level languages one has to open a file in order to read
from it or to write to it. In Perl6 it is done by the open()
function imported from the IO class. It can receive several parameter
but the two are very important: 
The name of the file and the mode.
In order to open a file for reading the mode need to be :r.
The function either returns a file handle that should be placed in a 
scalar variable or returns undef in case of failure.

    $fh = open $filename, :r

Once we have an open file handle we can use the get method ($fh.get)
to read one line from the given file.

One could read many lines using consecutive calls to the get method
but there are better ways to do that.

Currently I think Rakudo throws an exception if the file cannot 
be opened but I think the spec says that it should just return undef.

The specifications of all the IO of Perl 6 can be found in 
<a href="http://perlcabal.org/syn/S32/IO.html">S32-setting-library/IO.pod</a>

    use v6;

    my $filename = "data.txt";

    if (my $fh = open $filename, :r) {
        my $line = $fh.get;
        say $line;
    } else {
        say "Could not open '$filename'";
    }


<h2>Process a file line by line</h2>


The lines() method of the file handle can return either all the
lines, some of the lines. As it does it lazily in the code below
we get an iterator behavior so the file is read line-by-line into
the $line variable by the for loop.

    use v6;

    my $filename = "path/to/data.txt";

    if (my $fh = open $filename, :r) {
        for $fh.lines -> $line {
            say $line;
        }
    } else {
        say "Could not open '$filename'";
    }


<h2>Writing to a file</h2>

In order to write to a file first we need to open the file for writing
with the :w mode. If this is successful we get back a filehandle 
on which we can use the regular output methods such as print(), say() or 
printf().


    use v6;

    my $filename = "temp.txt";

    if (my $fh = open $filename, :w) {
        $fh.say("hello world");
    }


<h2>Other modes for opening files</h2>

So far I mentioned the read (:r) and the (:w) write
mode of opening files but actually this is a bit of a 
speculation as at the time of the writing this has not been 
included in the specifications yet.

They are both working in Rakudo along with the append (:a)
mode but were not specified yet.



<h2>slurp</h2>

Perl 6 has a built in function to slurp in files, 
that is to read the contents of a whole file into a scalar 
variable.

    use v6;

    my $filename = 'data.txt';

    my $data = slurp $filename;
    say $data.bytes;               # print size of file in bytes

<h2>lines of file</h2>

Unlike the Perl 5 implementation of the slurp() function in Perl 6
it is not aware of its environment so the following code might
be a bit surprisings for Perl 5 developers as it reads the entire
file in the first element of the array:

   my @content = slurp $filename;
   say @content.elems;            # 1
   
If one wants to read all the lines in the elements of the array
the lines() functions is needed:

    use v6;

    my $filename = 'data.txt';

    # reads all the content of the file in the first element of the array!
    my @content = slurp $filename;
    say @content.elems;

    my @rows = lines $filename;
    say @rows.elems;


<h2>Conclusion</h2>

That's it for now. 
I plan to write a few more entries in the coming 2 weeks.
Stay tuned.


<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>




