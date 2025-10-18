
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

<script type="text/javascript">document.title="Wooden Lammas";</script>

	<div class="summary">What's the connection between self-described "business broker" L.P. Lammas and internet sounding "not-com" I-Wood International, the Fujian furniture maker? We show you how to craft a GEM listing from a handful of transactions. Lammas stock has been on the rampage in Hong Kong, but you may want to stand well clear.</div>

<h2 class="center">Wooden Lammas<br>
<span class="headlinedate">19 February 2001</span></h2>
<p>Once in a while, a GEM listing catches our eye, and we step back
and marvel at the ingenuity behind it. <a href="http://www.lplammas.com/" target="_blank">L.P.
Lammas International Ltd</a> (<b>Lammas</b>) was listed in Dec-00, issuing 160m
shares (20% of the enlarged capital) at HK$0.20 per share. Gross proceeds were
$32m but estimated expenses of the small issue amounted to 31% of that, leaving
net proceeds of $22m. </p>

<p>The issue, sponsored by <a href="http://www.taifook.com/english/aboutus/capt.asp" target="_blank">Tai
Fook Capital Ltd</a>, was done by way of a discretionary placing, and 18.75% of
the issue was placed with companies affiliated to <a href="http://www.cash.com.hk/f_fsg_corporate.asp" target="_blank">Celestial
Capital Ltd</a> and <a href="http://www.kingsway2000.com/" target="_blank">Kingsway
SW Securities Ltd</a>, two of the four co-managers of the placing. A whopping
88% of the tiny issue was placed with the top 10 placees (including the 2
affiliated placees). </p>

<p>You might think this would lead to somewhat low liquidity, but
you'd be wrong - the first day's trading saw 169.32m shares traded, or 106% of
the issue, so some shares were traded at least twice in one day. The stock
closed day one at $0.305, up 52.5% on the issue price. </p>

<p>After a brief dip, the shares have been what you might call
&quot;rampant&quot;, closing today at $0.58, making it one of the most
successful GEM issues in months, up 190% on the IPO. Daily volume so far this
month has&nbsp; averaged 15.4m shares, almost 10% of the float, and the company
now has a market cap of <b>HK$464m</b>. We believe this success will prove to be
illusory, and when you've read our story, you will understand why. </p>

<h3>So what's all the excitement about?</h3>

<p>Not much. L.P. Lammas describes itself as a &quot;business
brokerage&quot; providing services for &quot;middle market mergers and
acquisitions in the Greater China region&quot;. It was founded by Louis Pong Wai
Yan (<b>Louis Pong</b>) (now 30) back in 1993, when China was all the rage and
Barton Biggs was &quot;maximum bullish&quot;. The first company was known as
&quot;L.P. Lammas China Trade Agencies Limited&quot; incorporated 18-Nov-93 and
now dormant. We don't know why L.P. chose <a href="http://www.dictionary.com/cgi-bin/dict.pl?term=Lammas" target="_blank">Lammas</a>. </p>

<p>The group did not get its first service mandate until Jul-95.
The track record in the prospectus covers the 2 years and 3-month period
1-Apr-98 to 30-Jun-00. During that period, it got paid for 19 mandates including
3 which did not successfully close, and total revenue was just $11.15m. </p>

<p>Of that, 2 mandates relate to opposite sides of the same deal,
the sale to an unidentified <i>&quot;Hong Kong listed blue chip company&quot;</i>
of an interest in a hotel in Hong Kong for $270m, of which Lammas got a total of
1.75% commission, or $4.725m. That one deal makes up <b>42%</b> of the track
record revenue and some 59% of the second year's revenue. </p>

<p>While the hotel was not identified, it may well be the New Astor
Hotel, in Tsim Sha Tsui, Kowloon, which was reportedly sold by the private Park
Hotel Group in 1999 for between $260 and $280m. We don't know who owns that. The
reported buyer was <a href="http://www.nwd.com.hk/" target="_blank">New World
Development</a> (<b>NWD</b>) which has the &quot;four streets&quot; urban
redevelopment joint venture next door with the Government-owned Land Development
Corporation. It would have been a natural fit. </p>

<p>One of the non-executive
directors of Lammas is Stewart Leung Chi-kin, an executive director and the
General Manager of NWD. The Lammas IPO sponsor, Tai Fook Capital, is controlled
by the Cheng family which controls NWD. </p>

<p>An unidentified Nasdaq-listed curtain walling construction
company gave Lammas at least 6 of the 19 mandates. The first was for advice on
entering the HK and PRC markets, signed on 12-Jan-99. This resulted in the
acquisition of a stake in a PRC curtain walling company, for which the PRC
company also paid a fee of RMB150,000 ($141,509). The next two were for advice
on tenders, one in HK and one in the PRC, both signed on 10-Jun-99, while the
final two mandates were signed on 26-Jan-00, both for tenders in HK. The total
revenue from this client and the PRC vendor was about $2.96m, or about <b>27%</b>
of the track record revenue. </p>

<p>Our best guess at the identity of the client is <a href="http://www.flourcity.com/" target="_blank">Flour
City International, Inc</a>, which is a Nasdaq listed curtain walling company
based in Nashville, Tennessee, and chaired and controlled by John W Y Tang. In
Aug-00 they <a href="http://www.flourcity.com/bw/000830/tn_flour_c.html" target="_blank">acquired</a>
a 70% stake in a curtain walling company in Shanghai. They also <a href="http://www.flourcity.com/bw/001120/tn_flour_c.html" target="_blank">announced</a>
in Nov-00 that they were in talks to acquire HK-based privately owned competitor
<a href="http://www.buildersfederal.com/" target="_blank">Builders Federal Group</a>. </p>

<p>Another property deal accounted for 2 mandates, when a US client
bought an interest in a commercial building in HK from a HK client, and Lammas
received a total commission of $0.973m, which was mandated as 0.5% from each
side although the final split was slightly different. Lammas stated that it was <i>&quot;not
acting as an agent for the sale and purchase of the property&quot;</i> which may
have something to do with the fact that it does not profess to be a licensed
estate agent. This deal accounted for about <b>9%</b> of the track record
revenue. </p>

<h3>I-Wood</h3>

<p>Now we take a quick detour into the furniture business. Bear
with us, and you'll see why. I-Wood International Holdings Ltd (<b>I-Wood</b>)
was floated on the main board in Oct-00. Despite the sexy name, we have not been
able to locate a web site for it. The company makes pine and laminated furniture
in a factory in Fujian province. 85% of sales are to Japan and 12% in the PRC. </p>

<p>I-Wood's PRC subsidiary was incorporated on 20-Jun-96 and began
production in Jan-97. The group floated on the main board as soon as it had the
required 3-year track record ending 31-Mar-00. It paid dividends in the last
2-years and up to the IPO totalling <b>$62.1m</b>. In its short pre-IPO history,
the Group had made just $66.1m, so nearly all profits had been paid out. </p>

<p>On top of the dividends, the founding shareholder sold 10% of
I-Wood in the IPO, giving him HK$20m gross, while the company raised $30m gross.
IPO expenses were estimated to be $8.5m to be split in the same 40:60 ratio, but
puzzlingly, the prospectus states that the net proceeds to the company were <b>$21.5m</b>,
which implies that they paid all the costs. The statements cannot both be
correct. </p>

<p>Whenever you see this much cash being taken out of an IPO
through dividends, you know that the company isn't going public just to raise
money, since its owners could have left the money inside the company. </p>

<p>The founder and Chairman of I-Wood is Mr Yau Kwai Tun (<b>Mr Yau</b>).
Not only was a seller in the IPO, but he sold before the IPO too. According to
the prospectus, &quot;<i>In January 2000, Mr Yau invited a business
partner&quot;,</i> a company owned by Mr Wilson Pong Wai San (<b>Wilson Pong</b>),
described as <i>&quot;an investor in Hong Kong with investments in a wide range
of businesses in Hong Kong and overseas&quot;</i>. </p>

<p>Mr Yau sold a 41.2% interest in the Group to Wilson Pong for an
unspecified amount. The IPO diluted that stake to 35.02%, leaving Mr Yau with
39.98% and the public with 25%. Despite his large stake, Wilson Pong did not
join the board of I-Wood. </p>

<p>Besides Mr Yau, the only other executive director of I-Wood is
Mr Wilfred Hung Fan Wai (30), who joined I-Wood 3 months before the IPO. He is a
non-executive director of Asia Logistics Technologies Ltd, but was an executive
director at the time of their Sep-98 IPO, when they were known as Wah Yik
Holdings Co Ltd. Back then, Wah Yik operated bowling allies in Fujian province,
before it all went horribly wrong. Mr Hung joined Wah Yik 3 months before its
IPO which was sponsored by Tai Fook Capital Ltd, the sponsor of Lammas. </p>

<p>The shares of I-Wood, priced in the IPO at $0.80, closed at
$0.40 today. You do the maths. </p>

<h3>Back to Lammas</h3>

<p>In one of Lammas' other mandates, signed on Valentine's day
2000, it advised a <i>&quot;Hong Kong company specialising in the manufacturing
of pine furniture... to search for an investor for the Company&quot;. </i>Lammas
received a success fee of $1m and out of pocket expenses of $20k. The revenue
accounted for about <b>9%</b> of the track record and about 50% of the revenue
for the 3 months ended 30-Jun-00. </p>

<p>Hmmm, pine furniture, Pong, Hong Kong, sale of a stake. Are you
thinking what we are thinking? If this company was I-Wood, then the investor
whom Louis Pong Wai Yan was searching for, was none other than Wilson Pong Wai
San. </p>

<p>It seems odd that the Lammas prospectus did not say whether
these gentlemen are related, and whether the transaction should have been
treated as a connected transaction even though the fee was paid by the vendor
rather than the purchaser. </p>

<p>The Lammas accountants' report provides another link between
these gentlemen - Wilson Pong was formerly the owner of 2.5% of L.P. Lammas Asia
Ltd (formerly L.P. Lammas China Ltd) and 29.99% of L.P. Lammas Group Ltd (the
original L.P. Lammas China Trade Agencies Ltd), which are now wholly owned by
Lammas. </p>

<p>Let's go for the hat trick - in a third link, Mr Edwin Lo King
Yau (<b>Mr Lo</b>) is listed as an independent non-executive director of both
Lammas and I-Wood. Mr Lo is also an executive director of HK-listed Allied Group
Ltd and the related Tian An China Investments Co Ltd. </p>

<p>Two other deals in the Lammas track record were <i>&quot;identification
and introduction of financier&quot;</i> - basically loan arranging, in the
amounts of $15m in Oct-98 and $20m in Apr-99, in each case for a fee of 2%, or
$0.7m total. That's another <b>6%</b> of Lammas' track record revenue. We don't
know who the lender was, and no related party was disclosed. </p>

<h3>Track record summary</h3>
<img class="center" alt="track record" src="../images/wooden2.gif">
<p>What we appear to have is a company with a market cap of <b>HK$464m</b>
but track record revenue of only <b>$11.15m</b>, of which 51% came from two
trades of a hotel and commercial property, 27% resulted from a single
Nasdaq-listed construction company and 9% came from a deal involving pine
furniture company. Those 4 situations cover 87% of the track record revenue. </p>

<p>It doesn't get any better. Results last week show that in the 9
months to 31-Dec-00, revenue was just $3.64m, down 28% on the same period the
previous year. In the quarter to 31-Dec-00, revenue was just $0.653m, so we
infer that revenue in the quarter to 30-Sep-00 was $0.930m. The directors blamed
the slowdown on the <i>&quot;considerable amount of the resources of the Group
were devoted to the flotation of the Company&quot;</i>. Nice to get your
priorities straight. The work that they put in on the float by the time the
prospectus went out on 5-Dec-00 did not stop them from saying in the prospectus: </p>

<blockquote>
  <p>&quot;On the assumption that certain on-going transactions can
  be completed in fiscal year 2001 [i.e. by 31-Mar-01] the Directors anticipate
  the Group's turnover to grow significantly&quot; </p>

</blockquote>
<p>They'll have some catching up to do in the last quarter! </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11749">CENTURY GINWA RETAIL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5600">HAITONG INTERNATIONAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12509">IMPERIUM FINANCIAL GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=432">NEW WORLD DEVELOPMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7089">Vision Values Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10844">Hung, Wilfred Fan Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8762">Lo, Edwin King Yau</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12510">Pong, Louis Wai Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11752">Pong, Wilson Wai San</a></li>
				
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