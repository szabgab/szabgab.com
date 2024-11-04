=head1 Separating the front-end, Python, and Rust sites
=timestamp 1730733228
=tags Rust, Python, Front-End, Code-Maven

The [Code-Maven](https://code-maven.com/) and [PerlMaven](https://perlmaven.com/) sites are still running on the old Perl-based infrastructure on my own server.

The [Rust Maven](https://rust.code-maven.com/) was already started on the new [Rust-based Static Site Generator](https://ssg.code-maven.com/) on GitHub pages.

The relatively new [Python Maven](https://python.code-maven.com/) site also uses the new system, but it only contains the new Python-related pages. The old ones
are still on the [Code-Maven](https://code-maven.com/) site.

In the last couple of days I've started to move some of the old pages to the new system.

I moved the [Hungarian version of Code-Maven](https://hu.code-maven.com/) and then the [Spanish version of the Code-Maven](https://es.code-maven.com/) site.
They were both very small.

Then I created a site for the [Front-End Maven](https://front.code-maven.com/) that will contain HTML, CSS, and JavaScript code.

I've also set up the [Hebrew version of Rust-Maven](https://rust-he.code-maven.com/) and the [Hebrew version of Python Maven](https://python-he.code-maven.com/).
I needed these two so I can easily publish pages for the videos I have been recording lately.

I also had to make some improvements in the perl script I use to convert the old format to the new markdown files.

I still need to add a few features to the SSG before I can move over all the pages, but hopefully soon I'll be able to do that and then I can stop that service on my server.


