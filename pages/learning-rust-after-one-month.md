=head1 Learning Rust - after one month
=timestamp 1688883309
=tags Rust

=abstract start

I have been learning Rust for almost a month now. I made some nice progress, but I still feel very frustrated. I still feel a total newbie
and there are still a lot more things to learn.

However, I feel I should take a little break now and describe what I did so far to learn Rust.

=abstract end

Reading [The Rust Programming Language](https://doc.rust-lang.org/stable/book/) is not easy for me.
On one hand I feel overwhelmed by the text and I am too lazy to read all the text. When I try to read it there are many things that I do no understand.
I was skipping a lot of the text as I did not quite understand it.

At one point, about 2 weeks after I started learning Rust, I got back and started to read the book from the beginning.
This time it made a lot more sense as I already had some experience with some of the parts of the book.
So my little conclusion here is that it is ok if I don't understand everything on the first read.
I will have to get back and re-read the material.

I did a lot of experimenting, writing small examples that would be part of my [Rust slides](https://code-maven.com/slides/rust/).
I even recorded a number of videos trying to explain what I understood so far. Writing the examples and then trying to explain them make
me understand the material more.

I tried to use a number of [Crates](https://crates.io/) (3rd party libraries) and included the examples in the slides.
It was also a bit frustrating. In one case there a line of code was missing from the example. [Not any more](https://osdc.code-maven.com/articles/small-contribution-is-still-valuable).
In another case the explanation what to put in the Cargo.toml was [missing from the README](https://github.com/serde-rs/serde/pull/2488). At least I as a newbie was missing it.

Besides the small examples I started to write an application in Rust. The [Rust Digger](https://rust-digger.code-maven.com/).
This makes me look up constructs in the language that I have not covered in the book yet. Obviously, if experienced Rust programmers
would look at the source code, they would certainly run away screaming. I don't mind that my Rust is not "idiomatic" and that it is
probably quite wasteful. Making progress with the application makes me feel good and hopefully soon I'll be able to start
using the application to find Crates where I can make small contributions.

In time, as I learn more about Rust I'll be able to refactor my code to be better. Who knows maybe someone more knowledgeable about Rust will look at it and send me suggestions.

I am now trying to read the source code of some simple Crates. Trying to make sense of the code and adding tests. I think that
adding tests is a great way to learn and also to [contribute to open source](https://osdc.code-maven.com/).

This way I'll see how others write code and will learn how to write tests.
Specifically I looked at [csv](https://crates.io/crates/csv) as I am also using it, but that crate looked intimidating to me.
Then I looked at [pretty_ini](https://crates.io/crates/pretty_ini). It hardly has any documentation or tests.
I already managed to add an assertion to the tests. After adding a few more I'll send a pull-request.

Update: [my asserts were accepted](https://github.com/eVisualUser/pretty-ini/pull/2).

