=head1 Why bother upgrading perl?
=timestamp 1256905701
=tags Perl, CPAN, upgrade



While I am really happy that perl moves forward, things get fixed or deprecated and later removed but I know several companies that are still using 5.6.x and even older versions of perl. The gap is widening for many companies and I am not sure what to think about it.



Recently I asked on the mailing list of <a href="http://perl.org.il/">Israel.pm</a>:
<a href="http://mail.perl.org.il/pipermail/perl/2009-October/010646.html">Why are you (or your company) still using an older version of Perl?</a>
and I got a couple of good answers. Then, today I saw a <a href="http://www.nntp.perl.org/group/perl.perl5.porters/2009/10/msg152820.html">post</a> on the
<a href="http://dev.perl.org/perl5/">perl5porters</a> list by <a href="http://tux.nl">H.Merijn Brand</a> that was related to this.

Let's look at these companies.

The systems as they are now are working, none of the features in newer
versions of perl seem to be very important to those companies.
(Actually I think even that might not be true, just companies learned to
live with some of the shortcomings of old versions of perl)

Upgrading perl only seems to involve <b>cost</b>: Someone might
need to fix the code if it was using deprecated or changed
features. Someone needs to verify that everything works well
and if the code was written 5-10 years ago then the number
of automated tests will be very low. Someone will have to
install the newer perl on every machine and upgrade
the applications.

There is also a <b>risk</b> - no matter how much you verified the code -
that something will stop working which can cause downtime,
lost revenue or penalties.

So there does not seem to be a compelling reason to make that
investment.

On the other hand...

## It will be cheaper to develop for newer versions of perl

More and more modules on CPAN require 5.8.x and even
5.10.x. In some cases you can find an old version of the module that
can work on older perl but it is getting more and more difficult.
In addition there are new modules that from the beginning required
a relatively recent version of perl.
(e.g. both [dist://Devel::NYTProf] and <a href="http://moose.perl.org/">Moose</a> require 5.8.1)

That means the company won't be able to leverage the extra work that
went into the CPAN modules so it won't be able to enjoy the saving
opportunities in development cost.
In short, developing on newer versions of perl would cost less money
than developing on older versions of perl.

The same is true with core perl. The new features (e.g. say, given,
named capture, smart-match) help reducing development cost
for future code.

Staying with older perl will cost extra money in future development.

## Easier to find good developers for modern Perl

There is another reason I can think of. Companies complain that it
is hard to find good perl developers. I am quite sure that it is much harder
to convince a good perl developer to work in a shop that sticks with
an old version of perl than in a shop that uses modern perl. So staying
with old perl will cost in recruiting and retaining Perl developers.
We can go back in time and ask again: <a href="/is-it-really-hard-to-find-good-perl-programmers">Is it really hard to find good Perl programmers?</a>


## It costs more to get any support for older versions of Perl and older CPAN modules

Older versions of perl are not supported. Just as with any other
technology if you stay with an old version you are on your own. You
won't find open source developers to help you free of charge and
even finding commercial support will be increasingly hard and thus
increasingly expensive. So there is a risk factor in staying with old
versions of perl.

## Other reasons?

Are there other reasons to upgrade perl?

