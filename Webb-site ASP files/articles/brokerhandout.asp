
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

<script type="text/javascript">document.title="Government misled LegCo over COVID-19 broker handout";</script>

	<div class="summary">Applying to the Finance Committee, the Government made claims which it knew or should have known were false and misleading. It was either lying or reckless. Webb-site tells you the truth.</div>

<h2 class="center">Government misled LegCo over COVID-19 broker handout<br>
<span class="headlinedate">1 May 2020</span></h2>
<p>The HKSAR Government (<strong>HSKARG</strong>) has misled LegCo with false 
and misleading statements to justify a handout to stockbroking firms as part of 
its bumper HK$137.5bn "Anti-Epidemic Fund"&nbsp;
<a href="https://www.info.gov.hk/gia/general/202004/09/P2020040900021.htm" target="_blank">
announced</a> on 8-Apr-2020. That package had something for each of the rotten-borough 
"Functional Constituencies". There is an election coming up, you see.</p>
<h3>Background</h3>
<p>The so-called "Financial Services" seat in the Legislative Council (<strong>LegCo</strong>) 
is, in reality, the small-brokers' seat. The eligible electorate comprises each 
firm which is a participant in <a href="../dbpub/articles.asp?p=825">The Stock 
Exchange of Hong Kong Ltd</a> (<strong>SEHK</strong>),
<a href="../dbpub/orgdata.asp?p=966">Hong Kong Futures Exchange Ltd</a> (<strong>HKFE</strong>) 
or <a href="../dbpub/articles.asp?p=15525">The Chinese Gold and Silver Exchange 
Society</a>. Each firm has 1 vote, regardless of size. Apart from electing the 
legislator, they also elect 18 members of the 1200-member Chief Executive 
Election Committee (<strong>EC</strong>, see our article
<a href="gettingTo601.asp"><em>Getting to 601</em></a>, 
28-Jan-2020). In the 2016 EC election, 622 firms were registered 
to vote.</p>
<p>Following demutualisation in 1999, both SEHK and HKFE are wholly-owned 
subsidiaries of Hong Kong Exchanges and Clearing Ltd (<strong>HKEX</strong>, 
0388). Prior to that, they were owned by their trading members, with 
each of 929 SEHK shares providing one seat on the trading floor (some firms held 
more than 1 share, of course). There were only 230 shares in HKFE. The governing 
Council of SEHK had 31 members, of which 18 were divided into 3 quotas based on 
the ranking of firms by market share. The top 14 firms elected 4 seats for 
Category A, the next 51 firms elected 5 seats for Category B, and the remainder 
elected 9 seats for Category C.</p>
<p>Although the Council was abolished when HKEX was formed, the combined 
market shares of the 3 broker categories are
<a href="https://www.hkex.com.hk/Market-Data/Statistics/Participant/Stock-Exchange-Participants'-Market-Share-Report?sc_lang=en" target="_blank">
still published</a> monthly. Currently, categories A, B and C have market shares 
of about 60%, 33% and 7%, but of course, Category A only has 14 votes in the 
"Financial Services" elections. So it is Category B and C firms who 
decide the outcome of the LegCo seat and EC seats election. Asset managers have 
no votes.</p>
<h3>The handout</h3>
<p>The Government submitted a
<a href="https://www.legco.gov.hk/yr19-20/english/fc/fc/papers/f20-02e.pdf" target="_blank">
141 page paper</a> to the LegCo Finance Committee meeting on 17-Apr-2020. It 
told them in enclosure D15 (p69):</p>
<div class="letterbox">Due to the COVID-19 outbreak, the business opportunities and 
	<strong>hence income</strong> of 
small and medium-sized intermediaries and licensed individuals of the Securities 
and Futures Commission (SFC) (i.e. brokerage firms and their responsible 
officers/representatives) have been <strong>adversely affected</strong>. <strong>Small and medium-sized 
intermediaries serving primarily retail clients are particularly hard-hit</strong> by the 
adverse business environment. <strong>The reduced face-to-face contact and the recent 
market volatility have impeded the businesses</strong> of these small and medium-sized 
intermediaries, notwithstanding the recent surge in market turnover. (our bold)</div>
<p>Accordingly, they proposed to give HK$50,000 to each Category B and C firm 
(790 firms, implying 51 in Category B and 739 in Category C). They've also introduced <em>de facto</em> negative licensing 
fees at the SFC, with each SFC-licensed individual receiving HK$2k on top of an 
earlier waiver of licence fees, although those fees are normally paid by their 
employers.</p>
<h3>Turnover increases during volatility</h3>
<p>First, market 
volatility (a measure of the movement in prices) is a product of uncertainty, 
which tends to increase turnover, not reduce it, for the simple reason that when 
the value of a stock is less certain, there will be more participants who think 
it is either overvalued or undervalued and therefore willing to sell or buy it.</p>
<p>Here is our analysis of the turnover by Category, straight from HKEX data:</p>
<img class="center" alt="Broker category turnover" src="../images/BrokerCatTurnover.png">
<p>As you can see, average daily market turnover has jumped 54.5% in the first 
quarter of 2020 to HK$112.7bn versus $72.9bn in the last quarter of 2019. 
Category B and C brokers have seen a 58.4% and 48.1% jump respectively. They 
haven't been "particularly hard-hit" as the FSTB claims. Their revenues have shot up 
correspondingly, and their profits too. Their income has not been "adversely 
affected" as the HKSARG claims.</p>
<h3>Retail investors</h3>
<p>Second, the vast majority of retail investors don't deal "face-to-face", or 
even mask-to-mask. They either deal 
online or pick up the phone. According to a
<a href="https://www.ifec.org.hk/common/pdf/about_iec/ifec-retail-investor-study2019.pdf" target="_blank">
survey</a>  by the Government-backed
<a href="https://www.ifec.org.hk/" target="_blank">Investor and Financial Education Council</a> in Jun-2019, only 1% 
of individual investors most often dealt "physically at the brokerage", while 65% most 
often dealt online and 33% most often dealt by phone to their bank or broker. 
In a 12-month period, only 5% of retail investors dealt face-to-face even once - and most of 
them would be at a bank, not a broker:</p>
<img class="center" alt="Retail dealing" src="../images/RetailDealing.png" width="1041">
<p>You have to wonder who in the Financial Services and Treasury Bureau (<strong>FSTB</strong>) made up these false reasons and who told them to mislead 
LegCo in this way. The claims are easy to check, and the FSTB either knew or 
should have known that the statements were false. That is, they were either lying 
or reckless to the truth. Did they really think we wouldn't notice?</p>
<p><strong>Legislators should demand to know how these false and misleading 
reasons were put together, and the HKSARG should apologise to 
LegCo for misleading its members into approving this part of the package.
</strong>The only saving grace is that the broker handout totals only about 
HK$39.5m, but there is a principle at stake.</p>
<p>Incidentally, each firm, assuming it makes no net layoffs during this 
lucrative period, can also benefit from the up-to HK$54k per-job entitlement to 
the crazy-but-take-it Employment Subsidy Scheme (see <a href="ESS.asp"><em>
Employers must eat this free lunch</em></a>, 9-Apr-2020).</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15525">CHINESE GOLD AND SILVER EXCHANGE SOCIETY (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8576">HKSAR Election Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2533599">HKSAR Financial Services and the Treasury Bureau</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6610">HKSAR Legislative Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=966">HONG KONG FUTURES EXCHANGE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=825">STOCK EXCHANGE OF HONG KONG LIMITED (THE)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
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