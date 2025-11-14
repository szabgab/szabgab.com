=head1 First PR to mdBook
=timestamp 1741162612
=tags  mdBook

As I mentioned in the [first post](/contributing-to-mdbook) I was not sure where to start the code contribution.

The [CONTRIBUTING](https://github.com/rust-lang/mdBook/blob/master/CONTRIBUTING.md) file indicates that PR backlog is too big so I was not sure if adding more items to it would work.


## First Pull Request - ensure downstream works with changes

There were some open issues tagged [E-Help-wanted](https://github.com/rust-lang/mdBook/labels/E-Help-wanted).  Among them I found this one:
[Add compatibility tests](https://github.com/rust-lang/mdBook/issues/1574).
I am not sure if the direction I took is what they had in mind, but I already did something similer in other projects.
So I figured testing the downstream packages could be useful here too.

The idea is that when we change something in our library, or in this case in mdBook, we would like to make sure we don't break the code of others
who use our library. That is we don't break the downstream packages. Of course we can prove that, but if the tests of a downstream package pass with
the latest of our code, then we can assume it works. That's the most the author of the downstream checks anyway.

So I created this PR: [Test downstream crates](https://github.com/rust-lang/mdBook/pull/2558) which is the beginning of a shell script to check crates that rely on mdBook.
It has not been accepted yet, nor have I received any comments, but if the direction is accepted then we can add a lot more downstream crates.

## Test more things

There are some tests checking various error conditions, that is mistakes in the format of an mdBook that are reported by the mdbook process.
However I notieced that the tests only check if "error was reported", not the actual error message. Some people might think that checking the
exact error message is a bit too strict and requires us to repeate the text of the error messages in the test as well, and they would be right.
I just happen to like that strictness. As it turned out this also led to the disovery of some differences how mdBook works on Windows and other OS-es.
I still could not figure out the source of the difference (and it is not jus the slash vs. back-slash issue).

I fist I made a single change. That passed all the tests. I think I should have left it that way, but then I got carried away and made similar
changes to 3 more places. That's when the difference ...

[Make the error testing stricter](https://github.com/rust-lang/mdBook/pull/2560)



## First Accepted Pull Request

Then one thing lead to another and I think as I was using mdBook for one of my sites I bumped into an error message and reading the tests I noticed
this error message when there is an entry in the SUMMRARY.md file which is not a link is not tested. So I quickly wrote a test.
Just to clarify, "quickly" means I spent more than an hour on it after spending several hours wondering around the code-base.

[Test failure in SUMMARY.md when item is not a link](https://github.com/rust-lang/mdBook/pull/2561)

re-reading that title it is really confusing, but luckily Eric understood it and accepted the Pull-Request. Yay!
My first contribution to mdBookwas accepted! It is "only" a test, but tests are very valuable. They allow us to make changes fearlessly.
Better test coverages (usually) reduces the chances of breking something later and noticing only much later, when the code is already in production.


