=head1 Contributing to mdBook
=timestamp 1740934417
=tags mdBook, Open Source

In this series I plan to document how I went about contributing to the Open Source **mdBook** project. I should write about my personal history with Open Source contributions, but instead of starting with that let's jump into the middle and describe the situation with the mdBook project.

## Background

mdBook is a utility to create modern online books from Markdown files written in Rust. Several Rust-related books are written in it and probably a lot of non-Rust related too. It has a [User Guide](https://rust-lang.github.io/mdBook/) written using mdBook and you can get to its [source code](https://github.com/rust-lang/mdBook/).

For a long time I was a reader of books generated using mdBook. Then at one point I thought I could generate **epub** versions of the books and share them via the [Rust ebooks](https://rust-ebooks.code-maven.com/) site. That was not too successful as the[mdbook-epub](https://crates.io/crates/mdbook-epub) backend did not have all the features. I put that project on hold.

I have an old Perl-based application hosting my sites. Some have been moved over to a new Rust-based static site generator. My slides use a Python-based static site generator. All home-grown. No one else uses them.
A few weeks ago I felt that maybe instead of improving my home-grown systems that no one else uses I should use a more popular project. mdBook seemed an obvious choice. so I already moved some of my slides and some of my sites to mdBook.

I already found a few things that are either not supported by mdBook or are broken/missing (e.g. searching for text in Hebrew, or in general in non-Latin letters). Out of box syntax highlighting for Groovy, Dockerfile and several other formats I use in my examples.


## Project status on March 2, 2025

Looking at the [GitHub repository of mdBook](https://github.com/rust-lang/mdBook/) I can make some observations.

There are 495 open issues and 854 closed issues.  9 of the open issues were opened in the last 2 months. 13 issues were closed in the last 2 months.

There are 101 open pull-requests and 1,090 closed pull-requests. 4 of the open PRs are from the last 2 months. There are also open PRs from 2018 as well. (7 year old) Some 17 PRs were closed in the all but 1 were merged.

So there is a lot of backlog, especially relative to the size of the project, but there is also ongoing development.

Almost all the activity is by [Eric Huss](https://github.com/ehuss).


## How to Contribute?

While the large backlog is very discouraging, the fact there every few days there are commits and that PRs are being merged means there is a reasonable chance that if I create a PR it will be addressed.
On the other hand I am still not sure if trying to make some changes is the best way to go ahead. Seeing this 4 years old issue on the [current State of the project](https://github.com/rust-lang/mdBook/issues/1655) and seeing the [info about Eric](https://github.com/sponsors/ehuss) it is obvious he has a lot of things on his plate. Creating more PRs would probably just add more work to him instead of reducing the workload. In another issue [Are we looking for more maintainers?](https://github.com/rust-lang/mdBook/issues/1589) Eric 

I am still rather ambivalent. What would be the best way to contribute to the project?

In order to make substantial contribution to the code I'll need to make myself familiar with it. So I started to read the code.

I started to write a [book about mdBook](https://mdbook.code-maven.com/) including videos. This helps me better understand the project and hopefully it will also helps others.

I started to go over the issues, trying to address them. I won't be able to close them, but I hope I can help answering the questions. I already managed to answer a few regarding syntax highlighting.

I could review pull-requests, but as a newcomer to the project I am quite ambivalent about this. I don't think I have the knowledge to address the PRs properly, but on the other hand without doing that I will probably never gain the experience either.
I feel it would be pretentious to comment on the work of other people who might be more knowledgeable about the project and about Rust than me.

I might be able to look at the test and add some tests.

Anyway this is the situation now. Let's see how my thoughts and my contributions evolve?

