=head1 Banner design
=timestamp 1793802210
=tags blogs

I organize lots of online and some in-person event. All of them need banners to promote. The online events are also recorded and they need thumbnails for YouTube.
I use both Meetup and Luma for the registraion and their image requirements (size and aspect ratio) are all different.

* In ancient times I created a screenshot of an HTML page.


* Then at one point I wrote [Banbu, the Banner Builder](https://banner-builder.code-maven.com/). A command line tool in Rust that uses a YAML file to configure the image. These were functional, but not very nice. Here is an example:

<img width="700" style="border: 1px solid black" src="/img/exploring-falkordb-2026-06-04.png" alt="event banner" />

* When AI came along I started to use ChatGPT to generate banners. These are colorful and they all look very different, but at the same time I feel they look the same and of course the irritate some people and some even comment "ai slop" on my post that further annoys me. Here is an example that is about the Zig programming langugages, but the AI used a crab which is usually used as Ferris the crab for the Rust programming language.

<img width="700" src="/img/Zig-From-Beginner-to-Slightly-Less-Beginner-Sawyer-X.png" alt="event banner" />

I thought I should probably improve Banbu, but for that I'd like to go over a few banner designs and analyze them.


## The AI Audit Spectrum

<img width="700" src="/img/the-ai-audit-spectrum-guest-panelists.webp" alt="event banner" />

* [source](https://www.meetup.com/pydataireland/events/316964181/)
* Size: 1920x1080

* This is for an in-person event.

* Background is a blue gradient (dark blue on the left-hand side, lighther blue on the right hand side)
* Top row 3 logos of the organizer groups and the host.
* Title, subtitle
* Then a row of 4 pictures of the 4 panel members.
    * Above the pictures there are 4 fields mentioned. It feels as these are their main fieldsm but the text is not fully aligned with the picture. This bothers me. I wonder if this was a choice or a oversight? The text are in rounded edged bubles.
    * The 4 pictures have white border and rounded corners. People looking at the viewer.
    * Bellow each picture there is the name of the person in all capital letters.
    * Bellow that is the "title" of each person.
* At the bottom we have date (without year), time (in 12 hour format), location (address)


## PyData Sofia & DSS Meetup November 2026

<img width="700" src="/img/pydata-sofia-dss--meetup-november-2026.webp" alt="event banner" />

[source](https://www.meetup.com/pydata-sofia/events/316960733/)

With this image I had the bright idea of uploading it to ChatGPT and asking it:

> Generate a prompt that, given a picture of a person, and given the logos, would generate an image like the one included.

It gave a long description that even included the RGB value if the backgorund color, and at the end it wrote:

> Technical consideration: AI image generators sometimes distort logos or misspell text. For production use, the most reliable workflow is to generate the background and portrait composition with AI, then overlay the original logos and text programmatically using SVG, Pillow, or another graphics library.


## React Meetup Bangalore


<img width="700" src="/img/React-Meetup-Bangalore.webp" alt="event banner" />

[source](https://www.meetup.com/reactjs-bangalore/events/316851281/)

## Building with Claude in Teams

<img width="700" src="/img/Building-with-Claude-in-Teams.webp" alt="event banner" />


[source](https://www.meetup.com/claude-israel-user-group/events/316815318/)


