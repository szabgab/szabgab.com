=head1 How I broke and fixed Kantoniko?
=timestamp 1694506464
=tags bash, CI, error

=abstract start

A couple of days ago I broke [Kantoniko](https://kantoniko.com/), one of the static web sites I maintain.

How did it happen? - You might ask.

=abstract end

It was the collaboration of two issues.

I removed a piece of data from one repository, but forgot to remove the reference to it from another repository. This made the code generating the site crash and generate only part of the pages.

Seeing the CI fail would have been annoying, but at least I would have know immediately that something is broken.
Unfortunately there was another bug. I used a shell script in GitHub Actions without `set -e` meaning that the CI did not fail. It went on and deployed the partially generated site.

I only noticed that site is broken because at that time I was looking at a page that suddenly went missing.

I went to GitHub to see the output of the CI job and I saw the error, however GitHub Action was all green. Basically it swept the error under the carpet.

The fix was easy. First I fixed the data removing the reference to the now missing piece of data. This allowed the full site to be generated and deployed.

Then I fixed the shell script adding `set -ex` to it.

Finally, I wanted to verify that from now on it will stop the CI if the site generation fails. So I restored the invalid data reference and pushed it out to GitHub again.
This time the CI process failed and I got the notification. The site did not break

## Responses and improvements

One of the responses I got from [Mikko Koivunalho](https://www.linkedin.com/in/mikkokoivunalho/) to also use `-u` and then [Olaf Alders](https://www.linkedin.com/in/olafalders/)
added `-o pipefail`.

So now the recommended command is

```
set -exu -o pipefail
```

