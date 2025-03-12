=head1 Why use Rust?
=timestamp 1741716753
=tags Rust

There are several aspects

## Technical features

* Runtime speed is similar to C/C++.
* Memory efficient.
* Memory safe - it avoids most of the memory-related bugs we encounter in C/C++ code.
* Extensive and expressive type-system. (e.g. mappint of external APIs)
* Very strict compiler - fixing bugs during compilation.
* Compiler has Very good error messages.
* Integrated package manager, build system, linter etc. [Cargo](https://doc.rust-lang.org/cargo/)
* Productivity - [on par with Go, 2x as C++ at Google](https://www.youtube.com/watch?v=QrrH2lcl9ew)
* Spend less time debugging.
* Safer to use AI generated code (because the compiler will catch a lot of issues).

## Corporate Support / Acceptance
* [Rust Foundation](https://rustfoundation.org/)  Amazon, Google, Huawei, Facebook, Microsoft
* Many other corporations support and use Rust.


## Community Support / Acceptance

* [Crates](https://crates.io/) - large ecosystem of 3rd party libraries. [See the growth](https://lib.rs/stats)
* More than 130 [user groups](https://rust.code-maven.com/user-groups).
* Growing popularity ([PYPL](https://pypl.github.io/PYPL.html), [](https://tjpalmer.github.io/languish/), [TIOBE](https://www.tiobe.com/tiobe-index/)).
* Most admired / loved language for several years [2024 Stack Overflow Developer Survey](https://survey.stackoverflow.co/2024/).
* Admitted to the Linux kernel.


## Drawbacks

* The ecosystem is less mature than for other languages.
* Not enough developers.
* Some aspects of the language still lag behind other languages (eg. Async in Go is easier).
* For embedded systems - not all hardware are supported. Yet.

## Comments

Quoting some comments from [Reddit users](https://www.reddit.com/r/rust/comments/1j8wnrk/why_use_rust/)

Obviously the type system. A high degree of expressiveness that enables a better/more robust design of the architecture. That includes: traits, generics, DUs (enums), as well as encoding lifetimes as part of the type and marker traits like Sync and Send for safer concurrency.
Where DU = Discriminated unions.
Also called ADT (algebraic data types).
Also tagged variants.

---

On the surface all the comments you mention matter but they all pale to the expressiveness of the type system. Avoiding those state checks like "is this database closed" or "is this pointer nil" at runtime and handling/testing those edge cases via unit tests are eliminated with proper rust design.

Fearless concurrency happens because the type system enforces Sync and Send, and has strict rules about mutation that prevent runtime undefined behavior.

* Easy to write and distribute(!) cross-platform code for Windows, Linux, macOS. Especially small command-line tools.

---

Learning Curve?   Rust vs. (Python, C++, Go)

The learning curve of Rust might be steeper than for other languages, but Rust will provide a much bigger protection than C++. So

## Crates (Libraries)

* [Rayon](https://docs.rs/rayon/latest/rayon/)
* [Tokio](https://tokio.rs/) to build reliable network applications.
* [Axum](https://docs.rs/axum/latest/axum/), [Rocket](https://rocket.rs/) - Web frameworks
* [Ratatui](https://ratatui.rs/) - A Rust crate for cooking up Terminal User Interfaces


