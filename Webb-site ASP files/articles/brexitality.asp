
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

<script type="text/javascript">document.title="Brexit and customs from a HK perspective";</script>

	<div class="summary">Theresa May has pursued 2 conflicting objectives: leaving the customs union; and keeping the UK/EU customs border open. HK people are used to a customs boundary with the rest of China, with no impact on sovereignty. Similarly, Northern Ireland should choose between remaining in the EU customs union post-Brexit with a boundary down the Irish Sea, or leaving the EU customs union and having a hard border with the Republic of Ireland. Only then can the UK or GB have independence in trade negotiations with other countries and deliver a proper Brexit.</div>

<h2 class="center">Brexit and customs from a HK perspective<br>
<span class="headlinedate">17 December 2018</span></h2>
<p>We've kept quiet about Brexit on <em>Webb-site Reports</em> since the people 
of the UK voted on 23-Jun-2016 to leave the European Union. Although your editor 
still has a British passport, he has no vote on Brexit or anything else in the 
UK, having lost his voting rights many years ago. That is entirely fair, because 
he is domiciled in HK and not subject to UK taxation.</p>
<p>However, we're breaking that silence to point out a few realities which 
are blindingly obvious to anyone who thinks about the customs status of the Hong 
Kong SAR and the rest of China. Sitting in HK, it has always been clear that 
there must be a hard border (or in politically-correct terms, "boundary") with 
the rest of China so long as HK is a separate customs territory from the rest of 
China (and incidentally, HK is a free port under
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Basic Law Article 114</a>). The separate customs territory (and its recognition 
by other countries) has no impact on the sovereignty of China over HK 
whatsoever. Similarly, there is no reason in principle why Northern Ireland (<strong>NI</strong>) 
cannot remain in a customs union with the EU, with a customs boundary with the 
rest of the UK (Great Britain, <strong>GB</strong>) at seaports and airports, 
whilst remaining a sovereign part of the UK.</p>
<p>Theresa May, who voted to remain in the EU, took over as Prime Minister on 
13-Jul-2016 with a circular definition that "<a href="https://www.bbc.com/news/uk-politics-36782922" target="_blank">Brexit 
means Brexit</a>" and proceeded to define it in terms that Brexit actually means 
trying to have your cake and eat it, with 2 conflicting objectives:</p>
<ol>
	<li>leaving the EU and its customs union, and thereby being able to 
	negotiate free-trade (or at least, freer-trade) agreements (<strong>FTAs</strong>) 
	with non-EU countries that are home to 93% of the world's population, as 
	well as an FTA with the EU;</li>
	<li>keeping an open border with the EU, namely the land border between 
	NI and the Republic of Ireland (<strong>RoI</strong>), without any customs 
	boundary between NI and GB (down the Irish Sea) </li>
</ol>
<p>These 2 objectives are mutually exclusive, because the EU has a strong 
customs boundary around it, with tariffs, quotas and standards on all sorts of 
imports to the EU, and that wall would be breached if goods could flow freely 
from post-Brexit UK to the EU, whether the product is originally produced in the 
UK or outside it. That concern also applies in the opposite direction if the UK 
sets tariffs which are higher than the EU's and then sees goods flowing without 
checks from RoI to NI. So in a no-deal Brexit, the EU and RoI would have no 
choice but to impose customs checks on the RoI border.</p>
<p>However long Mrs May seeks "discussions and clarifications" with the EU, she 
will never be able to deliver both of these objectives. Post-Brexit, the UK (or 
at least, GB) has to either stay in a customs union with the EU, or have a hard 
border between the EU customs union and the UK/GB's new customs regime. 
With a hard border, the UK would then be free to negotiate FTAs with other 
countries. To most people's understanding, the Brexit referendum did not include 
an indefinite customs union, with no freedom to negotiate FTAs. Even the
<a href="https://www.conservatives.com/manifesto" target="_blank">2017 
Conservative mainfesto</a> stated that the UK "will no longer be a member of the 
single market or customs union" and:</p>
<blockquote>"We believe the UK must seize the unique opportunities it has to 
forge a new set of trade and investment relationships around the world, building 
a global, outwardlooking Britain."</blockquote>
<p>Some politicians claim that there is a frictionless way to reconcile 
the 2 objectives, that would somehow allow goods to be closely monitored to 
ensure that they don't cross an invisible border into the RoI/EU without 
tariffs, quotas and compliance rules being enforced, but nobody has shown how 
this could be reliable. Even the
<a href="https://en.wikipedia.org/wiki/European_Research_Group" target="_blank">
European Research Group</a> led by Jacob Rees-Mogg has conceded that a 
"necessary measure" for an invisible border would be a "Free Trade Agreement 
with 100% tariff-free access" - and that's not possible if the UK is free to 
negotiate deals with other countries while the EU charges tariffs on imports 
from those countries.</p>
<p>If it were not for her own arrogance in seeking a fresh electoral mandate in 
2017, Mrs May could have taken a more robust approach with NI, choosing 
objective 1 over objective 2, but the election result was a hung parliament in 
which her government depends on the voting support of the 10 MPs of the NI
<a href="https://en.wikipedia.org/wiki/Democratic_Unionist_Party" target="_blank">
Democratic Unionist Party</a> (<strong>DUP</strong>), which opposes a customs 
boundary between NI and GB as well as opposing a hard land border with the RoI.</p>
<p>That is why Mrs May and the EU leaders have been kicking the can down the 
economic road. With the DUP watching over her, instead of spending the last 2 
years preparing for border checks and negotiating FTAs with other countries 
(possibly including the EU), and having those agreements ready to activate on 
29-Mar-2019, she has carried on with futile negotiations to try to keep the RoI 
border open but at the same time leave the customs union. That has weakened her 
hand, because without new FTAs ready to launch, there is nothing to offset the 
immediate economic downside of a no-deal Brexit. That weakened position now 
threatens to push the UK into the indefinite customs union, which as a remainer, 
was perhaps her strategy all along.</p>
<p>The outcome of negotiations with the EU (<a href="https://www.gov.uk/government/publications/withdrawal-agreement-and-political-declaration" target="_blank">agreements 
here, subject to ratification</a>) is a proposed transition period that lasts 
until 31-Dec-2020 with a possible extension (if a UK-EU Joint Committee agrees) 
to the end of 2021 or 2022. During transition, nothing changes on trade, and at 
the end of it there will still be no way to reconcile the 2 objectives, 
resulting in the 
automatic "backstop" which amounts to a customs union but with continued EU 
controls on the standards-compliance of goods entering NI, which will 
necessitate checks on imports across the Irish Sea from GB, at seaports and 
airports - in other words, an Irish Sea boundary that the DUP opposes. The UK 
would be bound by an international treaty not to charge lower tariffs than the 
EU charges, with no unilateral exit route from the backstop unless it breaches 
the treaty.</p>
<p>In short, the interests of the 1.9m NI population (2.9% of the UK) are being 
allowed to drive Mrs May's definition of "Brexit". It is a core "Principle of 
Consent" in the 1998
<a href="https://en.wikipedia.org/wiki/Good_Friday_Agreement" target="_blank">
Belfast Agreement</a> that there should be no change in the sovereign status of 
NI without the consent of a majority of its people. The majority of the NI vote, 
by 56% to 44%,
<a href="https://www.bbc.com/news/uk-northern-ireland-36614443" target="_blank">
was to remain</a> in the EU. While the question of customs unions and 
border-checks falls short of a decision on sovereignty, the majority-remain vote 
in NI does suggest that the customs boundary should be drawn down the Irish Sea, 
leaving NI in the EU customs union.</p>
<p>The preference of the NI people seems clear, but if there is to be another 
referendum, then in our view the most sensible one, without having a do-over of 
the entire UK vote, would be a referendum only in NI on that issue - whether, 
post-Brexit, NI should stay in a customs union with RoI and the EU, with a 
customs boundary between NI and GB; or stay in a customs union with GB, with a 
hard border between NI and RoI. Either way, this would resolve the customs 
question and allow a full Brexit for GB. That vote could be held early in the 
transition period - it doesn't need to happen before 29-Mar-2019. This assumes, 
of course, that if the referendum chooses an Irish Sea customs boundary, then 
the EU would trust the UK to operate the EU customs regime at NI seaports and 
airports, perhaps with random inspections to ensure compliance. </p>
<p>HK people, used to dealing on free-trade terms with the rest of the world 
while dealing via a customs boundary with the rest of China, would have no 
problem understanding that. Incidentally, that's a reason why all the
<a href="https://en.wikipedia.org/wiki/Newspeak" target="_blank">Newspeak</a> 
about the <a href="https://www.bayarea.gov.hk/" target="_blank">Greater Bay Area</a> 
(formerly, "<a href="https://www.cmab.gov.hk/en/archives/regional_cooperation_0201_3.htm" target="_blank">Greater 
Pearl River Delta</a>") is limited by the reality that HK, Macau and the rest of 
the GBA are in 3 separate customs and immigration territories, until such time 
as China decides to unify them into what we call the "Greater Bay SAR", in which 
case they will still need a boundary with the rest of China.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=22546186">May, Theresa Mary</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2559287">Rees-Mogg, Jacob William</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=142">Free trade</a></li>
				
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