=head1 Selenium on Ubuntu 8.04 (Hardy)
=timestamp 1213152712
=tags Selenium, Ubuntu, Firefox

After upgrading Ubuntu to 8.04 (<a href="/upgrading-to-ubuntu-8.04-hardy-on-compaq-hp-nc6400..html">Upgrading to Ubuntu 8.04 Hardy on Compaq (HP) nc6400.</a>) I sadly noticed that 
<a href="http://selenium.openqa.org/">Selenium</a> stopped working. 
As I found out it is because Selenium currently does not support 
<a href="http://www.mozilla.com">Firedfox 3</a> and Ubuntu comes with 
Firefox 3 Beta 5.

After some search I found this blog entry on
<a href="http://blog.codefront.net/2007/08/20/how-to-have-firefox-3-and-firefox-2-running-at-the-same-time/">
having both Firefox 2 and Firefox 3 on the same machine</a> which
was encouraging but in the end I it is not needed.

I installed Firefox 2 - in addition to Firefox 3 by typing 

   sudo aptitude install firefox-2

I created a new profile and played with that part but in the end I removed it
as it is not really needed.

What I had to do is to set the LD_LIBRARY_PATH environment variable before
launching the Selenium-RC. So I have a shell script:

   LD_LIBRARY_PATH=/usr/lib/firefox:/usr/lib/firefox/plugins
   selenium-rc

I also change the browse definition in the test script to point
to the full path of the firefox-2 binaries.

    my $sel = WWW::Selenium->new(
        host => "localhost",
        port => 4444,
        browser => "*chrome /usr/lib/firefox/firefox-2-bin",
        browser_url => "http://localhost",
    );

That's all folks.

