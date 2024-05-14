=head1 The license and the repository of Perl modules on CPAN
=timestamp 1357652835
=tags Perl, CPAN, license, repository



Recently I posted two articles about the
<a href="http://blogs.perl.org/users/gabor_szabo/2012/12/174-of-cpan-uploads-have-no-license-in-the-meta-files.html">license information of CPAN modules</a> and <a href="http://blogs.perl.org/users/gabor_szabo/2013/01/50-of-the-new-cpan-uploads-lack-a-repository-link.html">links to public version control systems</a> holding the source of those modules.

Today I posted an article on <a href="http://perlmaven.com/fetching-meta-data-from-meta-cpan">how to fetch META data from Meta CPAN</a> so you can check the data for yourself.



This is especially interesting for CPAN authors who would like to make it easier
to get contributions to their modules and who want to make it easier for people to use their
modules.

The data in those articles show that only about 50% of the recent uploads have the repository link
and 17% are missing the license field. If you are using the standard tools, it is really easy to
add these fields, but if you have 100 distributions on CPAN, how do you know which one needs fixing?

Even with only 10 distributions this can be an issue.

Continuing my quest to improve the Meta information provided in the CPAN distributions,
I wrote a script that let's you fetch part of the Meta-data of the most recently uploaded distribution.

You can even restrict it to a specific author. For example yourself.

In the current version of the script, it will fetch the <b>license</b> field and the <b>repository</b>
field of the distributions, but it can be easily changed to fetch other parts as well.

So you can run this script and see the statistics.

If you are a CPAN author, you can check your own modules using this script and then you can update them to include the
correct meta information.

The code is also available from CPAN.


