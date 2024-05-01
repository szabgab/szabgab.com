=head1 Consultant hack - show availability in clients Calendar when most of the days you are busy
=timestamp 1591643811
=tags consultant

=abstract start

As a consultant I have clients where I spend a few days a week or even just a few days a month.
I have an account in the internal calendar system and I would like an easy way to allow people to schedule meetings with me.

=abstract end

Normally a calendar show all days as "free" and you can mark timeslots or dates as "busy".
That's good if the majority of the time you are "free" because you work at the company. It isn't as good if you need
to mark many days as "busy".

This might be obvious to everybody else, but I had just stumbled upon this hack:

<ol>
<li>Set a daily recurring appointment with "Out of office" and mark it as "busy".</li>
<li>For each individual day where you are available delete that occasion of the recurring event.</li>
</ol>

