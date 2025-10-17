
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

<script type="text/javascript">document.title="HK is running out of time to re-join the World";</script>

	<div class="summary">As our Editor sits in the air-lock waiting to re-enter HK, he looks at the now-unconstitutional quarantine regulations and the harm they are doing to HK.</div>

<h2 class="center">HK is running out of time to re-join the World<br>
<span class="headlinedate">5 May 2022</span></h2>
<p>When, early on 20-Mar-2022, I left HK for the first time in over 2 years, 
daily reported local COVID cases were already down 85% from the early-March peak 
above 56k. As I gingerly set foot into the no-way-back
<a href="https://www.hongkongairport.com/en/media-centre/press-release/2021/pr_1569" target="_blank">
Orange Zone</a> of the airport, I was making two bets: first, that the insane 
flight ban from 9 countries would be lifted, avoiding a 4-week 
"washout+quarantine" journey home to HK; and second, that by the time I had to 
get home for my next cancer treatment, COVID would be endemic in HK and the 
quarantine regime would be history.</p>
<p>Well, I got the first bet right; the next day, the Government
<a href="https://gia.info.gov.hk/general/202203/21/P2022032100446_389626_1_1647847110940.pdf" target="_blank">
announced</a> that it would lift the 9-country flight ban on 1-Apr. However, on 
the second bet, here I am six weeks later, writing this from a quarantine hotel, 
for reasons that have nothing to do with public health.</p>
<p>Yes, the Government did shorten quarantine to 7 days, mirroring the 
discharge period for infected residents and their close contacts if they are 
RAT-negative on days 6 and 7. That removed the anomaly
<a href="https://twitter.com/webbhk/status/1497591978246082560" target="_blank">
we noted on 26-Feb</a>, that an arriving passenger who tested positive could be 
discharged in 7 days while one who tested negative throughout had to quarantine 
for 14 days. But quarantine is still captivity, and it still has to be in 
hotels, despite the COVID outside them, while close contacts of local cases can 
isolate at home if living conditions permit.</p>
<p>Daily reported case rates are now down to just a few hundred and will bump 
along there despite relaxations of social distancing. The virus is running out 
of soft targets as most residents are well-vaccinated and/or inoculated by 
infection. For the latter, almost all of them were infected in the 5th wave and 
are brimming with antibodies. So it is patently obvious that we are ready to 
open our international border. Inbound quarantine can no longer be justified on 
public health grounds, which was the legal basis for such Regulations being made 
under the <a href="https://www.hklii.hk/eng/hk/legis/ord/599/" target="_blank">
Prevention and Control of Disease Ordinance</a> (Cap.599).</p>
<p>There is also the small matter of constitutionality if, like myself, 
you want to uphold the Basic Law. HK residents have a right of return under
<a href="https://www.basiclaw.gov.hk/en/basiclaw/chapter3.html" target="_blank">
Basic Law Article 31</a>, and that right is infringed by the testing and 
quarantine requirements. Rights are not absolute, but any infringement must 
satisfy a
<a href="https://www.doj.gov.hk/en/publications/pdf/basiclaw/basic15_2.pdf" target="_blank">
proportionality test</a>, being rationally connected to a legitimate objective 
and no more than is necessary to achieve that objective. With COVID now endemic, 
the Quarantine Regulations now crash into the second hurdle - they no longer 
protect HK public health. Even if HK reaches COVID-zero again, with so many 
people vaccinated and/or inoculated, the harm of Quarantine Regulations to 
individual rights is disproportionate to the societal benefits of avoiding COVID 
cases indefinitely (for the nitty-gritty, see
<a href="../dbpub/artlinks.asp?s=11796">Hysan Development v Town Planning Board</a>, 
2016).<br><br>Laws aside, the only policy reason for maintaining inbound 
quarantine is to reach zero-COVID so that (the theory goes) the Mainland will 
allow HK people to enter the Mainland without quarantine. But for HK people, 
that's a matter of convenience, not public health, and in any case it remains 
theoretical because for the last 7 months of 2021, HK had zero local cases and 
despite that, the Mainland refused to open the boundary. Now, the Mainland is 
fighting its own outbreaks, and if HK reaches zero then it would risk infection 
by opening the boundary anyway.<br><br>As I sit here, triple-vaccinated and in 
quarantine after my voyage from the outside and increasingly-free World, the 
futility of all this is very apparent. The World has moved on. Neighbours 
Singapore and Malaysia no longer require tests or quarantine for vaccinated 
travellers to enter. Rightly they have realised that testing people to enter a 
population where COVID is endemic is pointless. Before COVID, most countries 
never required negative measles, flu or HIV tests as a condition of entry. Some 
countries, including UK and Denmark, don't even require proof of COVID 
vaccination to enter; you swim in the sea at your own risk.</p>
<p>"But what about keeping out new strains?", some ultra-conservative "experts" 
say. Well, if we took that approach then we would never open up. COVID is very 
likely to be around in variations forever, as influenza is. Only one virus in 
humans, smallpox, has ever been eradicated (also, rinderpest in cattle). This is 
not a reason to stay closed, and improving vaccines and treatments will mitigate 
the risks.<br><br>We must accept that the Mainland, for its own multiple 
reasons, not least the political capital the leadership has attached to "Dynamic 
Zero", is not yet ready to open up, despite the increasing socio-economic costs 
of lockdowns. The difference with HK is that the Mainland has not experienced a 
full-blown COVID exit wave, while HK has. The majority of our surviving elderly 
are either vaccinated or were inoculated by infection during the 5th wave.</p>
<p>Even among the over-80s, a cohort of about 391,400 people, our daily
<a href="../dbpub/vax.asp?t=&amp;v=1&amp;c=8&amp;s=">vaccination chart</a> shows 
that 65.5% have had their first vaccine dose, while 83.0% of the 70-79 group 
have had their first dose. You can bet that a significant portion of the 
unvaccinated elderly are either recovering from COVID after it swept through 
care homes, or are too ill with other diseases to be vaccinated anyway. The 
Government can no longer hide behind that human shield as a reason to keep HK 
off the map.<br><br>For HK, remaining closed amounts to tying us to an 
unsustainable short-dated strategy. Even the Mainland will eventually have to 
open. As the only Chief Executive candidate John Lee
<a href="https://apnews.com/article/covid-health-asia-pacific-elections-hong-kong-50f934aadca5e73c3001ef147b9102e1" target="_blank">
said last week</a>, "COVID-19 will pass no matter what". There's no reason for 
HK to hold itself back after its people have been through so much. We should 
open our international border, and start using that 3-runway airport and cruise 
terminal again, without quarantine and regardless of vaccination status. The 
Mainland will catch up when it is ready, but we cannot afford to be left behind 
by the rest of the World.</p>
<p>With no end in sight, "Asia's World City" has become "Asia's Isolated 
City", to the benefit of our regional competitors. Once talent and corporations 
make a decision to incur the extensive costs of relocation, we can't expect them 
to incur those costs again and return. Not least, that's because past 
governmental behaviour is a guide to the future. If HK lacks the "high degree of 
autonomy" to do the right thing for its residents and businesses on this 
occasion, then we must assume that HK will follow mainland strategy in future 
pandemics, wherever they begin, and isolate the city again.</p>
<p>As a former COVID-zero city, Singapore in many ways has set the gold 
standard for emergence from the pandemic: clear messaging from the Premier to 
the people (examples on
<a href="https://www.channelnewsasia.com/singapore/pm-lee-full-speech-covid-19-path-new-normal-2232531" target="_blank">
9-Oct-2021</a> and
<a href="https://www.straitstimes.com/singapore/politics/a-decisive-move-towards-living-with-covid-19-pm-lees-full-speech" target="_blank">
24-Mar-2022</a>), early purchase of the two MRNA vaccines, and a road-map to 
opening which incentivised vaccine take-up. Setting aside all the other factors, 
which place will growing corporations entrust with their regional headquarters 
in future?</p>
<p>Outgoing Chief Executive Carrie Lam could at least do one last thing to 
at least partially redeem the
<a href="https://www.reuters.com/article/us-hongkong-protests-lam-transcript-excl-idUSKCN1VX0P7" target="_blank">
"huge havoc</a>" in her wake. Stop the quarantine, Carrie, and let the World 
back in, before it is too late.</p>
<p>David M Webb<br>Founder, Webb-site.com</p>
<p><em>&copy; Webb-site.com, 2022</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1952426">Lee, John Ka Chiu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
		</ul>
	
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