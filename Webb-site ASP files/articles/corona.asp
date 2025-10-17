
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

<script type="text/javascript">document.title="Carrie Lam risks international travel ban on HK residents";</script>

	<div class="summary">Once again Mrs Lam is putting "One Country" ahead of "Two Systems". By keeping a porous border while imposing an unprecedented lockdown within HK, we risk an escalation of confirmed cases of 2019-nCoV and a consequent inclusion in the entry bans now imposed by Singapore and USA which other countries are likely to follow. Mrs Lam, stand up for Hong Kong.</div>

<h2 class="center">Carrie Lam risks international travel ban on HK residents<br>
<span class="headlinedate">1 February 2020</span></h2>
<p>In quick succession,
<a href="https://www.sgpc.gov.sg/sgpcmedia/media_releases/mnd/speech/S-20200131-2/attachment/Remarks%20by%20Minister%20Lawrence%20Wong%20Co-chair%20of%20the%20Ministerial%20Taskforce%20on%20the%20Wuhan%20Coronavirus%20at%20National%20Press%20Centre%20on%2031%20Jan%202020%20final.pdf" target="_blank">
Singapore</a> and the
<a href="https://www.cnbc.com/2020/01/31/white-house-to-hold-briefing-on-coronavirus-friday-afternoon.html" target="_blank">
USA</a> yesterday announced entry (and transit) bans on foreign nationals 
(excluding permanent residents and immediate family) who have visited mainland 
China in the last 14 days and advising home-quarantine of nationals and 
permanent residents who have been there, in an effort to reduce the spread of 
the Wuhan Coronavirus. The US will also impose mandatory quarantine on any US 
citizen who has been in Hubei Province in the prior 14 days.</p>
<p>HK Chief Executive Carrie Lam continues to resist such a ban on 
entry to HK by non-HK residents, limiting the ban only to non-HK residents who have 
visited Hubei Province in the prior 14 days. Yesterday
<a href="https://www.info.gov.hk/gia/general/202001/31/P2020013100808.htm" target="_blank">she said</a> that a ban on 
all non-HK residents would be "discriminatory" 
- as if discriminating against Hubei residents isn't. 
<a href="../codocs/World200131-1800.pdf" target="_blank">Yesterday's data</a> show 5806 
cases in Hubei Province and a total of 3976 in other provinces/regions - so it 
is clearly now a national issue and the non-Hubei cases may overtake Hubei in 
the coming days and then rise to reflect the much larger population (Hubei is 
about 60m, China about 1.4bn). The figures include 436 cases in Guangdong, of which 134 cases 
are in Shenzhen, next to the border with HK. Many Shenzhen residents have
<a href="https://www.scmp.com/print/news/hong-kong/article/1764274/shenzhen-imposes-once-week-limit-cross-border-visits-permanent" target="_blank">
multiple-entry permits</a> allowing 1 visit to HK per week.</p>
<p>Despite this relaxed approach to the border, the HK Government has put the city into unprecedented 
levels of lockdown that are entirely inconsistent with keeping the border so 
open. It's either an emergency or it isn't. Schools which were due to reopen 
after Chinese New Year on Monday (3-Feb) will not now open until at least 2 
March. Museums, sports facilities, HK Disneyland and Ocean Park are all closed. 
Non-essential Government workers have been ordered to "work" from home and many 
public-facing services have been shut down. Even during SARS, such measures were 
milder. All of the burden of reducing transmission of the virus is being placed 
on HK residents, without protecting them by barring non-Hubei visitors from the 
mainland.</p>
<p>Mrs Lam is once again putting national unity and "One 
Country" ahead of "Two Systems" - something that she demonstrated in spades 
during the Extradition Bill saga. She has a choice to make. If non-Hubei 
residents continue to travel freely into HK and our numbers of confirmed cases 
continue to rise, then it is likely that other countries including Singapore and 
USA will start to include HK residents in their visitor bans, treating us as part 
of China rather than a separate immigration territory. All HK residents will 
find themselves barred from visiting the rest of the world, unless they have a 
foreign passport, and even then, they will only be admitted by their passporting 
country and will be quarantined if they go.</p>
<p>There are still too many unknowns about the 
<a href="https://www.who.int/emergencies/diseases/novel-coronavirus-2019" target="_blank">2019-nCoV virus</a>, including its 
mortality rate, to take a more relaxed approach as the world normally would with 
seasonal influenza, which <a href="https://www.info.gov.hk/gia/general/201904/10/P2019041000667.htm" target="_blank">
killed</a> 356 HK citizens in the first 3 months of 2019 without any fuss.</p>
<p>So, Mrs Lam, for once in your life, do the right thing and stand up for Hong Kong. 
Join Singapore 
and the USA in banning entry to non-HK residents who have visited the mainland in the 
last 14 days, and impose quarantine measures on HK-residents who have.</p>
<p><em>Technical footnote</em>: the
<a href="../codocs/World200131-1800.pdf" target="_blank">PDF</a> created by the 
HK Department of Health at 17:14 on 31-Jan purports to have Guangdong case 
figures as of "January 31, 2020, 24:00". Two problems - there is no such time in 
the 24-hour clock (midnight is 00:00, a minute later is 00:01), and if there 
were, then it would be more than 6 hours after the timestamp of 17:14.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
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