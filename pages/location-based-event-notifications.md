=head1 Location based event notification
=timestamp 1731490753
=tags Meetup

Just thinking aloud. Probably trying to reinvent some existing wheel.


I run 2 Meetup groups in Israel. A Python and a Rust group. They are both "based in Tel Aviv", but in reality sometimes we have meeting in other cities as well or at least I'd like to be able to organize events in more palces.
For example Ramat Gan, Petach Tikva, Herzliya, Raanana, Modiin, and even Haifa, Jerusalem, and Beer Sheva.

For those who are not familiar with the geography, Ramat Gan is basically a suburb of Tel Aviv, but some of the other places are 60 min - 1:30 drive (or train ride) away.

I bet similar problems exist in other places as well. Even inside huge cities such as New  York and London, the travel time can be more than an hour for many potential attendees.

Probably someone from Jerusalem won't want to hear all the announcement about meeting in any of the other places.

## Solutions

### A Python group for each place

I don't think I would want to create separate Python groups for each location for several reasons:

1. money - Each group costs money.
1. difficult to administrate - each separate group I have needs administration.
1. infrequent meetings - at the end we won't have a lot of meeting in any of those places.
1. fragmentation - many groups will be smaller instead of what we have now.

The same with Rust and with any other technology.

### Generic group for each place

There could be generic groups for each location: e.g. "Jerusalem Tech", "Beer Sheva Tech" etc. and then use those groups to organize all the events in that location.

The problem, again, that it will cost quite a lot of money to have all those groups. I won't fill those groups myself and other who have their own tech groups (e.g. Go, JavaScript etc.)
will most likely want to use their own groups for organizing. Even if they organize the events in some of those other places.


## Notification only

I am thinking about some system that would allow people to get notified when there is a meetup near where they work (or maybe near where they live).
They could either sign up for all the events or pick keywords (e.g. Python) and get notified only if there is a Python event near-by.



