
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	text-decoration: line-through;
}
.auto-style2 {
	text-decoration: underline;
}
.auto-style3 {
	text-decoration: underline line-through;
}
</style>
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

<script type="text/javascript">document.title="AAC (2018) announcement seems familiar";</script>

	<div class="summary">AAC, in a rather desperate move, has announced a "strategic cooperation agreement" with CITIC Bank. Where have we seen that before?</div>

<h2 class="center">AAC (2018) announcement seems familiar<br>
<span class="headlinedate">9 June 2017</span></h2>

<p><a href="../dbpub/orgdata.asp?p=28231">AAC Technologies Holdings Inc</a> 
(<strong>AAC</strong>, 2018) made an
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0609/LTN20170609093.pdf" target="_blank">
announcement</a> today that gives us a sense of déjà vu:</p>
<div class="letterbox">
<p>The board of directors of the Company (the “Board”) is pleased to announce 
that, on <span class="auto-style1">3 May</span> <span class="auto-style2">9 June</span> 
2017 <span class="auto-style2">(before trading hours)</span>, the Company 
entered into a strategic cooperation agreement (the “Agreement”) with China 
CITIC Bank Corporation Limited (Nanjing Branch)* （中信銀行股份有限公司南京分行） (“CITIC 
Bank”). To the best of <span class="auto-style1">directors of </span>the
<span class="auto-style1">Company’s </span>knowledge, information and belief
<span class="auto-style2">of the Board</span>, CITIC Bank and its ultimate 
beneficial owners are third parties independent of the Company and its connected 
persons (as defined in the Listing Rules).<br><br>Pursuant to the Agreement, in 
order to establish long-term, stable, mutually-beneficial and win-win strategic 
cooperation relationship, CITIC Bank<span class="auto-style1">, acting as the 
Company’s strategic cooperation commercial bank and the Company, being the 
strategic customer of CITIC Bank</span> will carry out multilevel cooperation
<span class="auto-style2">based on the financial needs of the Company, including 
but not limited</span><span class="auto-style3">,</span><span class="auto-style1"> 
in relation</span> to provision of <span class="auto-style2">financial </span>
package <span class="auto-style2">service and</span><span class="auto-style1">,</span> 
one-stop <span class="auto-style1">and </span>comprehensive financial services<span class="auto-style1"> 
by CITIC Bank based on the financial needs of the Company and the financial 
resources of CITIC Bank and its group companies, including financing and credit, 
investment banking, account management, supply-chain finance, wealth management 
and asset management. The parties to the Agreement shall give priority to each 
other in selecting the financial services and customer under the same conditions</span>.<br>
<br><span class="auto-style1">In particular, </span>CITIC Bank agrees to provide 
to the <span class="auto-style2">Group</span><span class="auto-style1"> Company 
and/or its related parties</span> with a comprehensive credit and financing 
limit of not less than RMB10 billion, subject to the compliance with the 
relevant laws, regulations, rules and internal <span class="auto-style2">credit 
approval guidelines and</span><span class="auto-style1">control</span> 
procedures of CITIC Bank. The term of the Agreement is two years from the date 
of the Agreement.</p>
</div>
<p>Ah yes, what you are looking at is an edited copy of the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0503/LTN20170503005.pdf" target="_blank">
announcement</a> by <a href="../dbpub/articles.asp?p=16953">Fullshare Holdings 
Ltd</a> (<strong>Fullshare</strong>, 0607) on 3-May-2017. Hardly inspiring. It's 
even the same branch of CITIC Bank (Nanjing), and the grant of the credit facility is 
subject to internal credit approvals, so it is not unconditional. According to 
AAC's 2016 annual report, it has a minimal amount of net gearing, so on the face 
of it, they don't need the money. This stunt looks ill-advised.</p>
<p>While on the subject of Fullshare, we must note that since a critical 
short-seller report was published on 25-Apr-2017, the share price in this bubble 
has held up remarkably well. When you look at the Webb-site CCASS Analysis 
System, you can see why. The
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=3444&amp;sc=&amp;d1=2017-04-26&amp;d=2017-06-08" target="_blank">
net movements in CCASS</a> since then show that the Southbound Shanghai Connect 
(ID <a href="../ccass/chistory.asp?i=3444&amp;part=1323" target="_blank">A00003</a>) and Shenzhen Connect (ID 
<a href="../ccass/chistory.asp?i=3444&amp;part=1456" target="_blank">A00004</a>) have acquired 4.96% of the company 
combined, and now hold 15.66% of the company. One or more mainlanders have piled 
in while the free world has piled out. </p>
<p>Meanwhile, on
<a href="../ccass/chldchg.asp?i=3444&amp;d=2017-05-02" target="_blank">
2-May-2017</a>, a 4.41% block moved from CCB International to UBS, on
<a href="../ccass/chldchg.asp?i=3444&amp;d=2017-05-23" target="_blank">
23-May-2017</a> a 3.45% block moved from CCB International to 
China Industrial Securities, and
<a href="../ccass/chldchg.asp?i=3444&amp;d=2017-05-24">the next day</a>, a 
block of 5.06% moved from UBS to BNP Paribas. Such moves often indicate a change 
in the margin finance arrangements of a large or controlling shareholder.</p>

<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=28231">AAC TECHNOLOGIES HOLDINGS INC.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6584">China CITIC Bank Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16953">Fullshare Holdings Limited</a></li>
				
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