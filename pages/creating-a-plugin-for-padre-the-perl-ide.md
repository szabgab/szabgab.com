=head1 Creating a plug-in for Padre, the Perl IDE 
=timestamp 1308033671
=tags Perl, Padre, Perl IDE, Perl editor, screencast

A 12 minutes long <a href="https://www.youtube.com/watch?v=RDjWFKnuhhc">video and screencast</a> on how to create a 
plugin for Padre, the Perl IDE. Introducing <b>My</b> plugin as it works in verion 0.84 of Padre.

<iframe width="425" height="349" src="https://www.youtube.com/embed/RDjWFKnuhhc" 
frameborder="0" allowfullscreen></iframe>

From the very beginning Padre had a plugin system to encourage users to add new features.
The editor comes with a skeleton of a plugin called <b>My</b> to make it easy to get started.

The menu option <b>Tools -> Plug-in Tools -> Edit My Plug-in</b> will copy read-only the skeleton 
file to the configuration area of Padre and will open it in the editor. In order to actually use
what is in the plugin you have to enable it via the <b>Tools -> Plug-in Manager</b> by 
selecting the name of the plugin and clicking on the <b>Enable</b> button.

Once enabled, you can access the menu items provided by the plugin via <b>Tool -> My Plugin</b>.

Looking at the source code of the plugin you can see the <b>plugin_name</b> method that returns
the name of the plugin. Putting an &amp; sign in-front of a character will make that character
to be a hot-key. Of course in order for you change to take effect you will need to reload the plug-in.
You can do that by clicking on the <b>Tools -> Plug-in Tools -> Reload My Plug-in</b>.

The <b>menu_plugins_simple</b> method returns the menu system of the plugin. The first value is the
actual name of plugin the second value is an ARRAY reference in which every odd value is the name of
a menu item and every even value is a subroutine reference that will be called when the menu item
is selected. You need to uncomment it and reload My plug-in in order to see how it works.

The actual implementation is further down in the file called <b>other_method</b>.

It shows several tools to make it easier to write a simple plugin.

The <b>message</b> method of the $main object of Padre creates a pop-up window with
a title and some text.

  $main->message( 'Hi from My Plugin', 'Other method' );

The <b>prompt</b> method provide a place to enter a value and it will even remember 
to previously typed value in a unique variable which is the 3rd parameter to the method.

   my $name = $main->prompt('What is your name?', 
      'Title', 'UNIQUE_KEY_TO_REMEMBER');

The Padre::Current class has a method called <b>document</b> that returns, surprisingly,
the object of the currently edited document (file).

  my $doc   = Padre::Current->document;

One has to be careful and check it for definedness but if there is a 
document currently open then this will contain the relevant object.
The <b>text_get</b> method on the document object will return the content 
of the editor:

  my $text  = $doc->text_get;

The <b>filename</b> method returns the name of the file:

 my $filename = $doc->filename

and the <b>text_set</b> method will replace the current text with the one that
was passed to it:

  $doc->text_set( $text );

These allow us to easily manipulate the content of the current editor.

<h2>Plugin to CPAN</h2>

Once you accumulated enough interesting tools in your My plug-in, you might consider
renaming it and packaging it into a CPAN module for others to enjoy as well.

<h2>Questions?</h2>

If you have any questions, the best place to ask them are the 
<a href="https://padre.perlide.org/contact.html">mailing list and IRC channel of Padre</a>.

<h2>Liked it?</h2>

If you liked the screencast, please subscribe to 
<a href="https://www.youtube.com/gabor529">my channel</a> and also 
let others people know about it.

