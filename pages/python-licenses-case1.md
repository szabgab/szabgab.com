=head1 Python Licenses
=timestamp 1768371316
=tags Python, PyDigger

As I am working on the new version of the [PyDigger](https://pydigger.code-maven.com/) I am trying to make sense (again) the licenses of Python packages on PyPI.

A lot of modules don't have a "license" field in their meta-data.

Among those that have, most have a short identifier of a license, but it is not enforced in any way.

Some modules include the full text of a license in that meta field. Some include some arbitrary text.

Two I'd like to point out that I found just in the last few minutes:

* [iris-sdk 0.1.13](https://pypi.org/project/iris-sdk/) has a license: **Nobody can use this**

* [pyscreeps-arena 0.5.8.8](https://pypi.org/project/pyscreeps-arena/) has a license: **Apache Licence 2.0** (the word license having a typo)


I have no idea how many people actually pay attention to the license information before they start using something, but I feel the lack of unified way to identify licenses is problematic.


I have not checked any of the discussions about the topic so I am not aware of the current state of thinking about this and the potential obsticles, for now, I am just pointing at this problem.

