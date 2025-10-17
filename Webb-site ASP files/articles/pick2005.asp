
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

<script type="text/javascript">document.title="The 2005 Christmas Pick";</script>

	<div class="summary">Season's greetings to all our readers - time for our annual stock pick, when Santa rummages in our sack of small-cap investments for the stock we think is most likely to perform over the next year. Last year, our pick gained 30.8%, much better than the 10.9% on the HSI. Over 6 years of picks, we've gained 474% and beaten the HSI by 392%. So what are we putting under the Christmas tree this year? Read on...</div>

<h2 class="center">The 2005 Christmas Pick<br>
<span class="headlinedate">4 December 2005</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p><i>Webb-site.com</i> is celebrating its 7th birthday, and 
loyal readers will know that we only publish one gratuitous stock pick per year - 
something nice to say in the season of goodwill to make up for the campaign 
against bad corporate and economic governance in the rest of the year. Santa rummages in 
his sack of investments, says &quot;ho ho ho, have I got a surprise for you&quot; and picks the stock from our portfolio that we 
think is most likely to perform over the next year. It is a seasonal gift to 
readers, a free ride on our research - you don't have to buy it, but if you 
followed us in the past, then you made good money. Our picks have beaten the 
Hang Seng Index by 392% over 6 years, made money every year, and averaged a 
return of 33.8% per year, versus 2.6% on the Hang Seng Index. The MPF this is 
not.</p>

<p>Apart from devoting about half his time to public causes, your 
editor is also a private investor who specialises in smaller companies, panning 
the riverbed of some 900 smaller companies that make up 10% of the market value, 
and looking for specks of gold - undervalued stocks with above-average 
governance. He more often finds the opposite - over-valued and/or badly governed 
stocks, and these horror stories sometimes end up as case studies on <i>
Webb-site.com. </i>He never deliberately reads fiction, but sometimes can't 
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
it. All we are doing is exercising our right of free speech, which is one of the 
few things the Government has not screwed up since the handover.
  </li>
  <li>
For the rest of the year, we don't 
normally comment on our portfolio, nor do we comment on the stock we picked, 
until the next Christmas, when we review how it went. In the meantime, you are 
on your own, so don't write in asking us whether it is time to sell or buy some 
more. As long-term investors, the only time we would break this silence is if 
there was a major corporate event at the subject company.
  </li>
  <li>
We reserve the right to increase and 
decrease our holdings according to market circumstances and our own capital 
needs.
  </li>
</ol>

<p>Before we tell you what we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our previous recommendations performed.</p>

<h3>Last year's Pick</h3>
<p>Last year our Christmas pick was
<a target="_blank" href="../dbpub/articles.asp?p=2471">Karrie International Holdings Ltd</a> (<b>Karrie</b>, 
1050), which makes computer casings and provides electronics manufacturing 
services to companies such as Canon, Hewlett Packard and Minolta.</p>
<p>Despite a very difficult year in the manufacturing sector, which 
was hampered by elevated raw material prices, rising labour costs, electricity 
shortages and the appreciation of the RMB, Karrie has turned in sterling 
results, and its share price has responded accordingly, although in our view it 
is still undervalued. On 25-Nov-05 the firm
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051128/LTN20051128025.pdf">
reported</a> 6 month results to 30-Sep-05, with turnover up 53% and basic EPS up 29%.</p>
<p>On 3-Dec-04, the day before our pick, the stock closed at $2.55. 
During the year, the closing price ranged from a low of $2.65 on 11-Jan-05 to a 
high of $3.725 on 16-Mar-05 but then fell back along with industrial stocks in 
general. When the year was over, the stock closed on Friday 2-Dec-05 at $3.125, 
and investors received dividends of $0.21 during the year, taking the total gain 
to <b>30.8%</b> - a <a href="../sounds/clap.wav">round of applause</a> to the 
Karrie team! By comparison, the HSI had a total return (including dividends) 
of only <b>10.9%</b> in the same period.</p>
<p>We expect Karrie's earnings to exceed $0.40 per share in the 
year to 31-Mar-06 and pay at least $0.22 in total dividend. Excluding the pending 
interim dividend of $0.09 (the stock goes ex-dividend on Tuesday), the stock 
stands on a prospective P/E of 7.6 and a prospective yield of 7.2%. Growth in 
the year to Mar-07 will likely be lower, but Karrie has articulated a clear
<a target="_blank" href="http://www.karrie.com.hk/presentation/0506_int_pre_e.pdf">
long-term plan</a> for massive expansion of its capacity and could enter the big 
league of EMS in the next few years if they stay focussed and manage their 
client relationships and 
working capital well in this very low-margin sector.</p>
<p>Your editor continues to hold this stock.</p>
<h3>2003's pick</h3>
<p>In 5 out of 6 years, our picks have handsomely out-performed the 
Hang Seng Index, but our only &quot;Christmas turkey&quot; was in 2003,
<a target="_blank" href="../dbpub/articles.asp?p=2949">Allan International Holdings 
Ltd</a> (<b>Allan</b>, 0684), a maker of household electrical appliances and 
personal care products. This was our worst ever Christmas pick. It had a first-year return of only 4.7%.</p>
<p>The objective of our Christmas picks is performance over 1 year 
until the next pick, but we track them for you in the second year just to see 
what happens. In Allan's case, with profits pummelled by the high plastic 
content of its goods, labour shortages and other rising costs, and with the Cheung family which 
runs it refusing to do anything about its cash-bloated balance sheet, the stock 
just drifted lower.</p>
<p>It closed on 3-Dec-04 at $1.25 and on 2-Dec-05 at $0.95, having 
paid dividends of $0.08, for a second-year return of -17.6% and a 2-year return 
of -13.7%. On 29-Sep-05, the family began buying shares in the market, and has 
since bought 1,048,000 shares at prices ranging from $1.00 to $1.04, stopping on 
3-Nov-05. They are now in the 1-month dealing ban period before the Sep-05 
interim results which are due out on 15-Dec-05.</p>
<div class="regbox">
	<p><b>Regulatory note</b></p>
	<p>We interrupt this festive cheer to make a very sober point. 
	This story illustrates once again the inadequacy of HK's financial reporting regime. The last 
	accounting figures we have for Allan are for 31-Mar-05, over 8 months old, 
	and while the family was buying the shares, our figures were already 6-7 months old. We 
	are in the dark, but they are not. Hong Kong is the last substantial market in Asia not to 
	require its main-board listed companies to report quarterly, and gives them 
	one of the longest periods in the world to report their results - a full 4 
	months after the year end, or 3 months for the half-year results. How can 
	the chiefs of
	<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2005/0511184news.htm">
	HKEx</a>, the SFC and 
	<a target="_blank" href="http://www.fstb.gov.hk/fsb/ppr/press/doc/sp171105_e.doc">Government</a> stand there with a straight face and say that 
	our market is up to 
	<a target="_blank" href="http://www.sec.gov/rules/final/33-8128.htm">international standards</a>? 
	They should be ashamed.</div>
<p>Based on the 31-Mar-05 balance sheet, Allan had net cash and 
investments of about HK$231.5m, or about $0.69 per share - about 73% of its 
current share price. Capital expenditure in the year was only $24m, far less 
than the operating cash flow of $77.5m, and dividends were only $27m. They have 
never articulated any business expansion plan which would utilise the growing 
pile of cash. Management is not so much saving for a rainy day as nuclear 
holocaust.</p>
<p>We're not giving up - your editor still holds more than 5% of 
this stock.</p>

<h3>The six year history</h3>

<p>Doesn't time fly? We've been running this series for 6 years 
now, and our pick has made money in each year, out-performing the total return 
on the Hang Seng 
Index 5 years out of 6. Here's the track record:</p>
<img class="center" alt="" src="../images/pickrecord2005.gif">
<p>What this table shows is that if you put <b>$1,000</b> into the first pick, and rotated into the next
one each year, you would have made 474.1% and would have about <b>$5,741</b> by now, 
a compound average gain of 33.8% per year. By comparison, if you invested
the same amount in the Hang Seng Index 6 years ago, you would now have about <b>$1,167,</b> 
a compound average gain of 2.6% per year 
(which is less than you could have got in a bank). So our picks have
out-performed the index by <b>392% </b>over 6 years.</p>

<h3>This year's Pick</h3>
<p>OK, <a href="../sounds/drumroll.wav">drum roll</a> please.....</p>
<p>The 2005 Christmas Pick is <a href="http://www.fujikon.com/">
Fujikon Industrial Holdings Limited</a> (<b>Fujikon</b>, 0927), a maker of audio 
headsets and other &quot;electro-acoustic products&quot;, whose customers include 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040615/LTN20040615086.pdf">Nokia</a> 
and most recently Microsoft for Xbox 360 bundled headsets, which Fujikon began 
shipping at the end of the second quarter. The shares closed on Friday 2-Dec-05 
at $1.40 per share.</p>
<h4>Share capital</h4>
<p>Fujikon was listed on 11-Apr-00 after an IPO of 89.9m shares at 
$1 each, 25% of the company. Since then, shareholders have not been diluted 
apart from the exercise of employee share options, expanding the issued shares 
by 3.8% to 373.324m at 31-Oct-05, with a current market capitalisation of HK$523m 
(US$67.5m). However, at 31-Mar-05 there were outstanding options over 44.692m 
shares of which 32.8m were held by the directors. The options are exercisable at 
prices ranging from $1.00 to $1.50 with expiry dates ranging from 2010-2014. 
Since the year-end and up to 31-Oct-05, 4.434m have been exercised, so that 
leaves a potential dilution of 40.258m shares or 10.8% of the existing issued 
shares. New accounting standards that came in this year require expensing of share 
options, so we hope that this will deter the company from increasing the 
outstanding options further. We also recommend that they should consider buying back shares to 
counter the earnings dilution when any options are exercised.</p>
<p>The balance sheet can support this, as they had net cash and 
investments of about HK$75m or about $0.20 per share at 
30-Sep-05. Incidentally, $22m of this is held as long term assets (meaning they 
have greater than 1 year maturity) and described in the interim results as <i>
&quot;34.1% and 61.4% were several structured notes issued by banks and investment 
funds managed by overseas investment companies respectively&quot;</i>.</p>
<p>We disapprove of companies making such investments, as it goes 
beyond their core area of expertise - if a company has funds which are surplus 
to foreseeable requirements (and clearly, a multi-year investment is not money 
you need in the near future) then it should return the money to shareholders and 
let the shareholders invest it themselves, which is what investors do best. This 
also enhances the company's return on equity. Shareholders will then be much 
more willing to support funding requests in the form of rights issues if a 
company needs cash in the future.</p>
<p>We have seen several small companies make this mistake, often 
seduced into it by bankers selling them fancy products during periods of low 
nominal interest rates. A golden rule of investment is that the more complicated 
the financial product, the higher the profit margin for the bank. Still, as 
Fujikon has otherwise run a clean ship, we will forgive this mistake and hope 
that they correct it. It's Christmas, after all.</p>
<h4>Ownership and management</h4>
<p>The management owns about 59.2%, of which 56.7% is held by a 
vehicle called Acoustic Touch Ltd, which is owned in equal shares by the three 
executive directors who founded the group in 1982, Johnny Yeung Chi Hung 
(Chairman), Simon Yuen Yee Sai (Deputy Chairman) and Michael Chow Man Yan 
(Deputy Chairman). The only other holder 
currently over 5% is German fund manager
<a target="_blank" href="http://www.dje.de/">Dr Jens Ehrhardt Kapital AG</a> 
which disclosed 6% on 10-Jun-05. That investor also holds over 5% of Hon Kwok 
Land Investment Co Ltd (0160), Hong Kong Catering Management Ltd (0668), its 
subsidiary Saint Honore Holdings Ltd (0192) and Pico Far East Holdings Ltd 
(0752).</p>
<p>On 15-Jul-03, the three founders
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030716/LTN20030716031.pdf">
placed</a> 22.68m shares (then 6.16%) through SBI E2-Capital at $1.67 and on 
4-Dec-03, three non-founder directors
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031205/LTN20031205095.pdf">
placed</a> 7.984m existing shares (then 2.17%) through the same broker at $1.50 
per share.</p>
<p>In a few years there may be a management succession issue, as 
the 3 founders have ages of 56-63. This could point the way towards a merger or 
friendly takeover, but don't hold your breath, it is not something we factor 
into the share price. Recently, on 1-Oct-05, a long-standing executive director, 
42 year-old Weeky Wong Sau Lik, who had been with the group since 1989,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050930/LTN20050930214.pdf">
resigned</a> after
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050715/LTN20050715043.pdf">
selling</a> most of his 2.8% shareholding having earlier
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050628/LTN20050628039.pdf">
delayed</a> the sale. This follows the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040702/LTN20040702054.pdf">
resignation</a> on 1-Jul-04 of then 45-year old Mr Tsang Yiu Wah, who had been 
with the group since 1985. The board is now down to 4 executive directors, 
including the 3 founders and the Finance Director, Dylan Ng Kwong Hing, and 3 
independent non-executive directors, namely Chang Chu Cheng, the Chairman and 
Co-founder of Varitronix International Ltd (0710), Allen Che Wai Hang, partner 
of law firm
<a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/member_firm.asp?id=89853&amp;ftype=L">
Wong, Hui &amp; Co</a>, and Jason Lee Yiu Pun, an accountant. 2 other INEDs
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20050729/LTN20050729339.pdf">
left</a> in August. Below the board however, senior management includes 3 
younger Vice-Presidents (ages 42-43) of various divisions who have joined since 
May-04, so perhaps the succession will be smooth.</p>
<h4>Outlook </h4>
<p>We see demand in Fujikon's industry being driven by two factors 
- the increasing popularity of portable media players, and the emerging 
technology for stereo Bluetooth wireless headsets. Next year, we expect more 
convergence between mobile phones and media players- why carry two devices when 
you can have one? As the price of memory has come down, phones can store more 
audio and video on memory chips without pricing themselves out of the 
market. Meanwhile portable and in-car DVD players have hit the mass market in 
the last 2 years as panel prices made them affordable. You need a headset for 
all these products.</p>
<p>Also, the second wave of Bluetooth is breaking. Until now, Bluetooth has 
mainly been used for low-quality mono audio for making and receiving hands-free 
calls on mobile phones, but next year we should see a lot more CD-quality stereo 
Bluetooth headphones. Expect to see portable music and video players, mobile 
phones and laptop computers which include Bluetooth stereo transmitters, and 
expect Fujikon to be on the receiving end in the headset market.</p>
<p>In the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050704/LTN20050704103.htm">
annual report</a> for the year to 31-Mar-05, Fujikon recorded net profit of 
HK$70.5m (up 223%) on turnover of $932m (up 55%), and EPS was $0.191. On 
30-Nov-05, Fujikon
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051201/LTN20051201014.pdf">
announced</a> its interim results for the six months to 30-Sep-05, with turnover 
up 0.7% and net profit up 2.8% to $29.5m, after amortising share option costs of 
$1.0m. basic EPS was $0.0794, and the interim dividend 
was raised to $0.03 from $0.025. Although some orders were delayed into the 
second half, management wrote that <i>&quot;the second half, and hence the full year, 
remains very positive&quot;.</i> Fujikon's headcount supports this, rising to 10,700 at 
30-Sep-05 from 9,100 in March and 6,800 a year ago.</p>
<p>For the year to 31-Mar-06, we expect Fujikon to make EPS of 
about $0.24. The shares closed on Friday at $1.40 and ex-dividend that 
would be $1.37 (they go ex-dividend on 14-Dec-05), which puts them on a 
prospective <b>P/E of only 5.7</b>. Last year, they paid dividends of 10 cents, 
including a 2 cent special dividend. They've raised the interim by a half cent 
and, given the bullish outlook for the second half, we hope they will pay at 
least 11 cents for the year, putting the stock on a yield of about 8%.</p>
<p>So there you have it, our 7th Christmas pick.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12039">FUJIKON INDUSTRIAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2471">KARRIE INTERNATIONAL HOLDINGS LIMITED</a></li>
				
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