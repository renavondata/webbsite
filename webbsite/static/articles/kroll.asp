
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

<script type="text/javascript">document.title="Kroll investigates our Cyberport coverage";</script>

	<div class="summary">In a development with startling implications for press freedom in Hong Kong, Webb-site.com discovers that leading private-eye Kroll has been investigating our critical coverage of the Cyberport, for an unknown client, as part of a wider on-going project. If negative journalistic criticism of a Hong Kong corporate project gets investigated in this way, then what does that say about the future of Hong Kong as a media centre, and indeed an e-portal, for Asia? Is this "press freedom with Hong Kong characteristics?"</div>

<h2 class="center">Kroll investigates our Cyberport coverage<br>
<span class="headlinedate">27 May 1999</span></h2>
<p>Last Wednesday 19th May, <i> Webb-site.com</i> received an e-mail addressed to the editor,
regarding the proposed Cyberport property development in Pokfulam, which has been awarded
without a tender process to Richard Li's Pacific Century Group, in joint venture with the
Hong Kong government.</p>

<h3>Clueless in Seattle</h3>

<p>The writer of this e-mail claimed to be &quot;<i>doing some free lance writing for a
trade journal out of Washington</i>&quot;. He later claimed to be writing for a
Seattle-based trade journal. The writer (we will call him &quot;Bob&quot; to protect his
career prospects) went on &quot;<i>As the intention of this project is to promote Hong
Kong as an international IT outpost, it is of great interest to a number of people in the
States who either do business in Hong Kong, or travel to Hong Kong frequently</i>.&quot; </p>

<p>Bob referred to negative criticism of the project from &quot;<i>a number of people</i>&quot;
and wrote &quot;<i>I will be in town for a few days and would like to meet with you and
discuss your views on this project</i>&quot;. In his e-mail, he asked us to reply to an
e-mail address at one of the web's freemail providers, yahoo.com. As regular readers will
know, we have published a number of articles about this project and the way it has been
awarded, and it would be fair to say that our views are negative.</p>

<p>&quot;So what?&quot; you might think. Well unfortunately, Bob was not perhaps as
IT-literate as an IT journalist would be. The detailed
header on his e-mail reveals that it was sent at about 2.30pm in the Hong Kong time
zone, from a PC on the Asian sub-domain of Kroll-Ogara.com. A few seconds later it passed
out through the Kroll-Ogara mail gateway in the US Eastern time zone, and then arrived at
our mail server. The wonders of modern technology meant that we were on to him from the
beginning:</p>
<div class="letterbox">
<p>X-POP3-Rcpt: david@server6000.net<br>
Received: from kroll-ogara.com ([204.80.129.33])<br>
by server6000.net (8.8.7/8.8.4) with SMTP<br>
id CAA19386 for &lt;[Webb-site.com's address]&gt;; Wed, 19 May 1999 02:29:15 -0400<br>
Received: from <strong>kohkpc37.asia.kroll-ogara.com by kroll-ogara.com</strong>
(SMI-8.6/SMI-SVR4)<br>
id CAA04179; Wed, 19 May 1999 02:28:37 -0400<br>
Reply-To: &lt;@kroll-ogara.com@kroll-ogara.com&gt;<br>
From: &quot;New User&quot; &lt;<strong>@kroll-ogara.com@kroll-ogara.com</strong>&gt;<br>
To: [Webb-site.com's address]<br>
Subject: Meeting<br>
Date: Wed, 19 May 1999 <strong>14:29:45 +0800</strong><br>
Message-ID: 000001bea1c0$fc6c47a0$6501160a@kohkpc37.asia.kroll-ogara.com<br>
MIME-Version: 1.0<br>
Content-Type: multipart/alternative;<br>
boundary=&quot;----=_NextPart_000_0001_01BEA204.0A8F87A0&quot;<br>
X-Priority: 3 (Normal)<br>
X-MSMail-Priority: Normal<br>
X-Mailer: Microsoft Outlook 8.5, Build 4.71.2173.0<br>
Importance: Normal<br>
X-MimeOLE: Produced By Microsoft MimeOLE V4.72.3110.3</p>
</div>
<p>We later checked with Sam Kaplan, a spokesperson for the <a href="http://www.ci.seattle.wa.us/business/tda/" target="_blank">Trade Development
Alliance of Greater Seattle</a>, who confirmed that they had no recollection of Bob and
they had not commissioned any article on the Cyberport, which they had not heard about.</p>

<p>For those of you who don't know, Kroll is a world-wide investigation agency popular
with Earth's leading corporations and governments for investigating other people's
affairs. For more information on Kroll, visit the <a href="http://www.krollassociates.com/" target="_blank">Kroll Associates</a> web site, or
the <a href="http://www.kroll-ogara.com/" target="_blank">Kroll-Ogara</a> web site (hey,
they even get free publicity here). Alternatively you could look at the piece by their
Executive Managing Director for Asia, Stephen Vickers, which was published in a recent
issue of <a href="http://cgi.pathfinder.com/time/asia/magazine/1999/990524/vickers1.html" target="_blank">Time Magazine</a>. Incidentally, we wonder how a Managing Director could
ever be non-Executive, but perhaps the more words the better in US titles.</p>

<h3>Having Bob for lunch</h3>

<p>We decided to humour Bob and play along. We replied that we would be happy to spare
some time. Less than 24 hours later, on Thursday 20th May, Bob called. He had
&quot;arrived&quot; in Hong Kong and was keen to meet up. He was &quot;staying with a
friend&quot; and the only way to contact him was through a rented mobile phone. How
convenient.</p>

<p>On Monday, Webb-site.com editor David Webb bought our hapless investigator lunch at a
bar in Central, and was grilled by Bob (somewhat more than the steak in his bookmaker
sandwich) about our coverage of the Cyberport. What were our motives? Where did we get our
information? In our piece &quot;<a href="cybervillas.asp">Cybervillas</a>&quot;, how did
we calculate that 75% of the floor area is residential? Why did we write the piece <a href="pcroundabout.asp">Pacific Roundabout</a> about the Pacific Century Place Beijing
property?</p>

<p>Our information is all from the public domain folks - all we did is piece it together.
Bob wanted to know - did we think there is a conspiracy against Pacific Century, or the
Cyberport project? We don't. Anyone who is awarded a project in such unusual circumstances
is bound to generate a lot of publicity. We are not involved in any conspiracy.
Webb-site.com works alone, but is not alone in the opinions it holds. We cover a wide
range of Hong Kong issues and <a href="../pages/aboutus.asp">our motives</a> are clearly stated.</p>

<p>Lunch went on like this for about an hour and a half, occasionally deviating to other
topics but the core focus of the Cyberport continued. All the while, we were wondering who
had commissioned Kroll, what was the scope of the investigation, and what does this say
about freedom of speech and the press in Hong Kong? Is everyone who makes critical
comments about the Cyberport being investigated?</p>

<h3>Time for some answers</h3>

<p>We decided to get some answers. We told Bob that a lot of material on the Cyberport is
sourced from a broker (it is not) who preferred not to publish in his own name, because
his firm would not approve. We could ask our broker if he would be willing to meet Bob.
Our &quot;broker&quot; was actually David Ibison, Business News Editor for the leading
English-language local paper, the <a href="http://www.scmp.com/" target="_blank">South
China Morning Post</a>. Hey - in the internet era we have to give print media a chance!</p>

<p>The meeting was at 6pm Tuesday, in a hotel bar in Central. Our &quot;broker&quot; would
be there. Bob showed up, completely unaware that his cover was blown. As the lounge singer
sang &quot;Send in the Clowns&quot;, Bob quizzed our &quot;broker&quot; about the
Cyberport. Was there a conspiracy? What were his sources? Mr. Ibison is well-informed
about the project, and his cover was maintained until we decided to drop it and ask Bob
why Kroll was investigating Webb-site.com and its editor.</p>

<h3>It's a Mushroom</h3>

<p>After a few minutes of hopeless denials, during which Bob dug himself a deeper and
deeper hole, he confessed. Yes, he was working for Kroll. No, he didn't know who their
client is. He was just doing a one-off job, he had just graduated, and he really hoped to
get a full-time job with the firm (will he - what do you think?). He pleaded that his
knowledge of the investigation was limited. &quot;It's a mushroom&quot; he says,
presumably at this point feeling like he was floating around in hot goulash. &quot;It's a
need-to-know basis&quot;.</p>

<p>Well, what we need to know is, at what point does the investigation of journalists
writing articles on matters of public interest, and in this case based solely on public
disclosures, become harassment? Are we really heading for a situation in Hong Kong where
we are unable to write critical articles without being investigated by &quot;<i>the
world's leading risk mitigation agency</i>&quot; as they call themselves? Are all critics
of the Cyberport, including the so-called &quot;ten developers&quot; and legislators being
investigated? How far does this go? Are we being watched as we write? Is this &quot;press
freedom with Hong Kong characteristics?&quot;</p>

<p>We spoke to Stephen Vickers, Head of Kroll for Asia-Pacific. He confirmed that Bob was
their contractor but denied that Kroll was investigating Webb-site.com or its editor, or
our critical comments on the Cyberport. He confirmed that there is a &quot;<em>wider
project</em>&quot; which is &quot;<em>on-going</em>&quot; but could not say what it was
about, what Bob was working on, or who they were working for, citing client
confidentiality and an inability to reach &quot;<em>key people</em>&quot;. It's funny how,
with investigating agencies, privacy only seems to work in one direction. Mr Vickers
declined to comment on whether Bob had a valid employment visa to work in Hong Kong.</p>

<p>The investigation of Webb-site.com sets a dangerous precedent that may deter other
writers from writing negative criticism of corporate events in Hong Kong - if you are
thinking of doing so, think twice - you may end up under the Kroll microscope. Perhaps the
greatest irony is that you are reading this on the internet. With internet journals such
as this one under investigation, what is the future of Hong Kong's drive to become the
e-portal for Asia?</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17936">HONG KONG CYBERPORT MANAGEMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
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