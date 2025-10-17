
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

<script type="text/javascript">document.title="Raking muck, Part 6";</script>

	<div class="summary">Concluding our hexalogy, we look at a recent deal by COMG (0254). Existing shareholders were diluted to 2.54% in an acquisition valued at HK$1242m for a business which would need capital of HK$3.6m. We estimate that the vendor has already cashed in about $1812m by selling convertible bonds and shares. We also look at what comes next for COMG, and some unfinished business for the authorities.</div>

<h2 class="center">Raking muck, Part 6<br>
<span class="headlinedate">11 March 2012</span></h2>
<p>Moving quickly on from <a href="muck2012p5.asp">Part 5</a>, we present the final part 
of a series which has covered these 10 companies:</p>
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
	8202)</li>
	<li><a href="../dbpub/orgdata.asp?p=3449">Simsen International Corp 
Ltd</a> (<strong>Simsen</strong>, 0993)</li>
	<li><a href="../dbpub/orgdata.asp?p=1586">Wo Kee Hong (Holdings) 
Ltd</a> (<strong>WKH</strong>, 0720)</li>
	<li><a href="../dbpub/orgdata.asp?p=16407">Zhi Cheng Holdings Ltd</a> (<strong>Zhi Cheng</strong>, 8130)</li>
</ul>
<p>In part 6, we look at the most recent value-destroying deal by COMG, and what 
might happen next.</p>
<h3>GMG Media</h3>
<p>On 28-Dec-2009, COMG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/1228/LTN20091228553.pdf" target="_blank">
announced</a> that it would buy 100% of <a href="../dbpub/orgdata.asp?p=1850253">GMG Media Group Ltd</a> (<strong>GMG Media</strong>), 
a BVI company with no turnover and no assets, for HK$1241.89m, of which $13m was in 
100m shares and $1228.89m in 5-year 0% convertible bonds, both at $0.13 per share. The vendor 
was named as <a href="../dbpub/positions.asp?p=67648">Jiang Qi Hang</a> (<strong>Mr 
Jiang</strong>), a former securities sales representative. Our records show that 
he was last licensed at BOCI Securities Ltd until 3-Jan-2006. According to the 
announcement, in the 1990s he worked for Procter &amp; Gamble (China) Ltd in brand management. 
The plan, via a contractual 
arrangement with a PRC company (to get around PRC ownership restrictions for 
foreign companies without 3 years' experience in the advertising industry) was to install 100 
wide-screen displays in mainland shopping malls and share the advertising 
revenue with them.</p>
<p>The PRC company is <a href="../dbpub/orgdata.asp?p=1863591">Beijing Mega TV 
Media Advertisement Co Ltd </a>(<strong>BMTMA</strong>). Its management 
shareholders pledged 100% of the shares to COMG, and entered an irrevocable 
share transfer agreement, so that when law allows, COMG can take legal ownership. 
In the meantime, a management agreement passes 100% of the net profit (if any) of BMTMA to GMG Media. BMTMA had no 
turnover in 2009 and net assets of just HK$1.9m at 31-Dec-2009. Most of that was an advance 
to <a href="../dbpub/orgdata.asp?p=1863592">Guangzhou Mega TV Advertising Media 
Co Ltd</a> (<strong>GMTAM</strong>), which is &quot;principally engaged in the 
development and manufacturing of rear-projected mega televisions&quot;. GMTAM would 
lease the indoor large screen TV systems to GMG Media. An &quot;associate&quot; of Mr 
Jiang owned 63% of GMTAM and 38.25% of <a href="../dbpub/orgdata.asp?p=1863593">
Shanghai Mega TV Cultural Dissemination Co Ltd</a> (<strong>SMTCD</strong>), 
which is &quot;principally engaged in the design, production and publication of 
advertisements&quot;. GMTAM and SMTCD agreed not to compete with GMG Media in 
shopping malls and department stores.</p>
<p>According to the 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0326/LTN20100326065.pdf" target="_blank">circular</a> 
dated 26-Mar-2010, the installation cost of these screens would be about RMB6m over 5 years, the 
initial capital requirements to implement the business model of GMG Media are approximately 
RMB3m (then about HK$3.6m) and &quot;there is no significant entry barrier for the 
business&quot;. So why would anyone pay HK$1242m for that?</p>
<p>The circular contained another ample valuation by
<a href="../dbpub/adviserships.asp?p=47074">Ample Appraisal Ltd</a>, which has 
also done valuations for CNC, CPEC and Inno-Tech as mentioned in previous parts 
of this series. The financial adviser on the profit forecast was
<a href="../dbpub/adviserships.asp?p=49246">Athens Capital Ltd</a> (<strong>Athens</strong>), 
which also did work for CNC when it bought a stake in CNMHK as mentioned in Part 
1. Notably this time, nobody from Athens put their name on the signature page. The deal was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0419/LTN20100419741.pdf" target="_blank">
approved</a> at the EGM on 19-Apr-2010 and
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0722/LTN20100722287.pdf" target="_blank">completed</a> on 
22-Jul-2010.</p>
<p>The consideration shares would give Mr Jiang 8% of COMG and the bonds would expand 
that to 97.44%, diluting existing holders to just 2.56%, but the bonds are only convertible as long as the holder does not 
become a controlling (30%) shareholder, thereby avoiding the listing 
rules on reverse takeovers. The 100m shares were probably
<a href="../ccass/chldchg.asp?i=1139&amp;d=2010-07-27">deposited</a> with 
(guess who) <a href="../dbpub/articles.asp?p=51093">Tanrich Securities Co Ltd</a> 
(<strong>Tanrich</strong>), on 27-Jul-2010. So there's another independent 
vendor who prefers to use Tanrich Securities, of all the brokers he could use, 
as did Kwok Ming Fai, Vicky Yu Wai Yin and Frankie Ma Hoi Cheuk in
<a href="muck2012p2.asp">Part 2</a> of this series. Mr Jiang
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=39808&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> all the 100m shares off-market at $0.265 on 6-Aug-2010, the same as the 
previous day's closing price.</p>
<h3>Bond conversions and sales</h3>
<p>On 13-Aug-2010 COMG and Mr Jiang
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0813/LTN20100813684.pdf" target="_blank">
agreed</a> to accelerate the convertibility of the bonds, which originally were 
not convertible until 6 months after issue, to make them immediately 
convertible. This was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0817/LTN20100817527.pdf" target="_blank">
amended again</a> 4 days later, because as a director of a subsidiary of COMG, 
Mr Jiang was a connected person and the amendment needed independent 
shareholders' approval. Joseph Lau still 
owned 21.90% and could vote. A
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0829/LTN20100829019.pdf" target="_blank">
circular</a> went out on 30-Aug-2010 and the amendment was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0915/LTN20100915343.pdf" target="_blank">
approved</a> at the EGM on 15-Sep-2010. Three weeks later, Mr Jiang began 
converting, and as far as we can tell:</p>
<ul>
	<li>On 7-Oct-2010, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=40905&amp;lang=EN&amp;dia=Y" target="_blank">converted</a> $65m of bonds into 500m shares (28.42%) of COMG. 
	He <a href="../ccass/chldchg.asp?i=1139&amp;d=2010-10-08">deposited</a> 
	his shares with Tanrich Securities the next day.</li>
	<li>In two equal tranches on 
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=43284&amp;lang=EN&amp;dia=Y" target="_blank">19-Jan-2011</a> and 
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=43296&amp;lang=EN&amp;dia=Y" target="_blank">21-Jan-2011</a>, Mr Jiang disposed of 
$20.8m of bonds, and these were converted on
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0125/LTN20110125106.pdf" target="_blank">21-Jan-2011</a> 
and <a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0126/LTN20110126086.pdf" target="_blank">24-Jan-2011</a> into 160m shares. 
	One tranche was <a href="../ccass/chldchg.asp?i=1139&amp;d=2011-01-25">deposited</a> with 
Tanrich Securities on 25-Jan-2011 and the other was
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-01-26">deposited</a> with 
Fulbright Securities Ltd (<strong>Fulbright</strong>) on 26-Jan-2011.</li>
	<li>On 28-Jan-2011, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=43472&amp;lang=EN&amp;dia=Y" target="_blank">converted</a> 
	$13m bonds into 100m shares (4.94%), and these were
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-02-02">deposited</a> with 
Tanrich on 2-Feb-2011. He then held 600m shares (29.64%) of COMG, all via 
	Tanrich.</li>
	<li>On 28-Feb-2011, COMG
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0228/LTN20110228155.pdf" target="_blank">announced</a> that Mr Jiang had agreed with an unnamed placing agent to sell up 
to $238m of the bonds at an undisclosed price. A
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=154807&amp;lang=EN&amp;dia=Y" target="_blank">disclosure</a> shows that the broker was Celestial Securities Ltd (<strong>Celestial</strong>). 
$135m of the bonds were
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=155312&amp;lang=EN&amp;dia=Y" target="_blank">sold</a> by Celestial on 11-Mar-2011,
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0315/LTN20110315860.pdf" target="_blank">converted</a> 
	on 14-Mar-2011 and
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-05-31">deposited</a> with Celestial on 31-May-2011. Another $33m were
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=155638&amp;lang=EN&amp;dia=Y" target="_blank">sold</a> on 18-Mar-2011 
	and
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0322/LTN20110322142.pdf" target="_blank">converted</a> on 21-Mar-2011, and $36m were sold on 8-Apr-2011 and
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0413/LTN20110413498.pdf" target="_blank">converted</a> 
	on 12-Apr-2011. These two blocks combined produced 530,769,229 shares which 
	were
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-07-05">deposited</a> with Celestial on 5-Jul-2011. That makes a total of $204m of 
principal value. The remaining $34m
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=44636&amp;lang=EN&amp;dia=Y" target="_blank">went back</a> to Mr Jiang on 12-Apr-2011.</li>
</ul>
<h3>Joseph Lau sells COMG stake</h3>
<p>In the middle of all this, a disclosure of interest filed on 7-Mar-2011 
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=107808&amp;ang=EN&amp;dia=Y" target="_blank">states</a> that Joseph Lau sold 
269,986,900 COMG shares off and on the market that day, cutting his stake from 
13.42% to 0.18% at an average $0.405, and he 
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=107822&amp;ang=EN&amp;dia=Y" target="_blank">sold</a> the rest of his shares the 
next day at an average $0.45. Total proceeds were about $111m. He
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0406/LTN20110406346.pdf" target="_blank">
stepped down</a> as CEO on 6-Apr-2011 but remains an ED. The share priced 
reached a daily high for the year of $0.60 on 14-Mar-2011, and is down 82.8% 
since then, closing at $0.103 on Friday (9-Mar-2012). At its high, allowing for 
full conversion of the bonds, COMG was valued at HK$6,421m.</p>
<h3>Share sales by Mr Jiang</h3>
<ul>
	<li>On 21-Mar-2011, Mr Jiang
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=44149&amp;lang=EN&amp;dia=Y" target="_blank">disposed</a> of 150m shares,
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-03-22">settled</a> the 
	next day via Tanrich, when the stock moved to Goldman Sachs.</li>
	<li>On 6-Apr-2011 he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=44535&amp;lang=EN&amp;dia=Y" target="_blank">disposed</a> 
	of 230,769,230 shares (equivalent to $30m of bonds),
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-04-06">settled</a> that 
	day via Tanrich. You can see that most of it moved to Celestial.</li>
</ul>
<h3>New directors at COMG</h3>
<p>On 29-Mar-2011, Ms <a href="../dbpub/positions.asp?p=65213">Hu Wei</a>, the 
GM of Zhejiang Join-Home Media Co Ltd and a former reporter, was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0329/LTN20110329921.pdf" target="_blank">
appointed</a> as MD of COMG and Dr <a href="../dbpub/positions.asp?p=65214">Gao 
Hong Xing</a> was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0329/LTN20110329945.pdf" target="_blank">
appointed</a> as NED. On 6-Apr-2011, <a href="../dbpub/positions.asp?p=65360">
Sammy Tsui Wing Cheong</a> (<strong>Sammy Tsui</strong>) a former COO of Sing 
Tao News Corp Ltd, was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0406/LTN20110406346.pdf" target="_blank">
appointed</a> as unpaid CEO of COMG. On 13-Apr-2011, Mr Zhu Defu, the GM and publisher of a weekly magazine called 
&quot;Taobao Tianxia&quot; and VP of <a href="../dbpub/orgdata.asp?p=1852090">Alibaba 
Group Holding Ltd</a> (<strong>Alibaba Group</strong>), was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0413/LTN20110413590.pdf" target="_blank">
appointed</a> as an ED of COMG.</p>
<ul>
	<li>On 3-May-2011, Mr Jiang
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0504/LTN20110504358.pdf" target="_blank">transferred</a> HK$65m of bonds to 
	<a href="../dbpub/orgdata.asp?p=1863009">Taobao Tianxia Media Co Ltd</a> (<strong>Taobao 
Tianxia</strong>) for an undisclosed price. The bonds were immediately 
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0505/LTN20110505241.pdf" target="_blank">converted</a> 
into 500m shares (11.91%) of COMG. Taobao Tianxia was 49% owned by Alibaba Group 
and 51% by <a href="../dbpub/orgdata.asp?p=65776">Zhejiang Daily Media Holding 
Group Ltd</a> (<strong>ZDM</strong>). Mr Jiang also granted Taobao Tianxia &quot;priority&quot; to purchase the 
rest of his bonds, although it appears that no further purchases were made.</li>
</ul>
<p>On 6-May-2011, Mr Gao Hai Hao and Mr Wang Jiang, President 
and VP respectively of Zhejiang Daily Press Group Ltd, were
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0506/LTN20110506751.pdf" target="_blank">
appointed</a> as Honorary Chairman (non-director) and an ED of COMG.</p>
<p>Taobao Tianxia's holding of 500m shares was diluted to 4.61% by the series of 
subsequent bond conversions, but it has failed to disclose any change in its 
interest. There was a 6 month lock-up agreement with Mr Jiang which expired in 
Oct-2011. As far as we can tell, the only block of shares deposited into CCASS 
that we cannot account for since Taobao Tianxia became a shareholder is 446m
<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-06-21">deposited</a> with 
Bank of China (HK) Ltd on 21-Jun-2011, so that is probably theirs. </p>
<h3>More sales by Mr Jiang</h3>
<ul>
	<li>On 23-May-2011, Mr Jiang disposed of $120,126,244 of bonds, which were 
	converted in two tranches. The first tranche of $52m were
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0523/LTN20110523196.pdf" target="_blank">
	converted</a> on 23-May-2011 into 400m shares, which were probably deposited 
	in two lots: 200m with Tanrich on
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-05-27">27-May-2011</a> 
	and 200m with Fulbright on
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-05-31">31-May-2011</a>, 
	mirroring the pattern of January. The second tranche of $68,126,244 were
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0524/LTN20110524229.pdf" target="_blank">
	converted</a> on 23-May-2011 into 524,048,033 shares and probably deposited 
	into CCASS via BOCI Securities Ltd (<strong>BOCI</strong>) in 3 lots at a 
	more leisurely pace of 9,615,384 on
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-08-22">22-Aug-2011</a>, 
	431,880,341 on <a href="../ccass/chldchg.asp?i=1139&amp;d=2011-10-12">
	12-Oct-2011</a> and 82,552,308 on
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-11-23">23-Nov-2011</a>.</li>
	<li>On 19-Jul-2011, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=46345&amp;lang=EN&amp;dia=Y" target="_blank">
	disposed</a> of $234m of bonds which were
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0720/LTN20110720494.pdf" target="_blank">
	converted</a> the same day into 1,800m shares and
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-07-21">deposited</a> 
	with Piper Jaffray Asia Securities Ltd (<strong>Piper Jaffray</strong>) on 
	21-Jul-2011. On 25-Jul-2011, Mr Jiang
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-07-25">moved</a> his 
	entire holding of 219,230,770 shares (3.16%) from Tanrich to Piper Jaffray. However, 
	some time between 19-Jul-2011 and 4-Aug-2011, his interest in shares 
	(including via bonds) rebounded to where it had been before 19-Jul-2011, 
	because there is a
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=46738&amp;lang=EN&amp;dia=Y" target="_blank">
	filing</a> on 4-Aug-2011 showing the same opening balance. <strong>So there 
	appears to be a missing disclosure. </strong>As a result of the share 
	return, his actual shareholding increased from 3.16% to 25.81%.<br><br>The likely explanation 
	for the rebound is that he had a best efforts placing agreement with Piper 
	Jaffray for 1,800m shares, which failed to complete. He left the shares with 
	Piper Jaffray when they returned to him.</li>
	<li>On 4-Aug-2011, he disposed of another $114.4m of bonds which were
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0805/LTN20110805416.pdf">
	converted</a> into 880m shares on the same day. These were likely deposited 
	with BOCI in 3 tranches on
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-08-09">9-Aug-2011</a> 
	(780m), <a href="../ccass/chldchg.asp?i=1139&amp;d=2011-08-10">
	10-Aug-2011</a> (50m) and
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-09-15">15-Sep-2011</a> 
	(50m).</li>
	<li>On 28-Sep-2011, COMG
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0928/LTN20110928309.pdf" target="_blank">announced</a> that Mr Jiang had sold 100m shares (1.28%) of COMG to Shanda 
Capital Ltd, 100% owned by Shanghai Shanda Networking Co Ltd, for an undisclosed price. 
	The buyer is 70:30 owned 
by Mr Chen Tianqiao and Mr Chen Danian, the respective CEO and President of
	<a href="../dbpub/orgdata.asp?p=42149">Shanda Interactive Entertainment Ltd</a>.</li>
	<li>On 25-Oct-2011 Mr Jiang
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=48156&amp;lang=EN&amp;dia=Y" target="_blank">
	disposed</a> of $16,909,732 of bonds which were
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1026/LTN20111026276.pdf" target="_blank">
	converted</a> on the same day to 130,074,860 shares. However, they appeared 
	to bounce back to him on or before 9-Nov-2011, because a
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=48382&amp;sa2=np&amp;scpid=2065046&amp;lang=EN&amp;dia=Y" target="_blank">
	filing</a> on that date shows the same opening balance. <strong>So there 
	appears to be a missing disclosure.</strong></li>
	<li>On 9-Nov-2011, COMG
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1109/LTN20111109345.pdf" target="_blank">announced</a> that Mr Jiang had sold 100m shares (1.26%) of COMG to 
	<a href="../dbpub/orgdata.asp?p=932435">Mandra 
Capital Ltd</a> (<strong>Mandra</strong>), 100% owned by Mr 
	<a href="../dbpub/positions.asp?p=45042">Zhang Song Yi</a> and his family, for an undisclosed 
price. Zhang Song Yi was billed by COMG as a director of
	<a href="../dbpub/orgdata.asp?p=20516">Sina Corporation</a>, but that's just 
	one of his non-executive roles. Mandra was also involved in selling Mandra 
	Forestry Holdings Ltd to the spectacular
	<a href="../dbpub/orgdata.asp?p=22457">Sino-Forest Corporation</a>. <br><br>On the 
	same day, Mr Jiang sold 100m shares to other person(s), so his combined 
	disposal was 200m shares. We can see 100m shares
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-11-09">moving</a> to 
	HSBC Private Bank (Suisse) SA, probably for Mandra, on 9-Nov-2011, along 
	with 1,000m shares moving from Piper Jaffray to Convoy Investment Services 
	Ltd (<strong>Convoy</strong>), Mr Jiang's first deposit there. Then the next 
	day we can see 100m shares
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-11-10">leaving</a> Piper 
	Jaffray, mostly to Tanrich.</li>
	<li>On 22-Nov-2011, Mr Jiang
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=48531&amp;lang=EN&amp;dia=Y" target="_blank">
	sold</a> 43m shares. These were
	<a href="../ccass/chldchg.asp?d=2011-11-24&amp;i=1139">
	settled</a> by Convoy 2 days later.</li>
	<li>On 25-Nov-2011, 130,074,860 shares were
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-11-25">deposited</a> 
	with Convoy, probably Mr Jiang's as they match the number mentioned above.</li>
	<li>On 28-Nov-2011, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=48596&amp;lang=EN&amp;dia=Y" target="_blank">
	disposed</a> of $122,982,575 of bonds which were immediately
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1129/LTN20111129511.pdf">
	converted</a> into 946,019,807 shares. These were
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-12-02">deposited</a> 
	with Convoy on 2-Dec-2011.</li>
	<li>On 7-Dec-2011, he
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=48692&amp;lang=EN&amp;dia=Y" target="_blank">
	sold</a> 149m shares. These were
	<a href="../ccass/chldchg.asp?d=2011-12-07&amp;i=1139">settled</a> by 
	Convoy 2 days later.</li>
	<li>On 12-Dec-2011, he
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1213/LTN20111213401.pdf" target="_blank">
	converted</a> the last bonds. On 13-Dec-2011, the remainder of the shares he 
	kept at Piper Jaffray were
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-12-13">moved</a> to 
	Convoy, and on 16-Dec-2011, he
	<a href="../ccass/chldchg.asp?i=1139&amp;d=2011-12-16">deposited</a> 
	with Convoy the shares from his final conversion.</li>
</ul>
<p>In summary, the entire amount of convertible bonds generated 9,453m shares, 
enlarging the share capital of COMG by 750%. Mr Jiang kept about 3,001m shares 
(27.67%) of COMG and sold the other 6,452m, either as bonds or converted shares. 
In all of his statutory filings, he failed to disclose the price he received for 
any of the sales. <strong>We call on the SFC to investigate that.</strong></p>
<p>Apart from the original 100m consideration shares, his disposals occurred 
between 19-Jan-2011 and 8-Dec-2011. During that period, total on-market turnover 
in the stock was $4,087m on 14,772m shares, so the volume-weighted average price 
or VWAP was $0.2767. So, in the absence of disclosure of the actual sale prices, 
our best estimate is that he grossed about $1,785m on the sales, plus $26.5m on 
the original 100m shares he received, for a total of about <strong>$1,812m</strong>. 
At Friday's (9-Mar-2012) closing price of $0.103, his remaining shares are worth 
about $309m, taking the total to <strong>$2,121m</strong>. And if it turns out 
that he didn't get full market price at the times when he disposed of his bonds 
and shares, then that begs the question who got the benefit of the discount.</p>
<p>Mr Jiang also goes by the name of &quot;Howard&quot; and is a director of a Cayman fund 
called <a href="../dbpub/orgdata.asp?p=1863552">China Angel Fund</a>, of which 
he owns 36% at the last count. He owns 100% of
<a href="../dbpub/orgdata.asp?p=1863553">China Angel Investment Management Ltd</a> 
(BVI). Another entity called <a href="../dbpub/orgdata.asp?p=1863554">China 
Angel Fund Management Ltd</a> (Cayman) manages the fund, which is advised by
<a href="../dbpub/orgdata.asp?p=65971">AM Capital Ltd</a>.</p>
<h3>Interim results</h3>
<p>The latest
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0228/LTN20120228190.pdf" target="_blank">
interim report</a> of COMG, for the 6 months to 31-Dec-2011, shows revenue of 
just HK$6.7m and a loss of $18.7m. Net assets are officially $1320m, but that 
includes goodwill on the acquisition of GMG Media of HK$1,252m. So net tangible 
assets are just HK$68m or about $0.006 per share, compared with Friday's market capitalisation of $1,117m. 
At 31-Dec-2011 COMG had just 36 employees, including directors. There were 7 
executive directors so we assume there were just 29 others.</p>
<h3>More media acquisitions?</h3>
<p>For some time now, COMG has been in negotiations to buy 2 companies. Both 
appear to be related to the new directors' other businesses. The latest
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0117/LTN20120117469.pdf" target="_blank">
update</a> was on 17-Jan-2012. The first target is
<a href="../dbpub/orgdata.asp?p=1269060">Zhejiang Daily Join-Home Media Holding 
Group Ltd</a> (<strong>ZDJM</strong>), incorporated in HK on 11-Apr-2007. They 
don't mention that this was known as Lightscape Technologies (Greater China) Ltd 
until 11-Mar-2011. It was
<a href="http://www.marketwire.com/printer_friendly?id=1374529" target="_blank">
spun out</a> of a US Pink Sheets stock called
<a href="../dbpub/orgdata.asp?p=1863067">Lightscape Technologies Inc</a> on 
31-Dec-2010. Meanwhile, a new company has been set up on 28-Jan-2011 and took on&nbsp; 
the name of <a href="../dbpub/orgdata.asp?p=1704127">Lightscape Technologies 
(Greater China) Ltd</a> (<strong>Lightscape</strong>) on 24-Mar-2011. So don't 
be confused by the name-swapping: the business of ZDJM is new, not 5 years old.</p>
<p>According to the Lightscape
<a href="http://www.lightscape-tech.com" target="_blank">web site</a>, Sammy 
Tsui, the CEO of COMG, is also CEO of Lightscape, which designs and supplies 
outdoor LED displays and facade lighting. On the same site you can find a
<a href="http://www.lightscape-tech.com/377.html" target="_blank">ZDJM 
inauguration ceremony</a> on 31-Mar-2011.</p>
<p>According to an earlier
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1018/LTN20111018089.pdf" target="_blank">
announcement</a> on 18-Oct-2011, ZDJMH is:</p>
<blockquote>&quot;currently engaging and operating the following 
businesses both in China and Hong Kong:- (1) "Tao" + "Taobao Tianxia" Magazine 
and its online shopping platform; (2) Iconhere interactive entertainment and 
information platform; (3) LED total solution and consultancy business; and (4) 
out-of-home media business, including large-scale outdoor LED screens and indoor 
LCD screens.</blockquote>
<p>The second target is something called
<a href="../dbpub/orgdata.asp?p=1407288">Dimension Digital Marketing Ltd</a> (<strong>DDM</strong>), 
incorporated in HK on 29-Jul-2008, which from its
<a href="http://www.ddml.com.hk/" target="_blank">web site</a> appears to be 
developing some kind of <a href="http://en.wikipedia.org/wiki/QR_code">QR-like</a> 
barcode system for advertisers. DDM works out of the same office as Lightscape.</p>
<h3>Shaanxi Northwest and Joseph Lau</h3>
<p>On 22-Nov-2011, <a href="../dbpub/orgdata.asp?p=18171">Shaanxi Northwest New 
Technology Industry Co Ltd</a> (8258), a GEM-listed H-share,
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/1123/GLN20111123003.pdf" target="_blank">
granted</a> to Joseph Lau options to subscribe 46m new H-shares at $0.25 each, 
for an option price of just HK$180k. The &quot;reasons&quot; section contained the usual 
blather about &quot;enhancing the capital base&quot; without explaining why they wanted 
Joseph Lau to have rights over 16.67% of the enlarged H-shares (4.81% of the 
company), exhausting the General Issue Mandate. It is yet another demonstration 
of why companies <a href="../dbpub/subject.asp?p=43">should not have these mandates</a>.</p>
<h3>Conclusions and unfinished business</h3>
<p>We'll bring this hexalogy to a close. We've given you enough reasons to avoid 
investing in all of the listed companies named at the top of this article, as 
well as any company which uses the same advisers, particularly on a regular 
basis. We've also laid out evidence surrounding a substantial number of dubious 
transactions that the SFC, ICAC or CCB should investigate, and we've drawn 
attention in the &quot;regulatory notes&quot; boxes to a number of deficiencies in HK's 
regulatory framework which facilitate some of these schemes.</p>
<p>Once in a while, the authorities do actually listen and act. Examples include 
our article <a href="grandfield1.asp">Cooking with Gas</a> 
(4-Apr-2004) which was eventually followed by an
<a href="../dbpub/articles.asp?p=4802">ICAC investigation and convictions</a> in 
2010, and a <a href="riverhill.asp">trilogy of articles</a> about 
the Styland Network in 2002. Just last week, 10 years later, the SFC
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=12PR23" target="_blank">
won</a> a landmark ruling ordering the former Chairman and his wife (who was an 
executive director) to pay HK$85m in compensation (plus a lot of interest since 
2000). The case was actually heard in Jan-2011 but it took 14 months for Justice 
Aarif Barma to issue
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=80701&amp;currpage=T" target="_blank">
his judgment</a>, which says something about the strain the courts are under and 
the need to raise the budget for the judiciary. It will be interesting to see 
whether the couple pay up. The court has disqualified them as directors for 12 
years, but their son is now CEO of Styland and they still own 22.72% of it. No criminal charges were brought against the couple.</p>
<p>Other series include the <a href="cpp.asp">tetralogy of articles</a> 
in 2009 on China Public Procurement Ltd (1094) and China Railway Logistics Ltd 
(8089), amongst others. No public action has been taken on those. There was also 
our <a href="../dbpub/articles.asp?p=2078">articles on EganaGoldpfeil</a>, after 
which the company collapsed. The SFC has commenced action against the directors 
seeking disqualification orders and HK$2.13bn of compensation, but no criminal 
charges have yet been brought despite an investigation by the Commercial Crime 
Bureau.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=47074">AMPLE APPRAISAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863591">Beijing Mega TV Media Advertisement Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1269060">CHARLESTON CHERRE (HK) TECHNOLOGIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863552">China Angel Fund</a></li>
				
				<li><a href="/dbpub/articles.asp?p=132986">China Angel Fund Management (HK) Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863554">China Angel Fund Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1407288">Coleshill Marketing Consultancy Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2078">EGANAGOLDPFEIL (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49246">FORTUNE FINANCIAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=65971">Fortune Origin Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1852113">Fully Wealthy Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850253">GMG Media Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863592">Guangzhou Mega TV Media Advertising Media Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1704127">Lightscape Technologies (Greater China) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863067">Lightscape Technologies Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=932435">MANDRA CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4905">NATIONAL UNITED RESOURCES HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18171">SHAANXI NORTHWEST NEW TECHNOLOGY INDUSTRY COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863593">Shanghai Mega TV Cultural Dissemination Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51093">SOUTHWEST SECURITIES (HK) BROKERAGE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4978">STYLAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863009">Taobao Tianxia Media Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=65776">Zhejiang Daily Media Holding Group Corp. Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=67648">Jiang, Howard Qi Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41817">Lau, Joseph Chi Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45042">Zhang, Songyi</a></li>
				
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