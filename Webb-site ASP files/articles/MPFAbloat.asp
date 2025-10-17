
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

<script type="text/javascript">document.title="MPF Part 3: The Bloated Regulator";</script>

	<div class="summary">MPF's regulator, the MPFA, was grossly overcapitalised at inception and has been waiving the annual registration fee it should be charging to trustees, thereby subsidising the industry at almost HK$200m per year. This fee should be collected to cover its costs, and the MPFA should return $5,000m of surplus capital to the Government.</div>

<h2 class="center">MPF Part 3: The Bloated Regulator<br>
<span class="headlinedate">11 February 2007</span></h2>
	<p>Perhaps the most ridiculous thing about the 
	<a target="_blank" href="http://www.mpfahk.org">Mandatory Provident Fund 
	Schemes Authority</a> (<b>MPFA</b>) is 
	the endowment of HK$5bn (US$641m) it was given by Government when it was set up. This is just a 
	regulator, and yet it has more net assets than most listed companies. As shown in the
	<a target="_blank" href="http://www.mpfahk.org/english/quicklinks/quicklinks_pub/files/18Financial_05_06_e.pdf">
	MPFA financial statements</a>, in the year to Mar-06, it had operating 
	expenses of $203m, and net assets of $5,378m. Virtually all of those net 
	assets comprise investments and cash, with just $12m in fixed assets. Even 
	if the returns on that portfolio do no more than keep up with inflation, it 
	would still be enough to operate for the next 26 
	years without any fee income.</p>
<p>About a quarter of the 
	money is in listed equities. Managing the stash is a task in itself - 
	there is a non-executive Finance Committee which meets twice a year and 
	oversees an internal management team and three external fund managers. 
	Investment expenses alone were $15.2m last year, and that probably excludes 
	the internal asset management staff.</p>
	<p>Last year, the MPFA's fee income was just HK$8.9m, only 
	enough to cover 4% of its expenses. This means in effect that the Government, 
	through the MPFA, 
	is subsidising the MPF industry to the tune of $194m per year and rising.
	<a href="http://www.hklii.hk/eng/hk/legis/ord/485/s22B.html" target="_blank">Section 22B</a> of the MPF Ordinance actually requires trustees (there are 
	currently 19) to pay the MPFA an annual registration fee to cover its expenses, but the MPFA has 
	been 
	<a href="http://www.hklii.hk/eng/hk/legis/reg/485C/sch1.html" target="_blank">waiving</a> this fee 
	by setting it at zero ever since the MPFA was established. Enough is enough. 
	The annual registration fee should be charged as the law intended. At current levels, the fees 
	would be equivalent to about 0.1% of the $202bn funds under management. If 
	that sounds like a lot, then blame the inefficiencies of the MPF scheme. In 
	the MPFA accounts, there's no divisional breakdown of how they spend $203m, 
	but we would guess that a lot of it goes to the Enforcement Division in 
	handling complaints from employees about non-payment or non-enrolment in MPF 
	(10,285 complaints last year), investigating and prosecuting offenders. The MPFA also 
	had to handle 161,428 enquiries last year, 97% by phone.</p>
	<p>When the MPFA was founded in 1998, the funds in the schemes 
	were zero, and it may have been difficult to get the industry to pay for it. 
	The Government probably wanted to minimise the potential for the Legislative 
	Council to disrupt the MPFA's funding, so rather than grant an annual 
	subsidy, it <a target="_blank" href="http://www.legco.gov.hk/yr97-98/english/fc/fc/papers/fc030406.htm">granted</a> an up-front endowment. 
	That was a big mistake on two counts. First, $5bn was grossly excessive, 
	because the MPFA only needed enough money to survive its early years until 
	the industry was established enough to pay the annual registration fee. 
	Second, the money 
	should have been lent to the MPFA instead, so that the industry could pay it 
	back over time, following the principle of user-pays.</p>
	<p><b>If the Government chooses not to abolish the MPF, then 
	obviously we still need the MPFA to regulate it, but it should return $5bn of surplus 
	capital to the Government and stop waiving the annual fees which should 
	cover its costs. The remaining $378m would be more than enough 
	reserves to handle fluctuations in fee income.</b></p>
	<p>By comparison ,the Securities and Futures Commission, a much 
	larger regulator which had expenses in the year to Mar-06 of $497m, had
	<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/annual/rep05-06/sfc%20financial%20statements.pdf">reserves</a> 
	at 31-Mar-06 of $1.21bn, up from $0.86bn a year earlier, as a result of a huge 
	surplus from levies on the bull market. The Government has cut the SFC's levy rate by 
	20% this year. Still, the SFC's swollen balance sheet was only a quarter of 
	the size of the MPFA's.</p>
<h3>Compensation Fund</h3>
	<p>We should also mention that apart from the $5bn stuffed into 
	the MPFA at inception, another $600m of public money was put into a 
	compensation fund, in case any of the MPF providers defraud their customers, 
	and their insurers fail to cover the loss. Supplemented by a annual levy of 
	0.03% on the each fund in the MPF, amounting to $49m last year, this fund 
	has grown to $932m without a claim. As the compensation fund has 
	now exceeded its original target level of $900m, the levy for that can end, 
	unless they plan to use the surplus to repay the $600m to the Government.</p>
	
	<p>There's a case for scrapping 
	the compensation fund anyway, because like the HKMA's
	<a target="_blank" href="http://www.dps.org.hk">Deposit 
	Protection Scheme</a> or the SFC's
	<a target="_blank" href="http://www.hkicc.org.hk/">Investor Compensation Fund</a>, it creates a moral hazard - 
	consumers then care less, or are careless, about the honesty of their 
	financial intermediaries or the quality of the fidelity insurance. Through the 
	levies on their assets, those who do take care are subsidising those who don't. 
	Unfortunately, in the case of the MPF, this argument is undermined by the fact 
	that the trustees and fund providers are generally chosen by the employers, not 
	the employees to whom the assets belong. Until that changes, the compensation 
	fund will have to stay.</p>

<ul>
	<li><a href="MPFincrease.asp">Part 2: Stop the MPF Increase</a></li>
	<li><a href="MPFcosts.asp">Part 1: What the MPF Costs You</a></li>
</ul>

<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
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