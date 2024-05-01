=head1 Fetching the status of blog entries using grep and cut
=timestamp 1359632426
=tags Shell, Perl, cut, sort, grep, uniq

=abstract start

I write my blog entries in some pseudo-POD/HTML that grew organically.
In other words, it is a mess.

I wanted to easily see which articles are ready to be published and which one might need some
more writing.

=abstract end

Each article is a text file with .tt extension
(don't ask! probably something to do with <a href="https://metacpan.org/release/Template-Toolkit">Template::Toolkit</a>),
and each file has a line staring with <b>=status</b> followed by a value.

Originally each value could be either <b>show</b> or <b>draft</b>.
The former for when the article is published and it is to be shown on the web site.
The latter when it is still only a draft.

Lately, going with the organic evolution, I started to use all kinds of other status
values.
For example <b>hide</b> for articles I decided to pull from the web site,
<b>draft sent to Smylers</b> for an article I sent to <a href="http://twitter.com/Smylers2">Smylers</a>
who is kind enough to proofread some of my articles posted on the <a href="http://perlmaven.com/">Perl Maven</a> web
site.
I use <b>ready for proofreading</b> for articles that are, well, ready for proofreading. I don't want to overwhelm
Smylers any more, but sometime I have a few article written ahead of time.

(Gabor, please get to the point already!)

So I wanted to see what status values are there.

   grep =status *

gives me a list like this:

   how-to-read-a-csv-file-using-perl.tt:=status show
   some-other-article.tt:=status draft ready for proofreading
   fetching-the-status-of-blog-entries.tt:=status draft
   fetching-the-status-of-blog-entries.tt:  has a line starting with =status

It is quite unreadable and there is a line where the =status was inside the text. (probably this article)

Slight improvement in the regex of grep to only match =status at the beginning of the line:

   grep ^=status *


This will print:

   how-to-read-a-csv-file-using-perl.tt:=status show
   some-other-article.tt:=status draft ready for proofreading
   fetching-the-status-of-blog-entries.tt:=status draft

It is still unreadable so I'd better cut it up.

   grep ^=status * | cut -d ':' -f 2

Will take each line, split it at the chose field-delimiter character (:) and show the 2nd field:

   =status show
   =status draft ready for proofreading
   =status draft

That's better, but I'd also like to get rid of the =status. Another cut splitting the lines on
space and showing the second field:

   grep ^=status drafts/* | cut -d ':' -f 2 | cut -d ' ' -f 2

This is almost good, but because the words in the value of the =status were also separated by spaces, they
were considered as separate fields and are not displayed.

   show
   draft
   draft

Adding a dash at the end will tell <b>cut</b> to include a range of fields:

   grep ^=status drafts/* | cut -d ':' -f 2 | cut -d ' ' -f 2-

prints this:

   show
   draft ready for proofreading
   draft

Of course my list is much longer and includes lots of duplicates.
To get the unique list of used values I could <b>sort</b> the output and use the <b>uniq</b> function
to eliminate duplicates.

   grep ^=status drafts/* | cut -d ':' -f 2 | cut -d ' ' -f 2- | sort | uniq


<h2>Processing with Perl</h2>

Another way I processed the file also involved using a Perl one-liner:

  grep ^=status drafts/* |
    perl -nE 'chomp;
      ($file, $status) = (split /[: ]/, $_, 3)[0, 2];
      printf "%-25s %s\n", $status,$file'
    | sort

(I broke up the one-line code to several lines to make it more readable in the post.)


This allowed me to keep both the file name and the status with one call to <b>split</b> and then to print them in
reverse order before sorting the lines. Using the unix sort again. This helps me locate articles that I should work on.

BTW for more Perl-related articles check out the <a href="http://perlmaven.com/">Perl Maven</a> site.




