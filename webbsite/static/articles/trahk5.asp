
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

<script type="text/javascript">document.title="TraHK Suitable?";</script>

	<div class="summary">Now for the 10-billion dollar question - the public offer closes at 12 noon tomorrow. Should you buy the Tracker Fund of Hong Kong? We give you our considered view.</div>

<h2 class="center">TraHK Suitable?<br>
<span class="headlinedate">3 November 1999</span></h2>
<p>Even after reading our previous articles (links at the top of
this page) you may still be considering applying for the Tracker Fund of Hong
Kong before tomorrow's deadline (if you are applying in the institutional offer,
then you have a bit longer to finalise your orders). If you want to apply for
the TraHK, you need to get your application in by 12 noon tomorrow. Your broker
may set an earlier deadline to handle the paperwork.</p>
<p>If you believe that the stock market is at an attractive level,
but have no time to pick stocks, and want to be invested for 2 years in the
largest stocks of the market, then the TraHK is for you. The management fees are
lower than any other mutual fund in Hong Kong that we know of, and there will be
an increasingly liquid market place in which you can sell your units without a
major penalty. You will also get loyalty units after 1 and 2 years, increasing
your original units by 12%. Bear in mind that these will not include the
dividends that the Government will earn on them in the meantime, and as
previously explained, you may suffer a discount on the eventual sale of units,
particularly in the case of odd lots arising from the bonus units.</p>
<p>At <i>Webb-site.com</i>, we regard equity markets in general
(led by the US) to be seriously over-valued at present. The Nasdaq market set a
record high this week. Price/earnings ratios, price/cashflow ratios and
price/book ratios have almost never been higher in the US. The consumer savings
rate is negative - they are living on borrowed money and borrowed time.</p>
<p>We have also explained in our <a href="trahk4.asp#distort">previous
article</a> how the Hang Seng Index has out-performed the Hang Seng Mid-Cap
Index (where no intervention took place) by 34% since the Government bought it
up, which out-performance we attribute largely on the effect of the Government's
purchases. The same mechanism should then work in reverse to drive it downwards.</p>
<p>You may have noticed that the value of your apartment has fallen
50% since 1997, but the HSI is only down a net 20% since it's all-time 7-Aug-97
high. And we've had deflation - in fact almost everything in Hong Kong is
cheaper except the stock market. Bear in mind that the HSI's peak was a brief
high. In fact, the HSI did not break through 14,000 for the first time until
14-May-97 and was back below it five months later on 14-Oct-97. So with the HSI
closing today at 13,257, we don't see much upside.</p>
<p>The Government has $150bn of equities to sell, and only $10bn is
going through the TraHK. The &quot;Tap&quot; mechanism will satisfy up to $3bn
of further demand for equities in the last 6 weeks of the year, and perhaps $6bn
per quarter after that. So any upside is limited by that supply of liquidity.
You can't have a drought when it keeps on raining.</p>
<p>Obviously If you choose not to buy the TraHK on this occasion
then you won't get the loyalty bonuses of this first offer. But if the
Government comes back and offers a second batch, then they will probably have to
offer the same or similar incentives that you have come to expect from the first
issue. By then, markets may be lower and units cheaper.</p>
<h3>What about the discount - isn't that worth it?</h3>
<p>If you are feeling brave but agree that the market is
over-valued, then you might still want to apply for TraHK just to get the
discount, hoping to sell in the market as soon as possible (and give up the
loyalty units). That's a viable strategy, but to maximise your advantage you
should make sure your broker offers you a commission rebate. The going rate is
up to 2.25% rebate (out of the 2.50% that most brokers receive) so make sure you
get it. That plus the discount of at least 5% gives you an effective discount of
at least 7.25%.</p>
<p>Bear in mind that the first day you can sell is 12-Nov-99 (if
you have your units) so you are tied into the market until then. The value of
stocks can plummet as well as rise. You may not get the full net asset value
when you sell the units, so better allow for a 2% discount, plus stamp duty and
commission, say 2.4% over-all, on your sale. That still leaves a potential gain
of at least 5.8%, but you have some market risks until the 12-Nov. Your broker
might insist on seeing the certificate before you sell, and since they won't be
posted until 11-Nov, you may have to wait until Monday 15-Nov to sell. So that's
a lock-in of up to 11 days. In the last year, the weekly fall in the HSI has
exceeded 4% on 7 occasions. In the 11 days to 15-Oct-99, it fell 7.5% from
13,112 to 12,134 and has since gone back up past where it started.</p>
<p>If you have a futures account, you can lock in your gains by
selling HSI futures contracts after you know what your allocation is.
Allocations are due to be announced in the newspapers on 9-Nov. However, the
value of your allocation almost certainly won't be equal to a whole number of
contracts, so you'll still have some residual market risk. You could consider
pooling your futures account with a relative or friend to make the numbers work
out more evenly. Then when you get your units, you can sell the units and buy
back the futures contracts.</p>
<h3>Hedging the long-run</h3>
<p>We wrote earlier in this series about collecting the discount <i>and</i>
loyalty units without market risk. At that time, we were expecting a number of
covered warrant issuers to start offering 1 or 2-year cash-settled puts on the
Hang Seng Index. These would pay the amount (if any) by which the Hang Seng
Index at the time of expiry is less than a preset level .</p>
<p>That would protect your downside and give you any upside on the
TraHK while at the same time collecting at least the first year's bonus units.
So far, no such warrants have been issued, but we may see such instruments in
the market in the coming weeks. If you are working for a warrant issuer planning
to launch such a product, <a href="../pages/aboutus.asp#contact">let us know</a>.</p>
<p>So for now the only way to hedge your position is to run a short
futures position and roll it over every month (buying it back and selling the
next month's contract). That's not something we can recommend to the retail
investor because it ties up too much capital for the returns involved and involves &quot;rollover
risk&quot; - the risk that you may make a loss rolling the position each month,
particularly if the Government intervenes again during the next 2 years to
support the market. We also thought that there might be &quot;reverse tracker
funds&quot; set up to manage the short-positions for you, but so far none has
come forward.</p>
<p>The next 3 trading days could be very interesting, because that
is when the prices of the members of the Hang Seng Index will be used to
determine the &quot;reference market price&quot; against which the discount will
be set.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=7679">EXCHANGE FUND INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51819">Tracker Fund of Hong Kong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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