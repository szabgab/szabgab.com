=head1 Padre 0.39 released
=timestamp 1247133713
=tags Perl, Padre, IDE, Moose

I am happy to announce the release of v0.39 of 
<a href="http://padre.perlide.org/">Padre, the Perl IDE</a>.

The list of changes as taken from the Changes file.

<ul>
<li>Some of the refactoring code was moved to PPIx-EditorTools (MGRIMES)</li>
<li>Detection of Moose attributes in Outline view (JQUELIN)</li>
<li>Detection of MooseX::POE events in Outline view (JQUELIN)</li>
<li>Added keywords to META.yml (via Makefile.PL.) (SHLOMIF)</li>
<li>Bumped the required Test::More version to 0.88 - needed for note(). (SHLOMIF)</li>
<li>Open Selection (ctrl-Shift-O) now displays all the files it finds and lets the user select (SZABGAB)</li>
<li>Eliminate crash when pressing F3/F4 while there are no open files (#421) (SZABGAB)</li>
<li>Enable/Disable Window menu options when there are (no) open files. (#417) (SZABGAB)</li>
<li>For Cut/Copy/Paste/Select All, use the focused textctrl instead of the editor textctrl (RSN)</li>
<li>Autoupgrade ascii files to be utf-8 on save if user types in wide characters (#304) (SZABGAB)</li>
<li>Allow the user to use external (xterm) to run the scrips. (SZABGAB)</li>
<li>Add menu option to show selection as hexa or as decimal. (#36) (SZABGAB)</li>
<li>Switch to Locale::Msgfmt and generate the .mo files at install time (RSN)</li>
<li>Add number of lines to GoTo line dialog (#439) (SZABGAB)</li>
</ul>

Soon it should arrive to a <a href="http://search.cpan.org/dist/Padre/">CPAN mirror</a> near you.

Enjoy and thanks to all the people who put effort in Padre!

