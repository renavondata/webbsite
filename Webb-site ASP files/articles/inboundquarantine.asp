
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

<script type="text/javascript">document.title="HK's inbound quarantine laws: dangerous, irrational and unconstitutional";</script>

	<div class="summary">We put our microscope on HK's inbound quarantine laws and find that the 21-day length of quarantine actually increases the risk to the community, Further, the ban on arrivals from 4 countries is irrational. Both fail to satisfy constitutional tests of proportionality.</div>

<h2 class="center">HK's inbound quarantine laws: dangerous, irrational and unconstitutional<br>
<span class="headlinedate">16 March 2021</span></h2>
<p>Let's get a few things straight about HK's inbound quarantine rules for 
people arriving from outside China:</p>
<h3>21 days is too long</h3>
<p>Other places which have succeeded in reaching and maintaining zero local 
transmission have done so with only a 14-day border quarantine. These include 
New Zealand and Taiwan. If it were possible to still be incubating the virus and 
test negative after 12 or 14 days, then there would have been outbreaks in the 
communities linked to this. So the very few cases in HK that have tested 
negative in HK on day 12 and positive on day 19 are probably caused by one of 
two factors:</p>
<h4>1. Infection during quarantine</h4>
<p>First, hotels were not designed to be isolation facilities. They often share 
ventilation systems between rooms, including bathrooms, allowing droplet spread. 
They almost always share corridors. In the Park Royal Hotel in Melbourne, 
Australia, there was a
<a href="https://www.9news.com.au/national/coronavirus-victoria-investigation-launched-into-into-melbourne-quarantine-hotel-spread/dd1a0a81-48f1-4cda-91a8-fdd424f701a8" target="_blank">
known case</a> of a woman who tested negative on days 3 and 11, but opened 
her hotel door to collect food and was infected by a family who had arrived 9 
days after her and had opened their door for food around the same time as the 
woman. She left quarantine and was later tested positive. Genomic testing showed identical virus strains in the woman and the 
family.</p>
<p>This intra-quarantine risk means that the longer you stay in quarantine, the 
more likely you are to pick up an infection from an arriving guest. Consequently, 
there is an optimal period of quarantine which is long enough to cover 
incubation if you arrive with a latent infection, but anything longer than 
that increases the danger that you will become infected during quarantine and spread it into the community.</p>
<h4>2. False positives</h4>
<p>Second, a person who has recovered from the virus may still have some fragments of it 
in their system. The RT-PCR tests (the best we have) don't actually look for 
entire viruses - they match parts of the RNA genome, so it is possible to test 
positive with just fragments of the virus. This may make testing 
difficult with recovered persons testing negative on one test and positive on 
the next one.</p>
<p>Also, HK may be using excessive Cycle Threshold (<strong>CT</strong>) 
values in the tests. Each increment of 1 in the CT value corresponds to a round 
of amplification, doubling the amount of target in the specimen but also 
doubling the noise. So if you increase the CT value of the test from 35 to 40 
then you make it 32 times more sensitive. In audio terms, turn up an amplifier 
loud enough and you might be able to hear a pin drop in the middle of a heavy 
rock concert, or what you think is a pin dropping might just be amplified noise.
<a href="https://www.publichealthontario.ca/-/media/documents/ncov/main/2020/09/cycle-threshold-values-sars-cov2-pcr.pdf?la=en" target="_blank">
Click here</a> for a more technical explanation from Public Health Ontario
<a href="https://www.nytimes.com/2020/08/29/health/coronavirus-testing.html" target="_blank">
and here</a> for an article from the New York Times on this.</p>
<h3>The ban on arrivals from some countries is irrational</h3>
<p>From 22-Dec-2020, HK has 
<a href="https://www.gld.gov.hk/egazette/pdf/202024133e/egn202024133259.pdf" target="_blank">
prohibited entry</a> for anyone who has spent more than 2 hours in the UK 
in the previous 21 days (formerly 14 days), not counting the day of boarding 
their flight to HK. 
South Africa was
<a href="https://www.gld.gov.hk/egazette/pdf/202024136e/egn202024136275.pdf" target="_blank">
added on 25-Dec-2020</a>. Brazil and Ireland
<a href="https://www.gld.gov.hk/egazette/pdf/20212514e/egn2021251432.pdf" target="_blank">
were added</a> effective 23-Jan-2021 - perhaps the Government remembered that 
Ireland has an open land border with the UK (Northern Ireland).</p>
<p>The purported objective is to prevent new variants of the virus from entering 
the HK community. This has stranded HK residents overseas, or forced them to 
find another country to visit for 21 days before flying to HK, making it a very 
expensive 43-day trip when you include the 21-day inbound quarantine. Ironically 
there was much protest when certain politicians labeled 
<a href="https://en.wikipedia.org/wiki/Severe_acute_respiratory_syndrome_coronavirus_2" target="_blank">SARS-CoV-2</a> the "WuFlu" or the "Chinese virus" but apparently no problem talking 
about the "British variant" (<a href="https://en.wikipedia.org/wiki/Lineage_B.1.1.7" target="_blank">B.1.1.7 
or 20I/501Y.V1</a>), the "South African variant" (<a href="https://en.wikipedia.org/wiki/501.V2_variant" target="_blank">B.1.351 
or 20H/501Y.V2</a>) or the "Brazilian variant" (<a href="https://en.wikipedia.org/wiki/Lineage_P.1" target="_blank">P.1 
or 20J/501Y.V3</a>) which were first found in those places.</p>
<p>The ban is irrational because:</p>
<ol>
	<li>It implies that our inbound quarantine regime doesn't prevent new 
	variants entering the community. Places with successful border quarantines 
	including New Zealand and Taiwan have not imposed such bans.</li>
	<li>It ignores the fact that just because they are popularly called "UK/ 
	South African/ Brazilian variant" doesn't mean they are limited to those 
	countries - so it is a knee-jerk response to the names. The variants are all 
	over the world. In mid-February,
	<a href="https://www.reuters.com/article/us-health-coronavirus-italy-idUSKBN2AC1ME" target="_blank">
	Italy estimated</a> that 18% of new cases were the UK variant, and
	<a href="https://www.reuters.com/article/us-health-coronavirus-france-veran-idUSKBN2AB2BJ" target="_blank">
	France 25%</a>. One mutation that is common to the variants, known as N501Y, 
	is showing up frequently in HK arrivals from the Philippines, India and 
	Pakistan - but there are no outright bans on residents returning from those and other places.</li>
</ol>
<h3>The excessive length of quarantine and the ban on arrivals are 
unconstitutional</h3>
<p>Basic Law
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">Article 31</a> states in part:
</p>
<blockquote>
	"Hong Kong residents shall have freedom of movement within the Hong Kong 
	Special Administrative Region... They shall have freedom to travel and to enter or leave 
	the Region."</blockquote>
<p>A law which restricts a Basic Law right, in this case, entry to, or movement 
within, the HKSAR, is constitutional only if it satisfies the legal tests of 
constitutional proportionality (see
<a href="https://legalref.judiciary.hk/lrs/common/ju/ju_body.jsp?DIS=45653" target="_blank">
Leung Kwok Hung &amp; Ors v HKSAR, FACC1/2005</a>) - that is, it must be rationally 
connected to a legitimate objective and be no more than is necessary to achieve 
that objective. The objective must also be sufficiently important to justify 
limiting a fundamental right.</p>
<p>Given that we know from other places that 14 days' quarantine is sufficient to 
achieve the objective of border control, 21 days is plainly more than is 
necessary and is unconstitutional.</p>
<p>Similarly, given that inbound hotel quarantine works elsewhere to 
protect communities against variants of the virus, and given that we have been 
allowing entry of people with these variants arriving from other countries, the 
sledgehammer of an outright ban on arrivals is more than is necessary to crack 
this nut.</p>
<p>Accordingly, both of these measures fail the constitutionality test. Also, 
even if a tiny number of inbound cases escape detection (or arise from 
intra-quarantine infection), it has been demonstrated here and overseas that any 
leakage into the community can be contained with trace-test-isolate measures, so 
the risk is not sufficiently important to justify further limiting the 
fundamental rights - again, the regulations are unconstitutional.</p>
<p>This risk is encapsulated in
<a href="https://www.hklii.hk/en/legis/ord/599/s8" target="_blank">Section 8</a> 
of the Prevention and Control of Disease Ordinance, which the Chief Executive 
uses to make the quarantine regulations. It requires that the disease "has a 
high probability of causing a large number of deaths in the population or a 
large number of serious disabilities". We have successfully contained 4 
outbreaks in HK with only about 200 deaths. 
The annual death rate from all causes is about 50,000. At most, it can only be 
said that allowing people to return to HK and do 14 days' quarantine has a 
"small probability of a small number of deaths" - neither is enough to justify 
extending quarantine to 21 days or banning people from returning to HK.</p>
<p>Finally, for people arriving on non-stop flights from countries with almost 
zero infections, who have not been anywhere else in the last 14 days, the risk 
of adding to HK's infection load is so small that any quarantine requirement at 
all fails to satisfy the constitutionality test. It's no more risky than someone 
travelling from Kowloon to HK Island or vice versa. Those countries should be 
recognised and exempted from the quarantine regulations. It doesn't require 
complicated ministerial "travel bubble" negotiations or testing at both ends. 
Just do it, and give people back their Basic Law rights.</p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
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