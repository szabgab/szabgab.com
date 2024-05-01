=head1 Spine, the Perl CMS (Content Management System)
=timestamp 1236495095
=tags CMS, Perl, Perl 5, open source

=abstract start

An unrequested criticism of 
<a href="http://spine.sourceforge.net/">Spine, the Perl CMS</a>. Written with goo intentions.

=abstract end

After I saw <a href="http://use.perl.org/~Beatnik/journal/38605">Hendrik Van Belleghem</a> 
mentioning the <a href="http://www.techworld.com.au/article/278847/open_source_identity_spine_cms_creator_hendrik_van_belleghem">
Spine interview with him on the Australian Techworld</a> I thought I'd take a look at it.

Let me write down my comments so far.

<ul>
<li>It was really hard to find it either using 
<a href="http://spine.sourceforge.net/">spine cms</a> or 
<a href="http://spine.sourceforge.net/">open source cms perl</a>.
Others might search for CMS in other ways but this alone can contribute
a lot to the fact Beatnik mentioned spine does not have many users.
<li>The Perl blogging community could could support this project by mentioning it 
in their blogs and linking to its web site.
<li>After I reached the web page my eyes started to hurt. I am very bad at web design so 
I should not say a word but I think the way SPINE is written made me dizzy. 
I don't think it is a good strategy.
<li>The slowness of my Internet connection might be the reason but it took many
second till the screenshots showed after clicking on their link. 
Once I saw them I was no convinced either. I know it is difficult to show both 
a full view of how the application looks and readable text but the way it 
is now would put me off if I was really looking for a CMS.
<li>BTW there is no link to <a href="http://spine.sourceforge.net/styles.html">styles</a> 
from the menu bar. It would be nice to add one.
<li>When my mouse is over a menu item sometimes it blinks (using Firefox 3.0.7 on Ubuntu 8.10)
</ul>

So let's try installing it

<ul>
<li>The <a href="http://spine.sourceforge.net/install.html">installation instructions</a> 
do not include a link to download the application itself. 
<li>I know there is a link on the navigation bar but not in the text of the installation
and even that link lead me to the main Sourceforge web site and not the actual download page.
IMHO there should be a single link to the actual file you need to download. (Oh, interesting,
after I wrote this down I went back to my browser and clicked on the link again that lead me
to the download page this time. A sourceforge hiccup I guess.)
<li>The last release was on August 29, 2007 - a year and a half ago - an it is marked as <i>beta</i>.
Not promising.
<li>After downloading and unzipping it I looked for the tests. After all I am interested mainly 
on how it is being testes. Unfortunately I could not find any.
<li>Then I looked for the version control - maybe the tests are not distributed - but I could
not find them. Having an easily reachable version control would increase the chances more contributors.
</ul>
So the this blog entry did not come out positive as I hoped it will. I hope I am not making Beatnik
mad at me that I am writing this. Let me add a few more suggestions here:

<ul>
<li>Setup a public version control and publicize it
<li>Start writing tests
<li>Start releasing versions to CPAN as well (First I'd rename the main name-space to Spine
instead of SPINE)
</ul>

