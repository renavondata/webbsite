
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

<script type="text/javascript">document.title="Perfect Treasure buys Wharf's Sichuan Cable TV";</script>

	<div class="summary">Local camera distributor Perfect Treasure has just bought 70% of Artland International, which has a 50% stake in a cable TV business in Sichuan province. What they didn't mention was that Artland was once 70% owned by Wharf, controlling shareholder of recently floated i-Cable Communications.</div>

<h2 class="center">Perfect Treasure buys Wharf's Sichuan Cable TV<br>
<span class="headlinedate">25 January 2000</span></h2>
<p class="revisedate">revised 26-Jan-00</p>

<p>On 20-Jan-00, HK-listed camera distributor <b> Perfect Treasure
Holdings</b> announced a placing of
55m shares at $3.68 per share to raise net proceeds of HK$197m. That came after
the stock surged from $0.55 at 31-Aug-99 and $1.65 on 29-Dec-99, less than 4
weeks ago, to $4.20 the day before the placing. Gravity has taken its toll and
the price is now back to $3.00. The company, which distributes Ricoh and Nikon
cameras, made a loss in the year to 31-Mar-99 after a $49m provision for
doubtful debts. </p>

<p>Almost as a footnote to the placing announcement, the company said it was buying 70% of
Artland International Ltd from unnamed parties. Artland owns 50% of Sichuan
Allday TV Development Co. Ltd, a PRC company which &quot;<i>has the right to
provide cable television network through coaxial and/or optic fibre cable in
Sichuan Province</i>&quot;. The consideration for the acquisition was not disclosed,
so it must be less than 15% of Perfect Treasure's last audited net assets, i.e.
less than $46.3m. </p>

<p>If Artland sounds familiar, it should be. Back in 1993, Artland
was set up as a joint venture owned 40% by Wharf (Holdings), 30% by Wharf's
controlling shareholder Peter Woo Kwong Ching, and 30% by HK-listed MKI Corp,
which went spectacularly bust in 1995. Some time in 1996, Wharf increased its
interest in Artland to 70% presumably by purchase from Mr Woo. </p>

<p>MKI's 30% interest was transferred to a listed company called
Chesterfield (since renamed <b>Mult-Asia International Holdings</b>) in part
settlement of an MKI debt in 1995. The Mar-99 accounts of Multi-Asia show that
they still held 30% of Artland International Holdings Ltd as an investment.
Multi-Asia had no representation on the board of Artland, and it will be
interesting to see what they do with their stake, now that Perfect Treasure
holds 70%. Multi-Asia hasn't recorded a full year's profit since 1991 or
earlier. </p>

<p>The initial planned investment in the project was about RMB33m (then
HK$44m). The plan was, like Wharf Cable in Hong Kong, to use microwave
distribution systems to provide cable television to the 20m citizens of Chengdu
and its surroundings. The service was to be launched with four cable channels,
broadcasting 18 hours per day. Trial broadcasting began in Sep-93. </p>

<p>1993 was the last time that the project was mentioned in the
Wharf annual reports, but the interest in Artland was recorded in the list of
subsidiaries up until 1997 and was absent in the 1998 accounts, meaning that it
had either been sold or was no longer considered a &quot;principal
subsidiary&quot;. </p>

<p>Speaking exclusively to <i>Webb-site.com</i>, Perfect Treasure
Executive Director Clare Wong Mung Yiu said that they had purchased the 70% of
Artland from a third party and not directly from Wharf. She declined to disclose
the vendor or the consideration, or the profitability of Sichuan All-day. Ms
Wong said that the station carries 5 channels, including the government's CCTV,
and claims some 5m subscribers in Sichuan province with a monthly subscription
of RMB12 each. She said that the bulk of the distribution is still by microwave,
but they have established fibre backbones in the major cities.&nbsp; </p>

<p>Now, Perfect Treasure plans to take up where Wharf left off, and
to develop a two-way HFC (Hybrid Fibre-Coaxial) broad band network &quot;<i>to be
operated by the Company or Sichuan Allday</i>&quot;. As a foreign investor,
development by the Company itself would presumably be subject to regulatory
approval, so it is not yet clear whether Perfect Treasure will be the operator,
or Sichuan Allday, its 35% associate. Ms Wong said the company plans to invest
HK$400m in the project. </p>

<p>Wharf did not return a call seeking comment on the sale of
Artland. The question is, if they know so much about TV, and have hands on
experience of running Wharf Cable (now i-Cable Communications), then why did
Wharf sell Artland, and can Perfect Treasure really do any better with it?&nbsp; </p>

<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9354">i-CABLE Communications Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4943">SING TAO NEWS CORPORATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=342">Wharf (Holdings) Limited (The)</a></li>
				
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