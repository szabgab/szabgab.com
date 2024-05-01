=head1 When is the next release of Perl?
=timestamp 1245677122
=tags Perl, Perl 5, release, testing

In an open source project - especially one that involves Perl - 
most of the people just want to write code. Nearly no one wants
to do PR. It even has a bad reputation among many open source 
developers.

In Padre I constantly struggle if I should spend my time adding a new 
feature or trying to recruit more developers. The former works
better in the short term, the latter works better in the long term.
Eventually there is a balance I try to keep.

One of the things I really miss from the perl 5 porters - the people
who maintain and improve perl itself - is the communication. 

In the last couple of weeks we saw lots of blog-posts and mailing lists
posts - sometimes not in the nicest way - why there is no regular release of perl 5 and how
a speed related bug that was fixed 18 months ago was not released
in an intermediate version. In these discussions several of the p5p
people got involved but unfortunately this is mostly defensive talk.
Not good PR.

I also got fed-up with the lack of release and asked on the p5p list what
is stopping them from releasing the next version of perl and <b>what is so hard</b> 
in the release process that they cannot do it more regularly?

I got several related replies. One of the them on the mailing list others
on IRC.

According to those the next perl 5 release is within <b>a small number of weeks</b>. 
That is certainly good news. I would prefer to see a <b>Release Candidate</b> already
that people can take for a ride but in the meantime I can point you at the three major issues
around the release that need to be done:

<ol>
<li>Fix a bunch of outstanding issues.</li>
<li>The release must be stable.</li>
<li>The actual release process should be automatic.</li>
</ol>


For item no. 1 you need to talk to the perl porters or look at the topic on the #p5p IRC channel where they point you
at the <a href="http://rt.perl.org/rt3//Public/Search/Simple.html?Query=MemberOf%3D66092">list of outstanding issues</a>

Item no. 2 was addressed in an e-mail of 
<a href="http://www.nntp.perl.org/group/perl.perl5.porters/2009/05/msg146680.html">David Golden</a> and the
thread following it. That should be summarized in a document and the test automation system should be implemented.

For item no. 3 we first need to have a written document of what needs to be
done and then we can attempt to automate it. The document can be based on the e-mail of 
<a href="http://www.xray.mpe.mpg.de/mailing-lists/perl5-porters/2009-05/msg00608.html">Nicholas Clark</a>.
Actually I already created a pod version of that file that I hope soon will be added to the source tree of perl
and then it can be fine tuned and implemented.

The interesting issue is that 2. and 3. need to be implemented only once and they can be reused for every 
future release of perl 5. So if you'd like to see <b>more frequent releases</b> that's where you need to help.

Luckily those, especially no. 2, are issues that any perl hacker can get involved easily. 
They only need perl coding.


I know I am not a good PR person and I hardly know anything about what's going on in the perl 5 porters
but I hope this post helped a bit. At least it might trigger someone to write a better explanation of
the situation.

Oh and a last note, if you'd like to get involved, the description on how to deal with the
Git repository can be found <a href="http://perl5.git.perl.org/perl.git/blob/HEAD:/pod/perlrepository.pod">here</a>


