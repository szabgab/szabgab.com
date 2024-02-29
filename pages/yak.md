=head1 My Yak
=timestamp 1614245878
=tags Perl, Python

=abstract start

<a href="/yak-shaving">Yak shaving</a> in many cases is probably <a href="/recursive-development-that-leads-nowhere">Recursive development that leads nowhere</a>
but there is also <a href="/the-useful-yak-shaving">useful yak shaving</a>.

And now that I've started on process of code-reading I frequently encounter cases where I cannot keep reading a piece of code before I understand
some code construct or a module it uses.

The problem is that as I go down the rabbit hole I loose track of the original piece of code I wanted to read.
So I I'll try to use this page as my scatch-book for code reading and Yak handling.

=abstract end

## Perl uses cases of Test::Class

* Use cases of <a href="https://metacpan.org/release/Test-Class">Test::Class</a>
* <a href="https://metacpan.org/pod/File::Random">File::Random</a>

* Source code of <a href="https://metacpan.org/source/File::Random">File::Random</a>
* <a href="https://metacpan.org/release/Set-Scalar/source/lib/Set/Scalar.pm">Set::Scalar</a> - DONE: <a href="https://perlmaven.com/sets">set in Perl</a>
* <a href="https://metacpan.org/pod/Want">Want (howmany)</a>

* Reading the code of <a href="https://metacpan.org/release/Test-Class">Test::Class</a>
* It uses <a href="https://metacpan.org/pod/Attribute::Handlers">Attribute::Handlers</a>

## How Python packages are tested

* <a href="https://jinja.palletsprojects.com/">Jinja</a> is important, but probably simple to test.
* In GitHub Actions it uses Lock threads. -  DONE: <a href="https://code-maven.com/slides/github-ci/lock-threads">Lock threads</a>.
* In GitHub Actions it uses <a href="https://tox.readthedocs.io/">tox</a>.

