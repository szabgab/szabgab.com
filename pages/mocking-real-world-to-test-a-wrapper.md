=head1 Mocking real world to test a wrapper
=timestamp 1232529172
=tags newsletter, testing, mocking, wrappers



As part of <a href="/test-automation-tips">Test Automation Tips</a>
I am discussing how to test command line tools that might make
changes in the filesystem or some other entity that should not
be changed during testing.



<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>


<h2>Welcome back</h2>

Recently John Wiersba from Ann Arbor contacted me and asked
how to test scripts that make changes to the configuration
of the operating system such as adding a user.
Thanks for the question. I'll reply with an example here.

<h2>Testing a wrapper script</h2>

At the end of the beginner level Perl class I usually 
show the students several scripts I wrote throughout 
the years while wearing various hats. This can give them
ideas on how to use Perl as a system administrator or
a DBA or a (CM) Configuration Management Engineer.

One of the common cases is to write a wrapper around existing
utilities. For example in almost every company there are some
rules on how to generate the username of an employee based
on their name.
In one place I was working as a system administrator they wanted
to have usernames built up by the first character of  the last
name of the person and the first name. All in lower case.

So for example Foo Bar would get a username bfoo.

In order to avoid the need to repeatedly type in the name and to
manually deduct the username from the users name, I decided
to write a small utility script which is a simple wrapper around
the adduser command of Linux.

The command line script gets two parameters - first name and
last name - checks if they contain only valid characters, 
computes the username and then calls adduser.
 
A simple version of the script can be found here:
 
<h3>The script to be tested</h3>
 
  #!/usr/bin/perl
  use strict;
  use warnings;

  my $adduser = '/usr/sbin/adduser';

  use Getopt::Long qw(GetOptions);

  my %opts;
  GetOptions(\%opts,
    'fname=s',
    'lname=s',
  ) or usage();

  if (not $opts{fname} or $opts{fname} !~ /^[a-zA-Z]+$/) {
    usage("First name must be alphabetic");
  }
  if (not $opts{lname} or $opts{lname} !~ /^[a-zA-Z]+$/) {
    usage("Last name must be alphabetic");
  }
  my $username = lc( substr($opts{lname}, 0, 1) . $opts{fname});
  my $home     = "/opt/$username";

  print "Username: $username\n";

  my $cmd = qq($adduser --home $home --disabled-password);
  $cmd   .= qq( --gecos "$opts{fname} $opts{lname}" $username);

  print "$cmd\n";
  system $cmd;


  sub usage {
    my ($msg) = @_;
    if ($msg) {
        print "$msg\n\n";
    }
    print "Usage: $0 --fname FirstName --lname LastName\n";
    exit;
  }

Obviously this can be extended in all kinds of directions, creating various
other accounts on other computers, on the compulsory Active Directory
for the MS Windows network and even to send a personal welcome e-mail 
to the new employee.

Of course this script needs to be tested.

<h3>Mocking adduser</h3>

We can safely assume that the adduser command works well so 
what we need to make sure is that it is called correctly. So we would 
like to run our wrapper script but we don't want it to actually
call the real adduser command as that would create our test user.

This would not be disastrous of course, we could remove the user 
later but what if our script actually needs to call some code that
has irreversible effects? E.g. send an e-mail to the whole department
introducing Foo Bar.

So what we need is to mock the adduser command. If we are very 
serious about this we will build a test machine where we actually 
replace the /usr/sbin/adduser with a script of our own that can 
report us if it was called with the expected values. That requires a 
separate server and it is probably not worth the effort and would
risk testing our application in an environment different from
the one it will run in the end.

Instead of that we go to a much simple approach. This one is 
not totally free of risks either but in our case it is probably
a better direction.
We change one line in our actual script to:

  my $adduser = $ENV{TESTING} ? $ENV{TESTING} : '/usr/sbin/adduser';

That is, if the script was running while the environment 
variable TESTING had a value then this value would be used
instead of the hard coded path to the adduser command.

Now we can already run our tests safely and let a mock-up adduser
replacement report to us what parameters were passed to
it when it was called.


The adduser_mock.pl script is very simple. It just saves
the parameters it received on the command line to a file.
The name of the file was passed to it via an environment
variable called TESTING_OUTFILE

<h3>The mocking script</h3>

  #!/usr/bin/perl
  use strict;
  use warnings;

  my $file = $ENV{TESTING_OUTFILE} or die "No TESTING_OUTFILE defined";
  open my $out, '>', $file or die "Could not open '$file' $!";
  print $out map {"$_\n"} @ARGV;


<h3>The test script</h3>

The test script then looks like this:

  #!/usr/bin/perl
  use strict;
  use warnings;

  use Test::More tests => 6;

  use File::Temp  qw(tempdir);
  use File::Spec  qw();
  use FindBin     qw($Bin);
  use File::Slurp qw(slurp);

  my $dir               = tempdir( CLEANUP => 1 );
  my $argv_file         = File::Spec->catfile($dir, 'argv');
  my $out_file          = File::Spec->catfile($dir, 'out');
  my $err_file          = File::Spec->catfile($dir, 'err');

  $ENV{TESTING}         = "$Bin/adduser_mock.pl";
  $ENV{TESTING_OUTFILE} = $argv_file;

  my $script            = "$Bin/create_user.pl";

  {
    unlink( $argv_file, $out_file, $err_file );

    system "$script > $out_file 2> $err_file";

    my @out = slurp($out_file);
    chomp @out;
    is_deeply \@out, [
      'First name must be alphabetic',
      '',
      "Usage: $script --fname FirstName --lname LastName",
    ], 'correct error message received on STDOUT';

    my @err = slurp($err_file);
    is_deeply \@err, [], 'STDERR was silent';

    ok ! -e $argv_file, "argv file does not exist - adduser_mock was NOT called";
  }

  {
    unlink( $argv_file, $out_file, $err_file );

    system "$script --fname Foo --lname Bar > $out_file 2> $err_file";

    my @out = slurp($out_file);
    chomp @out;
    is_deeply \@out, [
      'Username: bfoo',
      qq($ENV{TESTING} --home /opt/bfoo --disabled-password --gecos "Foo Bar" bfoo),
    ], 'correct error message received on STDOUT';
	
    my @err = slurp($err_file);
    is_deeply \@err, [], 'STDERR was silent';
	
    my @argv = slurp($argv_file);
    chomp @argv;
    is_deeply \@argv, [
      '--home',
      '/opt/bfoo',
      '--disabled-password',
      '--gecos',
      'Foo Bar',
      'bfoo',
    ], 'adduser was called with the correct parameters';
  }

<h3>Some Perl explanation</h3>

For those who are less familiar with Perl

qq() is just another way to write double quotes " so one won't need 
to put escape characters in a string if he wants to embed double quotes.

slurp() is a functions of [dist://File::Slurp] to be installed from CPAN.
It reads in a file and puts every line of the file in an element
of the array on the left hand side of the assignment:

  @lines = slurp("filename");


chomp() removes the newlines from the every element in the array.

use FindBin qw($Bin); imports a variable called $Bin that holds the
path to the directory where the currently running script lives.
We assume that both the adduser_mock.pl script and the test script 
are placed in the same directory where the real create_user.pl 
can be found.

We also assume that both of those scripts are executable.
( chmod +x adduser_mock.pl create_user.pl )

<h3>Some testing explanation</h3>

Test::More is the unit testing framework of Perl.

tests => 6 means we are going to run 6 unit tests, that is 6 calls
to the various ok() functions of Test::More.

ok() is the most basic of those functions, it receives a value that
is either true or false and a name. Prints "ok" or "not ok" and the
name.

is_deeply() another ok() function that gets two references
to Perl-ish data structures, in our case two references to arrays,
and a name.
It compares the two references if they contain the same data
and prints "ok" or "not ok" accordingly.

There are more such functions. See Test::More on CPAN for details.

<h2>Issues</h2>

Obviously this solution might not always work. 
I hear several complaints:

1) We cannot create a special version of our script just for testing!

Oh sure. Definitely there should be only one script. The one in production
should be changed to facilitate testing. 

2) Our developers won't change the code just to make testing easier!

In our case this is not a real problem as I we are both the 
developers and those writing our own tests but in other cases
that's a real problem.

There are many organizations where development and Quality Control 
(or as sometimes we refer to it Quality Assurance) are two totally 
separated entities and developers expect that whatever they
give to QA, those have to be able to handle.

There are also organizations where they already understood that for the
overall quality of their products and the well being of 
all the employees, the company itself and the stock holders(!) 
they should really cooperate.

That means development should add hooks to the application to enable 
easier automated testing.

That will allow much better automated test, faster development cycles,
higher product quality and better sleep at night.


<h2>Comments and Discussion</h2>

If you would like to discuss this on a public mailing list,
subscribe to the 
<a href="http://mail.szabgab.com/mailman/listinfo/test-automation">
Test Automation discussion list</a>


<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

