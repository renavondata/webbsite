
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://webb-site.com/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="../index.html" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="https://webb-site.com/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="https://webb-site.com/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="https://webb-site.com/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
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
			<form class="box4b" method="post" action="https://webb-site.com/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="https://webb-site.com/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="https://webb-site.com/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="https://webb-site.com/dbpub/orgdata.asp" method="get" name="f1">
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
		<li><a href="../index.html">Home</a></li>
		<li><a href="https://webb-site.com/dbpub/">Database</a></li>
		<li><a href="https://webb-site.com/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="https://webb-site.com/webbmail/login.asp">Log in</a></li>
				
				<li><a href="https://webb-site.com/webbmail/join.asp">Sign up</a></li>
				<li><a href="https://webb-site.com/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
		<li><a href="https://webb-site.com/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="https://webb-site.com/pages/howtovote.asp">How to vote</a></li>
				<li><a href="https://webb-site.com/library/">Reference library</a></li>
				<li><a href="https://webb-site.com/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/vote/">Polls</a></li>
		<li><a href="https://webb-site.com/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="https://webb-site.com/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="https://webb-site.com/HAMS/">HAMS proposal</a></li>
				<li><a href="https://webb-site.com/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="PECSregister.asp">PECS register</a></li>
				<li><a href="https://webb-site.com/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="https://webb-site.com/books/">Webb-Books</a></li>
				<li><a href="https://webb-site.com/news/">Old newsletters</a></li>
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="https://webb-site.com/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="https://webb-site.com/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/pages/about.asp">About</a>
			<ul>
				<li><a href="https://webb-site.com/pages/aboutus.asp">About us</a></li>
				<li><a href="https://webb-site.com/photos/">Webb-Photos</a></li>
				<li><a href="https://webb-site.com/pages/mediaroom.asp">Media room</a></li>
				<li><a href="https://webb-site.com/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/contact/">Contact</a></li>
		<li><a href="https://webb-site.com/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="https://webb-site.com/pages/hkradio.asp">Radio</a>
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
		<li><a href="https://webb-site.com/pages/TV.asp">TV</a>
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

<script type="text/javascript">document.title="Putting Police in the Policy Address";</script>

	<div class="summary">A new name would set the right tone.</div>

<h2 class="center">Putting Police in the Policy Address<br>
<span class="headlinedate">18 August 2024</span></h2>
<p>Here's a simple idea for the forthcoming <a href="https://www.policyaddress.gov.hk/" target="_blank">Policy Address</a>. With the public image of HK's police <a href="https://www.ipcc.gov.hk/doc/en/report/thematic_report/Perceptions%20of%20Police%20Officers,%20Protesters%20and%20General%20Public.pdf" target="_blank">
somewhat tarnished</a> (source: survey commissioned by IPCC) by their handling of the protests in 2019 (or what some now euphemistically call the "social 
events", as if it was a series of parties), isn't it time to rename them from "Police Force" to "Police Service", to 
perhaps indicate that they should primarily <em>serve</em> the public and not be a method of <em>force</em> for the 
Government?</p>
<p>In Northern Ireland, after the 1998 Good Friday Agreement that largely brought peace to the region, the "<a href="https://www.psni.police.uk/" target="_blank">Police 
Service of Northern Ireland</a>" was introduced:</p>
<img class="center" alt="Police Service of Northern Ireland" src="https://webb-site.com/images/NIPS.png">
<p>So maybe it is time to update this, and amend the "<a href="https://www.elegislation.gov.hk/hk/cap232" target="_blank">Police Force Ordinance</a>" to the "Police Service Ordinance" 
accordingly? Names are not everything, but they do set the tone.</p>
<img class="center" alt="HK Police Force" src="https://webb-site.com/images/HKPF.png">
<p><em>&copy; Webb-site.com, 2024</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=63405">Hong Kong Police Force</a></li>
				
		</ul>
	<hr>
<p><a href="https://webb-site.com/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="https://webb-site.com/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="https://webb-site.com/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="policeService.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>