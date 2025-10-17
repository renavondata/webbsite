
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

<script type="text/javascript">document.title="The 2008 Christmas Pick";</script>

	<div class="summary">Season's greetings to all our readers - time for Santa Webb's annual stock pick. Last year's pick, Shinhint (2728), out-performed the HSI by 6.5% and, of course, lost money. Even so, over 9 years of picks, we've gained 358%, a compound average of 18.4% per year, while the HSI has averaged just 3.1%. So what are we putting under the Christmas tree this year? Read on...</div>

<h2 class="center">The 2008 Christmas Pick<br>
<span class="headlinedate">17 December 2008</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p>What, you thought we'd forgotten? No, we just decided to wait 
till nearer Christmas than before, so that we can see more companies' interim 
results for 30-Sep-08 before making our pick.</p>
<p><i>Webb-site.com</i> is celebrating its 10th birthday! Loyal 
readers will know that we only publish one stock recommendation per year - 
something nice to say in the season of goodwill to make up for the campaign 
against bad corporate and economic governance in the rest of the year. We get to 
play Santa, rummaging in our sack of investments and picking the stock that we 
think is most likely to perform over the next year. It is a seasonal gift to 
readers, a free ride on our research - you don't have to buy it, but if you 
followed our picks in the past, then you made good money in the long run. Last 
year, of course, you would have been better off just putting it in the bank 
(assuming your bank didn't go bust).</p>

<p>Apart from devoting about half his time to public causes, your 
editor is also a private investor who specialises in smaller companies, panning 
the riverbed of the bottom 90% of HK-listed companies that make up 10% of the market value, 
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
	<li>We're not a licensed investment 
adviser, and you're not paying us for advice, so you have no right to rely on 
it. All we are doing is exercising our right of free speech, one of the great 
competitive advantages of Hong Kong's economy.
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
decrease our holdings at any time, according to market circumstances and our own 
risk management.
	</li>
	<li>Stocks can go down as well as up. Don't 
put all your eggs in one basket. We don't either.
	</li>
</ol>

<p>Before we tell you what we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our previous recommendations performed.</p>

<h3>Last year's Pick</h3>
<p>Last year our pick was
<a target="_blank" href="http://www.shinhint.com/">Shinhint Acoustic Link 
Holdings Ltd</a> (<b>Shinhint</b>, 2728), a maker of speaker systems for PCs and 
for digital audio players such as iPods, headsets, and more recently, speakers 
for flat panel TVs and cars. Sales for the year ended 31-Dec-07 were up 16% and 
net profit was up 15%, with EPS of $0.179, up 8%. Like many manufacturers, the 
company was subsequently hit by rises in raw material prices, labour costs and 
the Renminbi, causing it to put out a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080725/LTN20080725279.pdf">
profit warning</a> on 25-Jul-08. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080926/LTN20080926545.pdf">
interim results</a> followed on 19-Sep-08, showing sales for the 6 months to 
30-Jun-08 up 4% but profit dropped to a near-breakeven $0.95m compared to 
$12.15m a year earlier. However, Shinhint said <em>&quot;While most customers agreed 
to absorb a portion of the increased costs, the impact will only be reflected in 
the second half of the year.&quot;</em> Historically, about two-thirds of Shinhint's 
sales are in the second half of the year. Headcount at 30-Jun-08 was 5,900, 
compared with 5,200 a year earlier, so it looks like they were prepared for 
higher volume.</p>
<p>As readers will know, the commodities bubble has burst in the 
second half of 2008, the RMB has stabilised, and the Chinese labour market is 
significantly weaker, partly as a result of self-inflicted damage from 
interventionist PRC government policies, as well as weaker exports. All of these 
factors favour the surviving manufacturers, particularly in sectors with 
technology growth histories. Meanwhile, Shinhint has been investing in greater 
automation to reduce labour needs. Incidentally, Shinhint has also invested 
HK$12.2m (including a loan of $7.8m) in 51% of
<a target="_blank" href="http://www.tommyca.net">Tommyca Hong Kong Ltd</a>, 
which is producing an MP3 player with speakers for bicycle handlebars.</p>
<p>On 3-Dec-07, the last day before our pick, Shinhint closed at 
$1.01. During the year, the stock traded between an intra-day high of $1.19 on 
4-Dec-07 and a low of $0.385 on 30-Sep-08, and closed at $0.55 on 17-Dec-08 
(today). Investors received dividends of $0.051 during the year, for a total return of 
$0.601 and a loss of 40.5%. By comparison, in the same period, the Hang Seng 
Total Return Index (which includes dividends) lost 44.1%, so Shinhint 
out-performed the index by 6.5%.</p>
<p>During the year, your editor David Webb increased his holding in 
Shinhint, going through the 6% disclosure boundary on 4-Jun-08 at $0.89. We've 
bought more since then. We weren't the only ones to see value in the stock; 
Shinhint itself began share buybacks on 6-Oct-08, buying back 7.38m shares 
(about 2.23% of the company) up to 9-Dec-08 at an average price of $0.458. We 
encourage them to do more. At 30-Jun-08, the group had net cash of $79.3m, or 
about $0.24 per share, so they can afford it.</p>

<h3>The 9-year history</h3>

<p>Doesn't time fly? We've been running this series for 9 years 
now, and our pick has made money in 7 out of 9 years, out-performing the total return 
on the Hang Seng Index 7 years out of 9. Here's the track record:</p>
<img class="center" alt="" src="../images/img9.gif">
<p>What this table shows is that if you put <b>$1,000</b> into the first pick, and rotated into the next
one each year, you would have made 357.8% and would have about <b>$4,578</b> by now, 
a compound average gain of 18.4% per year. By comparison, if you invested
the same amount in the Hang Seng Index 9 years ago, and reinvested the dividends, you would now have about <b>$1,312</b>, 
a compound average gain of 3.1% per year. So our picks have
out-performed the index by <b>248.9% </b>over 9 years. Both the stock and index 
calculations exclude transaction costs.</p>
<h3>Market overview</h3>
<p>On 16-Sep-07, we published an article called
<a target="_blank" href="incredibubble.asp">Incredibubble</a>, commenting on the 
bubbles in Chinese stock markets, both in the mainland and HK. With the Hang 
Seng Index (<b>HSI</b>) then at 24,898 and the Shanghai Composite Index (<b>SCI</b>) 
then at 5,312, we asked our readers in an opinion poll, what is the lowest level 
at which the two indices will <u>ever</u> trade at again? We closed that poll at 
the end of 
24-Sep-07, and more than 59% of
<a target="_blank" href="../vote/result.asp?p=19">responses</a> 
said the SCI would trade below 2,000, while more than 50% said the HSI would 
trade below 14,000.</p>
<p>Well as we now know, the SCI reached a daily low (so far) of 
1,707 on 4-Nov-08, and the HSI reached a daily low (so far) of 11,015 on 
27-Oct-08, as 28% of our readers said it would (only 14% said it could ever go 
below 10,000). <a href="../audio/Backchat081028.asf">Appearing on local radio</a> 
on 28-Oct-08, the morning after the HSI hit its daily low, we remarked that on 
valuation measures, the HSI was getting near historic lows and would probably 
bottom out in the 10,000-12,000 range. We still hold that view, although the 
subsequent 40% rebound has been irrational and we would expect the market to 
revisit that range as the recession bites in the first half of 2009.</p>
<h3>Spoilt for choice - honourable mentions</h3>
<p>Meanwhile, in our fishing ground of small-caps, valuations are 
at least as cheap as in 1998. We are spoilt for choice, with some companies 
trading at close to their net cash, at steep discounts to net asset value, with 
consistent dividends yielding in the teens, and with P/Es below 4. Indeed, your 
editor's entire portfolio is tonight on a trailing 12-month P/E of 3.67 and a 
price/book of 0.41. The metaphoric glass is not half-empty, it is one-third 
full. If you understand the businesses you are investing in, and if you trust 
the management, then you probably won't get such attractive valuations for 
another 10 years. So making our 2008 Christmas Pick has been a difficult choice 
with so many deserving stocks to choose from. Before announcing our pick, we 
give &quot;honourable mentions&quot; to a couple of stocks, in no particular order:</p>
<p>We were tempted to repeat one of our earlier Christmas Picks,
<a target="_blank" href="http://www.fujikon.com">Fujikon Industrial Holdings Ltd</a> (0927) which is now 
on a trailing P/E of 3.16, P/B of 0.52, and a dividend yield of 14.7%. At 
30-Sep-08, it had net cash of $313m, or about $0.78 per share. It closed tonight 
at $1.02, so excluding the cash, you get the business for less than 1x earnings. 
However, we've never repeated a Christmas Pick before, and we are not going to 
start now. You want something new, don't you? Your editor holds over 7% of that 
stock, having increased through the 7% disclosure threshold on 18-Sep-08 at 
$1.104.</p>
<p>We also give an honourable mention to optical frames maker
<a target="_blank" href="http://www.sunhingoptical.com/">Sun Hing Vision Group 
Holdings Ltd</a> 
(0125), which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081217/LTN20081217336.pdf">
announced</a> its interim results for the six months to 30-Sep-08 this evening. 
Turnover grew 5% but margins were squeezed and earnings dropped 17% for the 
half-year, a pretty respectable outcome. The company has net cash and time 
deposits of $255.3m, or about $0.97 per share, and post-results at $1.25 it is 
on a trailing P/E of 2.54, P/B of 0.43 and a dividend yield of 15.2%. The 
company has weathered economic down-turns well before, and although we would 
expect sector sales and profits to be under pressure in the second half of its 
financial year, this company should do well in the longer run and we are happy 
to wait for that. We invest in businesses for the long-run earnings and ignore 
the short term hiccups. Your editor holds over 5% of the stock, having increased 
through the 5% disclosure threshold on 28-Oct-08 at $1.60 after cutting below 5% 
on 17-Jul-08 at $3.98. </p>
<p>In the cases of both Fujikon and Sun Hing Vision, although they 
have consistent dividend pay-outs, they have accumulated too much cash and 
should distribute the excess as a one-time special dividend. Cash in corporate 
balance sheets is always heavily discounted in market share prices, so 
distributions eliminate the discount and realise value for all shareholders, 
including controlling shareholders, and a slimmer balance sheet boosts return on 
equity. Like people, slim companies can run faster than fat ones.</p>
<h3>The 2008 Christmas Pick</h3>
<p>Now without further ado, here it is...</p>
<p>The 2008 Christmas Pick is
<a target="_blank" href="http://www.alco.com.hk">Alco Holdings Limited</a> 
(<strong>Alco</strong>, 0328), a maker of consumer electronics, including portable DVD players, flat 
panel TVs, iPod/iPhone-ready audio systems and set-top boxes. It deals with 
top-tier retailers in the US and Europe, with the largest customer (believed to 
be Walmart) accounting for 26% of sales in the year to 31-Mar-08, and the top 5 
customers accounting for 74%. Alco has its own
<a target="_blank" href="http://www.venturer.com/">Venturer</a> brand, and also 
produces ODM products for
<a target="_blank" href="http://www.1800customersupport.com/">stores' own-brands 
and licensed brands</a>. Recently, Alco has been producing digital-to-analogue 
converter boxes for sale in the USA, ahead of the national
<a target="_blank" href="https://www.dtv2009.gov/">switch-off</a> of the 
analogue TV signal on 17-Feb-09.</p>
<p>Alco was founded in 1968 as a maker of transistor radios, and listed on 
27-Nov-92, so it has been through several economic cycles as well as huge 
changes in the technology of its industry, and remained successful. It has run a 
lean balance sheet, paying out consistent dividends which amount to $1.29 in the 
last 5 years, which is more than the current share price. It has also placed 
emphasis on investment in automation, reducing labour needs through high speed 
SMT (Surface Mount Technology) and other equipment.</p>
<p>On 11-Dec-08, Alco
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081211/LTN20081211599.pdf">
announced</a> its results for the 6 months to 30-Sep-08. Sales grew 47% to 
$2,826m, helped by a low base for comparison in the prior year, but still up 16% 
on the second half of the year to 31-Mar-08. Net profit for the half-year 
dropped 11.8% to $90.2m compared to a year earlier, but that is after taking a 
loss this year of $16.4m on loans which form part of an investment in 10.45% of 
panel-maker <a target="_blank" href="http://www.hydis.com">Hydis</a>, which Alco 
invested in May-08 in a consortium with
<a target="_blank" href="http://www.varitronix.com/">Varitronix</a> (0710), 
which also holds 10.45%, and Taiwan-based
<a target="_blank" href="http://www.pvdisplay.com/">Prime View Display Inc</a>, 
which owns 74.1%. The loans from shareholders and the investment are denominated 
in Korean Won, so when the Won depreciated, Alco had to take a provision through 
its income statement. Regarding that as a non-recurrent and non-core item, 
Alco's adjusted earnings increased by about 4.2% for the half-year. Like other 
manufacturers, its margins were under pressure from raw materials, labour and 
the RMB, but these pressures have now abated. The interim dividend was 
maintained at $0.09, and last year's final dividend was $0.14.</p>
<p><strong>The stock closed today (17-Dec-08) at HK$1.21, with a 
market capitalisation of HK$673.6m. It is on a trailing P/E of 3.42 (adjusted 
for one-time items), a Price/Book of 0.46, and a dividend yield of 19.0%. It 
starts trading ex-dividend on 22-Dec-08, when the P/E would drop to 3.16 based 
on tonight's price. In the last year, the stock has ranged from $3.90 
to $0.63 intra-day.</strong></p>
<p>The object of the investment in Hydis, which was purchased from 
court receivership, was to cement relationships with Prime View (which supplies 
panels used in Alco products) at a time when panels were in short supply. We 
regard that as a risky and unnecessary use of capital, but it is a relatively 
small investment which does not substantially detract from the main Alco story. 
Since the investment, small panel prices have dropped 20-30%, and Hydis may 
struggle to turn around.</p>
<p>At 30-Sep-08, Alco had net debt (including trade finance) of 
$408m, or about 28% of net tangible assets. The half-year end is the seasonal 
peak of working capital requirements as they have to build inventory for 
Christmas shipments, so the year-end gearing is a lot lower. In the last year or 
two, retailers in the US have pushed suppliers to hold inventory while it 
crosses the ocean and provide domestic delivery in North America, which means it 
stays on Alco's books for longer, and sales are shifted more towards the second 
half of the year. However, Alco's North American distribution system and 
after-sales support can also be regarded as a competitive advantage.</p>
<h4>Ownership</h4>
<p>Alco's Chairman and Founder, Kimen Leung Kai-ching, owns about 
43.9% of Alco, including a family trust in which his son Wilson Leung Wai-sing, 
the CEO, is a beneficiary. Wilson holds 8.0% and another son, David Leung Wai-lap, 
holds over 6%, making a total family holding of about 58%. Your editor David 
Webb currently holds over 5% of Alco. He went above the 5% disclosure threshold 
on 17-Jul-08 at $1.833, having cut below 5% on 18-Dec-07 (a year ago) at $3.394. 
Commonwealth Bank of Australia, through its First State Investments arm, holds 
between 5% and 6% in funds under management.</p>
<h4>Outlook</h4>
<p>While the global recession is bound to impact the electronics 
sector, Alco is at the mass-market end of it, supplying TVs and other products 
in the low and middle price ranges, with smaller screen sizes, rather than the 
high-end branded market. Alco's major supermarket customers such as Walmart have 
been winning an increasing market share in electronics relative to struggling 
specialist retailers such as Circuit City, as consumers trade down. We believe 
the consumer slow-down is more than reflected in the price, and Alco will 
weather the storm well. </p>
<h3>Christmas wrap</h3>
<p>So there you have it, our 10th Christmas pick. Have a happy 
holiday season. There are still a few shopping days till 
Christmas, so don't go panic-buying. Let the day-traders have their their fun 
first. Unless you enjoy the 
thrill of gambling, we suggest you take your time. The <i>Webb-site.com</i> 
Christmas Picks are meant for a one-year horizon, not one-day.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4754">ALCO HOLDINGS LIMITED (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12039">FUJIKON INDUSTRIAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=27498">Jintai Energy Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8477">SUN HING VISION GROUP HOLDINGS LIMITED</a></li>
				
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