
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

<script type="text/javascript">document.title="Non-dispersable gatherings";</script>

	<div class="summary">We hereby "sternly clarify" that the Police and Secretary for Justice are wrong to claim that groups of 4 standing more than 1.5 metres apart constitute a single gathering if they have a common purpose. The Group Gathering Regulation allows for multiple, non-dispersable gatherings and contain no reference to the purpose of participants. We also show how to optimise use of available space.</div>

<h2 class="center">Non-dispersable gatherings<br>
<span class="headlinedate">28 April 2020</span></h2>
<p>This will hopefully soon become an academic point regarding a lapsed 
Regulation (see <a href="COVID2.asp">yesterday's article</a>), but it is worth pushing back against the ludicrous interpretation by 
the Police and the Secretary for Justice of
<a href="https://www.hklii.hk/eng/hk/legis/reg/599G/" target="_blank">Regulation 
599G</a> (<strong>R599G</strong>, Prevention and Control of Disease (Prohibition 
on Group Gathering) Regulation), currently due to expire at the end of 
7-May-2020.</p>
<p>In an
<a href="https://www.info.gov.hk/gia/general/202004/26/P2020042600603.htm" target="_blank">
announcement</a> on Sunday (26-Apr-2020), the Police stated:</p>
<blockquote>"Rumours suggest that there is no violation of the regulation under 
Cap.599G as long as a person participates in a public event in a group of no 
more than four persons and such group distances itself 1.5m from other persons 
participating in the same event. <strong>Police sternly clarify that as long as 
the persons gather for a common purpose</strong> in public place, it is 
irrelevant whether the participants have kept a distance of 1.5m from each other 
or between each small group of four; such public event consisting of more than 
four persons is still a prohibited group gathering and all the participants will 
commit the offence under Cap.599G." (our bold)</blockquote>
<p>And at a
<a href="https://www.info.gov.hk/gia/general/202004/27/P2020042700717.htm" target="_blank">
media briefing</a> yesterday, Teresa Cheng Yeuk Wah, the Secretary for Justice (<strong>SJ</strong>) 
answered (<a href="https://news.rthk.hk/rthk/en/component/k2/1523056-20200427.htm" target="_blank">video 
here</a>):</p>
<blockquote>"you were talking about the Cap. 599G regulation. Generally, insofar 
as the public gathering idea is concerned, it means that people gather together 
for a <strong>common purpose</strong> and whether that is met will depend on a 
number of circumstances of a particular case. For example, whether they were so 
organised; whether they were discussing and proceeding in an interactive and 
connected way..." (our bold)</blockquote>
<p>Allow us to "sternly clarify" that in our view, the Police and SJ are talking 
utter rubbish and are conflating two separate and unrelated laws.</p>
<p><a href="https://www.hklii.hk/eng/hk/legis/reg/599G/s2.html" target="_blank">
Section 2</a> of R599G defines "group gathering" as "a gathering of more than 4 
persons", but does not contain a definition of a "gathering". However, a definition can 
be inferred from
<a href="https://www.hklii.hk/eng/hk/legis/reg/599G/s10.html" target="_blank">
Section 10</a>, which allows an authorized officer to disperse a gathering if it 
is a "dispersable gathering" which it defines as follows:</p>
<blockquote>"For subsection (1)(b), if the distance between any participant 
of <strong>a gathering</strong> in a public place and any participant of <strong>
another gathering</strong> in the place is less than 1.5 m, and the total number 
of participants of <strong>the gatherings</strong> is more than 4, then <strong>each of 
the gatherings</strong> is a dispersable gathering." (our bold)</blockquote>
<p>This clearly implies that there can be multiple gatherings (each of 4 or 
less) in the same 
place, but they are not dispersable unless they are less than 1.5 metres apart. 
It refers to "gatherings" in the plural. It logically follows from this that a 
"gathering" must involve people who are each less than 1.5 metres from at least 
1 other member - even if they are stretched out in a line.</p>
<p>This is also consistent with the
<a href="https://www.gld.gov.hk/egazette/pdf/20202416e/egn2020241616.pdf" target="_blank">
directions</a> issued by the Secretary for Food and Health under 
Regulation 599F, which requires restaurant tables to be spaced by at least 1.5 
metres or to have "some form of partition which could serve as an effective 
buffer".</p>
<p>We must "sternly clarify" that neither of these Regulations contains any 
reference to a "common purpose" as the Police and the SJ fancifully imagine. The virus doesn't care 
what your purpose of being somewhere is, nor does it care whether people at two neighbouring 
tables, or at two neighbouring gatherings, know each other, or have agreed to be 
nearby at the same time. What matters is 
the separation between groups of 4 or less, in a restaurant or in a space, to reduce 
the risk of virus transmission. These emergency 
Regulations are made under
<a href="https://www.hklii.hk/eng/hk/legis/ord/599/s8.html" target="_blank">Section 8</a> of the Prevention and Control of Disease 
Ordinance (<strong>PCDO</strong>), and they can <strong>only</strong> be made:</p>
<blockquote>"for the purposes of preventing, combating or alleviating the 
effects of the public health emergency and protecting public health."</blockquote>
<p>Obviously, the intent or purpose of people in gatherings is irrelevant to the 
question of whether their activity endangers public health. If the Police want to investigate other offences, such as "unauthorized 
assembly" under
<a href="https://www.hklii.hk/eng/hk/legis/ord/245/s17A.html" target="_blank">
Section 17A</a> of the Public Order Ordinance (<strong>POO</strong>), then they 
can do so. Under the POO, the existence of a "purpose" or "common purpose" is relevant to the 
determination of whether a "meeting" or "public gathering" is taking place, but it is entirely irrelevant to R599G, and to suggest otherwise is to 
mislead the public. Both the Police and SJ should retract their statements.</p>
<p>We note that both the SJ and the Chief Executive in her
<a href="https://isd.wecast.hk/vod/?id=10544" target="_blank">briefing today</a> 
raised the issue of strangers queueing for a bus or boarding an elevator as an 
example of lacking a common purpose. In fact, R599G does envisage that to be a 
group gathering, because it was deemed necessary to exempt "group gathering for 
the purposes of or related to transportation"
<a href="https://www.hklii.hk/eng/hk/legis/reg/599G/sch1.html" target="_blank">
in Schedule 1</a>.</p>
<p>People in gatherings should be in compliance with, and non-dispersable under, R599G if no gathering 
exceeds 4 and if each gathering is at least 1.5 metres 
from another gathering. Interestingly, Israel has introduced similar 
regulations, and a protest against their Government
<a href="https://www.theguardian.com/world/video/2020/apr/20/israelis-hold-socially-distant-protest-against-netanyahu-video" target="_blank">
was held</a> in Tel Aviv in compliance, with everyone standing 2 metres apart on 
a square grid.</p>
<div class="leftpicbox">
<img src="../images/trianglegrid.png" alt="Triangular grid">
</div>
<p>A square grid isn't optimal, by the way: you can pack in an extra roughly 15% 
(2/SQRT(3)) if you stand on a triangular grid, so that each person (or 
gathering), apart from the 
edge-cases, is equidistant to 6 other people. Just pick 2 other people and stand 
on the corner of an equilateral triangle with them, and your grid will 
self-assemble. And yes, if you stare at it hard, you should see something 
recognisable to most Israelis.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=63405">Hong Kong Police Force</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=27751">Cheng, Teresa Yeuk Wah</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=15">Law</a></li>
				
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