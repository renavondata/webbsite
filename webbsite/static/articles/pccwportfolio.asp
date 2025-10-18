
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

<script type="text/javascript">document.title="The PCCW Portfolio";</script>

	<div class="summary">This page provides details of the known investments and acquisitions of Pacific Century CyberWorks (PCCW)</div>

<h2 class="center">The PCCW Portfolio<br>
<span class="headlinedate">18 February 2000</span></h2>
<p>This page provides details of the known investments and acquisitions
of Pacific Century CyberWorks (PCCW).&nbsp;Descriptions are given in reverse
chronological order (latest transactions first). You can jump to them using the
alphabetic index below.</p>

<p><a href="#CASH">CASH on-line, Inc</a><br>
<a href="#CTI">City Telecom (H.K.)</a><br>
<a href="#CMGI">CMGI, Inc.</a><br>
<a href="#CMGIasia">CMGI Asia</a><br>
<a href="#Digiscents">Digiscents, Inc</a><br>
<a href="#Equinix">Equinix, Inc</a><br>
<a href="#Golden">Golden Power</a><br>
<a href="#Horizon">Horizon.com Ltd</a><br>
<a href="#iLink">iLink.net</a><br>
<a href="#Outblaze">Outblaze</a><br>
<a href="#SilkRoute">SilkRoute Holdings Pte Ltd</a><br>
<a href="#Softnet">SoftNet Systems, Inc</a><br>
<a href="#Spike">Spike Networks</a><br>
<a href="#StarEastNet">StarEastNet</a><br>
<a href="#Total">Total E-Commerce Ltd</a><br>
<br>
<a href="#Miscellaneous">Miscellaneous</a></p>

<p>Estimated total cash invested in disclosed transactions:<b>US$273m</b>.
Note that some, such as ActionAce and Equinix, involved undisclosed investments
amounts not included in this figure.</p>

<p>Earmarked for projects: <b>US$378m</b> (CMGI Asia), <b>US$289m</b>
(Pacific Convergence Corp).</p>

<hr>

<h3 id="Digiscents">Digiscents, Inc</h3>

<p>On 1-Feb-00 PCCW <a href="http://www.pcg-group.com/press/prelaese-00-feb-01.html" target="_blank">announced</a>
that it had subscribed 12.5% of <a href="http://www.digiscents.com/" target="_blank">Digiscents,
Inc</a> for <b> US$10m</b> in cash. The privately-held US company is working on the
internet's answer to smellyvision. </p>

<h3 id="CMGIasia">CMGI Asia</h3>

<p>On 25-Jan-00 PCCW <a href="http://www.pcg-group.com/press/releases/r250100.html" target="_blank">announced</a>
that it had agreed with its then 4.9% shareholder <a href="http://www.cmgi.com/" target="_blank">CMGI,
Inc</a> to set up a 50:50 joint venture, <a href="http://www.cmgiasia.com/" target="_blank">CMGI
Asia</a>, which will in turn form joint ventures with the majority-owned
operating companies of CMGI to cover the Asia-Pacific region. In each case, CMGI
Asia would have at least a 60% interest in the joint ventures, giving PCCW at
least a 30% interest in the regional projects.</p>

<p>The first four ventures to be brought to Asia were named as <a href="http://www.altavista.com/" target="_blank">Altavista</a>,
<a href="http://www.engage.com/" target="_blank">Engage Technologies</a>, <a href="http://www.icast.com/" target="_blank">iCast</a>
and <a href="http://www.1clickcharge.com/">1ClickCharge</a>. Altavista is a
well-known search engine-cum-portal. Engage is an online advertising and agency.
iCast is a start-up developing an entertainment site (streaming music and
video). 1ClickCharge is a start-up micro-payment system for small-ticket
transactions on the web. At the time of the announcement, no detailed terms for
the individual joint ventures had been determined.</p>

<p>PCCW said it had &quot;earmarked&quot; about HK$2,945m (<b>US$378m</b>)
for investment in CMGI Asia out of the proceeds of a placing conducted on the
same day.</p>

<h3 id="Horizon">Horizon.com Ltd</h3>

<p>On 13-Jan-00 PCCW agreed to subscribe 2.78m shares in <a href="http://www.horizon.com.sg/">Horizon.com
Limited</a> at S$1.88 per share, for a total of S$5.23m (<b>US$3.2m</b>), as part of
that company's IPO on the Stock Exchange of Singapore. The shares represented 5%
of the company's enlarged issued share capital. The company operates a community
portal in Singapore. </p>

<h3 id="Golden">Golden Power</h3>

<p>On 28-Dec-99 Tokyo-listed Hikari Tsushin, Inc and PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991229/LTN19991229055.HTM" target="_blank">announced</a>
a proposed takeover of HK-listed battery-maker Golden Power International
Holdings Ltd. In this deal, PCCW would subscribe 233.4m new shares in Golden
Power at HK$0.90 each, for a total of $210.1m (<b>US$27.0m</b>) in cash, while
Hikari would subscribe 595.1m shares at the same price per share for a total of
$535.6m (US$68.8m) in cash. As a result, Hikari and PCCW would own 51% and 20%
respectively of Golden Power.</p>

<h3 id="Spike">Spike Networks</h3>

<p>On 21-Dec-99 PCCW <a href="http://www.pcg-group.com/press/prelaese-dec-21.html" target="_blank">announced</a>
an agreement in principle to form an A$77.8m (US$48.8m) joint venture with <a href="http://www.spike.com/" target="_blank">Spike
Networks</a>, which is an Australian-listed web design company. Spike will
inject its &quot;global services&quot; business into the joint venture in
exchange for 70% of the equity at an agreed value of A$54.5m (US$34.2m) while PCCW will
inject unspecified assets (perhaps cash) for 30% of the JV at an agreed value of A$23.3m
(<b>US$14.6m</b>).
PCCW has been granted a two year option to increase its equity in the joint
venture to 50% at a subscription price of A$31.2m (US$19.6m).</p>

<p>At the same time, PCCW will subscribe 4,661,575 shares in Spike
Networks at a price of A$1.25 per share, for a total of A$5.83m (<b>US$3.66m</b>)
in cash. The shares represent 5% of the enlarged issued share capital of Spike
Networks.</p>

<p>PCCW also has an option to acquire an additional 10% of the
share capital of Spike on a fully diluted basis at a price of A$1.45 per share
(which is equivalent to its issue price on IPO). That option is exercisable at
any time within 12 months of the above allotment.</p>

<p>Separately from the JV, Spike also runs
an online youth-targeted radio station called <a href="http://www.spikeradio.com/" target="_blank">Spike
Radio</a>.</p>

<h3 id="Total">Total E-commerce Ltd</h3>

<p>On 21-Dec-99 PCCW <a href="http://www.pcg-group.com/press/prelaese-dec-16.html" target="_blank">announced</a>
a joint venture with HK-based NetCel Holdings Ltd to form a 50:50 joint venture
called Total E-commerce Ltd, operating the web site <a href="http://www.totalecom.com/" target="_blank">totalecom.com</a>.
PCCW will subscribe <b>US$30m</b> for its 50% stake, while NetCel Holdings will
inject an unspecified percentage of <a href="http://www.netcel360.com/" target="_blank">NetCel360
Ltd</a>, presumably valued at US$30m. Other shareholders in NetCel360 include
Baring Asia Private Equity Fund, Softbank China Venture Investment Ltd, <a href="http://www.bain.com/" target="_blank">Bain
&amp; Company</a> and <a href="http://cmc.taiwan.com/" target="_blank">CMC
Magnetics Corp</a>.</p>

<p>The firm plans to be a pan-asian business-to-business e-commerce
solutions provider, doing things such as web-hosting, web design and maintenance
and call centre support. NetCel was founded in Jun-99 by the former President
Asia-Pacific of Dell Computer and by the Managing Director of <a href="http://www.chinavest.com/" target="_blank">Chinavest</a>.</p>

<h3 id="Equinix">Equinix, Inc</h3>

<p>On 2-Dec-99 PCCW <a href="http://www.pcg-group.com/press/prelaese-dec-02.html" target="_blank">announced</a>
that it had invested an undisclosed amount alongside several other investors in
the second round of financing (totaling US$80m) for <a href="http://www.equinix.com/">Equinix</a>,
which is building a network of data centres (server farms) with plans for 15 in
the US and 20 in the rest of the world.</p>

<h3 id="CTI">City Telecom (H.K.)</h3>

<p>On 3-Nov-99 PCCW subscribed 38.4m shares in <a href="http://www.ctihk.com/" target="_blank">City
Telecom (H.K.) Ltd</a> at HK$5.60 each, for a total of about $215m (<b>US$27.6m</b>) in
cash. The shares represented 7.88% of CTI's enlarged issued share capital. </p>

<h3 id="CASH">CASH on-line, Inc</h3>

<p>On 14-Oct-99 it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991015/LTN19991015055.HTM" target="_blank">announced</a>
that PCCW would subscribe 44,000 shares of CASH On-line, Inc, which is an
unlisted subsidiary of HK-listed <a href="http://www.cash.com.hk/" target="_blank">Celestial
Asia Securities Holdings Ltd</a> (CASH) for HK$39m (<b>US$5.0m</b>). The shares
represented 5.07% of the enlarged issued share capital. </p>

<p>This followed a subscription <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990907/LTN19990907040.HTM" target="_blank">announced</a>
on 6-Sep-99 by a Taiwanese private company called Fortune International Limited,
to subscribe 43,000 shares of CASH on-line for US$4.5m (HK$34.83m). Fortune is
owned by a group of individual investors and managed by an unnamed Taiwanese
investment manager. Fortune had an option to subscribe a further 43,000 shares
for the same amount, US$4.5m, within 3 months of the original subscription
completion, which occurred on 15-Oct-99. That option was extended by 6 months on
18-Jan-00 for no consideration </p>

<p>The other investor in CASH on-line&nbsp; is Hikari Tsushin
which, as <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990818/LTN19990818015.HTM" target="_blank">announced</a>
on 17-Aug-99, agreed to subscribe 117,000 shares in CASH on-line for US$8m.
Hikari was also granted a 3-month option to subscribe 70,000 shares for a
further US$7.8m. This was <a href="http://www.hkex.com.hk/listedco/listconews/19991102/LTN19991102018.HTM" target="_blank">exercised</a>
on 28-Oct-99. As a result, CASH owns 70.76% of CASH on-line, Hikari Tsushin owns
19.96%, PCCW owns 4.70% and Fortune owns 4.59%. </p>

<p>CASH on-line through wholly-owned subsidiary <a href="http://www.e-finance.com.hk/" target="_blank">e-finance.com.hk
Ltd</a> runs&nbsp; a consumer financial information site. Another wholly-owned
subsidiary runs internet securities broking services which are also accessed
over mobile phones. Celestial Securities Limited, a wholly-owned subsidiary of
CASH (but not of CASH on-line), is a member firm of the Stock Exchange of Hong
Kong and presumably takes orders from the CASH on-line subsidiary. It is not
clear what commission arrangements exist between the two. </p>

<h3 id="Softnet">SoftNet Systems, Inc</h3>

<p>On 13-Oct-99 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991014/LTN19991014027.HTM" target="_blank">announced</a>
a subscription of 5m shares in Nasdaq-listed <a href="http://www.softnet.com/" target="_blank">SoftNet
Systems, Inc</a> at US$25.75 per share, for a total of <b>US$128.8m</b>
(HK$998m) in cash. The issue was done at market price, and the shares
represented 22.5% of the enlarged issued share capital of the company. Deutsche
Bank advised PCCW on the deal. </p>

<p>SoftNet works through its wholly-owned subsidiary <a href="http://www.ispchannel.com/" target="_blank">ISP
Channel</a> with small and medium-sized cable TV companies in the US to offer
their customers broadband internet access. It installs cable head-ends needed to
offer the service, and then connects the cable system to the internet (often by
satellite) and provides customer support. As of 15-Sep-99 it had over 6,000
customers. </p>

<p>SoftNet also sells commercial internet connections using leased
capacity on satellites through its wholly-owned subsidiary <a href="http://www.vsat.net/" target="_blank">Intellicom,
Inc</a>. The service can be used by schools or small community ISPs and is
complemented by caching technology to reduce bandwidth usage. </p>

<p>PCCW and SoftNet were negotiating terms for a proposed joint
venture called Pacific Century SoftNet to provide services to Asian cable TV
operators using SoftNet's know-how. </p>

<h3 id="SilkRoute">SilkRoute Holdings Pte Ltd</h3>

<p>On 9-Oct-99 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991011/LTN19991011020.HTM" target="_blank">announced</a>
agreements to take a 25.1% stake in unlisted <a href="http://www.silkroute.com/" target="_blank">SilkRoute
Holdings Pte Ltd</a> of Singapore. PCCW subscribed 18,130 shares in unlisted
SilkRoute for US$15.85m, comprised of <b>US$6m</b> in cash and 11,759,953 new
shares in PCCW. It also purchased 12,435 shares in SilkRoute from the existing
management shareholders, in exchange for 13,216,650 new shares in PCCW worth
US$11.07m.</p>

<p>SilkRoute started as a web design company in 1994 and has moved
on to incubating other web sites. It's web design work is now carried out by a
subsidiary called <a href="http://www.latitudeweb.com/" target="_blank">Latitude
Web</a>. On the venture side, the company has undisclosed stakes in <a href="http://www.webexpress.com.sg/" target="_blank">Webexpress</a>,
which provides content management services to update clients' corporate web
sites, and <a href="http://www.transparity.com/" target="_blank">Transparity</a>,
which develops internet security software in Singapore. Transparity is a joint
venture with <a href="http://www.krdl.org.sg/">Kent Ridge Digital Labs</a>,
owned by the Singapore Government. Another SilkRoute investment is <a href="http://www.collectivejuice.com.sg/" target="_blank">Collective
Juice</a>, which is a Singapore-based reverse auction and buying-club site.</p>

<p>SilkRoute has an associated company (unknown percentage) called <a href="http://www.amoweb.com/" target="_blank">Advanced
Manufacturing Online Ltd</a> which provides web-based supply chain management
services for manufacturing businesses. If AMO is floated, then PCCW has an
option to acquire another 4.9% of SilkRoute for US$6.5m, exercisable within 3
months of the listing. Investors in AMO include 3i Group plc, <a href="http://www.asiatechv.com/" target="_blank">AsiaTech
Ventures</a>, Goldman Sachs, <a href="http://www.dollcap.com/">Doll Capital</a>
and Morgan Stanley.</p>

<h3 id="StarEastNet">StarEastNet </h3>

<p>On 28-Sep-99 it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990929/LTN19990929042.HTM" target="_blank">announced</a>
that PCCW had subscribed <b>US$10.6m </b>(HK$81.8m) in cash for 100 shares equal
to 10% of the enlarged issued share capital of Star East Information Technology
Corp (SEIT). At the same time, it acquired a further 10% from the existing
shareholders in exchange for the issue of 11,719,994 new shares at HK$6.98 per
share, or HK$81.8m in total. 7% was sold by HK-listed ITC Corporation Ltd and 3%
by a &quot;group of entertainers&quot;. </p>

<p>SEIT runs <a href="http://www.stareastnet.com/" target="_blank">StarEastNet</a>,
a Chinese-language youth entertainment site. </p>

<p>PCCW was granted an option to subscribe US$13.7m (HK$106.3m) for
another 100 shares in SEIT for 12 months from the completion of the
subscription. The same option was granted to existing shareholder Hikari
Tsushin. </p>

<p>ITC also granted PCCW an option to purchase 5% of SEIT from ITC
at a 15% discount to the initial public offer price in the event that SEIT is
listed on Nasdaq within 24 months from the completion of the subscription. </p>

<p>The deal followed an earlier deal between SEIT and Hikari
Tsushin <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990824/LTN19990824026.HTM" target="_blank">announced</a>
on 23-Aug-99 in which Hikari subscribed 20 shares in SEIT then representing 10%
of the issued share capital for US$9.5m (HK$74.1m) and was granted an option by
ITC to purchase 7% of SEIT for US$6.65m within 30 days after the launch of the
web site. The group of entertainers also granted Hikari an option over 3% of
SEIT. Both options were exercised prior to the introduction of PCCW. </p>

<p>As a result of the above (and prior to the new options being
exercised by Hikari or PCCW) the effective shareholdings are ITC: 27.2%, Star
East Holdings: 24.3%, PCCW: 20%, Hikari Tsushin: 18% and entertainers: 10.5%. </p>

<p>Star East Holdings and PCCW agreed to hold 20% each of their
holdings in a joint-venture vehicle to provide them with a 40% management block. </p>

<h3 id="CMGI">CMGI, Inc</h3>

<p>On 23-Sep-99 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990924/LTN19990924034.HTM" target="_blank">announced</a>
a share swap with Nasdaq-listed <a href="http://www.cmgi.com/">CMGI, Inc</a> in
which PCCW would issue 448,347,107 new shares in exchange for 4,057,971 common
shares in CMGI. As a result, PCCW then had a stake of 3.4% in CMGI (or 3.2%
assuming conversion of outstanding preferred stocks) while CMGI had a stake of
5.5% in PCCW. The day before the share swap, PCCW closed at HK$6.45 while CMGI
closed at US$82.8125, and both sides agreed the respective shares being issued
were worth US$350m, representing a discount of 6.2% on PCCW's shares and a
premium of 4.2% on CMGI's shares.</p>

<p>CMGI has since <a href="http://www.cmgi.com/press/99/1299split.htm" target="_blank">split</a>
its stock 2 for 1.</p>

<p>CMGI is a company originally known as College Marketing Group,
which now has a mixture of majority-controlled internet operating businesses as
well as stakes in various venture capital funds run by <a href="http://www.ventures.com/" target="_blank">@Ventures</a>.
The funds in turn have stakes in other internet companies.</p>

<h3 id="Outblaze">Outblaze Ltd</h3>

<p><a href="http://www.outblaze.com/">Outblaze Ltd</a> is an
application service provider which provides e-mail and other forms of
out-sourcing for web sites. Outblaze received its first listed capital from
HK-listed <a href="http://www.chinarichholdings.com/" target="_blank">China Rich
Holdings</a> in a transaction <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990517/LTN19990517002.HTM" target="_blank">announced</a>
on 15-May-99. China Rich reportedly injected US$4.5m for its 50% stake, although
the figure was not disclosed. The other 50% was held by founder Mr Yat Siu. </p>

<p>On 17-Aug-99 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990819/LTN19990819014.HTM" target="_blank">agreed</a>
to subscribe 20% of the enlarged issued share capital of Outblaze Ltd for <b>US$7m</b>. </p>

<p>On 11-Oct-99 Hikari Tsushin <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991012/LTN19991012032.HTM" target="_blank">agreed</a>
to acquire 10% of the existing issued shares of Outblaze for US$4m (of which 8%
came from China Rich) and subscribe for 5% new shares for a consideration of
US$2.75m. </p>

<p>On 12-Oct-99 a European fund later named as Lotus Asset
Management <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991013/LTN19991013040.HTM" target="_blank">agreed</a>
to acquire 4% of Outblaze from China Rich for US$2.1m and also acquired 1% from
another party. The deal valued Outblaze at US$52.5m. </p>

<p>The overlapping timing of the last two transactions and
incomplete data makes it difficult to be precise about the resulting
percentages. </p>

<h3 id="iLink">iLink.net</h3>

<p><a href="http://www.ilink.net/" target="_blank">iLink.net</a> is
an 80:20 joint venture between PCCW and <a href="http://www.dotcompacific.com/" target="_blank">Dotcom
Pacific Ltd</a>. iLink runs a data centre in premises on the 56th floor of The
Centre, a building in Hong Kong which was developed by Cheung Kong. The total
amount invested by PCCW is not known. </p>

<p>Dotcom Pacific separately owns&nbsp; <a href="http://www.ubuyibuy.com/" target="_blank">ubuyibuy</a>, a business
to consumer shopping site. It also started an online advertising
agent called <a href="http://www.admomentum.com/" target="_blank">AdMomentum Ltd</a>. </p>

<p>On 17-Feb-00 HK-listed OEM electronics manufacturer <a href="http://www.oceanhk.com/" target="_blank">Ocean
Information Holdings Ltd</a> announced the purchase of 60% of Admomentum in
exchange for 180m new shares valued at $0.80 each (but trading at $2.20 each on 25-Jan-00 prior to being suspended pending the announcement).
Admomentum was formed on 23-Aug-99 and by 31-Dec-99 had turnover of just HK$0.7m
and losses of HK$1.9m. </p>

<p>In the same announcement it was disclosed that Dotcom Pacific is
owned 63.87% by DBD Ventures Inc and 36.13% by Mr Johnny K H Chan. DBD Ventures
is owned 84.66% by 3 members of DotCom Pacific's management and 15.34% by Mr
Wong Kam Fu, founder of Star Telecom. Two of the management team were with Star
Telecom's ISP business before it was sold to Cable &amp; Wireless HKT, whereupon
they moved to iCable for 9 months before leaving with the third member to set up
DotCom Pacific. </p>

<h3 id="Miscellaneous">Miscellaneous </h3>

<p>On 15-Oct-99 PCCW <a href="http://www.pcg-group.com/press/prelaese-oct-15.html" target="_blank">announced</a>
a range of other investments without mentioning the dates or amounts involved.
The percentage interests were presumably correct at the time of announcement but
may since have changed. PCCW said it had: </p>

<ul>
  <li>10% of <a href="http://www.actionace.com/" target="_blank">ActionAce</a>,
    an online toy seller;</li>
  <li>5% of <a href="http://www.creditland.com/" target="_blank">Creditland</a>,
    an online comparison site for US consumer credit;</li>
  <li>6% of <a href="http://www.intelligenesis.net/" target="_blank">Intelligenesis</a>,
    which develops artificial intelligence software;</li>
  <li>6% of <a href="http://www.mediaring.com/" target="_blank">MediaRing</a>,
    which provides internet telephony software.</li>
</ul>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
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