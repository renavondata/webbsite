
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

<script type="text/javascript">document.title="HK's hotel subsidy in SimCity";</script>

	<div class="summary">Since 2008, HK has been underpricing land for hotels by selling "hotels only" land leases, failing to optimise development value and incentivising mass-market budget tourism. We urge the Financial Secretary to let the market optimise land use with unrestricted leases, and to reform the land lease system with higher ground rents and lower premiums.</div>

<h2 class="center">HK's hotel subsidy in SimCity<br>
<span class="headlinedate">23 January 2014</span></h2>
<p>Looking at the caption, you might wonder, &quot;what subsidy&quot;? Surely there isn't 
any in the
<a href="http://www.info.gov.hk/gia/general/201401/14/P201401140374.htm" target="_blank">
Freest Economy in the Known Universe</a>? Well, there is a huge, multi-billion 
dollar subsidy to the hotel sector, and it comes through the land system.</p>
<p>The HK Government plays
<a href="http://en.wikipedia.org/wiki/Sim_city" target="_blank">SimCity</a> with 
HK's land system. It decides what purpose particular bits of land should be used 
for, and therefor how much land should be allocated for each purpose, and then 
it leases them out (<a href="leases2.asp">currently</a> for 50 years) with leases restricted to that 
purpose. The narrower the purpose, the more interventionist this 
central-planning approach is.</p>
<p>Having set aside land for public-sector infrastructure such as schools, 
hospitals, prisons and sewage plants, the Government should, for all 
private-sector purposes, let the market decide what it needs, by auctioning the 
land supply without restrictions (other than plot ratio) and allowing the winner 
of each plot to build what she wants. Housing, offices, shops, hotels, or 
anything that doesn't involve emissions of noxious substances or excessive 
amounts of noise ought to be fair game. That would also allow the redevelopment 
of sites when an alternative use becomes more valuable, without having to 
negotiate with the Government to amend the lease by paying a premium.</p>
<p>But the Government decides and the market doesn't, and as a result, we have 
inefficient allocation of this scarce resource. The Government decides the 
purpose of land, and the market just bids for that purpose. Sometimes the 
Government chooses what the market would have chosen, to allow an office here or 
a residential project there, but other times, it doesn't.</p>
<p>Sometimes the failure of Government to choose the optimal use of land is just 
misjudgment, but other times, it is deliberate interference, when the Government 
knows that the land will fetch a lower price for its chosen purpose than if the 
market is allowed to choose. This is what Financial Secretary John Tsang Chun 
Wah did when he launched
<a href="http://www.budget.gov.hk/2008/eng/budget31.html" target="_blank">&quot;hotel 
only&quot; sites in the 2008-9 budget speech</a>, a policy which persists to this 
day. In a
<a href="http://www.info.gov.hk/gia/general/200802/29/P200802290289.htm" target="_blank">
press conference</a> 2 days later, then Secretary for Development (now Chief 
Secretary) Carrie Lam explained:</p>
<blockquote>
	&quot;we have gauged the need for land supply for hotel 
	development. We have received clear feedback that the current system of selling 
	land for commercial use including office, retail and hotel could be a 
	disincentive to hotel development. This is because under our established land 
	valuation system, the land value is assessed on the basis of the maximum 
	development potential of the site. This means that in locations where office use 
	would attract a higher value than hotel use, the commercial site would be valued 
	on the basis of office. Under such circumstances, it would be commercially 
	unattractive for developers to buy a commercial site but develop it into hotel.&quot;
</blockquote>
<p>So they intervened, and allocated 10 sites for &quot;hotel only&quot; use, enough to 
produce another 9,000 to 11,000 hotel rooms. This pilot scheme was confirmed in 
2011, when
<a href="http://www.info.gov.hk/gia/general/201102/24/P201102240182.htm" target="_blank">
Mrs Lam said</a>:</p>
<blockquote>
	<p>&quot;The Government has also decided to turn the &quot;hotel only&quot; 
	pilot scheme that was launched back in 2008-09 into a permanent arrangement. 
	Under it, the reserve price for hotel sites on the [Application List] and the 
	premium for lease modification/land exchange cases opting for &quot;hotel only&quot; 
	development will be assessed and charged on a &quot;hotel only&quot; basis <strong>instead 
	of their maximum permissible development potential irrespective of whether hotel 
	use represents the optimal development.</strong></p>
	<p>&quot;The decision is to continue to promote the development 
	of hotels in Hong Kong in support of the tourism industry. The initiative to 
	convert Murray Building into hotel use and to initiate the sale of two hotel 
	sites at Sai Kung and Wan Chai will also be conducive to the development of 
	tourism in Hong Kong&quot;.</p>
</blockquote>
<p>If you subsidise something, then it becomes cheaper, and if you make 
something cheaper, then you get more demand - more visitors clogging up our 
streets and staying in hotels at lower cost. If the Government were to let the 
market function with unrestricted land leases, then less land would go to hotels 
and hotel room rates would rise until hotel developers could afford to win land 
auctions again in suitable locations. HK would develop as a premium tourism 
destination, with fewer but higher-spending tourists. HK should be a quality not 
quantity tourism destination.</p>
<p>As of 30-Jun-2013, the Buildings Authority has approved 99 hotel projects 
involving around 16,000 rooms to be completed by 2017, increasing the stock to 
about 84,000 rooms. Despite this, the Economic Development Commission is pushing 
for more. In a
<a href="http://www.tourism.gov.hk/resources/english/paperreport_doc/misc/2014-01-17/Assessment_Report_eng.pdf" target="_blank">
report</a> dated December but
<a href="http://www.info.gov.hk/gia/general/201401/17/P201401170694.htm" target="_blank">
published</a> last week it said:</p>
<blockquote>
	&quot;The continuous tight supply of hotel rooms inevitably 
	brings pressure on the upward adjustment of hotel room rates. It will not only 
	reduce the desire of our visitors, including business and MICE (Meetings, 
	Incentive Travels, Conventions and Exhibitions) visitors, for travelling to Hong 
	Kong or they may shorten their duration of stay in Hong Kong, but will also 
	weaken the overall competitiveness and appeal of Hong Kong as an international 
	tourist destination. The long-term healthy development of the tourism industry 
	of Hong Kong will be hampered.&quot;
</blockquote>
<p>Former Canadian and Secretary for Commerce and Economic Development Gregory 
So Kam Leung projected that visitor arrivals would increase from 48.6m in 2012 
(of which 23.8m stayed overnight) to over 70 million in 2017, or about 10 times 
the population of HK. Imagine that in China - to match it they would need about 
13.5 billion visits, so the 5.7 billion people who don't live in China would 
have to visit more than twice a year to match that, or about 100 times the 2011 
figure. And still Mr So thinks that HK's tourism industry will be hampered 
without dishing out more land specifically for hotels (Singapore managed a
<a href="https://app.stb.gov.sg/Data/tou/typea/type1/2012/16/IVAstat_Dec2013.pdf" target="_blank">
measly 14.5 million</a> visitors to Pleasantville in 2012).</p>
<p>Financial Secretary, Let the market function. Stop the &quot;hotels only&quot; land sales, and stop playing 
SimCity with the land supply. Sell unrestricted leases and let the market 
determine the best use of the land. And while you are at it, reform the land 
lease structure to higher ground rents and lower premiums, so that you can share 
in the future optimal usage of that land, as we <a href="leases2.asp">
recommended</a> in 2010.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=159">Land leases</a></li>
				
				<li><a href="/dbpub/subject.asp?c=67">Tourism</a></li>
				
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