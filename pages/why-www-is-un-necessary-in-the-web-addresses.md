=head1 Why www is (un)necessary in the web addresses
=timestamp 1243962158
=tags Perl, blogging, DNS, Apache

The other day I sent an e-mail to <a href="http://downlode.org/">Earle Martin</a> 
mentioning that www.perlsphere.net does not resolve.
He replied that using <i>www</i> is a cargo cult and as he never advertised it 
and as he does not want the associated administrative overhead I'll have to
stick to <a href="http://perlsphere.net/">perlsphere.net</a>.

While I agree that www is not technically necessary I see so many people 
automatically typing www as a start of a web address that I think it might worth the 
extra few lines in the DNS and Apache configuration files.
Even when I tell someone to go to search.cpan.org I see many people writing www.search.cpan.org.

But I actually started to write this because of some drawbacks I see when both
www.domain.com and domain.com are pointing to the same site.

Some people link or bookmark the www.domain.com and others the domain.com. This makes link-sharing 
sites (e.g. <a href="http://www.reddit.com/">Reddit</a>, 
<a href="http://delicious.com/">del.ico.us</a>, etc..)
to have duplicate entries with the number of votes split between the two. 
So recently I changed my Apache configuration and now every visitor who arrives to 
<a href="http://www.szabgab.com">www.szabgab.com</a> is automatically 
redirected to <a href="http://szabgab.com/">szabgab.com</a>. So I am not losing 
the old links and any new links will go to just the szabgab.com address.

Of course this would work in the other way around too, keeping www.szabgab.com working and
redirecting visitors from szabgab.com. It does not matter much.


