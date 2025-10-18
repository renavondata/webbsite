
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

<script type="text/javascript">document.title="30 years in Hong Kong";</script>

	<div class="summary">This seems like a suitable time for an update from our founder.</div>

<h2 class="center">30 years in Hong Kong<br>
<span class="headlinedate">15 July 2021</span></h2>
<p>30 years ago today, as a young banker, I moved to Hong Kong - one of my 
better decisions. Here I made my home, my fortune and my family, and hopefully 
gave something back to make HK a better place than it would have been - we each 
do what we can, and that's what makes a cosmopolitan city.</p>
<p>Sadly, I doubt that I would make the same decision if I were 25 today. HK may 
have better days ahead, but for now, increasing government economic 
intervention, a rollback of political rights and the red iron fist of 
authoritarianism are sucking the dynamism out of the city and making it a far 
less welcoming place, not just for international immigrants to HK, but for our 
brightest local minds planning their future and deciding whether it lies in HK.</p>
<p>Many of my predictions in "<a href="outcome.asp">The most 
likely outcome for HK</a>" (3-Sep-2019) have come to pass, thankfully without 
material bloodshed. The civil service, legislature and district councils have 
been, or are being, cleansed of pandemocrats in a kind of inverse McCarthyism. 
Pro-democracy media have either been shut or are self-censoring. In schools, the 
Liberal Studies curriculum has been replaced with "Citizenship and Social 
Development", and teachers are being watched more closely. In universities, 
Student Unions are being derecognised. The public broadcaster RTHK has been 
reined in (although I still appear on its air, while I can).</p>
<p>There's nothing we can do about the politics and authoritarianism until 
China itself is ready for change, but within the new framework, HK can move back 
towards free-market policies and away from central planning if its policy-makers 
so choose. There's no reason why an authoritarian Government can't overcome 
entrenched monopolies and remove legislative barriers to competition, for 
example. Indeed, with a compliant legislature it should be easier in some 
respects. Trying to nudge them in that direction is where I will focus my 
remaining quota of "public interest" time,
<a href="editor200608.asp">health permitting</a>.</p>
<p>On that subject, I won't be providing regular updates, but 13 months in, I've bought myself 
some time with life-extending drugs, managing the cancer to maintain a decent 
quality of life, punctuated every 4 weeks by a drug "depot" injection (jelly in 
my belly) and a couple of days of discomfort, watching more Netflix than I 
should. And pills, lots of expensive pills, which I am fortunate to afford. This 
combined androgen deprivation therapy, also known as chemical castration, 
deprives hormone-sensitive prostatic cancer cells of testosterone until they 
mutate to become "castration-resistant", hopefully not for another few years.</p>
<p>The therapy strains to convert men into boys, reversing puberty with 
interesting but minor side-effects. I am ever more youthful, the
<a href="https://en.wikipedia.org/wiki/The_Curious_Case_of_Benjamin_Button_(film)" target="_blank">
Benjamin Button</a> of corporate governance. When the treatment fails, other 
weapons can be deployed, some of which are still in development. The longer I 
survive, the better the available treatments will be, so it's a race to stay 
ahead of the disease. Every month in which my PSA chart (and other key readings) 
remain flat and don't look like a stock bubble is a bonus.</p>
<h3>Coming soon: the China Bubble</h3>
<p>Speaking of bubbles, today is another beautiful but scorching day in HK - the air is clear, as is 
more often the case now, and we must give the Government some credit for curbing 
emissions - better late than never. Sadly, no visitors are allowed (even if 
vaccinated), and we are all trapped in the COVID-free SAR bubble, although the 
continuing emergency regulations would imply that COVID lurks around every 
corner - even if you're a vaccinated person lying on a beach, you risk a fine 
without a masked tan line.</p>
<p>Anyone who leaves the country must do
<a href="https://www.coronavirus.gov.hk/pdf/concise_guide_vaccinated_travellers_ENG.pdf" target="_blank">
hotel quarantine</a> on return, even if they are fully vaccinated. HK residents 
cannot return from certain
<a href="https://www.coronavirus.gov.hk/eng/inbound-travel.html" target="_blank">
"A1" countries</a>, including the UK, resulting in bizarre schemes like the "<a href="https://www.cathaypacific.com/cx/en_GB/offers/collection/wash-out-fares.html" target="_blank">wash-out 
fare</a>" now being advertised by Cathay Pacific which requires you to spend 4-6 
weeks getting home and released from quarantine. It might be easier to charter a 
cruise ship and sail from Southampton. Many HK residents we know have simply 
given up trying to return this summer and are instead enjoying the parts of the world where 
COVID rules are being scrapped or relaxed, replaced with sensible guidance. That 
must account for at least part of the net outflow in our
<a href="../dbpub/hkpax.asp?t=0&amp;p=1" target="_blank">passenger data</a>, 
along with the fairly obvious brain drain.</p>
<p>The HK and mainland Governments are inching towards opening the "boundary" 
with the mainland and Macao, at which point HK will become part of a one-Country 
"China bubble", isolated from the rest of the World until mainland authorities 
are ready to open up. We would guess 1-Oct-2021 (National Day) for the China 
Bubble to open, and 1-Jul-2022 for international visitors to China (including HK 
&amp; Macao). We expect that the Beijing Winter Olympics, scheduled to start on 
4-Feb-2022, will either be postponed or for teams-only, arriving into a 
strictly-quarantined bubble.</p>
<p>Catch me tomorrow morning on
<a href="https://www.rthk.hk/radio/radio3/programme/backchat" target="_blank">
RTHK's Backchat</a> for more on this subject.</p>
<p>David M Webb<br>Founder, Webb-site.com</p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=35">Immigration</a></li>
				
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