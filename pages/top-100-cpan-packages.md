=head1 TOP 100 CPAN packages
=timestamp 1234685155
=tags CPAN, Padre

<a href="http://ali.as/">Adam Kennedy</a> has just created a list of 
<a href="http://ali.as/top100/">TOP 100 CPAN packages</a> with some interesting criterion.

There are actually two lists on his site, one of them listing the heavies CPAN packages,
those that have the biggest number of dependencies. These are the packages that's the
hardest to install as they depend on so many other things. Padre, but especially its
plug-ins are well positioned on this list. [dist://Task::Padre::Plugin::Deps] that lists
all the dependencies of all the plug-ins of Padre is on 6th places with 216 dependencies.

It is quite close to [dist://MojoMojo::Formatter::RSS] on the 2nd place 
that has 277 dependencies but a long way from [dist://Task::POE::All] on the first place
with 748 dependencies.

[dist://Padre] itself is on the 89th place with 125 dependencies.

The other list might be actually more interesting. It is the list of those packages that
are used the most. Directly or indirectly. That is, if any of those modules is broken
a lot of other packages are going to be broken. Here the leader is 
[dist://Scalar::List::Utils] with 8689 other packages depending on it.

There are also some strange names there too. For example [dist://Msql::Mysql::modules]
on the 4th place with with 8627 packages depending on it seem to be a bug in the report.
I have a hard time to believe that half of CPAN depends on something MySQL related.

