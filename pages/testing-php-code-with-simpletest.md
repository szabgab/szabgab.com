=head1 Testing PHP code with SimpleTest
=timestamp 1236753971
=tags newsletter, testing, PHP, SimpleTest



This is the first article of a series of articles where I am looking
at various <a href="/php.html">PHP tools</a> for test automation. How they integrate (or not)
with other test automation systems. In this article I provide an 
introduction to <a href="http://simpletest.org/">SimpleTest</a>



<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

<h2>Welcome back</h2>

I have started to write the slides for the PHP testing chapter
of my <a href="/perl-in-test-automation">test automation training</a>. 
Let me share the first few pages
with you.


<h2>Almost manually testing</h2>

In the first examples we recreate a path similar to what we 
take in the Perl introduction in my classes. It might be slow a
bit for people who are familiar with testing already but will
give the basic idea of what we try to achieve.

Let's assume we have a simple PHP library with a bunch of 
functions. It is located in our "includes" directory in the 
mylib.php file. It is used by a "web application" called 
basic_calc.php that provides a - surprise - calculator
for the web visitor.

For now, we won't test the web application itself just the functions
it uses.

In order to test the library we create a separate PHP script that 
will require the relevant library and call the add() 
function supplying various arguments and displaying the results.

Then we eyeball those results to see if they are what they should be.

Save this as SOMEDIR/intro/t01.php

  <?php

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  print add(1,1) . '<br>';
  print add(2,2) . '<br>';
  print add(1,1,1) . '<br>';

  ?>

When looking at that page with your browser, the output will look 
like this:

  2
  4
  2

Not much of an output but if we are careful we'll see that the third 
line is incorrect. The problem is that it is a lot of effort to check if
the results are correct.

BTW dirname(__FILE__) just gives the path to the directory of currently 
executing file and we know the library we are testing is relative to it.

<h2>Setup</h2>

Just so you can also follow the examples, save the following content in
SOMEDIR/includes/mylib.php 
That's the "library" we are testing.

  <?php

  function add($a, $b) {
    return $a+$b;
  }

  ?>

From looking at this code it is obvious what is the problem in the
add() function but we are now only interested in seeing how we
can test it not fixing it.

<h2>Print expected values as well</h2>

So the problem is that the test runner has to compute the expected
results every time she runs the test script. A slight improvement will 
be to show the expected results next to the actual values. 

Save this as SOMEDIR/intro/t02.php

  <?php
  
  require_once(dirname(__FILE__) . '/../includes/mylib.php');
  
  print add(1,1)   . ' == 2<br>';
  print add(2,2)   . ' == 4<br>';
  print add(1,1,1) . ' == 3<br>';
  
  ?>

Output in the browser:

  2 == 2
  4 == 4
  2 == 3

This is still hard to follow when there are lots of cases or even a few
cases with large output but it seems to be a step in the good direction.

<h2>Compare actual with expected values and print only pass/fail</h2>

Instead of manually comparing the actual results with the expected values
let the computer do the hard work and let it only print if there was a success
or a failure. We introduce some new code that will print "pass" for every case 
when the result was the expected value and "fail" when they were different.

  <?php

  require_once(dirname(__FILE__) . '/../includes/mylib.php');
  
  print (add(1,1)   == 2 ? 'pass' : 'fail') . '<br>';
  print (add(2,2)   == 4 ? 'pass' : 'fail') . '<br>';
  print (add(1,1,1) == 3 ? 'pass' : 'fail') . '<br>';

  ?>

The output in the web browser is

  pass
  pass
  fail

This is certainly an improvement but before we further improve 
our display let's turn our attention to our own testing code.


<h2>Refactor to get assertTrue</h2>

As we are also programmers we will soon recognize that there
is code duplication in our test script and will factor out the
whole printing of pass/fail part to a function that we call assertTrue().
It should receive a true or false value and it will print "pass" or "fail"
accordingly.

  <?php

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  assertTrue(add(1,1)   == 2);
  assertTrue(add(2,2)   == 4);
  assertTrue(add(1,1,1) == 3);

  function assertTrue($condition) {
    print ($condition ? 'pass' : 'fail') . '<br>';
  }

  ?>

The output

  pass
  pass
  fail

As in every refactoring the functionality and the output should remain the
same, just the implementation improves. (Hopefully)

<h2>Introduction to the PHP SimpleTest framework</h2>

That's all very nice but someone has already implemented this with a lot
of other nice features. We are going to look at the 
<a href="http://simpletest.org/">SimpleTest</a> framework of PHP. 
      

I am looking at the currently latest 1.0.1 version that already includes autorun.php.

Ubuntu packages the PHP Simpletest package but 

  sudo aptitude install php-simpletest
  
only gets you version 1.0 which is relatively old.

So the best course of action is to download the simpletest_1.0.1.tar.gz 
file from the Simpletest web site and unzip it in a place where your 
web server can reach it.

<h2>assertTrue in SimpleTest</h2>

We unzipped the simpletest tar.gz file to a directory in the course
directory structure some 3 levels above the actual examples.

The first thing we'll have to do in our code is to load the
autorun.php file from the simpletest directory. That file, as its
name also reveals will run our tests automatically when we hit the
page.

The next thing is to pay the overhead of the test writing. Luckily we'll
only need to pay it once for every group of tests. This is Object Oriented
code but even if you are not yet familiar with OO you don't have to worry.
The tests themselves are simple functions calls.

We need to create a class that extends UnitTestCase class provided 
by SimpleTest. The name ( in our example TestOfAdd ) of the class 
does not really matter but as usual, it is better if it is descriptive of 
what the tests are going to, err ... test.

Withing the class we need to implement a function ( testAdd in 
our example ) that will include the test cases. In the case of the 
function the name has to start with "test" but beyond that it 
does not matter what exactly it is. It should be descriptive.

Within the function we can call the assertTrue method on the 
$this object. For those not familiar with OO, $this is provided 
automatically and the -> notion is just a fancy way of calling 
the assertTrue() function.

  <?php

  require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  class TestOfAdd extends UnitTestCase {
    function testAdd() {
      $this->assertTrue(add(1,1) == 2);
      $this->assertTrue(add(2,2) == 4);
      $this->assertTrue(add(1,1,1) == 3);
    }
  }

  ?>

Output:

  st01.php
  Fail: TestOfAdd -> testAdd -> 
  at [.../testing/examples/php/simpletest/st01.php line 11]
  1/1 test cases complete: 2 passes, 1 fails and 0 exceptions.

With the last row being RED

So TestSimple collapses all our individual results and conveniently
only shows the aggregated result and the individual tests that actually failed.

Unfortunately this report only gives us the line number of where the assertion
that failed. No other details about the failure.

<h2>SimpleTest Success</h2>

Just in order so we see it I include an example where I removed
the failing test and in the following example all of the assertions
are successful. Actually you won't see much as this newsletter
is plain text and I cannot include the nice colors.

  st02.php
  1/1 test cases complete: 2 passes, 0 fails and 0 exceptions.

With the last row being GREEN


<h2>assertEqual showing the actual values</h2>

SimpleTest and its UnitTestCase class provides further methods
for assertions with better error reporting. In the end they
all report assertions but these others have better capabilities
in providing details on the failures.

In our case we could use assertEqual method instead of the assertTrue
method. This one should receive two values. One of them should be the
expected value the other one the actual result. The library does
not make a recommendation which is which, it treats the two values in the
same way and only checks if they are equal or not.

  <?php

  require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  class TestOfAdd extends UnitTestCase {
    function testAdd() {
      $this->assertEqual(add(1,1), 2);
      $this->assertEqual(add(2,2), 4);
      $this->assertEqual(add(1,1,1), 3);
    }
  }

  ?>

Output:

  st03.php
  Fail: TestOfAdd -> testAdd -> Equal expectation fails because [Integer: 2] 
  differs from [Integer: 3] by 1 at 
  [.../testing/examples/php/simpletest/st03.php line 11]
  1/1 test cases complete: 2 passes, 1 fails and 0 exceptions.

With the last row being RED

As you can see there is now a better explanation of what failed.

<h2>SimpleTest showing description of error</h2>

The assert* methods of SimpleTest allow an optional additional
parameter which is the description of the current assertion.
In case of failure it will be shown instead of the details of the
error

  <?php

  require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  class TestOfAdd extends UnitTestCase {
    function testAdd() {
      $this->assertEqual(add(1,1), 2, "1+1");
      $this->assertEqual(add(2,2), 4, "2+2");
      $this->assertEqual(add(1,1,1), 3, "three params 1+1+1");
    }
  }

  ?>


Output:

  st04.php
  Fail: TestOfAdd -> testAdd -> three params 1+1+1 at 
  [.../testing/examples/php/simpletest/st04.php line 11]
  1/1 test cases complete: 2 passes, 1 fails and 0 exceptions.

With the last row being RED


<h2>Further reading about PHP SimpleTest</h2>

The PHP SimpleTest framework provides lots of additional tools for 
testing your application. The documentation for the UnitTestCase 
class with the list of various assert methods can be found
<a href="http://simpletest.org/en/unit_test_documentation.html">here</a>.

<h2>Comments and Discussion</h2>

If you would like to discuss this on a public mailing list,
subscribe to the 
<a href="http://mail.szabgab.com/mailman/listinfo/test-automation">
Test Automation discussion list</a>


<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

