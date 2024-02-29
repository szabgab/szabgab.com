=head1 Use case for Strawberry Perl for Windows
=timestamp 1263492546
=tags Perl, Windows, Strawberry Perl, Padre, XML, CSV

Yesterday someone called me for whom I did some work 7 years ago that he is now at a new company and
need some quick Perl script written. A 2 days long work. As I was just heading home from a conference 
and I was close to their office we decided I go over so we can talk about it.

They have a system that provides its results in a CSV file but they have a client that needed the
result in an XML file with some extra processing.

So the project involved processing a CSV file and based on a small XML configuration file the script 
was supposed to generate an XML output file.

As the system of the client runs on Windows this had to work there.

After looking at the actual project we decided I'll start to work on it immediately at their offices.

They put me in front of a Windows machine. I downloaded and installed the 
<a href="http://padre.perlide.org/">Stand Alone Padre editor</a> and had almost everything I needed.
As it has a version of <a href="http://www.strawberryperl.com/">Strawberry Perl for Windows</a> 
underneath it already had [dist://XML::LibXML] for XML processing.

I tried to use it in order to process the configuration file but I have never used that module and 
I felt it would be faster to install and use [dist://XML::Simple] for reading the small configuration
file.  The already configured cpan client allowed me to type

   c:> cpan XML::Simple

and after a few seconds I already had the module. When I got to the point of processing the CSV file
I probably could get away with a simple split() statement on every row but I did not want to take the 
risk of having a field with quotation marks and a comma inside a value breaking the code. So I opted
for [dits://Text::CSV_XS]. I had to install it but it was easy:

  c:> cpan Text::CSV_XS

After about 5 hours total work including the initial discussion and finding a computer for me that took
about 2 hours I was done with the script.

Then comes <b>the hard part</b>. 

The actual production system does not have access to the Internet so one cannot simply use the 
cpan client. They could use a VPN to copy files to the machine just could not let the
cpan client fetch the modules. 

Luckily the solution was not difficult. I told them to copy Strawberry Perl to the system and
the source code version (.tag.gz files) of the two modules to the production machine. After 
installing Strawberry Perl they could use

  c:> pip Text-CSV_XS-0.70.tgz

to install the module.

Of course I was lucky as there were only two extra modules I needed and neither of them had
dependencies that Strawberry did not have. In a more complex case I might need 
several other modules and as the person who will install this on the target system 
does not know any Perl s/he will only feel it as an unnecessary complex installation.

<h2>Solutions</h2>

<b>A</b>

It would be nice if there was a simple way to build a package from this. That could be
the planned <b>Strawberry Perl Professional</b> that will include many other CPAN modules
reducing the chance that I'll need extra modules.

<b>B</b>

It could be a way to build the MSI installer based on a released version of Strawberry Perl 
and several modules from CPAN. This should be very easy that does not need any extra things
beyond Strawberry Perl and the specific extra modules.

<b>C</b>

It could be taking the Strawberry Perl MSI package and the source versions of the required
extra modules and zipping them together. On the target system the sysadmin could

<ol>
<li>unzip the file</li>
<li>install Strawberry using the .MSI package</li>
<li>Run a script that will install the extra modules that were supplied with the package</li>
</ol>

The last item needs some thinking so the script will either make sure that the dependencies
are installed first or will let the user configure the local directory holding the
extra files as the cpan server where pip needs to look for dependencies.

Thinking about this, this might be built by using [dist://CPAN::Mini] we just need to 
configure the cpan client to look there first.


