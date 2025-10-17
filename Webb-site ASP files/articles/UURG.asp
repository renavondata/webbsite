
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

<script type="text/javascript">document.title="The UURG to Purge";</script>

	<div class="summary">We look at the history of UURG (8192), currently controlled by battle-of-wills feng shui man Tony Chan Chun Chuen, and warn investors about the bubble surrounding the stock, which is trading at 191 times diluted NAV.</div>

<h2 class="center">The UURG to Purge<br>
<span class="headlinedate">25 September 2009</span></h2>
<p>With purported feng shui man Tony &quot;my will is genuine&quot; Chan Chun Chuen (<strong>Tony 
Chan</strong>) in the news recently, our attention was drawn to one of the 
listed companies with which he is involved,
<a href="../dbpub/orgdata.asp?p=16732">UURG Corp Ltd</a> (<strong>UURG</strong>, 
8192).</p>
<h3>History</h3>
<p>UURG started out as a tiny little IT company then known as &quot;AGL MediaTech Holdings Ltd&quot;, listing on Hong Kong's 
junior board, GEM, on 29-Nov-02 at a split-adjusted $0.10 per share (note: we 
adjust all UURG shares and prices in this article for share splits). One third 
of the issue was old shares sold by the founders. The company raised HK$20m gross 
($14.6m 
net). 93% of the initial placing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021127/GLN20021127006.pdf">
went</a> to 25 investors. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021122/08192/EWP199.pdf">
prospectus</a> claimed UURG to be an &quot;on-line rich media and content 
distribution solution provider&quot; with proprietary &quot;content distribution 
technology&quot;. The co-founders were <a href="../dbpub/natperson.asp?p=16735">Leonard Chan Tik Yuen</a> (<strong>T Y Chan</strong>) 
and his dad, <a href="../dbpub/natperson.asp?p=8435">Chan Ngan Hoi</a> (<strong>N H Chan</strong>). 
A large chunk of the pre-IPO turnover was with related companies - a flimsier 
track record you could not hope to find.</p>
<h4>Small-cap son</h4>
<p>History was repeating itself. N H Chan founded a company then called Capital 
Automation Holdings Ltd (<strong>CA</strong>), a maker of computer-aided design 
systems for the textile and garment industries, which listed on 15-Apr-92 in a 
tiny $39.25m ($34.25m net) offering. The prospectus of 31-Mar-92 was the same 
day as the year-end, and CA made a record net profit of $20.25m for that pre-IPO 
year. It was all down-hill from there. Within a year of listing, the company 
had started diversifying into property development in Zhejiang.</p>
<p>T Y Chan joined his father's board on 1-Sep-99 and took over as Chairman on 
leap-day 2000 at the tender age of 26. On 28-Jul-00, after CA had racked up 6 
years of losses, Rocard, controlled by N H Chan,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000731/LTN20000731027.doc">
sold</a> 50m shares (31.8%) of CA to ex-jailbird
<a href="../dbpub/natarts.asp?p=10434">Chim Pui Chung</a> for HK$56m. N H Chan 
resigned on 29-Sep-00 and T Y Chan resigned on 7-Dec-00. Control later changed 
again, and CA became <a href="../dbpub/orgdata.asp?p=4786">GOME Electrical 
Appliances Holding Ltd</a> (0493) in a backdoor listing. We will save that story 
for another day.</p>
<h3>First change of control</h3>
<p>After listing, the stock was ramped by persons unknown, reaching a high of 
$0.424 (up 324% from IPO) in March 2003, prompting a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030329/GLN20030329014.pdf">
concentration warning</a> that on 12-Mar-03, 10 shareholders owned 82.3% of the 
public float. On 2-Apr-03, it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030402/GLN20030402019.pdf">
admitted</a> that the prospectus had overstated the expected proceeds of the IPO 
and hence the net asset value. On 24-Sep-03, it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030925/GLN20030925000.pdf">
admitted</a> that the controlling shareholder had not fully paid its due share 
of the listing costs, and hence UURG's results for the year to 31-Mar-03 were 
wrong.</p>
<p>On 2-Dec-03, T Y Chan's mum, <a href="../dbpub/natperson.asp?p=8442">Wong Cheung Yun</a>,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20031202/GLN20031202017.pdf">
resigned</a> as NED, and 2 INEDs resigned, while
<a href="../dbpub/positions.asp?p=22458">Francis Chan Ping Kuen</a> was 
appointed INED. With so many movements in one day, change could not be far away.</p>
<p>On 10-Dec-03, <a href="../dbpub/positions.asp?p=22111">Chu Yen Ling</a> (<strong>Mr Chu</strong>)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20031217/GLN20031217016.pdf">
agreed</a> to buy 55% of UURG from the family trust of T Y Chan for $10.56m, 
triggering a general offer at $0.016. The trust sold its 
remaining 20% stake in a placing via Kingston Securities at the same price, 
which was a 90% discount to the market price at the time, indicating how 
unrealistic the market price was, because the offer was still a 135% premium to 
net asset value. On 12-Jan-04, the offer document was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040112/GLN20040112020.pdf">
posted</a> and Mr Chu joined the board as Chairman. He was then 68 with a 
26-year-old business in paper importing for his firm
<a target="_blank" href="http://www.hktdc.com/sourcing/products/en/0/1X001DT4/Mitsa%20(HK)%20Ltd/609808/Paper%20Product%20and%20Packaging.html">
Mitsa (HK) Ltd</a> and no experience in the IT sector.</p>
<h3>Placings and consolidation</h3>
<p>UURG was burning cash and had to do two rounds of placings to keep paying the 
bills. </p>
<p>On 27-Oct-04 UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041028/GLN20041028000.pdf">
agreed</a> to use the full 20% general mandate to issue 240m shares to 2 
subscribers, Mr Niu Tiehang (<strong>Mr Niu</strong>) and Ms Liu Peng (<strong>Ms Liu</strong>), social 
acquaintances of one of the directors, in equal amounts at $0.0256, raising $6m net.</p>
<p>On 10-Feb-06, UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060213/GLN20060213038.pdf">
agreed</a> to use the full 20% general mandate to issue 288m shares at $0.0066 of which Ms Liu took 
139.2m shares and Ms Siu 
Yuk Chu (<strong>Ms Siu</strong>) took 148.8m shares (increasing her stake to 
172.8m shares), raising 
$1.85m net for working capital. Ms Liu had a 15% stake after this, and Ms Siu 
had a 10% stake.</p>
<p>On 28-Apr-06 UURG consolidated its shares 8 to 1.</p>
<p>The stock closed 2006 at $0.00785. That year UURG booked a 
loss of HK$1.4m on turnover of $2.8m and ended with equity of just $0.83m.</p>
<h3>Second change of control - Wilson Pong</h3>
<p>On 10-May-07, UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070511/GLN20070511002.pdf">
announced</a> an approach which might lead to a change in control. None of the 
subscribers in the placings in 2004 and 2006 had sold any shares at this point. On 8-Jun-07 UURG put out a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070608/GLN20070608034.pdf">
concentration warning</a> that on 11-May-07, 92.57% of the company was held by 
16 shareholders.</p>
<p>On 3-Jul-07, UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070703/GLN20070703059.pdf">
announced</a> that <a href="../dbpub/natarts.asp?p=11752">Wilson Pong Wai San</a> 
(<strong>Mr Pong</strong>) would buy all Mr Chu's 660m shares in UURG (unchanged 
since he bought it) for $13.2m or $0.02 per share, triggering another general offer. This was a 
48.1% discount to the market price. However, simultaneously, UURG agreed to 
issue 2,540m shares to Mr Pong at a much lower $0.0005 each for $1.27m 
and $4m of bonds convertible at $0.0005 per share (or if the zeroes boggle your mind, 2000 shares per $1). So Mr 
Pong's total entry price was <strong>$18.47m</strong>.</p>
<p>The purchase from Mr Chu was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070705/GLN20070705091.pdf">
completed</a> on 5-Jul-07. The share subscription and the bond issue were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070817/GLN20070817069.pdf">
approved</a> by shareholders (excluding Mr Pong) on 17-Aug-07 and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070904/GLN20070904021.pdf">
completed</a> on 4-Sep-07. Our CCASS Analysis service shows that the subscription shares were probably
<a href="../ccass/chldchg.asp?i=3370&amp;d=2007-10-17&amp;hide=">
deposited</a> into HSBC on 17-Oct-07 (that's 127m shares pre-split). The general offer
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070918/GLN20070918041.pdf">
closed</a> without acceptances on 19-Sep-07, and as is traditional in Hong Kong, 
all the independent directors (who were supposed to be independent of the 
outgoing controlling shareholder) resigned and were replaced with 3 new ones.</p>
<p>On 3-Sep-07 Ms Liu
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=20187&amp;lang=EN&amp;dia=Y">
sold</a> most of her shares (243.52m) off-market at $0.09, which was the market 
price. We can't track what happened to the other subscribers, Mr Niu and Ms Siu, 
as they both made filings (<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=21109&amp;ang=EN&amp;dia=Y">Mr 
Niu</a>,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=21110&amp;lang=EN&amp;dia=Y">
Ms Siu</a>) stating that their holdings had been diluted on 5-Jul-07 by the 
subscription of Mr Pong. The notices were both filed late, on 18-Oct-07, and 
they were wrong, because the dilution did not occur until 4-Sep-07 when the 
subscription completed. If they were independent of each other then it is 
puzzling that their late filings were simultaneous.</p>
<p>We note that there were deposits into CCASS of 8.64m shares (pre-split)
<a href="../ccass/chldchg.asp?i=3370&amp;d=2007-11-07">
on 7-Nov-07</a> and 6m shares (pre-split)
<a href="../ccass/chldchg.asp?i=3370&amp;d=2007-11-21">
on 21-Nov-07</a>, which are the same size as the holdings of Ms Siu and Mr Niu 
and were deposited with Sanfull Securities Ltd (<strong>Sanfull</strong>) and 
Cheong Lee Securities Ltd (<strong>Cheong Lee</strong>) respectively.</p>
<p>On 21-Dec-07 the shares were split 20 for 1.</p>
<p>On 17-Jan-08, Mr Pong sold 312m shares in 3 blocks (12m, 100m and 200m) of 
which 300m shares were off-market, for total proceeds of <strong>$66.80m</strong> 
gross, or an average of about $0.2149 per share. We don't know who bought them, 
but 100m shares
<a href="../ccass/chldchg.asp?d=2008-01-18&amp;sort=chngdn&amp;i=3370">
arrived</a> in the CCASS account of Cheong Lee on 18-Jan-08 from 
outside CCASS.</p>
<p>On 25-Jan-08, Mr Pong
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080204/GLN20080204022.pdf">
converted</a> $0.6m of his bonds into 1,200m shares.</p>
<h3>Aborted acquisition</h3>
<p>On 10-Apr-08, UURG conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080410/GLN20080410062.pdf">
agreed</a> to buy Sanxia International Energy Investments Ltd (BVI), which owned 
a 30% interest in a 9-month-old joint venture to build and operate a pipeline 
for coal-bed methane, from Mr Chen Keyu for HK$134m, of which $35m would be in 
cash or promissory notes, and $99m in bonds convertible at $0.25 per share 
(which, you will note, is 500 times more per share than the conversion price on 
the bond held by Mr Pong). We know nothing about Mr Chen Kenyu.</p>
<p>On 18-Apr-08, UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080421/GLN20080421070.pdf">
placed</a> 100m shares at $0.204 to Mr Zhou Qijin in a top-up placing via Mr 
Pong. We know nothing about Mr Zhou, although we note that 100m shares 
were
<a href="../ccass/chldchg.asp?i=3370&amp;d=2008-04-17">
deposited</a> into CCASS, probably with Sanfull, on 17-Apr-08, the day before the sale, 
and on 7-May-08 100m shares
<a href="../ccass/chldchg.asp?i=3370&amp;d=2008-05-07">
moved</a> out of Sanfull and into HSBC custodian.</p>
<p>The placing raised $20.2m net to be used &quot;solely for the financing of the 
acquisition of Shanxi International Energy Investments Limited&quot;. On 24-Jun-08, 
UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080624/GLN20080624042.pdf">
terminated</a> the acquisition on due diligence grounds. In what is a rarity in 
HK, they got their deposit of $22.45m back.</p>
<h3>Third change of control - enter Tony Chan</h3>
<p>On 11-Jul-08, Tony Chan
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080718/GLN20080718052.pdf">
agreed</a> to buy from Mr Pong a total of 3,470m shares (62.32%) of UURG and $2.9m of the convertible 
bonds, for a total of <strong>$150.174m</strong>, equivalent to 
$0.0162 per share, triggering another general offer. Mr Pong retained 618m shares and $0.5m of bonds, equivalent 
to a total of 1,618m shares. So up to this point, Mr Pong had invested $18.47m 
and cashed out $216.97m. Between 17-Dec-08 and 5-Jan-09 he purchased 59.792m 
shares for about $9.68m or an average $0.162 per share. That still leaves him 
with net cash out of $188.82m.</p>
<p>We can see from CCASS movements that Mr Pong's purchases were delivered to 
the CCASS account of Sanfull. For example, on 5-Jan-09, he 
purchased 14.8m shares. On 7-Jan-09, the holding of Sanfull
<a href="../ccass/chldchg.asp?i=3370&amp;d=2009-01-07&amp;sort=chngdn">
increased</a> by that amount.</p>
<p>Tony Chan's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080807/GLN20080807082.pdf">
offer document</a> was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080808/GLN20080808095.pdf">
posted</a> on the suitably auspicious day of 08-08-08. Perhaps he just liked the 
stock code: 8192 is a nice round number in binary, 2<sup>13</sup>, which brings 
to mind an old maths joke: there are 10 kinds of people in the world: those who 
understand binary, and those who don't.</p>
<p>On 27-Aug-08 Tony Chan apparently
<a href="../ccass/chldchg.asp?i=3370&amp;d=2008-08-27">
withdrew</a> the share certificates from HSBC's CCASS account - which would not be out 
of character for a man who 
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=82089&amp;con_type=1">wheels truck-loads of cash</a> around - perhaps he put 
the certificates in a
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=82887&amp;con_type=1">feng shui hole in the basement</a> of one of the Chinachem buildings.&nbsp; 
Anyway, the stock was
<a href="../ccass/chldchg.asp?i=3370&amp;d=2008-09-09">
deposited</a> with HSBC again on 9-Sep-08.</p>
<p>On 23-Dec-08, UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081223/GLN20081223023.pdf">
announced</a> a change to its current name, explaining that the letters mean 
&quot;Utilize our renewable energy&quot; (go figure) and &quot;signifies the Group's further 
diversification and expansion of business in providing green and intelligent 
building solution and sustainable design consultancy and professional services&quot;. 
All very grand, but what business are they actually doing, and where did they 
get this expertise? By the 2008 annual report, they decided that UURG stands for 
&quot;<strong>U</strong>tilizing the <strong>U</strong>nlimited <strong>R</strong>enewable 
ener<strong>G</strong>ies&quot; (still a bit of a stretch) and said that the Group 
has &quot;successfully secured the project for providing natural ventilation 
solutions to the Lujiazui Diamond Mansion in Shanghai.&quot;</p>
<p>The group managed service income of just HK$625k in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090816/GLN20090816001.pdf">
6 months to 30-Jun-09</a>, adorning the interim report with windmills and solar 
panels and the impenetrable slogan &quot;Building the Greensight&quot;.</p>
<h3>The bubble</h3>
<p>When the bonds are fully converted, there will be 12,368m shares in issue. On 
21-Jul-08, the day after Tony Chan's purchase was announced, UURG reached an 
all-time intra-day high of $0.74, briefly valuing the company (assuming full 
bond conversion) at $9,152m.</p>
<p>This lunchtime's (25-Sep-09) price of $0.195 values UURG at $2,412m assuming 
conversion, but it would have net assets of only $12.6m as of 30-Jun-09. So it's 
about 190 times over-valued, unless you place any value on Tony Chan's 
management skills, which we don't.</p>
<p>On 22-Sep-09, UURG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090922/GLN20090922003.pdf">
announced</a> that Tony Chan is considering selling his entire stake in UURG 
and is in due diligence discussions with a potential purchaser. He's got the 
urge to purge, and so should other shareholders, before this bubble bursts. No 
purchaser in his right mind is going to pay the current market price for the 
controlling stake, unless of course the buyer is acting under the influence of 
his feng shui adviser.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=50775">CHEONG LEE SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16732">Global Token Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4786">GOME Retail Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1445">SANFULL SECURITIES LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=16735">Chan, Leonard Tik Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8435">Chan, Ngan Hoi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=39219">Chan, Peter Chun Chuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22111">Chu, Yen Ling</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11752">Pong, Wilson Wai San</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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