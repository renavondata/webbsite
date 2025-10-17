
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

<script type="text/javascript">document.title="The Outdated HSI";</script>

	<div class="summary">We begin our coverage of the Tracker Fund of Hong Kong with a commentary on the outdated Hang Seng Index. We question the relevance of the HSI as a proxy for Hong Kong's market - after reading our article, would you invest your portfolio in this basket?</div>

<h2 class="center">The Outdated HSI<br>
<span class="headlinedate">19 October 1999</span></h2>
<p>Largely as a result of targeting sellers of the Hang Seng
Index, the Hong Kong Government in last year's market intervention ended up with
a portfolio very similar to the index. It is now&nbsp; trying to make a virtue
of that by packaging up part of its holdings in an HSI-tracking fund, The
Tracker Fund of Hong Kong (TraHK). </p>

<p>The Hang Seng Index, in professional eyes, has the standing of
the Dow Jones Industrial Average - famous, much talked about, but out-dated.
Almost no serious fund manager compares (or &quot;benchmarks&quot;) the
performance of their Hong Kong portfolio against the HSI. Most use a more
relevant index such as the MSCI or the FT/S&amp;P Hong Kong indices. Similarly,
U.S. fund managers look at indices like the Standard &amp; Poors 500 rather than
the 30 stocks of the DJIA. </p>

<p> A look at the composition of the HSI will tell you what's
wrong. Its largest component is a company registered in England with about half
of its business outside Hong Kong. HSBC Holdings plc is now a global firm which
happens to own The Hongkong and Shanghai Banking Corporation, our largest bank.
Many of HSBC's shareholders are in the UK, where the shares were issued in the
early 1990s in exchange for Midland Bank plc. That deal put HSBC into the
FTSE-100 index, which puts the firm in the unique position of being in two
flagship indices at the same time. Since then, HSBC has gone on to expand all
over the world. It's time to face the fact that it is no longer a &quot;Hong
Kong&quot; company. Perhaps that's why they are rushing around rebranding
everything with initials.&nbsp;The MSCI and FT/S&amp;P Hong Kong indices exclude HSBC for
similar reasons. </p>

<p>HSBC also owns some 62% of Hang Seng Bank, which owns and
publishes the Hang Seng Index. </p>

<p>Here's our estimate of the composition of the HSI, based on
closing prices on Friday 15-Oct-99: </p>

<img class="center" alt="" src="../images/trahk11.gif">

<h3>Some diversification!</h3>

<p>The table above shows that HSBC accounts for 27.7% of the Hang
Seng Index, and it subsidiary Hang Seng Bank accounts for another 6.3%. That's
over a third of it between them. </p>

<p>You will also notice that the top 10 stocks amount to over 81%
of the HSI. Stocks have a tendency to move together (what professionals call
&quot;correlation&quot;) and therefore if you can hold the vast majority of the
weight of the index you will get a portfolio that is highly correlated with the
index itself. The other 19% won't make a huge difference. Therefore if you had
HK$1m to invest and really wanted to track the index (we can't think why) you
could get pretty close just by buying the top 10. We'll show you how that's done
later in this article. </p>

<p>The TraHK promotional leaflet says that it provides &quot;<i>diversification
across the companies that comprise the HSI</i>&quot;. That circular statement
would of course be true even if the index only contained one stock. It's like
saying that chocolate provides all the nutritional benefits of chocolate's
ingredients. Do not take it to mean that&nbsp; chocolate is good for you. </p>

<p>In fact, the SFC does not normally authorise mutual funds for
sale to the public unless they contain a restriction limiting them to not more
than a 10% portfolio weighting in any one stock. The TraHK must have obtained a
waiver of this (which the SFC
allows under its code) since the top 3 HSI stocks are each greater than 10%
and add up to nearly 50% of the entire portfolio. This waiver does not eliminate
the principle that the SFC was trying to follow, namely that diversification is
good and more is better. </p>

<h3>All in the family</h3>

<p>Notice also that &quot;diversification&quot; is a relative term.
There is a great deal of double counting in the HSI, where one listed company is
controlled by another. The HSI gives each stock its full 100% market value when
calculating its weighting in the index, even if a large part of the company is
owned by another index member or a controlling shareholder (and is not therefore
available for public investment). We've already pointed out that Hang Seng Bank
is a listed subsidiary of HSBC. </p>

<p>In another example, Cheung Kong (35% controlled by Mr. Li Ka
Shing) owns about 50% of Hutchison Whampoa, which owns about 85% of Cheung Kong
Infrastructure, which owns about 36% of Hong Kong Electric. All 4 companies are
in the HSI. This is bizarre. Cheung Kong's market value of $138bn is almost the
same as the value of its 50% stake in Hutchison. So you see that Hutchison gets
an effective 150% weighting (100% directly and 50% through Cheung Kong), while
CKI gets a 228% weighting (100% direct, 85% thought Hutchison and 42.5% through
Cheung Kong). </p>

<p>This group is not the only one to benefit from double counting
and the inclusion of private holdings. Running through the index, Mr. Lee Shau
Kee owns about 65% of Henderson Land Development, which owns about 64% of
Henderson Investment, which owns about 33% of Hong Kong &amp; China Gas. The Pao
family controls about 61% of Wheelock which controls about 50% of Wharf. Swire
Pacific and CITIC Pacific together own about 70% of Cathay Pacific, and Hang
Lung, which is 39% controlled by the Chan family, owns about 59% of Amoy
Properties. If we have left anyone out, please don't be offended. </p>

<h3 id="boardlot">Bored with Board Lots</h3>

<p>Hong Kong has another out-dated system known as board lots,
which dates back to the time when share trades were physically settled by moving
share certificates around town. To allow holdings to be easily broken up and
transferred without going back to the registrar, they were traded and held in
multiples of a common lot (the board lot) with one certificate for each lot.
Some people still hold these certificates under their mattress, but most now
leave them with their brokers or custodians who put them into the
&quot;demobilised&quot; clearing system. These days you can't trade shares
unless they are in (or put into) the clearing system. </p>

<p>Anyway, as share prices have grown over the years, board lots
have remained the same in share terms, so they have grown in value, and trading
is still conducted in board lots. The largest board lot in the HSI, Hutchison
Whampoa, now trades at HK$70,250 for 1,000 shares. Issuers of covered warrants
love this, because they can issue warrants on much smaller numbers of shares and
offer geared exposure at above fair value to small investors. </p>

<p>The problem of large board lots could be removed if the Exchange
abolished board lots and shifted to a &quot;minimum transaction size&quot; in
dollar value. In the meantime, if you want to compose a &quot;HSI Top 10&quot;
portfolio representing about 81% of the HSI&nbsp; components by value, you can
get pretty close to matching the correct weightings if you have HK$1m to invest,
as follows: </p>

<img class="center" alt="" src="../images/trahk13.gif">

<p>As you can see in the above table, the &quot;market cap
weight&quot; of each stock is closely matched by the &quot;portfolio
weight&quot; in the $1m portfolio. Each holdings is of whole board lots. There
you have it, the <i>Webb-site.com</i> do-it-yourself index tracker. By holding
this portfolio directly, you also have the flexibility to adjust your weightings
as you go along, without selling the entire portfolio. That's the flip-side of
holding an index fund. </p>

<h3>One Country, Two Systems, One Index?</h3>

<p>Now understand that we are not recommending the above portfolio
as a proxy for &quot;Hong Kong Inc.&quot;. As we've said, we don't like the HSI
portfolio because of the inclusion of HSBC and the double counting problem. We
also think that the HSI should be more about the Hong Kong economy and less
about direct China plays such as China Telecom (mobile phones in the mainland)
and Shanghai Industrial. It is certainly true that Hong Kong's economy is highly
dependent on China's, but they are run on two different &quot;systems&quot; and
the decision a few years ago to introduce &quot;red-chips&quot; into the Hang
Seng Index resulted in an unnecessary mixture of the two systems in the index. </p>

<p>Hong Kong's blue chip stocks (which often have direct and
indirect exposure to the mainland) are managed in general by Hong Kong people
with decades of management experience in a capitalist economy. China-plays are
managed in general by people with decades of experience in a socialist
centrally-planned economy, and have Government controlling shareholders who
often have conflicting goals. We have the HSCCI (Red-chip) index and the HSCEI
(H-share) index to track such stocks, and we think the HSI should have been left
free of them. There is no longer an index which tracks only Hong Kong-managed
companies. </p>

<p>The Government aims to sell the TraHK by offering retail
investors a discount and a loyalty bonus (in a an unknown ratio of 1 unit for
every x units held) if we hold for an (as yet unspecified) period. In a future
article, we'll show you how to take this &quot;free money&quot; offered by the
Government without running market risk on the HSI. </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=7679">EXCHANGE FUND INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56825">Hang Seng Indexes Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51819">Tracker Fund of Hong Kong</a></li>
				
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