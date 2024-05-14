=head1 Add spell-checker to various applications
=timestamp 1650439450
=tags spell-checker, hunspell



There are quite few Open Source and I guess a few closed source systems with spell-checking capabilities.




For example <a href="https://www.mozilla.org/en-US/firefox/new/">Mozilla Firefox</a> when you are in an input box or a textarea on a web page you can right-click the mouse
make sure that the "Check spelling" line is checked and then below it you can select a language.
You can add <a href="https://addons.mozilla.org/en-US/firefox/language-tools/">even more languages</a>.

The <a href="https://www.thunderbird.net/">Mozilla Thunderbird</a> email client also has a
<a href="https://addons.thunderbird.net/en-US/thunderbird/addon/grammar-and-spell-checker/">grammar and spell checker</a> with a number
of <a href="https://addons.thunderbird.net/en-US/thunderbird/language-tools/">supported languages</a> (Yiddish included)

<a href="https://www.libreoffice.org/">LibreOffice</a> has various language tools including a spell-checker.

<a href="http://www.openoffice.org/">OpenOffice</a> has a spell-checker.

<a href="https://www.chromium.org/">Chromium</a> and thus <a href="https://www.google.com/chrome/">Google Chrome</a> have built-in spell-checkers.
The former is open source, so I guess its spell-checkers are also open source. I am not sure about the latter.

As far as I understand all of these tools use <a href="http://hunspell.github.io/">hunspell</a> behind the scenes that can also be used
as a command-line spell-checker. It needs two files for each language. A <b>.dic</b> file listing the correct words and a <b>.aff</b> file
adding all kinds of rules to help the spell-checker.

I managed to create these two files from the <a href="https://diksionaryo.szabgab.com/">Ladino dictionary</a> I have been working on
and I can use it on the command-line with hunspell.

Obviously there are still a lot of improvements to be made, but one could be able to start to use it.

<h2>How to distribute the dictionary files?</h2>

The question is, how to distribute the dictionary files to the various open source systems?

Do I need to arrange for the inclusion in evert project separately?

Do I need to get the files be included in the various Linux distributions as well?

I found a document on <a href="https://wiki.documentfoundation.org/Development/Dictionaries#Adding.2FUpdating_bundled_Dictionaries">how to contribute to LibreOffice</a>
and I've submitted a <a href="https://support.mozilla.org/en-US/questions/1374771">question</a> about Firefox. Let's see what happens.

