
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

<script type="text/javascript">document.title="The Prize for China";</script>

	<div class="summary">We look at what Liu Xiaobo's 2010 Nobel Peace Prize could mean for the future of the Chinese leadership and the future prosperity of the people in a more open society. Will the next Chinese winner be a leader, not a dissident?</div>

<h2 class="center">The Prize for China<br>
<span class="headlinedate">9 October 2010</span></h2>
<p>From one activist to another, we cannot resist commenting on yesterday's 
award of the
<a href="http://nobelprize.org/nobel_prizes/peace/laureates/2010/" target="_blank">
2010 Nobel Peace Prize</a> to Chinese democracy and human rights campaigner
<a href="http://en.wikipedia.org/wiki/Liu_Xiaobo" target="_blank">Liu Xiaobo</a>, 
who is currently serving an 11-year jail term imposed on 25-Dec-2009 for 
&quot;agitation aimed at subverting state power&quot;. His crime was to be one of the 
authors of <a href="http://en.wikipedia.org/wiki/Charter_08" target="_blank">
Charter 08</a>, a petition signed by over 350 intellectuals and activists 
demanding the right to free speech, democracy and an independent judiciary.</p>
<p>China predictably
<a href="http://news.xinhuanet.com/english2010/china/2010-10/08/c_13547668.htm" target="_blank">
reacted</a> to the award with its usual bellicose rhetoric and censored internet 
coverage and discussion of the event. Mobile text messages with Liu's name were 
reportedly blocked. Such is the success of the Great Firewall of China that many 
of the 1.3 billion citizens have no idea who Liu Xiaobo is.</p>
<p>In the same week, Premier
<a href="http://en.wikipedia.org/wiki/Wen_Jiabao" target="_blank">Wen Jiabao</a> 
gave
<a href="http://www.cnn.com/video/?/video/podcasts/fareedzakaria/site/2010/10/03/gps.podcast.10.03.cnn" target="_blank">
an interview</a> to CNN in which
<a href="http://archives.cnn.com/TRANSCRIPTS/1010/03/fzgps.01.html" target="_blank">
he said</a>:</p>
<blockquote>
	<p>&quot;I believe freedom of speech is indispensable, for any 
	country, a country in the course of development and a country that has become 
	strong. Freedom of speech has been incorporated into the
	<a href="http://english.peopledaily.com.cn/constitution/constitution.html" target="_blank">
	Chinese constitution</a> [Article 35].</p>
	<p>I don't think you know all about 
	China on this point. In China, there are about 400 million Internet users and 
	800 million mobile phone subscribers. They can access the Internet to express 
	their views, including critical views...</p>
	<p>I believe I and all the Chinese people have such a conviction 
	that China will make continuous progress, and the people's wishes for and needs 
	for democracy and freedom are irresistible. I hope that you will be able to 
	gradually see the continuous progress of China.&quot;</p>
</blockquote>
<p>Strong stuff - and spoken for an overseas audience. In mainland China, the 
interview was
<a href="http://blogs.wsj.com/chinarealtime/2010/10/07/netizens-react-premiers-interview-censored/" target="_blank">
blocked by censors</a>, so citizens don't get to hear their Premier using his 
constitutional freedom of speech to advocate, well, freedom of speech.</p>
<p>Liu Xiaobo joins an elite of activists among
<a href="http://nobelprize.org/nobel_prizes/peace/laureates/" target="_blank">
previous Nobel Peace laureates</a> including 
<a href="http://en.wikipedia.org/wiki/Nelson_Mandela" target="_blank">Nelson Mandela</a> (1993), who went on 
to be President of South Africa,
<a href="http://en.wikipedia.org/wiki/Lech_walesa" target="_blank">Lech Walesa</a> 
(1983), who went on to be President of Poland, and
<a href="http://en.wikipedia.org/wiki/Aung_San_Suu_Kyi" target="_blank">Aung San 
Suu Kyi</a> (1991), still under house arrest in Burma, who would otherwise have 
been Prime Minister after the 1990 election which her party won.</p>
<p>Liu's prize is a wake-up call to the Chinese leadership. China's huge 
economic progress since 1979 has not been accompanied by liberalization of human 
rights, particularly freedoms of speech, the media, debate and information, nor 
the establishment of an independent judiciary. In our view, these freedoms are a 
necessary condition for the sustainable future prosperity of China and its 
citizens. You can only go so far with just lifting people out of poverty. The 
low-hanging fruit has been picked. After satisfying basic needs and providing 
modern conveniences, a more affluent society has the luxury of time to wonder 
why their municipal, provincial and state authorities are so unaccountable and 
corruptible, and why the state still intervenes so much in their affairs.</p>
<p>In Hong Kong, at least
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_1.html" target="_blank">
until 2047</a>, we are privileged with all of these freedoms except the right to 
elect our own leadership. We can debate public policies freely, we can rely on 
the courts for a fair hearing, and any rare corruption of officials is quickly 
rooted out. It is only policy-making itself which remains beyond the reach of HK 
citizens who are denied a ballot box. That in itself leads to social discontent 
and sub-optimal policy choices, but imagine how much worse it would be without 
the ability to publicly criticise and debate the policies.</p>
<p>We have a sneaking suspicion that beneath the party-line exterior of Wen Jiabao, there is a reformist in him seeking to break out. His time as a 
leader expires in Mar-2013, possibly too soon to overcome the hardliners in the 
politburo, but one of his successors may put his words into action, and bring 
China into an open-society era. Don't forget, the Nobel Peace Prize has not 
always gone to dissidents. In 1993, Nelson Mandela was not the only recipient - 
he was joined by reformist South African President
<a href="http://en.wikipedia.org/wiki/Frederik_Willem_de_Klerk" target="_blank">
F.W. de Klerk</a>, who paved the road to the abolition of apartheid, and in 
1990, the prize went to reformist
<a href="http://en.wikipedia.org/wiki/Mikhail_Gorbachev" target="_blank">Mikhail 
Gorbachev</a>, President of the Soviet Union, for his role in ending the Cold 
War and opening up the Soviet Union and the
<a href="http://en.wikipedia.org/wiki/Eastern_bloc" target="_blank">Eastern bloc</a>. 
The next time a Nobel Peace Prize is awarded to a Chinese citizen, it may go to 
a leader, not a dissident.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=61235">Liu, Xiaobo (1955-12-28)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16894">Wen, Jiabao</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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