
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

<script type="text/javascript">document.title="Meter Madness";</script>

	<div class="summary">How HK's policies of pseudo-anonymity and deep under-pricing of metered parking have resulted in a half-baked not-very-smart upgrade to the system, launched yesterday.</div>

<h2 class="center">Meter Madness<br>
<span class="headlinedate">19 January 2021</span></h2>
<p>One of the many inefficiencies of HK's <a href="../dbpub/subject.asp?c=180">
road transport policies</a> is that the price you pay (if you pay) for metered 
parking on a public road in HK has not changed since 1994, back when Bill 
Clinton was 2 years into his first presidency and the HK taxi flag fall was HK$11.50 
(now $24). Metered parking is never more than HK$2 per 15 minutes (less in some 
spots), which is almost always a huge discount to the commercial parking spaces 
nearby. It's even cheaper if you don't pay or overstay, which is not an option 
in commercial car parks. Labour costs of enforcement are too high to provide a 
meaningful deterrent. So the spaces are often full, and in some areas, gangs 
running "valet parking" operations tend to monopolise them to profit from the 
under-pricing.</p>
<p>Yesterday, the Government
<a href="https://www.td.gov.hk/en/transport_in_hong_kong/parking/parking_meters/npm/index.html" target="_blank">
launched</a> its latest so-called "smart mobility" parking meters. They have 
radar to detect whether a space is occupied, but out of misplaced privacy 
concerns, they don't record the plate numbers of vehicles, so there's no 
automatic charging or fining for owners of vehicles who don't pay or overstay. 
It requires old-fashioned legwork to send a cop or traffic warden to record the 
plate number and issue a ticket. At least the meters will tell the cops where to 
look, so the deterrent may become more efficient.</p>
<p>Users will still need to decide in advance how much parking time to buy, and 
fiddle with QR codes or card payments to start the meter. There's a new 
smartphone app which allows you to remotely extend the parking time, but because 
of the under-pricing, there is a policy that you can only remotely renew the 
spot once - for example, 2 hours plus another 2 hours. Then you presumably have 
to come back and use a different payment method or move to another space. That's 
what happens with an under-priced resource - you have to ration it. As the web 
site states:</p>
<blockquote>"To prevent motorists from continuously purchasing additional 
parking time remotely via mobile phones with a view to occupying the parking 
spaces for a prolonged period, HKeMeter will restrict the validity period of 
each connection and the connection will become invalid upon the expiry of 
effective parking time of the parking meter concerned."</blockquote>
<p>So, not <em>that</em> smart.</p>
<h3>A better way: a Park-and-Go scheme</h3>
<p>A proper solution would work as follows:</p>
<ul>
	<li>If an owner wishes to use parking meters, then she must place a deposit 
	in a virtual bank account designated by the Government for that vehicle and 
	printed on the annual licence document, or alternatively, link the account 
	to a credit card, debit card or autopay.</li>
	<li>To avoid using hard-to-remember bank account numbers, each account 
	would also have a dedicated email address using the vehicle registration 
	number, for example, "AB1234@parking.gov.hk". Money can be instantly sent to 
	an email address using the <a href="https://fps.hkicl.com.hk/">Faster 
	Payment System</a> (FPS) from any other bank account or payment app in HK.</li>
	<li>The vehicle drives up to the meter, its plate is read by cameras in the 
	meter, and charging begins, debiting the vehicle's account automatically.</li>
	<li>When the vehicle leaves, the meter sees the vacancy and charging ends.</li>
	<li>If the vehicle parks without adequate balance in its account, then the 
	owner is notified of a fine charged to the account, which must be paid 
	before the annual licence is renewed or the ownership is transferred. Unpaid 
	fines would increase the longer they are unpaid, and beyond a certain 
	negative balance (say, $1,000), the meter would alert enforcers to tow and 
	impound the vehicle until payment is made (this could be outsourced).</li>
	<li>The parking fees should be set at commercial levels, discovered by 
	market forces (supply and demand) for each area and time-of-day/ day-of-week 
	- and owners can park as long as they wish.</li>
	<li>When the vehicle is deregistered, any remaining deposit is refunded.</li>
</ul>
<p>Simple, eh? This solution has the following benefits:</p>
<ul>
	<li>No need to decide in advance how much parking time you need. Just park 
	and go.</li>
	<li>No need for an app to start the meter or "extend" the time - although a 
	simple app or web site could tell you your account balance, parking usage 
	and allow top-ups.</li>
	<li>No police work is needed to visit parking spaces and issue tickets.</li>
</ul>
<p>Regarding the purported privacy concerns - get real - any vehicle on the 
roads can already be tracked at multiple waypoints, and most payment methods on 
the new meters also require using identifiable payment methods. The only 
possible exception is the Octopus card, if it is one which is not linked to a 
bank account and doesn't have a pattern of usage that identifies you elsewhere 
(for example, CCTV and facial recognition on public transport). Commercial car 
parks record number plates routinely, so why not parking meters?</p>
<p>What the Government has done is to sacrifice all of the above benefits 
in exchange for having a pseudo-anonymous, under-priced parking meter system. If 
you don't want your vehicle to be identified, then don't use a parking meter - 
it's not a human right.</p>
<p>HK, Asia's <a href="https://www.smartcity.gov.hk/" target="_blank">Smart City</a>?</p>
<p>In case you are thinking "can't be done", there's at least one system under 
trial in Taipei, by 
<a href="https://www.acer.com/ac/en/US/content/acerdesign-smart-parking" target="_blank">Acer ITS Smart Parking Solutions</a>. 
Watch the <a href="https://www.youtube.com/watch?v=OhiiwBkHIIs" target="_blank">
video here</a>.</p>
<p>The "new" HK meters are supplied and operated under a
<a href="https://www.info.gov.hk/gia/general/201905/20/P2019052000428.htm" target="_blank">
HK$682m 11-year contract</a> awarded in 2019 to a joint venture between
<a href="../dbpub/orgdata.asp?p=133763">HKT Limited</a> (<strong>HKT</strong>, 
6823) and <a href="https://www.flowbird.group/" target="_blank">Flowbird</a>. 
HKT is a subsidiary of <a href="../dbpub/articles.asp?p=2925">PCCW Ltd</a> 
(0008), which is 31% controlled by <a href="../dbpub/natperson.asp?p=740">Richard Li 
Tzar Kai</a>, son of Li Ka Shing. So HK is probably stuck with the not-so-smart 
meters until 2030.</p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=133763">HKT Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=32">Economics</a></li>
				
				<li><a href="/dbpub/subject.asp?c=180">Road transport</a></li>
				
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