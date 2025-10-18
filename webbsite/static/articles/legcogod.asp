
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

<script type="text/javascript">document.title="LegCo - who's got religion?";</script>

	<div class="summary">There were 19 oath-taking Christians in last week's LegCo swearing in, 7 non-religious oaths, and 44 affirmations. So who believes in a higher power than Beijing?</div>

<h2 class="center">LegCo - who's got religion?<br>
<span class="headlinedate">16 October 2016</span></h2>

<p>While all the attention at last Wednesday's Legislative Council 
<a href="http://webcast.legco.gov.hk/public/en-us/SearchResult?MeetingID=M16100003" target="_blank">swearing-in</a> 
was on the 3 rejected legislators, we decided to analyse it a 
different way. In fact, under the
<a href="http://www.hklii.hk/eng/hk/legis/ord/11/" target="_blank">Oaths and 
Declarations Ordinance</a>, there are two ways to take the pledge, either an 
"oath" or an "affirmation". Under 
<a href="http://www.hklii.hk/eng/hk/legis/ord/11/s5.html" target="_blank">Section 
5</a>, an oath may be taken in the 
following form:</p>
<blockquote>"The person taking the oath shall hold the New Testament, or, in the 
case of a Jew, the Old Testament, in his uplifted hand, and shall say or repeat 
after the officer administering the oath the words "I swear by Almighty God that 
", followed by the words of the oath prescribed by law."</blockquote>
<blockquote>...</blockquote>
<blockquote>"Provided that, in the case of a person who is neither a Christian 
nor a Jew, the oath may be administered in any manner which is appropriate to 
his religious belief"</blockquote>
<p><a href="http://www.hklii.hk/eng/hk/legis/ord/11/s7.html" target="_blank">
Section 7</a> allows the alternative of making an affirmation instead of taking 
an oath and states:</p>
<blockquote>"A person who is neither a Christian nor a Jew shall be permitted to 
make his affirmation instead of taking an oath for any purpose for which an oath 
is required by law."</blockquote>
<p>This also applies to any person who objects to being sworn - presumably 
including a Christian or a Jew who prefers to take an affirmation. It states:</p>
<blockquote>"An oral affirmation shall commence - </blockquote>
<blockquote>"I, [name] , solemnly, sincerely and truly declare and affirm"</blockquote>
<blockquote>and then proceed with the words of the oath prescribed by law, 
omitting any words of imprecation or calling to witness."</blockquote>
<p>In other words, without the god stuff. This alternative actually harks back to the 
English law
<a href="http://www.british-history.ac.uk/statutes-realm/vol7/p152" target="_blank">
Quakers Act of 1695</a>.</p>
<p>So what we actually saw on Wednesday was not 70 oaths (3 of which were 
rejected), but:</p>
<ul>
	<li>19 oaths by Christians (we did not spot any Old Testaments);</li>
	<li>7 oaths by people who are neither Christian nor Jews, or prefer not to 
	say, because they took the oath but simply said "I swear that...", rather 
	than "I swear <em>by almighty god</em> that..."; and</li>
	<li>44 affirmations</li>
</ul>
<p>Amongst the 19 oath-taking Christians it appears that 10 pan-democrats have faith in a higher power, just not in 
Beijing, while 9 
pro-government legislators believe in both. They are, in 
<a href="http://www.legco.gov.hk/yr16-17/english/counmtg/agenda/cm20161012.htm" target="_blank">order of 
seniority in LegCo</a>:</p>
<table class="txtable center">
	<tr>
		<td>Name</td>
		<td>Gov/<br>Dem</td>
	</tr>
	<tr>
		<td>James To Kun Sun</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Abraham Shek Lai Him (aka Abraham Razack)</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Tommy Cheung Yu Yan</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Priscilla Leung Mei Fun</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Regina Ip Lau Suk Yee</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Michael Tien Puk Sun</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Frankie Yick Chi Ming</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Charles Peter Mok Nai Kwong</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Alice Mak Mei Kuen</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Dennis Kwok Wing Hang</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Helena Wong Pik Wan</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Martin Liao Cheung Kong</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Lam Cheuk Ting</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Holden Chow Ho Ding</td>
		<td>G</td>
	</tr>
	<tr>
		<td>Shiu Ka Chun</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Pierre Chan</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Ted Hui Chi Fung</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Sixtus Leung Chung Hang</td>
		<td>D</td>
	</tr>
	<tr>
		<td>Roy Kwong Chun Yu</td>
		<td>D</td>
	</tr>
</table>
<p>Of these, Martin Liao held the Bible but omitted "by almighty god" from his 
oath. Each of Lam Cheuk Ting, Ted Hui and Roy Kwong didn't hold the Bible "in 
his uplifted hand" as required, and Shiu Ka Chun held the Bible and a tambourine 
which he proceeded to use after the oath to commemorate the
<a href="symbolic.asp">umbrella movement</a>.</p>
<a href="https://www.youtube.com/watch?v=OeP4FFr88SQ" target="_blank">
<img class="center" alt="Shiu Ka Chun" src="../images/ShiuKaChun161012.jpg"></a>
<p>Sixtus Leung Chung Hang took the religious oath but was disqualified for 
wearing a banner around his shoulders bearing the words "Hong Kong is not 
China", which, of course, is technically true, Hong Kong is only a little pimple 
of freedom on the bottom of China. What the LegCo Secretary-General failed to 
notice was that Sixtus was also crossing his fingers while reading the oath, 
which some people do when they are seeking to invalidate a promise being made:</p>
<a href="https://www.youtube.com/watch?v=W83InivbUSQ" target="_blank">
<img class="center" alt="Sixtus Leung" src="../images/SixtusLeung161012.jpg"></a>
<p>Seven other members took an oath without the Bible, simply saying "I swear 
that...". They presumably took the "any manner which is appropriate to his 
religious belief" option. Colourful
<a href="http://www.scmp.com/article/650443/lawyers-tourism-candidacy-private-travel-agency-challenged" target="_blank">solicitor/travel 
agent</a> Paul Tse was one of them, carrying 
a red-covered book the identity of which remains a mystery to us and wearing a 
black pseudo-military top. Unlike religion, it has to be seen to be believed:</p>
<a href="https://www.youtube.com/watch?v=78N2SP6JFaI" target="_blank">
<img class="center" alt="Paul Tse" src="../images/PaulTse161012.jpg" >
</a>
<p>Incidentally, only 5 legislators gave their oaths or affirmations in 
English, the other official language of Asia's World City, namely: Abraham Shek/Razack 
(real estate), Kenneth Leung Kai Cheong (accounting), Claudia Mo Man Ching (who 
wins our award for the most cheerful oath or affirmation), Sixtus Leung and Yau 
Wai Ching - although the latter two were disqualified.</p>
<p>And the irrepressible <a href="quat.asp">"Dr" Elizabeth Quat</a> is 
back.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=6610">HKSAR Legislative Council</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=134957">Chan, Pierre (1976)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17494">Cheung, Tommy Yu Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=57735">Chow, Holden Ho Ding</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=34487">Hui, Ted Chi Fung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14748">Ip Lau, Regina Suk Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=37397">Kwok, Dennis Wing Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41767">Kwong, Roy Chun Yu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2503951">Lam, Cheuk Ting</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=30639">Leung, Priscilla Mei Fun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2628278">Leung, Sixtus Chung Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=21223">Liao, Martin Cheung Kong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=27904">Mak, Alice Mei Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22637">Mok, Charles Peter Nai Kwong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11600">Shek, Abraham Lai Him</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=135385">Shiu, Bottle Ka Chun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2409">Tien, Michael Puk Sun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17185">To, James Kun Sun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46389">Tse, Paul Wai Chun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=63204">Wong, Helena Pik Wan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=26111">Yick, Frankie Chi Ming</a></li>
				
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