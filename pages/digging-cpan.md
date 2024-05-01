=head1 Digging CPAN
=timestamp 1305417100
=tags CPAN, search, analyze, CPAN::Digger, Perl

I have been silent for a long time due to too much work on one hand and a long vacation on the other.
In between the two I squeezed in a little bit of coding to make my little project usable. 
At least I try to make it work for myself.

The web site is called CPAN::Digger (cpandigger.org). It is a site to 
collect and display some information about CPAN modules and other Perl code. 
It is at a very early and ugly version but some of you might find it useful.

The part that might be interesting for some people is that it is using PPI to 
collect data from the modules. It use the PPI based syntax highlighter that
was originally written for [dist://Padre] and it uses [dist://PPIx::EditorTools] 
to generate a json file with the list of methods of each package.
This is basically the <b>outline</b> view of <a href="http://padre.perlide.org/">Padre</a>.

You can already see the results on the right hand side of 
this page (http://cpandigger.org/syn/Padre/lib/Padre.pm)

It also uses [dist://Perl::MinimumVersion] to find out the minimum version of perl 
required by each module. These numbers are used to show what is the minimum version 
of perl each distribution requires.

[dist://Perl::Critic] is also used on each module using level 4 criticism. 
It is very experimental. I think it will be interesting to see what issues 
are common to perl modules and maybe draw a conclusion regarding which policies
are in consensus and which is not.

I hope some of these might be interesting to you too. 

The source code is available on <a href="https://github.com/szabgab/CPAN-Digger/">Github</a>.

Comments, criticism, bug reports and patches are welcome!

