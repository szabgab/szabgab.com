=head1 Test Reporting system: Smolder wish-list
=timestamp 1246433080
=tags TAP, testing, Perl, test reporting, PostgreSQL, PHP, Smolder, TODO

I'd like to have a system that can hold all the artifacts of a test execution 
and that also knows a lot about TAP.
[dist://Smolder] is a good start as it knows about TAP but there are tons 
of other things I'd like to have in it.

Some of them are hard to add, others are harder.

Anyway, earlier I wrote about <a href="/reporting-test-results.html">Reporting Test Results</a>. 
Now let me write about my wish-list:

1) I'd like Smolder to <b>collect all the artifacts</b> of a test run.
Look at the data <a href="http://buildbot.buildbot.net/waterfall">Buildbot</a> collects or 
what is collected by the 
<a href="http://www.pgbuildfarm.org/cgi-bin/show_status.pl">PostgreSQL test farm</a>! 
Each run has several stages and the actual test run is only one of them. 
In a Test Reporting system I'd like to have access to all the output and error files
of all the stages.

2) The tests might create some <b>additional log files</b>, I'd like to be able to include those too.

3) One major issue we have is <b>test counting</b>. <a href="http://testanything.org/">TAP</a> 
encourages you to have a plan - the number of test
units you are going to execute in a test run - so that it can check the number of 
actually executed test to that number. Keeping the plan up to date is annoying, 
people don't like it so many use <i>no plan</i>.
Some TAP producers don't even let you plan ahead (e.g. the ones I saw in PHP) but I think
generally those that are more xUnit like won't have a test plan.

In larger settings this plan does not even help as it does not provide any 
tools to avoid reducing the test plan accidentally along with a shortcut in 
the test script:
A developer can comment out several tests temporarily and adjust the plan 
for the time while he is trying to fix a bug forgetting to revert these changes
after he is done.


Smolder could help a bit here:
On the first result report the administrator of the project should look at the 
reports and mark them as having the correct number of tests. Then if Smolder 
notices a test report with a different number of test for the same test file 
it should raise an alert. The project administrator can examine the change
and decided if that is the new correct number of tests setting the new expected number 
to this or if it was changed by mistake.

4) <b>History of unit tests</b>. If we would like to be able to provide a history 
based on the actual test units (calls to an ok() function) then we need to 
have some unique identifier for each test as we cannot assume that the test 
number or the test name will remain the same. After all people sometimes insert
new tests or remove old test at the beginning of the test scripts and 
the names can change.

Smolder could also help here too. It could track the test numbers and test names. 
If it sees a change it can alert the project administrator who can then 
use some GUI to connect the old test units to the new ones.

Both involves some manual work but I think large organizations will be 
ready to invest that work in order to get the benefit of greater control 
and better reports.

What would you like to have in your test reporting system?

