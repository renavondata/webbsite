
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

<script type="text/javascript">document.title="The Placing Game";</script>

	<div class="summary">Leading fund manager Templeton has announced that it will vote against all resolutions which give HK-listed companies discretion to issue new shares without first offering them to existing shareholders. Webb-site.com explains the arguments and tells you why we support this move.</div>

<h2 class="center">The Placing Game<br>
<span class="headlinedate">17 May 1999</span></h2>
<p>In a bold move, Templeton Emerging Markets has announced that it will, as
standard procedure, vote against the &quot;general mandate&quot; resolutions which give
directors of HK-listed companies the power to issue new shares in the company without
first offering them to existing shareholders. Sit up and take notice, because Templeton is
probably the second largest investor in Hong Kong behind the Hong Kong government. We
commend the move and urge all investors, including the government, to follow suit. Here we
explain why.</p>

<p>Under the SEHK listing agreement, the general mandate may cover new shares
equal to 20% of the existing issued share capital of a company, and the power continues in
force until the conclusion of the next annual general meeting.</p>

<p>Company directors are inclined to argue that having this flexibility is in
the best interests of shareholders, because it allows the company to tap the equity
markets when they feel the price is right, reducing the cost of equity. Placings avoid the
longer timetable which is needed for a rights issue (a rights issue is when each
shareholder is offered shares in proportion to his shareholding).</p>

<h3>Some are more equal than others</h3>

<p>Last week Hong Kong Electric, which became the first target of Templeton's
policy, argued that the dilutive effect of placings affects both majority and minority
shareholders, and therefore minority shareholders are not disadvantaged. However, this is
not true.</p>

<p>Under SEHK Listing Rules, a controlling shareholder may participate in a
placing under the general mandate so long as they do not increase their percentage
interest in the company. This allows them to do what is known as &quot;new for old&quot;
placing where they sell existing shares and subscribe for new ones, to save time waiting
for the new shares to be printed and listed. For example, if a company has 100m shares in
issue, and a shareholder owns 50%, then he might sell 10m shares and subscribe for 20m new
shares, raising his holding to 60m shares, but maintaining his percentage at 50% of the
enlarged 120m shares.</p>

<p>The special privilege allows companies to ensure that their controlling
shareholders maintain their stake, but does not prevent other shareholders from being
diluted, unless they are lucky enough to be offered shares in the placing. </p>

<p>Furthermore, the privilege allows issuers to offer a large discount which
can dilute minority shareholders' equity interests without affecting that of the
controlling shareholder, since he is offered the same discount.</p>

<p>By contrast, a rights issue extends the discount to everyone, and thereby
cancels out its dilutive effect. The discount then has no effect on the equity interest,
for a given amount of funds being raised. For example, if a company does a 1 for 10 rights
issue (1 new share for every 10 held) at 50 cents per share, that has the same end-result
on shareholder wealth as a 1 for 5 rights issue at 25 cents.</p>

<p>For these two reasons it is time to ban the exemption, and treat placings
with substantial (10%+) shareholders as connected transactions which require approval of
minority shareholders. This may seem harsh, but if controlling shareholders are worried
about dilution by not being allowed to participate in a placing, then they should turn it
onto a rights issue instead. That's what control is all about.</p>

<h3>Why it matters</h3>

<p>The unfortunate fact in Hong Kong is that the general mandate is regularly
abused. Firstly, as soon as it has been used, it is common practice to convene a general
meeting and seek a new general mandate. Controlling shareholders are allowed to vote on
such mandates, so they nearly always win a new mandate, and minority shareholders have no
say. It is not unusual for smaller companies to exhaust 2 or 3 general mandates in a year.
This makes a mockery of the 20% limit.</p>

<p>Secondly, there is very little transparency involved. Companies get away
with simply declaring, or allowing placing agents to declare, that placees are independent
of controlling shareholders and directors. On one occasion just last week, a company
didn't even name the placing agent. We were simply asked to accept their word that the
agent was independent. There are literally hundreds of companies which act as placing
agents and assurances they give are often of little credibility. On other occasions, the
placees are named, but they are BVI companies where you have no hope of identifying the
owners.</p>

<p>We have to accept that it will never be possible to find out who the
placees of an issue really are, if they don't want to be known. Even if real names were
given, they might be acting as nominees for another person. The general mandate can
therefore be used by a company to gradually dilute minority shareholders' interests in the
equity and earnings of a company, while passing new shares to controlling shareholders or
related parties. Yes, we know that's against the rules, but rules in themselves are not a
deterrent, getting caught is, and that's unlikely.</p>

<p>By contrast, a rights issue will always allow existing shareholders the
choice of whether to subscribe or allow themselves to be diluted. There is no reason why
rights issues need to be underwritten. They can be done at deep discounts, to ensure that
the rights are highly likely to be exercised, and the company will then get its funds, or
they can be underwritten by controlling shareholders, who are usually the driving force
behind the cash call in the first place. Therefor the expenses involved need not be great.
In practice, we are talking about a small difference, since placing agents often charge
almost the same fees as underwriters.</p>

<h3>A Middle Ground</h3>

<p>Last week HSBC Holdings plc issued shares equal to about 3.1% of its
existing capital. That is within the UK framework, which (the last time we looked) allows
for:</p>

<ul>
  <li><p>a maximum of 5% in any one year</p>
  </li>
  <li><p>a maximum of 7.5% in any three year period</p>
  </li>
  <li><p>a maximum discount of 5% to the market price</p>
  </li>
</ul>

<p>This is perhaps a reasonable compromise which will stop small companies
&quot;printing wallpaper&quot; by repeated general mandate issues, while still allowing
all issuers the flexibility for small issues in exceptional circumstances. </p>

<p>We call upon the Stock Exchange to bring Hong Kong's policy in this area
up to scratch with modern corporate governance. In Singapore, the limit is 10% per year,
with a maximum 5% discount, and no shares may be placed with directors or substantial
shareholders. At the very least, we should meet these standards.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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