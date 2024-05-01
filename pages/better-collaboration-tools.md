=head1 Better collaboration tools
=timestamp 1248240735
=tags IDE, Padre, Perl, IRC pastebin, command line, vim, Eclipse

After a break of almost 20 years I recently started to use 
<a href="http://en.wikipedia.org/wiki/IRC">IRC</a> again and found it to be a great tool
for communication in a development team. I was surprised to 
<a href="http://www.youtube.com/watch?v=RYQUsp-jxDQ">see</a> it is much more mainstream
than what I thought.  One of the drawbacks of IRC is that because of the line based
communication you cannot show a piece of code to someone. 
This is nicely solved with <a href="http://en.wikipedia.org/wiki/Pastebin">pastebins</a>.

That too has drawbacks as the pastebin shows a static version of the code on a public web site
and if you make some changes you need to paste it again. It needs a bot on the IRC channel to send the URLs
as they are pasted or you have to copy them manually to the channel. It is still a lot of
clicks you have to make. 

<h2>The IDE and the command line</h2>

Before looking at a solution let's take a look at two vastly different working environments.
I think I can safely say that there are two very separate worlds of software development. 
It is not black and white, this is just two end points of a spectrum but it is interesting
to think about this a bit.

In one group there are the <b>people who live in their IDE</b>. It provides them with version control, 
integrated language help, compilation, execution and debugging environment etc. 
Everything and the kitchen sink. They only leave their IDE for reading e-mail and browsing the web.

On the other hand there are the <b>command line people</b> who have lots of relatively small tools
for different tasks. These people usually make extensive use of the command line 
which implies they are mostly Unix/Linux/OSX users though I am sure there are similar people on 
Windows as well. In a very small minority.

I think we can safely say that there is some corellation between the development environment
and the operating system they are using.

I am not sure but I think the command line people have a lot more power in their hands. They can
go a lot deeper in their work environment. They have to understand more of the guts of the system.
Both their operating system, their work environment and probably the application they are developing 
too.  There are also a lot less of these than the IDE people.

The IDE people also have a huge advantage. They have everything integrated in one place -
hopefully in a smooth way - so they don't have to waste their time on learning and understanding
each one of the tools in use. 

In the long run I think people who know how to use the command line can be more efficient than
people using IDEs but in reality most people don't have the time to invest in the longer 
learning curve of the many tools they need to use.

Frankly also many of the command line people would like to see more integration between their tools.
No surprising that they <a href="http://use.perl.org/~Ovid/journal/39007">integrate tools into vim</a>
and even 
<a href="http://code-and-hacks.blogspot.com/2009/07/stealing-from-padre-for-vim-part-3.html">take features from Padre</a> 
to integrate them into vim.

<h2>How can Padre help? - More integration</h2>

One of the things <a href="http://padre.perlide.org/">Padre</a> could do to improve the
development environment is to provide an integrated way to help each other write an application.

Padre already has a Nopaste plugin but that still reuses a pastebin web site.
Work is being done to integrate IRC communication.
Going further the <a href="http://use.perl.org/~Alias/journal/39172">Swarm</a> project is 
aiming to allow you to share a whole document with others
- initially for viewing only but later maybe for cooperative editing.

What we could have is to allow groups of people - either in an open source project or within 
a company - to setup an IRC channel, let the Padres communicate with each other somehow and let 
the people share documents. E.g. If I want to show a snippet of code to ask for advice, 
I could select it, click on "show to others" that will bring up a window in their Padre with 
the code snippet. They don't have to know about pastebins and bots and IRC channels.
They don't need to open their browser. Right from their IDE they can communicate with others
and share documents or parts of documents.

<h2>How can Padre help? - More command line</h2>

Another thing <a href="http://padre.perlide.org/">Padre</a> should help is 
transition people from pure IDE users to partially use the command line. This way they
can slowly take advantage of the features available on the command-line.

E.g. In the Ecliptic plugin of Padre there is an open-resource window 
- the idea was take from Eclipse - that allows you to type in a filter
and it will show you the list of files in your project that match that filter so
you can open that file. No need to browse through the directory structure of the project.

My issue is that I often edit files in several projects at once. At a minimum I 
have my blog in POD format in a place totally separated from the other 
projects. So when I want to write a blog entry I have to travel all the way through
the file system to find the blog directory and the file I need to edit. On the command line
or in vim it would be much simpler both because of the tab-completition and because
it can remember tons of files I opened in the past.

The "Recent files" menu option of Padre is no help as it can only remember and 
show a very limited number of files. What I'd like to have is the same history feature the command line
or vim has. It would be nice if the open-resource window remembered the 1000 
most recent files and showed them - after filtering - so I can easily open one of them.

This will bring a command-line type feature to the IDE.

In a similar way we might have a window to filter and show the most recent commands.
E.g. if I commit a change using the SVN integration of Padre it should remember the actual svn
command and in the most-recent-commands window it should list it.


ps. I think I need to mention Perl in the post in order to be displayed on the IronMan web site...

