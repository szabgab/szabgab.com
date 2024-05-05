=head1 When a software is "done"
=timestamp 1632905811
=tags blogs

Software is almost never **"done"**. It is released with a given set of features (and bugs). You'd better prepare for the change.


* In most cases new features will be added to it later on.
* Even if no new features are added, security issues will be found and need to be addressed.
* Even if no security issue is found other bugs will be discovered and some of them will need to be fixed.
* Even if no bugs are found in the code, bugs will be found in the dependencies. Some might even be security bugs. So you need to upgrade.
* Even if you don't need to upgrade the software, the hardware your application uses will wear off and you will need to replace it. That will trigger an upgrade in the operating system that will make some changes in the environment of your application.

How can you make sure that these changes won't impact your application?

You can't.

So how can you at least notice if any of the changes had an impact on your application?

How can you do this in a reasonable time with a high level of confidence?

**You know it. You need to have automated tests with a good level of code and data coverage.**

I can help with that.

