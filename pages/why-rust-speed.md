=head1 Why Rust? 🦀 - Speed
=timestamp 1733141995
=tags Rust, speed, Perl, Python, Ruby

If you use Python 🐍 , Perl 🐪 , or Ruby 🔴 then one of the advantages of Rust you'll find is it speed 🚗 and general efficiency.

There are several benchmarks showing that Rust code runs at virtually the same speed as C or C++ code while the 3 dynamic languages I mentioned are substantially slower.

There are researches showing that C/C++/Rust are about 70-80 times more energy efficient than the 3 dynamic language. 📈

A small integer in Python uses 28 bytes. in Rust it can be as low as 1 byte.
Python has the advantage of allowing arbitrary large integers, but I never need anything really really big. And it has a huge price.

Short-term programmer efficiency is probably better with the dynamic languages, but if we also take in account the time of bug-fixes then it is not clear that they are indeed better. Rust forces you to write code that will avoid a large set of issues that you would encounter later on. That is, you pay the price earlier.

It might or might not be what you want.

Why do you consider Rust? What problems do you face?


[Size of integer in Python](https://python.code-maven.com/size-of-integer-in-python).

[Energy efficiency of programming languages](https://thenewstack.io/which-programming-languages-use-the-least-electricity/).

Benchmark, [speed of programming languages](https://benchmarksgame-team.pages.debian.net/benchmarksgame/box-plot-summary-charts.html)

Upcoming live presentation about [Rust thousands crate](https://rust.code-maven.com/the-thousands-crate).

