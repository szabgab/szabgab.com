=head1 How to introduce 🦀 Rust at your company 🏭?
=timestamp 1734621241
=tags Rust

People who love Rust and work in some company writing in some other language often wonder how could they introduce Rust to their company.

I am self employed providing training and help with development projects to companies in Rust 🦀, Python 🐍, and Perl 🐪.

This means I am usually contacted by companies that either decided that they would like to explore one of those languages or that they already have some code in one of those languages
and they need some help.

So I don't decide on their programming language, but I saw a lot more companies than the average programmer. I saw how these and other languages were introduced.

* The most straight-forward way was that people started their own start-up company. There they could decide on everything. Including the programming language. However that option is rather extreme.

* In some cases when a new project started the managers did not specify the language and thus the developer(s) could pick their favorite language. e.g. think about a new micro-service.

* In many cases Perl and Python were first used in various helper projects. e.g. some command-line tool, a "script". Some in-house data processing, etc. They key here is that these projects were not in the critical path of the money-making application. At least initially they were not. Then with time and with the success of these tools they became very important and even critical to the organization. The rest of the people saw the success of the tool and the how enthusiastic the developer is. They also wanted in.

Rust is not really geared toward the "quick-and-dirty" small "scripts". It is much more valuable if you want to write robust production software. Still it can be very useful in writing command line tools.
Especially as it could be distributed in a much easier way than a Perl or Python "script" where the user needs to install the right version of Perl or Python to their computer. They need to install all the
dependencies (CPAN or PyPI) that can be tricky. With Rust you can give them a ready made executable.

* Unlike the above languages Rust can also be used as a replacement of part of the application. Especially if there is a part that needs some speed-up or needs some memory saving. One could replace part of a Python or Node project by Rust and embed the code using [PyO3](https://pyo3.rs/) or [napi](https://napi.rs/) respectively. This is also going to be the topic of the presentation of Aviram Hassan called [Microdosing Rust to your organization](https://rust.code-maven.com/microdosing-rust-to-your-organization).


I'd love to know how you started to use Rust in your company and I'd love to see you at that live online presentation.
