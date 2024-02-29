=head1 Perl Application Development and Distribution Platform
=timestamp 1225187432
=tags Perl, Perl 5, CPAN, application, Parrot, TODO

With the constant improvement of <a href="http://www.strawberryperl.com/">Strawberry Perl</a>,
the recent release of the first Portable Strawberry and development on 
<a href="http://padre.perlide.org/">Padre, the Perl IDE</a> I was thinking a bit on how to further
extend these projects.

I though we should turn all this work into a platform for desktop application development and distribution.

There are several packages out there that allow you to develop a web application using MySQL, PHP and Apache on Windows
(e.g. <a href="http://www.devside.net/">Devside</a>) and even packages that you can use to host your web application 
(e.g. <a href="http://www.wampserver.com/en/">WAMP Server</a>) but there is not so much for the desktop applications.
I found <a href="http://dabodev.com/">Dabodev</a> which is a Pyhton based framework that might be similar to what 
I'd like to have. I have not found one for Perl yet.

I'd like to have an easily installable package initially for Windows but later on maybe for 
Linux, Unix and Mac as well that can be used to both develop desktop applications and to 
easily distribute them. We already have CPAN, a nice distribution framework for modules but 
there are a few problems.

<ul>
<li>You alway get the latest version of every module that were not yet tested.</li>
<li>Two applications installed on the same system might require different versions of the same module.</li>
</ul>

If all the extra modules were installed in some application specific directory that would solve
the second problem but you still get the latest of all the modules.
If the application and all the extra modules are distributed in a [dist://PAR] package 
the developer has almost full control over which version of the modules will be used.
I write almost as there won't be control over the modules NOT in the par package.

So the technical requirements:

Install a baseline Perl that already includes lots of nice modules and a distribution framework.
Especially install the most important modules that require compilation or things not on CPAN.

Strawberry Perl already includes PAR. Chocolate Perl will include wxPerl as well and maybe 
other GUI frameworks. 

We need a way to distribute and install applications packaged as par archives. 
PAUSE/CPAN can already be used to distribute these packages. AFAIK neither CPAN 
nor CPANPLUS has any knowledge about such packages so we might need to either 
change those or provide a separate tool that will only install par packages.

As I discussed with Steffen Mueller, there is already a pair of modules:
[dist://PAR::Repository] and [dist://PAR::Repository::Client] that can provide
an alternative way for distribution and installation of PAR packages.

IMHO on this platform end-users should never install individual CPAN modules 
and even developers should install them in an application specific directory.
That would avoid any unwanted upgrade of a prerequisite module.
Developers might need several configurations of CPAN.pm to be used by each 
application they are working on.

The application installer tool should know more about the applications than 
CPAN.pm currently does. Somewhere there should be a 3 dimensional matrix of 
(Platform version X Application version X OS version ) where <i>Platform version</i>
will be something like <i>Strawberry Perl</i> <b>5.10.0.3</b>.
At the beginning the OS version is always MS Windows but I hope this Platform can
be extended to other operating systems as well.

The information in the 3D matrix is probably best provided by the application developer.
The installation tool (similar to GUI version of ppm ?) should be able to help 
the user select which versions of the application are approved to his/her OS and
current platform and install that version of the application.

Let's have an example:

<ul>
<li>I want to distribute an application that uses Module::Widget 1.12.</li>
<li>I tested my application on Chocolate Perl 5.10.0.27</li>
<li>As that version of Chocolate Perl already include Module::Widget 1.12 I don't include it in my PAR distribution</li>
<li>If a user tries to install my application on an older version of Chocolate Perl, that did not yet 
include Module::Widget 1.12, the tool will tell so and won't try to install the module</li>
</ul>

Later I would include Parrot in this framework and gradually allow other languages running over Parrot.

<h2>Comments</h2>
<a href="http://use.perl.org/~tsee/journal/37759">Steffen Mueller</a>

