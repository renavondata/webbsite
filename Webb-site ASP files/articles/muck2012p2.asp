
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

<script type="text/javascript">document.title="Raking muck, Part 2";</script>

	<div class="summary">Continuing our series, we look at a set of over-priced acquisitions and questionable transactions by China Post e-Commerce and others, building a matrix which demonstrates the close connections between the persons involved. We call on the SFC to investigate.</div>

<h2 class="center">Raking muck, Part 2<br>
<span class="headlinedate">27 February 2012</span></h2>
<p>As you will recall from <a href="muck2012p1.asp">Part 1</a>, 
this series will cover at least the following 8 listed companies:</p>
<ul>
	<li><a href="../dbpub/orgdata.asp?p=4905">China Outdoor Media Group Ltd</a> (<strong>COMG</strong>, 
0254)</li>
	<li><a href="../dbpub/orgdata.asp?p=10770">China Post E-Commerce (Holdings) Ltd</a> (<strong>CPEC</strong>, 8041)</li>
	<li><a href="../dbpub/orgdata.asp?p=23261">China Railsmedia Corp Ltd</a> (<strong>Railsmedia</strong>, 
	0745)</li>
	<li><a href="../dbpub/orgdata.asp?p=1365">China Yunnan Tin Minerals Group Co 
	Ltd</a> (<strong>CYTM</strong>, 0263)</li>
	<li><a href="../dbpub/orgdata.asp?p=60339">CNC Holdings Ltd</a> (<strong>CNC</strong>, 8356)</li>
	<li><a href="../dbpub/orgdata.asp?p=16958">Inno-Tech Holdings Ltd</a> (<strong>Inno-Tech</strong>, 
	8202)</li>
	<li><a href="../dbpub/orgdata.asp?p=4946">Hycomm Wireless Ltd</a> (<strong>Hycomm</strong>, 
	0499) and</li>
	<li><a href="../dbpub/orgdata.asp?p=1586">Wo Kee Hong (Holdings) 
Ltd</a> (<strong>WKH</strong>, 0720).</li>
</ul>
<p>In part 1, we told you the amazing story of how Xinhua has done a deal to 
inject TV distribution rights into a GEM-listed company, CNC, and given
<a href="../dbpub/positions.asp?p=40967">Alan Lee Yuk Lun</a> (<strong>YL Lee</strong>) 
25% of the deal, a windfall worth HK$973m (at the bubble price for the stock), for no obvious reason. A reader 
provided us with his English forename name, which allowed us to find
<a href="http://www.chinesewhoswho.org/enmrdata/index.php?doc-view-2011" target="_blank">
this page</a> on the &quot;Chinese Who's Who Society&quot;, which tells us that YL Lee was 
in the insurance industry &quot;for 15 years, from ordinary salesman to a regional 
director&quot;. This may or may not explain why CK Hui, a 29 year-old with over 5 
years in insurance sales at AIA, was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0602/GLN20110602095.pdf" target="_blank">
appointed</a> as an Executive Director of CNC on 2-Jun-2011, nearly 2 months 
before its investment in <a href="../dbpub/orgdata.asp?p=1493887">China New Media (HK) Co Ltd</a> (<strong>CNMHK</strong>) 
and 3 months before the drainage contractor did its megadeal with Xinhua and YL 
Lee.</p>
<p>We also explained in Part 1 how in 2011 
<a href="../dbpub/natarts.asp?p=29107">Vicky Yu Wai Yin</a> (<strong>Vicky 
Yu</strong>) sold a total of 43% of CNMHK, 
to three listed companies, Inno-Tech, Railsmedia and CNC, for HK$176.84m, while 
COMG held 51% of the HK outdoor advertising start-up, which had net 
liabilities at 31-Dec-2010 of HK$1m. We don't know how she had the good fortune 
to invest in it, but her dealings with COMG go back further than that, as we 
will show. First, let's introduce CPEC.</p>
<h3>CPEC and Info-Source Media</h3>
<p>On 12-Jan-2009, CPEC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0112/GLN20090112020.pdf" target="_blank">
announced</a> that it would buy 10% of <a href="../dbpub/orgdata.asp?p=1335357">
Info-Source Media Limited</a> (<strong>ISM</strong>) from
<a href="../dbpub/orgdata.asp?p=612345">Info-source International Development 
Ltd</a>, 100%-owned by the Guangdong Postal Bureau, for $28.8m, satisfied by 72m shares 
(5.09%) of CPEC @$0.40 (adjusted for a 5:1 consolidation). CPEC would receive an option on a further 40% of 
ISM, potentially making it a 50:50 venture. ISM was:</p>
<blockquote>&quot;principally engaged in the provision of state-of-the-art 
E-commerce platform through Guangdong Postal's powerful physical network, 
sophisticated information network and strong post bank capital support with a 
broad portfolio of media advertising platforms including bank location network, 
in-store network, post outlets network, commercial location network, direct mail 
network, magazine distribution network, wireless and outdoor light-emitting 
diode (LED) network...&quot;</blockquote>
<blockquote>&quot;[ISM] has obtained the 15-year exclusive right to operate 
electronic video in outlets of Guangdong Postal and has also established liquid 
crystal display (LCD) network in three major cities in the Pearl River Delta 
Region&quot;.</blockquote>
<p>Which all sounds pretty impressive until you get to the following:</p>
<blockquote>&quot;[ISM] has not commenced business&quot;.</blockquote>
<p>So &quot;engaged in&quot; is something of an aspirational statement. ISM, which the 
transaction valued at $288m, was incorporated on 23-Nov-2007, had $10,000 of 
share capital, no turnover, and net liabilities of $3.92m at 30-Nov-2008. The 
deal completed on 3-Feb-2009, and we suspect the 72m consolidated shares were
<a href="../ccass/chldchg.asp?i=2507&amp;d=2011-06-17">deposited</a> into 
CCASS via CITIC Securities Brokerage (HK) Ltd on 17-Jun-2011.</p>
<p>On 19-Aug-2009, CPEC partly
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0819/GLN20090819044.pdf" target="_blank">
exercised</a> the option to increase its stake in ISM from 10% to 20%, paying 
$28.8m of which $14.4m was cash and the rest as 35,820,895 shares valued at 
$0.402 each. The deal
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0903/GLN20090903094.pdf" target="_blank">
completed</a> on 3-Sep-2009. Due to a fall in the market price of CPEC by the 
time the shares were allotted, the original combined $57.6m price for the 20% 
stake was restated to $43.325m in the 2010 accounts, and the entire value of the 
investment was written off, &quot;due to the changes in market condition&quot;, 
constituting most of CPEC's $57.27m loss for 2010. You will find that in note 21 of 
the
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0331/GLN20110331037.pdf" target="_blank">
accounts</a>, but in the Management Discussion and Analysis section the company does not bother to mention 
this huge item.</p>
<h3>iKanTV</h3>
<p>At lunchtime on 13-Jan-2009 (but dated 12-Jan-2009), COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0113/LTN20090113088.pdf" target="_blank">
announced</a> that <a href="../dbpub/orgdata.asp?p=151491">iKanTV Limited</a> (<strong>iKanTV</strong>), a partly-owned 
(they didn't say how much) BVI subsidiary, had agreed with ISM to invest HK$7m to acquire:</p>
<blockquote>&quot;exclusive 
rights...to procure advertising clients to place advertisements through the LCD 
TVs located in all retail outlets of [Guangdong Postal Bureau] and the relevant 
broadcasting rights&quot;.</blockquote>
<p>The HK$7m would be used &quot;for the upgrade and improvement 
of the current and future network and the update of the hardware and software of 
the LCD TVs&quot;. ISM would be responsible for installing the LCD TVs and would get 
50% of iKanTV's profits from its commercial advertisements, including &quot;all 
advertisements of the new LCD network in Hong Kong and Macau of the Group&quot; - 
i.e. COMG group's screens other than ISM's.</p>
<p>COMG didn't disclose its percentage stake in iKanTV. Note that this was 
described as an agency agreement, not an outright purchase of advertising 
rights. COMG did not disclose what the agency fee would be, relative to the 
actual advertising fees. Both the agency agreement and the acquisition of 10% of 
ISM were dated the same day, 9-Jan-2012, but the two listed companies made no 
reference to each other's deals in their announcements. In particular, CPEC 
didn't mention that ISM had on the same day agreed to farm out the advertising 
agency rights to COMG via iKanTV. At the time, <a href="../dbpub/natarts.asp?p=41817">Joseph Lau Chi 
Yuen</a> (<strong>Joseph Lau</strong>) owned 52.81% of CPEC 
and 24.89% of COMG and was a director of both.</p>
<p>By 30-Jun-2009, iKanTV owned 51% of <a href="../dbpub/orgdata.asp?p=1340599">
HD Production Ltd</a>, a company incorporated in HK on 10-Dec-2007, engaged in 
the production of advertising videos. We don't know who owned the rest of that. 
By 31-Dec-2010, HD Production Ltd was listed in CPEC's accounts as &quot;inactive&quot;.</p>
<h3>CPEC buys 9% of iKanTV from Kwok Ming Fai</h3>
<p>On 6-Apr-2009, CPEC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0406/GLN20090406064.pdf" target="_blank">
agreed</a> to buy 9% of iKanTV from <a href="../dbpub/orgdata.asp?p=1850394">Get 
Profit Holdings Ltd</a> (<strong>Get Profit</strong>), owned by one Mr Kwok Ming Fai 
(<strong>Mr Kwok</strong>) for $39.84m, 
satisfied by 830m new shares (10.51%) of CPEC @$0.048 each (a 
significant premium to the market price of $0.031). That was before a 5:1 
consolidation, so they are equivalent to 166m shares @$0.24. The sale was his entire stake 
in iKanTV, which was a partly-owned subsidiary of COMG, but again COMG's 
percentage stake was not disclosed.</p>
<p>As the announcement said nothing about him, we 
don't know which Kwok Ming Fai he is. There are two in our database: <a href="../dbpub/positions.asp?p=17963">Allan Kwok Ming 
Fai</a>, who is an INED of CYTM (covered in Part 1) and of&nbsp;several other companies that we wouldn't touch with a 
barge pole, and <a href="../dbpub/positions.asp?p=88207">Kwok Ming Fai</a>, a 
former representative of <a href="../dbpub/adviserships.asp?p=16326">Messis 
Capital Ltd</a> (formerly named Menlo Capital Ltd), an &quot;independent financial 
adviser&quot; the opinions of which we do not value. They may or may not be the same person.</p>
<p class="regbox">Regulatory note: names of listed company counterparties are 
often insufficient to identify them. You might as well say &quot;The Vendor is John 
Doe&quot;. Vague descriptions such as &quot;Mr Chan is a merchant&quot; don't help either - 
they are equivalent to saying &quot;Mr Chan would rather not say what he does&quot;. Names 
of companies, without saying where they are incorporated, are not unique either, 
and are meaningless when they are private companies and their beneficial 
shareholders are not disclosed.<br><br>The Listing Rules should be tightened - for 
people, either <a href="identity.asp">publish</a> a unique, permanent and verifiable ID number, or sufficient 
biographical information to almost uniquely identify the person, such as a date 
of birth. For companies, require the name and domicile of the company, and identification of all beneficial human owners 
owning 10% or more. This is not a privacy issue - if you deal with a public 
company, you should be deemed to accept the transparency that goes with it, and 
if you are hiding behind a nominee, then that nominee will have to take the risk 
of being identified and criminally liable for lying to the Stock Exchange and 
the SFC by claiming to be the beneficial owner.</p>
<p>From incorporation 
on 23-Nov-2007 until 28-Feb-2009, iKanTV had turnover of $343k and net liabilities of $1.327m, 
equal to its net loss, but the deal valued iKanTV at a massive $443m. The deal completed 
on 29-Apr-2009. The Webb-site CCASS Analysis shows that on 5-May-2009, 830m 
shares <a href="../ccass/chldchg.asp?i=2507&amp;d=2009-05-05">were deposited</a> 
into the CCASS account of Tanrich Securities Co Ltd (<strong>Tanrich Securities</strong>), 
which features a lot in this story. Later the 166m 
consolidated shares moved to Standard Chartered Bank (HK) Ltd and they subsequently
<a href="../ccass/chldchg.asp?i=2507&amp;d=2009-10-14">moved</a> to 
HSBC on 14-Oct-2009.</p>
<h3>Joseph Lau grants options over CPEC shares</h3>
<p>On 26-May-2009, Joseph Lau
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0526/GLN20090526010.pdf" target="_blank">
granted</a> 18-month options to <a href="../dbpub/orgdata.asp?p=38677">Galaxy 
Asset Management (H.K.) Ltd</a> (<strong>Galaxy</strong>) and Provenance Place 
Co Ltd (<strong>Provenance Place</strong>) for 78m (4.94%) and 122m  
(7.73%) existing CPEC shares respectively, a total of 200m (12.67%) at an exercise price of 
$0.18 per share, a 29% discount to the closing price of $0.255 that day (all 
figures after consolidation). No price for the grant of the options was 
disclosed in the announcement or in dealing filings, so we assume it was 
nominal, as a reward for some kind of service, but no reason was given.</p>
<p>The announcement did not disclose who owned Provenance Place, but a 
subsequent
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=30692&amp;lang=EN&amp;dia=Y" target="_blank">
disclosure of interest</a> shows that the owner is
<a href="../dbpub/positions.asp?p=1860">Eric Chan Man Hon</a> (<strong>Eric Chan</strong>), who is a 
solicitor and consultant of <a href="../dbpub/adviserships.asp?p=5712">Vincent 
T.K. Cheung, Yap &amp; Co</a>, which was legal adviser to CPEC from 2007-2010.</p>
<p>The announcement did not disclose who owned Galaxy, but we can tell you 
that it is owned by <a href="../dbpub/positions.asp?p=38678">Joe Chan Man Fai</a> 
(<strong>Joe Chan</strong>), who is the brother of Eric Chan. So the two option 
grantees are related. Galaxy advises 
several funds, including Galaxy China Deep Value Fund and Galaxy China Special 
Situations Fund SPC. They
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2010/0114/GLN20100114001.pdf" target="_blank">
subscribed</a> for shares in Inno-Tech on 13-Jan-2010, and on the same day 
Galaxy Capital Ltd (now known as <a href="../dbpub/orgdata.asp?p=63034">Odysseus 
Capital Asia Ltd</a>), also then owned by Joe Chan, was awarded a consultancy contract whereby it would receive 
10.74% of Inno-Tech if it introduced an acquisition of at least HK$500m, as
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2010/0115/GLN20100115007.pdf" target="_blank">
detailed here</a>. The consultant was also
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2010/0115/GLN20100115025.pdf" target="_blank">
granted</a> options to subscribe Inno-Tech shares.</p>
<p>Of the 200m CPEC options granted by Joseph Lau, Eric Chan's Provenance Place
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=117644&amp;lang=EN&amp;dia=Y" target="_blank">
exercised</a> 44m options on 6-Jul-2009 and
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=117645&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> the shares the same day at $0.353, cutting below 5% and making about 
$7.61m of gain (we assume the options were granted for a nominal amount). The 
shares were <a href="../ccass/chldchg.asp?d=2009-07-08&amp;i=2507">delivered</a> 
by Oriental Patron Securities Ltd (<strong>Oriental Patron</strong>).</p>
<p>Another 58m options were exercised before the remaining 98m
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=107557&amp;lang=EN&amp;dia=Y" target="_blank">
expired</a> on 26-Nov-2010, of which 5m were exercised on 26-Nov-2009, 38m on 
5-Aug-2010 and 15m on 13-Oct-2010. We can't tell you whether Galaxy or 
Provenance Place was the exercising holder, or both, as they each held less than 
5% of CPEC.</p>
<h3>Placing</h3>
<p>On 21-Jul-2009, CPEC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0721/GLN20090721047.pdf" target="_blank">
launched</a> a top-up placing of 106m shares (6.29%) @$0.42 via Oriental Patron 
to raise $38.6m net, with Joseph Lau as vendor and subscriber. The placing was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0803/GLN20090803152.pdf" target="_blank">
completed</a> on 24-Jul-2009 and the subscription on 3-Aug-2009. The new shares 
were <a href="../ccass/chldchg.asp?i=2507&amp;d=2009-08-05">deposited</a> 
with HSBC on 5-Aug-2009.</p>
<h3>CPEC buys 4% of iKanTV from COMG</h3>
<p>You can never have too much of a good thing. On 27-Aug-2009, CPEC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0827/GLN20090827035.pdf" target="_blank">
agreed</a> to buy 4% of iKanTV from COMG for HK$9.2m, by offsetting part of the 
balance on a loan it had quietly made to COMG under a loan agreement dated 
16-Feb-2009, of $9m for 2 years at 15% p.a.. It was finally disclosed that prior to 
the sale, if not earlier, iKanTV was 51%-owned by COMG. A simultaneous
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0827/LTN20090827511.pdf" target="_blank">
announcement</a> by COMG, regarding the sale of 4% of iKanTV to CPEC, disclosed 
that it had invested a grand total of $31.20 (about US$4) in the shares it was 
selling, implying that iKanTV started with US$100 of share capital. The COMG 
accounts show that by 30-Sep-2009, the net liabilities of iKanTV had increased 
to $5.78m.</p>
<p class="regbox">Technical note:&nbsp; This was a connected transaction for 
COMG, because its CEO Joseph Lau was controlling shareholder (owning 
39.42%) of CPEC, so CPEC was his &quot;associate&quot;. However, the amount involved was 
less than $10m so it was exempt from independent shareholders' approval. If the 
loan balance (including accrued interest) had grown beyond $10m, then it would 
have become a non-exempt connected transaction. On the 
other side, Joseph Lau was Chairman of CPEC but he owned less than 30% (in fact 
24.23%) of COMG so it was not his &quot;associate&quot; and this was not a connected 
transaction for CPEC.</p>
<h3>CPEC buys 40% of iKanTV from Vicky Yu</h3>
<p>Now, if you have been following closely, then you will wonder, who owned the 
other 40% of iKanTV? At the same time as buying 4% from COMG, CPEC agreed to buy 
40% of iKanTV from Win Today for $92m, to be satisfied by the issue of 
139,393,939 shares valued at $0.66 each (after a 5:1 consolidation on 
1-Jun-2009). This was about twice the market price 
of CPEC, but keep in mind that it was paying $9.2m to COMG for 4%, so it had to 
be seen to be paying Win Today on the same valuation of iKanTV, that is $230m, 
or about 33 times what iKanTV paid (HK$7m) to get the advertising agency rights 
from ISM. The CPEC announcement said that from incorporation on 23-Nov-2007 until 
30-Jun-2009, iKanTV recorded a net loss after tax of $4.26m and had net 
liabilities of the same amount.</p>
<p>The announcement didn't say who owned Win Today. Initially 
it was a case of Win Today, lose tomorrow: the next day, that deal was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0828/GLN20090828053.pdf" target="_blank">
terminated</a> because it would have violated GEM Listing rule 13.12 against 
issuing shares within 30 days after repurchasing them. CPEC had repurchased 
shares on 25-Aug-2009. So one month later, on 25-Sep-2009, CPEC came back and
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0925/GLN20090925026.pdf" target="_blank">
announced</a> almost the same deal, to buy 40% of iKanTV from Win Today in 
return for 140m shares (7.52%) of CPEC, although these were now valued at 
$0.55 each, pricing the deal at HK$77m. Again, the owner of Win Today was not 
disclosed, but a later
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=34076&amp;lang=EN&amp;dia=Y" target="_blank">
disclose of interests</a> shows that the owner was Vicky Yu when the deal 
completed on 30-Sep-2009. </p>
<p>So in summary, CPEC bought 4% of iKanTV from COMG for $9.2m cash, and <strong>49% 
from Mr Kwok and Vicky Yu, for a total of HK$116.84m</strong>, satisfied with 306m 
consolidated shares.&nbsp; Vicky 
Yu <a href="../ccass/chldchg.asp?i=2507&amp;d=2009-10-13">deposited</a> her 140m shares with Tanrich Securities on 13-Oct-2009. 
On 21-Jan-2010, she
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=36261&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 60m shares on-market at $0.25, a total of $15m, cutting 
below 5%, and you can see the shares
<a href="../ccass/chldchg.asp?i=2507&amp;d=2010-01-25&amp;sort=chngdn">
leaving Tanrich</a> on settlement day. A week later, Mr Kwok
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=36364&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 90m shares off-market on 28-Jan-2010 at $0.275, a total of $24.75m, 
cutting below 5%, and you can see those shares probably
<a href="../ccass/chldchg.asp?d1=2012-02-17&amp;d=2010-01-28&amp;i=2507">
moving</a> from HSBC to Enlighten Securities Ltd that day.</p>
<p>The 2009 CPEC accounts show in note 31 that in the 3 months from the 
acquisition date to the year end, iKanTV had revenue of $0.759m and net loss of 
$1.370m.</p>
<p>So now we have two transactions involving substantial payments to Vicky Yu, 
both involving the sale of minority stakes in partly-owned subsidiaries of COMG, namely CNMHK in 
2011 and iKanTV in 2009. Yet nothing has been said about how she came to own 
such large shareholdings in these companies, presumably at nominal cost given 
that they had no material assets at the time. So, like a good corporate 
archaeologist, let's keep excavating.</p>
<h3>The creation of CPEC</h3>
<p>CPEC was originally named &quot;Intcera High Tech Group Limited&quot; and made ceramic 
ferrules, a component of optical fibre connectors. It was listed on 7-Jul-2000, 
and suspended on 6-Oct-2003 after running into financial difficulties. Skipping 
forward to 2007, in connection with a final appeal against delisting, there was 
a set of recapitalisation proposals. On 7-Sep-2007, Joseph Lau
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/0924/gln20070924082.pdf" target="_blank">
agreed</a> to subscribe $35.42m for 3542m shares (75%) of CPEC @$0.01 and on the same date 
<a href="../dbpub/adviserships.asp?p=40729">President Securities (HK) Ltd</a> agreed to 
place 458m shares (9.7%) at $0.01, a total of 4,000m shares. Then on 
25-Oct-2007, there was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/1026/GLN20071026062.pdf" target="_blank">
another placing</a> of 1,000m shares at the same price through the same agent. 
These issues were priced at a 90.2% discount to the net asset value of $0.102 at 
31-Dec-2006 and would dilute existing shareholders' stakes by a factor of about 
7.9.</p>
<p>On 14-Nov-2007 the Listings Appeal Committee approved resumption but
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/1213/GLN20071213046.pdf" target="_blank">
listed several conditions</a>, including a requirement that the company conduct 
a 1:1 non-underwritten rights issue which would allow existing shareholders some 
modicum of participation, and that <a href="../dbpub/adviserships.asp?p=30742">Tanrich Capital Ltd</a> 
(<strong>Tanrich Capital</strong>) be appointed as 
compliance adviser. Yes, really. Don't laugh. Just because sister firm Tanrich 
Futures Ltd has a <a href="../dbpub/articles.asp?p=49392">regulatory history</a> 
longer than the Titanic doesn't mean that Tanrich Capital would not be a good 
compliance adviser.</p>
<p>So on 18-Dec-2007 the rights issue was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/1218/GLN20071218038.pdf" target="_blank">
announced</a>. Tanrich Capital was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/1105/GLN20071105048.pdf" target="_blank">
appointed</a> as compliance adviser on 5-Nov-2007 and that role continued until 
20-Mar-2008. Another condition of resumption was that the previous public 
shareholders would hold not less than 9.5% of the company after the placings and 
subscription (but before the rights issue). To ensure that this was the case, on 
27-Feb-2008 CPEC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0227/GLN20080227028.pdf" target="_blank">
announced</a> a 1:20 bonus issue of 36,154,365 shares, and the financial 
advisers took 223,845,635 shares as partial remuneration (3.74% of the company), 
rounding this neatly up to a further 260,000,000 shares.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0229/GLN20080229008.pdf" target="_blank">
circular</a> went out on 29-Feb-2008, the placings and subscription were
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0402/GLN20080402046.pdf" target="_blank">
completed</a> on 2-Apr-2008 and the rights issue prospectus was then
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0402/GLN20080402014.pdf" target="_blank">
posted</a>. After 4.5 years in the deep freeze, trading resumed the next day. On 
2-Apr-2008, the two placings
<a href="../ccass/chldchg.asp?i=2507&amp;d=2008-04-02">were deposited</a> to 
CCASS, of which 1,158m shares went into President Securities and 300m into 
Tanrich Securities. On 3-Apr-2008, Joseph Lau's 3,542m shares were
<a href="../ccass/chldchg.asp?i=2507&amp;d=2008-04-03">deposited</a> into 
CCASS via HSBC.</p>
<p>On the penultimate day for acceptance, the shares closed at $0.084, so 
it was a no-brainer that existing shareholders should take up the issue at 
$0.01, but the rights issue was only 91.9% taken up and the holders of the other 
8.1% lost about 47% (0.074/0.158) of their investment instantly. The remaining 
shares were of course massively over-subscribed in &quot;excess applications&quot;, by 
336.3 times. The deal
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0425/GLN20080425072.pdf" target="_blank">
closed</a> on 25-Apr-2008, and Joseph Lau then had 52.8% of CPEC.</p>
<p class="regbox">Regulatory note: there are always some shareholders who can't 
or don't react in time or lack the cash to take up. They get massively diluted, 
because in HK rights issues, if <a href="openoffers.asp">you snooze, 
you lose</a>. Unlike developed markets, there is no requirement for the company 
to sell&nbsp; the rights shares (if a surplus can be obtained) and give you the 
surplus over the subscription price. <strong>We call again for SEHK to fix this.
</strong> </p>
<h3>The creation of COMG</h3>
<p>COMG was once known as &quot;eCyberChina Holdings Limited&quot;, although the core 
business was property investment and development in HK and the PRC. The stock 
was suspended for 4 years from 2003 to 2007. To justify its continued listing, 
on 5-Mar-2007 COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0314/LTN20070314059.pdf" target="_blank">
agreed</a> via 100%-subsidiary <a href="../dbpub/orgdata.asp?p=521552">First Union Limited</a> 
(<strong>First Union</strong>) to buy a shopping centre in Hohhot City, Inner Mongolia, PRC for 
RMB58m (then HK$59.33m), all but HK$13m of which was deferred until 2 years 
after completion - what generous terms. This deal was struck just 4 days before a final appeal against 
the decision to delist the stock. The acquisition
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0612/LTN20070612094.pdf" target="_blank">
circular</a> was dated 12-Jun-2007, the EGM was held on 20-Jun-2007 and the 
acquisition completed on 30-Jun-2007.</p>
<p>To raise the funds necessary to resume listing, COMG was recapitalised with a 
massive
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/0913/LTN20070913280.pdf" target="_blank">
open offer</a> of 30 new shares for ever share held at $0.12 each. Involved in 
this was an &quot;Arranger&quot;, <a href="../dbpub/orgdata.asp?p=1851269">Executive 
Talent Limited</a> (<strong>Executive Talent</strong>), the owner(s) of which 
were not disclosed, but we'll come back to that below. Conditional upon completion of the open offer, the Arranger 
received 44m new shares. The Arranger was introduced to COMG by
<a href="../dbpub/orgdata.asp?p=409444">LPD Consultants &amp; Associates Ltd</a>. We 
don't know who owned that, but it was dissolved by striking off on 23-Nov-2007. 
The arranger in turn introduced the underwriter, 
Tanrich Capital, with which 
it had &quot;over three years business relationship&quot;. The underwriter arranged 3 
unnamed sub-underwriters to take up any shares not subscribed by existing 
shareholders.</p>
<p>When the open offer was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1005/LTN20071005013.pdf" target="_blank">
completed</a> on 5-Oct-2007, it was not surprisingly undersubscribed, with 
shareholders only taking up 42.4% of the available shares. The underwriter lined 
up 4 (not 3) placees to take up the shares, as follows:</p>
<table class="optable center fcl c2l">
	<tr>
		<th>Owner</th>
		<th>Holder</th>
		<th>Shares</th>
		<th>Stake</th>
	</tr>
	<tr>
		<td>Joseph Lau</td>
		<td>Joseph Lau</td>
		<td>262,536,900</td>
		<td>29.53%</td>
	</tr>
	<tr>
		<td>Vicky Yu</td>
		<td>Win Today</td>
		<td>100,000,000</td>
		<td>11.25%</td>
	</tr>
	<tr>
		<td><a href="../dbpub/natarts.asp?p=1850401">Frankie Ma Hoi Cheuk</a> (<strong>Frankie Ma)</strong></td>
		<td>Big Good Management Ltd</td>
		<td>88,800,000</td>
		<td>9.99%</td>
	</tr>
	<tr>
		<td>Wu Ka Cheung</td>
		<td>Wu Ka Cheung</td>
		<td>44,203,850</td>
		<td>4.97%</td>
	</tr>
	<tr class="total">
		<td>Total</td>
		<td>&nbsp;</td>
		<td>495,540,750</td>
		<td>55.74%</td>
	</tr>
</table>
<p>We know nothing about Mr Wu Ka Cheung, other than that he is &quot;an employee of 
a pharmaceutical company&quot;. We will tell you more about Frankie Ma 
below. All four owners claimed to be independent of each 
other, so there was no controlling shareholder and no general offer obligation. 
They each said they had no intention of joining the board. That's important, 
because directors of a company are presumed under the Takeover Code to be acting 
in concert with each other. 53 days later, Joseph 
Lau was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/2007/1127/LTN20071127348.pdf" target="_blank">
appointed</a>  as CEO. The others have not joined the board. Most of the above 
stock was in custody of Tanrich Securities, which
<a href="../ccass/choldings.asp?i=1139&amp;d=2007-10-05">held 69.56%</a> of 
the company on 5-Oct-2007.</p>
<p>So there, again, we have Vicky Yu. She is said to be independent of Joseph 
Lau and COMG, but not only did she invest in iKanTV and CNMHK, two start-up 
subsidiaries of COMG, but she was also one of the original investors in COMG.</p>
<p>Vicky Yu and Frankie Ma held their stakes in COMG for over 2.5 years. Frankie Ma's 
first sale was 40m shares @$0.18 on 9-Apr-2010, cutting below 5%. Vicky Yu's 
first sale was 11m shares @$0.255 on 19-Apr-2010, followed by 30m shares @$0.265 
on 6-Aug-2010, cutting below 5%.</p>
<h3>Sale of the Inner Mongolian shopping centre to Target Smart</h3>
<p>On 26-Nov-2008, COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/1201/LTN20081201522.pdf" target="_blank">
agreed</a> to sell First Union, the purchaser of the shopping centre property in 
Inner Mongolia, PRC, to <a href="../dbpub/orgdata.asp?p=1850413">Target Smart Ltd</a> (<strong>Target Smart</strong>, BVI), for HK$35m of which $30m was 
deferred for 12 months after the date of the EGM to approve it. Of the original 
purchase price of RMB58m, RMB18.88m had not yet been paid, so the new owner 
would pay that, and overall, COMG expected to book a loss of HK$14.2m on the 
sale. The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/1224/LTN20081224180.pdf" target="_blank">
circular</a> was dated 29-Dec-2008, the EGM was held on 19-Jan-2009 and 
completion of the disposal took place on 3-Apr-2009. COMG did not say who owned 
Target Smart, but we can tell you soon.</p>
<h3>COMG issues warrants to Target Smart and Get Profit</h3>
<p>On 6-May-2009, less than 5 weeks after completing the sale of First Union to Target 
Smart, on which $30m was still owing, COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0506/LTN20090506992.pdf" target="_blank">
announced</a> that it would issue unlisted 2-year warrants to subscribe 210m new 
shares (16.04% of COMG) at $0.20 per share. The price per warrant was only 
$0.0025, raising just $450k. There were 2 subscribers: Get Profit for 150m 
warrants and Target Smart for 60m warrants. This time, the owners were 
disclosed. Target Smart was owned by Mr Huang Gui Dong. We know nothing else 
about him. And if you have been paying attention, then you will recall that Get 
Profit was owned by Mr Kwok, and that via Get Profit, he sold 9% of iKanTV to CPEC a month earlier.</p>
<p>At the time of both transactions involving Mr Kwok, Joseph Lau was 
the largest shareholder and CEO of COMG, and was the controlling shareholder and 
Chairman of CPEC, but Mr Kwok was said to be an independent third 
party.</p>
<p>The announcement of the warrant issue made no mention of Get Smart's ongoing obligation to pay 
COMG for the disposal of First Union.</p>
<p>On 8-Jan-2010, a year after the EGM to approve the sale of First Union, COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0108/LTN20100108270.pdf" target="_blank">
agreed</a> that Get Smart would have another 15 months to pay the $30m it still 
owed out of the $35m purchase price, until 31-Mar-2010, without saying why or 
receiving any compensation. On 31-Mar-2010 they
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0331/LTN20100331412.pdf" target="_blank">
delayed it again</a> to 30-Jun-2010, and on that day, having received only $1m 
by then, the remaining $29m was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0630/LTN20100630282.pdf" target="_blank">
delayed again</a> to 31-Dec-2010. By that date, another $3.04m had been 
received, and the remaining $25.96m was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/1230/LTN20101230193.pdf" target="_blank">
delayed again</a> until 30-Jun-2011. Finally on 4-Jul-2011 COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0704/LTN201107041565.pdf" target="_blank">
announced</a> that it had received full payment on 30-Jun-2011, almost 18 
months late.</p>
<p>From various disclosures, we can tell you that the warrants were exercised 
and the shares deposited into CCASS as follows:</p>
<table class="optable center">
	<tr>
		<th>Date</th>
		<th>Holder</th>
		<th>No.</th>
		<th>Into CCASS</th>
		<th>Account</th>
	</tr>
	<tr>
		<td>10-Aug-2009</td>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=120372&amp;lang=EN&amp;dia=Y" target="_blank">Get Profit</a></td>
		<td>10m</td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2009-08-14">14-Aug-2009</a></td>
		<td>Tanrich</td>
	</tr>
	<tr>
		<td>21-Aug-2009</td>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=121158&amp;lang=EN&amp;dia=Y" target="_blank">Get Profit</a></td>
		<td>10m</td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2009-08-27">27-Aug-2009</a></td>
		<td>Tanrich</td>
	</tr>
	<tr>
		<td>21-Aug-2009</td>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=121157&amp;lang=EN&amp;dia=Y" target="_blank">Target Smart</a></td>
		<td>10m</td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2009-08-25">25-Aug-2009</a></td>
		<td>Hantec</td>
	</tr>
	<tr>
		<td>14-Sep-2009</td>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=122249&amp;lang=EN&amp;dia=Y" target="_blank">Get Profit</a></td>
		<td>10m</td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2009-09-17">17-Sep-2009</a></td>
		<td>Tanrich</td>
	</tr>
	<tr>
		<td>28-Dec-2009</td>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=128735&amp;lang=EN&amp;dia=Y" target="_blank">Get Profit</a></td>
		<td>10m</td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2009-12-30">30-Dec-2009</a></td>
		<td>Tanrich</td>
	</tr>
	<tr>
		<td>26-Aug-2010</td>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=142365&amp;lang=EN&amp;dia=Y" target="_blank">
		Get Profit</a></td>
		<td>10m</td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2010-09-02">2-Sep-2009</a></td>
		<td>Tanrich</td>
	</tr>
	<tr>
		<td>18-Oct-2010</td>
		<td>&nbsp;</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/1020/LTN20101020409.pdf" target="_blank">5m</a></td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2010-10-26">26-Oct-2010</a></td>
		<td>
		GF Securities</td>
	</tr>
	<tr>
		<td>4-Mar-2011</td>
		<td>&nbsp;</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0307/LTN20110307190.pdf" target="_blank">15m</a></td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-03-15">15-Mar-2011</a></td>
		<td>
		GF Securities</td>
	</tr>
	<tr>
		<td>28-Apr-2011</td>
		<td>&nbsp;</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0429/LTN20110429616.pdf" target="_blank">30m</a></td>
		<td>
		<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-05-05">5-May-2011</a></td>
		<td>
		GF Securities</td>
	</tr>
	<tr class="total">
		<td>Total</td>
		<td>&nbsp;</td>
		<td>110m</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
</table>
<p>On 8-Jun-2010, Get Profit apparently
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=137734&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 50m warrants at about $0.003 each. We don't know who bought them. On 23-Aug-2010 Target Smart went 
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=142431&amp;lang=EN&amp;dia=Y" target="_blank">short</a> 10m shares and dropped below the 5% 
radar screen due to dilution. So we can't be sure who exercised the last 50m of the 
warrants, but it appears to be a client of GF Securities (Hong Kong) Brokerage 
Ltd. Bizarrely, 100m warrants lapsed on expiry on 17-May-2011, despite the market 
price ($0.42) being well above the exercise price ($0.20) by then.</p>
<p>Looking at the 
<a href="http://www.bloomberg.com/quote/8041:HK/chart/" target="_blank">share price graph</a>, we wonder whether the eventual settlement 
by Target Smart of the overdue payment for First Union was only 
made possible by the exercise of the warrants and sale of the shares at a 
profit. The shares surged in early 2011 and reached a daily high of $0.60 on 
14-Mar-2011. If the share price had not risen, would Target Smart have ever paid 
what it owed for the purchase of First Union?</p>
<h3>COMG issues warrants and bonds to So Ka Yan</h3>
<p>On 19-Feb-2010, COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0219/ltn20100219268.pdf" target="_blank">
agreed</a> to issue to a BVI company owned by Ms
<a href="../dbpub/natperson.asp?p=1852211">So Ka Yan</a> (<strong>KY So</strong>) 
2-year warrants to subscribe 64m shares at $0.16 per share, a 3.9% discount to 
the 5-day average, for an issue price of just $0.003125 per warrant. The net 
proceeds from the warrant issue were only HK$75k. She also subscribed $9.8m of 
4% 2-year notes convertible at the same price into 61.25m shares. Together, 
these would give her a 9.83% stake in the enlarged company. The announcement 
states that she &quot;became acquainted with the management of [COMG] at a social 
function and she is an investor who has been investing in the securities market 
in Hong Kong for years.&quot; We know nothing else about KY So.</p>
<p>The loan notes were issued on 26-Feb-2010 and were fully
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0412/LTN20110412769.pdf" target="_blank">
converted</a> on 12-Apr-2011. The resulting shares were probably
<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-04-14" target="_blank">
deposited</a> into CCASS with Tanrich Securities on 14-Apr-2011. On 20-May-2011 
20m warrants were
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0523/LTN20110523196.pdf" target="_blank">
exercised</a>, and these were probably
<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-05-25">deposited</a> with 
CNI Securities Group Ltd on 25-May-2011. The remaining 44m warrants were
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0202/LTN20120202142.pdf" target="_blank">
not yet exercised</a> at 31-Jan-2012 and were due to expire on 25-Feb-2012. KY 
So do not appear to have filed proper disclosures of interest. She
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=36680&amp;lang=EN&amp;dia=Y" target="_blank">
filed</a> an interest in the 64m shares under warrants as at 19-Feb-2010 and an
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=36679&amp;lang=EN&amp;dia=Y" target="_blank">
interest</a> in the shares under the convertible notes at the same date, but has 
never aggregated the two.</p>
<h3>Senrigan Capital invests in CPEC</h3>
<p>On 7-Oct-2010, CPEC agreed to issue 180m shares (8.83%) @$0.20 
each, a 19.7% discount to market, in a top-up placing to the Senrigan Master Fund managed by <a href="../dbpub/officers.asp?p=56079">Senrigan 
Capital Group Ltd</a>. Joseph Lau was the vendor and subscriber. We can see 180m shares being
<a href="../ccass/chldchg.asp?d=2010-10-07&amp;i=2507">transferred</a> from 
HSBC to Emperor Securities on 7-Oct-2010 and then
<a href="../ccass/chldchg.asp?d=2010-10-12&amp;i=2507">transferred</a> to 
Credit Suisse on 12-Oct-2010. The replacement shares were deposited with HSBC on 
26-Oct-2010. So it is clear that Joseph Lau keeps or kept his 
shares with HSBC.</p>
<p>3 weeks later, on 29-Oct-2010, Senrigan
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=147083&amp;lang=EN&amp;dia=Y" target="_blank">
increased</a> its stake to 300m shares (14.72%) in an off-market purchase of 
120m shares at $0.10, a <strong>49.8% discount</strong> to the market VWAP of $0.201 that day. We 
can see 120m shares <a href="../ccass/chldchg.asp?i=2507&amp;d=2010-10-29">
moving</a> on the same day from Tanrich Securities to Goldman Sachs, and then 4 
days later on 2-Nov-2010, 120m shares
<a href="../ccass/chldchg.asp?i=2507&amp;d=2010-11-02">moved</a> from 
Goldman Sachs to HSBC. The shares kept bouncing between the two accounts, 
suggesting that HSBC is the fund's master custodian and Goldman Sachs is a prime 
broker. The fund still owns 292m shares (9.43%) of CPEC.</p>
<p>So overall, Senrigan purchased 300m shares at an average of $0.16. Given the 
proximity of the transactions and the very large discount on the second one, it 
is a reasonable inference that they were part of the same arrangement. Looking 
at the <a href="../ccass/chistory.asp?i=2507&amp;part=190">history</a> of 
Tanrich's custody holding in CPEC, the 120m shares transferred by Tanrich to 
Senrigan's broker probably included the remaining 80m shares originally held by Vicky Yu 
(we don't know whether she still owned them at that time) and another 40m which were
<a href="../ccass/chldchg.asp?i=2507&amp;d=2010-01-29">transferred</a> from 
HSBC to Tanrich on 29-Jan-2010. We don't know who sold Senrigan 120m shares at a 49.8% discount to market, 
or why.</p>
<h3>Ratio Knitting</h3>
<p>On 6-Jan-2011, CPEC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0106/GLN20110106109.pdf" target="_blank">
agreed</a> to buy <a href="../dbpub/orgdata.asp?p=1850406">Easy Time Trading Ltd</a> 
(<strong>Easy Time</strong>) from Big Good Management Ltd, owned by Frankie Ma, 
for HK$390m, of which $260m was in irredeemable convertible preference shares, 
$50m in zero-interest 5-year notes and $80m in shares. The shares and 
preference shares were issued at $0.15 each. The preference shares are 
entitled to the same dividend as ordinary shares (if any) but have no votes, 
keeping him below the takeover threshold - indeed, the deal is structured to 
keep him below 20% of the voting rights, even though he will have 52.66% of the enlarged equity.</p>
<p>Easy Time is a shell which owns 99% of
<a href="../dbpub/orgdata.asp?p=269134">Ratio Knitting Factory Ltd</a> (<strong>Ratio 
Knitting</strong>), which was incorporated in HK in 1982. Frankie Ma owns the 
other 1% directly. It is &quot;principally engaged in the manufacturing for and 
trading of high-end swimwear and related garment products to some international 
brands&quot;. In the year to 31-Mar-2010, it had turnover of $84.0m and a net profit 
of $15.4m, with consolidated net assets of just $7.55m at 30-Sep-2010. That's 
presumably because it doesn't own much but outsources its knitting. Turnover and 
profit declined substantially from the previous year.</p>
<p>On 20-Oct-2010, after Frankie Ma acquired Ratio Knitting, it incorporated a 
new subsidiary, <a href="../dbpub/orgdata.asp?p=1663995">Yofiel International 
Group Ltd</a> (Yofiel), which the next day &quot;entered into a license agreement to 
obtain the exclusive right in using the underwear brand 'Angevil' in the PRC, 
Hong Kong and Macau for a term of 50 years.&quot; This only cost HK$1.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0310/GLN20110310053.pdf" target="_blank">
circular</a> dated 11-Mar-2011 gives more information, including that Mr Ma only 
paid $50.08m to acquire Ratio Knitting in Sep-2010 - so 3 months later, he was 
flipping it to CPEC at about 8 times the price. Perhaps that's why there are 
$50m of promissory notes in the deal - so that even if the shares collapse, he 
breaks even as long as CPEC redeems the notes. To justify the deal, the vendor 
guaranteed a profit of $20m in the year to 30-Sep-2011, implying a P/E ratio of 
19.5, and adjusting by 19.5x any shortfall subject to a cap of $130m (using the 
notes and then the shares), so even if there were zero profit, he would still get $130m 
of convertible preference shares.</p>
<p>Reporting accountants RSM Nelson Wheeler 
qualified their report &quot;owing to the incompleteness of Ratio Knitting's records&quot; 
regarding the inventory balances. The circular also states that the licensor of Angevil, Guangzhou Jin Pin E-Commerce Co Ltd, acquired the trademark &quot;by chance&quot; 
and as it has limited experience in the lingerie business, the owners agreed to 
licence the use of the trademark to Mr Ma for $1.</p>
<p>Now guess who one of the executive directors of Ratio Knitting is? The one 
and only Vicky Yu. Take a bow. The 31-year-old is a director of Ratio Knitting 
and Yofiel &quot;since 2010&quot;, the year in which Frankie Ma bought it. So this deal involves 
the 3 main people who recapitalised COMG in 2007: Joseph Lau (the Chairman who 
still owned 29.75% of CPEC), Frankie Ma, and Vicky Yu.</p>
<p>The deal completed on 31-Mar-2011, by which time Easy Time had net assets of 
$27.6m, and because the share price had gone up, the deal was then worth 
$673.2m, so there was an impairment charge of $278.2m to bring it back down to 
$395m at that date. The $80m of shares were later
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/1228/GLN20111228008.pdf" target="_blank">
issued</a> on 28-Dec-2011 after the profit guarantee had apparently been 
satisfied and a tax issue had been resolved.</p>
<p>Before that, Frankie Ma dealt with the CPEC preference shares as follows:</p>
<ul>
	<li>On 15-Apr-2011, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=44749&amp;ang=EN&amp;dia=Y" target="_blank">
	disposed</a> of 380m preference shares for an undisclosed price to unknown 
	person(s). 3 days later, these preference shares
	<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0418/GLN20110418037.pdf" target="_blank">
	were converted</a> into 15.72% of the enlarged ordinary shares. 3 blocks of 
	shares totalling 380m were deposited into Phillip Securities (HK) Ltd: 50m 
	on <a href="../ccass/chldchg.asp?i=2507&amp;d=2011-04-21">21-Apr-2011</a>, 
	270m on <a href="../ccass/chldchg.asp?i=2507&amp;d=2011-04-28">
	28-Apr-2011</a> and 60m the
	<a href="../ccass/chldchg.asp?i=2507&amp;d=2011-04-29">next day</a>.</li>
	<li>On 19-Jul-2011, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=46386&amp;ang=EN&amp;dia=Y" target="_blank">
	disposed</a> of 200m preference shares for an undisclosed price. These have 
	not yet been converted.</li>
	<li>On 5-Sep-2011, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=47250&amp;ang=EN&amp;dia=Y" target="_blank">
	converted</a> 50m preference shares into 50m shares. On 8-Sep-2011, 50m 
	shares, probably his, were
	<a href="../ccass/chldchg.asp?i=2507&amp;d=2011-09-08">deposited</a> 
	with Celestial Securities.</li>
	<li>On 28-Dec-2011, the 533,333,333 consideration shares were issued to him. 
	The same number of shares was
	<a href="../ccass/chldchg.asp?i=2507&amp;d=2012-01-12">deposited</a> 
	with Tanrich Securities on 12-Jan-2012.</li>
	<li>He still owns 563,333,333 shares (18.19%) and about 1,103m preference 
	shares.</li>
</ul>
<h3>Joint Fortune Group Ltd</h3>
<p>We pause to note that a substantial shareholder in CPEC, Joint Fortune Group 
Ltd (<strong>Joint Fortune</strong>, BVI)
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=153168&amp;lang=EN&amp;dia=Y" target="_blank">
appeared</a> on 26-Jan-2011, with a holding increased by 26.8m shares from 6.77% 
to 8.08%. This implies that they went through 5% earlier but failed to disclose 
it. Nobody has declared an interest in Joint Fortune, implying either a failure 
to disclose or that nobody owned 1/3 or more of Joint Fortune. It gave a HK 
address in the first filing but not in later filings. A corresponding 26.8m 
shares <a href="../ccass/chldchg.asp?i=2507&amp;d=2011-01-28">moved</a> to 
Kingston Securities on settlement day, and they
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=153166&amp;lang=EN&amp;dia=Y" target="_blank">
bought</a> another 15.1m the next day, also
<a href="../ccass/chldchg.asp?i=2507&amp;d=2011-01-31">through</a> via 
Kingston Securities. On 7-Mar-2011, Joint Fortune
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=154952&amp;lang=EN&amp;dia=Y" target="_blank">
increased</a> its holding to 9.29%, its highest known point. That was before the 
EGM on 28-Mar-2011 to approve the purchase of Easy Time.</p>
<p>On 7-Dec-2011 Joint Fortune
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=174518&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 50.5m shares <a href="../ccass/chldchg.asp?i=2507&amp;d=2011-12-09">
through</a> Kingston Securities, reducing its holding from 8.76% to 4.99%, below 
the radar. We will probably never know who owned it.</p>
<h3>Domains connect Frankie Ma to Joseph Lau</h3>
<p>The <a href="../codocs/whoisCPECH.COM.HK.pdf" target="_blank">domain record</a> 
for <a href="http://www.cpech.com.hk/" target="_blank">CPECH.COM.HK</a>, 
registered to China Post E-Commerce Group Ltd (100% owned by CPEC) gives its 
administrative contact as &quot;FRANKIE MA&quot; and his e-mail address at COMG.COM.HK, 
which of course is the domain of COMG. So it appears that while Frankie Ma was 
never a COMG director, he had some kind of relationship with COMG. The 
CPECH.COM.HK domain was registered on 18-Mar-2009, a long time before he sold 
ratio knitting to CPEC in early 2011, although it could have been updated 
afterwards.</p>
<p>In turn, the <a href="../codocs/whoisCOMG.COM.HK.pdf" target="_blank">
domain record</a> of <a href="http://www.comg.com.hk" target="_blank">
COMG.COM.HK</a> gives &quot;FRANKIE MA&quot; as the contact, and it is registered to 
COMG's old name of &quot;ECYBERCHINA HOLDINGS LIMITED&quot;, suggesting that he was 
involved early in the process. Frankie Ma's e-mail address in that record is at
<a href="http://www.jlic.com.hk/" target="_blank">JLIC.COM.HK</a>, which (hit 
the link) takes you to the web site of, wait for it: JL Investments Capital 
Limited (<strong>JLIC</strong>) (<a href="../codocs/JLICweb.pdf" target="_blank">snapshot 
here</a>), the company owned by Joseph Lau that controlled CPEC. Frankie Ma's 
same e-mail address is also listed on the JLIC contact page (<a href="../codocs/JLICweb2.pdf" target="_blank">snapshot 
here</a>), below what is presumably Joseph Lau's (joe@). Of course it is 
possible, though unlikely, that there are two different people called Frankie 
Ma, one who sold Easy Time to CPEC, and one who appears with Joseph Lau at JLIC.</p>
<p>In turn, the <a href="../codocs/whoisJLIC.COM.HK.pdf" target="_blank">domain 
record</a> of JLIC.COM.HK is registered to &quot;AMPLETEX TRADING LIMITED&quot;, and the 
administrative contract is &quot;FRANKIE MA&quot;. A
<a href="../dbpub/orgdata.asp?p=1215720">company by that name</a> was 
incorporated in HK on 21-Aug-2006 but we can find nothing else about it.</p>
<h3>KH Investment (fka Satellite Devices)</h3>
<p>Vicky Yu's market history goes back further. She was an Executive Director of <a href="../dbpub/orgdata.asp?p=16185">
KH Investment Holdings Ltd</a> (<strong>KHIH</strong>, 8172)
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2005/0826/GLN20050826015.pdf" target="_blank">
from 26-Aug-2005</a> to 3-Apr-2007, when she became non-executive, stepping down 
on 28-May-2008. When she joined, the company was called &quot;Satellite Devices 
Corporation&quot;. Then aged 26, she already had &quot;over 8 years of experience in 
sales and merchandising in the textiles trading and fashion retailing business&quot;, 
so she had been at it since at least the age of 18. Her remuneration as 
Executive Director at KHIH for the 9 months to 31-Dec-2006 was HK$40,000, or 
about $4,444 per month.</p>
<p>You might wonder, how does someone who has been involved in the textile and 
garment industry all her adult life come to invest in so many advertising media ventures, 
including COMG, CNMHK and iKanTV? So do we.</p>
<p>In a restructuring advised by Kingston Corporate Finance Ltd, on 
10-Oct-2005 KHIH
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2005/1128/GLN20051128006.pdf" target="_blank">
entered into</a> a &quot;Loan Capitalisation Deed&quot; with &quot;the Creditor&quot;. And guess who 
the Creditor was? Executive Talent, which had loaned the company $6,758,586.32, 
and this was converted into shares at $0.10 each, or 10.2% of the enlarged 
company. Given their subsequent involvement in the creation of COMG, when the 
Arranger was Executive Talent, it seems at least 
possible that Vicky Yu's appointment was related to the loan from Executive 
Talent. </p>
<p>As far as we can tell, this was the only time that the owner of Executive 
Talent has been disclosed - a Ms <a href="../dbpub/natperson.asp?p=1851288">Wu 
Ling Yee</a>. We know nothing else about her, except for a 
residential address given for Executive Talent in a
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=10658&amp;lang=EN&amp;dia=Y" target="_blank">
disclosure of interests</a>.</p>
<p class="regbox">Research tip: in a world with so much data, when you search 
for a name on the web for someone purportedly involved in large financial 
transactions, and find no matches other than the transaction you are looking at, 
there's a higher probability that the name is just a front for someone else, a 
borrowed identity. It's rather like trying to find black holes - you can't see 
them directly, but the absence of light emanating from that region of space, and 
the activity around it, points to their existence.&nbsp; </p>
<p>The KHIH restructuring deal involved a 3:1 open offer, and a
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2006/0327/GLN20060327039.pdf" target="_blank">
circular</a> dated 27-Mar-2006 gave more information on the underwriting 
arrangements. One of the sub-underwriters was
<a href="../dbpub/positions.asp?p=45213">Alex Fung Chan Man</a>. He has been an 
INED of CPEC since 30-Apr-2008, soon after Joseph Lau became its controlling 
shareholder.</p>
<h3>Building the matrix</h3>
<p>Here's a little table of connections (past or present) so far.</p>
<img class="center" alt="" src="../images/muck2012grid.gif">
<p><strong>We call on the SFC to investigate the connections between these 
parties.</strong> The areas they should investigate include, but are not limited 
to:</p>
<ul>
	<li>Were Joseph Lau, Vicky Yu, Frankie Ma and Kwok Ming Fai really 
	independent of each other when they took a combined majority of COMG after 
	the open offer in 2007, without a whitewash waiver under the Takeover Code?</li>
	<li>Was Vicky Yu really independent when she invested nominal amounts 
	in two start-up subsidiaries of COMG, namely iKanTV and CNMHK?</li>
	<li>Was Vicky Yu really independent when she sold stakes in the start-ups to 
	CPEC, Inno-Tech, Railsmedia and CNC, probably at a huge profit?</li>
	<li>Was Kwok Ming Fai really independent when he sold a stake in iKanTV to 
	CPEC?</li>
	<li>Was Frankie Ma really independent when he sold Easy Time, owner of 
	Ratio Knitting, to CPEC, for almost 8 times what he paid for it? Are he and 
	Joseph Lau, both listed as contacts at JLIC, acting in concert to control 
	CPEC?</li>
	<li>Why is Tanrich Securities so often the broker of choice for depositing 
	shares received by &quot;independent third parties&quot; in consideration for these 
	acquisitions?</li>
	<li>Who really owns or owned Executive Talent?</li>
	<li>Who really are Wu Ka Cheung (subscriber in the COMG creation), So Ka Yan 
	(unlisted warrant subscriber), Wu Ling Yee (owner of Executive Talent) and 
	Huang Gui Dong (owner of Target Smart). Were they really independent?</li>
	<li>Who owned Joint Fortune?</li>
</ul>
<p>We'll tell you more about Executive Talent's dealings in 
<a href="muck2012p3.asp">Part 3</a>, when we will 
introduce Hycomm and Wo Kee Hong, amongst others.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1850400">Big Good Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23261">China National Culture Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850406">Easy Time Trading Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851269">Executive Talent Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=521552">FIRST UNION LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=38677">GALAXY ASSET MANAGEMENT (H.K.) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850394">Get Profit Holdings Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1340599">HD PRODUCTION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16958">INNO-TECH HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10770">IntelliMark AI International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1857300">Joint Fortune Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16185">Lajin Entertainment Network Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=409444">LPD CONSULTANTS & ASSOCIATES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=151491">Luxey Online Solutions Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4905">NATIONAL UNITED RESOURCES HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63034">Odysseus Capital Asia Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1852212">Orchid Touch Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=376221">PROVENANCE PLACE COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=269134">RATIO KNITTING FACTORY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56079">SENRIGAN CAPITAL GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51093">SOUTHWEST SECURITIES (HK) BROKERAGE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850413">Target Smart Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850251">Win Today Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1663995">YOFIEL INTERNATIONAL GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1860">Chan, Eric Man Hon</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=38678">Chan, Joe Man Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45213">Fung, Alex Chan Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1850397">Huang, Gui Dong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17963">Kwok, Allan Ming Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41817">Lau, Joseph Chi Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1850401">Ma, Frankie Hoi Cheuk</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1852211">So, Ka Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1851288">Wu, Ling Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29107">Yu, Vicky Wai Yin</a></li>
				
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