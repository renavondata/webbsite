
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

<script type="text/javascript">document.title="The geo-politics of HK's clunky contact-tracing app";</script>

	<div class="summary">We look at the deceptively-named "LeaveHomeSafe" app, and why it failed to adopt the automated technology worked out by Google and Apple for exposure notifications and instead resorted to a home-brewed QR-scanning system that few will use. The answer may lie in politics.</div>

<h2 class="center">The geo-politics of HK's clunky contact-tracing app<br>
<span class="headlinedate">19 November 2020</span></h2>
<p>There are so many things wrong with the HK Government's COVID contact-tracing 
app that it's hard to know where to begin.</p>
<p>Let's start with the name, which is grossly misleading. It's called "<a href="https://www.leavehomesafe.gov.hk/en/" target="_blank">LeaveHomeSafe</a>" 
(<strong>LHS</strong>), but it does nothing to make it safer to leave home, of 
course. You have the same risk of contracting the virus whether or not you are 
using the app. The
<a href="https://www.youtube.com/watch?v=o-dQkcpPP-0" target="_blank">cheery 
video</a> that accompanied the launch carries the voiceover: "Use the app 
together. Feel at ease when going out." This is contradictory to the ongoing 
Government advice to "avoid eating out or going out if it's not necessary" from that 
patronising and irritatingly childish "<a href="https://www.youtube.com/watch?v=z1uLA_OkorY" target="_blank">Lazy 
Lion</a>" character.</p>
<p>Secondly, the Government has completely ignored the system now built in to 
Apple's iOS and Google's Android software known as "<a href="https://en.wikipedia.org/wiki/Exposure_Notification" target="_blank">Google/Apple 
Exposure Notifications</a>" (<strong>GAEN</strong>). This simple system works by 
automatically exchanging anonymous randomized tokens with phones nearby using
<a href="https://en.wikipedia.org/wiki/Bluetooth_Low_Energy" target="_blank">
Bluetooth Low Energy</a> (<strong>BLE</strong>). The tokens change every 10-20 
minutes. No location information or personal data is recorded or needed. You 
don't need to keep any app running in the background, because it works at the 
operating system level. All you have to do is turn it on. If someone tests positive, then a notification is sent 
to all devices with matching tokens using a code provided by the local health 
authority, telling other users that their device has been near 
someone who tested positive, but without saying who or where.</p>
<p>Some US states
<a href="https://covid19.colorado.gov/Exposure-notifications" target="_blank">
such as Colorado</a> have even gone without the need to install an app on top of 
the operating system. This is known as
<a href="https://developer.apple.com/documentation/exposurenotification/supporting_exposure_notifications_express" target="_blank">
Exposure Notifications Express</a>.</p>
<p>By contrast, LHS requires the user to install an app and scan
<a href="https://en.wikipedia.org/wiki/QR_code" target="_blank">QR codes</a> whenever they arrive 
at somewhere that displays one, and remember to tap "Leave" when they leave. Who's 
going to remember to do that after a few drinks? The same manual 
check-in-check-out procedure applies to taking a taxi ride or a bus (if the 
buses get around to it). Will you remember to do that while carrying your bags? 
How many locations will bother to generate a QR code? It's all too much hassle 
for users and will be poorly adopted.</p>
<p>Thirdly, by recording a location history of QR codes and matching those up, 
it limits the scope of the contact-tracing, because there are some places that 
people don't want to record themselves as having been. Also, some places are 
just too large - a hotel, for example, for a QR code at the entrance to be 
meaningful. The BLE system records signal strength and only those within a short 
range, making it much better suited to narrowing down the target list for 
contact alerts.</p>
<h3>The possible motivation</h3>
<p>So, what's the motivation for the HK Government reinventing the wheel and 
coming up with something less than circular? It may well relate to the "not 
invented here" problem that both Google and Apple are US companies while HK is 
an inalienable part of China (as we are constantly reminded), and China these 
days seeks to avoid using foreign technology. It may also be because Chinese 
vendor Huawei is 
<a href="https://www.reuters.com/article/us-usa-china-huaweitech/chinas-huawei-70-affiliates-placed-on-us-trade-blacklist-idUSKCN1SL2W4" target="_blank">currently banned</a> from using Android updates in its new phones 
after May-2019. Hence LHS comes in 3 versions, for Apple, Google and Huawei.</p>
<p>However, Huawei has produced its own version of exposure notifications known 
as
<a href="https://developer.huawei.com/consumer/en/doc/development/Contact-Shield-V1/introduction-0000001050738511-V1" target="_blank">
HMS Core Contact Shield</a> (<strong>HCCS</strong>), which also uses BLE. 
According to the Huawei
<a href="https://developer.huawei.com/consumer/en/doc/Contact-Shield-V1/faq-0000001051061622-V1#EN-US_TOPIC_0000001051061622__section55212391388" target="_blank">
FAQs</a>:</p>
<blockquote>"The Bluetooth technical specifications of Contact Shield are 
consistent with those of the GAEN. Therefore, Contact Shield can properly 
interwork with Google and Apple devices."</blockquote>
<p>So it should not be beyond the abilities of a competent developer to 
create an app that uses both GAEN and HCCS, if HK is the hub of innovation that 
it claims to be. Even if that integration is not yet possible, Huawei phones
<a href="https://gs.statcounter.com/vendor-market-share/mobile/hong-kong" target="_blank">
only account for</a> about 11% of the HK market, so is that a good reason to 
drop the benefits of GAEN for everyone else? Lives may be saved by promptly 
notifying close contacts before they can become symptomatic and spread the virus 
to others.</p>
<p>We don't know who specified the design of LHS, how much it cost, or whether 
the project was tendered, but the 
<a href="https://play.google.com/store/apps/details?id=hk.gov.ogcio.leavehomesafe&amp;hl=en" target="_blank">Google Play Store shows</a> the 
developer email as 
"info@cherrypicks.com". That domain belongs to
<a href="../dbpub/officers.asp?p=1434305">Cherrypicks Limited</a> (<strong>Cherrypicks</strong>), 
which is now 92.2% owned by Fujian-based game developer
<a href="../dbpub/orgdata.asp?p=41400">NetDragon Websoft Holdings Ltd</a> 
(0777). The Founder and CEO of Cherrypicks,
<a href="../dbpub/positions.asp?p=2520614">Jason Chiu</a>, is a 
Government-appointed Councillor of the <a href="../dbpub/orgdata.asp?p=1041">
Hong Kong Trade Development Council</a> and the
<a href="../dbpub/orgdata.asp?p=11118">University of Hong Kong</a>.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1434305">CHERRYPICKS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2604890">Huawei Technologies Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41400">NetDragon Websoft Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2520614">Chiu, Jason Felix Tsz Kiu</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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