
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

<script type="text/javascript">document.title="Admiralty address";</script>

	<div class="summary">Here's the speech by Webb-site founder David Webb to the crowd in Admiralty last night.</div>

<h2 class="center">Admiralty address<br>
<span class="headlinedate">12 October 2014</span></h2>
<p>The following is the text of an address by Webb-site founder David 
Webb to the protesters in Admiralty on the evening of Saturday 11-Oct-2014:</p>
<a href="http://www.youtube.com/watch?v=RtvlBS4PMF0" target="_blank" title="click for entertainment">
<img class="center" alt="" src="../images/admiraltyPanoramaS.jpg"></a>
<p>Hello Hong Kong! Show me some light [smartphone LED]. You <u>are</u> the 
stars!</p>
<p>My fellow citizens,</p>
<p>Hong Kong is Asia's World City, isn't it? Do we love Hong Kong? Say Yes! 
Say Hello World! Are you patriots? You are all qualified!</p>
<p>I have lived in Hong Kong for 23 years since 1991, which is longer than 
many of you have been alive. Hong Kong is my home. I have spent the last 16 years trying to make 
it a better place for all of us, and I will never stop trying.</p>
<p>We have one of the world's leading financial centres. The Government 
claims to believe in free markets and competition, but where is the free market 
in leadership? Competition between candidates and their policies is essential 
for the healthy development of our economy.</p>
<p>Don't worry about the small economic impact of these protests. Think 
about the large economic benefits of a more dynamic economy, ending collusion 
between the Government and the tycoons who currently elect the Chief Executive. 
When 70 old tycoons visit Beijing for instructions, you just know something is 
wrong. It should be the Great Hall of the People, not the Great Hall of the 
Tycoons.</p>
<p>A free market for the Chief Executive really is not too much to ask.</p>
<p>In 2012, Albert Ho Chun Yan was a candidate for Chief Executive, and in 
2007 Alan Leong Kah Kit was a candidate for Chief Executive. Each time, the 
candidate needed nomination by one eighth of the election committee. That is a 
reasonable threshold. It works.</p>
<p>Beijing raised the nomination threshold from one eighth to 50%, making it 
four times harder for a candidate to get nominated. Is that gradual and orderly 
progress? Of course not, it is a great leap backwards.</p>
<p>We don't need civic nomination if we can restore the nomination threshold 
to 1/8 of the committee, instead of 50%. Don't insist on civic nomination, just 
insist on a fair nomination process. Fairness is all that we really want.</p>
<p>The people of Hong Kong don't want independence. We just want to elect 
the Government of our very special administrative region in China. We want it to 
be the People's SAR, in the People's Republic of China.</p>
<p>Under the Basic Law, China can even refuse to appoint the elected leader, 
if it wishes, and if it dares.</p>

<div class="leftpicbox" style="max-width:300px">
	<img alt="" src="../images/webbSpeaks.jpg">
</div>
<p>Fellow citizens, I admire your courage, your strength, and your 
persistence. Night after night, you have come out to tell the Government what 
you believe. They said you were fading away. Last night you proved them wrong. 
Let's make every Friday Democracy Friday!</p>
<p>We may speak different languages, Cantonese and English, the two official 
languages of Hong Kong. But it doesn't matter, because the language of protests 
is the only language that Beijing understands. We showed them that with Article 
23 in 2003. We showed them that with National Education in 2012, and we will 
show them that with Democracy protests in 2014! Protests will produce change.</p>
<p>The Chief Executive has one last chance to regain your respect. 
<a href="../dbpub/natarts.asp?p=1680">Leung Chun Ying</a>, 
if you are watching this in your hotel room in Guangdong - oh wait, you can't, 
can you? Well if you can hear us, you must file a new report to Beijing, on the 
"Actual Situation in Hong Kong", and you must recommend true universal suffrage. 
And if Beijing loves Hong Kong as much as we do, then it will grant us <u>true</u> 
universal suffrage.</p>
<p>Look around you tonight. This is real. This <u>is</u> the "Actual 
Situation in Hong Kong". Without democracy, no Chief Executive, whoever she is, 
will have a popular mandate, and we cannot resolve the deep-rooted problems of 
Hong Kong, and these protests will happen again and again.</p>
<p>If you are a university student, as I once was, then please, keep protesting, but also 
keep studying. You owe that to the people of Hong Kong who are subsidizing your 
education. Not every person your age has the brains and the privilege to go to 
university. Most people your age already have to work. Make the most of your 
brain. Go to your classes, and come to protests after class - you will need your 
education, because you are today's students but you are tomorrow's leaders.</p>
<p>The battle for democracy may not be won overnight. It may be a long 
battle, but I have no doubt, no doubt at all, that we will eventually win, and 
Hong Kong will be a better, fairer and more harmonious place.</p>
<p>There is no large economy in the world with high levels of prosperity 
that does not have democracy. So if China wants world-class prosperity, and not 
the current 20% of world-class, then it must have democracy and the civic 
freedoms that go with it. Freedom of speech, freedom of assembly, and freedom of 
the media. China today is like a leaking boat in a vast ocean of corruption. 
Arresting corrupt officials will not stop the leak, and eventually the boat may 
sink. Without increasing prosperity, the one-party state cannot keep the people 
happy forever. There will be no prosperity without democracy. Where Hong Kong 
leads today, China will follow in future.</p>
<p>China's leaders need to be smart about that. Deng Xiaoping said, it is OK 
for some regions of China to get rich before others. President Xi Jinping, you 
should say, that it is OK for some regions to have democracy before others. Now 
it is time, it is our time, for Hong Kong to have true democracy, the first 
region in the People's Republic. We have waited long enough. China should be 
proud of this. What is good for Hong Kong will eventually be good for China.</p>
<p>Power to the people of Hong Kong!</p>
<p>Thank you for listening!</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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