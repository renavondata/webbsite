
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

<script type="text/javascript">document.title="Parker Randall's HK track record";</script>

	<div class="summary">We reveal the censored names in yesterday's HKICPA announcement, and look at the awful losses experienced by investors in the HK-listed audit clients of Parker Randall CF (H.K.) CPA Ltd.</div>

<h2 class="center">Parker Randall's HK track record<br>
<span class="headlinedate">27 October 2012</span></h2>
<p>The HKICPA <a href="../codocs/LauPeterPoMing121026PR.pdf" target="_blank">announced</a> 
yesterday 
that on 8-Oct-2012 (yes, it took them 18 days to announce it), a Disciplinary 
Committee of HKICPA ordered that the practising certificate of
<a href="../dbpub/positions.asp?p=135508">Peter Lau Po Ming</a> (<strong>Mr Lau</strong>) 
be cancelled on 17-Nov-2012 and he be banned from practising in 2013 and 2014.</p>
<p>The announcement and the
<a href="../codocs/LauPeterPoMingReasons.pdf" target="_blank">Reasons for 
Decision</a> (<strong>Reasons</strong>) have been unnecessarily self-censored by 
HKICPA. We call on the HKICPA to be more transparent - isn't that what 
accountants are for? Webb-site will fill in the blanks. The &quot;Corporate Practice 
P&quot; referred to is <a href="../dbpub/orgdata.asp?p=40711">
Parker Randall CF (H.K.) CPA Ltd</a> (<strong>Parker Randall</strong>). 
According to the Reasons, Mr Lau was its sole practising director until he 
&quot;ceased&quot; to be a director on 10-May-2010.</p>
<p>There are audits of two listed companies involved in the Reasons. &quot;Company 
A&quot;, which must be <a href="../dbpub/articles.asp?p=4953">New City Development 
Group Ltd</a> (<strong>New City</strong>, 0456) and &quot;Company B&quot;, which must be
<a href="../dbpub/orgdata.asp?p=22343">Grand T G Holdings Ltd</a> (<strong>GTG</strong>, 
8299). The New City case involves its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2010/0305/LTN20100305170.pdf" target="_blank">
31-Dec-2008 accounts</a>, and the GTG case involves its
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2009/0703/GLN20090703000.pdf" target="_blank">
31-Mar-2009 accounts</a>.</p>
<p>We won't repeat the details of the Complaint (which Mr Lau admitted) here - 
you can find that in the Reasons, and now that you know the companies, you can 
read the accounts in parallel with the Reasons and it will make more sense.</p>
<p>As we noted, Mr Lau left Parker Randall, or at least ceased to be its sole 
practising director, on 10-May-2010. The (or a) current director is
<a href="../dbpub/positions.asp?p=28667">Parker Seto Man Fai</a> (<strong>Mr 
Seto</strong>). He is an INED of 2 HK-listed companies, including New City, to 
which he was appointed on 21-Oct-2009. Parker Randall resigned from New City on 
14-Apr-2010, presumably before Mr Seto took over at Parker Randall. We assume 
there is no connection between his chosen English name (Parker), which he
<a href="http://www.sec.gov/Archives/edgar/data/1066961/000114420409046611/v159512_ex10-6.htm" target="_blank">
uses as a director</a> in the USA, and the Parker Randall brand. It is unclear 
whether Parker Randall is still a member firm of
<a href="http://www.parkerrandall.com/" target="_blank">Parker Randall 
International Ltd</a>.</p>
<p>Now thanks to a wonderful new feature of Webb-site, you can look at the past 
and present <a href="../dbpub/adviserships.asp?p=40711" target="_blank">list of 
HK-listed audit clients</a> of Parker Randall. You can see that they have had 8 
listed audit clients, of which 7 remain, and the average annualised Webb-site 
Total Return on the shares of those companies during the period of service is 
negative, -32.04% p.a. (excluding one which has been suspended since the 
appointment). In fact all of them are negative - you could not have failed to 
lose money if you had bought shares in any of them when Parker Randall was 
appointed and held them for the duration. We are not of course implying any 
cause and effect, merely a correlation. Total returns are updated daily, so these numbers will change.</p>
<p>Isn't that a cool feature?</p>
<p>Incidentally, the members of the Disciplinary Committee were also blanked out 
in the Reasons, unlike the names of judges in court rulings. So we'll tell you, 
from the latest calendar of cases, they were: solicitor
<a href="../dbpub/positions.asp?p=35738">Betty Chan Ka Wai</a> (Chairman), 
architect <a href="../dbpub/positions.asp?p=29599">Wilbert Ching Tak Keung</a>, 
barrister <a href="../dbpub/positions.asp?p=63903">Roxanne Ismail</a>, 
accountant <a href="../dbpub/positions.asp?p=1866284">Alan Tang Chung Wah</a>, 
and accountant <a href="../dbpub/positions.asp?p=1971596">Lesley Yeung Kit Kam</a>.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22343">GT Gold Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6184">HONG KONG INSTITUTE OF CERTIFIED PUBLIC ACCOUNTANTS</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4953">New City Development Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=40711">PARKER RANDALL CF (H.K.) LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=35738">Chan, Betty Ka Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29599">Ching, Wilbert Tak Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=63903">Ismail, Roxanne</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=135508">Lau, Peter Po Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=28667">Seto, Parker Man Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1866284">Tang, Alan Chung Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1971596">Yeung, Lesley Kit Kam</a></li>
				
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