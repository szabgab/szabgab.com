=head1 Perl on Android
=timestamp 1272784948
=tags Perl, Android, mobile, Haifa, Israel

Last week we had a meeting in Haifa where <a href="">SawyerX</a> and myself gave
a talk about programming Android using Perl. SawyerX 
<a href="http://blogs.perl.org/users/sawyer_x/2010/05/perl-on-android-progressing.html">wrote a report</a> about it.

More than a month ago I bought an <a href="http://www.archos.com/products/imt/archos_5it/index.html">Archos 5 Internet Tablet</a>
with the excuse that I need it to learn how I can run Perl on it. It is really cool but I'll probably ruin your day saying 
that you actually don't need a real devices in order to try Perl on Android. After looking around the web site of
<a href="http://www.android.com/index.html">Android</a> you will quickly find your way to the 
<a href="http://developer.android.com/index.html">Android developers page</a> that directs you to the SDK.

One you have the SDK installed you can setup an emulator on your PC and you can do everything there and it is even
easier to type on your computer and copy the files or even write directly on the emulator than to type on the real
device.

Of course it is much cooler to walk around with a mobile phone or with an Internet Tablet and show your 
friends the applications you wrote, but it is a start.

For example after some fight with the device we managed to write a small script that would 
display the coordinates of your location as you walk around the city. With some more effort we 
could connect that with location specific data and display that information to you or even
alert you when another Perl hacker is walking near-by. 

I would not even mention ideas like locating pubs and similar establishments.

The code looks something like this:

  use Android;
  my $d = Android->new;
  for (1..10) {
  	my $loc = $d->getLastKnownLocation;
  	print "Long: $loc->{result}{longitude}  Lat: $loc->{result}{latitude}\n";
  	sleep 1;
  }


