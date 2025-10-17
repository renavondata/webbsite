
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

<script type="text/javascript">document.title="Accept Nam Tai's offer for NTEEP";</script>

	<div class="summary">It is now proven that the Dec-07 acquisitions by NTEEP (2633.HK) from its parent (NYSE:NTE), which we opposed, destroyed shareholder value. Today NTE has launched a privatisation offer at HK$1.50 per share. <i>Webb-site.com</i> editor David Webb holds over 10% of the float and intends to accept the offer - we explain why.</div>

<h2 class="center">Accept Nam Tai's offer for NTEEP<br>
<span class="headlinedate">24 February 2009</span></h2>
<p>Nam Tai Electronics, Inc. (<strong>NTE</strong>, NYSE:NTE) has 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090224/LTN20090224005.pdf">launched</a> a new 
privatisation offer for Nam Tai Electronic &amp; Electrical Products Ltd (<strong>NTEEP</strong>, 
2633.HK), at $1.50 per share. The offer comes just over 3 years after a failed
<a href="namtai.asp">offer</a> at $1.80 per share, 
which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051205/LTN20051205111.pdf">
received</a> only 69.81% acceptances, less than the 90% acceptance condition, 
which was not waived. <em>Webb-site.com </em>opposed that 
offer. Since that time, NTEEP has paid dividends of $0.435 per share.</p>
<p>NTE needs 90% acceptances of the offer in order to compulsorily acquire the 
remaining 10% of the public float and delist NTEEP. The offer is final and will 
not be increased. If the offer fails, then under the Takeover Code, NTE cannot 
normally come back with a new offer for 12 months. </p>
<p><em>Webb-site.com</em> editor David Webb now holds over 10% of the free-float 
of NTEEP (but less than the 5% disclosure threshold) and intends to accept the 
new offer, for reasons explained below.</p>
<p>When the previous offer closed on 5-Dec-05, the Hang Seng Index closed at 
15,159. It closed last night (23-Feb-09) at 13,175. Including dividends, it has 
a total return of -4.0%. NTEEP's new offer of $1.50, together with dividends 
received of $0.435, makes a total of $1.935 (ignoring dividend reinvestment 
opportunities), which is a positive return of 7.5% compared with the previous 
offer of $1.80. This in itself is not a good reason to accept the offer, but it 
does provide a reference point.</p>
<p>In late 2007, NTE and NTEEP announced a complicated reorganisation in which 
two businesses were to be injected by NTE into NTEEP in a connected transaction 
involving a heavily dilutive convertible bond. After lobbying by <em>
Webb-site.com</em>, the plans were revised, but not to our 
satisfaction. We <a href="nteepjic.asp">opposed</a> NTEEP's purchase 
of the Zastron and Jetup businesses, pointing out that the quarterly figures 
showed that Zastron's sales and profits were in decline while NTEEP's were 
growing, and the Zastron acquisition was heavily overpriced at 15.7x trailing 
earnings, far higher than NTEEP's own P/E at the time. In a narrow vote on 
5-Dec-07, minority shareholders
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071220/LTN20071220373.pdf">
approved</a> the deal by 57.4% in favour to 42.6% against, with voter turnout of 
58.4% of eligible shares.</p>
<p>We have since been proven right - in the year to 31-Dec-08, sales of the 
Zastron &quot;Telecommunication Component Assembly&quot; business dropped 33.5% and 
Zastron contributed just US$3.585m of net profit, while the Jetup LCD business 
lost $3.365m. Meanwhile, NTEEP's original business contributed $32.811m of net 
profit on sales which fell only 4.4%. NTEEP would have been far better off 
without these acquisitions. Not to put too fine a point on it, NTEEP's minority 
shareholders were screwed.</p>
<p>At 30-Sep-07, just before the reorganisation, NTEEP had $1.06 per share of net cash, but the acquisitions for 
US$353.1m ruined that, saddling NTEEP with US$311m of debt to its parent. At 
31-Dec-08 NTEEP had net debt of US$182m, or about HK$1.61 per share. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090209/LTN20090209400.pdf">
results announcement</a> showed a net loss of US$121.93m, but that is after 
writing off $144.55m on goodwill and intangible assets from the acquisitions, so 
core earnings for 2008 were actually about US$22.62m, or about HK$0.200 per 
share.</p>
<p>While it is clear to us that the connected acquisitions destroyed shareholder 
value in spades, that is history now. The offer represents an exit P/E of 7.5x 
trailing earnings. Given the weak balance sheet situation, we regard today's 
privatisation offer as fair and reasonable.</p>
<p>As a footnote, on 11-Jun-08 NTE disclosed its interest at 74.02% of NTEEP. In 
today's announcement, it shows an increase of 7,624,000 shares to 74.88%. 
According to the <em>Webb-site.com</em> CCASS Analysis service, the CCASS 
holding of BNP Paribas Securities (Asia) Ltd
<a target="_blank" href="../ccass/chistory.asp?i=3574&amp;part=84">
increased</a> by exactly that amount between 13-Jun-08 (the settlement date for 
purchases on 11-Jun-08) and 29-Jul-08 with no disposals, and has been unchanged 
since then. So NTE almost certainly holds part of its interest via this broker.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=20902">NAM TAI ELECTRONIC & ELECTRICAL PRODUCTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5801">Nam Tai Property Inc. (VG)</a></li>
				
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