
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

<script type="text/javascript">document.title="Submission to Bills Committee of Legislative Council on Motor Vehicles (First Registration Tax) (Amendment) Bill 2011";</script>

	<div class="summary">Webb-site editor David Webb will attend the Bills Committee meeting at 2.30pm on 12-May-2011. This is our submission.</div>

<h2 class="center">Submission to Bills Committee of Legislative Council on Motor Vehicles (First Registration Tax) (Amendment) Bill 2011<br>
<span class="headlinedate">6 May 2011</span></h2>
<p>Dear Members,</p>
<p>Thank you for your invitation to attend the 
<a href="http://www.legco.gov.hk/yr10-11/english/bc/bc06/general/bc06.htm" target="_blank">Bills Committee</a> on 12-May-2011, 
which I accept. This paper, including the attached article &quot;<a href="traffic1.asp">Traffic 
Truths</a>&quot; (13-Apr-2011), forms our submission. In addition to the points made 
in the Article, we wish to make the following observations on subsequent 
documents submitted to you by the Administration:</p>
<ol>
	<li>In the
	<a href="http://www.legco.gov.hk/yr10-11/english/bills/brief/b26_brf.pdf" target="_blank">
	LegCo Brief</a>, the Administration noted that in 2010, a total of 41,240 
	private cars were newly registered, an increase of 45% over 2009 and 20% 
	over 2008 &quot;before the financial tsunami&quot;. This is alarmist, false and 
	misleading. False, because 2008 was not before the financial tsunami. Bear 
	Stearns almost collapsed and was taken over by JP Morgan in March 2008. 
	Lehman Brothers filed for bankruptcy on 15-Sep-2008. The Hang Seng Index 
	dropped 48% in 2008.</li>
	<li>A fairer comparison would be to look at new car registrations in 
	2-year periods, 2009-2010 compared with 2007-2008. The worst of the 
	financial crisis was from Sep-2008 to Mar-2009, so each of these 2-year 
	periods includes 3 months of the peak crisis. Then you will see that new 
	registrations in 2007-2008 were 67,738 and in 2009-2010 they were 69,672, an 
	increase of only 2.9%. The surge in 2010 was largely a catch-up effect due 
	to people who delayed purchases from 2009.</li>
	<li>Similarly, due to deregistrations, the net increase in registered 
	private cars was 27,306 in 2007-08 and 28,338 in 2009-2010, an increase of 
	only 3.8%.</li>
	<li>We note from Annex VI of paper
	<a href="http://www.legco.gov.hk/yr10-11/english/hc/sub_leg/sc11/papers/sc110404cb1-1780-1-e.pdf" target="_blank">
	CB(1)1780/10-11(01)</a> that the Government's fleet of cars, which are not 
	included in the statistics, increased by <strong>14.7%</strong> from 1,151 
	in 2008 to 1,320 in 2010, while the private car registered fleet grew
	<strong>6.7%</strong> in the same period. Middle-ranking officials swanning 
	around town in chauffeur-driven cars are hardly setting a good example 
	towards reducing congestion. The Government is of course exempt from FRT, 
	license fees and fuel taxes, because any tax is just a payment to itself.</li>
	<li>In the same paper at paragraph 10 on page 4, the Administration 
	dismisses the case for congestion pricing (or to use their loaded term, 
	&quot;congestion tax&quot;) as &quot;weak&quot;, without substantiating that view. It claims 
	that &quot;[a] road pricing scheme that aims to relieve traffic congestion can 
	only be implemented equitably and effectively with the availability of 
	alternative routes that have adequate capacity for motorists to bypass the 
	charging zone.&quot; We disagree. An alternative route is not necessary if the 
	object is to encourage people to enter the zone on mass transport (rail or 
	bus) or to enter it at different times of day (for example, deliveries to 
	shops and supermarkets can be made outside busy hours). The Government says 
	we have to wait for the Central-Wanchai Bypass (<strong>CWB</strong>) before 
	introducing a congestion zone - but clearly the CWB is not going to affect 
	congestion in the Kowloon Peninsula. Congestion pricing is the key to 
	limiting congestion and numerous &quot;World Cities&quot; have implemented it, but 
	&quot;Asia's World City&quot; has not.</li>
	<li>Far from being weak, congestion pricing is the most sensible thing HK 
	could do to reduce congestion. The Government's approach of increasing FRT 
	to tackle congestion is incredibly weak and indirect, because it fails to 
	tackle the core issue. It doesn't matter how many cars are registered, what 
	matters is when and where people drive them. Once a person has bought a car, 
	the decision on whether, when and where to use it is not affected by how 
	much they paid for it, but on the costs of using it.</li>
	<li>In the same paper at paragraph 19 on page 6, the Administration notes 
	that commercial vehicles (presumably including buses) are the major source 
	of roadside air pollution in HK, accounting for about 95% and 88% of total 
	vehicular emission of respirable suspended particulates and nitrogen oxides 
	respectively, and that private cars only contribute 1% and 5% respectively 
	(although they account for some 39% of vehicle km). Why, then, does the 
	Government set
	<a href="http://www.customs.gov.hk/en/trade_facilitation/dutiable/types/index.html#hydrocarbon_oil" target="_blank">
	fuel duty</a> at zero on Euro V Diesel, which almost all of these commercial 
	vehicles use? A substantive tax would incentivise more efficient use of the 
	diesel-powered fleet. If the Government wishes to incentivise &quot;railway as 
	the backbone&quot; for public transport, then the cost of bus journeys must be 
	raised, by taxing diesel at no less than the rate of tax on petrol ($6.06 
	per litre) if not more.</li>
	<li>In the paper
	<a href="http://www.legco.gov.hk/yr10-11/english/hc/sub_leg/sc11/papers/sc110411cb1-1827-1-e.pdf" target="_blank">
	CB(1)1827/10-11(01)</a>, the Government states without elaboration or 
	evidence that &quot;traffic congestion in Hong Kong is closely related to the 
	number of private cars&quot;. As our research in the attached article shows, 
	there is only a distant connection between the two. From 2000 to 2009 (the 
	latest available data), despite a 17.7% increase in the licensed fleet of 
	private cars, the total kilometres they covered increased by only 1.1%, 
	while the length of public roads increased by 7.7%. So each km of road had 
	5.8% fewer private cars passing over it on an average day in 2009 than it 
	did 9 years earlier.</li>
</ol>
<p>We remind you that the above points are supplemental to our main article 
attached.</p>
<p>Sincerely,</p>
<p>David Webb<br>Editor, Webb-site.com</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=96">Air pollution</a></li>
				
				<li><a href="/dbpub/subject.asp?c=180">Road transport</a></li>
				
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