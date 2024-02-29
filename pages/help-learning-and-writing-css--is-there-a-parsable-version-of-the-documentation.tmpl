=head1 Help learning and writing CSS - is there a parsable version of the documentation?
=timestamp 1266868643
=tags CSS, Perl, Padre, CPAN::Forum, new year

As my secret new years resolution I decided to turn <a href="http://cpanforum.com/">CPAN::Forum</a>
into the most awesome resource for everything about CPAN. It's a long project. Among the many things 
it needed a facelift to make it nicer to the visitor. As I hardly know any web design I looked 
around and tried to copy from other websites while learning more about HTML, CSS and design in general.

With CSS one of the problems I encounter is that I keep forgetting the order of the values
<i>padding</i> and other elements can get. This is partially due to old age but also due to the fact that I 
am not too familiar with the subject yet. I need more hand holding than an expert in CSS. So I reached 
for <a href="http://padre.perlide.org/">my favorite Perl editor</a> and updated its CSS support to provide 
context sensitive help for CSS documents.

The basics are very simple. When I press F2 while the cursor is on one of the elements (e.g. <i>padding:</i>) 
the code looks up the relevant explanation in a yaml file I started to create. As I need help with various CSS 
tags I read about them and then I can add the explanations to the yaml file. The file is now loaded every time 
I ask for help (which is actually I think a bug in Padre or in my code) but right now it is actually good as 
this way it is enough for me to update the yaml file with my latest understanding and voila, I have the help showing up.

The tight feedback cycle helps me a lot working on this.

<h2>Parsable version of the CSS documentation?</h2>

It is very nice that I can write my own documentation for CSS now but I believe there are various documents that 
could be used to provide all this text with a much higher quality. I just have not found the documentation yet.
So if you happen to know where can I get a file describing the various CSS tags and possible values that could be 
parsed and from which I could extract a mapping of CSS keywords to description, please let me know.

<h2>The implementation in Padre</h2>

If I am already writing about this, let me go through the code as I implemented in Padre. While by the time 
you are reading this the actual code might have changed, this can be a good start to implement similar help 
for any computer language regardless if that is a programming language, a markup language or any other language.

In Padre every document type has (or can have) its own class. So does CSS, in the [dist://Padre::Plugin::CSS].
The first step was to implement a call-back in the CSS document class:

  sub get_help_provider {
    require Padre::Plugin::CSS::Help;
    return Padre::Plugin::CSS::Help->new;
  }

This is actually a bit too much. I think Padre should support the return of the name of the provider 
and call <i>new</i> by itself but it is good enough now.

When a text is selected and F2 is pressed, Padre automatically sends the selected text to the helper class but if there is 
no selection then Padre will look up the word around the cursor.

In order to provide better customization, Padre also calls the <i>find_help_topic</i> method of the document class and allows that call to return the current topic.

This code I copy pasted from the main find_help_topic function and it will require some further refactoring but as a first pass it is good enough.

Once the topic is selected Padre uses the <i>Help Provider</i> as defined in the get_help_provider and uses that to look-up and display the help.

The help provider class needs to have three methods:

The help_init method is there to load any external look-up table.
I think it should be called only once per document per Padre but currently it is called every time I press F2. 
Maybe the idea is that each helper class should decide on its own caching strategy. After all maybe it is connected 
to a huge database and we don't want to load all that content into memory.

In my case it is now reloading the yaml file every time which is actually quite good for development.

  sub help_init {
    my ($self) = @_;

    my $help_file = File::Spec->catfile(Padre::Util::share('CSS'), 'css.yml');
    $data = LoadFile($help_file);

    return;
  }

The window displaying the help has a list of all the keywords. This list is given by the help_list
method. In our case it is quite simple and looks like this:

  sub help_list {
    my ($self) = @_;
    return [keys %{ $data->{topics} }];
  }

The third method is the actual code that gets a keyword (though it is called topic in our case) and return
both an html file to be displayed and a string that is going to be the title bar. In perl 5 we put the 
path to the source of the documentation - the pod file - there but in the case of CSS I just returned the topic.

  sub help_render {
    my ( $self, $topic ) = @_;

    $topic =~ s/://;
    my $html = "No help found for '$topic'";
    if ($data->{topics}{$topic}) {
      $html = "$topic $data->{topics}{$topic}";
      $html =~ s/REPLACE_(\w+)/$data->{replace}{$1}/g;
    }
    return ( $html, $topic );
  }

That's it. It was quite simple to add the supporting code, though there are still items that need to be implemented. E.g. I'd like to make sure
words with a dash in the name such as <i>background-color</i>, values that include a number (e.g. 4px) and pseudo-class selectors such as <i>:visited</i>
are also recognized and provide proper help.

It would be nice to use some ready made CSS documentation and finally to actually make <a href="http://cpanforum.com/">CPAN::Forum</a> look good.

