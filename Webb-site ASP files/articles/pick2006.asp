
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="/" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="/rss.asp"><img alt="RSS feed" src="/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
		</div>
		<label for="srchchk" id="srchbtn">search</label>
	</div>
	<input type="checkbox" id="srchchk" style="display:none">
	<div id="srchblk" style="background-color:inherit;">
		<div class="box4">
			<!-- SiteSearch Google -->
			<form class="box4a" method="get" action="https://www.google.com/search">
				<input type="hidden" name="ie" value="UTF-8">
				<input type="hidden" name="oe" value="UTF-8">
				<input type="hidden" name="domains" value="Webb-site.com">
				<input type="hidden" name="sitesearch" value="Webb-site.com">
				<input type="text" class="inptxt searchws" name="q" maxlength="255" value="search Webb-site.com" onclick="value=''">
				<input type="submit" class="btnFont" name="btnG" value="search">
			</form>
			<form class="box4b" method="post" action="/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="/dbpub/orgdata.asp" method="get" name="f1">
				<p>Stock code</p>
				<input type="number" class="inptxt stockcode" name="code" min="1" max="99999" maxlength="5" pattern="[0-9]*" onclick="value=''"><br>
				<input type="submit" class="btnFont" name="Submit" value="current" onclick="f1.action='/dbpub/orgdata.asp'">
				<input type="submit" class="btnFont" value="past" onclick="f1.action='/dbpub/code.asp'">
			</form>
		</div>
	</div>
</div>
<div id="menubar" style="background-color:blue;">
	<div class="hnav">
		<input type="checkbox" id="menuchk" style="display:none">
		<ul>
		<li><a href="/">Home</a></li>
		<li><a href="/dbpub/">Database</a></li>
		<li><a href="/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="/webbmail/login.asp">Log in</a></li>
				
				<li><a href="/webbmail/join.asp">Sign up</a></li>
				<li><a href="/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="/articles/">Archive</a></li>
		<li><a href="/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="/pages/howtovote.asp">How to vote</a></li>
				<li><a href="/library/">Reference library</a></li>
				<li><a href="/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="/vote/">Polls</a></li>
		<li><a href="/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="/HAMS/">HAMS proposal</a></li>
				<li><a href="/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="/articles/PECSregister.asp">PECS register</a></li>
				<li><a href="/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="/books/">Webb-Books</a></li>
				<li><a href="/news/">Old newsletters</a></li>
				<li><a href="/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="/pages/about.asp">About</a>
			<ul>
				<li><a href="/pages/aboutus.asp">About us</a></li>
				<li><a href="/photos/">Webb-Photos</a></li>
				<li><a href="/pages/mediaroom.asp">Media room</a></li>
				<li><a href="/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="/contact/">Contact</a></li>
		<li><a href="/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="/pages/hkradio.asp">Radio</a>
			<ul>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio1">RTHK 1</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio2">RTHK 2</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio3">RTHK 3 English</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio4">RTHK 4 Classics</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio5">RTHK 5</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio6">RTHK 6 CNR</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/pth">RTHK Putonghua</a></li>
				<li><a target="_blank" href="https://www.881903.com/live/881">Commercial Radio</a></li>
				<li><a target="_blank" href="http://www.metroradio.com.hk/Live/1044/">Metro Radio</a></li>		
				<li><a target="_blank" href="https://www.bbc.co.uk/sounds/player/bbc_world_service">BBC World Service</a></li>
			</ul>
		</li>
		<li><a href="/pages/TV.asp">TV</a>
			<ul>
				<li><a target="_blank" href="https://www.abc.net.au/news/newschannel/">ABC News (Australia)</a></li>
				<li><a target="_blank" href="https://www.aljazeera.com/live">Al Jazeera</a></li>
				<li><a target="_blank" href="https://www.bloomberg.com/live">Bloomberg</a></li>
				<li><a target="_blank" href="https://www.dw.com/en/media-center/live-tv/s-100825">DW-TV</a></li>
				<li><a target="_blank" href="https://www.france24.com/en/live">France 24</a></li>
				<li><a target="_blank" href="https://www.nasa.gov/nasatv/">NASA</a></li>
				<li><a target="_blank" href="https://hoy.tv/live">Hoy TV</a></li>
				<li><a target="_blank" href="https://news.now.com/home/live">Now TV News</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/tv">RTHK TV</a></li>
				<li><a target="_blank" href="https://news.tvb.com/tc/live/83">TVB iNews</a></li>
				<li><a target="_blank" href="https://www.viu.tv/ch">Viu TV</a></li>
			</ul>
		</li>
		</ul>
	</div>
</div>
<div class="clear"></div>
<div class="mainbody">

<script type="text/javascript">document.title="The 2006 Christmas Pick";</script>

	<div class="summary">Season's greetings to all our readers - time for Santa's annual stock pick. Last year's pick, Fujikon (0927), gained 43.6%, beating even the 27.3% on the HSI. Over 7 years of picks, we've gained 724%, a compound average of 35.2% per year, while the HSI averaged 5.8%. So what are we putting under the Christmas tree this year? Read on...</div>

<h2 class="center">The 2006 Christmas Pick<br>
<span class="headlinedate">3 December 2006</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p><i>Webb-site.com</i> is celebrating its 8th birthday, and 
loyal readers will know that we only publish one stock recommendation per year - 
something nice to say in the season of goodwill to make up for the campaign 
against bad corporate and economic governance in the rest of the year. Santa rummages in 
his sack of investments, says &quot;ho ho ho, have I got a surprise for you&quot; and picks the stock from our portfolio that we 
think is most likely to perform over the next year. It is a seasonal gift to 
readers, a free ride on our research - you don't have to buy it, but if you 
followed us in the past, then you made good money. Our picks have beaten the 
Hang Seng Index by 455% over 7 years, made money every year, and averaged a 
return of 35.2% per year, versus 5.8% on the Hang Seng Index.</p>

<p>Apart from devoting about half his time to public causes, your 
editor is also a private investor who specialises in smaller companies, panning 
the riverbed of some 900 smaller companies that make up 10% of the market value, 
and looking for specks of gold - undervalued companies with trustworthy, 
competent management. He more often finds the opposite - over-valued and/or badly governed 
stocks, and these horror stories sometimes end up as case studies on <i>
Webb-site.com. </i>We never deliberately read fiction, but sometimes can't 
avoid it in annual reports. By avoiding most of the crooks and finding the nuggets, 
an investor can make exceptional returns over a long period.</p>

<p>Before we tell you about this year's pick, a note of caution. 
Our annual pick also earns us annual criticism (usually from the same people) 
who say we have a conflict of interest. We look at it the other way: our money 
is where our mouth is, and if we are wrong, then we will lose money too, which 
is more than you can say for most analysts. Readers will also know that if there 
are any future corporate governance failures in the company we pick, then we 
have a strong financial interest in fighting for the interests of minority 
shareholders. That's not a conflict of interest, that's a common interest.&nbsp; 
Having said that, here are some ground rules:</p>

<ol>
  <li>We only make one pick a year, because
<i>Webb-site.com</i> is not a tip sheet, it is a corporate and economic governance site.
  </li>
  <li>
  We're not a licensed investment 
adviser, and you're not paying us for advice, so you have no right to rely on 
it. All we are doing is exercising our right of free speech, one of the great 
competitive advantages of Hong Kong.
  </li>
  <li>
We don't normally comment on the stock we picked 
until the next Christmas, when we review how it went. In the meantime, you are 
on your own, so don't write in asking us whether it is time to sell or buy some 
more. The only time we would break this silence is if 
there was a major corporate event at the subject company.
  </li>
  <li>
We reserve the right to increase and 
decrease our holdings according to market circumstances and our own risk 
management. Don't put all your eggs in one basket. We don't either.
  </li>
	<li>
Stocks can go down as well as up. One 
day, one of our picks will blow up in our face.
  </li>
</ol>

<p>Before we tell you what we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our previous recommendations performed.</p>

<h3>Last year's Pick</h3>
<p>Last year our pick was 
<a target="_blank" href="http://www.fujikon.com">Fujikon Industrial Holdings Ltd</a> (<b>Fujikon</b>, 
0927), a maker of headsets for companies such as Microsoft (for bundling with 
the X-Box) and Nokia.</p>
<p>On 2-Dec-05, the last day before our pick, Fujikon closed at 
$1.40. During the year, the stock traded between a low of $1.46 on 20-Jan-06 and a high of 
$2.175 on 7-Apr-06. When the year was over, the stock closed on Friday 1-Dec-06 
at $1.93, and investors received dividends of $0.08 during the year for a total 
return of <b>43.6%</b>. A <a href="../sounds/clap.wav">round of applause</a> to 
the Fujikon team!</p>
<p>For the year to 31-Mar-06, EPS grew 26.3% to $0.230, on sales 
growth of 16.9%. On 23-Nov-06, Fujikon announced interim results for the 6 months 
to 30-Sep-06, with sales up 53.8% compared with the period a year ago, net profit up 50.8% and EPS up 49.1%. The company has landed &quot;significant orders&quot; for new products 
which are shipping in the second half of the year to a &quot;premium audio brand&quot; 
(let's just call them a Buyer Of Special Earphones). The dividend payout was not 
as large as we would have liked, and the balance sheet could work with less 
capital with tighter credit controls, but 
management says the money is needed for future expansion and working capital as 
the revenue has been growing so fast, which is a nice problem to have. </p>
<p>Putting our money where our mouth is, on 23-Jan-06, we increased 
our stake in Fujikon through the 5% statutory disclosure threshold at $1.49 and 
continue to hold more than 5%. We expect them to make around $0.30 per share for 
the year to 31-Mar-07, which puts the stock, excluding the pending dividend of 
$0.03, on a prospective P/E of 6.3, still cheap.</p>

<h3>The seven year history</h3>

<p>Doesn't time fly? We've been running this series for 7 years 
now, and our pick has made money in each year, out-performing the total return 
on the Hang Seng Index 6 years out of 7. Here's the track record:</p>
<table class="numtable center">
	<tr>
		<th>Ref date</th>
		<th>Stock</th>
		<th>HSI<br>1-year return</th>
		<th>Stock 1-year return</th>
	</tr>
	<tr>
		<td>03-Dec-99</td>
		<td>Boto (0585)</td>
		<td>-6.1%</td>
		<td>23.3%</td>
	</tr>
	<tr>
		<td>04-Dec-00</td>
		<td>Kingmaker (1170)</td>
		<td>-21.3%</td>
		<td>53.2%</td>
	</tr>
	<tr>
		<td>03-Dec-01</td>
		<td>Tungtex (0518)</td>
		<td>-5.4%</td>
		<td>56.3%</td>
	</tr>
	<tr>
		<td>03-Dec-02</td>
		<td>Arts Optical (1120)</td>
		<td>26.5%</td>
		<td>42.0%</td>
	</tr>
	<tr>
		<td>03-Dec-03</td>
		<td>Allan (0684)</td>
		<td>19.0%</td>
		<td>4.7%</td>
	</tr>
	<tr>
		<td>03-Dec-04</td>
		<td>Karrie (1050)</td>
		<td>10.9%</td>
		<td>30.8%</td>
	</tr>
	<tr>
		<td>02-Dec-05</td>
		<td>Fujikon (0927)</td>
		<td>27.3%</td>
		<td>43.6%</td>
	</tr>
	<tr>
		<td>
		01-Dec-06</td>
		<td>7-year compound</td>
		<td><b>48.6%</b></td>
		<td><b>724.2%</b></td>
	</tr>
	<tr>
		<td></td>
		<td>Compound average</td>
		<td>5.8%</td>
		<td>35.2%</td>
	</tr>
</table>
<p>&nbsp;</p>
<p>What this table shows is that if you put <b>$1,000</b> into the first pick, and rotated into the next
one each year, you would have made 724.2% and would have about <b>$8,242</b> by now, 
a compound average gain of 35.2% per year. By comparison, if you invested
the same amount in the Hang Seng Index 7 years ago, and reinvested the dividends, you would now have about <b>$1,486,</b> 
a compound average gain of 5.8% per year, even after a tremendous run 
which took it to record highs this year. So our picks have
out-performed the index by <b>455% </b>over 7 years.</p>
<p>Last year a reader pointed out that it is not always possible to 
buy the stock at the same price as it was the day before we picked it. However, we 
note that after a cooling-off period, sometimes our picks actually go 
below where we tipped them, allowing a lower entry point, and sometimes they 
trade higher during the year than the year-end price, allowing a higher exit 
point and better returns, but we don't claim any credit for either of these in 
the track record above, so it probably all evens out in the wash.</p>

<h3>Market overview</h3>
<p>In the last year, and particularly in the last few months, 
investors have, in our view, been indiscriminately exuberant over IPOs, commodities, 
energy and mainland consumer plays, and have lost sight of governance 
risk and fundamental valuation. A lot of hot money has also been chasing a 
narrow selection of large-caps, resulting in over-stretched valuations. Funds have been awash with cash 
and forced to invest it, and the 
retail public has begun to believe that all IPOs are guaranteed to make money 
just because some tycoon is buying it.</p>
<p>In Hong Kong, inbound liquidity to the mainland has kept 
mortgage rates artificially low and fuelled the property bubble. After a change 
in international accounting standards, companies' reported earnings now include property revaluation 
gains, but these represent the increase in the net present value of all the 
future years of income attributable to such assets, so they should be excluded 
when calculating the core P/E of the market, otherwise you are looking at a 
multiple on a multiple. Complacent analysts have been quoted as saying that the 
market's P/E is still &quot;reasonable&quot; or &quot;attractive&quot; at 14 or 15 despite recent 
record high prices. However, if you strip out property revaluations and other 
non-recurring items such as profits from sales of businesses, then the core P/E 
is now about 20, and it has spent very little time up there in the last 30 years. 
We haven't seen this much irrationality since the 1999-00 tech bubble, and you 
know what happened next. So look for a big sell-off of blue chips in the coming 
12 months.</p>
<p>Meanwhile, if you do your homework, there are lot of cheap value 
stocks to choose from, particularly in the manufacturing sector, which is 
emerging from a difficult 2 years in which margins were squeezed by rising raw 
material prices. These have now stabilised or in some cases have begun to fall, 
allowing recovery of margins as the higher costs are passed down the supply 
chain. Meanwhile, the electricity shortages you read so much about in 2004-5 
have been much reduced this year, as China brings new capacity on stream. You 
will also have read about the 3% appreciation in the RMB - but that is partly 
because the standard quotation of the currency is against the US dollar. In 
fact, the RMB has actually <u>depreciated</u> around 8% against the Euro in the 
last year, making exports to Europe more attractive and accelerating the 
outsourcing of manufacturing to China. This has gone some way to mitigating the 
rising cost of labour in China, and factories are also meeting the challenge by 
moving inland as the transport infrastructure improves, and by increasing 
automation where possible.</p>
<p>So this year, our choice of Christmas Pick is quite difficult, 
as there are several worthy candidates on our shortlist. However, we will stick 
to the discipline of naming only one, so without further ado... <a href="../sounds/drumroll.wav">drum roll</a> please.....</p>
<h3>The Pick</h3>
<p>The 2006 Christmas Pick is 
<a target="_blank" href="http://www.sinogolf.com/">Sino Golf Holdings Ltd</a> (<b>Sino Golf</b>, 
0361), a manufacturer of golf clubs and golf bags. The stock closed on Friday 1-Dec-06 at 
HK$0.87, with a market capitalisation of $262.9m.</p>
<p>On 15-Sep-06, Sino Golf announced its 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060918/LTN20060918030.pdf">interim results</a> for the 6 
months to 30-Jun-06. Sales grew 62.2% to $280.7m, gross profit grew 43.1% to 
$79.8m and profit 
before tax rose 24.1% to $24.16m. However, in the previous year they had a 1-time 
gain on sale of a subsidiary, and excluding that, pre-tax profits grew 43.0%. 
EPS grew 25% to $0.077. Profits were impacted by a $5m increase in finance costs 
to $9.2m, due to rising rates and to the increased amount of trade finance as 
sales expanded. Gross margins were compressed as a shortage of graphite sheets 
meant that they had to buy more finished graphite shafts. The civil and military 
aviation industry, in particular, is soaking up much more graphite and titanium 
these days.</p>
<p>North America, to which Sino Golf mainly supplies golf clubs, 
accounted for 74.7% of sales, while Japan, which is mainly golf bags, was 11.7%. 
The weak spot in the firm's geographical coverage is Europe, which accounted for 
only 3.6% of sales in the first half of 2006. Asia ex-Japan was up 103% to 
$27.6m, or 9.8% of sales.</p>
<p>The company splits sales into &quot;golf equipment&quot; and golf bags. 
Golf equipment accounted for 83.1% of sales, of which three quarters was golf 
clubs, and one quarter was club heads, shafts and accessories. Bags accounted 
for the other 16.9% of group turnover. The firm has also leased another 12,000 square metres of factory 
to cope with expanding golf bag sales and reduce the need for sub-contracting 
out work.</p>
<p>Sino Golf has been building a new golf club factory in Shandong 
province, which should enter production early in 2007, although we would expect 
it won't be fully up to speed until mid-year. At 30-Jun-06 they had 
already spent $46.6m on this, with another $18m due until completion, for a 
total spend of $64.6m. That's up from a budget of $55.1m in the 2005 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060504/LTN20060504151.htm">annual 
report</a>.</p>
<p>Shandong has lower labour costs than the existing factories 
and this should help competitiveness. Management are hoping to land new &quot;first 
tier&quot; clients to take up the new capacity. This would also reduce their 
dependence on the <a target="_blank" href="http://www.adamsgolf.com">largest 
customer</a>, which has been growing so fast that it accounted for 63.3% of golf 
equipment sales or 52.7% of total turnover (around $148m), compared with 35% 
(about $130m) in all of 2005. In particular, hybrid irons were driving sales. 
However, the dependence is mutual - Sino Golf accounted for 64% of inventory 
purchases by that customer in the 9 months to 30-Sep-06, up from 53% a year 
earlier. That customer's own sales are seasonally stronger in the first half of 
the year, but in the third quarter they did report a 47% increase in net sales 
year-on-year with inventories of finished goods at 30-Sep-06 up 105% YOY to 
US$12.37m. They must be hoping for a good Christmas.</p>
<p>Sino Golf's top 5 golf club clients accounted for 87.9% of golf 
equipment or 73.2% of total turnover (about $206m), compared with 66% of 
turnover in 2005.</p>
<h4>Outlook</h4>
<p>Based on the above, we would expect good results in the second 
half, but the full-year growth rate will probably not be as high as it was in 
the first half, which came off a weak comparative base from 2005. We are 
pencilling in EPS of $0.14 for 2006, which puts the stock on a 2006 P/E of 6.2x. 
20% growth in 2007 would reduce that to 5.2x.</p>
<h4>Capital structure</h4>
<p>Sino Golf listed on 20-Dec-00 after an IPO and placing of 75m 
shares (then 25% of the company) at $1.30 per share. Since then, they have been 
fairly careful with the share capital. There have been no dilutive placings, and 
only 2.2m shares have been issued upon the exercise of options, raising the 
total to 302.2m. As far as we know, there are outstanding options over 22.38m 
shares (in HK, option grants are not required to be disclosed by issuers except 
in half-year or annual reports). Of these, 17.28m are exercisable at $1.51 and 
expire on 31-Dec-06, so it is unlikely that they will be exercised. 1.1m are 
held by employees, exercisable at $0.83 and expire 8-Jun-07, 1m are held by a 
director, Mr Chang Hua Jung, granted on 3-Aug-06 with an exercise price of $0.70 
and expiring on 31-Jul-08, and 3m are held by an unnamed business consultant on 
the same terms. </p>
<p>At 30-Jun-06, Sino Golf had borrowings of $183.9m, cash of $74.6m 
and net debt of $109.3m. Net tangible assets were $167.6m, or about $0.55 per 
share, so debt:equity gearing was 65%. The company has kept a slim, efficient 
balance sheet, paying out surplus capital to shareholders, a total of $0.563 per 
share since IPO. Other small-caps should take note. However, we would expect future dividends 
from Sino Golf to depend on how much 
capital is needed to be retained for growth of capacity and working capital. As 
long as our companies are putting our capital to good use in their core 
business, we have no objection. A dividend, at the end of the day, is just a 
miniature inverse rights issue. If a company doesn't hoard capital, then we are 
happy to support it when capital is needed.</p>
<p>Heeding our calls in <a target="_blank" href="vampire1.asp">Project Vampire</a> for reducing the general mandate to issue new shares, Sino 
Golf did cut its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060502/LTN20060502272.pdf">
mandate</a> from 20% to 15% at this year's AGM, but we still voted against, 
because it does not go far enough. We will only vote in favour of a general 
mandate if it limits involuntary dilution of our holdings in cash placings to 5% per year, with a 
maximum discount of 5%. Hopefully they will try harder this year! More and more 
companies are responding to the wishes of investors and cutting the general 
mandate.</p>
<h4>Ownership history</h4>
<p>The directors in aggregate hold 57.46% of Sino Golf. The bulk of 
this, 56.76%, is held through a BVI company called CM Investment Co Ltd (<b>CMI</b>), 
which in turn is 67.46% owned by another BVI company called A&amp;S Co Ltd (<b>A&amp;S</b>), 
26.32% by co-founder Takanori Matsuura&nbsp; (<b>Mr Matsuura</b>, deceased 
13-Aug-06), 4.18% by Chairman Augustine Chu Chun Man (<b>Augustine Chu</b>) and 
1.21% by his brother, Executive Director Simon Chu Yuk Man (<b>Simon Chu</b>). 
&quot;CM&quot; presumably stands for Chu and Matsuura. A&amp;S presumably stands for Augustine 
&amp; Simon, and is owned 64.00% by Augustine Chu, 21.71% by Simon Chu, and 14.29% 
by another family member, who (at the time of the IPO) was Alice Tung Oi Yuk, 
Augustine's mum.</p>
<p>From the IPO until 21-Jul-03, CMI was 51.17% owned by A&amp;S and 
48.83% owned by Mr Matsuura. Then CMI
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030723/LTN20030723030.pdf">
placed</a> 30m shares to 5 independent parties at $1.25, and used all the 
proceeds to buy back some of its own shares from Mr Matsuura, leaving the 
brothers' attributable stake in Sino Golf unchanged. As a result, A&amp;S owned 
60.19% of CMI while Mr Matsuura reduced to 39.81%.</p>
<p>On 15-Sep-03, Mr Matsuura 
sold 10m Sino Golf shares off-market at $1.35, and later that month 11.294m 
shares were transferred into CMI by directors and employees of Sino Golf in 
exchange for new shares in CMI. Then on 3-Oct-03 A&amp;S bought shares in CMI from 
Mr Matsuura for $27m, equivalent to $1.35 per Sino Golf share. On 14-Jun-06, 
just 2 months before he died, Mr Matsuura entered into a contract to sell 9.52% 
of CMI for $12.48m, equivalent to $0.71 per Sino Golf share, although according to the 
interim report for 30-Jun-06, his stake was still 26.32%. We don't know who the 
buyer was, but it's a fair bet that it is A&amp;S.</p>
<p>On 29-Apr-04, CMI sold 10m shares off-market at $1.60. 11 days 
later, fund manager Value Partners Ltd increased through the 5% threshold at 
$1.547, and through 6% at $1.20 on 24-Mar-05. They went back below the 
disclosure threshold on 7-Sep-05 at $0.60.</p>
<p>Your editor, David Webb, has a holding in Sino Golf which 
increased through the 5% disclosure threshold on 9-Nov-05 at $0.673, and through 
the 6% disclosure threshold on 21-Sep-06 at $0.78. There are currently no other 
shareholders above the 5% threshold.</p>
<p><b>Corporate governance</b></p>
<p>There is one significant blot on Sino Golf's corporate 
governance record. On 20-Oct-04, one of its then customers,
<a target="_blank" href="http://www.huffy.com/">Huffy Corporation</a>, filed for 
Chapter 11 bankruptcy protection in the USA, and has since restructured. Huffy 
owed Sino Golf HK$11.869m in accounts receivable at that time. Huffy had never 
been named as a customer in Sino Golf's reports, and investors were in the dark 
on the problem until the results for the year to 31-Dec-04 were 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050419/LTN20050419036.pdf">announced</a> on 
18-Apr-05, almost 6 months after Huffy went duffy. As a consequence, Sino Golf 
had to make a bad debt provision of $9.5m, and it also reduced its turnover, 
resulting in almost no profits in the second half of 2004. When the results came 
out, the share price fell 22.7% the next day and 34.5% over the course of a 
week. </p>
<p>We filed a complaint with the Stock Exchange, and on 12-Jul-06, 
the Listing Committee
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060712/LTN20060712110.pdf">
announced</a> that after a hearing on 4-Apr-06, it had determined that the 
company had breached Listing Rule 13.09 which requires prompt disclosure of 
price-sensitive information when known to the board, and issued a public 
criticism of the executive directors.</p>
<p>At the AGMs in 2005 and 2006 we have discussed the situation 
with the Chu brothers, who seem to have learned a lot from the episode, and 
we hope their credit controls and disclosure will improve as a result. They have become more 
conservative on credit controls, buying insurance and factoring invoices to reduce exposure. As we do 
with all listed companies, we urged them to accelerate their financial reporting 
dates and produce a quarterly report to keep investors better 
updated. We shouldn't have to figure out how HK-listed companies are doing by 
reading their customers' quarterly reports. Anyway, 'tis the season of goodwill, 
so just this once, this corporate governance sin is hereby forgiven.</p>
<h4>Christmas wrap</h4>
<p>So there you have it, our 8th Christmas pick. Have a happy 
holiday season, and if you don't put a set of golf clubs under the tree, then 
try a few shares of Sino Golf instead. There are still 15 shopping days till 
Christmas, so don't go panic-buying.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12039">FUJIKON INDUSTRIAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12563">SINO GOLF HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=110">Christmas picks</a></li>
				
		</ul>
	<hr>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="#top">Back to top</a></p>
<hr>
</div>

</body>
</html>