
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

<script type="text/javascript">document.title="Cyber-Export";</script>

	<div class="summary">The HK government claims to be exporting its Cyberport "know how" to New Zealand. All citizens should know how interventionist this office, hotel, retail and cinema project was. It should now be sold off, perhaps as a REIT. Meanwhile, Government should rethink the Murray Building plan. Sell it to the highest bid, allow redevelopment, and don't restrict it to hotel use, which may be sub-optimal. Another Government-owned hotel would represent further intervention.</div>

<h2 class="center">Cyber-Export<br>
<span class="headlinedate">8 November 2009</span></h2>
<p>Browsing through the Government press releases last week, we came across one 
of the more<a target="_blank" href="http://www.info.gov.hk/gia/general/200911/05/P200911050175.htm"> 
entertaining pieces of propaganda</a> titled:</p>
<blockquote>&quot;Cyberport signs first deal to export know-how to help set up 
New Zealand's Digital Innovation Hub&quot;</blockquote>
<p>Apparently <a href="../dbpub/orgdata.asp?p=17936">Hong Kong Cyberport 
Management Co Ltd</a> (<strong>Cyberport</strong>), the Government-owned company 
which owns a
<a target="_blank" href="http://www.starwoodhotels.com/lemeridien/property/overview/index.html?propertyID=1826">
5-star hotel</a>, <a target="_blank" href="http://arcade.cyberport.hk/">shopping 
mall</a>, cinema and offices in Pokfulam, has signed a &quot;Knowledge Sharing and 
Transfer Agreement&quot; with the
<a target="_blank" href="http://www.wellington.govt.nz">Wellington City Council</a> 
and
<a target="_blank" href="http://www.growwellington.co.nz/page/business-story.aspx?case=43">
New Zealand Institute of Screen Innovation Ltd</a>. The city is building a 
NZ$20m (US$14.4m) &quot;Digital Innovation Hub&quot; which appears to be mainly a
<a target="_blank" href="http://www.stuff.co.nz/technology/digital-living/3036699/20m-for-NZSOs-digital-home">
recording studio</a> at which the NZ Symphony Orchestra will be based and which 
others may use.</p>
<p>Nicholas Yang, Cyberport's CEO, said in the statement:</p>
<blockquote>&quot;this is the first formal agreement Cyberport has signed to 
export its intellectual property and expertise to another country. This 
agreement is not only a big step forward for Cyberport towards our closer 
collaboration with international counterparts, but also confirms the 
international recognition and acceptance of Cyberport's business model&quot;</blockquote>
<h3>What know-how?</h3>
<p>The announcement conspicuously omits to say what this &quot;intellectual property&quot; 
we are exporting is worth, in the form of a price to be paid for it. If it isn't 
zero, they're not saying. Hong Kong taxpayers must be intrigued to know what 26 
hectares of prime sea-front land has bought them, apart from a collection of 
retail, hotel and office properties and a share of profits from the luxury residential 
project.</p>
<p>For sure, the Cyberport has a 
<a target="_blank" href="http://dmc.cyberport.hk">Digital Media 
Centre</a>, but this, together with the
<a target="_blank" href="http://www.iresource.hk">iResource Centre</a>, 
generated revenues of just HK$5.5m (US$703k) in the year to 31-Mar-08, far less 
even than the depreciation on its assets. New Zealand should not be looking to 
us for inspiration in this area. Their project is nothing like the Cyberport and 
only a small fraction of its size. Incidentally, the full accounts of the 
Cyberport <a href="cybersecrets.asp">remain an official secret</a>. We are just quoting from extracts contained 
in the latest
<a target="_blank" href="http://www.legco.gov.hk/yr08-09/english/panels/itb/papers/itb0309cb1-955-3-e.pdf">
briefing paper</a> to LegCo on 9-Mar-09.</p>
<p>As regards know-how, what New Zealanders need to know is how Hong Kong's 
Government intervened in the commercial, retail and residential property markets 
by creating this project, <a href="cybervillas.asp">awarded without 
tender</a> to the son of Hong Kong's richest person. Apart from low rents, the 
resulting property offers nothing which is not available in the private sector, 
but claims to be a &quot;unique Creative Digital Community&quot; (with capital letters).</p>
<h3>A low-rent neighbourhood</h3>
<p>According to a
<a target="_blank" href="http://www.legco.gov.hk/yr08-09/english/panels/itb/papers/itb0309cb1-2564-1-e.pdf">
government response</a> to Legco, Cyberport office rents as of January 2009 
averaged HK$12.77 per sq ft per month. Round at the &quot;Swireberport&quot; in Quarry 
Bay, you would be paying around $20-30 psf for similar &quot;grade A&quot; offices. No 
surprise then that Microsoft
<a target="_blank" href="http://www.microsoft.com/hk/mscorp/backgrounder.mspx">
relocated</a> its entire HK operation from Quarry Bay to the Cyberport where it 
occupies &quot;almost 80,000&quot; sq ft, or that Federal Express
<a target="_blank" href="http://www.cbre.com.sg/hongkong/eng/document/MarketReports/hongkong2q06ofc.pdf">
left</a> Two Pacific Place. Just how much of this space do you think is used for 
high-tech software development work, not done in the overseas headquarters of 
these firms, and how much is for sales, marketing and services? Other tenants 
include advertising firms <a target="_blank" href="http://www.ddb.com/">DDB</a> 
and <a target="_blank" href="http://www.phdnetwork.hk">PHD</a> (both owned by
<a target="_blank" href="http://www.omnicomgroup.com">Omnicom Group</a>), 
magazine publisher <a href="../dbpub/orgdata.asp?p=53793">Hachette Filipacchi 
Hong Kong Ltd</a>, patent attorney/law firm
<a target="_blank" href="http://www.marks-clerk.asia/hk/solicitors/home/">Marks 
&amp; Clerk/Anthony Evans &amp; Co</a> and fund manager
<a href="../dbpub/orgdata.asp?p=53790">Excelsior Capital Asia (HK) Ltd</a>. Even 
the long-awaited <a href="../dbpub/orgdata.asp?p=49645">Hong Kong Mercantile 
Exchange Ltd</a> can be found there.</p>
<p>To reduce its interventionist footprint and realise value for the public 
purse, the Government should exit this project by selling off the property, 
perhaps as a Real Estate Investment Trust. According to the Government paper, at 
31-Mar-08 Cyberport had an independent valuation of HK$5.98bn. Under 
private-sector ownership, the Cyber-REIT would raise office rents to commercial 
levels and remove the subsidy that tenants in the free market do not enjoy. With 
about 1.02m sq ft of offices, a 170-room 5-star hotel and a 290,000 sq ft 
shopping mall, it would probably fetch a lot more than the valuation the 
Government quotes.</p>
<h3>Murray mint</h3>
<p>Incidentally, while we are on the subject of Government-owned hotels, last 
month's <a target="_blank" href="http://www.policyaddress.gov.hk/">Policy 
Address</a> (or more aptly, the Property Address, featuring Boy Scout Donald 
Tsang),
<a target="_blank" href="http://www.policyaddress.gov.hk/09-10/eng/p55b.html">
announced</a> that tenders would be invited to convert the 1969-vintage Murray 
Building which stands between Garden Road and Cotton Tree Drive
<a target="_blank" href="http://www.devb.gov.hk/en/secretary/heritage/project7.htm">
into a hotel</a>. Currently it is Government offices which will be vacated when 
they move to the water-front Tamar Palace. </p>
<p>Apparently the Government has decided that a hotel will be the optimal use 
for the site. Surely they should let the market decide that, whether it is as a 
hotel, offices or maybe even residential. Put it up for auction on those broad 
terms and we will find out and gain maximum value for the people of HK. It is 
stretching credulity to say that this building has heritage status - it is an 
ugly white block with sides like a waffle, and if the land is worth more without 
it then let it go. Physically it has already lasted longer than the Furama and 
Hilton Hotels did and twice as long as the Ritz Carlton did. An imaginative 
developer could probably give us something much nicer to look at.</p>
<p>The Government has been silent on whether it intends to retain ownership of 
the property after conversion - but why should it? This would just represent 
Government intervention in the hotel sector.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=53795">Anthony Evans & Co.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=53790">EXCELSIOR CAPITAL ASIA (HK) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=53793">Hearst Magazines Hong Kong Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17936">HONG KONG CYBERPORT MANAGEMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49645">Hong Kong Mercantile Exchange Limited</a></li>
				
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