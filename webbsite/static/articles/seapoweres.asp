
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

<script type="text/javascript">document.title="Seapower and Galileo Bubbles";</script>

	<div class="summary"><i>Webb-site.com</i> issues two bubble warnings - a billion-dollar bubble at Seapower Resources (0269) and another, smaller one at Galileo Capital (8029), which unlike its namesake, defies gravity.</div>

<h2 class="center">Seapower and Galileo Bubbles<br>
<span class="headlinedate">9 May 2005</span></h2>
<p>Seapower Resources International Ltd (<b>SRI</b>, 0269), involved in cold 
storage, had 6,246,587,084 shares in issue at 31-Mar-05, and at today's closing 
price of $0.184, the company has a market capitalisation of HK$1,149m (US$147m).</p>
<p>SRI has a sad history of abuse and neglect under previous management, and 
eventually went into provisional liquidation which resulted in a restructuring 
of the company. It emerged under new management on 5-Dec-03, headed by CEO 
Kenneth Chan Chun Hing (<b>Mr Chan</b>), a registered professional surveyor. Mr 
Chan subscribed HK$46m for 4.6 billion new shares at $0.01 each, most of which 
went to settle the creditors' claims, and he also received warrants to subscribe 
a further 957,764,514 shares at $0.01 each, or 20% of the post-restructuring 
capital. Incidentally, Mr Chan is also CEO of <a target="_blank" href="../dbpub/articles.asp?p=3144">
Magician Industries (Holdings) Ltd</a> (0526).</p>
<p>On 7-Jan-04, SRI
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040108/LTN20040108105.pdf">
issued</a> a convertible note to an &quot;independent third party&quot;, Miss Wang Li 
Ping, for $5m, convertible into 500m shares at $0.01 each, a discount of 82% to 
the market price of $0.057 at the time. On 22-Dec-04, the convertible note was
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=6478&amp;lang=EN&amp;dia=Y">
acquired</a> by a person named Liu Feng Lei, at a reported price of $0.011 per 
underlying share. This we find puzzling given that the market price was $0.117 
that day. He or she converted the note the next day, and has now cut the 
resulting shareholding from 500m to 355.9m shares as of 18-Apr-05 in a series of 
on-market sales from mid-March onwards.</p>
<p>Meanwhile, those warrants granted to Mr Chan were
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=6203&amp;lang=EN&amp;dia=Y">
acquired</a> by someone called Huang Weiling on 29-Nov-04, at a reported price 
of $0.006 per underlying share. We again find this puzzling given that the share 
price that day closed at $0.123, meaning the warrants had an intrinsic value of 
$0.113 each. On 6-Jan-05, he or she
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=6670&amp;lang=EN&amp;dia=Y">
exercised</a> 300m warrants, and the remainder were
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=7321&amp;lang=EN&amp;dia=Y">
exercised</a> on 7-Mar-05, by which time 27.7m of the resulting shares had been 
sold.</p>
<h3>Bubble Warning</h3>
<p>The SRI
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041231/00269/EWF101.pdf">
interim report</a> for 30-Sep-04 shows that SRI had net asset value of just 
HK$8.2m. Since then, the notes have been converted and the warrants exercised, 
adding a total of $14.6m, so the pro forma NAV is about $22.6m, or about $0.0036 
per share. So the shares are trading on about 51 times net asset value. Turnover 
in the half year was just $4.2m, and the net loss was $5.2m.</p>
<p>In our opinion, this stock is in a bubble and is probably being manipulated 
by unknown parties.</p>
<h3>Board changes</h3>
<p>The board has seen a number of changes since the restructuring. The current 
independent non-executive directors (INEDs) include Mr Louis Liu Ka Lim (<b>Mr Liu</b>), 
appointed on 22-Sep-04, who is also Chairman of
<a target="_blank" href="../dbpub/articles.asp?p=5142">Wonderful World Holdings Ltd</a> (<b>WW</b>, 
0109) and <a target="_blank" href="../dbpub/articles.asp?p=12509">Galileo Capital Group Limited</a> (<b>GC</b>, 
8029), both of which we have written about before. The company secretary of SRI 
is
<a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/member.asp?id=617503">
Miss Sharon Ngan Wai Kam</a>, a solicitor who works for Louis K.Y. Pau &amp; 
Company. That firm is a legal adviser to WW. What a wonderful world it is, in 
the words of another Louis. Another director of SRI is
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Indi_Details.jsp?charset=ISO8859_1&amp;ceref=AHF473&amp;applNo=0002">Mr David Tsang Kam Ching</a>, who is also a director of Hooray Capital Limited 
and a Responsible Officer of Hooray Securities Limited. </p>
<h3>Galileo Capital</h3>
<p>Incidentally, GC is another stock trading on thin air at $0.07 per share, 
with a market cap of $56m and a shareholders' deficit of $0.22m at 30-Sep-04. 
When we last warned our readers about GC back on 19-Feb-01, it was at $0.58, but 
it crashed soon afterwards. The stock has risen 192% from $0.024 on 22-Mar-05 to 
$0.07 today without a single down-day. On 23-Mar-05, a Mr Joe Leong Sai Cheong
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=7548&amp;lang=EN&amp;dia=Y">
acquired</a> 20% of the company from Mr Liu for $0.024 per share, cutting Mr 
Liu's stake to 53.05%. We don't know whether or not the buyer is the same person 
as a Mr Leong Sai Cheong, who was
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=00pr94">
suspended</a> by the SFC for a month in Jul-00 in relation to wash-trading 
between his clients while he worked as a broker. Now that person
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Indi_Details.jsp?charset=ISO8859_1&amp;ceref=ABB205&amp;applNo=0003">works</a> for Upbest Securities.</p>
<p>Gravity will eventually exert itself on Galileo.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1834">China Resources and Transportation Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12509">IMPERIUM FINANCIAL GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=18134">Chan, Kenneth Chun Hing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17966">Liu, Louis Ka Lim</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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