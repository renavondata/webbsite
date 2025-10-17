
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

<script type="text/javascript">document.title="Facebook, Big Brother and China";</script>

	<div class="summary">The political and media furore over external use of Facebook data misses the point. Facebook, Google and other internet giants know far more about their users than any app developer ever will. Facebook offers its own political ad-targeting service based on its analysis of users' data, just part of its over US$40bn of annual monetisation of users through advertising. It's a price that users appear willing to pay for the services, but in authoritarian states like China, with it's pending "Social Credit System" that poses a far bigger threat to society.</div>

<h2 class="center">Facebook, Big Brother and China<br>
<span class="headlinedate">23 March 2018</span></h2>

<p>There's been a lot of renewed global coverage in the last few days of how 
data on about 270,000 Facebook users of a psychological profiling app, and 50 
million of their friends, was collected by a Cambridge University psychologist,
<a href="../dbpub/positions.asp?p=12975195">Aleksandr Spectre</a> (<strong>Dr 
Spectre</strong>, fka Aleksandr Kogan), working as a director of a small firm he 
co-founded called <a href="../dbpub/orgdata.asp?p=4974423">Global Science 
Research Ltd</a> (<strong>GSR</strong>), then passed on to
<a href="../dbpub/orgdata.asp?p=13023858">Cambridge Analytica</a> (<strong>CA</strong>) 
and allegedly used to target voters with customised ads and messaging during the 
2016 US Presidential primaries and election. The story actually dates back to at 
least 11-Dec-2015 when the Guardian
<a href="https://www.theguardian.com/us-news/2015/dec/11/senator-ted-cruz-president-campaign-facebook-user-data" target="_blank">
wrote</a> about how CA (funded by hedge fund billionaire
<a href="../dbpub/natperson.asp?p=13034349">Robert 
Mercer</a>) had been working for Ted Cruz. That was before Cruz dropped out of the 
race and Mercer switched his support to Trump.</p>
<p>A UK Parliamentary committee has called for Mark Zuckerberg, Facebook's 
CEO, to tesify, and at home, US congressmen are making similar requests. 
Facebook has made a show of
<a href="https://newsroom.fb.com/news/2018/03/suspending-cambridge-analytica/" target="_blank">
suspending</a> CA and its part-owner, <a href="../dbpub/orgdata.asp?p=2654162">
SCL Group Ltd</a> (<strong>SCL</strong>, fka Strategic Communication 
Laboratories Ltd) from advertising on the platform. Mr Zuckerberg has embarked 
on a classic "this is not who we are"
<a href="http://money.cnn.com/2018/03/21/technology/mark-zuckerberg-cnn-interview/" target="_blank">
charm offensive</a> to limit the reputational damage from what Facebook says was 
usage beyond the terms of its user agreement. On the other hand, via an email 
reportedly
<a href="https://www.bloomberg.com/news/articles/2018-03-21/facebook-app-developer-kogan-defends-his-actions-with-user-data" target="_blank">
obtained by Bloomberg</a>, Dr Spectre (no, he's not a Bond villain) says that 
his inital non-commercial app became a commercial app allowing commercial usage 
when GSR was incorporated and Facebook was told of this and didn't object. On 
30-Apr-2015, after GSR had already collected its data, Facebook
<a href="https://techcrunch.com/2015/04/28/facebook-api-shut-down/" target="_blank">
changed its system</a> to prevent data on friends of app users being passed to 
apps.</p>
<p>All of this misses the point. Whatever information GSR and CA gleaned about 
50 million users, it is only a tiny fraction of the information held on them, 
and on 2 billion users (32% of the global population outside China), by Facebook itself. And Facebook knows the value of 
this data. There's a reason why regular users don't have to pay anything to use 
Facebook, its subsidiary Instagram and its vast collection of data centres and 
army of software engineers - they are being monetised by Facebook itself, to the 
tune of over US$40bn of advertising per year, notably including political 
campaign advertising. If users were not already aware of that, they are now.</p>
<h3>Who needs CA to target voters when Facebook will do it for you?</h3>
<p>Facebook has a dedicated commercial site,
<a href="https://politics.fb.com/" target="_blank">politics.fb.com</a> (in the
<a href="https://web.archive.org/web/20170128031539/https://politics.fb.com/" target="_blank">
internet archive</a> since 28-Jan-2017),&nbsp; aimed at those who run campaigns, 
titled "Connect with constituents and voters on Facebook". In the
<a href="https://politics.fb.com/ad-campaigns/" target="_blank">Ad Campaigns</a> 
section, it offers to "Find your voters on Facebook" and in a page of that, it 
offers "<a href="https://politics.fb.com/ad-campaigns/turnout/" target="_blank">Political targeting</a>", boasting that "Facebook offers a variety of 
targeting options to help you effectively reach voters". It has divided Facebook 
users into 5 categories ranging from "very liberal" to "very conservative", 
presumably based on statistical analysis of what they read on the site, who 
their friends are, where they work or even what they write. Facebook also offers 
three subgroups of users (liberal, conservative and moderate) who "are actively 
engaged with public political content" (presumably based on what they read and 
click on the site) and "have a high propensity to reshare content". Facebook 
tells advertisers that these users-who-share-a-lot are "effective for amplifying 
your message".</p>
<a href="https://politics.fb.com/ad-campaigns/turnout/" target="_blank">
<img class="center" style="max-width:512px" alt="Facebook political targeting service" src="../images/FBtargeting.png"></a>
<p>So ironically, all that Facebook is doing by restricting app-developers' 
access to its users' information is increasing its own value proposition to 
political advertisers, allowing campaigners to reach voters in a more targeted 
way than newspapers and broadcasters could ever provide in the past. Gone are 
the days when newspaper barons and their editorials had the highest influence 
over public opinion. Now it's all about data, focussed messaging and individual 
targetting to swing the marginal votes. And who needs to employ CA when you can 
pay Facebook directly to reach your electorate? It comes as little surprise then 
to find one of the co-founders and former directors of GSR, Joseph Andrew 
Chancellor, now
<a href="https://research.fb.com/people/chancellor-joseph/" target="_blank">
working in-house</a> at Facebook as a quantitative psychologist, one of many 
that Facebook employs to work on studying and exploiting its data cache on 
users' activity and behaviour.</p>
<p>Some of the same politicians who now want to have a media circus grilling Mr 
Zuckerberg will undoubtedly be spending campaign dollars or pounds on Facebook's 
political targeting service during their next election. It's rank hypocrisy.</p>
<p>Facebook is not alone in the scope of data it has on individuals. Other 
internet giants including Google possess similar data. Although Google doesn't 
have a meaningful presence in social media (<a href="https://plus.google.com/" target="_blank">Google 
Plus</a> is an also-ran), they own the biggest email platform (Gmail), one of 
the two top smartphone platforms (Android), the dominant search engine, the 
biggest ad network and vast troves of data on anyone who uses them. The reason 
that Google can, for example, tell you how congested a road is this evening is 
not because they have roadside sensors but because at any given time large 
numbers of smartphone users running Android or having installed Google Maps on 
their iPhone will be making their way along the road at measurable speeds, 
transmitting their locations. Similarly, the crowdedness of bars, restaurants 
and tourist attractions is predictable based on data collected from users.</p>
<h3>Big Brother and China</h3>
<p>Whether users are OK with this is a personal judgment they make, or at least
<em>should be</em> making, when using the services. In open and democratic 
societies, perhaps users are less worried about what large corporations, who can 
be secretly compelled to hand over data to the state, know about them. Users are 
protected by the rule of law, after all. If they are going to see advertising in 
exchange for content, storage and functionality, then they would rather see 
relevant than irrelevant advertising alongside their web pages, emails, photos, 
videos and other files. Most citizens are not criminals and not concerned about 
what the state knows - they just want to share their holiday photos and chat 
with each other and in groups via a convenient platform, knowing that Facebook 
can mine and exploit their data.</p>
<p>But in authoritarian states such as China which control what their citizens 
can see and which lack a reliable rule of law, such networks pose a bigger 
threat. <a href="../dbpub/orgdata.asp?p=21290">Tencent</a>, for example, with its billion active accounts, knows the social 
graph of China, who your friends and associates are, where you go, what you 
spend (if you use their payment app) and what you say to each other and in 
groups on the censored chat platform. Similarly
<a href="https://en.wikipedia.org/wiki/Sina_Weibo" target="_blank">Sina Weibo</a>. 
The state security apparatus has access to all of this on demand, as well of 
course as access to data from the mobile phone operators. So even if you stay 
off the Tencent grid, if you use the phone network then the state will know a 
lot about anyone you call who is a user of these platforms, as well as being 
able to profile you based on your repeated common location with other users. All 
of this data is likely to be accessible to the state in China's forthcoming 
Orwellian
<a href="http://www.wired.co.uk/article/chinese-government-social-credit-score-privacy-invasion" target="_blank">
Social Credit System</a>, a combination of credit rating with mass surveillance. 
Knowledge is power. No wonder then that China won't allow Facebook into the 
game.&nbsp; </p>
<p>So let's not get hung up about what GSR, Cambridge Analytica or any other app 
developer knows about you. Facebook, Google and the other internet giants know 
far more, and that's what makes them so valuable, both to advertisers and to the 
Governments of 
states in which they operate.</p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=13023858">CAMBRIDGE ANALYTICA LLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5182132">CAMBRIDGE ANALYTICA(UK) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1899708">Facebook, Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4974423">GLOBAL SCIENCE RESEARCH LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2654162">SCL GROUP LIMITED (b2005-07-20)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20516">Sina Corporation</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21290">TENCENT HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=12975197">Chancellor, Joseph Andrew</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13034349">Mercer, Robert Leroy</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12975195">Spectre, Aleksandr</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=174">Privacy</a></li>
				
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