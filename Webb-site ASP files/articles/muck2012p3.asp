
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

<script type="text/javascript">document.title="Raking muck, Part 3";</script>

	<div class="summary">We now connect Joseph Lau to Executive Talent, and focus on a series of dubious transactions by Hycomm and the bubble in its stock while it did the coal mine hokey cokey, from which bubble Joseph Lau has profited hugely. We also look at the creation of Inno-Tech and the youngest infant mortality on GEM, Codebank.</div>

<h2 class="center">Raking muck, Part 3<br>
<span class="headlinedate">5 March 2012</span></h2>
<p>Continuing on from <a href="muck2012p2.asp">Part 2</a>, you will 
recall that there are at least 8 listed companies in this series:</p>
<ul>
	<li><a href="../dbpub/orgdata.asp?p=4905">China Outdoor Media Group Ltd</a> (<strong>COMG</strong>, 
0254)</li>
	<li><a href="../dbpub/orgdata.asp?p=10770">China Post E-Commerce (Holdings) Ltd</a> (<strong>CPEC</strong>, 8041)</li>
	<li><a href="../dbpub/orgdata.asp?p=23261">China Railsmedia Corp Ltd</a> (<strong>Railsmedia</strong>, 
	0745)</li>
	<li><a href="../dbpub/orgdata.asp?p=1365">China Yunnan Tin Minerals Group Co 
	Ltd</a> (<strong>CYTM</strong>, 0263)</li>
	<li><a href="../dbpub/orgdata.asp?p=60339">CNC Holdings Ltd</a> (<strong>CNC</strong>, 8356)</li>
	<li><a href="../dbpub/orgdata.asp?p=4946">Hycomm Wireless Ltd</a> (<strong>Hycomm</strong>, 
	0499)</li>
	<li><a href="../dbpub/orgdata.asp?p=16958">Inno-Tech Holdings Ltd</a> (<strong>Inno-Tech</strong>, 
	8202) and</li>
	<li><a href="../dbpub/orgdata.asp?p=1586">Wo Kee Hong (Holdings) 
Ltd</a> (<strong>WKH</strong>, 0720).</li>
</ul>
<p>To this list we now add a 9th company:</p>
<ul>
	<li><a href="../dbpub/orgdata.asp?p=3449">Simsen International Corp 
Ltd</a> (<strong>Simsen</strong>, 0993)</li>
</ul>
<p>In Part 2, we explained how <a href="../dbpub/orgdata.asp?p=1851269">Executive 
Talent Limited</a> (<strong>Executive Talent</strong>) had been rewarded with 
shares as &quot;Arranger&quot; in the creation of COMG, in which Vicky Yu was also a subscriber, and how 
earlier, in 2005, Executive Talent had been a creditor-cum-shareholder in the 
restructuring of <a href="../dbpub/orgdata.asp?p=16185">
KH Investment Holdings Ltd</a> (<strong>KHIH</strong>, 8172, then Satellite 
Devices) in the same year that Vicky Yu was appointed to the board of KHIH.</p>
<p>So whom else can we connect to Executive Talent? Joseph Lau, of COMG and CPEC, 
which featured heavily in Part2, amongst others. 
Here's how:</p>
<h3>WKH and Hycomm invest in Corning</h3>
<p>On 13-Aug-2007, WKH
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0815/LTN20070815003.pdf" target="_blank">
agreed</a> to buy 10% of <a href="../dbpub/orgdata.asp?p=67647">Corning 
Investments Ltd</a> (<strong>Corning</strong>) from 3 vendors for HK$36m, 
satisfied by 31,266,284 new shares (12.25%) of WKH at $1.1514 each. Corning was incorporated on 28-Feb-2007 and owned 100% of <a href="../dbpub/orgdata.asp?p=67645">Digital Outdoor Television (Hong Kong) Ltd</a> (<strong>DOTV</strong>) 
which in turn owned 100% of <a href="../dbpub/orgdata.asp?p=67646">Today's Media Ltd</a> (<strong>Today's Media</strong>). </p>
<p>The vendors 
were &quot;Yang Pei&quot; (3.5%), &quot;Ye Ai Fang&quot; (3.0%) and Executive Talent (3.5%). We know 
nothing about Yang Pei and Ye Ai Fang, who sold their entire stakes. The 
announcement didn't say who owned Executive Talent, but the obligations of all 
vendors were guaranteed by Joseph Lau and one Yuen Nim Cho. That would be
<a href="../dbpub/positions.asp?p=1863615">Joseph Yuen Nim Cho</a>, then CEO of 
DOTV. After the deal, Executive Talent retained 14.5% and the 
other 75.5% was owned by 2 unnamed parties. The deal was completed on 
24-Aug-2007 and the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0829/LTN20070829159.pdf" target="_blank">
circular</a> was dated 30-Aug-2007. The financial adviser was
<a href="../dbpub/adviserships.asp?p=12115">Kingston Corporate Finance Ltd</a>.</p>
<p>DOTV was incorporated on 9-Jun-2006 and named &quot;Adcentral Company Limited&quot; 
until 3-Apr-2007. DOTV acquired Today's Media on 2-May-2007 &quot;and started its 
operation since then&quot;. Today's Media had &quot;an installed base of over 100 plasma 
TVs in various locations in Hong Kong&quot; in restaurants, computer arcade and 
record stores. More indoor than outdoor then. It made a loss of HK$2.72m in 2005 
and $4.84m in 2006. DOTV had consolidated net liabilities of $0.66m at 
31-May-2007, but the deal valued it at (wait for it) HK$360m. Yes, really.</p>
<p>On 24-Aug-2007, 11 days after WKH invested in Corning, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0828/LTN20070828456.pdf" target="_blank">
agreed</a> to buy 7.5% of Corning from 3 vendors (2.5% each) for HK$27m, 
satisfied by 270m new shares (7.56%) of Hycomm at $0.10 each. Each vendor was a 
BVI company with no disclosed owner(s). The vendors were 
<a href="../dbpub/orgdata.asp?p=1851286">Delancey Ltd</a> (<strong>Delancey</strong>), 
<a href="../dbpub/orgdata.asp?p=1851287">Noblemore Holdings Ltd</a> (<strong>Noblemore</strong>), and Executive Talent. After 
this, Delancey owned 48.5%, Noblemore 22.0% and Executive Talent 12.0% of 
Corning. The 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0905/LTN20070905048.pdf" target="_blank">circular</a> was dated 5-Sep-2007 and the deal completed on 
18-Sep-2007. The financial adviser was
<a href="../dbpub/adviserships.asp?p=14271">Mega Capital (Asia) Co Ltd</a>.</p>
<p>We note that the COMG web site <a href="../codocs/COMGp1.pdf" target="_blank">
describes</a> Joseph Lau as &quot;Founder of Digital Outdoor Television (DOTV)&quot; so it 
seems plausible that he was also behind one or more of the vendors in these 
transactions - otherwise, he had no shareholding in the venture, which would be 
odd for a founder, and it would be even odder to voluntarily guarantee the 
vendors' obligations without having an interest in them. Whatever his role, this was yet 
another outdoor media venture with which he was associated and stakes in which 
had been sold at high prices to listed companies.</p>
<p>WKH has gradually written off its $36m investment in Corning. It wrote off 
$6m in 2007, $9m in 2008, $6m in 2009 and $5.7m in 2010, reducing its book value 
to $9.3m at 31-Dec-2010. Hycomm has taken a more pessimistic approach regarding 
its $27m investment, writing off $4.5m in the year to 31-Mar-2008 and $22.5m in 
the year to 31-Mar-2009, reducing its book value to zero less than 2 years after 
purchase. So between the two listed companies, for $63m of investment, they have 
only $9.5m of book value left.</p>
<p>Today's Media was dissolved by deregistration on 10-Dec-2010, and the DOTV 
web site <a href="http://www.dotv.com.hk" target="_blank">www.dotv.com.hk</a> is 
not responding at the time of writing.</p>
<h3>A concert party for COMG?</h3>
<p>Now that we have demonstrated Joseph Lau's association with Executive Talent 
as guarantor of its obligations in the sale of Corning to WKH on 13-Aug-2007, 
the question arises: were Joseph Lau and Executive Talent acting in concert in 
the creation of COMG? Joseph Lau was the largest 
participant in the placing on 5-Oct-2007 of unsubscribed shares from the open 
offer, when he took up 29.53% of COMG, and he was probably also one of the 3 
sub-underwriters of Tanrich Capital when the open offer was launched on 
23-Aug-2007, just 10 days after the WKH/Corning deal.</p>
<p>As &quot;Arranger&quot; in the creation of COMG, on 23-Nov-2007, Executive Talent was 
issued 44m shares (4.72%) of COMG, which diluted Joseph Lau to 28.14%. So 
between them, they had 32.86% of COMG. If they were acting in concert, then that 
should have triggered a takeover bid. <strong>We call on the SFC to investigate 
this, in addition to the concert party concerns raised in Part 2.</strong></p>
<p>That's enough about Executive Talent, but there is more to come about Joseph 
Lau and friends, and we get there by looking at the history of Hycomm.</p>
<h3>Hycomm share placing</h3>
<p>On 27-Jul-2007, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0803/LTN20070803306.pdf" target="_blank">
launched</a> a placing of 320m shares (9.7%) @$0.126, a 19.75% discount to the 
5-day average price, via <a href="../dbpub/adviserships.asp?p=74116">Hani 
Securities (H.K.) Ltd</a> (<strong>Hani</strong>), to pay for a forestry 
acquisition. It is notable that after the placing completed on 3-Aug-2007, there 
was no immediate deposit of the shares into CCASS - they remained outside the 
clearing system, and only 80m were
<a href="../ccass/chldchg.asp?i=1194&amp;d=2007-08-21">deposited</a> to 
Hani's account on 21-Aug-2007.</p>
<h3>Hycomm convertible notes</h3>
<p>On 10-Oct-2007, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1015/LTN20071015479.pdf" target="_blank">
launched</a> a massive best efforts placing for up to HK$300m of 5% 3-year 
convertible notes in 2 tranches, equivalent to 84.01% of the existing issued 
shares, again through Hani. The conversion price of $0.10 was a 25.9% discount to the 5-day average 
price. None of the placees would hold more than 9.99% of Hycomm upon conversion, 
avoiding them becoming connected persons of Hycomm. A
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1101/LTN20071101262.pdf" target="_blank">
circular</a> was dated 1-Nov-2007 and the placing was approved (presumably on a 
show of hands) at an EGM on 16-Nov-2007. Eventually and without further 
announcement, $150m of the notes were issued on 4-Feb-2008, raising $146m net.</p>
<p>The announcement and circular both said that &quot;Subject to consent of the 
[notes] holders, [Hycomm] shall be entitled at any time before maturity to 
redeem the whole principal amount of the relevant [notes].&quot; What they didn't say 
was that this would cost 105% of the principal amount. Shareholders should have 
been told, but this fact is buried in note 24 of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0731/LTN20080731063.pdf" target="_blank">
annual accounts</a> for the year to 31-Mar-2008.</p>
<p>So who subscribed the notes? Disclosures of interests show that Joseph Lau
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=23413&amp;lang=EN&amp;dia=Y" target="_blank">
subscribed $34m</a> (and simultaneously acquired 160m shares from someone else),
<a href="../dbpub/natarts.asp?p=6883">George Chan Yuen Ming</a> (<strong>George 
Chan</strong>)
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=23407&amp;lang=EN&amp;dia=Y" target="_blank">
subscribed $50m</a> and <a href="../dbpub/positions.asp?p=29432">Beh Yong Shin</a> 
(<strong>Ms Beh</strong>)
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=23412&amp;lang=EN&amp;dia=Y" target="_blank">
subscribed $50m</a>, so each had a holding equivalent to 14.00% of the existing 
issued shares (the disclosures wrongly show the percentage as 9.86%, which is 
based on the enlarged share capital if all the notes were converted). We don't 
know whom Joseph Lau acquired the 160m shares from, but we wonder whether that 
relates in any way to Delancey, Noblemore and Executive Talent, which together 
received 270m shares when they sold the stake in Corning to Hycomm, or to the 
320m shares issued in the aforementioned placing. The 3 disclosed holders 
together subscribed $134m of the notes, so $16m were subscribed by others.&nbsp; </p>
<p>The interesting thing about the convertible notes issue is that it reunites 
George Chan with Joseph Lau, who was &quot;a General Manager in Investment Division 
for over 5 years&quot; at Tomorrow International Holdings Ltd (<strong>Tomorrow</strong>, 0760), which is now known as
<a href="../dbpub/orgdata.asp?p=1966">Talent Property Group Ltd</a>. George Chan 
was the controlling shareholder of Tomorrow and has been a substantial or 
controlling shareholder of several listed companies but has never been a 
director of any HK-listed company. Who needs the disclosure that goes with that? 
He has featured several times on this site.</p>
<p>Neither George Chan nor Joseph Lau joined the Hycomm board, but on 15-Oct-2007, Mr <a href="../dbpub/positions.asp?p=13136">Liu Shun Chuen</a> 
was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1015/LTN20071015217.pdf" target="_blank">
appointed</a> as an ED of Hycomm, and three weeks later, on 6-Nov-2007, Mr
<a href="../dbpub/positions.asp?p=13135">Yeung Sau Chung</a> was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1107/LTN20071107118.pdf" target="_blank">
appointed</a> as an INED of Hycomm,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1212/LTN20071212112.pdf" target="_blank">
switching</a> to ED on 11-Dec-2007 and becoming MD on 4-Jun-2009, a post he 
still holds. On 18-Dec-2007 <a href="../dbpub/positions.asp?p=8264">Elaine Tam 
Chi Ling</a> was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1219/LTN20071219158.pdf" target="_blank">
appointed</a> as INED. Roll the clock back to 31-Mar-2002 and you will find that 
all 3 of these people served together <a href="../dbpub/officers.asp?p=786">on the board</a> 
of Goldbond Group Holdings Ltd (0172), then known as &quot;Can Do Holdings Limited&quot;, 
when the largest shareholder was George Chan. Take a look at the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2002/0731/0172/f105.pdf" target="_blank">
directors' report</a> and you will see what we mean.</p>
<h3>Hycomm issues shares to George Chan for 5.8% of Tomorrow </h3>
<p>On 12-Mar-2008, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0317/LTN20080317455.pdf" target="_blank">
agreed</a> to buy 130,386,800 shares (5.8%) of Tomorrow @$0.4525 from George 
Chan in exchange for 590m shares (14.18%) of Hycomm. George Chan already held 
$50m of notes convertible into 500m shares representing 14% of the existing 
shares of Hycomm, but because he had not converted, he was not regarded as a 
connected person under the Listing Rules.</p>
<p class="regbox">Regulatory note: as we have said for years, the Listing Rules 
should be amended so that persons with interests in shares underlying 
convertibles, warrants or other derivatives, amounting to at least 10% of the 
existing shares, should be regarded as connected persons. The potential to 
become substantial shareholders by exercising these rights is enough to have 
substantial influence over the actions of a company without converting.</p>
<p>Companies cannot issue shares at below par value, which in Hycomm's 
case was $0.10. So the Hycomm shares were issued at $0.10, which was 48.36% 
above the 5-day average closing price. However, this was exactly countered by 
paying 48.36% above the 5-day average closing price for the Tomorrow shares. So 
Hycomm issued shares with a par value of $59m in exchange for Tomorrow shares 
which were only worth $39.8m in the market, defeating the purpose of the 
prohibition against issuing shares below par value.</p>
<p>Hycomm already held 10m shares (0.44%) of Tomorrow before the deal with 
George Chan, so the deal increased its stake to 6.24%. On 19-Jun-2009, Hycomm
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=116787&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 90m shares (4.00%) of Tomorrow off-market @$0.219, less than half the 
purchase price, cutting its stake to 2.24%. The purchaser was an unnamed 
&quot;independent third party&quot;.</p>
<h3>Open offer and house purchase</h3>
<p>On 22-Jul-2008, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0722/LTN20080722412.pdf" target="_blank">
launched</a> a 1:2 open offer at $0.10, a 39.4% discount to the 5-day average, raising $40.0m net, along with a 5:1 
share consolidation effective 28-Aug-2008. The offer was partly underwritten by 
George Chan and partly by <a href="../dbpub/articles.asp?p=36711">Head &amp; Shoulders Securities Ltd</a> (<strong>HSS</strong>). 
At the same time, Hycomm agreed to buy Million Good Group Ltd (<strong>Million 
Good</strong>), a BVI company which owned House 26, Las Pinadas, 33 Shouson Hill 
Road, HK, which was the home of the vendors,
<a href="../dbpub/positions.asp?p=36710">Stanley Choi Chiu Fai</a> (<strong>Stanley 
Choi</strong>) and his wife <a href="../dbpub/natarts.asp?p=1851313">Maggie Cheung Fung 
Kuen</a> (<strong>Maggie Cheung</strong>), who agreed to lease it back for 2 
years. The deal was priced at HK$37m, which was based on a property value of 
$64m less a mortgage debt. $35m of the payment was deferred for up to 270 days 
after completion 
at 4% interest p.a.. Completion occurred on 31-Oct-2008.</p>
<p class="regbox">Policy note: by buying an offshore company which owns a 
property, the purchaser can avoid HK stamp duty on a property purchase, which is 
one of many good reasons to <a href="stampout.asp">abolish stamp 
duty</a>.</p>
<p>The open offer
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0829/LTN20080829111.pdf" target="_blank">
circular</a> went out on 28-Aug-2008 and the acquisition
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0903/LTN20080903330.pdf" target="_blank">
circular</a> was dated 4-Sep-2008. When the open offer
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0917/LTN20080917571.pdf" target="_blank">
closed</a> on 17-Sep-2008, it was only 32% subscribed. George Chan took up an 
additional 148m shares, increasing his stake from 14.18% to 26.04% of Hycomm, 
while HSS arranged subscribers for 134,947,910 shares or 10.81%. From the 
disclosures of interest, we can
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=26824&amp;lang=EN&amp;dia=Y" target="_blank">
impute</a> that in addition to taking up the entitlement to 16m shares on his 
32m holding, Joseph Lau also took up 13m shares from the underwriter.</p>
<p>Disclosures of interest also show that 90m shares (7.21%) were 
subscribed for $9m by Tin Ching Industrial Co Ltd, which was 99% owned by
<a href="../dbpub/orgdata.asp?p=1851868">Tin Ching Holdings Ltd</a> (BVI), which 
is 50% owned by Mr <a href="../dbpub/natarts.asp?p=1851870">Chan Koung Nam</a> 
and 50% by Mr <a href="../dbpub/natarts.asp?p=1851869">William Chan Kwong Yin</a>. 
After a 20:1 consolidation, they sold their shares off-market on 30-Jan-2009 at 
$0.26, taking a loss of $7.83m, or 87%. Skipping forward, on 8-Aug-2011, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0808/ltn20110808786.pdf" target="_blank">
loaned</a> HK$5m to <a href="../dbpub/orgdata.asp?p=728595">Hong Kong Finance Co Ltd</a>, a money lender which is owned by 
the two men. The announcement didn't mention their previous investment in Hycomm.</p>
<p>Incidentally, by the time of the Hycomm open offer, Stanley Choi owned $8m of 
the aforementioned convertible notes.</p>
<h3>Simsen and HSS</h3>
<p>One puzzling thing is that 
the Hycomm open offer announcement claimed that HSS was 29.7%-owned by Stanley Choi (at 22-Jul-2008). This is 
odd, because either side of this date at 30-Apr-2008 and 30-Apr-2009, HSS was 
100%-owned by Simsen, according to its accounts.</p>
<p>Simsen
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0308/LTN20070308039.pdf" target="_blank">
agreed</a> to buy 40% of HSS from Maggie Cheung for HK$16m on 8-Mar-2007, of 
which $3m was cash and $13m in shares. When this completed on 6-Jun-2007, the 
shares were worth HK$63.21m due to a bubble in the stock. Simsen then put in 
another $7.6m of cash in rights issues by HSS. On 17-Dec-2007, Simsen
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1219/LTN20071219323.pdf" target="_blank">
agreed</a> to buy the remaining 60% of HSS for HK$90m in shares from Maggie Cheung 
(52%) and Mr
<a href="../dbpub/positions.asp?p=100356">Lam Tung Woo</a> (8%). When this 
completed on 2-Apr-2008, the Simsen shares were worth $78.59m, and Stanley Choi 
and Maggie Cheung via their 50:50 company <a href="../dbpub/orgdata.asp?p=1851318">
Lynch Oasis Inc.</a> (<strong>Lynch Oasis</strong>) jointly
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=24189&amp;lang=EN&amp;dia=Y" target="_blank">
owned</a> 29.7% of Simsen, just below the takeover trigger, while Chairman
<a href="../dbpub/positions.asp?p=3496">Haywood Cheung Tak Hay</a> (<strong>Haywood 
Cheung</strong>)
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=63975&amp;lang=EN&amp;dia=Y" target="_blank">
owned</a> 31.73%. Stanley Choi became an ED of Simsen on 1-May-2008.</p>
<p>Altogether then, Simsen agreed to pay $106m for HSS but booked it at 
$157.2m due to share price movements. Simsen wrote off $108.18m of goodwill on 
the acquisition in the 2 years to 30-Apr-2009.</p>
<p>There 
was no indication in Simsen's accounts that it had sold or bought any part of 
HSS in the year to 30-Apr-2009. So how could Stanley Choi have held 29.7% of HSS on 
22-Jul-2008? <strong>The SFC should investigate this 
inconsistency.</strong></p>
<p>On 27-Nov-2009, as part of a takeover of Simsen, it
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/1202/LTN200912021029.pdf" target="_blank">
sold</a> HSS for just HK$31m to <a href="../dbpub/orgdata.asp?p=1851317">Tracing 
Paper International Ltd</a> (BVI), which was 70% owned by
Haywood Cheung (the outgoing Chairman) and 30% owned by Lynch Oasis. The sale was at close to net asset value, because HSS had in Jan-2009 
transferred its securities broking business to fellow subsidiary
<a href="../dbpub/adviserships.asp?p=11249">United Simsen Securities Ltd</a>. 
The number of SFC licensees at HSS reduced from 25 in Mar-2009 to 3 in Jul-2009, 
as shown on <a href="../dbpub/SFChistfirm.asp?p=36711">this page</a>. On 
12-Apr-2010, Lynch Oasis sold most of its Simsen shares into the general offer, cutting 
its stake to 1.00%, for HK$62.18m. Stanley Choi left the board of Simsen on 
23-Apr-2010. HSS has resumed business under its new ownership.</p>
<h3>Note redemption and rights issue</h3>
<p>On 1-Dec-2008 Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/1201/LTN20081201179.pdf" target="_blank">
announced</a> that it would redeem the convertible notes, with $42m to be 
redeemed on 26-Nov-2008 and the rest on 16-Dec-2008. The second redemption was 
later
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/1218/LTN20081218404.pdf" target="_blank">
delayed</a> to 26-Feb-2009, to allow Hycomm to complete a massive 7:1
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0209/LTN20090209241.pdf" target="_blank">
rights issue</a> at $0.144 per share (after a 20:1 consolidation on 29-Jan-2009) 
to raise $60.9m net. The rights issue was underwritten by George Chan, Joseph 
Lau and HSS, but Ms Beh sub-underwrote 94m shares from HSS, or 21.5% of the 
issue.</p>
<p>When the issue 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0226/LTN20090226324.pdf" target="_blank">
completed</a> on 26-Feb-2009, only 34.08% of it was subscribed, 
of which 30.93% was George Chan and Joseph Lau's entitlements, so the public, 
who held 69.07%, only took up 3.15% of the issue and were heavily diluted to 
11.51% of Hycomm. George Chan increased his stake from 26.04% to 29.74% (just 
under the takeover threshold), Joseph Lau increased his stake from 4.89% to 
19.31%, and Ms Beh took up her full sub-underwriting of 94m shares, or 18.83%. 
Keep in mind that this issue was net cash positive for all of them, because the 
company redeemed the notes on the day the issue closed. The top 3 shareholders then held 67.88% of Hycomm in total.</p>
<p>HSS arranged 9 other 
subscribers to take up 20.61% of Hycomm, but they kept their stock outside the 
clearing system, so when the dust settled on 3-Mar-2009, only 9.07% of Hycomm
<a href="../ccass/choldings.asp?i=1194&amp;d=2009-03-03">was in CCASS</a> 
and thus tradable. 
An amount equal to Ms Beh's shares was
<a href="../ccass/chldchg.asp?i=1194&amp;d=2009-06-01">deposited</a> into 
CCASS with Yardley Securities Ltd on 1-Jun-2009.</p>
<h3>Hycomm and GINSMS</h3>
<p>On 15-Feb-2009, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0217/LTN20090217367.pdf" target="_blank">
agreed</a> to sell 60% of <a href="../dbpub/orgdata.asp?p=149022">Global Edge 
Technology Ltd</a> (<strong>Global Edge</strong>) to
<a href="../dbpub/orgdata.asp?p=1451299">Panaco Ltd</a> (<strong>Panaco</strong>) 
for HK$4m. The buyer's place of incorporation was not disclosed, nor was its 
owner. From another company's disclosures we can tell you that it was incorporated in HK on 
3-Feb-2009, just 12 days before the deal. Panaco was said to be an independent 
third party, but the other 40% of Global Edge was owned by
<a href="../dbpub/orgdata.asp?p=794634">Royal Link Investment Ltd</a> (<strong>Royal 
Link</strong>), a controller of Global Edge within the meaning of Listing Rule 
14A.13. For this reason <u>only</u>, it was said to be a connected transaction.</p>
<p>Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2003/0630/ltn20030630025.pdf" target="_blank">
acquired</a> its stake in Global Edge on 27-Jun-03 for HK$15m in new shares of 
Hycomm. Global Edge indirectly owned 49% of GIN International Ltd (<strong>GINI</strong>), 
engaged in inter-operator SMS services, delivering text messages between telecom 
operators generates about HK$0.04 per message. It did this with equipment from
<a href="http://www.comverse.com/" target="_blank">Comverse Network Systems</a>, 
which owned the other 51%, although Global Edge had an outsourcing contract with 
GINI which gave it 99% of the net income generated by GINI for provision of 
operation and management services to GINI, so the other 51% of GINI was not 
worth much (51% of 1% of the net income). What you might call a low GINI 
coefficient.</p>
<p>The
disposal
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0309/LTN20090309338.pdf" target="_blank">
circular</a> was dated 10-Mar-2009, with a fairness opinion from
<a href="../dbpub/adviserships.asp?p=34259">Guangdong Securities Ltd</a> signed 
by <a href="../dbpub/positions.asp?p=16325">Graham Lam Ka Wai</a>, and the deal was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0327/LTN20090327483.pdf" target="_blank">
approved</a> at an EGM on 27-Mar-2009. In the year to 31-Mar-2008, Global Edge made profit after tax of HK$1.911m, 
so 60% of that is $1.147m and the sale P/E was just 3.5.</p>
<p>After the sale to Panaco, Global Edge somehow acquired the other 51% of GINI. 
On 26-May-2009, Global Edge was rolled into a new Canadian shell,
<a href="../dbpub/orgdata.asp?p=1854453">GINSMS Inc</a>, at a valuation of 
C$4.76m (then about HK$33.4m), based on a share price of C$0.15, which was listed on 
TSX-Venture exchange (<a href="http://investing.businessweek.com/research/stocks/charts/charts.asp?ticker=GOK:CN" target="_blank">code</a>:
<strong>GOK</strong>) later that year after an offering at the same price. On 
that basis, Panaco's 19,059,925 shares (60%) of GOK were then worth C$2.86m 
(HK$20.0m) or about 5 times what Panaco paid Hycomm.</p>
<p>By the time of the <a href="../codocs/GOK090526.pdf" target="_blank">
sale and purchase agreement</a> to inject Global Edge into GOK, Royal Link had 
reduced its stake to 30%, and there were two new shareholders:
<a href="../dbpub/orgdata.asp?p=1860688">Wisefit Global Ltd</a> (<strong>Wisefit</strong>, 
6%) and <a href="../dbpub/orgdata.asp?p=1446499">Best Power Capital Resources 
Ltd</a> (<strong>BPCR</strong>, 4%). A director of Wisefit was
<a href="../dbpub/positions.asp?p=9603">Randy Hung King Kuen</a>, a corporate 
finance specialist and director of several HK-listed companies. A director of 
BPCR was Judith Chien, about whom we know nothing, but the contact address for 
BPCR was Shop 215, Manly Plaza, 995-997 King's Road, a small basement property 
which was owned by Hycomm until it was sold some time in the year to 
31-Mar-2009. You can spot it on page 111 of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0731/LTN20080731063.pdf" target="_blank">
2008 annual report</a>. A director of Panaco was a &quot;Raymond Tung&quot; and on the 
supplemental agreement &quot;Tung Siu Man&quot;. We know nothing about him.</p>
<p>According to the IPO <a href="../codocs/GOK091112ipo.pdf" target="_blank">
prospectus</a> of 12-Nov-2009 (p42-43), the Chairman of GOK,
<a href="../dbpub/positions.asp?p=25741">Jonathan Lai Man Kon</a> (<strong>Jonathan 
Lai</strong>) bought Panaco (with its shareholding in GOK) after GOK acquired Global Edge, but it doesn't say 
from whom or for how much. Royal Link was 95% owned by <a href="../dbpub/positions.asp?p=1854457">
Thomas Ip Kam Hoi</a> (<strong>Thomas Ip</strong>) and 5% owned by Jonathan Lai. 
The two men were the only directors of Global Edge and GINI when it was rolled 
into GOK. Jonathan Lai had been a director of GINI since Jan-2009.<br><br>
Now here is the problem:
Jonathan Lai is the son of Plotio founder
<a href="../dbpub/positions.asp?p=8063">Lai Yiu Keung</a> (<strong>YK Lai</strong>), 
who was Chairman of Hycomm until 4-Jun-2009. As Chairman, YK Lai signed the 
letter in the circular, calling Panaco and its owner(s) &quot;independent third 
parties&quot;. It seems like too much of a coincidence that an 
&quot;independent third party&quot; owning Panaco would subsequently sell it to the son of 
the Chairman of the vendor, Hycomm. If Jonathan Lai had owned Panaco when it 
dealt with Hycomm, or had an arrangement to buy it, then as the Chairman's son 
he would have been a connected person under the Listing Rules.</p>
<p><strong>We call 
on the SFC to investigate whether the circular contains a false and misleading 
statement that Panaco was an independent third party, thereby misleading 
shareholders who voted on this transaction.</strong></p>
<p>If there was a failure to disclose, then it wouldn't be the first time. Hycomm, YK Lai, his wife and two 
other directors were
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2005/1128/LTN20051128134.pdf" target="_blank">
censured</a> by the Listing Committee on 28-Nov-2005 for a set of unapproved 
connected transactions which related to a disposal of properties to YK Lai in 
2000.</p>
<h3>Hycomm and Stanley Choi</h3>
<p>As mentioned above, Hycomm had 270 days after completion to pay the remaining 
$35m to Maggie Cheung for the house-owning Million Good, taking it up to 28-Jul-2009. Although Hycomm had cash (net of bank borrowings) of $215.4m at 30-Sep-2009, it had not 
paid off the debt. This was extended by mutual agreement to 31-Dec-2012, and the 
interest rate dropped from 4% before 31-Dec-2009 to 1% after that. Meanwhile, 
her husband Stanley Choi
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=32744&amp;lang=EN&amp;dia=Y" target="_blank">
increased</a> his holding through the 5% disclosure threshold from 4.87% to 
5.67% on 10-Aug-2009. He may have acquired the bulk of his shares in the placing 
of unsubscribed shares at $0.144 by HSS after the rights issue. An amount equal 
to his holding was <a href="../ccass/chldchg.asp?i=1194&amp;d=2009-11-12">
deposited</a> into CCASS via United Simsen Securities Ltd on 12-Nov-2009.</p>
<p>Stanley Choi was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0422/LTN20100422909.pdf" target="_blank">
appointed</a> ED and Deputy Chairman of Hycomm on 23-Apr-2010 at a director's 
fee of HK$3m p.a., without any mention of the debt due to his wife. He
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0930/LTN20100930300.pdf" target="_blank">
resigned</a> on 1-Oct-2010 &quot;due to his other business and academic development&quot;, 
and the debt was settled with interest in the 6 months to 30-Sep-2011. According 
to the annual report for the year to 31-Mar-2011, he did not receive any 
remuneration.</p>
<h3>Hycomm and the hokey cokey</h3>
<p>You put your coal mines in, your coal mines out, in out, in out, shake them 
all about...</p>
<p>On 29-Jun-2010, George Chan
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0705/LTN20100705025.pdf" target="_blank">
agreed</a> to transfer 97m shares (19.74%) of Hycomm to
<a href="../dbpub/positions.asp?p=46852">Shih Jian Ping</a> (<strong>Mr Shih</strong>) 
and a separate
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=138893&amp;lang=EN&amp;dia=Y" target="_blank">
filing</a> discloses the price of $1.20 per share in cash. That was a 49% discount to the market price of $2.35, but the net asset value was only 
about $0.57 per share. In short, the stock was in a bubble, having risen from 
$0.16 on 3-Mar-2009 after the rights issue. Mr Shih had experience in coking 
coal mining in Shanxi province. He was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0708/LTN20100708089.pdf" target="_blank">
appointed</a> as Chairman on 8-Jul-2010. However, the share transfer from George 
Chan to Mr Shih was not as simple as it seemed, as you will see shortly.</p>
<p>On 20-Jul-2010, Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0720/LTN20100720416.pdf" target="_blank">
signed</a> a non-binding letter of intent with 2 BVI companies, the owners of 
which were not disclosed, to buy coal mines and coal washing plants for up to 
HK$10.5bn. The bubble in the stock inflated further, with the daily close 
peaking at $5.90 on 30-Aug-2010. During this, Joseph Lau
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=40064&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 10m shares @$3.60 on 20-Aug-2010 and
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=40493&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 9.4m shares @$5.60 on 15-Sep-2010, both off-market, cashing out 
$88.64m for 3.89% of the company, reducing his stake to 15.42%.</p>
<p>In a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0927/LTN20100927302.PDF" target="_blank">
concentration warning</a> published on 27-Sep-2010, the SFC said, in relation to 
Mr Shih's acquisition of shares from George Chan: &quot;our enquiry 
with the company registrar revealed that as of 13 September 2010, the Shares 
transfer has not been effected.&quot; So it was an &quot;agreement to transfer&quot;, but no 
transfer had actually occurred. In our view, the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0705/LTN20100705025.pdf" target="_blank">
announcement</a> of 29-Jun-2010 was false and misleading, because it said &quot;after the 
Shares Transfer, Regal Power and Mr Shi each holds...&quot; rather than &quot;will hold&quot; 
or &quot;would hold&quot;.
<strong>We call on the SFC to investigate this false and misleading statement.
</strong>Investors relied on it in believing that Mr Shi, the new Chairman, had 
an outright substantial stake in the future of Hycomm.</p>
<p>The stock was suspended at $4.96 on 29-Oct-2010 pending announcement of the 
acquisition agreement for the coal mines which was signed on 28-Oct-2010, but 
then there was a nearly 2-month gap (one could say the coke was on ice) until 20-Dec-2010, when Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/1220/LTN20101220581.pdf" target="_blank">
abandoned</a> the deal as &quot;certain conditions&quot; could not be fulfilled. When 
trading resumed on 21-Dec-2010, the stock plunged, closing at $2.99, down 39.7%, 
but still highly overvalued in our view.</p>
<p>On 31-Jan-2011, Mr Shih resigned as Chairman and ED of Hycomm &quot;due to his 
other business engagements&quot;, and the share transfer agreement was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0131/LTN20110131723.pdf" target="_blank">
terminated</a>, so the shares reverted back to George Chan. It didn't take long 
for George Chan to find someone else to dance with. On 8-Feb-2011, he
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0208/LTN20110208613.pdf" target="_blank">
transferred</a> 60m shares (12.02%) of Hycomm to Mr 
<a href="../dbpub/positions.asp?p=64987">Kong Lingbiao</a> (<strong>Mr 
Kong</strong>), another coal miner. No price was announced, but a
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=43545&amp;lang=EN&amp;dia=Y" target="_blank">
filing</a> shows that it was $2.00 per share in cash, a discount of 44.8% to the 
closing price of $3.62 that day. Mr Kong was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0317/LTN20110317371.pdf" target="_blank">
appointed</a> as Chairman on 17-Mar-2011.</p>
<p>On 21-Mar-2011, Stanley Choi
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=44141&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> his entire 28.69m shares (5.75%) of Hycomm off-market @$3.00, a 17.1% 
discount to the closing price of $3.62, but a huge premium to NAV, grossing 
$86.1m of proceeds.</p>
<p>On 11-Apr-2011, Joseph Lau sold another 35m shares (7.01%) of Hycomm @$3.371 
off-market, cutting his stake to 8.41% for cash of $118.0m. We estimate that he 
has already netted $174.3m from dealings in Hycomm shares, as follows:</p>
<img class="center" alt="" src="../images/HycommLau.gif">
<p>Joseph Lau's remaining 42m shares, at Friday's (2-Mar-2011) close of $1.98, are worth 
$83.16m, so that would take his net proceeds up to $257m. We are ignoring the 
$1.7m gain on redemption of his $34m of convertible notes and the interest 
thereon.</p>
<p>Hycomm is still a partially-deflated bubble with a highly concentrated 
ownership. The latest
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1130/LTN20111130223.pdf" target="_blank">
interim report</a> shows that it had net assets at 30-Sep-2011 of $0.586 per share. For the 6-month 
period, it had turnover of $4.3m and a net loss of $0.7m. Most of the turnover 
was from the management of car park spaces and the renting of the house to 
Maggie Cheung and Stanley Choi. Only 28.03% of the
<a href="../ccass/choldings.asp?d=2012-03-02&amp;i=1194">stock is in CCASS</a>, 
and 18.83% of that belongs to Ms Beh, which we believe is parked at Yardley 
Securities Ltd.</p>
<h3>Hycomm and Inno-Tech</h3>
<p>Now, let's take a trip back to 2002 and the IPO of Inno-Tech.
<a href="../dbpub/positions.asp?p=3204">Wong Yuen Yee</a> (<strong>YY Wong</strong>), co-founder and Chairman of Inno-Tech until 
19-Jan-2011, was an ED and General Manager of Hycomm (then Plotio Holdings Ltd) from 
1985 to 1991. That was before Hycomm took over the listing of a bankrupt 
company, <a href="../dbpub/orgdata.asp?p=135953">Kin Son Electronic (Holdings) 
Co Ltd</a>, in Oct-1997.</p>
<p>Thomas Ip, the other shareholder of GINSMS mentioned above, was a pre-IPO shareholder of Inno-Tech, 
holding 5.06% of it immediately after the 2002 IPO at nominal net cost of 
HK$6,162. According to the Inno-Tech prospectus, he had known YY Wong personally 
for over five years before 2002, and had introduced business to Innno-Tech, so he was 
rewarded with the shareholding. He had extensive experience in property 
investment and trading business in the PRC.</p>
<p>YY Wong co-founded Inno-Tech with her brother,
<a href="../dbpub/positions.asp?p=19692">Wong Kwok Sing</a>, in 1999. The formal connection between Hycomm and Inno-Tech dates back at least to 
20-Sep-2000, when Hycomm (then known as Plotio Holdings Ltd)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2000/0921/LTN20000921023.doc" target="_blank">
agreed</a> to buy 2,100 shares (21%) of <a href="../dbpub/orgdata.asp?p=1854448">CyberLiving Holdings Ltd</a> (<strong>CyberLiving</strong>), 
the forerunner of Inno-Tech, 
from 3 corporate shareholders (the owners of which were not disclosed) for 
HK$54.75m, satisfied with 75m shares (6.34%) of Hycomm @$0.73. This was 
supported by a valuation by <a href="../dbpub/articles.asp?p=5577">Purview (Far 
East) Ltd</a> (then Sallmanns (Far East) Ltd) at $260m signed by
<a href="../dbpub/positions.asp?p=44809">Brett A. Shadbolt</a> (<strong>Mr 
Shadbolt</strong>). We've put the
<a href="../codocs/0499_001011c.pdf">circular</a> online for your entertainment. 
CyberLiving was a loss-making 4-month old start-up with net assets of $0.44m at 
31-Aug-2000. Hycomm's investment in CyberLiving was converted into 57.6m shares 
(12%) of Inno-Tech upon its IPO in 2002, so the original cost was $0.95 per 
share. Inno-Tech went public at $0.28, 70.5% less than Hycomm paid for it.</p>
<p>The Inno-Tech
<a href="http://www.hkexnews.hk/newlistings/prospectuses/e_8202pro-20020730.pdf" target="_blank">
prospectus</a>, p176, shows that on 22-Jul-2000, 3 months before Hycomm bought 
their shares, the 3 shareholders, 
namely City Support Trading Ltd, Nice Plan Development Ltd and Nanyin Investment 
Ltd, had each paid par value for the shares, a total of US$2,100, &quot;as they were 
initial investors&quot;. 
The owners of those companies were still not disclosed.</p>
<h3>Michael Koh and his many GEMs</h3>
<p>Another early investor in Cyberliving on 22-Jul-2000 was Sinopower Profits 
Ltd, which subscribed HK$5.6m for 1,000 shares (10%) @$5,600, at same time as 
sister company Oriental Faith Technology Ltd (<strong>Oriental Faith</strong>) 
(which had earlier subscribed 500 shares for US$500/HK$3,900) bought 250 shares 
(2.5%) @$6,000 from existing holders, increasing its stake to 7.5%. Both 
companies were 100%-owned by <a href="../dbpub/positions.asp?p=10778">Michael 
Koh Tat Lee</a> (<strong>Michael Koh</strong>) and his wife 
<a href="../dbpub/natperson.asp?p=47012">Eva Wong</a> (<strong>Eva 
Wong</strong>). In total they had invested HK$7.1m for 17.5% of CyberLiving. Later, on 
21-May-2001, Oriental Faith sold 517 shares to 4 investors for $6.925m or 
$13,395 per share. The table on p12 of the prospectus gives the wrong entry cost 
for Orient Faith because it ignores the sale proceeds, which gave the couple 
back nearly all their investment. Their holding was converted into 33,792,000 
shares (6.94%) of Inno-Tech at a net entry cost of HK$178,900 or $0.0053 per 
share.</p>
<p>One of the 4 investors who bought shares from Oriental Faith was Eva 
Wong's brother, <a href="../dbpub/positions.asp?p=45458">Denny Wong Chung Yu</a> 
(<strong>Denny Wong</strong>) and another was
<a href="../dbpub/positions.asp?p=17270">Wong Shui Fun</a> (<strong>SF Wong</strong>). 
Their entry price to Inno-Tech worked out at $0.48 per share.</p>
<p>Michael Koh was the CEO of CPEC when it was first listed as &quot;Intcera 
High-Tech Group Ltd&quot; on 7-Jul-2000, becoming NED on 1-Nov-2001 and resigning on 
16-Dec-2002. He was appointed as NED of Hycomm on 12-Oct-2000 (soon after Hycomm 
invested in Inno-Tech), becoming ED on 16-Jan-2003 and stepping down on 
15-Dec-2004.</p>
<p>On 23-Apr-2003 Michael Koh became Chairman of
<a href="../dbpub/articles.asp?p=14791">M Dream Inworld Ltd</a> (8100) after
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2003/0311/GLN20030311027.pdf" target="_blank">
buying</a> the largest shareholding, and SF Wong was appointed as an INED the 
same day and became ED on 26-Mar-2004, stepping down on 16-Dec-2005. Michael Koh 
became NED on 13-Apr-2007 and stepped down on 29-Feb-2008.</p>
<p>Michael Koh was later an ED of GEM-listed
<a href="../dbpub/articles.asp?p=10787">
China Railway Logistics Ltd</a> (8089) from 22-Jan-2007 to 20-May-2008. We wrote 
about his activities there in our article <a href="traingames.asp">
China Railway Games</a> (11-Jun-2009). His latest venture is at
GEM-listed
<a href="../dbpub/orgdata.asp?p=15780">Pan Asia Mining Ltd</a> (<strong>PAM</strong>, 
8173), which he joined as Chairman on 30-Nov-2011. In so doing, he replaced his 
wife's brother Denny Wong, who was ED of PAM from 20-May-2008 to 6-May-2009 then 
Chairman until 30-Nov-2011. This came on the back of a mining exploration in the 
Philippines acquired from Eva Wong at a spicy valuation of HK$5,700m. We'll tell 
you that story another time, suffice to say that PAM now has a market 
capitalisation of about HK$260m. Michael Koh has been through more GEMs than 
Elizabeth Taylor, but they didn't retain value the way hers did.</p>
<h3>Hycomm and Codebank</h3>
<p>In another marvellous deal, on 4-Mar-2000 Hycomm
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2000/0307/LTN20000307041.HTM" target="_blank">
agreed</a> to buy and subscribe 18% of <a href="../dbpub/articles.asp?p=15091">
Codebank Ltd</a> (<strong>Codebank</strong>) for HK$171m satisfied by 68.4m 
shares (6.53%) of Hycomm @$2.50. We've resurrected the
<a href="../codocs/0499_000324c.pdf">circular</a>, which contains another 
valuation from Mr Shadbolt valuing Codebank at HK$1,001m. A month earlier, on 
3-Feb-2000, Hycomm signed an &quot;Agency Agreement&quot; with
<a href="../dbpub/orgdata.asp?p=19691">Land First Holdings Limited</a> (<strong>Land 
First</strong>) and agreed to pay it HK$7.5m as an &quot;introduction fee&quot; for the 
deal, satisfied with 3m shares @$2.50 upon completion of the acquisition.</p>
<p>Now guess who owned Land First? Hycomm didn't say, but the Inno-Tech IPO prospectus
<a href="http://www.hkexnews.hk/newlistings/prospectuses/e_8202pro-20020730chap05.pdf" target="_blank">
reveals</a> (p2) that when Inno-Tech group was established and until 
31-Jul-2000, it shared an office with Land First, and that Land First was 
100%-owned by YY Wong, the Inno-Tech co-founder. So at the same time as founding one start-up in which Hycomm invested 
(Inno-Tech), YY Wong was the agent for the investment in another (Codebank).</p>
<p>The acquisition was delayed and on 15-May-2000 the price was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2000/0516/LTN20000516013.doc" target="_blank">
reduced</a> to $153.25m (what a bargain) satisfied by 61.3m shares @$2.50. Hycomm also loaned 
Codebank $2m which was capitalised into shares on 19-Jul-2001, and when Codebank 
later listed, Hycomm's $155.25m investment became 60,584,726 shares (10.1% 
post-IPO) with an average cost of $2.56 per share. Codebank went public on 
21-Dec-2001 after an IPO at $0.50, 80.5% less then Hycomm paid for it. But their 
loss was not over. Codebank 
(<a href="http://www.hkexnews.hk/newlistings/prospectuses/e_8162pro-20011217.pdf" target="_blank">prospectus 
here</a>) 
still holds the record for the
<a href="../dbpub/delisted.asp?exch=GEM&amp;hide=&amp;sort1=lifeup">youngest 
infant mortality</a> on GEM after a chunk of its IPO proceeds went missing. It 
last traded on 13-May-02, just 143 days old, before its listing was cancelled. 
Hycomm wrote off its entire investment in 2001 and 2002.</p>
<p>So there's the disastrous history of Hycomm. In <a href="muck2012p4.asp">Part 4</a>, we'll take you 
through a set of horrible transactions involving Inno-Tech, amongst others.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1586">AUTO ITALIA HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1446499">BEST POWER CAPITAL RESOURCES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10787">Chinese Strategic Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15091">CODEBANK LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67647">Corning Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1854448">CyberLiving Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851286">Delancey Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67645">DIGITAL OUTDOOR TELEVISION (HONG KONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851269">Executive Talent Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14791">Famous Tech International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=74116">Fosun International Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=966890">GIN INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1854453">GINSMS Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=149022">GLOBAL EDGE TECHNOLOGY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36711">HEAD & SHOULDERS SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15780">Hephaestus Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=728595">HONG KONG FINANCE COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16958">INNO-TECH HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10770">IntelliMark AI International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12115">KINGSTON CORPORATE FINANCE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=19691">LAND FIRST HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851318">Lynch Oasis Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=608842">Mavenir Asia Pacific Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14271">MEGA CAPITAL (ASIA) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851293">Million Good Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4905">NATIONAL UNITED RESOURCES HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851287">Noblemore Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1451299">PANACO LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5577">PURVIEW (FAR EAST) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4946">Qingdao Holdings International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=794634">ROYAL LINK INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=34259">SINOLINK SECURITIES (HONG KONG) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1966">Talent Property Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851868">Tin Ching Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=501699">TIN CHING INDUSTRIAL COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67646">TODAY'S MEDIA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851317">Tracing Paper International Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1860688">Wisefit Global Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3449">XinKong International Capital Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=29432">Beh, Yong Shin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6883">Chan, George Yuen Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1851870">Chan, Koung Nam</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1851869">Chan, William Kwong Yin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3496">Cheung, Haywood Tak Hay</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1851313">Cheung, Maggie Fung Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=36710">Choi, Stanley Chiu Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9603">Hung, Randy King Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1854457">Ip, Thomas Kam Hoi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10778">Koh, Michael Tat Lee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=64987">Kong, Lingbiao</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=25741">Lai, Jonathan Man Kon</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8063">Lai, Yiu Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16325">Lam, Graham Ka Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41817">Lau, Joseph Chi Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13136">Liu, Shun Chuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=44809">Shadbolt, Brett Arthur</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46852">Shi, Jianping (1969)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8264">Tam, Elaine Chi Ling</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45458">Wong, Denny Chung Yu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=47012">Wong, Eva (spouse)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=19692">Wong, Kwok Sing (1964)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17270">Wong, Shui Fun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3204">Wong, Yuen Yee (1962)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13135">Yeung, Sau Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1863615">Yuen, Joseph Nim Cho</a></li>
				
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