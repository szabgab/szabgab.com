=head1 Using mod_perl for szabgab.com
=timestamp 1184011882
=tags Perl, Perl 5, mod_perl

Huh, today I was teaching in <a href="http://en.wikipedia.org/wiki/Haifa">Haifa</a> 
so during the train ride I had some time to work on the code behind this blog. 
I used to write some simple html-ish 
text files and then generate templates to be used by the main code. The main code
was already moved to mod_perl a few weeks ago. 

So now I finally managed to change the code generating the blog pages. They are
now generate on the fly using a mod_perl handler and some [dist://HTML::Template]
based code.

That means now it will be a lot easier to update the blog entries. I just need to
write the text, upload the .pod file and the mod_perl handler will pick up the
changes.

I still have lots of work to do on the other site I am moving to this new server.

