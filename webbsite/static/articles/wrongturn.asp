
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

<script type="text/javascript">document.title="Wrong turn for REITs";</script>

	<div class="summary">Webb-site urges the SFC not to pollute the Real Estate Investment Trust market by allowing them to speculate in securities with unitholders' money. Surplus cash should be paid out to investors so that they can invest it themselves. That's what investors do.</div>

<h2 class="center">Wrong turn for REITs<br>
<span class="headlinedate">2 April 2014</span></h2>
<p>On 27-Jan-2014, the SFC 
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=14PR12" target="_blank">
announced</a> a
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=14CP2" target="_blank">
consultation paper</a> on proposed amendments to the 
<a href="http://en-rules.sfc.hk/en/display/display.html?rbid=3527&amp;element_id=1235" target="_blank">Code on Real Estate Investment Trusts</a> (the <strong>REIT Code</strong>). 
The consultation only lasted 30 days (including the Chinese New Year holidays) 
so we are a bit late, but hopefully not too late to stop bad things prevailing.</p>
<p>For 
readers who haven't heard, a REIT is a unit trust which (until now) only invests in 
property and is required under the REIT Code to distribute 90% of its net 
income. REITs are &quot;closed-end&quot;, meaning that there are normally no opportunities 
for subscription or redemption of units, so they are traded on an exchange. The 
neatest thing about them is that they are required to distribute 90% of their 
earnings, which stops them hoarding cash the way some controlled companies do.</p>
<p>REITs were introduced in HK in 2005 in a state of Government-induced panic 
because Singapore had begun listing them. <a href="../dbpub/orgdata.asp?p=57508">Fortune REIT</a> (SGX:F25U,HK:0778), owner 
of malls in HK and ultimately controlled by Li Ka Shing, was listed in Singapore 
on 12-Aug-2003. So on 25-Nov-2005, after a certain amount of legal challenges, 
the HK Government's Housing Authority listed
<a href="../dbpub/orgdata.asp?p=24834">The Link REIT</a> (0823), which owns the 
shopping centres under public housing estates.</p>
<p>Over 8 years later, there are still only
<a href="../dbpub/listed.asp?exch=REIT&amp;d=3/4/2014&amp;sort1=dateup" target="_blank">
11 REITs</a> listed in HK, 3 of which (Fortune REIT,
<a href="../dbpub/orgdata.asp?p=31057">Prosperity REIT</a> (0808) and
<a href="../dbpub/orgdata.asp?p=65446">Hui Xian REIT</a> (87001)) are related to 
Mr Li's Cheung Kong group. Of the remaining 7,
<a href="../dbpub/orgdata.asp?p=34302">Champion REIT</a> (2778) is a spin off 
from the Lo family's <a href="../dbpub/orgdata.asp?p=502">Great Eagle Holdings 
Ltd</a> (0041), currently run by <a href="../dbpub/positions.asp?p=692">Lo Ka 
Shui</a>, and another, <a href="../dbpub/orgdata.asp?p=38715">Regal REIT</a>, is 
a spin off from <a href="../dbpub/orgdata.asp?p=2384">Regal Hotels International 
Holdings Ltd</a> (0078), part of a separate group of 3 listed companies run by 
his brother <a href="../dbpub/positions.asp?p=2385">Lo Yuk Sui</a>. Another 
tycoon spin-off is <a href="../dbpub/orgdata.asp?p=37260">Sunlight REIT</a> 
(0435), from <a href="../dbpub/positions.asp?p=135">Lee Shau Kee</a>'s Henderson 
Land group.</p>
<p>Now, the SFC proposes to allow REITs to do two things:</p>
<ol>
	<li>invest in properties under development or engage in property development 
	activities; and</li>
	<li>invest in financial instruments, including listed securities, unlisted 
	debt securities, government and other public securities, and local or 
	overseas property funds.</li>
</ol>
<p>We can understand the logic of the first point. REITs, after all, invest in 
properties, and even if they don't buy development sites, sooner or later, the 
properties they own will need extensive renovation or redevelopment, taking them 
out of the rental market for a period of time. It wouldn't make much sense to 
force the REIT to sell a clapped out property just because it needed 
redevelopment, so this should be permitted, and therefore we might as well let 
them buy land and properties for development or redevelopment, as long as it 
doesn't deviate too much from the purpose of generating a stable rental income 
stream. The SFC proposes a limit of 10% of gross asset value, and <em>Webb-site</em> 
considers that this is reasonable.</p>
<p>But on the second proposal: No. Absolutely not. REITs are not general-purpose 
punting funds, and there are enough problems already with listed companies 
squatting on cash and then diverting it into equities, &quot;entrusted loans&quot;, 
&quot;structured products&quot;, money-lending subsidiaries and the sort of junk you 
wouldn't let your mother-in-law buy. Most of all, we suspect that the 
tycoon-controlled REITs are asking for this because they want to use the cash to 
buy shares of their other listed companies.</p>
<p>REITs have to pay out 90% of their accounted earnings anyway. If the 
difference, plus depreciation, allows a pile of cash to grow, then they can pay 
out more. The consultation paper lapses into the passive voice:</p>
<blockquote>&quot;Via recent discourse with the industry...it was pointed 
out [by whom?] that it could be difficult to identify suitable property 
acquisition opportunities&quot;</blockquote>
<p>No problem. Just return the cash to investors, and let them invest it 
themselves. That's what investors do. Institutional investors in particular 
don't want listed companies to invest their money for them, other than in the 
core business, because that takes away the stock-picking discretion of 
investors. The SFC continues:</p>
<blockquote>&quot;given the benefits to investors by making available a 
broader range of investment options to REITs...&quot;.</blockquote>
<p>But who says it is beneficial? It isn't. Listed vehicles punting with 
shareholders' money outside of their core business is usually negative to 
shareholder value. And there is nothing in the proposal which would stop REITs 
buying shares in their tycoon's other companies either. The SFC does propose a 
limit of 5% of gross assets in any single group of companies, and up to 25% in 
total, including development properties, but this would be very difficult to 
enforce afterwards, because of subsequent movements in share prices. Should a 
REIT have to sell stocks in a group if they subsequently amount to more than 5% 
of gross assets? The SFC doesn't say.</p>
<p>The SFC also proposes monthly disclosure of the investment portfolio, within 
5 business days of month-end. That is something that they should be requiring 
listed companies to do as well, to deter this kind of behaviour, but they should 
not be polluting the REIT market with such behaviour. So, yes to a small amount of 
property development, and no to allowing REITs to play 
the securities markets. After reading the SFC's paper we are left with the 
nagging feeling that somebody has put them up to this.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=178">Real Estate Investment Trusts</a></li>
				
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