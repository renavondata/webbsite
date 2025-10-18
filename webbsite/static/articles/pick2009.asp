
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

<script type="text/javascript">document.title="The Christmas Pick";</script>

	<div class="summary">After a decade of Christmas Picks, Webb-site.com has produced a compound gain of 1118%, compared with 87% on the Hang Seng Index. That's an average 28.4% per year compared with 6.4% on the HSI. This is getting out of hand! Many have asked whether we would set up a "Good Governance Fund" for HK investors. We tell you why this is currently unattractive, and what the Government should do to facilitate the closed-end fund sector.</div>

<h2 class="center">The Christmas Pick<br>
<span class="headlinedate">18 December 2009</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p>As many regular readers of Webb-site.com will know, once per 
year at Christmas we have published a stock recommendation, the only &quot;buy&quot; 
recommendation we make each year.</p>
<h3>Market overview</h3>
<p>On 16-Sep-07, we published an article called
<a href="incredibubble.asp">Incredibubble</a>, commenting on the 
bubbles in Chinese stock markets, both in the mainland and HK. With the Hang 
Seng Index (<b>HSI</b>) then at 24,898 and the Shanghai Composite Index (<b>SCI</b>) 
then at 5,312, we asked our readers in an opinion poll, what is the lowest level 
at which the two indices will <u>ever</u> trade at again? We closed that poll at 
the end of 
24-Sep-07, and more than 59% of
<a target="_blank" href="../vote/result.asp?p=19">responses</a> 
said the SCI would trade below 2,000, while more than 50% said the HSI would 
trade below 14,000.</p>
<p>Well as we now know, the SCI reached a daily low of 
1,707 on 4-Nov-08, and the HSI reached a daily low of 11,015, as 28% of our readers said it would (only 14% said it could ever go 
below 10,000). <a href="../audio/Backchat081028.asf">Appearing on local radio</a> 
on 28-Oct-08, the morning after the HSI hit its daily low, we remarked that on 
valuation measures, the HSI was getting near historic lows and would probably 
bottom out in the 10,000-12,000 range. In <a href="pick2008.asp">last year's Christmas pick</a> on 
17-Dec-08 we <span lang="en-gb"></span>wrote:</p>
<blockquote>&quot;the 
subsequent 40% rebound has been irrational and we would expect the market to 
revisit that range as the recession bites in the first half of 2009.&quot;</blockquote>
<p>Spot on! The HSI closed on 17-Dec-08 at 15,461 and did indeed 
revisit that range, closing at 11,345 on 9-Mar-09, the day the US S&amp;P500 also 
bottomed at 676.53. Nine months on, the market has rebounded sharply, running on 
a double-whammy of record-low interest rates and a flood of money spilling over 
the border from mainland China. You see, while Western governments were busy 
partially nationalising their banks, China was already in majority control of 
all its major banks and did what central planners do best - it directed them to 
go forth and lend. This will eventually result in a huge pile of bad debts, and 
the need to recapitalise the banking system. Indeed, even without bad debts, the 
credit binge is already leading to some smaller bank capital-raising to increase 
capital adequacy ratios.</p>
<p>Meanwhile in HK, property yields and mortgage rates are at 
record lows - so when rates eventually rise, either rents are going to rise 
sharply (unlikely) or property prices will have to fall.</p>
<p>The big guessing game has been how long the world's central 
banks will keep rates so low, and how much inflation they and their political 
masters will be willing to tolerate in consequence. The longer rates stay this 
low, the more money will get piled into low-yield assets, including commodities. 
And the thing about commodities is that they eventually show up in the price of 
finished goods. Governments have managed to cushion the recession with 
profligate stimulus spending, often on things which will provide little 
long-term benefit to their economies but will leave them with much higher debts. 
For example, cash-for-clunkers simply advances some car sales now at the cost of 
lower sales in the next few years. The temptation to allow markets to inflate 
away those governmental debts must be enormous, and the public acceptability of 
a good burst of inflation, in terms of support for home prices and shrinking the 
real value of mortgages is similarly great, provided that wages rise too.</p>
<p>Governments can't keep the stimulus going forever, so we would 
expect a second dip in the global economies and a period of classic 1970s-style 
inflation without growth, or
<a target="_blank" href="http://en.wikipedia.org/wiki/Stagflation">stagflation</a>.</p>
<p>Turning to the HK market, in general valuations are much higher 
than a year ago, indicating expectations of a great rebound in profits which may 
not be fulfilled. In terms of corporate activity, we have seen a return to the 
frothy days of 2007. It seems that hardly a day goes by without another little 
company becoming a back-door listing vehicle for the next big thing in some 
obscure Chinese or Mongolian natural resources play, all on the back of flimsy 
due diligence and typically dealing with a BVI company probably owned or 
obtained from some shady former official with an ill-gotten exploration license. 
There have also been some rather desperate-looking IPOs recently. A lot of the 
larger Chinese consumer plays are also overheated - their P/Es have run way 
ahead of their growth prospects.</p>
<p>It's the end of a decade, so party while you can, because we 
would expect the traditional new year's rally to fizzle out as spring arrives.</p>

<h3>Last year's Pick</h3>
<p>Last year's pick was
<a target="_blank" href="http://www.alco.com.hk">Alco Holdings Limited</a> 
(<strong>Alco</strong>, 0328), a maker of consumer electronics, including portable DVD players, flat 
panel TVs, iPod/iPhone-ready audio systems and set-top boxes. Well if you joined 
us, and became an &quot;Alco-holic&quot;, then you did well. We picked it at $1.21. It 
reached a daily low of $1.03 on 20-Mar-09 (so you had the opportunity to get it 
even cheaper than when we picked it), and it closed yesterday at $2.99. It also 
paid dividends of $0.23, representing a dividend yield of 19.0% on the pick 
price. So overall, our pick gained 166.1% for the year, compared with a 42.3% 
total return on the HSI (dividends reinvested).</p>
<p>As we wrote in last year's article:</p>
<blockquote>&quot;in our fishing ground of small-caps, valuations 
are at least as cheap as in 1998. We are spoilt for choice, with some companies 
trading at close to their net cash, at steep discounts to net asset value, with 
consistent dividends yielding in the teens, and with P/Es below 4. Indeed, your 
editor's entire portfolio is tonight on a trailing 12-month P/E of 3.67 and a 
price/book of 0.41. The metaphoric glass is not half-empty, it is one-third 
full. If you understand the businesses you are investing in, and if you trust 
the management, then you probably won't get such attractive valuations for 
another 10 years. So making our 2008 Christmas Pick has been a difficult choice 
with so many deserving stocks to choose from.&quot;</blockquote>
<p>As a consequence, we made two other &quot;honourable mentions&quot;,
<a target="_blank" href="http://www.fujikon.com">Fujikon Industrial Holdings Ltd</a> 
(0927), which was our 2005 pick, and optical frames maker
<a target="_blank" href="http://www.sunhingoptical.com/">Sun Hing Vision Group 
Holdings Ltd</a> 
(0125). Including dividends, Fujikon returned 57.8%, and Sun Hing Vision did 
even better than Alco, gaining 190.8%. All 3 stocks beat the Hang Seng Index.</p>
<p>Your editor, David Webb, still holds over 5% of Alco, over 7% of 
Fujikon, and over 7% of Sun Hing Vision (which we increased through the 6% 
disclosure threshold on 4-May-09 at $1.60 and through the 7% threshold on 
28-Aug-09 at $2.765).</p>
<h3>The 10-year history</h3>

<p>What a decade this has been! Our pick has made money in 8 out of 10 years, out-performing the total return 
on the Hang Seng Index 8 years out of 10. Here's the track record:</p>
<img class="center" alt="" src="../images/xmasPick10years.gif">
<p>What this table shows is that if you put <b>$1,000</b> into the first pick, and rotated into the next
one each year, you would have made 1,118.1% and would have about <b>$12,181</b> by now, 
a compound average gain of 28.4% per year. By comparison, if you invested
the same amount in the Hang Seng Index 10 years ago, and reinvested the dividends, you would now have about <b>$1,866</b>, 
a compound average gain of 6.4% per year. So our picks have
out-performed the index by <b>552.8% </b>over 10 years. Both the stock and index 
calculations exclude transaction costs.</p>
<p>We're also going to reveal that your editor's entire portfolio, 
if converted into a hypothetical unit trust (but without charging ourselves any 
management fees), has &quot;only&quot; returned 1057% per unit in the same decade (or a 
compound average 27.7%), so you really did get some of our best-performing 
picks, which gained 1118%.</p>
<h3>The Christmas Pick</h3>
<p>Webb-site.com never set out to pick stocks. We started doing it 
as a seasonal gift to readers, a free ride on our research, but it has become 
something of a distraction to our main goal of raising the standards of Hong 
Kong's corporate and economic governance.</p>
<p>After 10 years, and a rather respectable track record if we do 
say so ourselves, we think this is a suitable time to call an end to this before 
it gets out of hand. So that's it. We will continue to issue warnings about 
listed companies which may often be considered as &quot;sell&quot; notes by those who own 
them and &quot;don't buy&quot; notes to those who don't, but the good stuff we will keep 
to ourselves, and you'll just have to figure out which stocks we like by looking 
at dealing disclosures when we are above the 5% threshold.</p>
<h3>How about a fund, then?</h3>
<p>Over the years, may people have asked whether we would consider 
setting up a &quot;Good Governance Fund&quot; in which anyone could invest. This is 
something we will keep under review, and it would certainly increase our 
firepower in corporate battles, but it would have to be a &quot;closed-end&quot; company 
in which holders can trade their shares but not redeem them. This could either 
be a new special-purpose investment company, or an existing listed company 
converted into an investment vehicle, rather like Berkshire Hathaway was 
converted from a textiles company, only smaller of course, at least to start 
with!</p>
<p>Being closed-end would allow us to hold the contrarian line and invest 
in stocks, or at least hold them, when everyone else is selling, as we did during the depths of the 
financial crisis (and the ones before that). Last year, we were like a kid in See's Candy shop, picking up 
cheap stocks while institutional investors, facing redemption pressure from 
fund-holders, were 
selling.</p>
<p>However, running a public company would require a lot more 
attention than we currently give to our portfolio, and may reduce the time we 
can spend pushing for other areas of governance reform, such as government 
transparency and regulatory improvement, so that's a drawback. But there is one other big reason why 
we would not launch a fund, which brings us on to:</p>
<h3 id="ClosedEndFunds">HK's missing closed-end fund industry</h3>
<p>Hong Kong could have a 
flourishing closed-end investment company sector, and all the economic activity 
that goes with it, but Hong Kong's ambivalent taxation 
policy prevents this, and it's one of the big things which deters us too.</p>
<p>The Stock Exchange does have a special chapter of its Listing 
Rules,
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_21.pdf">
Chapter 14</a>, for closed-end investment companies. However, very few companies 
are listed under this section, and of those which are, many are just perpetual 
value-destroyers run by people we would never trust. Since such charlatans don't 
expect the fund to make gains, they don't need to worry about whether the gains 
will be taxable. </p>
<p>If a fund is authorised by the SFC, then it has specific 
exemption from profits tax under
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/8FF46BABBA2864A948256DE40031982E?OpenDocument">
Section 26A(1A)</a> of the Inland Revenue Ordinance, so it is beyond doubt that 
its gains on investments are tax-free. However, to get such SFC authorisation, 
under the
<a target="_blank" href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H507">
Code on Unit Trusts and Mutual Funds</a>, a fund must be open for subscriptions 
and redemptions at least monthly, not closed-end. It is a completely arbitrary 
Government 
policy that SFC-authorised funds are tax-exempt but other onshore funds are not.</p>
<p>Overseas investors in HK stocks are also exempt - so a 
closed-end fund, investing in HK stocks but managed from overseas, would not be 
taxable in HK. HK has never tried to tax the gains of funds managed by overseas 
managers, and this provides a clear disincentive to those who might otherwise 
open an office in HK and run the fund from here.</p>
<p>For onshore investors which are not authorised mutual funds, the 
Government's policy on taxation of gains is an ambivalent &quot;it depends&quot;. 
That is, it 
depends on whether the investor is making a capital gain, or a trading gain, 
which depends on whether they are selling a &quot;capital asset&quot; or not. What's the 
difference? Nobody can say for sure. The Inland Revenue says it depends on the &quot;intent&quot; of the investor - 
was the investor buying the shares &quot;with the intent of disposing of them at a 
profit&quot; or as a &quot;long-term investment&quot;? Are they &quot;in the business&quot; of buying and 
selling shares? This is an exercise in retrospective mind-reading and of course, 
the Inland Revenue has a bias in favour of tax-collection, so they can hardly be 
objective about such a subjective exercise. The rule of law depends on certainty 
and starts to break down when things are so grey.</p>
<p>It is hard for managers to market a fund if they have to tell 
investors that the fund might or might not be taxable, particularly when there 
are alternative ways for people to invest in the markets without taxation.</p>
<p>Gains or losses on a company's shares are nothing more than 
changes in the perceived net present value of future earnings, and those 
earnings will eventually be taxed if they are sourced in HK. So a tax on those 
gains would represent a form of double taxation and would also bring 
non-HK-sourced gains into the tax net - for example, taxing the gains on an 
investment in Petrochina H-shares when almost none of that company's profit 
arises in HK. It would also disrupt the efficient allocation of capital by 
deterring re-allocation through sales.</p>
<p>The practical reality is that, given this ambiguous position, 
the Inland Revenue almost never tries to tax individual investors on their 
gains. For example, it does not tax the gains made by individuals who subscribe 
shares in an IPO with the &quot;intent&quot; of selling them on day one for a quick 
profit. Nor does it tax individuals' gains on cash settled-warrants and other 
derivatives, even though, by definition of their relatively short maturities, 
the investor expects to make a pretty quick gain. By comparison, the Inland 
Revenue might well try to tax the gains of HK-based investment funds which buy 
and sell HK-listed securities, which is why there are very few onshore funds.</p>
<p>For a few years, respected local manager Value Partners Ltd had 
both a closed-end investment company listed in HK under Chapter 21 (<a href="../dbpub/orgdata.asp?p=16018">Value 
Partners China Greenchip Fund Ltd</a>), and an open-ended SFC-authorised mutual 
fund, investing in similar stocks. The listed company had to make provision for 
HK profits tax, even though after 3 years it eventually
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050906/LTN20050906112.pdf">
succeeded</a> in clearing its tax and reversing the provisions, presumably by 
arguing that it was making capital gains and not profits. Meanwhile, the mutual 
fund was tax-exempt. Eventually, in 2007 the listed fund was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070223/LTN20070223075.pdf">
delisted and converted</a> into an SFC-authorised open-ended mutual fund, but 
for a while it provided a perfect illustration of the absurdity of the law.</p>
<p>The Government should remove 
this ambiguity by legislating to make any gains on HK-listed securities exempt 
from taxation, regardless of the owner. It would initially not make much 
difference to tax revenues, since very few traders 
currently come onshore and knowingly expose themselves to that tax, but it would greatly 
expand the scope of the onshore fund management industry in Hong Kong by giving 
certainty that their funds will not be subject to tax on their gains.</p>
<p>That fund 
management industry would create employment in its own sector and through its fees, 
creates taxable profits. There would also be jobs and profits in the accounting, legal 
and broking sector created by the presence of such managers. So even if 
Webb-site.com never sets up a closed-end fund, a change to the law would 
facilitate many other funds. We're not saying we <u>would</u> 
launch a fund, because we rather enjoy spending our time on non-profit <em>pro 
bono</em> governance activities, but the deterrent of a taxation battle is one 
reason why we wouldn't and why other's don't.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4754">ALCO HOLDINGS LIMITED (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12039">FUJIKON INDUSTRIAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8477">SUN HING VISION GROUP HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=110">Christmas picks</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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