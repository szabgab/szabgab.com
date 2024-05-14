=head1 Make easy things easy and hard things possible
=timestamp 1448485630
=tags Perl



<b>Make easy things easy and hard things possible</b> was the motto of Perl from the beginning and indeed it made a lot
of things much easer back when it was released in 1987. Even in the 90's it had it. That's one of the reasons it was so successful.
Since then things changed and a lot of things that were hard back then are now expected to be easy.



IMHO, if someone wants an <a href="http://perl.org/">old language to stay relevant</a>
or a <a href="http://perl6.org/">new language to succeed</a>, among these general purpose languages
s/he needs to make sure things that are expected to be easy are going to be easy. Always.

So what are things that are expected to be easy today that were only possible 20 years ago or that
did not even exist back then?

<ul>
<li>For example processing JSON, YAML, CSV, XML, or Config (INI) files.</li>
<li>Handling zip, gzip, bz2 and similar compressed files.</li>
<li>Working with dates</li>
<li>Accessing databases.</li>
<li>Serving web pages.</li>
</ul>

Internally to the language: logging, throwing and handling errors, OOP, method signatures, and even opening files(!) is now expected to be easier than it was 20 years ago.

If a language does not provide these features "out of the box", then people who are new to this language need to do the following:

<ol>
<li>Learn about the extension mechanism of the language (e.g. <a href="http://www.cpan.org/">CPAN</a>, <a href="https://pypi.python.org/pypi">PyPi</a>,
<a href="https://rubygems.org/">Ruby Gems</a>, <a href="http://pear.php.net/">PEAR</a>, <a href="http://modules.perl6.org/">Perl 6 modules</a>)</li>
<li>Find the right module among the competing modules. (e.g. which JSON module to use?)</li>
<li>Learn how to install it or ask the sysadmins to install it.</li>
<li>Ask permission to install it from the legal department or just get over the fear of "open source".</li>
<li>Handle dependencies possibly on external packages.</li>
<li>Make sure the module is available on all the system where the code is supposed to run or find a way to package it.</li>
</ol>

And then they can start doing whatever they actually need to be doing.

Of course a seasoned programmer in the specific language working at a start-up, who also happens to be a sysadmin does not need to deal with these things,
but someone who is just starting out with one of these "dynamic scripting" languages will either suffer through all those phases or will go with the
other language where the tools s/he needs come with the standard installation of the language.

