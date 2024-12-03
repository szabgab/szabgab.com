=head1 Shift-left testing
=timestamp 1733227658
=tags testing

WTF is shift-left testing? 🗟

It took me a while, but finally I understand it. If you imagine the process of software development to be moving from left to right then "shift-left" means moving something earlier in the development process. ⬅️

All this time I was thinking it has something to do with left-brained 🧠 people vs. right-brained 🤯 people, but no, it is just doing things earlier.

The theory, or rather the measured numbers behind the idea is that the cost of fixing bugs increases as time passes. We might even say that the cost increases exponentially.

That is, if I make a mistake. Fixing it a few minutes after that will take me some time, but if we find our about that bug 5 days later, it will take me a lot more time to fix the bug.
If we find out about the bug a month later when a customer is already using the software it might cost 30-50 times more time to fix the code. 📈

That's only the time wasted on fixing the bug. We have not even mentioned the time to get it into the hands of the customers and the cost of diminished reputation or even loss of income due to that bug,

The solution is simple. At least in theory. Create a shorter feedback loop. Write fast(!) automated tests that can be run after every change.
This will help the engineers find bugs earlier. That, in turn, will cost the developers and the whole company a lot less than getting the same reports days, weeks, or months later. ➿

Have you experienced projects with good tests?

What stops you from writing automated tests?

Can I help you with this?


![](/img/relative-cost-to-fix-bugs-based-on-time-of-detection.png)

Source of the image [The exponential cost of fixing bugs](https://deepsource.com/blog/exponential-cost-of-fixing-bugs).
