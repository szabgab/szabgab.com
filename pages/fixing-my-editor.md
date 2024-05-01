=head1 Fixing my editor
=timestamp 1274072207
=tags Padre, Perl, IDE, bugs, editor, Perl IDE, Perl editor

In the "Window" menu of <a href="http://padre.perlide.org/">Padre</a> I can see the list of open files 
and I can click on the name of a file to jump to that buffer. Unfortunately recently I noticed that 
it works incorrectly. At least once I close a file, clicking on a name takes me to the wrong buffer. 

It's an annoying bug, especially if you have many files open. It is especially annoying as I recall we had
a similar bug a while ago and I think it was fixed. So first thing I went to our bug tracking system
and searched for <a href="http://padre.perlide.org/trac/search?q=%22window+menu%22&noquickjump=1&ticket=on">"window menu"</a>.
That brought 4 closed bugs but none of them was this bug. I tried a couple of other searches but nothing came up.

So I asked it on the <a href="http://padre.perlide.org/contact.html">Padre IRC channel</a> but recently
it has been a bit quiet there and it was Sunday evening GMT time so I have not received any reply.

Before filing a new bug, let's first try to analyze a bit more when does this happen.

<h2>Reconstructing the bug and reporting it</h2>

I close all the files, which means I also need to stop writing my blog for now, and then open them 
one by one and see if the menu works correctly. If it works well I'll try closing a file 
and see if the list is correct or even the list of files is corrupted and then check
if the switching is correct.

Actually a little playing with the file opening and window switching revealed a much
simpler case that does not even involve closing files. It seems to be a matter of ABC ordering.
So I <a href="http://padre.perlide.org/trac/ticket/950">opened a ticket</a>.


<h2>Searching for direction</h2>

How can I fix this bug? I could think of two strategies:

1) I can try to find the location of the code that refreshes the list in the "Window menu" and 
try to understand how does it work.

or

2) I can try to locate a revision of Padre in which this bug does not exist yet with the help of 
the bisect command of git. Indeed, even though Padre is in SVN, I am using the svn2git bridge.

As I could not find the earlier bug report I started to think that when I saw this
bug a few months ago I might have not reported it which would mean this particular 
bug was around for many moons. That would mean trying to locate the revision that broke
this might be very difficult. That might mean jumping through several versions of Padre that might 
be totally broken for various other reasons.

So even though I hardly touched the code for a while I decided to start looking at the code.

<h2>Looking at the source code</h2>

First I looked at <a href="http://padre.perlide.org/trac/browser/trunk/Padre/lib/Padre/Action/Window.pm?rev=11466">Padre::Action::Window</a>
that contains the list of actions.
Soon I understood that it only contains the static actions and not the dynamic menu options
I am looking for.

So then I looked at <a href="http://padre.perlide.org/trac/browser/trunk/Padre/lib/Padre/Wx/Menu/Window.pm?rev=11466">Padre::Wx::Menu::Window</a> 
where the actual menu is maintained. 

Soon I located the <a href="http://padre.perlide.org/trac/browser/trunk/Padre/lib/Padre/Wx/Menu/Window.pm?rev=11466#L114">refresh_windowlist</a>
method that updates the list of files in the Window menu.

What I noticed there is that the filenames are ordered for the display which is good and in the event call-backs
we set the id of the corresponding window which would be also good if we did not mix them up.

Adding some debugging prints (of $nth and $order[$nth]) could easily show that we don't set 
the call-back to hold the index of the correct editor window or buffer.

When refreshing the Window menu we don't recreate the whole menu as that was causing 
some flickering. Especially on slow machines. This means that we never update the ids of
the first few entries and we might add the same numbers again in later call-back.

<h2>Potential solutions</h2>

Once I know what is the problem I thought a couple of possible solutions:

<ol>
<li> Put the full file name in the Help entry that will also show up in the status bar and I can use
it to locate the buffer holding that file. Except that we might have a number of new buffers 
that do not have a filename.
</li>
<li> When refreshing the Window menu I could recreate the whole menu but I think we replaced that as 
that was causing some flickering.
</li>
<li> When refreshing the Window menu I could update the window number in each call-back. Except 
that I have no idea how can I replace an event handler. If I recall we tried that once and
arrived to the conclusion that you cannot do that in wxWidgets. Or at least not in the Perl binding.
We might have missed something.
</li>
<li> I could maintain a mapping from the menu items to real buffer numbers but that would be just a duplication
of already existing information that can easily go out of sync.
</li>
<li> I could put the menu number in the Help field and update it on every refresh though it is not that nice
to have the id number in the status bar.
</li>
<li> Then came the idea to fetch the label of the menu and then locate the buffer based on the name.
</li>
</ol>

In order to implement this last idea I need to be able to fetch the current menu object from within
the call-back of the event. Checking the parameters of such call-back I saw it receives two objects:
A Padre::Wx::Main and a Wx::CommandEvent object. The latter should contain some clue regarding which
menu option was clicked but looking at the documentation of
<a href="http://docs.wxwidgets.org/2.8.10/wx_wxcommandevent.html">Wx::CommandEvent</a> and trying I think
every Get method I have not found any way to get that object.

I <a href="http://www.nntp.perl.org/group/perl.wxperl.users/2010/05/msg7315.html">asked</a> the people on
the <a href="http://wxperl.sourceforge.net/support.html">WxPerl</a> mailing list. I hope there will be 
some answer to this.


  134	
  135       # Add menu entries if we have extra labels
  136       foreach my $nth ( $previous + 1 .. $pages ) {
  137         Wx::Event::EVT_MENU(
  138           $self->{main},
  139           $self->Append( -1, $label[ $order[$nth] ] ),
  140              sub {
  141                $_[0]->on_nth_pane( $order[$nth] );
  142              },
  143         );
  144       }

So as the call-back is already a closure I could add the object of the currently created menu item to it
and that would remain persistent. It required moving the creation of the menu object to a separate call,
outside the event generation (line 135 from line 139). Within the event call-back on line 141 I could use
the $item and the also external $notebook object. 
   

  134     # Add menu entries if we have extra labels
  135*    my $item = $self->Append( -1, $label[ $order[$nth] ] ); 	
  136     foreach my $nth ( $previous + 1 .. $pages ) {
  137       Wx::Event::EVT_MENU(
  138         $self->{main},
  139*          $item,
  140           sub {
  141*            my $id = $notebook->find_pane_by_label($item->GetText);
  142             $_[0]->on_nth_pane( $id );
  143           },
  144       );
  145     }

I also had to implement the new find_pane_by_label method of the 
<a href="http://padre.perlide.org/trac/browser/trunk/Padre/lib/Padre/Wx/Notebook.pm?rev=11467#L206">Padre::Wx::Notebook</a> class
but that was quite straight forward.

  206  sub find_pane_by_label {
  207    my $self  = shift;
  208    my $label = shift;
  209
  210    my @labels = $self->labels;
  211    my ($id) = grep {$label eq $labels[$_]} 0..$#labels;
  212	
  213    return $id;
  214  }

<h2>The crash</h2>

It worked well. For some of the files. Not for some other files.

I was baffled.

Ate some chocolate.

Then I added debugging prints to the find_pane_by_label method to see what is in $label
and what is in @labels. I was very surprised to see that in $label I have blog__0014.pod
even though I put in blog_0014.pod

(Please, don't laugh. That's how I write my blog.)

It seems that the GetText method returns two underscores if there is one in the file. 
I have a file called blog_0014.pod. It is displayed correctly but GetText returns blog__0014.pod. 

Scary.

I <a href="http://www.nntp.perl.org/group/perl.wxperl.users/2010/05/msg7316.html">asked about this too</a> on 
the wxperl mailing list but I did not want to wait for a reply so I went on to try something else.

I added the same text to the Help of each menu (so it will show up in the statusbar when the menu item is highlighted)
and I used the GetHelp method within the event along with an appropriate comment.


  137   # Add menu entries if we have extra labels
  138   foreach my $nth ( $previous + 1 .. $pages ) {
  139     my $item = $self->Append( -1, $label[ $order[$nth] ] );
  140*    $item->SetHelp( $label[ $order[$nth] ] );
  141     Wx::Event::EVT_MENU(
  142       $self->{main},
  143       $item,
  144       sub {
  145          # we need to use the Help here only as the Text seems to be
  146          # slightly corrupted: if filename has underscores
  147          # they will be doubled in the GetText
  148*         my $id = $notebook->find_pane_by_label($item->GetHelp);
  149*         return if not defined $id; # TODO warn if this happens!
  150*         $_[0]->on_nth_pane( $id );
  151       },
  152     );
  153   }

The <a href="http://padre.perlide.org/trac/changeset/11467">full change</a> fixed the issue.

We are left with 476 <a href="http://padre.perlide.org/trac/report/1">active tickets</a>

<h2>Cleaning up</h2>

A few hours later on the wxPerl mailing list <a href="http://www.wxperl.co.uk/">Mark Dootson</a>
pointed out that I probably need GetLabel rather than GetText.
Indeed, the GetLabel call returns the, well, label of the menu item without control characters
which means it works correctly for files with an underscore in their name.

That allowed me to eliminate the SetHelp calls.

  136   # Add menu entries if we have extra labels
  137   foreach my $nth ( $previous + 1 .. $pages ) {
  138     my $item = $self->Append( -1, $label[ $order[$nth] ] );
  139     Wx::Event::EVT_MENU(
  140       $self->{main},
  141       $item,
  142       sub {
  143*        my $id = $notebook->find_pane_by_label($item->GetLabel);
  144         return if not defined $id; # TODO warn if this happens!
  145         $_[0]->on_nth_pane( $id );
  146       },
  147     );
  148   }


The full version is in <a href="http://padre.perlide.org/trac/browser/trunk/Padre/lib/Padre/Wx/Menu/Window.pm?rev=11471">rev 11471</a>

