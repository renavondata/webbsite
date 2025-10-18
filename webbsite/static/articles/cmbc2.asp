
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

<script type="text/javascript">document.title="HKMA, SFC announce "serious concerns" about transactions by mainland bank, HK subsidiary";</script>

	<div class="summary">And we think we know who they mean. The facts all point to entities featured in our network diagram last October.</div>

<h2 class="center">HKMA, SFC announce "serious concerns" about transactions by mainland bank, HK subsidiary<br>
<span class="headlinedate">24 April 2019</span></h2>
<p>A joint <a href="../codocs/SFC190424.pdf" target="_blank">announcement and 
circular</a> issued today (24-Apr-2019) by the Securities and Futures Commission 
(<strong>SFC</strong>) and Hong Kong Monetary Authority (<strong>HKMA</strong>) 
warns of "serious concerns" regarding "a series of complex transactions" by a 
"bank within a Mainland-based banking group" and a licensed corporation owned by 
a subsidiary of that group. Webb-site's previous analysis allows us to pinpoint 
the transaction, or one which is entirely consistent with the stated facts.</p>
<p>The regulators found that:</p>
<blockquote>"The subsidiary... obtained a credit facility from the bank... 
The subsidiary then made a large investment in a private fund set up by a 
licensed asset manager. The sole purpose of the fund was to provide a loan (<strong>Loan 
A</strong>) to a special purpose vehicle (<strong>SPV</strong>) owned by a 
substantial shareholder of a listed company against a pool of collateral which 
was mainly composed of the listed company's shares.</blockquote>
<blockquote>Loan A was used to repay part of a loan of another SPV owned by the 
substantial shareholder which had financed projects in an emerging market. It 
was subject to a margin call arrangement whereby additional cash or securities 
collateral would be required when the loan-to-collateral ratio exceeded an 
agreed level."</blockquote>
<blockquote>In a 
	<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/circular/doc?refNo=18EC58" target="_blank">circular</a> dated 3 August 2018, the SFC expressed concerns about 
arrangements which effectively provide margin financing in the guise of 
investments; it is of the view that the arrangement put in place by the Group, 
which was accounted for as an investment in a private fund by its subsidiary, 
was in substance a margin loan leveraging on the funding support from the bank.</blockquote>
<blockquote>The HKMA’s inspection identified deficiencies in the bank’s lending 
practices...</blockquote>
<blockquote>The SFC also found that the Group’s subsidiary, via a separate 
subsidiary holding a money lender licence, also had provided lending to other 
listed companies secured by collateral provided by major shareholders. Some 
borrowers had pledged a significant proportion of the listed companies’ total 
issued shares (up to 70%). These were illiquid stocks of doubtful quality."</blockquote>
<p>OK, so now for the big reveal. Remember our article,
<a href="huarongcmb.asp">The Huarong-CMB network, 26 stock not to 
own</a> (19-Oct-2018)? Well that was partly about 
<a href="../dbpub/articles.asp?p=9318">China Minsheng Banking Corp 
Ltd</a> (<strong>CMB</strong>, 1988.HK, 600016.SH) and its HK-listed subsidiary 
<a href="../dbpub/articles.asp?p=5047">CMBC 
Capital Holdings Limited</a> (<strong>CMBC</strong>, 1141). Earlier,
<a href="../dbpub/artlinks.asp?s=13192">we posted</a> an announcement dated 
15-Mar-2018, that CMBC had subscribed HK$300m into a "segregated portfolio 
company" known as "New China OTC Fund 2" (<strong>NCOTCF2</strong>), managed by
<a href="../dbpub/orgdata.asp?p=22250525&amp;s1=stakdn&amp;s2=&amp;x=y">China 
Urbanization Capital Limited</a>. These are very likely the bank, the 
subsidiary, the fund and the asset manager respectively referred to in today's 
SFC-HKMA announcement. </p>
<p>NCOTCF2 then made a loan of HK$400m to Delta Link Holdings Limited (<strong>Borrower</strong>), 
which is very likely the SPV. CMBC's announcement didn't identify the sole 
shareholder of the Borrower, who was the <strong>Guarantor</strong> of the loan. 
The loan was said to be secured on shares of an unnamed <strong>HK Listco</strong>, 
incorporated in the Cayman Islands and listed in HK and "principally engaged in 
the real estate business in the PRC."</p>
<p>At the time, Webb-site deduced from disclosures of interests that the 
Guarantor must be <a href="../dbpub/natarts.asp?p=36361">David Wang Weixian</a> 
and that HK Listco must be <a href="../dbpub/articles.asp?p=36360">Greenland 
Hong Kong Holdings Ltd</a> (0337). He had previously on 19-Sep-2017 pledged the 
shares to Huarong Investment Stock Corp Ltd (2277) for a HK$500m loan on 
19-Sep-2017, something we also deduced from disclosures of interests even though 
the <a href="../dbpub/artlinks.asp?s=13113">Huarong announcement</a> did not 
disclose it.</p>
<p>As for the SFC's final paragraph, the "separate subsidiary holding a 
money-lender licence" would be CMBC Capital Finance Limited, which is 
wholly-owned by CMBC and has made numerous loans against shares, many of which
<a href="../dbpub/articles.asp?p=5047">we have documented</a> here on Webb-site 
Reports. To make all this clearer, we're reproducing that network diagram from 
last October, without updating any of the connections but highlighting the 
entities involved outlined in red. Which part will the regulators work on next, we 
wonder?</p>
<img class="center" alt="CMB Huarong diagram" src="../images/HuarongCMBV3.png">
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9318">China Minsheng Banking Corp., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22250525">China Urbanization Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2041604">CMBC CAPITAL FINANCE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5047">CMBC Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36360">Greenland Hong Kong Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2319938">XinKong Investment Stock Corporation Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=36361">Wang, David Weixian</a></li>
				
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