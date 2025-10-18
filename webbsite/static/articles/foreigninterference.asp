
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

<script type="text/javascript">document.title="Ignore the argument, blame the foreigners";</script>

	<div class="summary">Is the pro-democracy movement in Hong Kong really just a devious foreign plot to undermine the future prosperity of China?</div>

<h2 class="center">Ignore the argument, blame the foreigners<br>
<span class="headlinedate">14 October 2014</span></h2>
<p>One of the repeated themes from Beijing and its supporters in the current 
battle for democracy in HK is that the whole democracy movement is just a 
foreign plot executed by foreign agents in Hong Kong. Whenever someone who is 
not a Chinese national speaks on the subject, they are carrying out &quot;foreign 
interference in Chinese affairs&quot;, unless they happen to coincide with Beijing's 
view, in which case they are likely to be welcomed with open arms and have their 
views promoted through official media.</p>
<p>Attacks on the motives, backgrounds or source of funds of critics are the 
last resort of any government (elected or not) that cannot defend its policies, 
whatever the subject. Rather than address the arguments and defend the 
indefensible, they just attack the critics, and it's always easier to do that if 
the critics are foreign, or can be linked to foreigners. Just wrap yourself in 
the flag and blame foreign influence.</p>
<p>So Argentina's government
<a href="http://www.bbc.com/news/world-latin-america-28587653" target="_blank">
blames its debt default</a> on foreigners rather than on its past economic 
policies; Venezuela's government
<a href="http://www.telegraph.co.uk/news/worldnews/southamerica/venezuela/10359267/As-socialist-dream-crumbles-Venezuelans-find-Nicolas-Maduro-a-bad-copy-of-Chavez.html" target="_blank">
blames the USA</a> for its economic collapse and
<a href="http://www.huffingtonpost.com/2013/09/18/maduro-spiderman-venezuela-violence_n_3949942.html" target="_blank">
blames Spiderman</a> (yes really) for its violent crime wave; and China's 
government blames foreigners for &quot;making&quot; HK citizens want democracy and 
supporting their efforts financially. The Central People's Government insults 
the intelligence of HK Chinese citizens by claiming that they are mere tools of 
foreigners.</p>
<p>Democratic societies, almost by definition, believe (by majority) that 
democracy is a good thing, or at least better than authoritarianism, otherwise 
they would vote (for one last time) to abolish democracy and that would be the 
end of it. So it is not surprising then, that through their governments, they 
openly, and sometimes covertly, seek to promote these ideas to non-democratic 
parts of the world.</p>
<p>The US Government partly funds the
<a href="http://www.ned.org/" target="_blank">National Endowment for Democracy</a> 
and the US and <a href="https://www.ndi.org/supporters" target="_blank">many 
other governments</a> partly fund the
<a href="https://www.ndi.org/" target="_blank">National Democratic Institute</a>. 
The <a href="https://www.democracyendowment.eu/" target="_blank">European 
Endowment for Democracy</a> is funded by the European Union and many member 
states. Other support for democracy comes from individual philanthropy such as 
George Soros' <a href="http://www.opensocietyfoundations.org/" target="_blank">
Open Society Foundations</a>, and yes, from sometimes covert sources to avoid 
the very attacks we are talking about. These organisations in turn are fully 
entitled to support those who agree with their views.</p>
<p>China is, similarly, fully entitled to advance its world view through its 
overseas media channels, by funding overseas NGOs, or whatever methods it 
chooses, as long as it complies with local laws. So if it wants to establish or 
fund NGOs which advocate a one-party state and abolition of civic freedoms in 
the USA or EU, then it is perfectly entitled to do so. We don't think these 
ideas would gain much traction though, and ironically China would only be able 
to make its case because the USA and EU have those civic freedoms which China 
lacks.</p>
<p>Closer to home, it is an open secret that pro-Beijing business people have 
long-financed the <a href="partyfinance.asp">best-funded party in HK</a>, 
the <a href="../dbpub/articles.asp?p=4689">Democratic Alliance for the 
Betterment and Progress of HK</a>. We
<a href="../codocs/DABPHK1303ar.pdf" target="_blank">published</a> their latest 
accounts yesterday. They even
<a href="http://www.scmp.com/print/news/hong-kong/article/1483750/hk138m-bid-successful-future-calligraphy-beijings-top-representative" target="_blank">
hold dinners</a> where they pay silly prices for autographs by senior mainland 
officials here. That's a win-win proposition - make the officials feel good 
about their brushwork while pouring money into the party coffers and gaining some goodwill. That's all fine with us - but when 
a pro-democracy business person donates to pro-democracy parties, then he gets accused of 
corrupting politicians and is <a href="../dbpub/articles.asp?p=1832">publicly visited by the 
ICAC</a>.</p>
<p>Meanwhile back in the People's Republic, the Government denies its people the 
right to speak, assemble and publish freely, and denies them access to all 
independent media coverage of the debate in Hong Kong. If the Chinese leadership 
truly believed that its authoritarian system of Government is better suited to 
China today than democracy would be, then it would have no fear of removing 
mainland reporting restrictions, removing censorship of the internet, and 
letting its own people debate the way forward and then conclude that the 
unelected government of the Communist Party of China is indeed a better way 
forward than democracy. But that's not what the leadership truly believes, is 
it?</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

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