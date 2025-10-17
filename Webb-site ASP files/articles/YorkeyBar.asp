
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

<script type="text/javascript">document.title="Raising the Yorkey bar";</script>

	<div class="summary">What are we going to do about the proposed privatisation of Yorkey (2788)?</div>

<h2 class="center">Raising the Yorkey bar<br>
<span class="headlinedate">21 October 2021</span></h2>
<p>A number of readers have asked what we think about the privatisation 
proposal for <a href="../dbpub/articles.asp?p=32013">Yorkey Optical International (Cayman) Ltd</a> (<strong>Yorkey</strong>, 
2788), by Asia Optical International Ltd, which has opened the bidding at 
HK$0.88 per share, and wisely has not ruled out an increase. The
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2021/1015/2021101501288.pdf" target="_blank">
announcement</a> correctly states that the audited net asset value at 
31-Dec-2020 was about HK$0.828 per share (US$87.26m in total, see
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2021/0429/2021042900805.pdf" target="_blank">annual report</a>). However, that is not the whole picture, because Yorkey has 
significant property interests which form a large part of its true value but are 
held in the books at depreciated cost, rather than market value.</p>
<p>Note 13 of the accounts shows leasehold land and buildings of only US$0.540m 
at depreciated cost. Note 12 of the accounts shows investment properties at 
US$5.313m, again at depreciated cost, not market value. So the total book value 
for all properties is only US$5.85m. As far as we know from public filings, Yorkey has 3 properties, of which one 
is its main factory on the North side of Dezheng Middle Road, Changan, Dongguan, 
PRC, pictured in the 
<a href="https://map.baidu.com/@12716737,2533379,13z#panoid=09006600011607081734120768Z&amp;panotype=street&amp;heading=251.8&amp;pitch=17.11&amp;l=13&amp;tn=B_NORMAL_MAP&amp;sc=0&amp;newmap=1&amp;shareurl=1&amp;pid=09006600011607081734120768Z" target="_blank">Baidu Street View</a> screenshot below (see the logo on the 
signage):</p>
<img class="center" alt="Yorkey factory" src="../images/YorkeyFactory.jpg">
<p>According to the CBRE <a href="https://www.hkexnews.hk/listedco/listconews/sehk/2006/0126/02788/ewp128.pdf" target="_blank">
valuation report</a>  in the 2006 prospectus, this site has a land area of 16,647 
sq.m. and a building area of 40,138 sq.m.. A keen observer will notice that on the other side of the street is an 
enormous new development. The whole district is in the process of redevelopment 
- here's what it looked like on Google Earth on 9-Jan-2009:</p>
<a href="https://www.youtube.com/watch?v=DCeQNPJtMWY" target="_blank">
<img class="center" alt="Dezheng Middle Road 9-Jan-2009" src="../images/DezhengMR090109.jpg">
</a>
<p>And here's the same view nearly 12 years later, on 24-Nov-2020, with many of 
the factories already gone:</p>
<a href="https://www.youtube.com/watch?v=w9lmCpIzhFo" target="_blank">
<img class="center" alt="Dezheng Middle Road 24-Nov-2020" src="../images/DezhengMR201124.jpg">
</a>
<p>You'll see two red boxes with the approximate outlines of Yorkey's site (on 
the right), and on the left, a site now owned by 
<a href="../dbpub/orgdata.asp?p=4806">Chuang's China Investments Ltd</a> 
(<strong>CCI</strong>, 0298). CCI bought Dongguan Midas Printing Co Ltd, the 
company that owns that site, from CCI's subsidiary, then known as 
<a href="../dbpub/orgdata.asp?p=1711">Midas 
International Holdings Ltd</a> (1172) in 2015. The
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2015/0512/ltn20150512750.pdf" target="_blank">
CCI transaction circular</a> dated 13-May-2015 has an aerial photo on page 10 
and the valuation report discloses a land area of 18,990 sq.m. and a building 
area of 39,081 sq.m.., very similar to Yorkey's site. </p>
<p>At the time, the printing factory had been closed, but CCI has since let it 
out on a short-term lease while it ponders the right time to convert it into 
residential usage, so no land premium has been paid yet. Even so, page 20 of the 
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2021/0726/2021072600833.pdf" target="_blank">CCI annual report</a> at 31-Mar-2021 discloses a market value in its current state 
of CNY223.4m. Assuming the same value per square metre of land, Yorkey's site 
would be worth about CNY195.8m (<strong>US$30.61m</strong>).</p>
<p>On top of that, in the
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2006/0126/02788/ewp128.pdf" target="_blank">
2006 prospectus</a> you will also find units in Goldfield Industrial Centre, Sha 
Tin, with a gross floor area of 788.28 sq.m., plus a car space and a lorry 
space. Part of this is still the group's head office. According to
<a href="https://www.rvd.gov.hk/en/property_market_statistics/index.html" target="_blank">
data from</a> the HKSAR Ratings and Valuation Department, "flatted factories" in 
the New Territories had a 2021 Q2 average price of HK$63,777 per sq.m., which 
would value Yorkey's units at about HK$50.3m (<strong>US$6.45m</strong>) plus the 
parking spaces.</p>
<p>The third property we know of,
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2016/0721/ltn20160721617.pdf" target="_blank">
acquired</a> on 21-Jul-2016 for HK$42.8m, is workshops on the 26/F of CRE 
Centre, 889 Cheung Sha Wan Road, Kowloon, plus the flat roof above. These are 
currently rented out. This is another industrial property with a gross floor 
area of 8,854 sq. ft. or about&nbsp; 822.56 sq.m.. The purchase price was 
HK$52,032 per sq.m.. As this was relatively recent, we can look at the RVD 
Quarterly Price index for flatted factories. In Q3 of 2016 (the purchase time), 
this index was 681.9, and in Q2 of 2021, it was 878.5, an increase of 28.8% in 
just over 5 years. So we estimate the value of this property to be 42.8*1.288 = 
HK$55.1m (about <strong>US$7.07m</strong>).</p>
<p>So we estimate the total value of the 3 properties at US$44.13m (about 
HK$0.421 per share), or about US$38.28m more than book value. That increases NAV 
per share by about HK$0.365 per share, taking the total to HK$1.193 per share at 
31-Dec-2020. Of course, professional valuers may have different opinions, but we 
won't be far apart. Since then, Yorkey
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2021/0827/2021082700511.pdf" target="_blank">
produced interim results</a> showing a sharp rebound from 2020 which was 
depressed by COVID. Bank balances at 30-Jun-2021 were a corpulent US$81.85m (about HK$0.781 
per share), before payment of a $0.035 dividend. There are no borrowings. So the 
current offer is only about HK$0.13 above net cash.</p>
<p>The Offeror has left room to increase the bid after Yorkey has obtained the 
expected valuation reports, before the offer document is posted. Webb-site Founder David Webb currently holds more 
than 10% of the independent shares, sufficient to block the privatisation, so 
let's hope that does not become necessary and the Yorkey bar is substantially 
raised for a happy ending.</p>
<p>
<a href="https://en.wikipedia.org/wiki/Yorkie_(chocolate_bar)" target="_blank">
<img class="center" alt="Yorkie Bar" src="../images/YorkieBar.jpg"></a>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=32019">Asia Optical Co., Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4806">Chuang's China Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32013">Yorkey Optical International (Cayman) Ltd.</a></li>
				
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