=head1 Dropbox CLI - Command line client
=timestamp 1628405514
=tags Dropbox, Go, Open Source, CLI



I am trying to clean up stuff I saved ages ago on some external disks.
Part of them are old files that we don't need now, but I would like to ensure they will be around even if the external disks get destroyed.
So I wanted to upload the content to our Dropbox.

On the other hand I also don't want to full rely on Dropbox. I would like to be able to create a back of everything I have in Dropbox
to some external disks and put them in a safe.



If I had a disk in my computer big-enough to hold this data then I could just use <b>rsync</b> from the internal disk to the external disk.
But I don't have. Actually my internal SSD is quite big. I have a 512 Gb internal disk and I also have 512Gb micro-SSD  plugged in to my computer.
I have Dropbox sync that disk.

However we have several Terabytes of data. A lot of raw footage of videos.
(I am actually not sure if I can get that much data on Dropbox at all and if I should use Dropbox or store the data on some S3 like service.)


Then I bumped into <a href="https://dropbox.github.io/dbxcli/">dbxcli</a> which is a command-line client for Dropbox.
It allows me to upload files directly from the external disk to a folder on Dropbox that was excluded from the automatic sync.
That can help me solve the problem.

Unfortunately that client is missing a lot of features I would need, but it is written in Go. So I started to fix things and send pull-requests.
While it is in the GitHub organization of Dropbox as I can see the original author does not work at Dropbox any more and none of the main contributors
do.

Let's see if they or Dropbox are interested in moving this client forward and if they respond reasonably fast to the issues I opened and
to the pull-requests I created.

