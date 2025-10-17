
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

<script type="text/javascript">document.title="The Enigma Network: 50 stocks not to own";</script>

	<div class="summary">Sometimes, all you need to tell a story is a picture.</div>

<h2 class="center">The Enigma Network: 50 stocks not to own<br>
<span class="headlinedate">15 May 2017</span></h2>

<p>Sometimes, a picture is really all you need to know why you should not invest 
in a company, or in this case, 50 
HK-listed companies in what we will call the "Enigma Network". In the diagram below (click 
or zoom your browser to get the fully 
glory), some of them are known bubbles, on which the SFC has issued 
concentration warnings. It is remarkable that despite those warnings, the listed 
companies which own those shares continue to hold them. They will probably do so 
until the bubble bursts, because the gains on such stocks are not actually 
intended to benefit their shareholders. The people who engineer such bubbles 
have other plans.</p>
<p>In other cases of non-bubbles, there are multiple holdings below the normal 
5% disclosure threshold which when aggregated, provide significant voting power 
when the companies seek approval from "independent" shareholders to do something 
that might not make sense to others.</p>
<p>This network has come into view only because, about a year ago, in 
frustration with the opacity of many balance sheets, Webb-site began filing 
complaints with the Stock Exchange that the for-profit regulator had failed to enforce a 
Listing Rule which requires annual and interim reports to disclose "significant 
investments held, their performance during the financial year, and their future 
prospects". On the Main Board, that is
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=3830" target="_blank">
Appendix 16</a>, paragraph 32(4) for annual reports and paragraph 40(2) for 
interim reports. On the GEM, that is
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=984" target="_blank">
Listing Rule 18.41(4)</a> for annual reports and
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=1013" target="_blank">
Listing Rule 18.59</a> for half-year reports. There is no definition of 
"significant" in those rules, but some inspiration can be drawn from paragraph 
23 of Appendix 16, which requires details of properties held for development or 
investment where the property exceeds 5% of total assets. In the case of stock 
investments, one might also have regard to an investment gain or loss on a stock 
exceeding 5% of the profit or loss for the year as being "significant" and 
therefore requiring disclosure of that stock.</p>
<p>As a result, more disclosures have been made in the recent interim and annual 
reports of these companies, although some of them are now taking steps to 
obfuscate that by stuffing the investments into discretionary-managed 
"segregated portfolio" companies (SPCs) so that in future, they might only 
disclose holdings in the SPC, unless the regulator pays close attention and 
requires underlying investments to be disclosed.</p>
<p>Spot the concert parties: under the SFC's Takeovers Code, where a group of 
shareholders acting in concert acquires more than 30% of the voting rights in a 
company, a general offer to buy all the other shares is normally required. There are several companies in 
this diagram where this might have occurred, if one regards the shareholders as 
acting in concert - and we have not included any of the human shareholders who 
might also be counted towards the totals. If the corporate shareholders are not 
acting in concert then it is an extraordinary coincidence that they have picked 
many of the same stocks in which to invest. The SFC should be taking a close 
look at this network.</p>
<p>The bottom line, for serious or professional investors, is that they regard 
any stock market investment by listed companies as highly inappropriate, unless 
of course the company is established as an investment company. It takes the 
company beyond its area of management expertise. Investors expect listed 
companies to focus on their core competencies, and return surplus capital to 
investors, so that <em>they </em>can invest it.</p>
<a href="../images/enigma.png"><img alt="Enigma Netowrk" class="center" src="../images/enigma.png"></a>
<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15445">Almana Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4877">AMCO United Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=66066">Asia-Pac Financial Investment Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=66822">Bradaverse Education (Int'l) Investments Group Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18187">Capital VC Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21238">China Biotech Services Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13526">China Demeter Financial Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=46355">China e-Wallet Payment Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18270">China Green (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16610">China Investment and Finance Group Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2350356">China Jicheng Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23261">China National Culture Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63313">China New Economy Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2387837">China Parenting Network Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4776">China Properties Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58895">Convoy Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4923">Dufu Liquor Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2479430">EC Healthcare</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2020299">EJE (Hong Kong) Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14791">Famous Tech International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2019649">Finsoft Financial Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=134244">First Credit Finance Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12131">Hang Tai Yue Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14086">Hao Wen Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9176">Harbour Digital Asset Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21651">Jiu Rong Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2503430">Ju Fu Tang Biology Holdings Co., Ltd</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2538775">K W Nelson Interior Design and Contracting Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2550678">Kingland Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16831">KOALA Financial Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2399744">KPM Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7889">Lerado Financial Group Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2082584">Luxxu Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2068787">Major Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=65823">MILAN STATION HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4951">Minerva Group Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1958748">New Ray Medicine International Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2455294">OKG Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3265">QPL INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18159">SAU SAN TONG HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4971">SEEC MEDIA GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11205">Sino Vision Worldwide Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4789">SoftMedx Healthcare Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4858">SUNCORP TECHNOLOGIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2581972">Tai Kam Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2313244">TARGET INSURANCE (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11691">Town Health International Medical Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9479">Universe Entertainment and Culture Group Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=61151">Wealth Glory Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14951">WLS HOLDINGS LIMITED (BM)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=136">Enigma Network</a></li>
				
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