
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

<script type="text/javascript">document.title="SFC's neighbours will celebrate";</script>

	<div class="summary">The SFC, to the relief of fellow tenants, is reportedly set to move out of Chater House in June 2013. We ask why the police and their masters have been so reluctant to enforce the Noise Control Ordinance against protestors, and what tenants and passers by at their reported new home can look forward to. The landlord, controlled by HK's biggest tycoon, has 7 listed companies and 2 REITs in the group, all ultimately regulated by the SFC, so there is a risk of future perceived conflicts of interest which it would have been better to avoid.</div>

<h2 class="center">SFC's neighbours will celebrate<br>
<span class="headlinedate">22 August 2011</span></h2>
<p>Local
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=114387&amp;con_type=1" target="_blank">
press reports</a> suggest that the Securities and Futures Commission is moving on 
from Chater House, owned by Hongkong Land Holdings Ltd (<strong>HKL</strong>). Apparently the landlord 
proposed a renewal rent of HK$180 per sq ft per month, which is even higher than in the nearby International Finance Centre. The high rent demand may be a subtle 
message to get out - fellow tenants of the grade-A building are probably less 
than happy with the commotion that the SFC has attracted to the building's 
entrance from disgruntled purchasers of various financial products (or possibly 
from rent-a-mobs funded by others with a grudge against the regulator), 
including loud banging of drums, megaphones and posters demonizing the SFC's 
directors. The SFC found it necessary to have its own elevator guarded by men in 
berets at the ground floor, in the elevator and on the 8th floor landing.</p>
<p>Here's a video of said protests that we took in Dec-2010:</p>
<div class="videobox">
<iframe src="https://www.youtube.com/embed/CkHZomKG5Eg?rel=0" allowfullscreen></iframe>
</div>
<p>All of this begs the question of whether the right balance is being struck 
between the right of people to protest and the right of other people not to have 
their peace disturbed. It is not as if this was just a passing 1-day march - these protests went on for months, and the noise at 
street level made it impossible to conduct a conversation as one walked by. The 
Vulgari jewellery shop in the building (seen at the end of the video) must have 
been delighted at their choice of location. 
Other protests have been held outside various banks, or in some cases, inside 
them.</p>
<p>In our view, the police should have drawn the line at megaphones, drums 
and gongs for disturbing the peace, but allowed the peaceful displays of posters 
and placards in public areas as 
long as they were not obstructing the public right of way, on the understanding 
that unattended material would be removed. Instead, Hong Kong's finest stood 
back -&nbsp; apparently their masters were terrified of being accused of 
interfering with free speech in HK (unless of course, that free speech takes 
place near a visiting mainland leader). The same goes for the near-permanent 
Falun Gong protestors with their noise pollution on Battery Path near the Court 
of Semi-Final Appeal.
<a href="http://www.hklii.org/hk/legis/en/ord/400/s5.html" target="_blank">
Section 5 of the Noise Control Ordinance</a> makes it an offence to play a 
musical instrument, loudspeaker or megaphone in a public place which is a source 
of annoyance to any person, with a fine of up to HK$10,000.</p><p>Anyway, the net result of all this, say 
reports, is that the SFC 
is moving to the <a href="http://www.cheungkongcenter.com/" target="_blank">Cheung Kong Center</a>, which, despite its name, is owned by
<a href="../dbpub/articles.asp?p=366">Hutchison Whampoa Ltd</a> (<strong>HWL</strong>, 0013) and not 
by its largest shareholder, <a href="../dbpub/articles.asp?p=488">Cheung Kong 
(Holdings) Ltd</a> (<strong>CKH</strong>, 0001). The building is fondly known as 
&quot;The Box the Bank of China Came In&quot; for its somewhat boring-but-practical 
shape 
and its location across the road from the iconic tower with the rugby posts on 
the roof. CKH is controlled by tycoon Li Ka-shing, who has his office (with 
swimming pool with retractable roof) on the top floor. We wonder whether 
loud protests will be as tolerated outside this building as they have been outside Chater House. 
Fellow tenants include his second-favourite bank Goldman Sachs (just below the big man) and Bloomberg. 
The double glazing will keep the noise out, but the public seeking to enjoy the 
open space and nearby garden might not be so lucky. Incidentally, that space was 
created when the colonial government sold the old Beaconsfield House and a car 
park to HWL, which owned the Hilton Hotel where the tower now stands, without a 
tender, for HK$3.02bn in 1996. That's where the plot ratio came from to allow 
the 62-storey 1.26m gross sq ft building.</p>
<p>Of course, moving into a property owned by a HK-listed company does create 
the potential for perceived conflicts of interests - particularly if they find themselves 
negotiating rents or renewal at the same time as some future regulatory action against 
one of the 7 listed companies and 2 REITs in the group (or their directors) is pending. That risk never existed 
with Chater House, because the Jardine-controlled landlord shifted its primary listing from HK to London in 1992 
and then delisted altogether in 1995. Today the shares mostly trade in 
Singapore. The SFC was in Edinburgh Tower, another HKL asset, until 
Jun-2003, when it
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=03PR41" target="_blank">moved</a> into the new Chater House 
for 10 years starting 1-Jul-2003.</p>
<p>So it appears that the SFC will be moving at the 
end of Jun-2013. No word yet on which floors they are taking, or who is making 
room for them by moving out of the Cheung Kong Center, but at a reported 100,000 
sq ft, they need about 5 floors. Don't all rush at once! Depending on the altitude, they could be taking 
supervision to a whole new level.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=488">CK Hutchison Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=506">HONGKONG LAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
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