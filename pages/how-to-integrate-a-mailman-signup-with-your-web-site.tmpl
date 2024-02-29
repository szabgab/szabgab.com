=head1 How to integrate a Mailman sign-up with your web site?
=timestamp 1312134557
=tags Mailman, JQuery, JavaScript, Perl, newsletter

There are many people who prefer to read selected news items 
over following 10-30 sources of information. Lot's of us 
prefer e-mail alerts over RSS feeds. 
During the week-end I setup two newsletters.

One is called <a href="http://perlweekly.com/">Perl Weekly</a> sending out
a list of the most important news items and articles regarding Perl.

The other one is an announcement list for my own website. This is for people who
would like to get notified when I upload a new post.

For now they are both Mailman based mailing lists as that was the easiest 
to setup <b>without giving up control</b> to a mailing company.

The problem with Mailman is that I need to direct people to a separate 
subscribe page that - at least by default - looks very different from my web site:

<img src="/img/mailman_subscribe.png" />

It could be customized but it still means people need to do <b>extra steps</b> before
they can sign up to the newsletter.

The first thing I did for better integration is to embed the HTML form that is
on the mailman page into my web site but only show one field for the e-mail address.

This is the HTML:

  &lt;form action="http://mail.szabgab.com/mailman/subscribe/update" method="POST">
  E-mail: &lt;input name="email" />&lt;input type="submit" value="Sign Me Up!" />
  &lt;/form>

And this is how it looks:

<form action="http://mail.szabgab.com/mailman/subscribe/update" method="POST">
E-mail: <input name="email" /> <input type="submit" value="Sign Me Up!" />
</form>

If you try that form an click on the button you will see that the result page
is still what Mailman provides.

What about changing that too?

I changed the form so the form will have a class called <b>subscribe</b>
&ltform class="subscribe" and added the following 
<a href="http://www.jquery.org/">JQuery</a> code:

 $(document).ready(function() {
   $("form.subscribe").submit(function() {
     var url = $(this).attr('action') + '?' + $(this).serialize();
     $.get(url, function(r) {
         window.location = "/thankyou.html";
     });
     return false;
   });
 });

Now when the user clicks on the <b>Sign Me Up!</b> button, the above script will serialize
the data in the form and send a GET request to the mailman subscribe form. 
When that replies the JQuery code will load the <b>thank you</b> page with further instructions.

See how it works on my site:

<form class="subscribe" action="http://mail.szabgab.com/mailman/subscribe/update" method="POST">
E-mail: <input name="email" /> <input type="submit" value="Sign Me Up!" />
</form>

It still leaves the ugly e-mail that Mailman sends out and the verification form but
at least the first step is more integrated in my website.

I am not a JQuery or HTML expert. I am probably better described as a newbie for life.
There might be much better ways to make this happen.

How do you integrate e-mail signup to your website?

