=head1 Subversion
=timestamp 1153282992
=skip all

<h1>Subversion and SVK</h1>

<p><a href="http://subversion.tigris.org/">Subversion</a> is a hot topic in the field of Configuration
Management. Since its first official stable release it took the Open Source market by storm and
based on the traffic on the SVN Users mailing list many commercial companies have also moved their
version control to it.
</p>
<p>
I have been providing <a href="http://pti.co.il/subversion.html">Subversion training and consulting services</a>
for some time now.</p>
<p><a href="/subversion_vs_xyz.html">Subversion compared</a> and
<a href="/subversion/">recent threads in the Subversion related mailing lists</a>
</p>
<h2>FAQ</h2>
<p>
Importing a new project:<br />
On the server:
</p>

  mkdir c:\svn
  mkdir c:\svn\repos
  svnadmin create c:\svn\repos\project

<p>
On the client:
</p>

  mkdir c:\tmp
  mkdir c:\tmp\project
  copy from original place of the project to c:\tmp\project\
  svn mkdir file:///c:/svn/repos/project/trunk -m'create trunk'
  cd c:\tmp\project
  svn import . file:///c:/svn/repos/project/trunk/

