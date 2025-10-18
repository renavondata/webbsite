
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

<script type="text/javascript">document.title="Huarong and China Singyes Solar Technologies (0750)";</script>

	<div class="summary">CSST, now suspended pending disclosure of its financial position, has failed to disclose in its reports the interest of Huarong Int Fin (0993), which claims to have a 15.09% interest, including 8.04% purchased from an unknown vendor in Dec-2017 and security over a further 7.05% pledged to it, presumably to secure a put option that it claims to have been granted. By whom?</div>

<h2 class="center">Huarong and China Singyes Solar Technologies (0750)<br>
<span class="headlinedate">18 October 2018</span></h2>

<p>During our ongoing investigation into the group companies of
<a href="../dbpub/articles.asp?p=2417308">China Huarong Asset Management Co Ltd</a> 
(<strong>Huarong</strong>, 2799) and others, we note that according to a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20171211E00320&amp;lang=EN" target="_blank">
disclosure of interest</a>, on 6-Dec-2017,
<a href="../dbpub/articles.asp?p=3449">Huarong International Financial Holdings 
Ltd</a> (<strong>HIF</strong>, 0993), via its 100% BVI subsidiary 
<a href="../dbpub/articles.asp?p=2656725">Beyond Steady 
Limited</a> (<strong>BS</strong>) purchased 67.064m shares (8.04%) of
<a href="../dbpub/orgdata.asp?p=47433">China Singyes Solar Technologies Holdings 
Ltd</a> (<strong>CSST</strong>, 0750). The filing failed to disclose the price 
paid, or whether it was on-market or off-market. No other substantial 
shareholders disclosed any decrease in their holdings on that date, so the 
vendor is unknown.</p>
<p>Jump forward to the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0410/LTN20180410730.pdf" target="_blank">
2017 HIF annual report</a> and we see in note 19(iv) that on 6-Dec-2017, the 
group "purchased listed securities together with a put option at an aggregated 
consideration of approximately HK$181,073,000". That is almost certainly the 
investment in CSST, at a price of HK$2.70 per share, which works out to 
HK$181,072,800.</p>
<p>Since then, HIF and BS have each made 7 more filings as at 29-Dec-2017 to 
9-Jul-2018, disclosing an increasing number of CSST shares which have been 
pledged to BS, with the
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20180712E00345&amp;lang=EN" target="_blank">
last filing</a> showing a security interest of 58.785m shares (7.05%), taking 
HIF's total interest in CSST to 15.09%. The pledged shares are presumably 
security for the obligations of the issuer of the put option.</p>
<p>Yet, if you check the 30-Jun-2018
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0919/LTN20180919225.pdf" target="_blank">
interim report</a> of CSST, or the preceding
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0430/LTN20180430017.pdf" target="_blank">
2017 annual report</a>, you would have no idea that any of this had happened. 
Page 18 shows only 1 substantial shareholder, 
<a href="../dbpub/orgdata.asp?p=2699193">Strong Eagle Holdings Ltd</a>, with 
38.1%, which is 53% owned by CSST Chairman Liu Hongwei. There is no disclosure 
of the interests of HIF and BS, and nobody has disclosed any obligations as the 
writer of a put option.</p>
<p>The reason for the increasing amount of collateral posted for the put option 
is probably that the share price of CSST has been sliding, having closed at 
$2.15 last Friday 12-Oct-2018. It has been
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/1015/LTN201810159985.PDF" target="_blank">
suspended</a> since then, "pending the publication of an announcement about the 
latest financial position of the Company".</p>
<p>Before suspension, CSST was in the middle of a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/1011/LTN20181011515.pdf" target="_blank">
proposed issue</a> of HK$230m convertible bonds and a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/1012/LTN20181012043.pdf" target="_blank">
placing</a> of up to 17.8m shares at $2.20 to raise HK$165m net. Don't hold your 
breath waiting for those to complete.</p>
<p>Before allowing resumption of trading, the regulators had better get CSST to 
tell the public anything it knows about the purchase of shares by HIF, the put 
option, the pledge of shares and any dealings CSST has had with HIF or other 
members of the Huarong group.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2417308">China CITIC Financial Asset Management Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=47433">China Shuifa Singyes Energy Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2699193">Strong Eagle Holdings Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3449">XinKong International Capital Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=47435">Liu, Hongwei (1964)</a></li>
				
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