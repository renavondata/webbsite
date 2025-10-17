
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

<script type="text/javascript">document.title="HK companies see record closures, slowest growth since 2003";</script>

	<div class="summary">Webb-site reveals that 2015 saw the slowest net growth in HK companies since the recession of 2003 and record levels of dissolution. Market forces may still be alive though, with about half of 2007's companies already closed, despite the Government's increasing intervention. We don't need an Innovation and Technology Bureau, but we do need removal of Government barriers to information and competition - and they could start by removing the paywall on public registries.</div>

<h2 class="center">HK companies see record closures, slowest growth since 2003<br>
<span class="headlinedate">2 January 2016</span></h2>
<p>It is that time of year when the media roll out stories about the first 
babies of the new year, born just after midnight, looking just like the first 
babies of the previous year. So we thought for a change we should do the same 
for companies while looking back at 2015. So congratulations to the proud 
shareholders of <a href="../dbpub/orgdata.asp?p=2520847">COLORANGE TECHNOLOGY 
LIMITED</a>, the first HK-incorporated company of 2016, number 2325849.</p>
<p>Webb-site can reveal that only 139,209 companies were incorporated in HK in 
2015, down 16.8% from 2014 (167,290) and the lowest incorporation rate since 
2009 when 109,424 were incorporated. We are still finalising data collection for 
the existing companies to check for dissolutions in the last few days of the 
year, but we can tell you that 2015 was a record year for dissolution of 
companies, with at least 121,963 dissolved, up 111% from 57,685 in 2014 and 
easily beating the previous record of 61,982 in 2012.</p>
<a href="../dbpub/incHKannual.asp">
<img class="center" alt="HK companies incorporated and dissolved" src="../images/HKcosIncDis.png"></a>
<p>Consequently, the net increase in companies was not more than 17,246, 
the slowest rate of growth in company population since the last recession in 
2003, when we lost a net 5,641 companies. For the latest
<a href="../dbpub/incHKannual.asp">charts and data click here</a>. So in 
summary, HK ended the year with about 1.290m live companies, up 1.4% on 2014. 
That measure includes companies which have begun dissolving but have not yet 
completed the process.</p>
<a href="../dbpub/incHKannual.asp">
<img class="center" alt="HK companies net change" src="../images/HKcosNetChange.png"></a>
<p>Meanwhile, looking at our <a href="../dbpub/incHKsurvive.asp">survival 
analysis</a>, at the end of 2015, over a quarter of the companies incorporated 
in 2011 are now dissolved, with 74.8% surviving, and nearly half the companies 
incorporated in 2007 are dissolved, with only 50.9% surviving, after an average 
of 8.5 years since they were incorporated. One could say that the median life 
expectancy of companies born in 2007 was about 8.5 years. Unlike people, this 
high rate of infant mortality for companies is not necessarily a bad thing. It 
rather testifies that despite increasingly interventionist government policies 
(including propping up businesses with
<a href="https://www.smefund.tid.gov.hk" target="_blank">loan guarantees </a>and 
handouts like the <a href="http://www.bud.hkpc.org/en" target="_blank">BUD Fund</a>) 
, companies are still allowed to fail, freeing up resources in the process of
<a href="https://en.wikipedia.org/wiki/Creative_destruction" target="_blank">
Schumpeter's creative destruction</a>.</p>
<a href="../dbpub/incHKsurvive.asp">
<img class="center" alt="HK companies survival at 2015-12-31" src="../images/survivalHKcos151231.png"></a>
<p>For companies limited by guarantee (which cannot distribute profits, such as 
members' clubs, professional, sports and alumni associations, political parties, 
think tanks, churches and some charities), there was a record number of 946 new 
incorporations, but also a record number of dissolutions of at least 718, 
resulting in a net increase of not more than 228. There were about 12,724 at the 
year end. For the latest <a href="../dbpub/incHKannual.asp?t=1">charts and data 
click here</a>. The net number of such companies has grown every year since 1998 
inclusive. Incidentally, the oldest surviving company limited by guarantee is
<a href="../dbpub/orgdata.asp?p=37700">The Hong Kong Club</a>, incorporated 
31-Dec-1885, so it was 130 years old on New Year's Eve, although it has a 
history before incorporation.</p>
<a href="../dbpub/incHKannual.asp?t=1">
<img class="center" alt="HK guarantee companies net change" src="../images/HKgcosNetChange.png"></a>
<p>Turning to overseas companies, 894 were registered in HK during 2015, while 
at least 452 were deregistered or dissolved, for a net increase of about 442. 
That takes the total still here and not dissolved to a provisional 10,029, a 
growth of 4.6% and over 10,000 for the first time. Of these, 1,647 have a
<a href="../dbpub/domicile.asp">primary listing</a> on The Stock Exchange of 
Hong Kong Ltd (<strong>SEHK</strong>). There are only 211 HK-listed 
HK-incorporated companies. Don't assume that non-HK companies are ultimately 
owned by non-HK residents. Many of them are not.</p>
<a href="../dbpub/regHKannual.asp">
<img class="center" alt="Net change in non-HK companies" src="../images/nonHKcosNetChange.png"></a>
<p>The most popular domicile for HK registration is the BVI with 4,391 
(only 8 of which are HK-listed), then Cayman Islands with 1,488 (of which 875 
are HK-listed) and Bermuda with 667 (of which 517 are HK-listed).
<a href="../dbpub/domregHK.asp">Click here</a> for a complete list of domiciles.</p>
<h3>Footnote</h3>
<p>All our HK-incorporation and registration data is sourced from the Companies 
Registry. The CR does not provide any daily data dump or API, so we collect it 
the hard way by scraping web pages. Some years ago they throttled the access to 
only 39 pages per minute, so updating 1.3 million live companies (and 
occasionally checking the dead ones for restoration) takes longer than it used 
to. The HK Government is not really committed to open data. This is evidenced by 
the fact that there is still a paywall on digital documents at the Companies 
Registry and Land Registry, despite the fact that both of them would make a 
handsome profit from filing fees alone. As monopoly Government-owned services, 
they shouldn't be in it for profit. We suspect the policy is more driven by 
misguided privacy concerns about the data, so they make it harder to get by 
charging for it.</p>
<p>Kudos to UK Companies House, which in the Summer set the standard by 
opening its digital documents to free public access.
<a href="https://beta.companieshouse.gov.uk/" target="_blank">Try it here</a>. 
When will HK do this?</p>
<p>The Government has recently set up an
<a href="http://www.itb.gov.hk" target="_blank">Innovation and Technology Bureau</a>, 
but it will be hard to innovate when so many Government barriers stand in the 
way. The last time we had such a bureau (the former Information Technology and 
Broadcasting Bureau), the result was the <a href="cybervillas.asp">
Cyberport</a> - the Government-owned hotel, cinema, shopping mall and offices, 
and guess what - the former CEO of the Cyberport from 2003-2010,
<a href="../dbpub/positions.asp?p=7451">Nicholas Yang Wei Hsiung</a> is now the 
Secretary for Innovation and Technology. He joined the Cyberport after 20 years 
at his father-in-law's company, electrical appliance-maker
<a href="../dbpub/articles.asp?p=4963">Shell Electric Mfg. (Holdings) Co Ltd</a> 
(now China Overseas Grand Oceans Group Ltd).</p>
<p>All that HK really needs for economic innovation is for the Government 
to get out of the way, remove barriers to information and competition (see our
<a href="roadcartels.asp">transport cartels</a> article for starters), provide a 
decent education for HK's children and let the market function. That would be 
the single biggest innovation it could achieve - and they could start by 
removing the paywall on public registries.</p>
<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2322557">HKSAR Companies Registry</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7451">Yang, Nicholas Wei Hsiung</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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