=head1 Compiling Perl, Python and Ruby
=timestamp 1374177131
=tags Perl, Python, Ruby



If I remember correctly I heard people from various downstream Linux distributions complain that perl is too big.
I know that they have already started to split the standard distribution of perl into pieces. For example
Debian, and thus Ubuntu have a separate package called perl-doc that includes the documentation of Perl.

On the other hand I know that the standard library of Python has a lot of modules that are not included in
the standard distribution of Perl.

So I set out to check how much disk space do the standard distributions of the 3 major dynamic languages take up.

At least on a Linux box.



<h2>Perl</h2>

<a href="http://www.perl.org/get.html">perl.org</a> has links how to download binary version
for the major operating systems, and the source code of Perl.

<a href="http://www.cpan.org/src/README.html">CPAN</a> has the source code and the instruction how
to compile and install Perl.

I picked up the tar.gz file of 5.18.0.  The file size of the source: 17 Mb, Unzipped source: 87 Mb, Installed size: 71Mb

Instructions to download, build and install Perl:

    wget http://www.cpan.org/src/5.0/perl-5.18.0.tar.gz
    tar -xzf perl-5.18.0.tar.gz
    cd perl-5.18.0
    ./Configure -des -Dprefix=$HOME/local/perl
    make
    make test
    make install

Disk usage using <b>du -ms</b> several times I get the following directory sizes (in Mb):

    perl    71
      bin      3
      lib      50
      man      19


<h2>Python</h2>

<a href="http://www.python.org/download/">python.org</a> has instructions how to download Python.

Using Python 2.7.5 tgz file size of the source: 14Mb, Unzipped source: 70 Mb, Installed size: 108 Mb

Instructions to download, build and install Python:

    wget http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz
    tar xzf Python-2.7.5.tgz
    cd Python-2.7.5
    ./configure  --prefix $HOME/local/python
    make
    make test
    make install

Disk usage using <b>du -ms</b> several times I get the following directory sizes (in Mb):

    python   108
       bin          8
       include      1
       lib         99
           libpython2.7.a   14
           pkgconfig         1
           python2.7        86
       share        1
<h2>Ruby</h2>

<a href="http://www.ruby-lang.org/en/downloads/">ruby-lang.org</a> has the instructions how to download Ruby.

Ruby 2.0.0-p247  file size 14Mb, Unzipped source: 74 Mb, Installed size: 352Mb

    wget ftp://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz
    tar xzf ruby-2.0.0-p247.tar.gz
    cd ruby-2.0.0-p247/
    ./configure --prefix $HOME/local/ruby
    make
    make test
    make install

Disk usage using <b>du -ms</b> several times I get the following directory sizes (in Mb):

    ruby    352
      bin        13
      include     1
      lib        72
         libruby-static.a    41
         pkgconfig            1
         ruby                32
      share     268
         doc                198
         man                  1
         ri                  70
<h2>Summary</h2>

<table>
<tr><td></td><td>Perl</td><td>Python</td><td>Ruby</td></tr>
<tr><td>Version:</td><td>5.18.0</td><td>2.7.5</td><td>2.0.0-p247</td></tr>
<tr><td>zipped size:</td><td>17</td><td>14</td><td>14</td></tr>
<tr><td>unzipped size:</td><td>87</td><td>70</td><td>74</td></tr>
<tr><td>installed size:</td><td>71</td><td>108</td><td>352</td></tr>
</table>

Sizes in Mb after compilation and installation as described above on a Linux box.

So it seems Perl has the smallest footprint among the 3 languages.

At another time I think I'll need to compare what libraries each one of the languages
comes with and how would installing comparative libraries in the other languages
would impact the installation size.



