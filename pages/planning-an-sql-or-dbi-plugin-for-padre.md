=head1 Planning an SQL or DBI plugin for Padre
=timestamp 1243802159
=tags Padre, Perl, Perl 6, SQL, DBI

Today I was looking around what kind of helper tools a Perl 
programmer might need, that is not necessarily for writing 
Perl code. One of the other fields we frequently visit is databases.
We need to write SQL statements, looking into the structure and 
the content of databases and checking what are the values there, 
sometimes even designing a schema.

On one hand there are command line interfaces for every 
database and there are specialized desktop or web based tools 
to look at databases which are very powerful. 
So we might not need anything else.

On the other hand we have [dist://DBI], lots of DBD packages and 
a number of nice extensions of DBI for building code that 
can access databases. Maybe we can build some add-ons 
to <a href="http://padre.perlide.org/">Padre</a> that will make 
our life even easier. 

So I'd like your ideas on the subject. What kind of SQL or 
database related desktop tool would you like to have for 
your development?

Just to start the list, let me write down the trivial things I could 
come up with (trivial in thinking about them, not the development):

<ul>
<li>Probably the most basic feature is to provide <b>SQL highlighting</b> to the .sql files.</li>
<li>Then it would be nice to have <b>call-tips</b> 
explaining the various language elements</li>
<li><b>Statement completion</b> would be also 
nice - once an SQL keyword is typed it should 
provide a list of keywords    that can be used 
as the next thing (this should be either standard 
SQL or one of the SQL languages e.g. SQLite</li>
<li>Allow the user to define a <b>connections string</b>
(database type, hostname, port, database_name 
(or filename), username, password) and connect 
to the database</li>
<li>Once a connection string is given, provide 
a <b>drill down view</b> of all the elements of the 
database (tables, index, stored procedures etc) 
and even the data</li>
<li>Allow the user to type in <b>SQL statements</b> 
(or mark one as selected text in the editor)
and execute the query printing the results set 
on the output window</li>
<li>As extra feature somehow allow the use of this plugin for <b>SQL statements embedded in Perl</b> 
code and the execution of SQL statements that have placeholders. Is this doable at all?</li>
<li>Help to build a [dist://DBIx::Class] setup around the database.</li>
</ul>

What else ?

