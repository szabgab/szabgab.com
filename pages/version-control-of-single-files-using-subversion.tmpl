=head1 Version control of single files using Subversion
=timestamp 1176922296
=tags version control, cm, Subversion

Occasionally I need to keep individual files under version control.
E.g. httpd.conf the configuration file of the Apache web server or
some of the configuration files in my home directory.

It is easy to keep a directory or a directory tree under Subversion
but AFAIK it is not obvious to do so with a single file in a directory
where there are other files that should NOT be under version control.

One of the solution is to create a separate directory, move the file 
there and create a symbolic link to it. This way I have one directory
under version control with either a single file or maybe many unrelated 
files. Besides when I am editing the file I usually cd to the directory
where it should be (and where the symbolic link is now). Issuing 
<i>svn commit</i> there does not work though.

The other solution I usually do is to have the whole directory under version
control but only add the single file to the versions control. E.g. with 
/etc/apache/conf

    cd /etc/apache
    svn mkdir http://svn.server/apache_conf
    svn co http://svn.server/apache_conf .
    svn add httpd.conf
    svn commit

From this point I have the single file (and its holder directory) under revision control.

Optionally I could set the svn:ignore property on the directory to hide all
the files not under version control from showing up when executing 
<i>svn st</i>

