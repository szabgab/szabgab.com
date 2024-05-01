=head1 Do Alexa rankings have any meaning?
=timestamp 1419771848
=tags Alexa, Perl
=format new

=abstract start

When you'd like to evaluate the popularity of a web-site where you don't have access to the logs, you don't have much choices.
<a href="http://www.alexa.com/">Alexa</a> (that belongs to Amazon) collects some statistics.

It is far from being exact, but it does have some correllation to the real visitor counts and pageviews.

=abstract end

According to <a href="http://www.alexa.com/about">their description</a> the ranking is calculated based on the
pageviews and visits a site received in the 3 months preceding the given date, while the Alexa toolbar was active in the browser of the visitor.
In addition some web-sites install the Alexa code on their site which provides them details analyzis about their visitors,
and allows Alexa to better correllate the data they get from the toolbars and the real visitor count.

While it has its flaws, the Alexa ranking can provide a feeling about the popularity of a web site. 

In order to connect that number to the real number of pageviews and visits, let me show you the numbers I saw in the Google Analytics dashboard of a few sites:

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
  var data = {
     'alexa_ga_chart' : [
      [1796567,       2861,      2122,      1938],
      [ 743673,      30162,     12390,     10484],
      [ 396755,      43746,     33705,     28358],
      [  95990,     271873,    198040,    125334],
      [  70528,     602966,    182666,     96053],
      [  13213,    1493374,    655429,    387509],
    ],
     'alexa_top_chart' : [
     [   3376,    7188896,    843309,    445110],
     [   1102,   35000000,      null,  15000000],
     [    198,  125000000,  35000000,      null],
     [     59,  419553472, 175517008,  28588088],
     //[     33, 6175912111,      null, 174088361],
    ]
  };
  google.load('visualization', '1.0', {'packages':['corechart']});
  google.setOnLoadCallback(drawCharts);
  function drawCharts() {
    draw_alexa('alexa_ga_chart');
    draw_alexa('alexa_top_chart');
  }
  function draw_alexa(name) {
    var dataTable = new google.visualization.DataTable();
    dataTable.addColumn('number', 'Alexa');
    dataTable.addColumn('number', 'PageView');
    dataTable.addColumn('number', 'Sessions');
    dataTable.addColumn('number', 'Users');
    dataTable.addRows(data[name]);
    var dataView = new google.visualization.DataView(dataTable);
    dataView.setColumns([{calc: function(data, row) { return data.getFormattedValue(row, 0); }, type:'string'}, 1, 2, 3]);
    var chart = new google.visualization.LineChart(document.getElementById(name));
    var options = {
      width: 450, height: 240,
      legend: true,
      label_x: 'Alexa',
      pointSize: 5,
      interpolateNulls: true,
      hAxis: { title: 'Alexa ranking' }
    };
    chart.draw(dataView, options);
  }
</script>



<style>
td {
padding-top: 10px;
padding-right: 10px;
text-align: right;
}
td:nth-child(1) {
text-align: left;
}
tr:nth-child(even) {background: #FFF}
tr:nth-child(odd) {background: #CCC}
</style>

<table>
<tr><th>Site</th>                                                     <th>Alexa</th>    <th>Monthly Pageviews</th> <th>Monthly sessions</th>  <th>Users</th>    <th>Pageview/<br>session</th> <th>Pageview/<br>user</th></tr>
<tr><td><a href="http://szabgab.com/">szabgab.com</a></td>            <td>1,796,567</td><td>2,861</td>             <td>2,122</td>             <td>1,938</td>    <td>1.3</td>   <td>1.5</td></tr>
<tr><td><a href="http://padre.perlide.org/">Padre, Perl IDE</a></td>  <td>743,673</td>  <td>30,162</td>            <td>12,390</td>            <td>10,484</td>   <td>2.5</td>   <td>2.9</td></tr>
<tr><td><a href="http://strawberryperl.com/">Strawberry Perl</a></td> <td>396,755</td>  <td>43,746</td>            <td>33,705</td>            <td>28,358</td>   <td>1.3</td>   <td>1.5</td></tr>
<tr><td><a href="http://perlmaven.com/">Perl Maven</a></td>           <td>95,990</td>   <td>271,873</td>           <td>198,040</td>           <td>125,334</td>  <td>1.3</td>   <td>2.1</td></tr>
<tr><td><a href="http://metacpan.org/">MetaCPAN</a></td>              <td>70,528</td>   <td>602,966</td>           <td>182,666</td>           <td>96,053</td>   <td>3.3</td>   <td>6.3</td></tr>
<tr><td><a href="http://search.cpan.org/">search.cpan.org</a></td>    <td>13,213</td>   <td>1,493,374</td>         <td>655,429</td>           <td>387,509</td>  <td>2.3</td>   <td>3.8</td></tr>
</table>

<div id="alexa_ga_chart"></div>

In additon I found a few websites that advertise their visitor count:

<table>
<tr><th>Site (source)</th>                                                         <th>Alexa</th>  <th>Monthly Pageviews</th>  <th>Monthly sessions</th>  <th>Users</th>           <th>Pageview/<br>session</th> <th>Pageview/<br>user</th></tr>
<tr><td><a href="http://www.e1.ru/" rel="nofollow">E1.ru</a><br>(<a href="http://www.liveinternet.ru/stat/hsdigital/index.html?slice=e1;period=month">src</a>)</td>         <td>3,376</td>  <td>7,188,896</td>          <td>843,309</td>           <td>445,110</td>         <td>8.5</td>                 <td>16.2</td></tr>
<tr><td><a href="http://www.tutorialspoint.com/">Tutorialspoint</a><br>(<a href="http://www.tutorialspoint.com/about/index.htm">src</a>)</td>  <td>1,102</td>  <td>35,000,000</td>         <td></td>                  <td>15,000,000</td>      <td></td>                        <td>2.3</td></tr>
<tr><td><a href="http://w3schools.com/">w3schools</a><br>(<a href="http://www.w3schools.com/about/about_pagehits.asp">src</a>)</td>                <td>198</td>    <td>125,000,000</td>        <td>35,000,000</td>        <td></td>                <td>3.6</td>                     <td></td></tr>
<tr><td><a href="http://stackoverflow.com/">Stack Overflow</a><br>(<a href="https://www.quantcast.com/stackoverflow.com">src</a>)</td>       <td>59</td>     <td>419,553,472</td>         <td>175,517,008</td>      <td>28,588,088</td>       <td>2.4</td>                 <td>15.0</td></tr>
<tr><td><a href="http://www.reddit.com/">Reddit</a><br>(<a href="https://www.reddit.com/about/">src</a>)</td>                  <td>33</td>     <td>6,175,912,111</td>      <td></td>                  <td>174,088,361</td>     <td></td>                     <td>35.0</td></tr>
</table>

<div id="alexa_top_chart"></div>


On the w3school site I found 1,500,000,000 pageviews / year which means 125,000,000 pageviews / month.  35,000,000 visits / month
That means  or 3.6 pageviews / visits which probably means sessions in Google Analytics.

At the bottom of E1.ru there is an arrow leading to the stats.

I have not included Reddit in that chart becasue then everything, including the Satck Overflow seemed to be 0.

<h2>Caveat</h2>

We don't really know how reliable the numbers provided by those site are.

In general the overall number of users and number of pageviews in world is growing which means the same Alexa ranking
will indicate a lot more pageviews a year from now, than what we see now.


<a href="https://www.quantcast.com/">Quantcast</a> might be an interesting alternative to Alexa.

