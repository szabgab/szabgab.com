=head1 Upgrading Ubuntu to 6.06, (Dapper Drake)
=timestamp 1153627050
=tags Ubuntu

As the latest version of Ubuntu (version 6.06 also called Dapper Drake)
has been released a couple of weeks ago I decided it was time to upgrade.

I think I have never upgraded (successfully) an operating system. Back when
I ran Microsoft Windows and even administered a few of them I used to reinstall
the whole system every 6 months or so. That way I did not have to take too
much care how much rubbish the developers installed. I did this both using
the same version and while upgrading.

Since I started to use Linux I kept replacing distributions every year
or so. Once or twice - when I was using Debian - I attempted to move
from <i>stable</i> to <i>unstable</i> every time resulting in a fresh
installation of the whole machine.

So I was a bit worried.

I had 3 machines with Ubuntu 5.10 (Breezy Badger). The graphical
<i>Update Manager</i> offers a button to upgrade to 6.06. Pressing it you
get a short explanation what will happen and where can you get help and then
the rest is nearly automatic.


<b>The first one</b> was a simple upgrade. The machine was installed just
2 months ago and was hardly used.  There were hardly any applications on it.
I did not worry either as if something went wrong I would only need to
reinstall it. There was hardly any configuration or personal files on it.

The upgrade was nearly smooth, during the configuration step the system
reported that <i>/etc/login.defs</i> was changed so I had to decide to keep
my changes or to upgrade to the one that ships with the new version of Ubuntu.

<b>The second machine</b> was a bit harder. This is my home server with some
development tools and many games on it.
It had the same issue with /etc/login.defs and in addition at some point near
the end, the upgrade suddenly stopped. <i>tetex-base</i>
had some problems and the window said <i>installArchives() failed</i> and
that my system might be in an <b>unstable</b> state. Not too promising.

Luckily after a short search and a few trial and errors I figured out I have
to remove the packages that depend on <i>tetex-base</i>. In my case it was the
following:

    sudo dpkg --purge docbook-utils
    sudo dpkg --purge jadetex
    sudo dpkg --purge mailutils

    sudo apt-get dist-upgrade

    sudo install mailutils
    sudo install docbook-utils

<b>The third machine</b> - my notebook - is right now under upgrade.
It has the most of the packages and right now it seems to be stuck.
It is in the <b>Downloading and installing the upgrades</b> phase saying
<i>Downloading file 1247 of 1496</i>
It has been like this for over 20 minutes now.
I guess the connection to the server is down.

I waited quite a long time till I decided to kill the
<b>dapper</b> process. It seems http://us.archive.ubuntu.com/
stopped responding.
In <i>/etc/apt/sources.list</i> I replaced all occurrence of
the above URL by one that should be also faster for me:
http://il.archive.ubuntu.com/ then started the process again
with the graphical Update Manager. I was happy to notice it
remembered that the first 1246 files were already downloaded
and went on from 1247.

The it had the same issue with <i>/etc/login.defs</i> as the other
two and the same problem with tetex as the server. This time I took
more detailed notes. If this is relevant for someone.

The error message I got.

    Could not install 'tetex-base'
    subprocess post-installation script returned error exit status 1

In the console this appeared:

    dependency problems - leaving unconfigured
    (the same for tetex-extra)
    dapper: Fatal IO error 9 (Bad file descriptor) on X server :0.0.
    tetex-base
    tetex-bin
    tetex-extra
    jadetext


    The upgrade aborts now. Your system can be in an unusable state. A recovery
    was run (dpkg --configure -a).
    installArchives() failed

And the solution that worked for me:

    $ sudo dpkg --purge tetex
    $ sudo dpkg --purge jadetex
    $ sudo dpkg --purge docbook-utils
    
    $ sudo apt-get dist-upgrade
    
    $ sudo apt-get remove libtidy-dev
    $ sudo apt-get install libtidy-dev
    $ sudo apt-get install docbook-utils

It was a bit scary, but now I think I have three upgraded machines.

