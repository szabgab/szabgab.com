=head1 OSDC Perl 2026.01 report
=timestamp 1770616189
=tags OSDC, Perl

Back in December 2025 I reached a decision that in 2026 I'd like to put a lot more emphasis on contributing to open source projects and helping others to start contributing.

I already had the [OSDC](https://osdc.code-maven.com/) web site I used for teaching a course on open source contributions So I started to use it and created pages for
[Perl](https://osdc.code-maven.com/perl), [Python](https://osdc.code-maven.com/python), and [Rust](https://osdc.code-maven.com/rust). The 3 major languages I am going to work with.

In this report I'll focus on what I managed to do regarding Perl.

We had two online sessions in January (and the one at the end of December). During those events (and sometimes in-between the sessions), we managed to
send quite a few pull-requests. Some of these were already accepted and integrated. (see bellow).

The major things we did were:

* Added META-data to allow MetaCPAN to link to the repository of certain modules.
* Added GitHub Actions to run the tests on every push.
* Added Dependabot to keep the GitHub Actions up to date.
* Added some tests to increase test coverage and to make changes in the code safer.

I also worked quite a lot on building Docker image for my experiments and to extend the [perl-tester Docker image](https://github.com/Perl/docker-perl-tester/) to include more modules.

The [OSDC Perl](https://osdc.code-maven.com/perl) page now also includes an extensive TODO list. Ideas on what to work on next.

In one session we used pair programming - the volunteers made the changes and I was navigating them through the process.
I think it worked better than when I was doing and the others were watching.

## Plans

In order to increase the success-rate of our PRs it might be a good idea to go visit the projects ahead of time and open issues asking the author if s/he is even interested in such PRs (eg. adding CI) and tell them about our events. Collect those issues on our site and work on those projects where the author responded positively.


## Details

* [Crypt-OpenSSL-RSA](https://metacpan.org/dist/Crypt-OpenSSL-RSA) - Todd Rinaldo (TODDR)
    * 2026.01.30
    * PR: [Remove debian:buster from the CI](https://github.com/cpan-authors/Crypt-OpenSSL-RSA/pull/69) - Merged ✅
    * PR: [Add dependabot](https://github.com/cpan-authors/Crypt-OpenSSL-RSA/pull/70) - Merged ✅
    * PR: [Separate the apt-get and the yum steps in the CI](https://github.com/cpan-authors/Crypt-OpenSSL-RSA/pull/71) - Merged ✅

* [Algorithm-SlidingWindow](https://metacpan.org/dist/Algorithm-SlidingWindow) - Joshua S. Day (HAX)
    * 2026.01.26
    * PR: [chore: Make sure the META.json gets the data during release](https://github.com/haxmeister/perl-algorithm-slidingwindow/pull/1) - Waiting 🕰️

* [XML-Sig-OO](https://metacpan.org/dist/XML-Sig-OO) - Michael Shipper (AKALINUX)
    * 2026.01.26
    * PR: [chore: Make sure the META.json gets the data during release](https://github.com/akalinux/xml-sig-oo/pull/3) - Merged ✅

* [CtrlO-PDF](https://metacpan.org/dist/CtrlO-PDF) - Andrew Beverley (ABEVERLEY)
    * 2026.01.25
    * PR: [chore: add GitHub Actions to run the tests on every push](https://github.com/ctrlo/CtrlO-PDF/pull/11) - Merged ✅
    * PR: [Extend the test to compare the PDF to an earlier version of the generated file](https://github.com/ctrlo/CtrlO-PDF/pull/13) - Merged ✅
    * Issue: [Can't use an undefined value as an ARRAY reference](https://github.com/ctrlo/CtrlO-PDF/issues/12) - Waiting 🕰️
    * 2026.01.30
    * PR: [Add test that adds a logo](https://github.com/ctrlo/CtrlO-PDF/pull/14) - Merged ✅
    * TODO: Add more tests!

* [JSON-Lines](https://metacpan.org/dist/JSON-Lines)
    * 2026.01.24
    * PR: [Add CI workflow for Perl testing](https://github.com/ThisUsedToBeAnEmail/JSON-Lines/pull/4) by Jonathan - Waiting 🕰️

* [Protocol-Sys-Virt](https://metacpan.org/dist/Protocol-Sys-Virt) - Erik Huelsmann (EHUELS)
    * 2026.01.24
    * Issue: [Warning during tests](https://github.com/ehuelsmann/perl-protocol-sys-virt/issues/1) - Fixed ✅
    * PR: [Add CI workflow for Perl testing](https://github.com/ehuelsmann/perl-protocol-sys-virt/pull/2) by Peter Nilsson - Merged ✅
    * [Video recordings](https://perlmaven.com/meta-data-and-github-actions-video) 🎦

* [MIME-Lite](https://metacpan.org/dist/MIME-Lite) - Ricardo SIGNES (RJBS)
    * 2026.01.24
    * PR: [setup GitHub Actions to run the tests on every push and PR](https://github.com/rjbs/MIME-Lite/pull/18) - Waiting 🕰️
    * PR: [Add gitignore for some generated files](https://github.com/rjbs/MIME-Lite/pull/19) - Waiting 🕰️
    * PR: [Add test case with long subject line](https://github.com/rjbs/MIME-Lite/pull/20) - Waiting 🕰️
    * [Video recordings](https://perlmaven.com/testing-mime-lite-video) 🎦
    * Test Coverage: `cover -test`
    * TODO: shall we remove the `fold` function?
    * TODO: Increase test-coverage
    * TODO: Split the packages to individual files.
    * TODO: remove the `#!/usr/bin/perl` line from the tests

* [App-TimeTracker-Command-Jira](https://metacpan.org/dist/App-TimeTracker-Command-Jira) - Michael Kröll (PEPL)
    * The link to the repository was incorrect. I sent and email to Michael Kröll, the author, who pointed me to the correct repository.
    * The project uses Dist::Zilla and will insert the correct address during the next releases. - Waiting 🕰️
    * PR: [Add GitHub Actions](https://github.com/Geizhals-Preisvergleich/App-TimeTracker-Jira/pull/5) - Merged ✅
    * Issue: [Deprecated dzil plugins](https://github.com/Geizhals-Preisvergleich/App-TimeTracker-Jira/issues/6) - Fixed ✅

* [CPAN dashboard](https://cpandashboard.com/) - Dave Cross (DAVECROSS)
    * 2026.01.20
    * [Remove Travis CI](https://github.com/PerlToolsTeam/dashboard/issues/105) - TODO 🎁

* [Business-Westpac](https://metacpan.org/dist/Business-Westpac) - Lee Johnson (LEEJO)
    * 2026.01.20
    * PR: [Update bugtracker and repository URLs in Makefile.PL](https://github.com/leejo/business-westpac/pull/1) - Waiting 🕰️
    * PR: [chore: Add GitHub Actions](https://github.com/leejo/business-westpac/pull/2) - Waiting 🕰️
    * PR: [chore: remove generated files](https://github.com/leejo/business-westpac/pull/3) - Waiting 🕰️

* [LaTeX-Driver](https://metacpan.org/dist/LaTeX-Driver) - Erik Huelsmann (EHUELS)
    * 2026.01.20
    * The tests run locally have some strange output Because of the lack of `makeindex`. - TODO 🎁
    * I started to setup GitHub Actions, but it failed. We might want to explore this in a meeting. - TODO 🎁

* [XML-Easy](https://metacpan.org/dist/XML-Easy) - James E Keenan (JKEENAN)
    * 2026.01.14
    * [Add GitHub Actions to run the tests on every push](https://github.com/jkeenan/p5-XML-Easy/pull/10) - Merged ✅

* [perldocker/perl-tester Docker image](https://hub.docker.com/r/perldocker/perl-tester/)
    * 2026.01.14
    * Issue: [Update text on Docker HUB](https://github.com/Perl/docker-perl-tester/issues/83) - Waiting 🕰️
    * Issue: [Add threaded perl](https://github.com/Perl/docker-perl-tester/issues/84) - Waiting 🕰️  - TODO 🎁
    * 2026.01.20
    * Issue: [Adding more Dist::Zilla plugins](https://github.com/Perl/docker-perl-tester/issues/85) - Done ✅
    * PR: [add Dist::Zilla::Plugin::CopyReadmeFromBuild](https://github.com/Perl/docker-perl-tester/pull/86) - Merged ✅
    * PR: [add Dist::Zilla::Plugin::HasVersionTests](https://github.com/Perl/docker-perl-tester/pull/88) - Merged ✅
    * Issue: [buster supports only up to perl 5.40 afterward bookworm is needed](https://github.com/Perl/docker-perl-tester/issues/87) - Waiting 🕰️ - TODO 🎁
    * PR: [Use slim-bookworm for perl 5.42 and later](https://github.com/Perl/docker-perl-tester/pull/89) - Merged ✅

* [DBIx-Class-Async](http://metacpan.org/release/DBIx-Class-Async) - Mohammad Sajid Anwar  (MANWAR)
    * 2026.01.08
    * PR: [Make Meta:CPAN link to GitHub issues](https://github.com/manwar/DBIx-Class-Async/pull/1) - Merged ✅
    * PR: [gitignore some generated files](https://github.com/manwar/DBIx-Class-Async/pull/2) - Merged ✅
    * PR: [Add GitHub Workflow and add test dependencies](https://github.com/manwar/DBIx-Class-Async/pull/3) - Merged ✅
    * Issue: [JSON is used but not declared](https://github.com/manwar/DBIx-Class-Async/issues/7) - Waiting 🕰️
    * PR: [Add more versions of perl to the CI](https://github.com/manwar/DBIx-Class-Async/pull/8) - Merged ✅

* [JQ-Lite](https://metacpan.org/dist/JQ-Lite) - Kawamura Shingo (SHINGO)
    * 2026.01.08
    * During our meeting MANWAR created this PR:
    * [Small improvements to repository to satisfy Kwalite](https://github.com/kawamurashingo/JQ-Lite/pull/503) - Waiting 🕰️

* [Doubly-Linked-PP](https://metacpan.org/dist/Doubly-Linked-PP) - Robert Acock (LNATION)
    * 2026.01.07
    * PR: [add meta-data to allow MetaCPAN to link to public repository](https://github.com/ThisUsedToBeAnEmail/Doubly-Linked/pull/1) - Merged ✅

* [Net-Clacks](https://metacpan.org/dist/Net-Clacks) - Rene Schickbauer (CAVAC)
    * 2026.01.07
    * I sent an email to [Rene Schickbauer](https://github.com/cavac) - Waiting 🕰️

* [MetaCPAN::Client](https://metacpan.org/pod/MetaCPAN::Client) - Mickey Nasriachi (MICKEY)
    * 2026.01.06
    * Issue: [Reference {"relation" => "eq","value" => 14646} did not pass type constraint "Int"](https://github.com/metacpan/MetaCPAN-Client/issues/130) - Fixed ✅

* [Exception-Reporter-Summarizer-PlackRequest](https://metacpan.org/dist/Exception-Reporter-Summarizer-PlackRequest) - Matthew Horsfall (alh) (WOLFSAGE)
    * 2026.01.06
    * Issue: [Why is the repo not included in META.json?](https://github.com/wolfsage/Exception-Reporter-Summarizer-PlackRequest/issues/2) - Waiting 🕰️

* [Geo-IP2Proxy](https://metacpan.org/dist/Geo-IP2Proxy) - IP2Location (LOCATION)
    * 2026.01.05
    * PR: [add meta-data to allow MetaCPAN to link to the repository](https://github.com/ip2location/ip2proxy-perl/pull/1) - Waiting 🕰️

* [Common-CodingTools](https://metacpan.org/dist/Common-CodingTools) - Richard Kelsch (RKELSCH)
    * 2025.12.26
    * [video recordings](https://perlmaven.com/meta-data-and-github-actions-for-common-codingtools-video) 🎦
    * PR: [Add links to VCS](https://github.com/richcsst/Common-CodingTools/pull/1) - Waiting 🕰️
    * PR: [Add .gitignore](https://github.com/richcsst/Common-CodingTools/pull/2) - Waiting 🕰️
    * PR: [Add GitHub Actions](https://github.com/richcsst/Common-CodingTools/pull/3) - Waiting 🕰️
    * PR: [Add test](https://github.com/richcsst/Common-CodingTools/pull/4) - Waiting 🕰️


