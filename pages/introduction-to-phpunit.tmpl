=head1 Introduction to PHPUnit
=timestamp 1245063912
=tags newsletter, testing, PHP,PHPUnit

=abstract start

I am returning to the irregular postings of the <a href="/test-automation-tips">Test Automation Tips</a>.
In this entry you can ready about simple introduction to the PHPUnit 
testing framework that is used, not surprisingly, to unit test PHP applications.

=abstract end

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

<h2>Welcome back</h2>

I have to apologize as it has been more than 2 months since I 
sent out the last testing tip. 
After I came back from Oslo, where I gave the 
Test Automation Training a client contacted with an urgent project
that had a tight dead-line. That meant that up till yesterday I have
been working quite intensively at the client. That did not leave 
time for writing either the Test Automation Tips or the 
Perl 6 Tricks and Treats.

Anyway, the dead-line is now over and they are moving into a calmer 
period in which we finally going to setup a real testing framework.
I hope I'll be able to write about that.

In the meantime I have lots of other subjects I wanted to write about.

Let's start with an introduction to PHPUnit.


<h2>Background</h2>

Previously there were two posts about testing PHP using SimpleTest.
The two posts can be read here: 

<a href="/testing-php-code-with-simpletest.html">Testing PHP code with SimpleTest</a>

<a href="/testing-php-applications.html">Testing PHP Applications</a>

Today I am going to take a look at PHPUnit to see how we can test the
same simple add() function we had in that example. Just to remind you 
we had a file called mylib.php with a function in it called add()
that is supposed to add numbers and return their sum.

We noticed that calling add(1, 1) returns 2 as expected 
and calling add(1, 1, 1) also returns 2. Which is not so good.

We are not interested in fixing this code now, just to write test
and see how the success and failure is reported.

If we were doing it "manually" we would call print(add(1, 1)) and observe
the result. The problem with this is that it is extremely boring and 
error prone.

<h2>PHPUnit</h2>

<a href="http://www.phpunit.de/">PHPUnit</a> was developed and is maintained by 
<a href="http://sebastian-bergmann.de/">Sebastian Bergmann</a>.


It has an extensive manual and it seems to be more 
wide-spread than SimpleTest we saw earlier.

<h2>asserTrue</h2>

In the first example we'll try to solve the same simple problem 
as we did in the SimpleTest example. We have a function called 
add() in the mylib.php file. We would like to test that function.

We include that file in our test script and include the already 
installed PHPUnit/Framework.php

We have to create a class that extends PHPUnit_Framework_TestCase 
- the name of the class does not matter.
In the class we need to create testing functions. The name of each 
function has to start with the word 'test', otherwise the name does 
not matter. It should be descriptive as any function name.

  <?php

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  require_once 'PHPUnit/Framework.php';

  class AddTest extends PHPUnit_Framework_TestCase {

    public function testAddTwo() {
      $this->assertTrue(2 == add(1, 1));
    }
    public function testAddThree() {
      $this->assertTrue(3 == add(1, 1, 1));
    }
  }
  ?>

As opposed to the SimpleTest framework, in PHPUnit the primary way to 
execute the tests is from the command line using the phpunit script. 
So you do the following:

    phpunit cal01.php

The output looks like this:

  PHPUnit 3.3.17 by Sebastian Bergmann.

  .F

  Time: 0 seconds

  There was 1 failure:

  1) testAddThree(AddTest)
  Failed asserting that <boolean:false> is true.
  calc01.php:14

  FAILURES!
  Tests: 2, Assertions: 2, Failures: 1.

In the results you can see a single .F meaning one of the 
testing functions failed. In addition you'll see details of the failure 
giving both the name of of the test function and the test class.


<h2>PHPunit showing success</h2>

Just in order to see how it looks like I removed the failing 
test from the test script and ran the test again.

The code has only one test function:

  <?php

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  require_once 'PHPUnit/Framework.php';

  class AddTest extends PHPUnit_Framework_TestCase {

      public function testAddTwo() {
          $this->assertTrue(2 == add(1, 1));
      }
  }

  ?>


The output:


  PHPUnit 3.3.17 by Sebastian Bergmann.

  .

  Time: 0 seconds

  OK (1 test, 1 assertion)


<h2>PHPUnit with assertEqual</h2>

Just as was in the case of the SimpleTest, PHPUnit also has an 
assertEqual method that allows the separation of the expected 
value and the actual result.

The first parameter of the assertEqual method is the expected 
value and the second parameter is the actual result. Making the 
roles of the two values clear is important so in the reporting 
we can already know what was the expected and what was the
actual result.

  <?php

  require_once(dirname(__FILE__) . '/../includes/mylib.php');

  require_once 'PHPUnit/Framework.php';

  class AddTest extends PHPUnit_Framework_TestCase {

      public function testAddTwo() {
          $this->assertEquals(2, add(1, 1));
      }
      public function testAddThree() {
          $this->assertEquals(3, add(1, 1, 1));
      }
  }

  ?>

Output:

    PHPUnit 3.3.17 by Sebastian Bergmann.

    .F

    Time: 0 seconds

    There was 1 failure:

    1) testAddThree(AddTest)
    Failed asserting that <integer:2> matches expected value <integer:3>.
    calc03.php:14

    FAILURES!
    Tests: 2, Assertions: 2, Failures: 1.

The difference between this output and the one from 
the first example is that in this case the reader can know more
details about the failure. The reader can actually see that the 
expected values was 3 while the actual value was 2. That can
already give a clue where the problem might be.

<h2>assetEqual with message</h2>


    <?php

    require_once(dirname(__FILE__) . '/../includes/mylib.php');

    require_once 'PHPUnit/Framework.php';

    class AddTest extends PHPUnit_Framework_TestCase {

        public function testAddTwo() {
            $this->assertEquals(2, add(1, 1), '1+1=2');
        }
        public function testAddThree() {
            $this->assertEquals(3, add(1, 1, 1), '1+1+1=3');
        }
    }

    ?>

In case of success this does not make a difference but when the
test fails PHPUnit will display this message along with the
name of the test function and the name of the test class.
If the message is worded carefully it can further help in 
understanding the failure without even looking at the source code.
    
    
    PHPUnit 3.3.17 by Sebastian Bergmann.

    .F

    Time: 0 seconds

    There was 1 failure:

    1) testAddThree(AddTest)
    1+1+1=3
    Failed asserting that <integer:2> matches expected value <integer:3>.
    calc04.php:14

    FAILURES!
    Tests: 2, Assertions: 2, Failures: 1.

<h2>Installing PHPUnit</h2>

You should be able to install PHPUnit either by the package management system 
of your operating system or via <a href="http://pear.php.net/">PEAR</a>.

In Ubuntu 9.04 I found I could install it using 

   $ sudo aptitude install phpunit
   
but that seems to bring a very old version of PHPUnit.

In order to use PEAR first I had to install the command line tool using

   $ sudo aptitude install php-pear

Then I followed the instructions on the PHPUnit web site 
though I had to use sudo for that as it would not work as regular user.


   $ sudo channel-discover pear.phpunit.de

The the actual command:

   $ sudo pear install phpunit/PHPUnit
   
gave me the following error message:
   
    Did not download optional dependencies: pear/Image_GraphViz, pear/Log, use 
      --alldeps to download automatically
    phpunit/PHPUnit requires PEAR Installer (version >= 1.8.1), installed
      version is 1.7.1
    phpunit/PHPUnit can optionally use package "pear/Image_GraphViz"
      (version >= 1.2.1)
    phpunit/PHPUnit can optionally use package "pear/Log"
    phpunit/PHPUnit can optionally use PHP extension "pdo_sqlite"
    phpunit/PHPUnit can optionally use PHP extension "xdebug" (version >= 2.0.0)
    No valid packages found
    install failed

So I had to first upgrade PEAR which was easy:

    $ sudo pear upgrade-all
    
and then I could install PHPUnit:

    $ sudo pear install phpunit/PHPUnit
    
It might be slightly different on your operating system.

<h2>Conclusion</h2>

That's it for today. There is a lot more to say about PHPUnit 
but these examples can already get you started.

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

