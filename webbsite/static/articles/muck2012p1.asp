
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

<script type="text/javascript">document.title="Raking muck, Part 1";</script>

	<div class="summary">In the first of a multi-part series, we delve into a transaction by the HK offshoot of Xinhua, the PRC's official news agency, and the people behind it.</div>

<h2 class="center">Raking muck, Part 1<br>
<span class="headlinedate">21 February 2012</span></h2>
<p>Once in a while, its nice to stop thinking about the <a href="./">
bigger picture</a> and trying to make HK a better place, and instead roll up our sleeves, don several pairs of rubber 
gloves and rummage around in the organic fertiliser at the bottom end of HK's 
market, hopefully triggering a few investigations by the authorities to keep 
them busy, and reminding them of gaps in our regulatory system. This story is so long and complicated that we will break it into several 
parts. When complete, it will cover at least these 8 listed companies:</p>
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
<p>So pour yourself a coffee and let's get started.</p>
<h3>Inno-Tech, Railsmedia &amp; CNC buy into CNMHK from Vicky Yu</h3>
<p>On 18-Feb-2011, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0218/GLN20110218023.pdf" target="_blank">
agreed</a>, via its 100% subsidiary, Superior Luck Investments Ltd (<strong>SLI</strong>), 
to buy 19% of <a href="../dbpub/orgdata.asp?p=1493887">China New Media (HK) Co Ltd</a> (<strong>CNMHK</strong>) from Win 
Today Ltd (<strong>Win Today</strong>), 100% owned by 
<a href="../dbpub/natarts.asp?p=29107">Vicky Yu Wai Yin</a> (<strong>Vicky 
Yu</strong>) for HK$78m, of which $39m was in cash and $39m in convertible notes. Prior to this, CNMHK was 51% owned by 
COMG and 49% by Vicky Yu. CNMHK was a start-up:</p>
<blockquote>
	&quot;principally engaged in outdoor 
	advertising in Hong Kong, specializing in advertising spaces in lifts and outer 
	walls of buildings.&quot;
</blockquote>
<p>Inno-Tech put out a
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0615/GLN20110615019.pdf" target="_blank">
circular</a> on 16-Jun-2011. This stated that CNMHK had outsourced the sales of 
advertising spaces to an agent, <a href="../dbpub/orgdata.asp?p=151723">Easy 
Advertising Group Ltd</a> (<strong>EAG</strong>), which had</p>
<blockquote>
	&quot;not yet procured any end customers for the time being&quot;.
</blockquote>
<p>Hardly a compelling story. CNMHK 
was only incorporated on 19-Jun-2009 and had net liabilities at 31-Dec-2010 of 
HK$1m, but the deal valued it at $411m, and
<a href="../dbpub/adviserships.asp?p=47074">Ample Appraisal Ltd</a> (<strong>Ample 
Appraisal</strong>) gave it a 
value of $412m. More than ample, we would say. The financial adviser was
<a href="../dbpub/adviserships.asp?p=18359">China Merchants Securities (HK) Co 
Ltd</a>. The deal completed on 13-Jul-2011.</p>
<p>The 18-month notes were convertible 
@$0.60 into 65m shares, equivalent to 68.38% of the existing shares, 
but on 6-Oct-2011 and 13-Oct-2011 Inno-Tech redeemed the notes early for $39m in 
cash. This was an odd decision, given that the notes were interest-free and the 
market price was well below the conversion price ($0.335 and $0.355 on the two 
dates) - why not keep free cash for 18 months?</p>
<p>On 26-Jul-2011, a second listed company, Railsmedia,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0726/LTN20110726509.pdf" target="_blank">
agreed</a> to buy 7% of CNMHK from Vicky Yu for HK$28.8m, of which $13m was in 
cash and $15.8m was a promissory note. The announcement mentioned that SLI owned 
19% of CNMHK, but didn't disclose that Inno-Tech owned SLI, nor did a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/0728/LTN20110728648.pdf" target="_blank">
follow-up announcement</a>. Simultaneously, Railsmedia launched a placing of 310m shares @$0.078 via
<a href="../dbpub/adviserships.asp?p=51093">Tanrich Securities Co Ltd</a> (<strong>Tanrich 
Securities</strong>), raising $23.2m net, partly to pay for the acquisition.</p>
<p>Two days later, on 28-Jul-2011, CNC (then known as Tsun Yip Holdings Ltd)
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0729/GLN20110729001.pdf" target="_blank">
agreed</a> to buy 17% of CNMHK from Vicky Yu for HK$70.04m, of which $25m was in 
cash and $45.05m as a 3% 3-year promissory note. The implied valuation of $412m 
was again supported by Ample Appraisal Ltd and the financial adviser was
<a href="../dbpub/adviserships.asp?p=49246">Athens Capital Ltd</a>, signed by
<a href="../dbpub/positions.asp?p=21496">Ross Cheung Ting Kee</a>. The deal 
completed on 11-Aug-2011.</p>
<p>As a result of the 3 deals, Vicky Yu had sold a total of 43% of CNMHK to the 
three listed companies for HK$176.84m, receiving $116m in cash (including the 
Inno-Tech note redemption), $15.8m of promissory notes from Railsmedia and $45.05m 
of promissory notes from CNC. COMG still owned 51% and she owned 6% of CNMHK. 
Bear her name in mind as we'll come back to it in part 2.</p>
<h3>The creation of CNC</h3>
<p>CNC was listed as Tsun Yip Holdings Ltd on 
30-Aug-2010 after a placing at $0.128 per share (split-adjusted). It was in the business of waterworks, drainage and site 
formation for the public sector in HK. Less than a year later, it had begun to 
morph. Notably, before doing this, it had lost all 3 of the INEDs it floated 
with. Mr Sung Lee Kwok
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0516/GLN20110516041.pdf" target="_blank">
resigned</a> on 16-May-2011, Mr Lim Hung Chun
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0718/GLN20110718019.pdf" target="_blank">
resigned</a> on 18-Jul-2011 and Lo Ho Chor
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0725/GLN20110725013.pdf" target="_blank">
resigned</a> a week later, in each case &quot;due to his other business commitments 
which require more of his dedications&quot; and in each case a new INED was appointed 
the same day.</p>
<p>On 2-Jun-2011, there was a strange
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0602/GLN20110602095.pdf" target="_blank">
appointment</a> of then 29 year-old Mr Hui Chi Kwong (<strong>CK Hui</strong>) 
as an Executive Director. From graduating in 2006 until then he was an insurance 
salesman with AIA. He got a 3-year contract with CNC, admittedly at only $360k 
per year, but why? The company said &quot;It is believed&quot; (presumably by the board) 
&quot;that his established network would be helpful for the business development of 
the group&quot;. What, in drainage and waterworks contracts with the government? How 
so? What exactly are we missing here?</p>
<p>On 8-Jul-2011 CNC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0710/GLN20110710001.pdf" target="_blank">
launched</a> a best-efforts placing via
<a href="../dbpub/adviserships.asp?p=14223">Emperor Securities Ltd</a> of 198.4m 
shares (using the full 20% general mandate) @$0.173, an 19.2% discount to the 
5-day average (20% is the maximum under the Listing Rules) raising $33.3m net 
&quot;for the Group's general working capital and further business development.&quot; The 
placing
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0721/GLN20110721031.pdf" target="_blank">
completed</a> on 21-Jul-2011. A week after that, CNC agreed the deal with Vicky 
Yu, the initial payment of which was $25m, absorbing most of the placing 
proceeds.</p>
<p>On 6-Sep-2011 CNC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/1012/GLN20111012015.pdf" target="_blank">
agreed</a> to buy <a href="../dbpub/orgdata.asp?p=1550918">Xinhua TV 
Asia-Pacific Operating Co., Ltd</a> (<strong>XTVAPO</strong>, HK) for HK$700m 
from 3 vendors: 70% from <a href="../dbpub/orgdata.asp?p=134710">China Xinhua News Network Co Ltd</a> (<strong>CXNN</strong>, 
HK, 100%-owned by Xinhua News Agency), 5% by APT Satellite TV Development Ltd 
(100% owned by <a href="../dbpub/orgdata.asp?p=4760">APT Satellite Holdings Ltd</a>, 
1045) and 25% from (wait for it) Proud Glory Investments Ltd, a BVI shell 
owned by &quot;Dr <a href="../dbpub/positions.asp?p=40967">Lee Yuk Lun</a>&quot; (<strong>YL 
Lee</strong>). The price was payable as to $93m in shares @$0.196 (which would 
all go to CXNN) and $607m in 5% 3-year bonds convertible @$0.196. 
The
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/1120/GLN20111120003.pdf" target="_blank">
circular</a> was filed on 20-Nov-2011 and includes another ample valuation by 
Ample Appraisal at $701.2m. The deal
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/1211/GLN20111211004.pdf" target="_blank">
completed</a> on 9-Dec-2011.</p>
<p>The deal structure avoids triggering a takeover offer: the shares allotted to 
CXNN are 28.5% of the enlarged company, and the bonds cannot be converted if 
doing so would trigger a general offer.</p>
<p>XTVAPO is a start-up with no revenue from incorporation on 22-Dec-2009 to 
30-Jun-2011. At that date, it had net liabilities of HK$6.8m, and issued share 
capital of $0.01m. On 5-Sep-2011, 
CXNN granted broadcasting rights of its TV programmes to XTVAPO for the Asia 
Pacific region (excluding PRC) &quot;on an exclusive basis&quot; for 10 years from 
1-Sep-2011, for a fee of HK$1m per year for the first 5 years and HK$3m per year 
for the second 5, a total of $20m. The licence can be yanked if there is a 
change of control of CNC.</p>
<p>Why this TV distribution right should be worth any more than what 
XTVAPO is paying for it is anyone's guess, but by buying the shell which owns 
it, they are paying $700m for it. Amazingly, the market <u>
seems</u> to say it is worth even more. None of the bonds has yet converted, 
but when they do, there will be about 4762m shares in issue. The stock closed on 
Monday (20-Feb-2012) at $1.09, implicitly valuing CNC at $5,190m when the bonds 
are converted. YL Lee's bonds alone (which cost him almost nothing) are worth 
HK$973m at that price, plus the interest. </p>
<p>By comparison, on 8-Jul-2008, before the placing, CNC had a market value of 
$210m. Add $33m for the placing and you've got $243m. <strong>So the market has 
added about $4,947m for what is essentially just a start-up TV distribution 
company</strong>. Anyway if you enjoy a bit of the-world-as-China-sees-it, you 
can watch CNC World <a href="http://www.cncworld.tv" target="_blank">online in 
English here</a> or i<a href="http://www.xhstv.com/" target="_blank">n Chinese 
here</a> and there's an
<a href="http://itunes.apple.com/cn/app/cnc-world/id392866061?mt=8" target="_blank">
iPad English App</a> and
<a href="http://itunes.apple.com/cn/app/cnc-zhong-wen-tai/id392866815?mt=8" target="_blank">
iPad Chinese App</a> with streaming live TV. The web sites and apps are not 
mentioned in the circular, so we assume they are not part of the deal, only 
satellite and cable TV rights.</p>
<p>We're calling CNC a bubble. We should add that from a technical perspective, 
the stock ownership looks highly <a href="../ccass/cconchist.asp?i=6151">
concentrated</a>: of the stock in CCASS, 74.0% is held in the top 5 accounts and 
86.7% in the top 10 accounts. When those bondholders start converting, watch out 
for the flood of stock.</p>
<h3>About YL Lee and YF Lee</h3>
<p>YL Lee, who has 25% of this deal, is Chairman and CEO of <a href="../dbpub/orgdata.asp?p=3017">Rising 
Development Holdings Ltd</a> (1004). We don't know where the doctorate is from, 
but he was upgraded from &quot;Mr&quot; to &quot;Dr&quot; in the 2011 annual report. 
He is a member of the Beijing CPPCC (a powerless municipal consultative body), 
and a part-time member of HK's Central Policy Unit (who knows how they pick 
them?). He owns a BVI company called Pico Zeman Asset Management Ltd, which as 
its name suggests, is nearly invisible online, but there is a probably-related 
firm called <a href="../dbpub/orgdata.asp?p=970864">Pico Zeman Global Asset 
Management Ltd</a>, which has a
<a href="http://www.picozeman.com" target="_blank">web site</a> and is 
registered with the HK Confederation of Insurance Brokers.</p>
<p>YL Lee is or was also Chairman of
<a href="../dbpub/orgdata.asp?p=62603">Pico Zeman Securities (HK) Ltd</a> (<strong>PZSHK</strong>), 
a small broker that has <a href="../dbpub/adviserships.asp?p=62603">done a few 
placings</a> and has a <a href="http://www.pzshk.com.hk/" target="_blank">web 
site</a> which, how can we put it, needs a bit of work. He is also Chairman of
<a href="../dbpub/orgdata.asp?p=40969">Volk Favor Food Co Ltd</a> (<strong>Volk</strong>), 
a private HK company incorporated on 13-Mar-2007 with no web presence that we 
could find, but we did find another chap,
<a href="../dbpub/positions.asp?p=62602">Herman Lee Yuk Fat</a> (<strong>YF Lee</strong>), 
who also claims to be Chairman of PZSHK and Volk. Maybe they are brothers and 
share the roles.</p>
<p>There are also two snappily-named bodies,
<a href="../dbpub/orgdata.asp?p=1479437">The Wanchai and Central &amp; Western 
District Industries and Commerce Association Ltd</a> (<strong>WCWDICA</strong>, 
incorporated 16-Apr-2009) chaired by YL Lee, and on the other side of the 
harbour, <a href="../dbpub/orgdata.asp?p=1425185">The Association of Industries 
and Commerce of Yaumatei Tsimshatsui Mongkok Ltd</a> (incorporated 9-Oct-2008), 
chaired by YF Lee. The bodies paid a
<a href="http://foundation.hkbu.edu.hk/eng/news.php?offset=38&amp;n=2010161" target="_blank">
joint visit</a> to HK Baptist University last June, and a
<a href="http://www.takungpao.com/hm/top/2011-01-31/526024.html" target="_blank">
joint visit</a> to the United Front Work Department of the Communist Party of 
China Central Committee in Jan-2011. You can thank WCWDICA for
<a href="http://www.info.gov.hk/gia/general/201201/20/P201201200218.htm" target="_blank">
sponsoring the HK Chinese New Year fireworks</a> in Jan-2012.</p>
<p>Since 26-Nov-2010, YF Lee has been an ED of CYTM, of which YL Lee was an NED 
from 2-May-2008 to 17-Dec-2008. CYTM is part of what we call the &quot;Chung 
Nam Network&quot; of companies to avoid.</p>
<p>YL Lee is married to <a href="../dbpub/natperson.asp?p=51022">Clarea Au Suet 
Ming</a> (<strong>Clarea Au</strong>), who is the 75% shareholder of
<a href="../dbpub/orgdata.asp?p=64523">CL Group (Holdings) Ltd</a> (<strong>CL 
Group</strong>, 8098) which listed on GEM last year. Despite controlling it, she 
does not sit on the board. CL Group owns 
<a href="../dbpub/adviserships.asp?p=50775">Cheong Lee Securities Ltd</a> (<strong>Cheong 
Lee Securities</strong>), which she acquired in 2007 and of which she is one of 
the largest broking customers. She and her associates accounted for 93.1% and 
57.0% of its transaction value in the years to 31-Mar-2009 and 2010 
respectively. In the second year, she and her associates had transaction value 
of $229.4bn (yes, billion) or about $918m per day.</p>
<p>Cheong Lee Securities has also done a <a href="../dbpub/adviserships.asp?p=50775">
number of placings</a> including at least 6 for Inno-Tech and 6 for CYTM. You 
can safely avoid any stock on that list.</p>
<p>We don't know what exactly the contribution of YL Lee to the CNC deal is, but 
it appears that he gets a 25% carried interest in the start-up for almost zero 
investment. For a state-owned news outlet (and in China's case, a propaganda 
unit), Xinhua is behaving remarkably:</p>
<ul>
	<li>Why get into bed with a GEM-listed construction firm in a back-door 
	listing where you cannot own more than 30% without triggering a general 
	offer, rather than setting up the business and eventually listing it through 
	the front door, with full control?</li>
	<li>Assuming that YL Lee is the beneficial owner of the convertible bonds, 
	why would a state-owned entity bestow such wealth on an individual, YL Lee?</li>
</ul>
<p>Imagine, if you will, the BBC engaging in such activity - teaming up with an 
AIM-traded company and injecting a start-up company, in return for 29.9% of the 
voting rights, and giving a 25% piece of the deal to your humble editor. Nice 
work if you can get it. Do our country's leaders in Beijing really approve of 
what Xinhua is doing? Interestingly, in its own
<a href="http://news.xinhuanet.com/english/china/2012-02/08/c_131398928.htm" target="_blank">
coverage</a> of the transaction, Xinhua says that Tsun Yip dealt with 3 
shareholders of XTVAPO, namely &quot;CNC Limited Co., APT Satellite Company Limited 
(APT) and <u>Ao Rong Investment Corporation</u>&quot;. The first 
two are basically correct, but we've never heard of the third one. Apparently it 
is a double translation of Proud Glory Investments Ltd (English to Chinese and 
back again). But why did Xinhua not mention YL Lee?</p>
<h3>Share movements before the CNC deal</h3>
<p>Apart from one transfer between them, none of the management of CNC, who held 
75% immediately after the IPO, bought or sold any shares until the CNC deal. The 
transfer between them is interesting in itself. On 13-Apr-2011, CNC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0413/GLN20110413009.pdf" target="_blank">
announced</a> that the former CEO, Peter Fung Chung Kin, had &quot;disposed of&quot; his 
entire holding of 111.6m shares (11.25%) to 2 directors in a 30:70 ratio, 33.48m 
shares to Martin Cheng Ka Ming (<strong>KM Cheng</strong>) and 78.12m shares to 
Eric John Chia Thien Loong (<strong>Eric Chia</strong>). A disclosure of 
interest shows that the shares
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=44643&amp;lang=EN&amp;dia=Y" target="_blank">
changed hands</a> at $0.049 per share. That is roughly equal to the net asset 
value per share of $0.046, but an 82% discount to the market price that day of 
$0.255.</p>
<p>Although the pre-IPO shareholders did not collectively sell shares, we can 
see in the Webb-site CCASS Analysis that the following movements of their shares 
took place, several months <u>before</u> the CNC deal:</p>
<ul>
	<li>On 13-May-2011, Mr Kan Kwok Cheung (<strong>KC Kan</strong>)
	<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-05-13">moved</a> 409m 
	shares (then 41.23%) from the custody of I-Access Investors Ltd to PZSHK. 
	That's the same small firm of which YL Lee is Chairman, and that was 4 
	months before the CNC deal.</li>
	<li>On 19-May-2011, 74.4m shares
	<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-05-19">moved</a> from 
	CES Capital International (HK) Co Ltd to PZSHK. We'll explain that below.</li>
	<li>On 20-May-2011, 111.6m shares were
	<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-05-20">deposited</a> with Cheong Lee Securities. That equates to the shares which 
	the former CEO disposed of on 13-Apr-2011 to KM Cheng and Eric Chia. Cheong 
	Lee Securities is controlled by YL Lee's wife, Clarea Au.</li>
	<li>On 25-May-2011, KM Cheng
	<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-05-25">deposited</a> 
	130.2m shares (his original holding) into CCASS via Cheong Lee Securities, 
	so now his entire holding of 163.68m shares was there.</li>
	<li>The same day, 18.6m shares were deposited into CCASS via PZSHK. 
	These, together with the shares moved on 19-May-2011 (see above), make a 
	total of 93m, which equates to the original shareholding of Eric Chia.</li>
	<li>On 30-Aug-2011, a week before the CNC deal, KM Cheng's 163.68m shares
	<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-08-30">moved</a> from 
	Cheong Lee Securities to United Simsen Securities Ltd (<strong>Simsen</strong>)</li>
	<li>On 31-Aug-2011, six days before the CNC deal, KC Kan's 409.2m 
	shares <a href="../ccass/chldchg.asp?i=6151&amp;d=2011-08-31">moved</a> 
	those PZSHK to Simsen.</li>
	<li>On 2-Sep-2011, four days before the CNC deal, 46m of Eric Chia's shares
	<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-09-02">moved</a> from 
	PZSHK to Simsen.</li>
	<li>The stock was suspended on 6-Sep-2011, so the last pre-deal trades 
	settled on 7-Sep-2011 (T+2). So from the above, our best estimate is that then, Simsen had custody of 618.88m shares 
	(51.99%), being all of KC Kan's holding, all of KM Cheng's holding and 46m 
	of&nbsp; Eric Chia's holding, while PZSHK held 47.02m shares, of which 
	47.00m were Eric Chia's, and Cheong Lee Securities held 78.12m shares for 
	Eric Chia. Together, these shares were all the pre-IPO shares.</li>
</ul>
<p>In the midst of this share shuffling, on 12-Aug-2011, CNC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0812/GLN20110812169.pdf" target="_blank">
granted</a> 45m options, including 9.9m each to KC Kan, KM Cheng and Eric Chia, 
1m to CK Hui (apparently he was not as valuable as the other EDs who happened to 
control the company) and 0.18m to Eric Chia's wife. The options were exercisable 
at $0.35 per share, after a 65% increase in the 5 weeks since the placing. 
Normally companies don't grant options after a rapid increase in price - they 
wait for better opportunities.</p>
<p>We are supposed to believe that this was not insider dealing - that despite 
the prior movements of shares into the custody of PZSHK and Cheong Lee 
Securities, firms which are linked to YL Lee and his wife, the directors knew 
nothing about the pending deal with Xinhua and YL Lee, and the company wasn't 
even being shopped around for a backdoor listing (shopping around would be 
price-sensitive in itself). On 18-Oct-2011, with the shares at $0.97 post-deal and the 
options intrinsically worth $27.9m, CNC
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/1018/GLN20111018019.pdf" target="_blank">
announced</a> that the options had been cancelled by mutual consent with all the 
grantees (including non-directors). CNC wrote &quot;shortly after the above granting 
of the Share Options, an unique opportunity was available to the Company which 
ultimately concluded as the proposed acquisition&quot;. If only they had seen it 
coming.</p>
<p>Dealings by another party are also interesting. CYTM owns a small brokerage 
called <a href="../dbpub/orgdata.asp?p=35252">GT Capital Ltd</a> (<strong>GT 
Capital</strong>), and <a href="../ccass/chistory.asp?i=6151&amp;part=333">
this page shows</a> that it began holding CNC shares on 9-Jun-2011, increasing 
to 41.4m shares (4.17%) by 28-Jun-2011. There were no decreases, only increases. 
On 11-Jul-2011 CYTM
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=166260&amp;lang=EN&amp;dia=Y" target="_blank">
bought</a> 20m shares of CNC @$0.213, increasing its stake from 41.4m shares 
(4.17%) to 61.4m (6.19%), passing through the 5% disclosure threshold. So we can 
be fairly confident that the earlier purchases through GT Capital were for CYTM. 
If so, then they began buying <u>after</u> the shuffling of 
management shares into PZSHK and Cheong Lee Securities. According to the CYTM 
annual report, Executive Director YF Lee is &quot;a member of the investment 
committee for a subsidiary of the company&quot; and Chairman of PZSHK.</p>
<p>The 20m shares were bought
<a href="../ccass/chldchg.asp?d=2011-07-13&amp;i=6151">through</a> Chung Nam 
Securities Ltd (<strong>Chung Nam</strong>). Two days later CYTM bought another 
22m shares @$0.215, again
<a href="../ccass/chldchg.asp?d=2011-07-15&amp;i=6151">through</a> Chung 
Nam, which had other client(s) in the stock. Chung Nam first
<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-06-30">received</a> 17m 
shares in custody on 30-Jun-2011, a day on which PZSHK delivered 20m shares to 
the system. Chung Nam received another 30m
<a href="../ccass/chldchg.asp?i=6151&amp;d=2011-07-14">on 14-Jul-2011</a> 
and 20m <a href="../ccass/chldchg.asp?i=6151&amp;d=2011-07-18">on 
18-Jul-2011</a>, by which time it was holding 109m shares, of which 42m were for 
CYTM and 67m for other client(s), we know not whom.</p>
<p>CYTM
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=167390&amp;lang=EN&amp;dia=Y" target="_blank">
disposed of</a> 35m shares on 30-Aug-2011 at $0.425, cutting below 5% before the 
CNC deal. Those shares didn't go through 
the market that day or (if that was settlement day) 2 days earlier - turnover 
was lower than that on both days. There was no decrease in the custody of GT 
Capital or Chung Nam. We don't know who bought the shares or through which of 
the two brokers, but obviously they did well if they held them until after the 
deal. Between 18-Jul-2011 and the deal, Chung Nam's custody holding increased 
slightly to 111.83m shares and GT Capital's position did not change.</p>
<p><strong>We call on the SFC to investigate dealings in the shares of CNC prior 
to the announcement of the XTVAPO acquisition.</strong></p>
<p>Now there's much more to come on the other companies mentioned at the top of 
this article, so stay tuned for <a href="muck2012p2.asp">Part 2</a>.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=47074">AMPLE APPRAISAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4760">APT SATELLITE HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1425185">ASSOCIATION OF INDUSTRIES AND COMMERCE OF YAUMATEI TSIMSHATSUI MONGKOK LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50775">CHEONG LEE SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18359">CHINA MERCHANTS SECURITIES (HK) CO., LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23261">China National Culture Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1493887">CHINA NEW MEDIA (HK) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3017">China Smarter Energy Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=64523">CL Group (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14223">EMPEROR SECURITIES LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49246">FORTUNE FINANCIAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=35252">GT CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1365">GT GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16958">INNO-TECH HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4905">NATIONAL UNITED RESOURCES HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=151723">Outdoor Advertising Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=970864">PICO ZEMAN GLOBAL ASSET MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=62603">PICO ZEMAN SECURITIES (HK) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12651">SEEKERS MARKETS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51093">SOUTHWEST SECURITIES (HK) BROKERAGE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1550918">STABLEBUILD GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=60339">Tsun Yip Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=40969">Volk Favor Food Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1479437">WANCHAI AND CENTRAL & WESTERN DISTRICT INDUSTRIES AND COMMERCE ASSOCIATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850251">Win Today Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=51022">Au, Clarea Suet Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40967">Lee, Alan Yuk Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=62602">Lee, Herman Yuk Fat</a></li>
				
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