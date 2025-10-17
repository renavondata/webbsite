
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

<script type="text/javascript">document.title="How to end HK's border lockdown";</script>

	<div class="summary">HK's economic recovery depends on fully re-opening its borders, but it can't when so few have been vaccinated. With near-zero COVID, we must use other vaccination incentives. We propose a 4-pronged solution, including a VacciLottery and an inbound travel exemption.</div>

<h2 class="center">How to end HK's border lockdown<br>
<span class="headlinedate">27 April 2021</span></h2>
<p>How are we going to get out of this mess?</p>
<p>After more than a year of closed borders and what should properly be called 
"anti-social distancing measures", and having once again driven COVID-19 to 
near-zero local cases through trace-test-isolate, the HK Government 
has yet to disclose any exit strategy from measures which are crippling 
its "World City" economy. Gone are the days of people flying in for the Rugby 
Sevens or for other international sporting events, trade fairs, exhibitions, 
arts festivals, pop concerts or just for plain business or tourism. Gone are the 
days of people flying out for a weekend in Phuket or Bali. Heck, you can't even 
visit the fellow SAR of Macau or the island of Taiwan, both of which have 
reached zero-COVID, and forget welcoming your friends and relatives to visit you 
in HK.</p>
<p>The HK Government expresses exasperation at the slow rate of 
vaccinations, but has yet to offer any meaningful incentive to vaccinate. With 
near-zero local infection rates, vaccines offer protection against a near-zero 
threat - what one might call a "nondemic", with a non-zero risk of side effects, 
including common, temporary but unpleasant aches or fever, and very rare but 
dangerous thrombosis. That is such a delicate balance between risk and reward 
that many citizens are taking a wait-and-see approach. The Government is stuck 
in a loop - keep the place clean, and a lot of people won't want the vaccine, 
but if we don't increase vaccination rates, then opening the border risks a 
surge of infections. So we have to change the incentives.</p>
<h3>Hotel cross-infections - as we were saying</h3>
<p>Meanwhile, returning residents, even if fully vaccinated, are subject to a 
draconian 21-day hotel quarantine (unless returning from the mainland, Macau or 
Taiwan) and umpteen tests: 1 before arrival, and several afterwards. This is the 
"price of zero" - a gross invasion of the Basic Law freedom of movement under
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">
Article 31</a>, all to keep COVID out.</p>
<p>Other clean places have managed with 14 days' quarantine, and given the 
now clear evidence of cross-infections during hotel quarantine, a 21-day period 
actually increases the risk of hotel cross-infection by 50% as well as 
increasing the risk of releasing virus into the community when a cross-infected 
person leaves quarantine before testing positive. We warned about this in
<a href="inboundquarantine.asp">our article</a> of 16-Mar-2021, and 
a clear
<a href="https://www.news.gov.hk/eng/2021/04/20210420/20210420_172600_542.html" target="_blank">
case emerged</a> in HK at the Ramada Hong Kong Grand Hotel, Tsim Sha Tsui, on 
20-Apr-2021 when a person who had returned from Dubai and stayed on the same floor as 2 
other cases tested negative on day 19 after arrival. He was released and 
then tested positive for COVID-19 when preparing to leave HK again, with a "highly 
similar" genomic sequence to the other cases.</p>
<p>3 days later, there was
<a href="https://www.scmp.com/news/hong-kong/health-environment/article/3130782/hong-kong-expecting-10-new-coronavirus-cases" target="_blank">
another case</a> who had stayed at a different hotel, the Ramada Hong Kong 
Harbour View in Sai Ying Pun, in a room next-door to 2 imported cases which 
overlapped with her stay by 4 days. Hotel cross-infection was probably the cause 
of several post-release cases in 2020 when we had a 14-day hotel quarantine - 
hotels just weren't designed to be quarantine facilities, and those that fail 
should no longer be used - yet both of these hotels can
<a href="https://www.coronavirus.gov.hk/pdf/designated-hotel-list-v3_en.pdf" target="_blank">
still be booked</a> for quarantine. Australia has suffered similar hotel 
leakages (one in Perth last week). The knee-jerk response to post-release cases 
should not be to add even more days to the quarantine period, as HK did at 
Christmas.</p>
<h3>A pseudo-travel bubble, or a real one?</h3>
<p>Yesterday's
<a href="https://www.info.gov.hk/gia/general/202104/26/P2021042600252.htm" target="_blank">
announcement</a> of a so-called "travel bubble" with another near-zero place, 
Singapore, is tied up in so much red tape that it offers little incentive to go. 
You have to be fully vaccinated before leaving HK and even then, get a negative 
test within 72 hours before departure, another one on arrival in Singapore, 
another one before returning and yet another after arriving back, waiting at HK 
airport until tested negative. It's a pseudo-bubble.</p>
<p>Contrast that with the
<a href="https://covid19.govt.nz/travel-and-the-border/quarantine-free-travel/quarantine-free-travel-with-australia/" target="_blank">
Australia-New Zealand travel bubble</a>, between 2 other near-zero places. 
There's no requirement for vaccinations or testing - they have simply chosen to 
merge their two pools of low-risk populations, using aircraft and crews that 
travel only in the green-zone between them. That is a true travel bubble, like 
the one existing between Hong Kong Island and the rest of the HKSAR - we don't 
require people to get tested when they cross the harbour, despite the risk of 
cross-infection between the two internal populations. When you merge two pools 
of low risk, you get a pool of low risk - there's no reason to think that 
someone getting on a flight to Australia from NZ, or vice versa, has a higher 
risk of carrying the virus than someone crossing between the North and South 
Islands of New Zealand. They've got it right.</p>
<p>Even if HK wants to remain stuck at zero while the rest of the World opens 
up, we should at least have true travel bubbles with Australia, NZ, Singapore, 
Macau, Taiwan, Mainland China and any other place that has near-zero COVID, with 
no testing, no quarantine and no vaccination requirements.</p>
<h3>Returning to open borders</h3>
<p>Travel bubbles are not a long-term solution if the highly-externalised HK 
economy is to revive by returning to the pre-COVID travel era. What can we do to 
incentivise vaccination within HK and fully open our borders? Here is a 
solution:</p>
<ol>
	<li>Allow test-free, quarantine-free travel into HK for people (including 
	non-residents) from any destination on condition that the person has either 
	(i) been fully vaccinated with a recognised certificate or (ii) 
	tests negative on arrival and is either a child or has a medical exemption from 
	vaccination. That would incentivise a lot of residents to get vaccinated so 
	that they can smoothly travel in and out of HK as they did pre-COVID (the 
	"Vaccinated Inbound Travel Exemption" or <strong>VITE</strong>, if you don't 
	mind a quick bit of French).</li>
	<li>Accept that VITE will lead to a small number of inbound "<a href="https://www.wxyz.com/news/coronavirus/michigan-monitoring-extremely-rare-breakthrough-cases-of-covid-19" target="_blank">vaccine 
	breakthrough</a>" infections, incentivising residents to get vaccinated 
	sooner rather than later, leading to herd immunity among HK people when we 
	hit around 70% vaccinations. Our hospitals can handle small outbreaks in the 
	meantime. Maintain the trace-test-isolate system.</li>
	<li>Boost the vaccination drive by giving a free 
	HKID-based lottery ticket to anyone who completes their vaccinations before 
	we reach 70% of the adult population. Add HK$100 to the jackpot for each 
	completed vaccination - so 100,000 people per week would generate a $10m 
	jackpot, or 200,000 a $20m jackpot, and so on. Make the draw weekly, with a 
	guaranteed winner from the HKID numbers who completed their vaccines in the 
	prior week (no rollover - the jackpot resets to zero each week). 70% of the entire adult population of 6.5m would 
	only cost about HK$455m - compared to over $87bn spent on the
	<a href="../dbpub/esstop.asp">Employment Support Scheme</a>. To be fair, 
	start with a draw for those who have already completed their vaccinations. This 
	"<strong>VacciLottery</strong>" would surely tilt the incentives in a unique 
	Hong Kong way. We could further tilt it by reducing the amount of jackpot 
	per vaccinated person each time we pass a vaccination milestone, to 
	incentivise early takers (subject to capacity).</li>
	<li>Once we reach herd immunity, drop the requirement for inbound people to 
	be vaccinated. Take highly-infectious measles as an example - we have herd 
	immunity through vaccination, but we don't require people to prove that they 
	have been measles-vaccinated when arriving here, and we can handle it when 
	occasional clusters emerge from imported cases and fizzle out into a measly 
	few cases (<a href="https://www.chp.gov.hk/files/pdf/daily_update_on_measles_cases_in_2019_eng.pdf" target="_blank">data 
	from 2019 here</a>, sorry about the pun).</li>
</ol>
<p>Returning to open borders inevitably means handling occasional small 
outbreaks of COVID, but unless and until there is a strain robust enough to 
defeat all the available vaccines and harmful enough to justify border closure, 
we should never have to return to the border lockdown we have endured in the 
last year. Mainland China should of course adopt a similar track. Cutting itself 
off from the World by almost eliminating inbound and outbound tourism is not 
helpful for greater mutual understanding and geo-political stability.&nbsp; </p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
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