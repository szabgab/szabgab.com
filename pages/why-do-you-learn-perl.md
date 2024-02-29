=head1 Why do you learn Perl?
=timestamp 1274338142
=tags Perl, Windows, training, learning

When I start a Perl training class I always ask people why do they learn Perl?
Sometimes, I can even send out a questionnaire before the training classes giving people some more time to think about it.

Let me share a list of answers I got recently. Without names and removing anything
that might reveal company names or personal information.

* To broaden and strengthen my current perl experience which was self acquired.
* Maintain existing code
* Write code for the installation processes
* Analyze big text files, search for complex patterns, extract and replace data, create and manage data structures.
* The reason I'm taking this course is because I never learned perl and I only learn from looking at written scripts and copy paste from them until it works but most of the times I'm not sure why it worked one way but not the other.
*   I don't have a current perl project that I have to work on but I maintain perl scripts (not on an every day basis) and now and then I need to add a small script to parse a text file or deal with file operations (copy, rename...). Basically  the scripts I maintain parse text and deal with file operations print output to file.
* General Perl understanding - reading existing programs and modifying them. Parse files to extract information etc.
* I would like to gain basic skills in Perl programming, to be able to write scripting in Perl on Unix/Linux machines which will allow me to automate tests for Software which is installed on a Linux/SUN server.  For example: Sampling counters, or HTTP interfaces (All via shell commands), send them from the running machine via mail to external server, run calculations on machines of rates etc'.
    1. I use Perl during development - to parse log files, build files, sql, source control reports etc. Examples: in an sql script, find all create table statements (can be lower or upper case, with or without "", with or without "DBA" prefix) and modify the script to include drop table statement before each corresponding create table. Take a log4j log file, look for "start method X" and then following "end method X" phrases, calculate the diff of timestamps, create a table summarizing total time/avg time/count for all method invocations.
    1. Being able to write scripts for production environment - install/patch scripts for example - I imagine such scripts would manipulate (mostly create or copy) files, use env variables on Win/Unix systems, generate log, call other scripts.
* I use perl to write utilities that usually open a telnet session, send commands and parse the result.
* To be able to understand and edit existing scripts
* To use embedded Perl inside Verilog: Check log files for errors, warning, special words, generate expect data and check for comparison,count special words....
* I would like to know how to write a script that gets a list of devices in the network, then login to each device to get its config, then search for a specific string (command) in the config and make changes to the config.
* The main objective from this training is to know how to write effective scripts, for executing script that goes over hundreds devices and performing actions like:
    * changing fields
    * looking for specific parameter from the config file
    * looking for specific SNMP parameter
* I wrote several scripts for our Application Manager upgrade.  The scripts contains functionality such as parsing files, invoking SQL scripts and Java code etc.
* Script that parses directory of xml files, and counts in each xml the occurrences of several parameters. The analysis results should be written in an excel sheet.
* Script that monitors unix processes: runs in the crontab, and checks the current running processes: names, the period of time that they take, the cpu usage and memory usage and compares the results to baseline of running processes.
* The objective is to write tools such as: parsing log file, debugging tools, custom tools that will help us analyze infrastructure problems.

