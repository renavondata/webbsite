
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

<script type="text/javascript">document.title="Govt adopts part of our CICS proposal - now get it right";</script>

	<div class="summary">3 days after our article last Monday, the HK Govt began talking about a compensation scheme for virus-positive tests, to incentivise self-employed symptomatic people facing loss of income to come forward. But early reports suggest it will be too little and won't apply to close contacts, deterring people who are symptomatic if the close contact is a family member who will be deprived of income while in the quarantine camp. Get it right!</div>

<h2 class="center">Govt adopts part of our CICS proposal - now get it right<br>
<span class="headlinedate">22 November 2020</span></h2>
<p>Following our <a href="CICS.asp">article last Monday</a> (16-Nov-2020) in 
which we proposed the COVID Isolation Compensation Scheme (<strong>CICS</strong>), 
Webb-site is stunned, flabbergasted and delighted that someone in the Government 
seems to be listening and planning to implement it. Secretary for Food And 
Health Sophia Chan has been telling the media that a scheme will be implemented 
just as soon as the Labour and Welfare Bureau can work out the details. Ms Chan 
first
<a href="https://webcast.info.gov.hk/revamp/eng/video/0000001009_mp4.html" target="_blank">
mentioned the plan</a> in a lunchtime press conference on Thursday, as
<a href="https://www.thestandard.com.hk/breaking-news/section/4/159291/HK-to-provide-subsidy-for-those-quarantined" target="_blank">
reported in English</a> by The Standard that day.</p>
<p>RTHK
<a href="https://news.rthk.hk/rthk/en/component/k2/1561282-20201122.htm" target="_blank">
reports today</a> (22-Nov-2020) that the scheme will not be means-tested, which 
is good, because you don't want symptomatic people wondering whether they 
qualify before they come forward to be tested. Conversely, SCMP
<a href="https://www.scmp.com/news/hong-kong/health-environment/article/3110864/coronavirus-hong-kong-health-minister-promises" target="_blank">
reports today</a> that it will be mean-tested, which would be bad. A lot of the 
people most affected are self-employed and would have difficulty proving that their 
irregular income falls below a threshold.</p>
<p>Both reports suggest two other problems with the Government's version of 
CICS:</p>
<h3>The amount of compensation</h3>
<p>Reports say the amount of CICS compensation would only be a flat HK$5,000, 
regardless of how long a person is detained with the virus until they test 
negative. We suggest a daily (<em>per diem</em>) amount and it needs to be 
around $1,000 per person per day. This is a deliberate overshoot of the
<a href="https://www.censtatd.gov.hk/hkstat/sub/so210.jsp" target="_blank">
median wage</a> of $18,200 per month ($598 per day), because we are not trying 
to get just half of the self-employed people in HK, but nearly all of them, to 
be fully compensated for their isolation. If you are hospitalised for 2 weeks 
then a flat $5k is only $357 per day. Some patients have been hospitalised much 
longer.</p>
<p>Arguably, people on monthly wages who are entitled to sick pay from 
their employer could be excluded, but paying the allowance to everyone keeps it 
simple and the overall cost is minor compared to other schemes. Even with the 
current rate of around 50 cases per day, that's about 1 in 150,000 of the 
population, so it would be nearly impossible to find an infectious person and 
deliberately get infected, even if one was stupid enough to risk one's life for 
a small payout.</p>
<h3>Close contacts</h3>
<p>Reports say nothing about compensating close contacts. This is really 
important. If you are a close contact of an infected person, you will be 
isolated and out of work for at least 14 days even if you test negative, and you 
won't be entitled to statutory sick pay even if you have a monthly salary, 
unless and until you are actually sick. The same daily CICS allowance should be 
paid to them. Why? Because a symptomatic person may not come forward for testing 
if they know that their relative could be forced into quarantine 
and deprived of their income. So the scheme has to apply to close contacts as 
well as people who test positive.</p>
<p>Remember, we are talking about confining people not in their homes but in a 
quarantine camp, not for their benefit but for the benefit of others. This is 
surely worse than the 
possibility of doing jury service, for which jurors
<a href="https://www.hklii.hk/eng/hk/legis/reg/3A/s2.html" target="_blank">are 
compensated</a> HK$875 per day for a few hours of public service, after which 
they can go home each night and at weekends unless they are sequestered to 
deliberate their verdict.</p>
<h3>Get CICS right</h3>
<p>So, we hope that whoever in Government read our first article (or
<a href="../dbpub/artlinks.asp?s=13978">heard us on RTHK's Backchat</a> on 
Thursday morning) reads this one too, and gets the scheme right. Since our first 
article, a
<a href="https://news.rthk.hk/rthk/en/component/k2/1561274-20201122.htm" target="_blank">
new cluster</a> centred around dance clubs has emerged, and it's larger than it 
could have been, partly because self-employed dance instructors work in multiple 
locations, so there has been cross-infection. There have also been several new 
cases of self-employed taxi drivers,
<a href="https://news.rthk.hk/rthk/en/component/k2/1560639-20201118.htm" target="_blank">
one of whom</a> carried on working for 6 days after he began coughing, finally 
checking into hospital when he was breathless. Don't blame him, blame the 
Government for failing to implement a compensation scheme sooner.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=31026">Chan, Sophia Siu Chee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=32">Economics</a></li>
				
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
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