
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

<script type="text/javascript">document.title="Lo bid for HI";</script>

	<div class="summary">Henderson Land is offering HK$7.35 per share to buy out the minorities in Henderson Investment - which as we show, is a whopping 40% discount to underlying value of about $12.26 per share. Its stake in HK & China Gas alone has a market value of $7.76 per HI share. The good news is that it only takes 2.49% of the company to block the deal, so if you are an institutional holder, contact us - we need your votes to block it or get a better deal.</div>

<h2 class="center">Lo bid for HI<br>
<span class="headlinedate">6 November 2002</span></h2>
<p><a href="http://www.hld.com/" target="_blank">Henderson Land Development Co
Ltd</a> (<b>HLD</b>, 0012) has today <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021106/LTN20021106010.pdf" target="_blank"> announced</a> a privatisation offer at HK$7.35
per share for the shares it doesn't already own in Henderson Investment Ltd (<b>HI</b>,
0097), which is 73.48% owned by HLD and 1.43% owned by Mr Lee Shau Kee (<b>Mr
Lee</b>), the
Chairman of both, who in turn owns 65.21% of HLD.</p>
<p>HI is an investment holding company which owns 36.42% of <a href="http://www.hkcg.com" target="_blank">The
Hong Kong and China Gas Co Ltd</a> (<b>HKCG</b>, 0003),&nbsp; 43.67% of <a href="http://www.miramar-group.com" target="_blank">Miramar
Hotel and Investment Co Ltd</a> (<b>MHI</b>, 0071), 30.98% of <a href="http://www.hkf.com" target="_blank">Hong
Kong Ferry (Holdings) Co Ltd</a> (<b>HKF</b>, 0050) and 66.67% of <a href="http://www.hendersoncyber.com" target="_blank">Henderson
Cyber Limited</a> (<b>HC</b>, 8023). HKCG owns 18.05% of HC.</p>
<p>HKF has a small cross-holding of 0.16% in HI, and directors own 0.06%. So that
leaves 700,718,572 shares, or <b>24.87%</b> of HI held by independent
shareholders.</p>
<p>In the announcement, HLD remarks that the offer price represents a premium
of 8.4% over the net&nbsp; tangible asset value of HI of $6.78 per share
(30-Jun-02), but this
conveniently overlooks the fact that the stake in HKCG is held in the HI books
at the attributable share of net assets, not market value. As a de facto
monopoly utility with a lot of sunken assets and property development potential
in its old gas works, HKCG is worth a lot more than book value. At 30-Jun-02, HKCG
had unaudited net assets of $3.10 per share (cum-dividend) but closed today at
$10.55.</p>
<p>At today's closing price, the 36.42% stake in HKCG is worth $21.87bn, or <b>$7.76</b>
per HI share. That means the offer on the table of $7.35 per share is worth less
than the stake in HKCG, and HLD would get all of the other assets for free (in
fact, it would be paid $0.41 to take them). There is no great rocket science in the price HLD is
offering - it just happens to be the highest market price in the last 12 months,
reached on 17-May-02.</p>
<p>If you add in the premium to book value based on the market price of HKCG,
then this raises the book value of HI from $6.78 to about <b>HK$12.26</b> per
share. That is our current estimate of fair value of HI. All the other listed
companies (MHI, HKF and HC) are basically property companies in one form or
another, and should be included based on their share of net assets, which is how
HI accounts for them.</p>
<p><b>So at $7.35, HLD is offering a discount to fair value of about 40.0%</b>.
Also remember that we have only taken the market price of a minority share in
HKCG, not the price for the controlling stake which HI owns. If it were ever to
sell the controlling stake, it would almost certainly get more than market
price.</p>

<h3>Block this deal</h3>

<p>The good news is that this deal is a scheme of arrangement, and as such it
will go to independent shareholders' approval on a poll vote. It requires only
10% of the independent shares to block the deal. As there is a free float of
24.87%, that means that <b>2.49%</b> will be enough to block it.</p>

<h4>TraHK</h4>

<p>HI, with a market cap of $20.43bn, is the 24th largest company in the Hang
Seng Index. The <a href="http://www.trahk.com.hk" target="_blank">Tracker Fund
of Hong Kong</a> (<b>TraHK</b>, 2800), which tracks the HSI, currently has
2,753,922,500 units outstanding, and each 1m units hold about 10,138 shares in
HI, so that means it holds about 27.92m shares or about <b>0.99%</b> of HI. It
is managed by <a href="http://www.ssgaasia.com/" target="_blank">State Street
Global Advisors</a>.</p>

<p>As an index fund, TraHK also owns 0.99% of HLD, but that doesn't make this
proposal neutral for them, because HLD is only acquiring 26.52% of HI (including
the non-public shares held by directors and HKF). So for every dollar that TraHK
loses from a discounted privatisation offer, it only makes back $0.2652 through
its share of HLD. This equates to an overall loss of <b>HK$100.7m </b>for TraHK
in terms of the underlying asset value of its shareholdings. For this simple
reason, we urge TraHK and any other HSI tracking fund to commit to
vote against the offer. The tens of thousands of Hong Kong public investors who
put their faith in the Government's launch of TraHK deserve nothing less.</p>

<p>TraHK has a Supervisory Committee of 5 persons, comprising two from the
Exchange Fund Investment Ltd (<b>EFIL</b>, which was set up by HKMA to manage
the Government's equity portfolio), Lawrence Fok, Deputy COO&nbsp; of HKEx,
Marvin Cheung, the local Chairman and CEO of KPMG, and Fong Hup, the Senior
Audit Partner of Deloitte Touche Tohmatsu.</p>

<p>KPMG audits HLD and Deloitte audits HI, so these gentlemen may have a
conflict of interest if asked to rule on the matter. Mr Cheung was named in July
as Chairman of the merged SEHK listing committees due to be in effect on
1-Jan-03.</p>

<h4>EFIL</h4>

<p>We also call upon the Hong Kong Government to disclose the number of HI shares it still
has in the HKSAR Exchange Fund (via EFIL) and vote them against the
privatisation.</p>

<h3>Increase not ruled out</h3>

<p>Under Rule
18.3 of the
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Takeover
Code</a>, which includes privatisations, an offeror can increase its offer so
long as it has no publicly stated that the offer will not be increased. HLD has
not made any such statement. Interest rates are at record lows, and HLD, which
is advised by HSBC, is believed to be arranging a loan facility to pay the
purchase price with an interest rate of only 2.5%. That may even go lower after
tonight's US Federal Reserve meeting. The dividend yield on HKCG alone is 3%,
not to mention the income on all the other HI assets.</p>

<p>So Mr Lee, if you want to privatise HI, put your hand in your HLD pocket and
pay investors a decent price. A 40% discount is just insulting.</p>

<h3>How you can help</h3>

<p>If you hold HI shares or manage a fund holding HI shares, please <a href="../contact/" target="_blank">contact
us</a> and tell us in confidence:</p>

<ol>
  <li>how many shares you hold;</li>
  <li>whether you intend to vote against the current proposal; and</li>
  <li>what you think an acceptable privatisation price would be.</li>
</ol>
<p>We will not disclose your name or shareholding to third parties without your
consent, but we will announce the aggregate opposition to the current offer and,
if sufficient, approach HLD to seek a better deal.</p>
<p>If investors in Hong Kong unite on issues like this, then they will seldom be
on the receiving end of such grossly inadequate terms in future.</p>

<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=413">HENDERSON INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=412">HENDERSON LAND DEVELOPMENT COMPANY LIMITED</a></li>
				
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