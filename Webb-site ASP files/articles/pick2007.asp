
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

<script type="text/javascript">document.title="The 2007 Christmas Pick";</script>

	<div class="summary">Season's greetings to all our readers - time for Santa's annual stock pick. Last year's pick, Sino Golf (0361), under-performed, recording our first ever loss of 6.7% overall. Even so, over 8 years of picks, we've gained 669%, a compound average of 29.1% per year, while the HSI, despite the current bubble, has averaged 11.3%. So what are we putting under the Christmas tree this year? Read on...</div>

<h2 class="center">The 2007 Christmas Pick<br>
<span class="headlinedate">3 December 2007</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p><i>Webb-site.com</i> is celebrating its 9th birthday, and 
loyal readers will know that we only publish one stock recommendation per year - 
something nice to say in the season of goodwill to make up for the campaign 
against bad corporate and economic governance in the rest of the year. We get to 
play Santa, rummaging in 
our sack of investments and picking the stock that we think is most likely to 
perform over the next year. It is a seasonal gift to readers, a free ride on our 
research - you don't have to buy it, but if you followed us in the past, then 
you made good money.</p>

<p>Apart from devoting about half his time to public causes, your 
editor is also a private investor who specialises in smaller companies, panning 
the riverbed of the bottom 85% of listed companies that make up 10% of the market value, 
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
  <li>
We only make one pick a year, because
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
decrease our holdings at any time, according to market circumstances and our own 
risk management.
  </li>
	<li>
Stocks can go down as well as up. Don't 
put all your eggs in one basket. We don't either.
  </li>
</ol>

<p>Before we tell you what we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our previous recommendations performed.</p>

<h3>Last year's Pick</h3>
<p>Las year our pick was 
<a target="_blank" href="http://www.sinogolf.com/">Sino Golf Holdings Ltd</a> (<b>Sino Golf</b>, 
0361), a manufacturer of golf clubs and golf bags. As we noted a year ago, Sino 
Golf is building a new factory in Shandong Province, which was due for 
completion <i>&quot;towards the end of&quot;</i> 2006, so we expected it to be in 
operation in 2007. Unfortunately, this has been delayed, and the latest 
information in the Jun-07
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070927/LTN20070927620.pdf">
interim report</a> is that the new factory will be ready to meet peak season 
requirements in 2008.</p>
<p>A second problem was that in the first half of 2007, sales to 
the <a target="_blank" href="http://www.adamsgolf.com/">largest customer</a> of 
the golf equipment (clubs) segment dropped 43% from a year earlier <i>&quot;due to 
non-compromise...on certain product models&quot;</i>. In other words, Sino Golf 
decided to turn away business rather than cut its prices. This strategy has 
apparently paid off as it says it has <i>&quot;gained back orders on the forfeited 
models for the season ahead, production of which will commence during the second 
half of 2007&quot; </i>although they didn't say whether they cut prices to achieve 
that<i>.</i> Meanwhile it has diversified its customer base with growth from 
other customers, but the overall result was that sales in the golf equipment 
segment dropped 25% in the first half of 2007.</p>
<p>The group's other business segment, golf bags and accessories, 
is doing well, with sales up 72% in the first half of the year compared with a 
year earlier. The segment accounted for 31% of group turnover, offsetting the 
decline of the golf equipment segment. However, golf bags are a lower-margin 
business, so overall, group turnover dropped 8.4% for the 6 months, while net 
profit dropped 38%.</p>
<p>Sino Golf, like most companies in HK, still does not produce 
quarterly results, but we can see from the
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1059763/000105976307000013/adgo10qq3.htm">
quarterly results of its largest customer</a> that sales by Sino Golf are 
recovering. Each quarter, the customer discloses the percentage of its purchases 
from its largest supplier (Sino Golf) and we've been tracking it long enough to 
know that this is well correlated with Sino Golf's reported sales to that 
customer, but not a perfect match, probably because of factors such as shipping 
and insurance. So here is the table:</p>
<img class="center" alt="" src="../images/pick201.gif">
<p>As you can see, after the drop in purchases in Q1 and Q2, the 
purchases in Q3 were up 12% on a year earlier. Your editor still holds over 6% 
of Sino Golf.</p>
<p>On 1-Dec-06, the last day before our pick, Sino Golf closed at 
$0.87. During the year, the stock traded between an intra-day high of $1.24 on 
4-Dec-06 and a low of $0.68 on 5-Oct-07, and closed at $0.77 on 3-Dec-07. 
Investors received dividends of $0.042 during the year, for a total return of 
-6.7%, the first loss in 8 years of picks.</p>

<h3>The eight year history</h3>

<p>Doesn't time fly? We've been running this series for 8 years 
now, and our pick has made money in 7 out of 8 years, out-performing the total return 
on the Hang Seng Index 6 years out of 8. Here's the track record:</p>
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
		<td>01-Dec-06</td>
		<td>Sino Golf (0361)</td>
		<td>57.9%</td>
		<td>-6.7%</td>
	</tr>
	<tr>
		<td>03-Dec-07</td>
		<td>8-year compound</td>
		<td><b>134.7%</b></td>
		<td><b>669.3%</b></td>
	</tr>
	<tr>
		<td>
		</td>
		<td>
		Compound average</td>
		<td>11.3%</td>
		<td>29.1%</td>
	</tr>
</table>
<p>What this table shows is that if you put <b>$1,000</b> into the first pick, and rotated into the next
one each year, you would have made 669.3% and would have about <b>$7,693</b> by now, 
a compound average gain of 29.1% per year. By comparison, if you invested
the same amount in the Hang Seng Index 8 years ago, and reinvested the dividends, you would now have about <b>$2,347</b>, 
a compound average gain of 11.3% per year, even with the bubble which took it to record highs this year. So our picks have
out-performed the index by <b>227.8% </b>over 8 years. Both the stock and index 
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
<p>As we said at the time, it is impossible to call the top of 
a bubble, and after that article was published, the HSI went on to a daily peak 
of 31,638 on 30-Oct-07, while the SCI peaked at 6,092 on 16-Oct. Since then, the 
HSI has fallen 9.4% to 28,658, while the SCI has fallen 20.1% to 4,869 tonight. Still bags of 
downside risk there.</p>
<p>The only sector of the market in which we currently find good 
value is, once again, small companies which actually make things, broadly known 
as &quot;industrials&quot;.</p>
<h3>The Pick</h3>
<p>Readers may recall that two years ago we picked Fujikon (0927), which turned in a respectable 43.6% gain in its first year. The 
stock continues to do well, on the back of strong demand for its headphones 
which are bundled with mobile phones, which increasingly play music, and on a 
stand-alone basis for the higher-end market. The stock rose from $1.93 on 
1-Dec-06 to $3.45 on 3-Dec-07 and has paid dividends of $0.12, for a second-year 
gain of 85.0% and a 2-year return of 165.6%. Thanks to earnings growth, the 
stock is still cheap, on a P/E of 7.4 times trailing 12 months earnings to 
Sep-07. Your editor holds more than 6% of this company.</p>
<p>Now as it happens, this year's pick is in a similar sector. So 
without further ado, here it is...</p>
<p>The 2007 Christmas Pick is
<a target="_blank" href="http://www.shinhint.com/">Shinhint Acoustic Link 
Holdings Ltd</a> (<b>Shinhint</b>, 2728), a maker of speaker systems for PCs and 
for digital audio players such as iPods, headsets, and more recently, speakers for 
flat panel TVs and cars. Customers include
<a target="_blank" href="http://www.logitech.com">Logitech</a>,
<a target="_blank" href="http://www.alteclansing.com/">Altec Lansing</a> and
<a target="_blank" href="http://www.sennheiser.com/">Sennheiser</a>. The stock closed 
today (3-Dec-07) at 
HK$1.01, with a market capitalisation of $333.8m. At 30-Jun-07, it had net cash 
of $140m, or about $0.42 per share.</p>
<p>Because of the product profile, business is seasonal with sales 
and profits stronger in the second half. For the year to 31-Dec-06, it 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070502/LTN20070502226.htm">reported</a> 
revenue growth of 15.5% to $1,174m and net profit of $50.3m, but we add back a 
loss on the disposal of an associate of $3.9m to make $54.2m. For the six months 
to 30-Jun-07, it reported a net profit of $12.1m, compared with $11.8m a year 
earlier (after adding back the one-time loss). with sales up 1.9% on a year 
earlier. So on a trailing 12-months basis, earnings are $54.5m and the P/E is 
6.1. If you deduct the net cash from market cap and the interest it could earn 
(at about 4% p.a.) from earnings, then the core trailing P/E is about 3.9.</p>
<p>In 2006 the largest customer accounted for 69.7% of sales, and 
the top 5 were 95.5%, so there is a need to diversify that, and they appear to 
be working on it.</p>
<h4>Outlook</h4>
<p>What the historic figures don't show is that Shinhint is on an 
expansion path. It opened a new factory in ChangAn, Dongguan in May-07, 
dedicated to the production of speakers for flat-panel TVs and the automotive 
sector. The plant can make up to 20m speakers per year. These would include 
conventional speakers as well as the thinner &quot;Balanced Mode Radiator&quot; (<b>BMR</b>) 
speakers from its technology agreement with
<a target="_blank" href="http://www.nxtsound.com">NXT plc</a> of the UK. 
Shinhint recently
<a target="_blank" href="http://www.shinhint.com/eng/announcement/Ford%20Q1%20Award_release_eng%20_final.pdf">
announced</a> a quality award from Ford Motor Company.</p>
<p>The employee headcount at 30-Jun-07 was 5,200, up from 4,300 at 
31-Dec-06 and 4,100 at 30-Jun-06. Unless productivity is falling, this points to 
stronger sales growth in the coming year. Management's statements are also 
bullish - they said in the 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070925/LTN20070925484.pdf">interim report</a> that the group has <i>&quot;reached a new 
agreement with a European top-tier customer for the provision of wireless and 
corded headsets, with shipments expected to start in 2008&quot;</i>, and for the BMR 
technology, <i>&quot;the Group was awarded with a complete acoustic solution order 
from a renowned television manufacturer, and shipments are expected to commence 
by the end of 2007.&quot;</i></p>
<h4>Capital structure and ownership</h4>
<p>Shinhint listed on 14-Jul-05 after an IPO and placing of 75m 
shares (then 25% of the company) at $0.80 per share. 3,397,500 pre-IPO options 
were exercised in 2006 and we are pleased to note that the company has not used 
its post-IPO option scheme.</p>
<p>Note: If companies wish to incentivise staff with equity then we 
would much rather they use shares purchased in the market with cash, held in a 
non-voting trust and released when vested over several years. This 
keeps staff incentivised when options might be underwater, eliminates equity 
dilution, and makes boards focus on the real cost of the incentive. HKEx (0388), of 
which your editor is an INED, set up such a plan in 2005.</p>
<p>The one blot on Shinhint's corporate governance record is that 
on 27-Mar-07, they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070328/LTN20070328051.pdf">
announced</a> a placing involving 27,120,064 new shares at $0.7477 each, 
equivalent to 
about 8.9% of the existing shares, raising about $20m at a time when they didn't 
need the cash, and diluting earnings per share. This was part of a deal in which one of its minority holders also 
sold a 4.8% block of shares to the same buyers, funds managed by 
<a target="_blank" href="http://www.martincurrie.com/">Martin Currie</a>, which 
together hold 12.73% of the company at 12-Nov-07. While it is always nice to 
have institutional shareholders, companies should not win them at the expense of 
unnecessary dilution to existing shareholders. If an institution likes the 
company, then it should buy the shares in the market at prices which existing 
shareholders find acceptable.</p>
<p>The Chairman, Jacky Cheung Wah Keung, holds about 47.6% after 
recent purchases up to 4-Oct-07. Executive Director Ernest Ip Wai Cheong owns 
1.4%. All 3 executive directors are in their mid-to-late 40s so they should still have 
plenty of mileage left in them. Your editor, David Webb, holds over 5% of the 
company.</p>
<h3>Christmas wrap</h3>
<p>So there you have it, our 9th Christmas pick. Have a happy 
holiday season. There are still 15 shopping days till 
Christmas, so don't go panic-buying. Last year, our pick
<a target="_blank" href="http://www.thestandard.com.hk/archive_news_detail.asp?art_id=33383&amp;archive_d_str=20061205">
shot up</a> 37% on day one as day-traders had their fun. Unless you enjoy the 
thrill of gambling, we suggest you take your time. The <i>Webb-site.com</i> 
Christmas Picks are meant for a one-year horizon, not one-day.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=27498">Jintai Energy Holdings Limited</a></li>
				
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