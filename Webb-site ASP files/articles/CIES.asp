
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

<script type="text/javascript">document.title="Chinese Africans in HK";</script>

	<div class="summary">New data obtained by Webb-site show that Gambia and Guinea-Bissau, two small African countries, now account for 75% of the mainland Chinese who have obtained residency in HK under the Capital Entrant Investment Scheme. The requirement for mainlanders, who account for 84% of the CIES, to obtain permanent residency somewhere else is farcical and should be scrapped. It is part of HK's value proposition to be the Monaco of China, and we should welcome them.</div>

<h2 class="center">Chinese Africans in HK<br>
<span class="headlinedate">15 April 2012</span></h2>
<p>At the end of our article <a href="drsir.asp">You can call me Dr 
Sir</a> last month, we remarked that
<a href="http://en.wikipedia.org/wiki/Gambia" target="_blank">The Republic of 
the Gambia</a> has a special relationship with Hong Kong: although it has no 
consulate here, Gambia has been the largest single conduit for Chinese 
mainlanders seeking residency in HK via the
<a href="http://www.immd.gov.hk/ehtml/hkvisas_13.htm" target="_blank">Capital 
Investment Entrant Scheme</a> (<strong>CIES</strong>). In order to qualify for 
that, apart from making an investment of a certain size in certain assets, 
mainlanders must have permanent residence in a foreign country. This is so that 
we can all pretend that mainlanders moving to HK under the scheme are coming 
with their money from overseas and not bypassing mainland capital controls and 
treating HK as the Monaco of China that it is.</p>
<p>Those comments were based on figures from figures as of 31-Dec-2007, provided 
in an
<a href="http://www.info.gov.hk/gia/general/200804/16/P200804160211.htm" target="_blank">
answer to LegCo</a> on 16-Apr-2008. That was quite early in the scheme, when 
only 1,114 Chinese nationals had been formally approved under the CIES for 
residency in HK. So on 26-Mar-2012, <em>Webb-site </em>filed a request under the
<a href="http://www.immd.gov.hk/ehtml/access_code.htm" target="_blank">Code on 
Access to Information</a> for an update on these figures. 18 days later on 
Friday, we received the figures from the Immigration Department. As of 
29-Feb-2012, there were 11,585 mainlanders in the CIES, up more than 10-fold 
since 31-Dec-2007. Here is a breakdown by country of permanent residence:</p>
<img class="center" alt="" src="../images/CIES.gif">
<p>&nbsp;</p>
<p>As you can see, our relationship with Gambia has gone from strength to 
strength: the majority of mainlanders (57.3%) under the CIES now have 
permanent residency in Gambia, a small African country (population: 1.7m) which 
very few of them have ever visited. Like Hong Kong, it is a former British 
colony. Soaring up the ranks from 8th place in 2007 to 2nd place now is the 
former Portuguese colony of
<a href="http://en.wikipedia.org/wiki/Guinea-bissau" target="_blank">
Guinea-Bissau</a>, another small African country (population: 1.6m) currently 
enduring its
<a href="http://www.cnn.com/2012/04/14/world/africa/guinea-bissau-coup/" target="_blank">
latest military coup</a>. It does not have a consulate in HK. Between them, the 
two countries account for 75% of Chinese mainlanders under the CIES.</p>
<p>Searching the web for firms handling applications for CIES, we find several 
that openly advertise that they will obtain permanent residency in Gambia or 
Guinea-Bissau as part of the CIES service. Solicitors ONC Lawyers, for example,
<a href="../codocs/ONCgambia.pdf" target="_blank">offers assistance</a> with the 
Gambia, while Wingate Business Ltd
<a href="../codocs/WingateGambiaGB.pdf" target="_blank">claims</a> that it can 
obtain a Gambia or Guinea-Bissau identity within 15 days. Rowland Chow, Chan &amp; 
Co <a href="../codocs/RowlandChowChanGambia.pdf" target="_blank">can get you</a> 
Gambia permanent residency in 1 month.</p>
<p>According to the <a href="../codocs/CIESstats111231.pdf" target="_blank">
latest published</a> statistics on CIES, as of 31-Dec-2011 there were 13,111 
formal approvals, of which 11,022 or 84.1% were for Chinese nationals with 
permanent residence overseas. So 563 mainlanders gained formal approval in the 
first 2 months of this year, or an annualised rate of 3,378 per year. Taiwan and 
Macau accounted for another 4.7% of CIES members, leaving 11.3% from outside 
Greater China. The CIES then, is very much a vehicle for wealthy mainlanders to 
obtain residency in HK.</p>
<p>It is part of HK's value proposition to be a convenient offshore tax 
haven for wealthy mainlanders, just as Monaco is to Europe, and as Jersey, 
Guernsey and the Isle of Man are to the UK. If mainlanders establish HK 
residency, then after 7 years here they will qualify for permanent residency 
and, because they are Chinese nationals, they will then also qualify for an 
HKSAR Passport. If they are paid in HK, and do not spend more than 183 days in 
the mainland each year, then their employment remuneration will be exempt from 
Individual Income Tax in the mainland (see Inland Revenue
<a href="http://www.ird.gov.hk/eng/pdf/pam72e.pdf" target="_blank">pamphlet 
72(e)</a>). So they can base themselves here while supervising their mainland 
business interests.</p>
<p>More importantly in many cases, as HK residents, mainlanders under CIES 
will not pay taxes on investment income, capital gains and death. HK has a 
territorial-based system of taxation; it does not tax offshore income. HK taxes 
earnings (salaries and profits) but does not tax bank interest, dividends or 
capital gains - and if it ever tried to do so, then it would have to drop the 
territorial approach and tax residents on their worldwide income and gains, 
otherwise people would just invest their savings overseas. Indeed, onshore bank 
interest was once taxed, and a lot of money was kept in offshore branches and 
subsidiaries of HK banks until the tax was abolished. HK doesn't tax death 
either. The PRC proposed an inheritance tax in 1994 but has not yet legislated 
it.</p>
<p>The spending of mainlanders living in HK under the CIES will help support the 
economy, and the management of their savings will support the banking and asset 
management sectors. We should welcome their presence - but why do we make them 
jump through hoops by obtaining permanent residency in poverty-stricken African 
countries that they are unlikely ever to visit? The whole thing is farcical. The 
requirement for overseas permanent residency should be scrapped.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=35">Immigration</a></li>
				
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