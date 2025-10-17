
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

<script type="text/javascript">document.title="Yes Pope Frank, we can mock faiths";</script>

	<div class="summary">Pope Francis says its OK to punch someone who insults his mother, and we cannot make fun of faith. No, it's not. No insult justifies an assault, whether it's an insult against you, your mother or Muhammad, and whether it is a punch, a massacre or a state-sponsored flogging. Laws against blasphemy, insult and mockery have no place in an open society and incentivise intolerance of free speech.</div>

<h2 class="center">Yes Pope Frank, we can mock faiths<br>
<span class="headlinedate">17 January 2015</span></h2>
<p>If you are offended by criticism of religion, or of your religion, then 
either close your browser now or be duly warned, because we are going to 
exercise more freedom of speech than you might like.</p>
<p>Pope Francis (the professional name of
<a href="http://en.wikipedia.org/wiki/Pope_Francis" target="_blank">Jorge Mario 
Bergoglio</a>) has been buzzing around Asia this week on a promotional tour for 
his organisation, the Catholic Church. In between visiting franchises in 
Indonesia and the Philippines, Pope Frank chatted with reporters on the plane. 
In the context of the recent massacre of the staff of French satirical magazine
<a href="http://en.wikipedia.org/wiki/Charlie_Hebdo" target="_blank">Charlie 
Hebdo</a> and of the police who were protecting them, a reporter asked his 
Chiefiness:</p>
<blockquote>"yesterday at mass you spoke about religious freedom as a 
fundamental human right. But in the respect for the different religions, up to 
what point can one go in freedom of expression? That too is a fundamental human 
right."</blockquote>
<p>To which he pontificated in part:</p>
<blockquote>"Let's think, if a member of parliament or a senator 
doesn't say what he thinks is the right path then he does not collaborate for 
the common good. Not only these, but many others too. We have the obligation to 
say openly, to have this liberty, but without giving offence, because it is 
true, one cannot react violently.</blockquote>
<blockquote>But if Dr. Gasbarri (the papal trip organizer who 
was standing beside him), a good friend, says a bad word against my mother, then 
a punch awaits him. But it's normal, it's normal. One cannot provoke, one cannot 
insult other people's faith, one cannot make fun of faith...</blockquote>
<blockquote>And so many people who speak badly about other religions, 
or religions [in general], they make fun of, let's say toy with [make into toys] 
other people's religions, these people provoke and there can occur what would 
happen to Dr. Gasbarri if he said something against my mother. That is, there is 
a limit. Every religion has dignity; every religion that respects life, human 
life, the human person. And I cannot make fun of it. This is a limit and I have 
taken this sense of limit to say that in freedom of expression there are limits, 
like that in regard to my mother"</blockquote>
<blockquote>(<a href="http://www.theguardian.com/world/video/2015/jan/15/pope-francis-faith-freedom-expression-charlie-hebdo-paris-video" target="_blank">partial 
video</a> on the Guardian web site,
<a href="http://en.radiovaticana.va/news/2015/01/15/pope_francis_says_there_are_limits_to_freedom_of_expression/1118400" target="_blank">
transcript</a> on Vatican Radio)</blockquote>
<p>Well, sorry to offend you Frank, but your mother gave birth to an 
authoritarian idiot, and no, that insult doesn't give you the right to punch us. 
No insult justifies an assault, whether it's an insult against you, your mother 
or Muhammad, and if you go down that path, then you are on the 
way to saying that the Charlie Hebdo cartoonists had it coming to them, or that 
wives who insult their husbands deserve to be beaten. You are in essence saying 
that people cannot make fun of religions because of the way that their followers 
might react with violence, and the more fun we make of them, the worse it would 
get. And seriously, get a new outfit. That white smock makes you look like a cross between
<a href="http://en.wikipedia.org/wiki/Tom_Wolfe#The_white_suit" target="_blank">
Tom Wolfe</a> and a geriatric ice-cream saleswoman. OK, insults done. That last 
one was just to make the point. Really, we do like ice cream and did not wish to 
offend any ice-cream saleswomen. And we like your outfit too. It 
hides your tummy nicely.</p>
<p>Of course, the Pope is talking his own book - no religious leader likes their 
organisation being ridiculed - it tends to undermine them, and all of them will 
claim that "faiths" have a special place within society, unlike other groundless 
beliefs such as astrology, feng shui or palm-reading which lack organisations to 
advocate their protection. Religious leaders say that their religions have a "right" 
not to be insulted or mocked by others - what religions often call 
"blasphemy", and they claim that this is necessary to protect the feelings of 
their followers, rather than their market share. Some religions are or were so 
powerful that they succeeded in shaping the "right" into a blasphemy law to 
limit criticism. Dictators and monarchs tend to use similar laws to 
insulate themselves or their regimes against criticism and scrutiny. Just ask 
Raif Badawi, currently
<a href="http://www.bbc.com/news/world-middle-east-30856403" target="_blank">
being flogged</a> in Saudi Arabia for insulting Islam.</p>
<p>Blasphemy laws make it easier to sustain organisations built on a 
complete lack of scientific evidence for their central claims. Such laws have 
now been abolished in many secular countries, but
<a href="http://www.scmp.com/print/news/hong-kong/article/1336852/uk-barrister-anthony-lester-calls-legal-test-case-protect-free-speech" target="_blank">
not Hong Kong</a>, where blasphemous libel could still land you in jail. The 
biblical take on blasphemy, which called for death by stoning to offenders, is 
found in the Old Testament, Leviticus, 24:13-16:</p>
<blockquote>"The LORD then said to Moses: "Take the blasphemer 
outside the camp, and when all who heard him have laid their hands on his head, 
let the whole community stone him. Tell the Israelites: Anyone who curses his 
God shall bear the penalty of his sin; whoever blasphemes the name of the LORD 
shall be put to death. The whole community shall stone him; alien and native 
alike must be put to death for blaspheming the LORD'S name.""</blockquote>
<p><a href="http://en.wikipedia.org/wiki/Galileo_Galilei" target="_blank">Galileo 
Galilei</a> is perhaps the most famous scientist to have run up against the 
power of the Catholic Church with his heretic Copernican heliocentric view of 
the universe, which went against the church's geocentric teachings. After trial 
by the Roman Inquisition he spent the final years of his life under house 
arrest. <a href="http://en.wikipedia.org/wiki/Giordano_Bruno" target="_blank">
Giordano Bruno</a> is less well known but went further, theorising that the 
stars were just distant suns surrounded by their own planets which might 
harbour life, and that the universe was infinite. He also held the heretic view 
that Mary was not a virgin but was just your typical unmarried girl who got 
pregnant and came up with a rather original excuse by blaming it on the holy 
spirit (or at least, on a few shots of tequila down the pub). After a 7-year 
trial which makes Rafael Hui's look like an open-and-shut case, Bruno was burned 
at the stake.</p>
<p>Religions are just the survivors of ancient cults which competed for 
mindshare to explain things which are either unanswerable or could not (at the 
time) be explained with evidence-based scientific methods - such as the origin 
of species, until Darwin came along with natural selection. Fewer people today 
cling to the literal belief that the world and its species were created in 7 
days or that all humanity is descended from two people and their incestuous 
children, but we can still argue about what, if anything, "happened" before the 
big bang, what is consciousness, or (and this is a "killer application" for 
religions) whether there is an afterlife and what you can do now to make it a good 
one. Religions also tend to capitalise on the inherent randomness of the world - 
typhoons, illness and disasters are sent by your god to test or punish you, 
while all the good things in life come from him. Or her. But mostly him. It's 
kind of a win-win situation if you are in the faith business.</p>
<p>Despite the gradual rollback of theology by scientific investigation 
and discovery, people haven't stopped trying to launch new cults/religions, or 
attempting spin-offs. Perhaps the last successful one to gain traction was 
Joseph Smith's Mormon spin-off of Christianity, although science fiction writer 
L. Ron Hubbard had a good crack at starting one from scratch with
<a href="http://en.wikipedia.org/wiki/Xenu" target="_blank">Xenu</a> and the 
deceptively-named Scientologists.</p>
<p>Religious violence is incentivised by laws that restrict free speech. 
Such laws raise the expectations of the people they purport to protect, 
increasing their intolerance of criticism and legitimising their outrage against those who break them, often resulting in 
violence and deaths in the name of their god. In modern open societies, laws against criticism, mockery, ridicule 
or insult have no place.</p>
<p>As for your Popiness, next Christmas we will send you a DVD of the
<a href="http://en.wikipedia.org/wiki/Monty_Python's_Life_of_Brian" target="_blank">
Life of Brian</a>, if you promise not to hunt down the Monthy Python crew and 
punch them. In the meantime, here is a clip to whet your appetite. You have the 
right to your beliefs, and we have the free speech right to mock them, however 
rude or impolite that may be. You don't have a right not to be offended by free 
speech.</p>
<div class="videobox">
	<iframe src="//www.youtube.com/embed/ZNeq2Utm0nU?rel=0" allowfullscreen></iframe>
</div>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2372083">Bergoglio, Jorge Mario</a></li>
				
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