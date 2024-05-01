=head1 Embedding Perl 6 in Perl 5
=timestamp 1237797959
=tags Perl 6, Perl, Rakudo, Parrot, newsletter, grants

=abstract start

In this part of the <a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>
newsletter we build Inline::Rakudo, a perl 5 module that allows us to embed perl 6 code
in our existing Perl 5 script. For example if you happen to build an 
<a href="http://padre.perlide.org/">IDE for Perl in Perl 5</a> then it might be very 
useful to be able to run Perl 6 code within your process.

=abstract end

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

Last year I proposed a project to integrate Parrot into Padre, 
the Perl IDE I have been playing with for some time. I asked
TPF for a grant and my proposal was accepted.

Then, just a few days ago I bailed out from the grant as I felt
I am not up to the task. (<a href="/ending-the-padre-and-parrot-integration-grant.html">Ending the Padre and Parrot integration grant</a>)

Yesterday night as I returned from the Telux/OSDC/Israel.pm meeting
from Tel Aviv University - where I talked about Perl 6 - I saw
Jonathan Worthington on the #perl6 channel on IRC and with his help
I managed to put together an initial version of embedding Rakudo
into Perl 5. (OK, he told me what to write and I typed in).

So let me show you how this works.


<h2>Embedding Perl 6 in Perl 5</h2>


<h2>Preparations</h2>

We need to prepare the environment a bit for this to work.
I had to do the following:

After building Parrot and Rakudo I set the RAKUDO_DIR 
environment variable to point to the directory 
where Rakudo was checked out. I also set the PARROT_DIR 
environment variable to point to the directory 
where Parrot was checked out (in the currently standard setup
that would be $RAKUDO_DIR/parrot).

Then I set LD_LIBRARY_PATH to point to $PARROT_DIR/blib/lib/

This is what I have now in .bashrc

   export RAKUDO_DIR=$HOME/work/rakudo
   export PARROT_DIR=$RAKUDO_DIR/parrot
   export LD_LIBRARY_PATH=$PARROT_DIR/blib/lib/

Furthermore I had to make sure the current working
directory is $PARROT_DIR when I run the scripts.
The scripts can reside anywhere.

If I stand in another directory besides the PARROT_DIR
I get the following error:

   "load_bytecode" couldn't find file 'PCT.pbc'
   current instr.: '' pc 743 (src/classes/Object.pir:20)
   called from Sub 'myperl6' pc 3 (EVAL_1:3)

All this I did on Ubuntu/GNU/Linux but I guess it 
would work on MS Windows as well.

<h2>Building Parrot::Embed</h2>

I also had to build the Parrot::Embed module which is in the 
ext/ subdirectory of Parrot. The following is the process:

    cd $PARROT_DIR/ext/Parrot-Embed/
    perl Build.PL
    perl Build
    perl Build test

<h2>Hello World</h2>

The following Perl 5 script uses PIR - one of the languages
of Parrot to load the Rakudo byte-code

    #!/usr/bin/perl 
    use strict;
    use warnings;

    die "need PARROT_DIR" if not $ENV{PARROT_DIR};
    unshift @INC, (
        "$ENV{PARROT_DIR}/ext/Parrot-Embed/blib/lib",
        "$ENV{PARROT_DIR}/ext/Parrot-Embed/blib/arch",
    );

the above is plain Perl 5 code adding two directories to
the @INC include path.

    require Parrot::Embed;
    my $interp = Parrot::Interpreter->new;

Firing up the Parrot virtual machine embedded into Perl 5

    my $perl6 =<<"END_PIR";
    .sub myperl6
        load_bytecode '$ENV{RAKUDO_DIR}/perl6.pbc'

        .local pmc compiler, invokable
        compiler = compreg 'Perl6'
        invokable = compiler.'compile'( '"hello world".say' )
        invokable()
    .end    
    END_PIR

This is the preparation of the PIR code.
It first loads the Rakudo byte-code, 
then invokes it with the given perl 6 code.


    my $eval = $interp->compile( $perl6 );
    my $myperl6 = $interp->find_global('myperl6');
    $myperl6->invoke( 'PS', '' );

This is where we compile the PIR code, locate the 
newly created PIR subroutine called myperl6 and then 
invoke it.

That's it. At least it works on my computer...

<h2>Inline::Rakudo ?</h2>

We need more than that and it would be nice if all this could be 
moved to an external file. So I created a Perl 5 module that 
will hide all the details and will allow retrieving values from 
the perl 6 code. The way it can be used now is simple but it 
still needs lots of improvements.

Here is what the end user would write in a perl 5 script:

    #!/usr/bin/perl 
    use strict;
    use warnings;

    use Inline::Rakudo;

    my $rakudo = Inline::Rakudo->new;

    my $code  = <<'END_CODE';
    sub f($n) {
        return $n+1;
    }
    END_CODE

    $rakudo->run_code($code);

    print $rakudo->run_code('f(41)'). "\n";


Which will print 42.


<h2>The implementation of Inline::Rakudo</h2>


    package Inline::Rakudo;
    use strict;
    use warnings;

    sub new  {
        my ($class) = @_;
        my $self = bless {}, $class;
        $self->{parrot} = _load_rakudo();
        return $self;
    }

The part of loading the byte-code of Rakudo was separated
to the _load_rakudo function and it is called 
in the constructor of the Inline::Rakudo class.


    sub _load_rakudo {
        die "need PARROT_DIR" if not $ENV{PARROT_DIR};
        unshift @INC, (
            "$ENV{PARROT_DIR}/ext/Parrot-Embed/blib/lib",
            "$ENV{PARROT_DIR}/ext/Parrot-Embed/blib/arch",
        );
			
        require Parrot::Embed;
        my $interp = Parrot::Interpreter->new;

    my $load_rakudo =<<"END_PIR";
    .sub load_rakudo
        load_bytecode '$ENV{RAKUDO_DIR}/perl6.pbc'
    .end
    END_PIR

        my $eval = $interp->compile( $load_rakudo );
        my $lr   = $interp->find_global('load_rakudo');
        my $pmc  = $lr->invoke( 'PS', '' );
        return $interp;
    }

The run_code method can receive an any Perl 6 code
it will compile it and run it returning the results

    sub run_code {
        my ($self, $code) = @_;

        my $perl6 =<<"END_PIR";
    .sub myperl6
        .param string    in_string
        .local pmc compiler, invokable
        .local string result
        compiler = compreg 'Perl6'
        invokable = compiler.'compile'(in_string)
        result = invokable()
        .return(result)
    .end
    END_PIR


        my $eval = $self->{parrot}->compile( $perl6 );
        my $foo = $self->{parrot}->find_global('myperl6');
        my $pmc = $foo->invoke( 'PS', $code );
        return $pmc->get_string();
    }

    1;

That's it.

I hope someone will pick up this code and add a nice API
to it so it will be seamless to use it from Perl 5.

<h2>Getting Perl 6</h2>

I am using and recommending the Rakudo implementation
of  Perl 6 that runs on top of the Parrot Virtual Machine.

See the up-to-date instructions on 
<a href="http://rakudo.org/how-to-get-rakudo">how to get Rakudo</a>

That's it for now.

<h2>Comments and Discussion</h2>

I am always open to comments and criticism 
(just have a positive spin to it :-)
So if you find any issue with the examples,
please don't hesitate to let me know.

If you'd like to ask question about Perl 6, 
probably the best would be to sign up on the Perl 6 
users list by sending an e-mail to

    perl6-users-subscribe@perl.org

You can also look at the archive of 
the <a href="http://www.perl6.org/">perl6-users list</a>.

Previous issues of this newsletter can be found on my
<a href="http://szabgab.com/perl6-tricks-and-treats">Perl 6 web site</a>

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

