
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

<script type="text/javascript">document.title="Out of Luks";</script>

	<div class="summary">The IPO for TV-maker TCL International Holdings closed today. We'll tell you how HK-listed Luks Industrial, having twice cut its stake before the offer, missed out on gains of $704.84m. A mysterious investor made a $92m gain in one of the transactions. And there's a moral to this story...</div>

<h2 class="center">Out of Luks<br>
<span class="headlinedate">22 November 1999</span></h2>
<p>Luks Industrial (<b>Luks</b>) must be feeling a little sad.
While they are happy to see their remaining 7.5% holding in TCL International
Holdings worth $315m, we'll tell you how much they could have prospered if they
had not sold down their original stake in order to repay debts. We'll also cast
a spotlight on a mysterious investor who has made a 337.5% book profit on one of
the deals involved.&nbsp;&nbsp; </p>

<h3>Background</h3>

<p>Luks Industrial started 1998 as the owner of 38.8% of TCL
Holdings (BVI) Ltd (<b>TCL BVI</b>), the forerunner of today's TCL International
Holdings Ltd (<b>TCL</b>). As part of a normal pre-float reorganisation, every
share in TCL BVI was exchanged for 72,000 shares in TCL, so percentages in the
two companies translate on a one-to-one basis prior to the flotation. </p>

<p>In this week's flotation, 600m shares (25% of the enlarged
company) are being issued at HK$1.75 each, raising $1.050bn before expenses, and
valuing TCL at $4.2bn. </p>

<h3>First Sale</h3>

<p>On 9-Mar-98 Luks agreed to sell 3.8% of TCL BVI (950 shares) to
a company called Capital China Limited (<b>Capital China</b>), described as an
&quot;independent third party&quot;. Without disclosing a figure, the TCL
prospectus coyly states that &quot;<i>The consideration for the acquisition of
the interest was determined by reference to the net asset value of TCL BVI at
that time.</i>&quot; </p>

<p>According to a Luks announcement dated 14-Sep-98, the
consideration was $27.36m. That just happens to work out at HK$28,800 per TCL
BVI share. In Cantonese, 288 is a lucky number. Very lucky, in this case, for
Capital China, because that translates to exactly $0.40 per TCL share, compared
with the flotation price of $1.75. </p>

<p>After the flotation, Capital China will own 2.85% of TCL
worth $119.7m at the offer price. That's a gain of <b>$92.34m</b>, or 337.5% in
just 20 months. The owner of Capital China has never been disclosed. </p>

<p>The profit after tax of TCL BVI for the year ended 31-Dec-97 was
$200.3m, or about HK$8,013 per TCL BVI share. So the exit p/e was just 3.6x
historic earnings. </p>

<h3>Second sale</h3>

<p>On 14-Sep-98 Luks sold a further 25% stake in TCL BVI to the
current parent, TCL Holdings Corporation, which is 79.22% owned by the Huizhou
municipal government. Huizhou is a city in Guangdong province where TCL has a
major factory and distribution headquarters. The sale cut Luks holding from 35%
to 10%.&nbsp; </p>

<p>The TCL prospectus makes no mention of the price on the deal,
but a Luks announcement on 14-Sep-98 does. This time the price was HK$175m, of
which $30m was payable by 30-Sep-98 and the rest in instalments up to 31-Mar-99,
including a final instalment of $50m. The price translates to $28,000 per TCL
BVI share (slightly less than paid by Capital China) or about $0.389 per current
TCL share.&nbsp; </p>

<p>At the offer price, that stake, diluted to 18.75% by the offer,
is now worth $787.5m, a gain of <b>$612.5m</b> or 350% in just 14 months, or 8
months if you count from the last installment date. Let's just call it a year on
average. </p>

<p>At around the time of the sales, Luks was well aware of the
possibility of a flotation of TCL. In the Luks' Chairman's statement dated
22-May-98, Luk King Tin wrote: </p>

<blockquote>

<p>&quot;In order to match with the rapid growth and financial
need of TCL joint ventures, the group and TCL Electronics Corporation have been
carrying out preliminary study in the feasibility of the listing of the TCL
Joint Ventures on the stock exchanges in Hong Kong or other places.&quot; </p>

</blockquote>

<p>So poor old out-of-luck Luks. Struggling with debts and an
unhappy experience from a Vietnamese cement plant and properties in Ho Chi Minh
City and Wuhan, the company sold a golden goose, which is now laying its golden
egg. Their remaining 10% stake, diluted to 7.5% by the float, is worth $315m at
the offer price, but they missed out on <b>$704.84m</b> of gains by cutting
their stake to pay debts arising from their other ventures. </p>

<p>The moral of the story is this: stick to what you are good at (or
as management consultants would say, your &quot;core competencies&quot;). Luks
started life as a competent TV manufacturer. And they could have made it big.
TCL is now worth $4.2bn, about 10 times the size of Luks, and it was founded by
taking Luks' original Shenzhen colour TV factory in June 1996 into a 60:40 JV
with the Huizhou government. </p>

<p>The stock market is littered with small companies that made
their fortunes (and went public) by being good at one thing, and then wrongly
inferred that they could be good at everything. </p>

<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4907">Luks Group (Vietnam Holdings) Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9359">TCL Electronics Holdings Limited</a></li>
				
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