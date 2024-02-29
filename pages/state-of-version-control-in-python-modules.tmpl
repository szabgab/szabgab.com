=head1 State of Version Control System of Python modules: 32.95% no link to VCS found
=timestamp 1511432487
=tags Python, GitHub, VCS

According to the <a href="https://pydigger.com/stats">PyDigger stats</a> I've been collecting for a while, 32.95% of the modules on PyPI don't have a reference to their GitHub repository. That's 22,575 modules (out of the 68,514 I've indexed so far).

The <a href="https://pydigger.com/about">about page</a> now describes that the information about version control system is extracted from the JSON file provided for each module by PyPI and that it can only recognize GitHub.

There is a link from the stats page listing <a href="https://pydigger.com/search/no-github">Python projects without GitHub link</a>. They are ordered by the date they were released to PyPI, the most recent first.

I went over a few to see how can PyDigger be improved, or how can the data provided by the module authors improved.

I am picking a few of the most recent modules. Not to blame them, but to try to think aloud what could be improved.

<h2>20 most recently released modules without the GitHub link</h2>

There is a link to GitHub, but it leads to the GitHub user and not the project itself. 
<a href="https://pydigger.com/pypi/netboy">netboy</a> has home_page linking to https://github.com/pingf.
Same with <a href="https://pydigger.com/pypi/catenae">catenae</a>,
<a href="https://pydigger.com/pypi/yxspkg_songzviewer">xspkg_songzviewer</a> 

<a href="https://pydigger.com/pypi/pyqlearning">pyqlearning</a> "home_page" has a link to <a href="https://github.com/chimera0/accel-brain-code/tree/master/Reinforcement-Learning">Reinforcement-Learning</a> a subdirectory in the GitHub repository. Is it because this repository contains more than one PyPI modules?


<a href="https://pydigger.com/pypi/justpith">justpith</a> has a link in "home_page" to http://packages.python.org/justpith  that leads to https://pythonhosted.org/justpith which is actually 404.

No link to any VCS:
<a href="https://pydigger.com/pypi/nesterfeng">nesterfeng</a>,
<a href="https://pydigger.com/pypi/jumper">jumper</a>,
<a href="https://pydigger.com/pypi/Symbolic">Symbolic</a>,
<a href="https://pydigger.com/pypi/FLUIDAsserts">FLUIDAsserts</a>
<a href="https://pydigger.com/pypi/aliyun-python-sdk-cloudphoto">aliyun-python-sdk-cloudphoto</a>,
<a href="https://pydigger.com/pypi/stylelens-product">stylelens-product</a>,
<a href="https://pydigger.com/pypi/pylinda">pylinda</a>, and
<a href="https://pydigger.com/pypi/sqreen">sqreen</a> (proprietary license).


<a href="https://pydigger.com/pypi/jsnapy">jsnapy</a> links to <a href="http://www.github.com/Juniper/jsnapy">www.gihub.com</a> that redirects to the same page on github.com. The regex in PyDigger only accepts the link if it is directly to github.com. 

<a href="https://pydigger.com/pypi/miceshare">miceshare</a> "home_page" leads to GitLab https://gitlab.com/SmartChinaStock/stock_decision_center that first required me to log in and then once I was logged in it was 404.

Clearly PyDigger should be able to recognize GitLab links as well, but that would still not help in the case of this module.

<a href="https://pydigger.com/pypi/coloredlogs">coloredlogs</a> the link to the GitHub repository is mentioned in the description. I think it should be in some designated field. Same with <a href="https://pydigger.com/pypi/uplink">uplink</a>.

<a href="https://pydigger.com/pypi/mne">mne</a> had the link to its GitHub repo in the "download_url" field which is currently not checked by PyDigger.

<a href="https://pydigger.com/pypi/fastFM">fastFM</a> the "home_page" leads to <a href="http://ibayer.github.io/fastFM">GitHub page</a> of the project and not to the repository.

<a href="https://pydigger.com/pypi/modelhub">modelhub</a> "home_page" leads to <a href="http://git.patsnap.com/research/modelhub">Git repo</a> on some other site.

<h2>Digging in the database</h2>

I tried to look around the home_page field of the data we have looking for two other popular version control hosting solutions:

  db.packages.find({ "home_page" : /gitlab/i }).count();
  734

  db.packages.find({ "home_page" : /bitbucket/ }, { home_page: 1 }).count()
  1611

So once those are indexed properly we'll have a better % of modules with links to their VCS, by 3-4%.


<h2>Conclusion</h2>

There is no designated field in the JSON file provided by PyPI for "Version Control System". We cannot assume that the "home_page" will contain link to the VCS. We can start recognizing other well known VCS-es as well, (e.g. GitLab, Bitbucket), but some projects use their own Git repository hosting. Some of these might be public. Other might be private.

I think the best would be to have a designated field for the VCS.

