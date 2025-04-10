=head1 Starting with Perl 6
=timestamp 1275598393
=tags Perl, Perl 6, learning, newsletter

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>


<h2>Welcome back to the Perl 6 Tricks and Treats</h2>

My 12 year old son had several attempts to learn programming
already. He started to build a web application in Perl but
without the basics and without understand English he kept
getting stuck with simple things such as references and 
5 dimensional hashes.

A few days ago we decided to put him through my regular Perl 5
training material that will let him learn the basics. He seems
to be mature enough now that he can find the joy in creating
even console based games. At least he might understand the
need to go a bit slower and not jump into a web application.

I started to teach him Perl 5 and programming in general.
We decided on Perl 5 as that's what I know the most and
its a mature language so he will be able to continue to write
his web application.
In a few days we learned about scalars, basic I/O (print and <STDIN>), 
chomp, if conditions, strings and numbers, while loops, int, rand. 
We already started to learn about reading and writing files.

All this time I kept feeling that my training material does not fit
someone who does not have the basic concepts of a computer yet and
has no background in programming. Also there were all kinds of things
I had to explain that were just not clear. e.g. the need for chomp, 
why to write the "or die" part of open() at all?

The former I could manage by adjusting the lectures to his needs, 
skipping slides that were not relevant and adding more explanations
where needed. I could not deal with the latter part, that are just 
issues with Perl 5.

Yesterday I decided that I stop the whole Perl 5 course and switch 
over to teach him Perl 6. After all his main interest is to learn
programming and to build a game for himself and for his friends. 
It does not need to be production grade and by the time he reaches
the point that he wants this to be on a public server we will have 
a much more mature Perl 6 implementation.

This will also give me an opportunity to go over my training 
material with the eyes of someone totally new to programming.

<h2>Getting Rakudo</h2>

In order to make life easier for my son I built Rakudo 
for him follow the instructions on
<a href="http://www.rakudo.org/how-to-get-rakudo">how to get Rakudo</a>

I added the directory of rakudo to the PATH so it will be easy
for him to run perl6 from the command line.

BTW he is using Ubuntu 10.4


<h2>Setting up Padre for Perl 6</h2>

I also installed Padre from CPAN (using local::lib) 
and installed the Padre::Plugin::Perl6 from CPAN.

Once I launched Padre I went to Tools/Plug-in Manager and 
enabled the Perl 6 plug-in.

Then I went to Tools/Preferences/File and colors
in File type: I selected Perl 6 and in Highlighter STD.pm
That will provide syntax highlighting for files with p6 extension.

I also turned on View/Show Syntax check

<h2>Perl 6</h2>

Let's start the code now:

  use v6;              # Even though this is not enforced when using
                       # Rakudo better to declare the version of perl.
                       # This will avoid lots of head scratching
                       # when you run it with perl 5 by mistake.

  say 42;              # prints 42 and a newline
  say "hello world";   # prints hello world and a newline
  

This was the first time, after about 2 minutes in Perl 6 that he said
"Oh that's simpler".

Values need to be stored in boxes .... so the values of the boxes
can be changed later. Therefore the boxes are called "variables".
The scalar values such as numbers and strings can be stored in so called
scalar variables.

  my $x = 42;          # Scalar variables start with $ and include
                       # letters and numbers and underscore.
                       # They are declared using the "my" keyword.
  say $x;              # They can be used just as regular scalar values.

Earlier I already explained to him that this is different from math.
Here the = sign means assignment. So the previous statement means
put 42 in the box that is called $x.

  my $name = prompt("type your name: ");

                       # This will print the string on the screen and then
                       # wait for the user to type in some text and press enter.
                       # This replaces the <STDIN> we had in perl 5.

He asked where is chomp. There is no need for chomp here as prompt()
automatically removes the newlines. 
"Oh nice", he said.


<h2>Conditionals</h2>

  if $age == 12 {
      say "he is 12";
  }

The if conditional does not need to have parentheses around it.
This looks strange to me but it he found it simpler.

I had to point out here that we have ==, two equal signs that mean
we are not assigning values but checking if they are equal or not.
I also had to explain about the difference between numerical ==
and string 'eq'. I think this will need more explanation though.


else, and elseif are the same as in Perl 5 so you can write:

  if $age < 12 {
      # young
  } else {
      # old
  }

or you can write 

  if $age < 11 {
      # too young
  } elsif $age > 13 {
      # to old
  } else {
      # good
  }


Then I showed him the chained comparison possibilities:

  if (11 <= $age <= 13) {
      say "Good, $age is in the range. We can play soccer.";
  } else {
      say "No partner for game";
  }

He loved that it is just like in math.


<h2>while loop</h2>

For English speakers it might be obvious what a while loop does
but others better translate the word for themselves and build a 
real sentence with it.
In English it sound like this:

While this is true do this.

In perl 6 it looks like this:

  while this is true {
      do this
  }

and with a real example it looks like this:

  my $num = 50;
  while $num >= 50 {
      $num = prompt("Please give a number smaller than 50: ");
  }

Actually my son kept writing code like this:

  my $num = prompt("Please give a number smaller than 50: ");
  while $num >= 50 {
      $num = prompt("Please give a number smaller than 50: ");
  }

I am not 100% sure how to eliminate that duplication in a way that 
will make sense to him as well. He thinks about this as 
"Ask the user. If the answer is incorrect, ask again."

I would probably write this code:

  my $num;
  while not defined $num or $num >= 50 {
      $num = prompt("Please give a number smaller than 50: ");
  }

which translates to "While no correct value ask for a value".

Maybe this would make more sense though:

  my $num = prompt("Please give a number smaller than 50: ")
      while not defined $num or $num >= 50;

Which is "Ask for a value as long as it is incorrect".


The "not defined $num" part still seems to be as unnecessary in 
this case but that is currently required.


I asked on the #perl6 IRC channel for a more natural solution. 
I got several suggestions in a few seconds. The one that seemed 
to make sense the most to me was:

  while (my $num = prompt("Please give a number smaller than 50: ")) >= 50 {}

Here we need the extra parentheses around the assignment or the >= comparison
would take precedence.



There was one thing that tripped us is that code like this:

  while ($num >= 50){
  }

is incorrect. People who are used to write extensive spaces won't 
fall in that trap but many beginners skip spaces in all kinds 
of places.

In this case you need to either add a space between the 
closing parentheses and the  opening curly or omit the parentheses at all.

That's all for now.

<hr>
This entry was first sent out as part of the 
<a href="/perl6-tricks-and-treats">Perl 6 Tricks and Treats</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/perl6">here to subscribe</a>.
<hr>

