
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

<script type="text/javascript">document.title="Discover COVID cases with behavioural economics, not force of law";</script>

	<div class="summary">The HK Government has again displayed its authoritarian streak by introducing a mandatory testing law. Instead, citizens and their close contacts should be compensated for as long as they are compulsorily isolated after one of them tests positive. For the self-employed, this would remove a deterrent to seeing a doctor when sick, and thereby also reduce the spread of other diseases.</div>

<h2 class="center">Discover COVID cases with behavioural economics, not force of law<br>
<span class="headlinedate">16 November 2020</span></h2>
<p>The Hong Kong SAR Government, in its efforts to eliminate the 
<a href="https://en.wikipedia.org/wiki/Severe_acute_respiratory_syndrome_coronavirus_2" target="_blank">SARS-CoV-2</a> 
virus from HK, is pursuing entirely the wrong approach to incentivise people 
with symptoms to come forward and be tested, breaking the transmission chains in 
the community. Put simply, there's no incentive to be tested, in the form of 
compensation for you and your close contacts if you are found positive. It's all 
stick and no carrot.</p>
<p>In an
<a href="https://www.info.gov.hk/gia/general/202011/14/P2020111400767.htm" target="_blank">
announcement</a> and
<a href="https://www.gld.gov.hk/egazette/pdf/202024105e/es2202024105221.pdf" target="_blank">
Gazette Notice</a> on Saturday (14-Nov-2020), the Chief Executive in Council 
made a new law which provides for "Compulsory Testing for Certain Persons". The 
Secretary for Food and Health can announce categories of people to be tested. 
Also under the new law, a medical doctor may, if she suspects that a person has COVID-19, require 
that person to take a test. The word used is "may", not "shall", but it clearly 
puts pressure on doctors to test, for fear of being accused of medical 
malpractice.</p>
<p>That might on its face seem reasonable, but the financial and social 
consequences of being found positive and put into compulsory isolation, both to 
the patient and his close contacts, can be substantial. The new law deters such 
people with COVID-like symptoms from seeing a doctor when (on current 
statistics) they are far more likely to be suffering from influenza, 
tuberculosis or other respiratory illness than COVID-19. This could lead to 
larger outbreaks and deaths from those diseases by discouraging people from 
seeing doctors as we head into winter.</p>
<p>Ask yourself this: what do
<a href="https://news.rthk.hk/rthk/en/component/k2/1541772-20200804.htm" target="_blank">
wet-market stall-holders</a>,
<a href="https://www.thestandard.com.hk/breaking-news/section/4/158914/HK-expects-23-Covid-cases,-six-local-including-four-taxi-drivers" target="_blank">
taxi drivers</a> and
<a href="https://www.dimsumdaily.hk/13-employees-at-construction-site-on-mount-kellett-road-on-the-peak-infected-with-covid-19/" target="_blank">
construction workers</a> have in common, apart from disproportionately high 
rates of COVID-19 relative to the general population? The answer is that they 
are mostly self-employed or work for a daily wage. If they don't open their 
stall, drive a cab (rented from the <a href="roadcartels.asp">
licence cartel</a>) or come to the construction site, they don't get paid. By 
contrast, how many supermarket workers, franchised bus drivers and architects 
have you heard of catching the virus in HK? The big supermarket chains and bus 
companies employ far more people than wet markets. These are people on monthly 
salaries who qualify for statutory sick pay if they are off work through 
sickness. If they are feeling unwell, they are more likely to call in sick and 
see a doctor than go to work and expose others - indeed, their employers have a 
rational self-interest in encouraging the employee to stay away to prevent 
infecting other staff.</p>
<p>Other such categories include proprietors of small family-run restaurants. At 
least 3 of these categories (taxis, wet-markets and small restaurants) are 
customer-facing in which an infectious person can see far more people in a 
typical day than the average HK worker, increasing the propagation rate of the 
virus.</p>
<h3>The COVID Isolation Compensation Scheme (CICS)</h3>
<p>To rebalance the incentives, we call on the Government to establish the "COVID Isolation Compensation 
Scheme" (<strong>CICS</strong>), to pay a 
daily allowance to anyone who tests positive for the virus and to all of their 
close contacts, for the duration of their confinement in hospital or compulsory 
quarantine. We estimate, based on a substantial premium to the local median wage, that around HK$1,000 
(US$129) per person per day would be sufficient incentive to encourage most (but not all) 
people who have symptoms to come forward for testing. This is pretty basic 
behavioural economics and will cost a tiny fraction of what other Coronavirus 
schemes have cost, including the madcap HK$81bn+ <a href="ESS.asp">
employer subsidy</a> and the $70bn+ handout of $10k to each Permanent Resident. 
Even if 1,000 people are in compulsory isolation at a time, compensating them 
will cost only $1m per day or $365m per year.</p>
<p>No sane person would deliberately get infected, endangering their life for so 
little money, and given the low case rates in HK, it would be difficult to 
deliberately get infected anyway.</p>
<p>CICS will not only increase voluntary testing of symptomatic people, but it is also just and equitable that when a government, 
by force of law, deprives you of your liberty for the benefit of others, then that government should compensate you for any 
loss arising.</p>
<p>The Chief Executive, who by now is quite comfortable with making laws outside 
of the Legislative Council, can use
<a href="https://www.hklii.hk/eng/hk/legis/ord/599/s8.html" target="_blank">
Section 8(3)(e)</a> of the Prevention and Control of Disease Ordinance (Cap. 
599) to pass CICS. This Ordinance has been used for all the other Coronavirus regulations. Section 
8(3)(c) already provides for compensation for the requisition of property (for 
example, taking over someone's ship or building as a field hospital). Section 
8(3)(e) provides for <em>"such incidental and supplementary matters as appear to 
the Chief Executive in Council to be necessary or expedient for the purposes of 
the regulation."</em> Compensating isolated persons would fall squarely into 
that.</p>
<p>For the avoidance of doubt, people returning to HK and serving 14 days' 
inbound hotel quarantine would not be eligible for CICS, as that return is a choice they 
make.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

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