
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

<script type="text/javascript">document.title="Hong Kong Needs a Competition Law";</script>

	<div class="summary">In this piece on economic governance, Webb-site.com looks at the pressing need for Hong Kong to establish a comprehensive competition law and an authority with investigatory powers, in line with accepted practice in most developed markets. The government-appointed Consumer Council first called for this in 1996, and it is a necessary condition for a World-class City. An edited version of this article first appeared in the Financial Times today in a debate with HKSAR Financial Secretary Antony Leung.</div>

<h2 class="center">Hong Kong Needs a Competition Law<br>
<span class="headlinedate">13 July 2001</span></h2>
<p>What makes a free market? Hong Kong ranks highly in studies of economic freedom by institutes such as the US-based Heritage Foundation. Officials trumpet these findings, but fail to note that these studies would regard governmental regulations on health, safety and the environment as "burdens" from a business perspective.
Competition laws might be seen as another burden restricting the free exercise of monopolistic power.</p>
<p>As a free port, Hong Kong scores well, with almost no tariff or non-tariff barriers and a freely convertible currency. Direct taxation is low and regulation is low.
However, in the domestic economy, away from the pressures of international competition, that lack of regulation permits a system of entrenched cartels, impeding economic efficiency.</p>
<p>Very slowly, some of these cartels are being dismantled in the government's "sector-specific" approach to competition regulation. A cartel on bank deposit rates ended on July 1. A percentage scale of conveyancing fees was scrapped in 1997. But as late as 1999 the Law Society asked those of its members tendering for conveyancing work on government housing sales to fix a minimum fee. Even after the story broke, 40 firms submitted identical bids, while 37 broke ranks and undercut them by an average of almost 75 per cent.&nbsp;</p>
<p>A minimum charge on brokerage fees, set by the stock exchange, is to be scrapped in 2002. The government can also point to successes in deregulating the mobile and international direct dialling telecoms sector. However, the fact that the licensed financial services and telecoms sectors are so often cited as success stories underlines the lack of progress in tackling other non-licensed cartels.</p>
<p>In sectors where there are no statutory licensing and inspection provisions, the government has no intervention or investigatory powers when suspicions of anti-competitive behaviour arise. Today, Hong Kong urgently needs anti-trust or competition laws.</p>
<p>Concern also persists that the government takes not so much a "sector-specific" approach as a sector-selective approach to competition regulation.
It is notable that the banking and telecom sectors which have seen the most commendable deregulation are those in which foreign ownership has historically been the highest. In banking, market leader HSBC Holdings is incorporated and headquartered in the UK. In telecoms, until last year, Cable &amp; Wireless controlled former monopoly Hongkong Telecom. In recent months, the government has begun to dismantle the protection enjoyed by Cathay Pacific Airways, whose ultimate controlling shareholder, John Swire &amp; Sons, is British.</p>
<p>Meanwhile, powerful local tycoons who control many other sectors enjoy a laissez faire government that fails to distinguish between pro- market and pro-business policies in a "winner-takes-all" approach. Efficient free markets can only be achieved if prompt and predictable intervention occurs when competitive forces have disappeared. Sometimes Adam Smith's invisible hand is simply not there.</p>
<p>Monopolies and oligopolies include container terminals, drugstores, electricity, piped gas, electronic payment systems, driving schools, fuel, asphalt, cement, concrete, cable TV, terrestrial TV and gambling, to name a few. Resale price maintenance, where suppliers set minimum prices for retailers is commonplace and legal.</p>
<p>The supermarket sector provides a classic example, long dominated by two chains with an estimated 70% market share. In the late 1990s, the arrival of French hypermarket player Carrefour was cited as an example of the open nature of the economy and the lack of need for a competition law. In fact, it rather underlined the problem, with Carrefour supplying the Consumer Council with a list of 22 companies that it claimed had put pressure on it to maintain recommended retail prices. Carrefour eventually pulled out of Hong Kong in 2000, despite continuing to expand in the Mainland PRC.</p>
<p>Another case in point is the supply of fuel products, all of which are imported. Visiting motorists will notice the almost complete absence of price signboards outside the stations, and pump prices are nearly always identical. Such "competition" as exists is usually based on how many boxes of tissues or bottled water are given away on the forecourt. A 2000 Consumer Council report found that pre-tax prices of unleaded petrol were double those of the US, Canada and Australia. Lacking the investigative powers of a competition law, the Government could do little more than ask polite questions of fuel companies. Those that chose to answer cited "import prices" and single-digit returns while overlooking the fact that many of the imports come from their own refineries at prices they can determine.</p>
<p>Fewer than 10 companies produce most of the private real estate and have bought up most of the remaining agricultural land for development. This land can be converted for residential use on the payment of land premiums to the government.
The top developers have vast balance sheets and borrowing power, which allows them to finance both the holding of land and the up-front premiums. They then act, in effect, as tax-collectors in a modern equivalent of the feudal tax-farming of the middle ages. While nominal personal and corporate tax rates are low, this disguises a large and inefficient indirect tax on which a substantial collection fee accrues to the developers.</p>
<p>To understand the government attitude to competition regulation and to business in general, one must understand the history of Hong Kong.
It was only because of the illicit import of opium to China that Hong Kong was colonised by Britain in the first place. William Jardine, co- founder of the once-dominant trading house Jardine Matheson, was instrumental in persuading the British Foreign Secretary to go to war with China in 1839 after the Chinese government began confiscating opium and driving the British out of Guangzhou.</p>
<p>So it is not surprising that Hong Kong has historically been run "by business, for business" and more specifically for big business. Even in the late 1980s, large companies such as HSBC and Swire had de facto representatives in the Executive Council, which advised the governor on policy making.</p>
<p>Today, the council comprises the chief executive, who heads the government, the top three civil servants and nine advisers appointed by the chief executive. Of these nine, one founded one of the largest local property surveyors, one owns a textiles company, another chairs several listed companies, one is the co-founder of a leading law firm and another runs the China practice of a Big Five accounting firm. A sixth member is a non-executive director of several leading bank and property companies.</p>
<p>The 60-seat local Legislative Council has a large contingent of business people in many of the 30 "functional constituencies", a majority of which is required to pass any private member's bill. This renders the other half of the house, which includes the 24 popularly-elected legislators, virtually impotent.
Any private member's bill which relates to government policies or expenditure requires the consent of the chief executive. A Fair Competition bill proposed by the Democratic party, the de facto opposition, was rejected on that basis in February 2001.</p>
<p>Hong Kong has a government-appointed Consumer Council, consisting of a diverse mixture of lay people and academics. In a 1996 report, they
<a href="http://www.consumer.org.hk/trd96/trd96_e.htm" target="_blank">wrote</a>: "The Consumer Council strongly recommends the enactment of a competition law to cover horizontal and vertical collusive agreements and abuse of dominant position." They followed this up with a stream of reports indicating the scale of the problem.</p>
<p>In a minimalist response, the government set up the Competition Advisory Group, which despite its name consists entirely of government officials and one Consumer Council representative. It is a watchdog with no teeth.</p>
<p>Hong Kong businesses overseas enjoy the fairer opportunities that most developed markets provide through comprehensive competition laws, while at home the government continues to resist calls for such a law. Ultimately it will lose out as a less efficient market deters foreign businesses from participating in this service-based
economy, and the higher costs deter multi-nationals from locating here. If Hong
Kong truly wishes to become a World-class City, then it must adopt world-class
competition regulation.</p>
<p><em>An edited version of this article first appeared in the Financial
Times on 13-Jul-01. The <a href="../codocs/010713FTleung.pdf" target="_blank">opposing
case</a> for the Government was written by Antony Leung, HKSAR Financial
Secretary.</em> </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12920">CONSUMER COUNCIL</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2195">Leung, Antony Kam Chung</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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