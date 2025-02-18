=head1 What are the considerations when you pick a programming language for a new project?
=timestamp 1739854380
=tags programming, languages

Some of my thoughts:


* Is it adequate for the task at hand? e.g. is its runtime fast enough for the job?,  Does it have a garbage collector that might stop the process? once in a while? How easy it is to use parallel programming? Async? Threads?
* Is the hardware and OS we are using supported by the language and its ecosystem?

* Is this an approved language in the the specific industry? In some industries, eg. health, automotive, aerospace, military, there are standards. Languages, or more precisely the compilers of the languages need to pass certain checks and get an official approval to be used in those industries.

* Is this an approved language? Some organizations, especially the bigger ones have a list of approved programming languages. If you work in such an organization, is the language you'd like to use on that list? How difficult will it be and how long will it take to get an approval for the selected language?

* How secure is the language? e.g. Does the language protect me from memory issues? How easy/difficult is to avoid crashes (uncaught exceptions, panics)?

* How is the tooling of the languages? IDE support? Linters? Debugger support? Packaging and installation of 3rd party libraries.
* Is there a central location for 3rd party open source libraries? How is the licensing of these libraries? What is the level of quality of the 3rd party libraries?

* How easy or difficult it is to use a 3rd party library in your organization? Do you need to pass an approval process or just install the library and use it?


* How fast can people develop in the language?


* Are there already projects in the company written in this language? Do we have in-house expertise?
* Do team members already know the language?
* How long will it take to train them to be able to start implementing the system?
* Are there local trainers and consultants available to help with the language?


* Is there a local community around the language?
* Are there enough developers locally who already know the language? How easy will it be to recruit new employees?


What do you think?
