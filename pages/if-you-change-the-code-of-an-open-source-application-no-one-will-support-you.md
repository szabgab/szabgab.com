=head1 If you change the code of an open source application no one will support you
=timestamp 1244172369
=tags open source, LinkedIn, Perl, Perl 5


Recently I had a <a href="http://www.linkedin.com/groupAnswers?viewQuestionAndAnswers&discussionID=3928855&gid=85311&commentID=4071714&trk=view_disc">discussion on LinkedIn</a> 
[might require registration] where the other participant was trying to recommend the use of proprietary 
products by saying that 

<i>It's pretty clear that even though the source is open, you will not touch the core or you will find yourself alone when you need support.</i>

On a follow-up he wrote:

<i>It's probably something like the 90-9-1 Principle. 90% just use, 9% may fix some bugs but only 1% will contribute back. </i>

I agree on the general principle. Few companies will touch the source code even if it was available legally.
On the other hand I disagree that you will find yourself alone if you do change the code. You just need to
know how to manage the change.

<h2>So when would a company want to change an open source product and how can it deal with the change?</h2>

How can a company improve the chances it gets <b>free</b> support for the open source application it uses?


1) You are <b>using one of the latest versions</b> of the product and there is a bug in it that seriously
impacts your company and your vendor (the company, the Linux distributor or the developers of the product)
does not want to fix it or it takes a lot of time for them to fix.

With open source you can fix the bug or hire someone to do so.

If you keep the bug-fix to yourself you will indeed have problem finding free support as others
don't know your code. If you share that code - give it back to the community - if it is a good fix it 
will be accepted and incorporated in the next version of the product. Not only will you get 
support for this but people will look at you as a good citizen and will provide you more 
support in a nicer way than if you would just ask for help all the time.

2) You are <b>using an old version</b> of the product because for various reasons you did not want to upgrade.
Unless there is a large number of companies/people that are in the same situation, it will be hard for you 
to find free support even if you don't change anything in the code. You should probably ask yourself if it might
be worth to upgrade.  The situation is similar to when a proprietary vendor is dropping support for an old version of
their product. Except in the Open Source case you still have the choice to stay with the old version and 
maintain it yourself.

In this case if you fix the bug (or pay someone to fix it), it is still recommended you share it with the public 
even though due to the small number of companies in the same situation it won't give you such a leverage.


3) You want to <b>add a large feature</b> or otherwise make a big change. This is the least likely case and if your 
company wants to do that you will have to be a lot more involved in the process of Open Source Development 
anyway. This is probably that 1% in the quote.


Interestingly in the Perl community currently there is some discussion on how long the community wants to support
a version of perl. 
(See <a href="http://www.modernperlbooks.com/mt/2009/05/writing-perl-5s-support-policy.html">Writing Perl 5's Support Policy</a>
and <a href="http://www.modernperlbooks.com/mt/2009/05/what-is-support-anyway.html">What is "Support" Anyway?</a>)
Though Perl being a language probably need different support policy than an application it can still provide
an interesting insight in what's going on in open source projects.


<h2>Case Study 1</h2>

A few years ago a company asked me to help contribute back the Perl code they 
changed in-house to the community. In order to avoid any legal issues they shall 
rename nameless here.

They were using [dist://DBD::ODBC], the database driver that allows perl 
code to use ODBC. It had a bug using Unicode and someone in this company 
created a patch (a fix). In order to make that work they also had to 
change [dist://DBI], the Database Independent Interface of Perl.

The problem they faced is that after they changed the code of DBI, the developer
of DBI has also changed it fixing various other bugs. They, in the company wanted 
the new features of DBI but they also wanted to have their own patches to keep working.

They arrived to the conclusion that should contribute their changes back 
to the community and as they did not have the know-how how to do that, 
they hired me, who have the experience with the open source community.

After some search I found out that <a href="http://www.alexander-foken.de/README.unicode-patch.html">there was already a patch</a>
for DBD::ODBC fixing the same problem without changing DBI. Looking at both the publicly available change and the
internal change I noticed they publicly available is a lot cleaner especially as it requires a change only to one library.
Not only was it cleaner it also use a secure way while the fix from the company was insecure.

So I told them their fix won't be accepted and asked why not switch over to the publicly available fix?
That would solve the problem and my evaluation was that replacing that patch would only require a 
couple of hours work including testing.

As it turns out the developer in the company knew about the publicly available fix when he started
to write his change so I don't understand why did they not pick the already existing fix.

In any case they rejected my suggestion and decided to stick with the in-house code which is
<b>based on an old version</b> and which is <b>insecure</b>.

<h2>Case Study 2</h2>

There is another story about a company where I am currently providing consulting. They are
using [dist://Schedule::DRMAAc] to interface the 
<a href="http://gridengine.sunsource.net/">Sun Grid Engine</a>

They have an in-house fix to some memory leak in the module. As the module has not been maintained
for a while I recommended them to send the patch to the author and upload the fixed version 
so others can also use it. They agreed, the original author was contacted and as far as I know he
also agreed. This means hopefully soon there will be a new and better version of this library available
on CPAN.

In the meantime I looked around and found a couple of other libraries that might serve us better
as the interface to SGE ([dist://Grid::Request] and [dist://ScheduleSGE]. We will have to research 
that and evaluate the cost/benefit ratio of switching to something that seems to be better maintained 
or stick to the one we already use.

<h2>Conclusion?</h2>

True in both cases we are talking about libraries and not applications. 
Both of the involved companies have lots of expertise in software development but the general
principle on how to deal with in-house fixes to open source code is the same.


So what do you think, in what other cases would a company want to change the open source code? 
How can it deal with the upstream vendor?

