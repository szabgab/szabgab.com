=head1 Public DNS Resolvers (and using dig)
=timestamp 1373535451
=tags Perl, DNS

=abstract start

A while ago I move most of my domains from using the DNS servers of Godaddy to
my own DNS servers. Every time I'd move a domain, Godaddy would drop it from their
DNS server immediately but the world would pick up the change on latest.

Sometimes even more than 48 hours later.

=abstract end

More specifically, if I understand this correctly, what takes time is the update
of all the global root servers that should know where is the DNS server of the domain.

As far as I understand there are two solutions to this:

<ol>
<li>the old DNS provider should keep the dns records for at least 2 days after I officially stopped using them.</li>
<li>Have 2 steps:
<ol>
<li>Add the new DNS resolvers to configuration of the domain and have the new resolvers already work.</li>
<li>After all the root servers already know about the new resolvers, remove the old ones</li>
</ol>
</ol>
 
Unfortunately Godaddy stopped supporting these. Luckily almost all of my domains are already
using my own DNS servers.


<h2>Tools to check resolution (Global DNS propagation)</h2>

I found / was recommended two sites that can help me see how the rest of the world sees
the DNS records of a particular domain:

<a href="http://www.whatsmydns.net/">What's my DNS</a>

<a href="http://www.opendns.com/support/cache/">Open DNS cache</a>

<h2>dig is the ultimate Linux command line tool for DNS lookup</h2>

List all the name servers

   $ dig +nocmd . NS +noall +answer +additional

I think I knew how to check what the root name servers think about the DNS server
of a particular domain, but now I don't remember

   $ dig @k.root-servers.net  perlmaven.com NS +short +trace

Seems to work (checking the k root server), but I am not sure if that's the best way to do it.


And just in case I forget, this is how I can list the records of mail.perlmaven.com as known by ns.tracert.com

   $ dig mail.perlmaven.com @ns.tracert.com



