=head1 Testing PHP Applications
=timestamp 1237128967
=tags newsletter, testing, PHP, SimpleTest

=abstract start

This is the second article about SimepleTest
(the first one was at <a href="/testing-php-code-with-simpletest.html">Testing PHP code with SimpleTest</a> ) where I discuss how to 
test an already written application top down without caring how the 
individual functions behave.

=abstract end

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>



<h2>Welcome back</h2>

I continue to write about <a href="/php.html">testing PHP</a>.
This time I'll focus on testing an already existing
web application that might, or might not have nice code.

See also <a href="/testing-php-code-with-simpletest.html">Testing PHP code with SimpleTest</a>.

<h2>Testing PHP Applications</h2>

While it is nice to know we'll be able to test
each one of the functions or classes on its own in many cases 
that's not how things work. For this testing method to work
you have to be able to separate the functionality of each function
and class and test them in isolation.

Especially when you already have a partially or fully working 
application probably written by someone else who wrote 
spaghetti code, it would be impossible to write tests in isolation. 
It will be probably also a waste of energy as soon you are going to 
start to clean up that code changing the internal structure, 
changing how functions work and building up 
- hopefully - a cleaner code-base.

In such cases it is much better to start from the top down. 
Test the functionality of the application without even knowing 
about the internal structure of the code. Actually the 
application does not even need to be written in PHP 
for this type of testing.

<h2>Fetching a web page</h2>

We are going to imitate the web browser, access a web site 
and check if the returned page contains the information as 
we expect.

We keep using the SimpleTest framework that was introduced
in the previous article.

We subclass the WebTestCase class which provides a "get"
method to retrieve a web page given a URL.

In itself that's not yet an assertion so we wrap it with
the already familiar assertTrue method. We can do that as 
WebTestClass is a subclass of UnitTestCase.

    <?php

    require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');
    require_once(dirname(__FILE__) . '/../../../tools/simpletest/web_tester.php');
    class TestOfCalculator extends WebTestCase {
        function testBasicCalc() {
	        $url = 'http://localhost:8081/php/calc/basic_calc.php';
            $this->assertTrue($this->get($url));
        }
    }

    ?>

We access the file using our browser.
The resulting output is similar to what we saw earlier when we 
just tried to test an internal function.


<h2>Application under test</h2>

In order to allow you to check out the scripts let me include
the "application" that I am testing:

    <html>
    <head><title>Scientific Calculator</title></head>
    <body>
    <h2>Basic Calculator</h2>

    <form method="GET">
    <table>
    <tr><td>Value:</td><td><input name="a" ></td></tr>
    <tr><td>Value:</td><td><input name="b"  ></td></tr>
    <tr><td></td><td><input name="submit" type="submit" value="Add"></td></tr>
    </table>
    </form>

    <?php

    function add($a, $b) {
        return $a+$b;
    }

    if ($_GET[submit] == 'Add') {
        print "Result: $_GET[a]+$_GET[b]=";
        print add($_GET[a], $_GET[b]);
    }

    ?>

    </body>
    </html>



<h2>Check web page content</h2>

The previous test only checked if a page was returned but 
not the content of the page so we add another assertion
that checks if a given string can be found in the text of the web page.

    <?php

    require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');
    require_once(dirname(__FILE__) . '/../../../tools/simpletest/web_tester.php');

    class TestOfCalculator extends WebTestCase {
        function testBasicCalc() {
            $url = 'http://localhost:8081/php/calc/basic_calc.php';
            $this->assertTrue($this->get($url));


            $this->assertText('Basic Calculator');
        }
    }
    ?>



<h2>Check web page title</h2>

The same way can can check if the page title is correct using the 
assertTitle method.

    <?php

    require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');
    require_once(dirname(__FILE__) . '/../../../tools/simpletest/web_tester.php');


    class TestOfCalculator extends WebTestCase {
        function testBasicCalc() {
            $url = 'http://localhost:8081/php/calc/basic_calc.php';
            $this->assertTrue($this->get($url));
            $this->assertText('Basic Calculator');

            $this->assertTitle('Scientific Calculator');
        }
    }

    ?>



<h2>Check web page content a failure</h2>

It's really nice to see everything working but there will be
times when you encounter a problem. For example that 
certain text is missing from the web page:

    <?php

    require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');
    require_once(dirname(__FILE__) . '/../../../tools/simpletest/web_tester.php');


    class TestOfCalculator extends WebTestCase {
        function testBasicCalc() {
            $url = 'http://localhost:8081/php/calc/basic_calc.php';
            $this->assertTrue($this->get($url));
            $this->assertText('Basic Calculator');
            $this->assertTitle('Scientific Calculator');


            $this->assertText('Real Calculator');
        }
    }

    ?>


This will fail with the following output:

    web04.php
    Fail: TestOfCalculator -> testBasicCalc -> Text [Real Calculator] 
    not detected in [String: Scientific Calculator Basic Calculator
     Value: Value:] at [.../examples/php/simpletest/web04.php line 14]
    1/1 test cases complete: 3 passes, 1 fails and 0 exceptions.
    


<h2>Checking forms</h2>

To further check if the page is correct we could check, 
using assertField(), if the form we expect to be on the 
page has the input fields as we expect them. We can even 
check if they have the correct preset values.

    <?php

    require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');
    require_once(dirname(__FILE__) . '/../../../tools/simpletest/web_tester.php');


    class TestOfCalculator extends WebTestCase {
        function testBasicCalc() {
            $url = 'http://localhost:8081/php/calc/basic_calc.php';
            $this->assertTrue($this->get($url));
            $this->assertText('Basic Calculator');
            $this->assertTitle('Scientific Calculator');

            $this->assertField('a', '');
            $this->assertField('b', '');
        }
    }

    ?>


Unfortunately due to external limitations currently this code
cannot recognize if there are more than one forms on the page 
and will mash them together for our purposes.


<h2>Submit form</h2>


The setField can be used to set the value in a field
and the click method to submit submit the form by clicking
a button. After submitting the form we should check if 

    <?php

    require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');
    require_once(dirname(__FILE__) . '/../../../tools/simpletest/web_tester.php');


    class TestOfCalculator extends WebTestCase {
        function testBasicCalc() {
            $url = 'http://localhost:8081/php/calc/basic_calc.php';
            $this->assertTrue($this->get($url));
            $this->assertText('Basic Calculator');
            $this->assertTitle('Scientific Calculator');

            $this->assertField('a', '');
            $this->assertField('b', '');


            $this->setField('a', 19);
            $this->setField('b', 23);
            $this->assertTrue($this->click('Add'));
            $this->assertText('Result: 19+23=42');
       }
    }

    ?>


<h2>Check for text that should not be there</h2>

In a previous example we checked if the parts of a form are in 
place and then immediately we submitted a form with correct values.

We could in fact check a couple of more things. For example we could check
if the "Result" string appears on the page when we access it for the first time
without parameters.

We could also submit the form with missing or bogus data and see how 
the application reacts. Especially we can use the assertNoText assertion
to check if a certain text does NOT appear on the page.

    <?php

    require_once(dirname(__FILE__) . '/../../../tools/simpletest/autorun.php');
    require_once(dirname(__FILE__) . '/../../../tools/simpletest/web_tester.php');


    class TestOfCalculator extends WebTestCase {
        function testBasicCalc() {
            $url = 'http://localhost:8081/php/calc/basic_calc.php';
            $this->assertTrue($this->get($url));
            $this->assertText('Basic Calculator');
            $this->assertTitle('Scientific Calculator');

            $this->assertField('a', '');
            $this->assertField('b', '');
            $this->assertNoText('Result:');

            $this->assertTrue($this->clickSubmit('Add'));
            $this->assertText('Result:');
        }
    }

    ?>


This way we can write test for an application without caring how it 
was written or in fact in what languages it is written. Once we 
are reasonably comfortable with our tests we can start to 
refactor the application.



<h2>Further reading about PHP SimpleTest</h2>

The PHP SimpleTest framework provides lots of additional tools for 
testing your application. The documentation for the UnitTestCase 
class with the list of various assert methods can be found
<a href="http://simpletest.org/en/unit_test_documentation.html">here</a>.

<hr>
This entry was first sent out as part of the 
<a href="/test-automation-tips">Test Automation Tips</a>.
Visit <a href="http://mail.szabgab.com/mailman/listinfo/test-automation-tips">here to subscribe</a>.
<hr>

