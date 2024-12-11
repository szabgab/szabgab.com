=head1 Python 🐍 and variable types
=timestamp 1733930408
=tags python, mypy, types

Python is one of the most flexible languages out there. For example you can easily use the same variable, to store first a number then assign a string to and later even a list of booleans. Python will accept whatever you put in the variable.

This is great but people who arrived to Python from strongly typed languages where you had to declare each variable with its type felt very uncomfortable with all that flexibility. They felt the compiler does not protect them.

So the Python community came up with some type-annotation that you can add to your code. 🎁

The problem is that Python actually disregards these type annotations. 🌲

That's how you can encounter code that looks like this:

answer :str = 42

Here we define a variable to be a string and then promptly assign an integer to it. 🦧

Python will be happy with this code.

So then what is the value of these type-annotations? Why bother and how did this happen.

The thing is that Python still disregards these type annotations, but there are external tools that can make use of them. One of them,  called mypy will check that
the code actually abides by the rules the programmers added.


I noticed at several companies that a developer started to add type annotations to the code-base, but apparently never ran mypy to actually check the type-annotation.

So when I started to help at the company we actually had misleading type annotations.

The first thing I did was setting up a CI system that would run mypy on the code-base and will fail the process if something was broken.

Well, this wasn't that simple, I had to do this gradually and it took quite a long time to clean the existing type annotations and to add more, but the whole process
made the code a lot safer and easier to maintain. 💊

Do you use type annotation in your Python code-base? If not, why not?

