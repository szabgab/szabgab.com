=head1 Reporting a bug in their export-mechanism to LinkedIn
=timestamp 1734690476
=tags LinkedIn, Rust

Dear LinkedIn,

It seems your data exporting mechanism has some issues.

I am working on a project in Rust that uses the data I exported from LinkedIn. The first step is to read the CSV files.

Most of the process was quite smooth,  but there is one file, the `SearchQueries.csv` file, that contains two columns, "Time" and "Search Query". The second column might contain commas, but the file does not put the value in quotes.


That means that in certain lines the CSV file is not properly formatted.


CSV readers that adhere to the "standard" will choke on it.


I can, of course, fix that on my side, but I thought you might want to know and maybe even fix the export.


Another, much smaller issue is that there are several files that seem to have difference case than the others. Most files start with a capital letter, but there are also some that don't. e.g. `coach_messages.csv` and `messages.csv`.


The project can be found [here](https://crates.io/crates/linkedin-csv)



