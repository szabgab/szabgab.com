=head1 What to do with legacy Perl code?
=timestamp 1614246786
=tags Perl, legacy

=abstract start

There are many companies out there with enourmous Perl code-bases that saw their origins in the early 2000s and even before that.
These are the huge legacy code-bases that of handle millions and billions of dollars, but no-one really maintains them.

What can you do with them?

=abstract end

<h2>Keep the old legacy</h2>

One course of action is to keep doing the same as has been done for the past 10-20 years.
That is, nothing. Hope that there won't be any major issues while you are responsible for the team. Tell them to make minimal changes.

This is a frequent response. I can't say it is incorrect, but it does not really do any good to anyone. The people who need to maintain
such code-base will probably hate it and fear it. They won't like the company either. There will be all kinds of problems
no one can explain. I don't think I can help much here besides sharing my sympathy.


<h2>A total rewrite</h2>

The other extreme is to decide to replace the whole system. Usually also switching programming language. The language switch is
usually necessary as that allows people to blame the bad project on the language and say that the new project will be much better than
the old one because they picked a better programming language.

However these rewrites are dangerous. They take a lot more time than anyone thinks of and in many cases they will replicate the same problems
the original system had.

Nevertheless this is a valid solution as well, but one needs to be really careful with it.
You will certainly need to still understand the depth of the Perl-based solutions because in many cases just looking from the outside
you won't get all the answers.

<h2>Gradual improvement</h2>

If you accept that this code won't go away soon and that it will need to adapt to the changes then you will be ready to make investments.
You know that even if the code-base hardly changes you will have to replace the hardware it is running on that will require a change in the
operating system (even if it is only an upgrade from an ancient version of Linux to a newer one) that will bring a lot of changes.

For example the version of Perl will change.

Bigger changes in the world might require that you totally switch operating system between Linux, Mac OSX, and MS Windows.
Although Perl is quite good at being platform independent I am sure that if a piece of code has not been tested on an operating system
you will run into one of the few differences.

Hey, you might even need to move you application to start running in the cloud. That's a whole lot of change. How can you make your application
be ready for it?

<h3>How to do it</h3>

A this point there are plenty of things you can do, for example start writing test, describe the development environment,
automate the setup of development and test environments, set up CI system. However the details of these should be another post.

