=head1 My Yak
=timestamp 1614245878
=tags Perl, Python

=abstract start

[Yak shaving](/yak-shaving) in many cases is probably [Recursive development that leads nowhere](/recursive-development-that-leads-nowhere)
but there is also [useful yak shaving](/the-useful-yak-shaving).

And now that I've started on process of code-reading I frequently encounter cases where I cannot keep reading a piece of code before I understand
some code construct or a module it uses.

The problem is that as I go down the rabbit hole I loose track of the original piece of code I wanted to read.
So I I'll try to use this page as my scatch-book for code reading and Yak handling.

=abstract end

## Perl uses cases of Test::Class

* Use cases of [Test::Class](https://metacpan.org/release/Test-Class).
* [File::Random](https://metacpan.org/pod/File::Random).

* Source code of [File::Random](https://metacpan.org/source/File::Random).
* [Set::Scalar](https://metacpan.org/release/Set-Scalar/source/lib/Set/Scalar.pm) - DONE: [set in Perl](https://perlmaven.com/sets).
* [Want (howmany)](https://metacpan.org/pod/Want).

* Reading the code of [Test::Class](https://metacpan.org/release/Test-Class).
* It uses [Attribute::Handlers](https://metacpan.org/pod/Attribute::Handlers).

## How Python packages are tested

* [Jinja](https://jinja.palletsprojects.com/) is important, but probably simple to test.
* In GitHub Actions it uses Lock threads. -  DONE: [Lock threads](https://code-maven.com/slides/github-ci/lock-threads).
* In GitHub Actions it uses [tox](https://tox.readthedocs.io/).

