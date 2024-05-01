=head1 Helping the next CPAN user with very little work
=timestamp 1295144347
=tags Perl, CPAN, open source, contribute

I am working on a presentation or more likely a series of presentations on <b>How to contribute to an open source (Perl) project</b>.
I have started to write down my ideas but I think it will help to prepare the talk if I wrote blog posts about the items
I am planning to talk about.

While trying to use <a href="http://search.cpan.org/dist/Pod-Simple/lib/Pod/Simple.pod">Pod::Simple</a> to process
some POD files I noticed a serious lack of documentation. I was happy that the code was there and but I was still 
missing the documentation. So I started to work through the source code and write small examples for myself to learn
how to use the code. Finally, after a few hours of research I managed to understand enough to implement what I wanted
to do.

What now? 

I could scrap my notes and go on with my next task. After all my work is done and my employer only cares that I do my work
as fast as possible. That would not be the right thing to do. For one it would mean I am exploiting the work of the open 
source developers without giving back anything. Another issue is that I would throw away knowledge I accumulated. Meaning
that 2-3 month later when someone else at the same employer will need to fix my code or implement a similar solution she will
have to learn the whole thing from scratch. 

So that would actually hurt me and the company I work for.

I could save these examples in some internal place but no one will find that as no one will think there 
is some extra CPAN related documentation within the company. That's not a really good solution either.


I can share the collected thoughts and example with the rest of the CPAN users. I did not write some kind of a <b>prefect documentation</b>
It might even contain misunderstandings. However it still will be a lot of help to the next person trying to use Pod::Simple.

<h2>AnnoCPAN</h2>

The easiest way to share my addition to the documentation is via <a href="http://www.annocpan.org/">AnnoCPAN</a>.

Looking at the documentation of <a href="http://search.cpan.org/dist/Pod-Simple/lib/Pod/Simple.pod">Pod::Simple</a>
There is a link on the right hand side called <b>Annotate this POD</b> that leads to the parallel page on AnnoCPAN. 

Once on the AnnoCPAN page I had to create a new account which was actually very easy. I just clicked on
<b>new user</b> on the top right corner, filled out the form and I was already in the system.

Unfortunately that brought me to the front page of AnnoCPAN so I clicked back twice and then reloaded the
page about Net::Oauth2. then I could see it and I was already logged in.

On the right hand side of the page I saw lots of little icons. <img src="/img/annocpan_note.gif" />
Clicking on any of those opened a little editor window that allowed the addition of a comment with a <b>save</b> button.

That's it.

Adding some extra documentation is very easy and anyone using search.CPAN.org will be able to see it.

