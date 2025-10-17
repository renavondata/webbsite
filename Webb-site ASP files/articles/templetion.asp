
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

<script type="text/javascript">document.title="Tongda and Templeton";</script>

	<div class="summary">When Tongda (0698) trumpeted a "strategic" investment by Templeton in December, and again in the 2012 results this month, demonstrating confidence that the company would reach "new heights", they omitted to mention one very important thing, leaving them both open to prosecution for making misleading statements likely to induce others to buy the shares.</div>

<h2 class="center">Tongda and Templeton<br>
<span class="headlinedate">30 March 2013</span></h2>
<h3>Templeton's confidence</h3>
<p>On 17-Dec-2012, <a href="../dbpub/articles.asp?p=12579">Tongda Group Holdings 
Ltd</a> (<strong>Tongda</strong>, 0698) put out a
<a href="http://en.acnnewswire.com/press-release/english/11865/templeton-strategic-emerging-markets-fund-iv,-ldc-becomes-a-strategic-shareholder-of-tongda-group" target="_blank">
press release</a> titled &quot;Templeton Strategic Emerging 
Markets Fund IV, LDC becomes a strategic shareholder of Tongda Group&quot;. On 
11-Dec-2012, Templeton had bought 300m shares (6.3%) of Tongda from one or more 
third parties. The press release quoted Chairman
<a href="../dbpub/natarts.asp?p=9680">Wang Ya Nan</a> (<strong>Mr Wang</strong>) 
saying:</p>
<blockquote>&quot;This investment demonstrates Templeton's confidence in 
the prospects of Tongda Group...&quot;.</blockquote>
<p>The press release also contained glowing praise from Mark Mobius, executive 
chairman of Templeton Asset Management Ltd, which runs the fund:</p>
<blockquote>&quot;We are delighted to be a strategic shareholder of Tongda 
Group. The company is a leader in in-mould lamination (IML) technology for 
decorative components in China, with a very strong competitive position and a 
broad base of satisfied customers. Considering the huge and growing Chinese 
handset market as well as increased penetration of Chinese brands in global 
markets we are very positive on the potential growth in Tongda's business in the 
coming years, and hope that our support will enable the company to reach new 
heights.&quot;</blockquote>
<p>In its 2012 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0315/LTN20130315244.pdf" target="_blank">results announcement</a> on 14-Mar-2013, Tongda's Chairman said:</p>
<blockquote>&quot;For the Year, Tongda Group succeeded in attracting Templeton 
Strategic Emerging Markets Fund, a major global investment fund, to become our 
strategic shareholder, which <u>fully demonstrates the 
confidence</u> the investment community has on the Group's core advantages 
and prospect.&quot; (emphasis added)</blockquote>
<p>So that all sounds pretty positive; the share price rose 70.1% from $0.335 on 
14-Dec-2012 (before the press release) to $0.57 ahead of the results on 
14-Mar-2013. Dr Mobius is a famous emerging markets investor, and Templeton 
often backs winners.</p>
<h3>What they didn't tell you</h3>
<p>Here's the catch: neither the press release nor the results announcement mentioned that Templeton also had a derivative short interest in the 
same number of shares. The
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=199580&amp;lang=EN&amp;dia=Y" target="_blank">
disclosure of interests</a> shows a purchase price of $0.31 (off-market, a 7.5% 
discount to the $0.335 closing price) and a short interest in the same number of 
shares, &quot;code 403&quot; - a physically-settled unlisted derivative. On the same day, 
Mr Wang
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=134388&amp;lang=EN&amp;dia=Y" target="_blank">
filed</a> a disclosure that he had a new derivative interest in the same number 
of shares, exercisable between 11-Dec-2015 and 25-Jan-2016 at an unstated price. 
It was &quot;code 409&quot; - a physically-settled option, but it was unclear whether this 
was a put option (someone's right to sell to Mr Wang) or a call option (Mr Wang's right 
to buy from someone).</p>
<p class="regbox">Regulatory note: the derivative coding system is different 
between directors and substantial shareholders, with the former providing more 
detail: in our view substantial shareholders should provide the same detail as 
directors, and the system should distinguish clearly between puts and calls.</p>
<p>On 18-Mar-2013, after the results, Webb-site filed a complaint with SEHK and 
the SFC, calling on the company to clarify the situation. At 21:12 on Thursday 
evening, ahead of the 4-day weekend, Tongda filed an
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0328/LTN201303281486.pdf" target="_blank">
announcement</a> revealing that Mr Wang had granted a put option to Templeton 
(also known at various points in the announcement as &quot;Templetion&quot;, presumably 
rhyming with completion), exercisable for 45 days after the 3rd anniversary of 
the investment.</p>
<p>The terms of the put option, if correctly stated, are so complicated 
that after reading it 10 times we are still not sure that we understand it - but 
it appears that Templeton is guaranteed a 15% IRR (internal rate of return) on 
the investment. It doesn't say &quot;per annum&quot; or &quot;annually&quot; but that is normally 
how IRRs are measured. Compounded for 3 years, that's a 52.1% return, equivalent 
to a rise in the share price to $0.472 before dividends. It appears that not 
more than 1/3 of this return can comprise dividends - so if the company pays 
more dividends than that, then it doesn't count towards the 15% IRR.</p>
<p>So how confident was Templeton in Tongda? So confident, that in order to make 
an investment, they had to be granted a put option that not only guarantees that 
they get their money back if the stock falls, but also promises a 52% return 
(assuming Mr Wang honours the terms), even if the share price does not rise. Mr 
Wang has engaged in the somewhat desperate tactic of trying to buy respect. In 
the words of the ancient philosopher Paul McCartney, &quot;money can't buy you love&quot;. 
Perhaps Mr Wang should grant the same put option to all shareholders, then we can all 
be more confident. He could do that with an undertaking to make a general offer 
on 11-Dec-2015 at $0.472 (less dividends), the same deal that Templeton got. </p>
<p>The investment with a put option does not &quot;demonstrate Templeton's 
confidence&quot; let alone &quot;fully demonstrate the confidence the investment community 
has&quot; in Tongda - it shows Mr Wang's confidence in his company's stock price, and possibly that 
Templeton trusts Mr Wang to honour the put option - but that is all. Thursday's 
announcement also reveals that Mr Wang, who with his brothers owns a majority 
shareholding in the company, has undertaken to appoint an individual nominated 
by Templeton as a non-executive director of Tongda - but so far that has not 
happened.</p>
<p>In our view, the press release and announcement were &quot;misleading 
through the omission of a material fact&quot;, namely the put option, and the 
misleading statements were likely to induce people to buy the shares. That is an 
offence under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s298.html" target="_blank">
s298</a> of the Securities and Futures Ordinance,
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s303.html" target="_blank">
punishable</a> on indictment by a fine of up to $10m and up to 10 years in jail. 
Although the source of the press release is stated as Tongda, it was clearly 
endorsed by Templeton, as it included quotes from Dr Mobius, information on 
Templeton, and a corporate communications contact there. That makes both 
companies and the individuals involved liable to prosecution.</p>
<p>Incidentally, we don't know who sold the shares, but as it was above the 
threshold of 5% and nobody else disclosed an interest, either there was more 
than one vendor (each below 5%), or someone breached their disclosure 
obligations.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=70482">TEMPLETON ASSET MANAGEMENT LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12579">TONGDA GROUP HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=9680">Wang, Ya Nan</a></li>
				
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