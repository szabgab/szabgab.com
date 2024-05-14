=head1 Perl Weekly readers and Perl Maven visitors by country
=timestamp 1363967609
=tags Perl
=format new



If you ever wondered in which places are Perl developers more active, here is a little piece of the information slice.

On the <a href="http://perlmaven.com/">Perl Maven</a> site there were 92.322 visits between 1 January and 20 March 2013.
Most people were interested in the <a href="http://perlmaven.com/perl-tutorial">Perl Tutorial</a> and the pages linked from it.
38% of the visitors arrived from the USA, 11.7% from India and 5.46% from the UK.

On the other hand I am using <a href="https://bitly.com/">Bitly</a> to track the clicks on the articles in
the <a href="http://perlweekly.com/">Perl Weekly newsletter</a>. They let me see the statistics only for 30 days,
but I think this is fairly representative to the previous weeks:
There were 10.820 clicks (4 issues of the Perl weekly) 36% in the USA, 7.55% in the UK and ...
only 1.60% in India.

Let's see the pies:



<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
  google.load('visualization', '1.0', {'packages':['corechart']});
  google.setOnLoadCallback(drawCharts);
  function drawCharts() {
    draw_perl5maven();
    draw_perlweekly();
  }
  function draw_perl5maven() {
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['United States', 38.02],
          ['India',         11.68],
          ['United Kingdom', 5.46],
          ['Germany',        5.21],
          ['Canada',         3.66],
          ['France',         2.68],
          ['Israel',         2.28],
          ['Australia',      1.80],
          ['Russia',         1.51],
          ['Netherland',     1.51],
          ['Spain',          1.22],
          ['Italy',          1.13],
          ['Japan',          1.04],
          ['Sweden',         0.96],
          ['Singapore',      0.96],
          ['Brazil',         0.96],
          ['Poland',         0.92],
          ['Switzerland',    0.86],
          ['Czech Republic', 0.86],
          ['Belgium',        0.83],
          ['(not set)',      2.24],
          ['Others',         14.21]
        ]);
        // Set chart options
        var options = {'title':'Perl Maven visitors',
                       'width':600,
                       'height':500};
        var chart = new google.visualization.PieChart(document.getElementById('perl5maven_chart'));
        chart.draw(data, options);
   }
   function draw_perlweekly() {
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['United States',  36.33],
          ['United Kingdom',  7.55],
          ['Germany',         5.17],
          ['Australia',       3.04],
          ['Canada',          2.84],
          ['Netherland',      2.23],
          ['Brazil',          1.94],
          ['France',          1.93],
          ['Russia',          1.73],
          ['Norway',          1.67],
          ['India',           1.60],
          ['Spain',           1.32],
          ['Portugal',        1.26],
          ['Italy',           1.17],
          ['Japan',           1.09],
          ['Poland',          1.03],
          ['Austria',         0.86],
          ['Ukraine',         0.86],
          ['Belgium',         0.84],
          ['Israel',          0.81],
          ['Unknown',        20.88],
          ['Others',          3.85]
        ]);
        // Set chart options
        var options = {'title':'Perl Weekly readers',
                       'width':600,
                       'height':500};
        var chart = new google.visualization.PieChart(document.getElementById('perlweekly_chart'));
        chart.draw(data, options);
   }
</script>

<h2>Perl Maven visitors</h2>

Percentage of visitors between 1 January 2013 and 20 March 2013 according to Google Analytics.
Pie drawn with <a href="https://developers.google.com/chart/">Google Chart</a>.

<div id="perl5maven_chart"></div>

<pre>
United States   38.02
India           11.68
United Kingdom   5.46
Germany          5.21
Canada           3.66
France           2.68
Israel           2.28
Australia        1.80
Russia           1.51
Netherland       1.51
Spain            1.22
Italy            1.13
Japan            1.04
Sweden           0.96
Singapore        0.96
Brazil           0.96
Poland           0.92
Switzerland      0.86
Czech Republic   0.86
Belgium          0.83
(not set)        2.24
Others          14.21
</pre>

<h2>Perl Weekly</h2>

Percentage of clicks on the articles included in the 4 issues between 20 February 2013 and 20 March 2013
as reported by Bitly.

<div id="perlweekly_chart"></div>

<pre>
United States     36.33
United Kingdom     7.55
Germany            5.17
Australia          3.04
Canada             2.84
Netherland         2.23
Brazil             1.94
France             1.93
Russia             1.73
Norway             1.67
India              1.60
Spain              1.32
Portugal           1.26
Italy              1.17
Japan              1.09
Poland             1.03
Austria            0.86
Ukraine            0.86
Belgium            0.84
Israel             0.81
Unknown           20.88
Others             3.85
</pre>

There is a big gap in the numbers of the Perl Weekly. Apparently Bitly does not recognize the location of
over 20% of the visitors compared to 2.24% "not set" for Google.

<!-- perl5maven.com links replaced by perlmaven.com links -->


