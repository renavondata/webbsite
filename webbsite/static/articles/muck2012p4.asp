
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

<script type="text/javascript">document.title="Raking muck, Part 4";</script>

	<div class="summary">We take a deeper dive into the transactions of Inno-Tech (8202), and call on the SFC to investigate. We also call on the regulators either to scrap the requirement for "independent" financial advisers in listed company deals, or make it work by randomly assigning them through a jury pool system. The current system of opinion-shopping to IFAs of Last Resort is a waste of investors' money and provides false comfort.</div>

<h2 class="center">Raking muck, Part 4<br>
<span class="headlinedate">7 March 2012</span></h2>
<p>Continuing on from <a href="../articles/muck2012p3.asp">Part 3</a>, you will 
recall that there are now 9 listed companies in this series:</p>
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
</ul>
<p>In Part 3, we explained how Hycomm was involved in the creation of Inno-Tech, 
and how Inno-Tech's founder was also involved in the creation of the now-delisted Codebank, in which Hycomm invested. This time we will take a deeper dive into 
the transactions of Inno-Tech.</p>
<h3>Inno-Tech and Great China Media</h3>
<p>On 10-Dec-2008, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/1212/GLN20081212026.pdf" target="_blank">
agreed</a> to buy 238 shares (about 23%) of
<a href="../dbpub/orgdata.asp?p=152320">Great China Media Holdings Ltd</a> (<strong>GCM</strong>) 
from <a href="../dbpub/orgdata.asp?p=1850787">Capital Base Holdings Ltd</a> (<strong>Capital 
Base</strong>) for HK$43.384m in 0% 2-year notes convertible into 680m shares 
(29.14%) of Inno-Tech @$0.0638, a 19.2% 
discount to market. Capital Base was 50% owned by Ms 
<a href="../dbpub/natperson.asp?p=3204">Wong Yuen Yee</a> (<strong>YY 
Wong</strong>) and 50% by her brother Mr
<a href="../dbpub/natperson.asp?p=19692">Wong Kwok Sing</a>, the Chairman and CEO respectively of Inno-Tech. They co-founded Inno-Tech. After the deal, Capital Base owned 272 shares 
(26.31%) of GCM and the 
other 50.68% was owned by unnamed third parties.</p>
<p>The connected transaction
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0122/GLN20090122006.pdf" target="_blank">
circular</a> was dated 23-Jan-2009. The accountants' report by 
<a href="../dbpub/adviserships.asp?p=959122">Pentagon CPA Ltd</a> 
revealed that on 16-Jun-2008 GCM acquired
<a href="../dbpub/orgdata.asp?p=251899">TDI Transportation Displays 
International Ltd</a> (<strong>TDI</strong>) for HK$2.5m plus professional fee. 
The only tangible assets of TDI were bank balances and cash of HK$934 (yes, less 
than an orange bank note) and the rest was said to be the value of its customer 
relationships. TDI was incorporated in 1981 and its core business was the 
marketing of advertising space in HK, including work for the old Kowloon-Canton 
Railway and Kai Tak airport before it closed in 1998. The main focus of GCM appears
<a href="http://www.cn-odm.com/" target="_blank">from its site</a> to be outdoor 
projections onto a brand of spherical screens called &quot;Stratosphere&quot; licensed 
from <a href="http://www.lm-productions.com/" target="_blank">LM Productions Ltd</a> 
of the UK.</p>
<p>At 30-Sep-2008, GCM group had 8 employees. It raised a total of 
HK$6.75m in equity between incorporation on 16-Feb-2007 and 28-May-2007. GCM had 
net assets at 30-Sep-2008 of HK$7.37m, so 23% of that was about $1.70m. From 
incorporation to 30-Sep-2008, GCM made a net profit of $0.613m, so 23% of that 
was $0.141m. So the acquisition by Inno-Tech was at a price/book ratio of about 25.5 and if we 
simply attribute the 
earnings to a year of that 19-month period then the P/E was about 308.
<a href="../dbpub/adviserships.asp?p=32441">Veda Capital Ltd</a> (<strong>Veda 
Capital</strong>), which has <a href="../dbpub/articles.asp?p=32441">featured</a> 
in another series of Webb-site articles in 2009, has been 
independent financial adviser to Inno-Tech at least 7 times since 2007, and it thought 
the terms were fair and reasonable.</p>
<p class="regbox">Regulatory note: the &quot;Independent Financial Adviser&quot; system in 
the Listing Rules and Takeovers Code is a waste of shareholders' money and gives 
investors false comfort. However bad a company's proposal is, the company will 
almost always be able to find an &quot;IFA of last resort&quot; to say that the proposal 
is fair and reasonable, and investors may then be misled into voting in favour. 
When investors do vote a proposal down, it is usually <u>
against</u> the advice of the IFA. The system is a gravy train for shoddy 
IFAs. It would be better to scrap the requirement for an IFA, and require the 
company to justify its proposal on its own, taking whatever advice it wants to 
prepare the circular. If the company can't convince shareholders of the merits, then 
it risks being voted down.<br><br>An alternative would be a jury-pool system 
where IFAs are randomly assigned to deals by the regulator. Pricing for the work 
could be determined by an annual tendering exercise. A firm would only qualify 
for the next year's jury pool if investors had actually agreed with the firm's 
recommendations by passing or rejecting proposals at least (say) 80% of the 
time.&nbsp; We <a href="../articles/codesubmn.asp#Independent">proposed</a> a 
similar such system in 2001.</p>
<p>The deal completed on 28-Feb-2009. Inno-Tech 
booked an impairment charge of $4.2m in its year to 30-Jun-2009. Between 17-Mar-2009 and 22-Oct-2009, the convertible notes were partially 
converted into 431,128,526 Inno-Tech shares. From disclosures we estimate that 
Capital Base received proceeds of about $52.2m from sales of the notes and 
shares, including the
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=139455&amp;lang=EN&amp;dia=Y">
sale</a> of the remaining $15.878m of notes on 14-Jul-2010 at par. These were 
redeemed on maturity on 28-Feb-2011.</p>
<img class="center" alt="" src="../images/InnoTech1.gif">
<p>A
<a href="http://di.hkex.com.hk/di/NSForm3B.aspx?fn=31268&amp;lang=EN&amp;dia=Y" target="_blank">
disclosure of interest</a> shows that on 13-Jul-2009, Capital Base acquired 40 
shares (3.87%) of GCM at HK$159.500 per share, apparently implying a valuation of just 
$164,923 on the outstanding 1034 shares of GCM. That increased Capital Base's 
stake to 30.17% of GCM. Inno-Tech made no announcement explaining the deal or 
its pricing. Perhaps they meant $159,500 rather than $159.500 per share.</p>
<p>In the 3 months to 31-Dec-2009, GCM issued 106 new shares (9.3%) 
for an unknown price, diluting Inno-Tech to 19.19% and Capital Base to 25.16%, 
again without announcement.</p>
<p>On 3-May-2010, just 14 months after completing the purchase of GCM, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2010/0503/gln20100503219.pdf" target="_blank">
sold</a> the stake to <a href="../dbpub/orgdata.asp?p=1850818">Duncan Capital Ltd</a> (<strong>Duncan 
Capital</strong>, BVI) for HK$43m, of which 5% was in cash, 5% in 3-month 
promissory notes (or IOUs), and 90% ($38.7m) in 1-year IOUs, both at zero 
interest. The buyer's owner was not disclosed, but its director and guarantor 
was one Andy Shek Ka Sun (<strong>Andy Shek</strong>), about whom we know nothing. Inno-Tech said it expected 
to book a loss on the sale of about $0.158m, but the 
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2010/0930/GLN20100930003.pdf" target="_blank">accounts</a> for the year to 
30-Jun-2010 show an actual loss on disposal of $6.438m, without explanation.</p>
<p>When the 1-year IOU came due on 3-May-2011, it wasn't paid, and Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0504/GLN20110504101.pdf" target="_blank">
initially agreed</a> to replace it with another 1-year note, this time paying 3% 
interest. However, the Exchange
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0512/GLN20110512193.pdf" target="_blank">
pointed out</a> that this would be financial assistance requiring shareholders' 
approval, so 3 days later it was made conditional upon such approval. The 
circular was then
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0602/GLN20110602089.pdf" target="_blank">
delayed</a> on 2-Jun-2011,
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0616/GLN20110616013.pdf" target="_blank">
delayed</a> on 16-Jun-2011,
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0624/GLN20110624053.pdf" target="_blank">
delayed</a> on 24-Jun-2011,
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0715/GLN20110715009.pdf" target="_blank">
delayed</a> on 15-Jul-2011,
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0815/GLN20110815059.pdf" target="_blank">
delayed</a> on 15-Aug-2011,
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0824/GLN20110824007.pdf" target="_blank">
delayed</a> on 24-Aug-2011 and finally, as if by magic, on 28-Sep-2011 the 
$38.7m
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0928/GLN20110928033.pdf" target="_blank">
was paid</a> (without interest), avoiding the need for the new IOU and the 
circular, and there was great joy throughout the land.</p>
<p>A few observations are in order:</p>
<ul>
	<li>The sale terms, with 90% deferred for a year, are extremely generous. It 
	appears that the buyer was unable or unwilling to pay more than 5% up front 
	and 5% in 3 months, but Inno-Tech was keen to get the asset sold. Inno-Tech's 
	30-Jun-2010 year-end was approaching.</li>
	<li>When the 1-year IOU matured, Inno-Tech was not willing to call on 
	Mr Shek's guarantee, or did not think it was worth doing so, and offered 
	low-interest terms to extend the unsecured loan for a year.</li>
	<li>Preparing a circular to document the extension of a promissory note 
	should not have taken very long, but it was delayed by 4 months before being 
	cancelled. It looks to us like they were stalling for time.</li>
</ul>
<p>We wonder who Andy Shek really is, why he (or Duncan Capital's beneficial 
owner) bought the stake in GCM and how the buyer finally came up with the money.</p>
<h3>Inno-Tech and United Premier Medical Group</h3>
<p>Great China Media wasn't the first time that YY Wong, Chairman and co-founder 
of Inno-Tech, had sold a business to Inno-Tech. On 5-Mar-2007, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/0307/GLN20070307004.pdf" target="_blank">
agreed</a> to buy 56% of <a href="../dbpub/orgdata.asp?p=1853834">Autoscale Resources Ltd</a> (<strong>Autoscale</strong>) 
from YY Wong and <a href="../dbpub/positions.asp?p=19693">Robert Wong Yao Wing</a>, 
then Deputy Chairman of Inno-Tech, for HK$58.97m, satisfied with 351m shares 
(39.84%) of Inno-Tech @$0.168. They sold 28% of Autoscale each.</p>
<p>Autoscale owned 37.71% of the ordinary shares of
<a href="../dbpub/orgdata.asp?p=1853835">United Premier Medical Group Ltd</a> (<strong>UPMG</strong>), 
established in 2002 and operating in mainland China and Macau, which had a net 
loss of $29.5m in the year to 30-Sep-2006 and lost HK$31.4m in the prior year (under 
HK accounting standards). It had 
contracts to fit out and manage various &quot;VIP Centres&quot; providing 
maternity-related services (obstetrics, gynaecology and paediatrics) in 
hospitals in mainland China and Macau. It also had 4,565 convertible preference 
shares outstanding, redeemable on 26-Jul-2008 at US$2,500 each plus 2% premium 
and 8% p.a. fixed dividend.</p>
<p>UPMG had a net asset value of HK$42.20m at 30-Sep-2006, but keep in 
mind that this would include the preference shares, with par value of US$11.4m 
(HK$89.0m), so ordinary shareholders' funds were negative. Autoscale had net 
liabilities of $0.159m. The
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/0326/GLN20070326056.pdf" target="_blank">
circular</a> dated 26-Mar-2007 contained a fairness opinion from
Veda Capital (there they are again) and the deal
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/0419/GLN20070419027.pdf" target="_blank">
completed</a> on 19-Apr-2007. Inno-Tech booked HK$60.64m of goodwill on the 
acquisition of Autoscale.</p>
<p>On 21-Jan-2008, Autoscale (along with the other shareholders of UPMG)
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0125/GLN20080125042.pdf" target="_blank">
agreed</a> to exchange its by-then 28.13% stake in UPMG (after conversion of 
preference shares) for 12m shares (23.93%) of a US shell called The Cavalier 
Group, incorporated in Wyoming and quoted on the OTC Bulletin Board, which had 
no prior business. A
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0214/GLN20080214039.pdf" target="_blank">
circular</a> was dated 15-Feb-2008. On 13-May-2008, the shell was renamed
<a href="../dbpub/orgdata.asp?p=1860702">China Health Care Corporation</a> (<strong>CHCC</strong>), 
and the deal completed in Jul-2008. HK regulators do not require the filing of 
such agreements, but the US SEC does, so with that transparency, you can read
<a href="http://www.sec.gov/Archives/edgar/data/1333878/000106299308000327/exhibit2-1.htm" target="_blank">
the agreement here</a>, including the list of 118 registered shareholders of 
UPMG.</p>
<p>Finally, on 16-Feb-2009, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0216/GLN20090216045.pdf" target="_blank">
agreed</a> to sell its 56% stake in Autoscale to Certain Success Holdings Ltd 
(BVI), the owner of which was not disclosed, for just HK$3.145m in cash, with an 
expected loss on the disposal of about $57.2m.</p>
<p>This part of the story isn't quite over though: on 15-May-2009, there was a
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=66054&amp;currpage=T" target="_blank">
ruling</a> in the HK Court of First Instance between China Medical Ltd as plaintiff 
(we don't know its owner or place of domicile) and Autoscale as defendant. A 
judgment in default of defence had been entered on 20-Mar-2009, ordering 
Autoscale to honour a guarantee of an alleged liability of UPMG (or its BVI 
subsidiary) under a subscription agreement dated 1-Aug-2005. Autoscale wanted 
the judgment set aside. UPMG had allegedly failed to redeem the plaintiff's 
convertible preference shares or pay dividends, or use its best efforts to 
procure an IPO. The defence claimed that the reverse takeover by CHCC counted as 
an IPO. The judge disagreed, saying that the defendant had not made an arguable 
defence. The judgment refers to 914 preference shares - that would be US$2.285m 
(HK$17.82m) of par value. We can't find &quot;China Medical Ltd&quot; or the corresponding 
914 ordinary shares (after conversion) in the exchange agreement with CHCC.</p>
<p>Interestingly, this contingent liability of Autoscale in the form of the 
guarantee was not disclosed in Inno-Tech's accounts at 30-Jun-2008, when 
Autoscale was still a subsidiary. Why not?</p>
<h3 id="Kaiping">Kaiping Hotel deals</h3>
<p>One of the UPMG shareholders listed in the agreement with CHCC was 
<a href="../dbpub/orgdata.asp?p=1861771">Smart Boom 
Investment Ltd</a> (<strong>Smart Boom</strong>, BVI), which would&nbsp; receive 
794,000 shares (about 1.6%) of CHCC for 397 shares of UPMG. We don't know how 
owns it, but on 4-Feb-2008, two weeks after the agreement to roll UPMG into 
CHCC, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0205/GLN20080205063.pdf" target="_blank">
agreed</a> to buy <a href="../dbpub/orgdata.asp?p=1321241">Homesmart Properties 
Ltd</a> (<strong>Homesmart</strong>) which ultimately owned a hotel in Kaiping 
City, Guangdong, for RMB20m (then HK$20.86m) from, you guessed it, Smart Boom, 
declared to be an independent third party. The price was based on an independent 
valuation of the property at 29-Jan-2008 of RMB20m by an unnamed valuer. The 
property was said to be &quot;in good condition&quot;.</p>
<p>This deal followed an earlier
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/1106/GLN20071106053.pdf" target="_blank">
pair of hotel acquisitions</a> on 5-Nov-2007 from the same beneficial 
owner as Smart Boom's, again unnamed. One of those deals was to buy
<a href="../dbpub/orgdata.asp?p=1314085">Sunny Team Corp Ltd</a> (<strong>Sunny 
Team</strong>) for RMB13.5m (then HK$14.07m). The vendor had contracted for 
Sunny Team to acquire a hotel at 106, Guangming Road, Kaiping, Guangdong 
Province. That would be the
<a href="http://www.chinahotels.net/en-hotel-32048006-xingdu_hotel_kaiping.html" target="_blank">
Xingdu Hotel</a>. Inno-Tech said the hotel was in &quot;good condition&quot; and it &quot;did 
not intend to make further capital investment&quot; on the property. The other was
<a href="../dbpub/orgdata.asp?p=1314002">China Earn Ltd</a> (<strong>China Earn</strong>), 
for RMB14m. The vendor had contracted for China Earn to acquire a hotel at 216 
Tianjin Street, Jilin City. That would be the
<a href="http://www.chinahotels.net/en-hotel-00902012-jinjiang_inn_jilin_train_station_branch.html" target="_blank">
Jinjiang Inn Jilin Train Station Branch.</a></p>
<p>Strangely, the
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/0929/GLN20080929102.pdf" target="_blank">
annual report</a> of Inno-Tech at 30-Jun-2008 records Homesmart and Sunny Team 
as subsidiaries, but note 38, on the acquisition of subsidiaries, only includes 
one acquired subsidiary, Autoscale. So how were Homesmart and Sunny Team 
acquired? Meanwhile, China Earn is nowhere to be seen in these accounts. It was 
dissolved by deregistration on 18-Feb-2011. Inno-Tech has never explained what 
happened. A
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0910/GLN20090910019.pdf" target="_blank">
circular</a> dated 11-Sep-2009 on another transaction, mentions the deal at the 
bottom of page 262 (IX-8) of the PDF, stating that the company
<u>acquired</u> China Earn for RMB14m.</p>
<p>On 26-Jun-2009, seventeen months after buying Homesmart, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0626/GLN20090626058.pdf" target="_blank">
sold</a> it for just RMB2m, 90% less than it paid, to Main Move Ltd (<strong>Main 
Move</strong>, BVI), said to be an independent third party. The owner of that 
was not disclosed. Even at this low price, 95% of it was deferred as a 
promissory note, so only RMB100,000 was payable on signing. The hotel was now 
said by <a href="../dbpub/articles.asp?p=16315">BMI Appraisals Ltd</a> (<strong>BMI 
Appraisals</strong>) to be worth RMB13m, but on 31-Jul-2008, Homesmart had 
borrowed RMB11m against it. What Homesmart had done with this money we do not 
know. Inno-Tech said it would book a loss of HK$20.41m on the sale. Homesmart 
had losses of only $800k from incorporation to 31-Mar-2009.</p>
<p>On the same day, Inno-Tech sold Sunny Team to Timewon Ltd (<strong>Timewon</strong>, 
BVI), the owner of which was not disclosed, for the same price as Homesmart, 
RMB2m, with 95% deferred as a promissory note. BMI Appraisals, which has 
featured many times on Webb-site, valued the Xingdu Hotel, Kaiping at RMB10.5m, 
and Sunny Team had a bank loan of RMB8.5m. Sunny Team had losses of only HK$993k 
from incorporation to 31-Mar-2009. Inno-Tech said it would book a loss of 
HK$0.52m on the sale.</p>
<p>Both these agreements came just 4 days (and 2 working days) before the 
year-end of Inno-Tech, and completion took place by on the year-end of 
30-Jun-2009. Were they in a hurry? <strong>We call on the SFC to investigate the following issues:</strong></p>
<ul>
	<li>Was China Earn ever purchased, as the circular claimed? If not, why 
	didn't Inno-Tech announce that the deal had failed?</li>
	<li>Who was the person that sold the 3 (or 2) companies to Inno-Tech?</li>
	<li>Why wasn't the acquisition of Sunny Team and Homesmart shown in the note 
	on acquisition of subsidiaries in the 15 months to 30-Jun-2008?&nbsp; Did 
	Inno-Tech jump the gun and acquire the HK shells before they had completed 
	the hotel purchases?</li>
	<li>What were the due dates of the promissory notes on the sales?</li>
	<li>Who owned Main Move and Timewon, the buyers of Homesmart&nbsp; and Sunny 
	Team, respectively?</li>
	<li>In both sales, the net asset values of the companies, Homesmart 
	and Sunny Team, was not disclosed. What were they?</li>
	<li>What had Homesmart and Sunny Team done with the money from the 
	bank loans? It's possible that they sunk it into renovating the buildings, 
	but that seems like a lot to spend, given that both hotels were said to be 
	in &quot;good condition&quot; when acquired, and in the case of Sunny Team, no capital 
	investment in the property was needed.</li>
	<li>So if not in fixed assets, then where did the cash go? The 
	original acquisition prices of Sunny Team and Homesmart were priced based on 
	assets <u>without</u> borrowings. So the net assets, 
	even after hotel devaluation, should have been about RMB13m and RMB10.5m 
	respectively, less their modest operating losses since incorporation.</li>
</ul>
<p>Note 39 of the Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0929/GLN20090929065.pdf" target="_blank">
accounts</a> for the year ended 30-Jun-2009 shows the combined disposals of 3 
subsidiaries: Autoscale, Homesmart and Sunny Team. Look at the &quot;satisfied by&quot; 
part of the table:</p>
<img class="center" alt="" src="../images/8202_0906arP136.png">
<p>We know that Autoscale was sold for HK$3.145m, so that is the cash 
line. So the table shows that even the RMB200k (HK$225k) of cash which was 
payable on 26-Jun-2009 had not been paid, and the promissory notes were the 
other RMB3.900m (HK$4.256m).</p>
<h3>Trade debtors</h3>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0929/GLN20090929065.pdf" target="_blank">
accounts</a> for the year to 30-Jun-2009 were spectacular and remarkable for 
their lack of explanation of the following items, which <strong>we call on the 
SFC to investigate</strong>:</p>
<ul>
	<li>Inno-Tech had trade 
debtors of $65.4m at the previous year-end, but managed to book an impairment 
loss of $122.2m against trade debtors, so at least $56.8m of that had been 
racked up in the year, on turnover of $78.1m. Of this turnover, $74.4m was from 
its original business of &quot;design of residential intranet, provision of 
home-automation services and trading of related products&quot;, or what it calls the 
&quot;intelligent system&quot; segment. The segment booked a loss of $179.17m, 
	compared with $0.29m a year earlier. There was 
no explanation for the impairment in the &quot;management discussion and analysis&quot; 
section.</li>
	<li>Meanwhile, the &quot;hotel management&quot; segment booked a loss of $113.3m on 
turnover of just $3.7m, compared with a loss of $67.5m on turnover of $1.3m a 
year earlier, the first year of the segment. So that's a total segment loss of 
	$180.8m on turnover of $5.0m in 2 years. The mind boggles (and it must, 
because there was no explanation) on how they spent so much money for so little 
revenue, and that is before the losses on the sales of Homesmart and Sunny Team. 
	Where did all the money go?</li>
	<li>The loss on disposal of subsidiaries in 2009, which also included 
	the loss on the sale of Autoscale, amounted to $84.4m, which is significantly higher than the aggregate 
$78.13m Inno-Tech had estimated at the times of the sales. Overall, Inno-Tech booked a 
loss of $391m for the year.</li>
</ul>
<p>Inno-Tech's auditor from 2005 to 2009 was
<a href="../dbpub/adviserships.asp?p=24774">PCP CPA Ltd</a> (<strong>PCP</strong>), 
the incorporated version of Paul Chan &amp; Partners. It gave a &quot;true and fair&quot; 
opinion on the 2009 accounts. In 2009, the firm merged with
<a href="../dbpub/adviserships.asp?p=3259">CCIF CPA Ltd</a> to form
<a href="../dbpub/adviserships.asp?p=56122">Crowe Horwath (HK) CPA Ltd</a> (<strong>CHCPA</strong>), 
so Inno-Tech changed auditor to the new firm at an SGM on 14-Jul-2010. 
Incidentally, the 
Managing Director of PCP CPA Ltd and a director of CHCPA is accounting 
legislator <a href="../dbpub/positions.asp?p=7491">Paul Chan Mo Po</a>.</p>
<h3>Inno-Tech and CRIGHK</h3>
<p>The hotel adventure started a little earlier. On 26-Apr-2007 and 1-May-2007, 
Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/0504/GLN20070504022.pdf" target="_blank">
agreed</a> with &quot;the PRC Partner&quot; to form a 70:30 joint venture &quot;which will be 
principally engaged in the management and operation of over 200 hotels in the 
PRC&quot;. The &quot;PRC Partner&quot; was defined as &quot;a company established in Hong Kong&quot; and 
was not named. The agreement called for Inno-Tech to contribute all the RMB5m of 
capital required by the JV while the PRC Partner, for its 30%, would use its 
&quot;business connection&quot; to procure the granting of the relevant approvals, 
consents and licenses&quot;.</p>
<p>Just 4 weeks later, Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/0530/GLN20070530006.pdf" target="_blank">
announced</a> that it had:</p>
<blockquote>&quot;received notifications from the PRC Partner alleging 
that it could not obtain the required approvals from the PRC regulatory 
authorities. In spite of repeated requests from [Inno-Tech], no reasons or 
evidence has been produced to [Inno-Tech] to substantiate the allegations.&quot;</blockquote>
<p>So who was the PRC Partner? Well fortunately, within 2 years after that, Inno-Tech 
entered into a Major Transaction under the Listing Rules, and that triggered a 
circular which contains a description of all &quot;material contracts&quot; within the 
previous 2 years. So in the circular dated 23-Jan-2009 regarding the GCM deal, 
you will find, on page 134 of the PDF, contract number 3, which names the PRC 
Partner as <a href="../dbpub/articles.asp?p=49490">China Railway Investments 
Group (Hong Kong) Ltd</a> (<strong>CRIGHK</strong>). Disclosure in HK really 
shouldn't be this hard to get.</p>
<p>Readers with good memories might recall that CRIGHK featured extensively in 
our article <a href="../articles/traingames.asp">China Railway Games</a> 
(11-Jun-2009) where we documented its failed joint ventures with
<a href="../dbpub/articles.asp?p=10787">China Railway Logistics Ltd</a> (<strong>CRL</strong>, 
8089) and <a href="../dbpub/articles.asp?p=14229">Forefront Group Ltd</a> 
(0885), part of the Chung Nam Network, and piles of missing cash. A &quot;Special 
Committee&quot; formed by CRL to investigate where its money had gone
suspected that CRIGHK and its parent were not subsidiaries of the 
Ministry of Railways as had been claimed.</p>
<p>All of this railway hotel excitement generated a tremendous bubble in Inno-Tech's 
stock, which reached a daily high for 2007 of $1.27 on 14-May-2007, up 747% from 
$0.15 at the end of 2006, valuing Inno-Tech at $1,411m. The stock has since been 
consolidated 3 times by a total of 1000:1, and there was a huge 10:1 rights 
issue in Dec-2010 which had an adjustment factor of 0.3831, so you need to 
multiply the historic price by 383.1 to get an adjusted high of $486.5. It closed today 
(7-Mar-2011) at $0.33, down 99.93% since then.</p>
<h3>Inno-Tech and Swiss-Belhotel</h3>
<p>Inno-Tech had not yet put any money into the JV with CRIGHK. This minor 
setback did not deter Inno-Tech, which said in the same
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/0530/GLN20070530006.pdf" target="_blank">
announcement</a> that it had on 29-May-2007 signed a co-operation agreement with 
a BVI company called <a href="../dbpub/orgdata.asp?p=1861806">China Railway 
Development &amp; Investment Ltd</a> under which the partner would be responsible 
for &quot;procuring a first right in respect of about 3,700 hostels and hotels owned 
and/or managed by Shenyang Railway Bureau Tourism Group Co.&quot; We don't know what 
ever became of this. Later on 10-Oct-2007 Inno-Tech
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2007/1011/GLN20071011037.pdf" target="_blank">
agreed</a> a HK$10m 70:30 JV with <a href="../dbpub/orgdata.asp?p=1861808">Swiss-Belhotel International Ltd</a> which aimed to manage and operate economy 
hotels; 3 within a year and 15 within 5 years. Apparently nothing came of that 
either.</p>
<h3>Inno-Tech's deal in progress: Redgate Ventures</h3>
<p>On 8-Jul-2011, Inno-Tech conditionally
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0722/GLN20110722001.pdf" target="_blank">
agreed</a> to buy <a href="../dbpub/orgdata.asp?p=1850830">Redgate Ventures Ltd</a> 
(<strong>Redgate Ventures</strong>) for about HK$1,941m, of which $290m would be 
in cash, $160m in 0% promissory notes and $1,491m in 3-year 0% notes convertible 
into up to 5,404m shares (98.27%) of Inno-Tech @$0.38. Cash would be raised by 
placing $200m of 2-year 0% convertible bonds, conditional on the acquisition. A 
refundable deposit of HK$80m has already been paid. The agreement was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/1230/GLN20111230056.pdf" target="_blank">
amended</a> on 30-Dec-2011 and
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2012/0221/GLN20120221034.pdf" target="_blank">
amended again</a> on 21-Feb-2012 to knock $190m off the purchase price. The deal 
is still in progress and the circular has yet to see the light of day.</p>
<p>Redgate Ventures is &quot;a diversified media company in China primarily providing 
advertising and advertising agency services through an integrated cross-media 
platform&quot;. The group &quot;commenced operations in 2003&quot;. It appears that Redgate 
Ventures is a reworked version of
<a href="http://www.redgatemedia.com/" target="_blank">Redgate Media Group</a>, 
a loss-making Cayman company which
<a href="http://dealbook.nytimes.com/2010/04/06/redgate-media-shelves-i-p-o/" target="_blank">
aborted</a> its US IPO in Apr-2010. You can read the latest version of their
<a href="http://www.sec.gov/Archives/edgar/data/1483403/000095012310029138/h03633a4fv1za.htm" target="_blank">
F-1 filing here</a>. The group structures are somewhat different, but several of 
the mainland subsidiaries are the same. Redgate Ventures had net assets at 
31-Dec-2010 of HK$16.5m. It claims to have swung from a $34.2m loss in 2009 to 
an unaudited $61.1m net profit in 2010 on turnover of $247.6m. The accountant's 
report in the circular should eventually reveal how they achieved this.</p>
<p>The placing agent for the convertible bonds is
<a href="../dbpub/adviserships.asp?p=50775">Cheong Lee Securities</a>. This is 
at least the 6th time that Cheong Lee Securities has acted as placing agent for 
Inno-Tech since 23-Mar-2010. One of the Inno-Tech INEDs since 2-Aug-2010 is Ms
<a href="../dbpub/positions.asp?p=59585">Au Yuk Kit</a> (<strong>YK Au</strong>), 
is &quot;an associate of&quot; (i.e. related to) Clarea Au Suet Ming, the controlling 
shareholder of CL Group which owns Cheong Lee Securities, although they haven't 
said how. YK Au is &quot;a merchant in fashion and marketing industry&quot;. Clarea Au, 
her husband Alan Lee Yuk Lun and their respective brokerage firms featured in
<a href="muck2012p1.asp">Part 1</a> of this series in relation to CNC.</p>
<p>The vendors in the acquisition are Media Chief Ltd (<strong>Media Chief</strong>, 
BVI) for 55% and <a href="../dbpub/orgdata.asp?p=1850828">Carraway Holdings Ltd</a> 
(<strong>Carraway</strong>, BVI) for 45%. Carraway is a special-purpose vehicle 
which became a shareholder 3 days before the deal and is 51% owned by Media 
Chief and 49% by &quot;an individual who is an Independent Third Party&quot;. We wonder 
who that is and why he or she has an effective 22.05% stake in the deal. Whom is 
Carraway carrying? The deal has been
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2010/1207/GLN20101207027.pdf" target="_blank">
under negotiation</a> at least since 7-Dec-2010, when Inno-Tech signed a 
non-binding letter of intent, but at that point there was only one vendor, Media 
Chief. Anyway, watch that space.</p>
<p>In <a href="muck2012p5.asp">part 5</a>, somewhat later in the series than we first indicated, we will 
return to amongst others, Railsmedia and its latest deal.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1853834">Autoscale Resources Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16315">BMI APPRAISALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850787">Capital Base Holdings Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1314002">CHINA EARN LIMITED (d2011-02-18)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1860702">China Health Care Corporation</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49490">CHINA RAILWAY INVESTMENTS GROUP (HONG KONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56122">CROWE (HK) CPA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850818">Duncan Capital Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=152320">Great China Media Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16958">INNO-TECH HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=24774">PCP ESG Advisory Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=959122">PENTAGON CPA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1850830">Redgate Ventures Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1861772">Smart Boom Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1861771">Smart Boom Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1314085">SUNNY TEAM CORPORATION LIMITED (d2015-01-23)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1861808">Swiss-Belhotel International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=251899">TDI TRANSPORTATION DISPLAYS INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1853835">United Premier Medical Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32441">VEDA CAPITAL LIMITED (HK)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1850819">Shek, Andy Ka Sun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=19692">Wong, Kwok Sing (1964)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=19693">Wong, Robert Yao Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3204">Wong, Yuen Yee (1962)</a></li>
				
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