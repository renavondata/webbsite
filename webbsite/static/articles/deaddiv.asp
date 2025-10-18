
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

<script type="text/javascript">document.title="South China's Dead Dividends";</script>

	<div class="summary">South China Holdings has discovered a new wheeze - distribute unlisted subsidiaries to your shareholders as special dividends. Public shareholders are ending up with untradeable minority stakes in unlisted subsidiaries which are no longer subject to the protection of the listing rules. We condemn this practice. Any distribution of unlisted stock should be conditional on obtaining a listing.</div>

<h2 class="center">South China's Dead Dividends<br>
<span class="headlinedate">30 January 2002</span></h2>
<p class="revisedate">(update 31-Jan-02)</p>
<p>HK-listed South China Holdings Ltd (<b>SCH</b>) has discovered a
new wheeze. The board has begun declaring special dividends consisting of shares
in their unlisted subsidiaries. </p>

<p>The first such deal was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020122/LTN20020122015.doc" target="_blank">announced</a>
on 21-Jan-02 and consists of shares in Jinchang Pharmaceutical Holdings Ltd (<b>Jinchang</b>),
an unlisted company incorporated in the Cayman Islands and wholly owned by SCH.
For every eight shares you own in SCH, you get one share in Jinchang.&nbsp; </p>

<p>So SCH shareholders are getting a proportionate share in
something they already own, but the difference is, they get unlisted shares,
with no marketplace in which to trade them, and hence no way of selling their
investment. Not only that, but Jinchang will no longer be subject to the listing
rules on such things as connected transactions with its directors or controlling
shareholders, as it will no longer be part of a listed group. This opens the
door the potential for further abuse of minority shareholders. </p>

<p>Take this to extremes, and investors could end up with shares in
a shrunken listed shell (SCH), together with a motley collection of untradeable
investments (Jinchang and others) that have been distributed as dividends. In
other words, SCH would be conducting a creeping delisting without ever seeking
minority shareholders' approval. </p>

<p>Let's make this crystal clear. Dividends of unlisted assets
should be prohibited by the Listing Rules. If you want to delist, make a
privatisation offer, but don't turn the company into a collection of useless
confetti. </p>

<p>The pathetic &quot;benefits to shareholders&quot; that the board
of SCH offers in its announcement, is this: </p>

<blockquote>

<p>&quot;The Distribution will enable the Shareholders to hold a
direct investment in the Jinchang Group, thereby allowing them to participate in
the future development of the Jinchang Group.&quot; </p>

</blockquote>

<p>That's nonsense - investors are already
&quot;participating&quot; in Jinchang through their investment in SCH. 1% in SCH
gives you 1% in Jinchang, simple as that. So distributing it confers no benefit.
Quite the opposite - it disintegrates shareholder value. </p>

<p>The announcement of the dividend was followed by <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020123/LTN20020123025.doc" target="_blank">another</a>
with slightly more detailed financial information on Jinchang, and then a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020124/LTN20020124015.doc" target="_blank">third
one</a> bringing forward the entitlement date for the distribution by two weeks
for no stated reason. </p>

<p>It gets worse. On 29-Jan-02, SCH <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020130/LTN20020130017.doc" target="_blank">announced</a>
that they would hold another board meeting on 8-Feb-02 to consider the
declaration of another special dividend which <i>&quot;may be non cash
item&quot;.</i> </p>

<p>You have to wonder why the two independent non-executive
directors are going along with this behaviour. We'd love to hear them justify
it. They are David John Blackett, a former Managing Director of financial
advisers N.M. Rothschild &amp; Sons (Hong Kong) Limited and a former member of
the Takeovers Panel; and David Michael Norman, who is also a partner of major
law firm Richards Butler, who are listed as solicitors to SCH in their annual
report and presumably get fee income from SCH on occasions. </p>

<p>Come on guys, do the decent thing and put a stop to it, right
now. Cancel the Jinchang dividend and don't try any more. </p>

<hr>

<h3>Update, 31-Jan-02</h3>

<p>Several readers have pointed out that SCH has done this before -
with <a href="../dbpub/articles.asp?p=16091" target="_blank"> Jessica Publications Limited</a>, which was distributed by way of a dividend <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010827/LTN20010827039.doc" target="_blank">declared</a>
on 24-Aug-01. Again, investors received unlisted stock, and it was not until
8-Jan-02 that the company was listed on GEM after a successful application. Like
Jinchang, at the time of the dividend, there was no guarantee that a listing
would be applied for, and nor was there any certainty that if a listing was
applied for, it would be granted by the Stock Exchange. </p>

<p>If Jinchang is planning a listing, then there is a set procedure
for spin-offs under <a href="http://www.hkex.com.hk/rulereg/listrules/PN15.doc">Practice
Note 15</a> of the Listing Rules for this. We believe any distribution of
unlisted stock should be made conditional on a successful application for
listing. No listing, no distribution. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=937">GANGYU SMART URBAN SERVICES HOLDING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16091">Honbridge Holdings Limited</a></li>
				
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