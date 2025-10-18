
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

<script type="text/javascript">document.title="Chairman pledges controlling stake in IBO Tech (2708) to China Fortune (0290)";</script>

	<div class="summary">Webb-site can reveal that Mr Lai Tse Ming has pledged his 55.8% stake for a HK$155m loan from a money-lender, something that neither he nor IBO Tech has disclosed.</div>

<h2 class="center">Chairman pledges controlling stake in IBO Tech (2708) to China Fortune (0290)<br>
<span class="headlinedate">8 February 2019</span></h2>
<p>On 29-Jan-2019, <a href="../dbpub/articles.asp?p=13901">China Fortune 
Financial Group Ltd</a> (<strong>CFF</strong>, 0290)
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0129/LTN20190129688.pdf" target="_blank">
announced</a> that it has lent HK$155m at 12% p.a. for 12 months to Shine Well 
Holdings Limited (<strong>Shine Well</strong>, BVI). The loan is guaranteed by the borrower's sole director 
and sole shareholder, who was not named, secured on 223.22m shares of a listed 
company ("Listco"), which was not named. The percentage of Listco that this 
collateral represents was not disclosed.</p>
<p>This is typical of the poor level of disclosure permitted by HK's Listing 
Rules - beneficial owners of counterparties do not have to be named. However, as 
the lender is not a licensed bank, insurer or stockbroker (a "qualified lender"), it is not exempt from 
disclosing its security interest in the shares if they are 5% or more of 
Listco's shares.</p>
<p>So we can tell you from a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20190130E00198&amp;lang=EN" target="_blank">
Disclosure of Interest</a> filed the next day that the Listco is
<a href="../dbpub/orgdata.asp?p=11791974">IBO Technology Co Ltd</a> (<strong>IBOT</strong>, 
2708) and the shares represent 55.8% of IBOT. The borrower is owned by
<a href="../dbpub/natperson.asp?p=12638508">Lai Tse Ming </a>(<strong>Mr Lai</strong>), 
the Chairman of IBOT, which was listed in HK on 28-Dec-2017. The shares closed 
on the day of the loan at $1.70, compared with the margin loan of $0.694 per 
share, for a loan-to-value ratio of 40.8%. The latest closing price was $1.60 on 
4-Feb-2019.</p>
<p>However, we note that IBOT has net tangible assets at 30-Sep-2018 of 
CNY244.4m (then HK$277.7m) or about $0.694 per share, almost exactly the amount 
of loan per share.</p>
<p>Regulators might think that the pledge of a majority shareholding is price-sensitive 
information, but IBOT has not made any announcement of the share pledge. Also, 
Mr Lai and Shine Well have failed to file a disclosure that they have pledged 
the shares to a non-qualified lender. We have no idea 
what Mr Lai plans to do with the money, which is presumably worth more than 12% 
p.a. to him.</p>
<p>We note from our CCASS Analysis System that he originally
<a href="../ccass/chldchg.asp?i=25654&amp;d=2018-01-10">deposited</a> 213m shares with Fortune (HK) Securities Ltd (<strong>FHS</strong>), 
the wholly-owned brokerage subsidiary of CFF, on 10-Jan-2018, 13 days after the 
listing. FHS was a "Joint Global Coordinator" and "Joint Bookrunner" of the IPO. 
It appears that all <a href="../dbpub/sdidirco.asp?p=12638508&amp;i=25654">his market purchases</a> since then, from 16-24-Jan-2018, were 
through FHS, based on CCASS settlement data.</p>
<p>IBOT had 4 pre-IPO investors:</p>
<ul>
	<li>On 8-Jan-2016,
	<a href="../dbpub/articles.asp?p=532">Ping An Securities Group (Holdings) 
	Ltd</a> (<strong>PAS</strong>, 0231) lent Mr Lai HK$30m for 1 year at 15% 
	p.a., exchangable into 9% of the pre-IPO entity. Interest was paid for the 
	first year, then the note was renewed for a further year and the principal 
	and accumulated interest after that was converted into shares at the IPO.</li>
	<li>On 11-May-2016 and 7-Jul-2016, <a href="../dbpub/articles.asp?p=13553">
	Value Convergence Holdings Ltd</a> (<strong>VC</strong>, 0821) bought a 
	total of 10.5% from Mr Lai for HK$35m (all paid on 7-Jul-2016).</li>
	<li>On 3-Jun-2016, Ms <a href="../dbpub/natperson.asp?p=22731172">Tin Nga 
	Fong</a> (<strong>Ms Tin</strong>) bought 3% for HK$10m.</li>
	<li>On 22-Dec-2016, Mr <a href="../dbpub/natperson.asp?p=22731175">Yip Man 
	Yung</a> (<strong>Mr Yip</strong>) bought 6.5% for HK$30m.</li>
</ul>
<p>After dilution by the IPO, these holdings became 6.75%, 7.875%, 2.25% and 
4.875% of the post-IPO company, leaving Mr Lai with 53.25%. PAS owns Ping An 
Securities Ltd, which was one of the 3 "Joint Lead Managers" in the IPO, 
alongside FHS.</p>
<p>Ms Tin, also known as "Mrs Hon Tin Nga Fong", is a member of the
<a href="http://www.chinafortune.org.hk/struct_con.php?lang=en" target="_blank">
advisory board</a> of China Fortune Foundation Ltd, and apart from that we know 
nothing relevant about her. We know nothing about Mr Yip. Based on CCASS 
movements, we can see that:</p>
<ul>
	<li>PAS <a href="../ccass/chldchg.asp?i=25654&amp;d=2017-12-29">deposited</a> 
	its 27.0m shares with its subsidiary, Ping An Securities Ltd, on 
	29-Dec-2017. The lock-up expired on 28-Jun-2018, and it
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20180720E00547lang=EN" target="_blank">
	sold them all</a> at $1.51 on 17-Jul-2018. No buyer emerged, but the shares
	<a href="../ccass/chldchg.asp?i=25654&amp;d=2018-07-19">moved</a> on 
	settlement day to FHS.</li>
	<li>VC <a href="../ccass/chldchg.asp?i=25654&amp;d=2018-04-24">
	deposited</a> its 31.5m shares with its subsidiary, VC Brokerage Ltd, on 
	24-Apr-2018. It
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20180206E00313lang=EN" target="_blank">
	topped up</a> its holding to 8.00% on 1-Feb-2018.</li>
	<li>Ms Tin's 9m shares were
	<a href="../ccass/chldchg.asp?i=25654&amp;d=2018-01-04">deposited</a> 
	with VC Brokerage on 4-Jan-2018.</li>
	<li>Mr Yip's 19.5m shares were
	<a href="../ccass/chldchg.asp?i=25654&amp;d=2019-01-08">deposited</a> 
	with Eternal Pearl Securities Ltd on 8-Jan-2019.</li>
</ul>
<p>We'll have more to say about CFF, VC and the people behind them in our next article.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=50804">CVP Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18892">FORTUNE (HK) SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13901">GoFintech Quantum Innovation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11791974">IBO Technology Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=532">Ping An Securities Group (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13553">VALUE CONVERGENCE HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=22731172">Hon Tin, Candy Nga Fong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12638508">Lai, Tse Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22731175">Yip, Man Yung</a></li>
				
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