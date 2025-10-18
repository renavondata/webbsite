
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

<script type="text/javascript">document.title="Pass the cyclotrons";</script>

	<div class="summary">Starting in the basement of St Teresa's Hospital, visiting the Science Park and analysing 12 years of transactions with some lucky disclosure on BVI owners, we follow the movements of 2 cyclotrons in and out of listed companies and show you where the money was made and lost.</div>

<h2 class="center">Pass the cyclotrons<br>
<span class="headlinedate">11 October 2016</span></h2>

<p>This story starts in the basement of St. Teresa's Hospital in Kowloon, where 
you will find a cyclotron that produces radioactive isotopes for PET scans that 
detect cancer. The 
main product,
<a href="https://en.wikipedia.org/wiki/Fludeoxyglucose_(18F)" target="_blank">
Fludeoxyglucose or FDG</a>, has to be produced in HK because it has a half-life 
even shorter than some GEM stocks, of about 109.8 minutes, meaning that half of 
it decays into useless byproducts within that time.</p>
<p>The cyclotron is or was owned and operated by
<a href="../dbpub/orgdata.asp?p=846313">First Oriental Cyclotron Ltd</a> (<strong>FOC</strong>), 
which is or was 94% owned by <a href="../dbpub/orgdata.asp?p=829381">First 
Oriental Medical Technology Ltd</a> (<strong>FOMT</strong>) and 6% by
<a href="../dbpub/articles.asp?p=48688">St. Teresa's Hospital</a>. FOMT is or 
was 100% 
owned by <a href="../dbpub/orgdata.asp?p=2642519">First Oriental Medical 
Technology Group Ltd</a> (<strong>FOMTG</strong>, BVI).</p>
<p><a href="../dbpub/articles.asp?p=11691">Town Health International Medical 
Group Ltd</a> (<strong>TH</strong>, 3886) in its
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2004/0630/GLN20040630039.pdf" target="_blank">
annual report</a> for 31-Mar-2004 disclosed that it had acquired 51% of FOMTG 
(see p21) for HK$11.73m (see p34), implying a total valuation of $23m. Note 
23(b) of the accounts puts the consideration payable at $13.3m, perhaps 
including commissions.</p>
<h3>TH ups FOMTG to 78%</h3>
<p>About 5 years later, on 1-Jun-2009, TH
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/0601/LTN200906011216.pdf" target="_blank">
agreed</a>, via its 100% subsidiary <a href="../dbpub/articles.asp?p=146679">
Health Walk Ltd</a> (<strong>HW</strong>, BVI), to buy 27% of FOMTG from
<a href="../dbpub/orgdata.asp?p=2642521">Helix Overseas Holdings Ltd</a> (<strong>Helix</strong>) 
for HK$32m, valuing FOMTG at HK$118.5m. This increased HW's stake from 51% to 
78%. The consideration was paid in 21,361,815 new shares (6.9%) of TH at $1.498 
each. Helix was owned by Belinda Leung Yuet Kwan (<strong>Mrs Ng</strong>), who 
was the wife of <a href="../dbpub/natarts.asp?p=2477161">Ng Yau Sing</a> (<strong>Mr 
Ng</strong>), who was one of the founders and a director of FOMTG. Remember that 
name. A
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/0612/LTN20090612487.pdf">
circular</a> went out on 15-Jun-2009. This deal revealed just how profitable the 
medical isotope business was. In the 2 years to 31-Mar-2008 and the 
10 months to 31-Jan-2009, the pre-tax profit margin of FOMTG was 64.5%, 85.1% 
and 73.3%. Annualising the final period, the profit after tax was $14.88m and 
the P/E was 8.0.</p>
<h3>TH ups FOMTG to 100% and injects it into LK</h3>
<p>On 15-Oct-2009, TH, via HW,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/1015/LTN20091015698.pdf" target="_blank">
agreed</a> to buy the remaining 22% of FOMTG from
<a href="../dbpub/orgdata.asp?p=2642520">Kingdom Hill Ltd</a> (<strong>KH</strong>) 
for HK$19m, valuing FOMTG at $86.4m. KH was owned by
<a href="../dbpub/positions.asp?p=21301">Margaret Yeung Tsui Mai Ling</a> (<strong>Mrs 
Yeung</strong>), wife of <a href="../dbpub/positions.asp?p=21299">Alex Yeung Wah 
Hin</a> (<strong>Dr Yeung</strong>), who was then a director of FOMTG. The 
consideration was paid in 14,548,238 new shares (4.49%) of TH at $1.29 each.</p>
<p>A
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2004/0608/GLN20040608000.htm" target="_blank">
prospectus</a> dated 8-Jun-2004 for a company then called
<a href="../dbpub/orgdata.asp?p=21297">Plasmagene Biosciences Ltd</a> (8250), 
which was 37% owned by the Yeungs and 21% by TH,
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2004/0608/08250/EWP117.pdf" target="_blank">
stated</a>:</p>
<blockquote>"Since 1999, Dr. Yeung had advised...on the establishment and 
management of a cyclotron and PET scanning facility at St. Teresa Hospital and 
Hong Kong Baptist Hospital in Hong Kong". </blockquote>
<p>In the same
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/1015/LTN20091015698.pdf" target="_blank">
announcement</a> as the buy-in of FOMTG, TH and Hong Kong Health Check and 
Laboratory Holdings Co Ltd (<strong>HKHC</strong>, currently known as
<a href="../dbpub/articles.asp?p=4951">Jun Yang Financial Holdings Ltd</a>, 
0397) agreed that TH would inject HW into a subsidiary of HKHC called
<a href="../dbpub/articles.asp?p=2642472">Luck Key Investment Ltd</a> (<strong>LK</strong>) 
so that LK would be owned 49% by TH and 51% by HKHC. HW (including 100% of 
FOMTG) was valued at HK$90m and the combined entity at $183.7m.</p>
<p>This pooled HKHC's loss-making health check business with the highly 
profitable isotope business. The announcement disclosed that for the year to 
31-Mar-2009, FOMTG had a pre-tax profit margin of 67.4% on revenue which grew 
17% to $24.59m, with a net profit of $13.64m, so the P/E on the acquisition of 
the remaining minority was 6.33. On the other hand, the business injected into 
LK by HKHC had lost $38.15m on revenue of $105.6m.</p>
<p>The TH
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/1104/LTN20091104631.pdf" target="_blank">
circular</a> on the acquisition of the minority interest in FOMTG went out on 
5-Nov-2009 and the transaction completed on 10-Dec-2009.</p>
<p>The acquisition of HW was a Major Transaction by HKHC, so there was an 
accountants' report on HW in the HKHC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/1104/LTN20091104607.pdf" target="_blank">
circular</a> dated 5-Nov-2009. The only material asset of HW was FOMTG. The 
circular included an additional 4 months data on HW, up to 31-Jul-2009, showing 
a pre-tax profit margin of 67.3% on revenue almost unchanged from the year-ago 
period, so the cyclotron was still humming away.</p>
<p class="regbox">Note: If profit margins are still that high, then the 
Competition Commission should be taking a look at the medical isotope sector.</p>
<p>Note 30 indicates that FOC paid rent (license fee) of HK$31,626 per month to 
St. Teresa's Hospital and that the group was paying a "consultancy fee" of 
HK$600k per year to <a href="../dbpub/orgdata.asp?p=366261">Unique Prosperity 
Ltd</a> (<strong>UP</strong>), whose directors include Mr Ng and
<a href="../dbpub/positions.asp?p=2642539">Tommy Yeung Wai Hong</a> (<strong>Tommy 
Yeung</strong>), both of whom were directors of FOC. Recent disclosures show 
that at 22-Aug-2016, UP was owned
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=81102" target="_blank">
95% by Mrs Ng</a> and
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=81100" target="_blank">
5% by Mr Ng</a>.</p>
<p>The sale of HW to LK was completed by 31-Dec-2009.</p>
<h3>A second cyclotron</h3>
<p>The accountants' report also revealed two transactions relating to
<a href="../dbpub/orgdata.asp?p=1168598">Hong Kong Cyclotron Laboratories Ltd</a> 
(<strong>HKCL</strong>).</p>
<p>Note 27(a) states that on 12-Mar-2007, HW group acquired "the 
remaining" 49% of HKCL for HK$49 from unnamed sellers. Note 28(b) states that on 
12-Dec-2008, HW sold 100% of HKCL for HK$100 to unnamed buyers. TH's 31-Mar-2009
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/0730/LTN20090730488.pdf" target="_blank">
annual accounts</a> describes the same disposal in note 51(c), showing that HKCL 
held a deposit paid for the acquisition of property, plant and equipment of 
HK$9.793m, funded by shareholder loan of $10.97m. HKCL had not previously been 
mentioned by TH, and it is unclear whether TH also sold the shareholder loan, 
which was described differently in the circular as "trade and other payables".</p>
<p>HKCL was incorporated on 23-Jan-2006. We pause to note that HKCL has cheap 
government land out at our esteemed
<a href="https://www.hkstp.org/hkstp_web/zh-hk/Directory/Hong%20Kong%20Cyclotron%20Laboratories%20Limited" target="_blank">
Hong Kong Science Park</a>. Apparently, buying a
<a href="http://www3.gehealthcare.com/en/products/categories/pet-radiopharmacy/tracer_center_equipment/minitrace_cyclotron" target="_blank">
GE Minitrace Cyclotron</a> and pumping out isotopes qualifies as scientific 
research worthy of a subsidy.</p>
<p>So who sold the HKCL shares in 2007 and bought them in 2008? To find out, we 
had to buy several annual returns of HKCL from the Companies Registry (yes,
<a href="tangwingkei.asp">they still have a paywall</a>).</p>
<p>The first annual return, at 23-Jan-2007, shows that the first owners after 
the formation agent exited on 22-Apr-2006 were HW (51%), UP (27%) and KH (22%). 
As noted above, HW is owned by TH, UP is owned by Mr &amp; Mrs Ng, while KH is owned 
by Mrs Yeung. So it appears that HKCL started out as a 3-way joint venture 
mirroring the ownership of FOMTG (treating each married couple as a single 
shareholder).</p>
<p>The annual return at 23-Jan-2008 shows that on 12-Mar-2007, HW, UP and KH all 
transferred their HKCL shares to FOMT, briefly bringing the two cyclotrons under 
common ownership (100% for HKCL and 94% for FOC).</p>
<p>The annual return at 23-Jan-2009 shows that on 12-Dec-2008, FOMT transferred 
78% of HKCL to <a href="../dbpub/orgdata.asp?p=2477165">Isthmus Management Ltd</a> 
(<strong>IM</strong>, BVI) and 22% to <a href="../dbpub/orgdata.asp?p=152329">On 
Right Development Ltd</a> (<strong>ORD</strong>, BVI). The directors of HKCL 
were then Mr Ng and Dr Yeung. So who owned IM and ORD?</p>
<p>The ownership of BVI companies is usually secret, but thanks to the
<a href="https://offshoreleaks.icij.org/nodes/10131981?e=true" target="_blank">
Panama Papers</a>, we can tell you that ORD is or was owned by Mrs Yeung. IM 
does not feature in the leaks, but we now know, from the
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2016/0630/GLN20160630005.pdf" target="_blank">
prospectus</a> of <a href="../dbpub/orgdata.asp?p=2423995">Astrum Financial 
Holdings Ltd</a> (<strong>Astrum</strong>, 8333), one of the latest emissions on 
the GEM, that IM was incorporated on 14-Jun-2007 and is owned by Mr Ng. </p>
<p>So it appears that the following steps took place, in terms of ultimate 
owners:</p>
<ul>
	<li>On 22-Apr-2006, the initial beneficial shareholders of HKCL were TH 
	(51%), Mr &amp; Mrs Ng (27%) and Mrs Yeung (22%), mirroring the ownership of 
	FOMTG</li>
	<li>On 12-Mar-2007, the 3 holders of HKCL transferred it to FOMTG, which was 
	then owned by TH (51%), Mrs Ng (27%) and Mrs Yeung (22%), so there was no 
	change in attributable interests.</li>
	<li>On 12-Dec-2008, FOMTG group sold HKCL: 78% to Mr Ng for HK$78 and 22% to 
	Mrs Yeung for HK$22.</li>
	<li>On 1-Jun-2009, Mrs Ng sold 27% of FOMTG to TH for HK$32m in TH shares</li>
	<li>On 15-Oct-2009, Mrs Yeung sold 22% of FOMTG to TH for HK$19m in TH 
	shares</li>
</ul>
<p>So having started with 49% of the first cyclotron, the Yeungs and the Ngs now 
had 100% of the second one plus HK$51m of shares in TH and were now in 
competition with the first one that they had sold. We don't know whether they acquired the shareholder loan to 
HKCL or left that with TH.</p>
<p>We will return to HKCL later in this article.</p>
<h3>Shifting LK off balance sheet</h3>
<p>On 5-Oct-2010, HKCH (under its then name of "China Gogreen Assets Investment 
Ltd")
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2010/1005/LTN201010051021.pdf" target="_blank">
announced</a> that LK would issue 6.10% of its enlarged shares to
<a href="../dbpub/positions.asp?p=11698">Bennet Fung Yiu Tong</a> (<strong>Dr 
Fung</strong>) for HK$8.1m, valuing LK at $132.7m. He had been an executive 
director of HKCH until 14-Jun-2010 and of TH until 19-Sep-2008. This diluted 
HKCH from 51% to 47.89% of LK, so it ceased to be a subsidiary and became an 
associated company of HKCH. As such, LK's future corporate transactions would no 
longer be subject to the Listing Rules as it was not a subsidiary of TH either. 
TH's stake was diluted from 49% to 46.01%. A
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2010/1028/LTN20101028670.pdf" target="_blank">
circular</a> went out on 29-Oct-2010 and the transaction completed on 
23-Nov-2010.</p>
<p>For 2 years after that, information on LK was limited to being recorded as an 
associate in the accounts of TH and HKHC. Notably, LK continued to benefit from 
an interest-free loan from HKCH, with $123.548m owed at the end of 2010, 
reducing to $104.138m at the end of 2011 and $67.022m at the end of 2012. TH 
apparently provided no such financing.</p>
<h3>IECCT buys LK</h3>
<p>On 5-Feb-2013, Computech Holdings Ltd (now named
<a href="../dbpub/articles.asp?p=12131">Interactive Entertainment China Cultural 
Technology Investments Ltd</a>, <strong>IECCT</strong>, 8081)
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2013/0205/GLN20130205107.pdf" target="_blank">
announced</a> a memorandum of understanding with HKHC, TH and Dr Fung to buy 
100% of LK. An addendum to the MOU was
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2013/0305/GLN20130305105.pdf" target="_blank">
signed</a> on 5-Mar-2013 with a refundable down-payment of HK$38m to the 
vendors. IECCT didn't disclose the breakdown, but 90% of the deposit went to 
HKHC, as it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0305/LTN201303051074.pdf" target="_blank">
announced</a>. This was probably because the acquisition now included not just 
the shares of LK but also a debt of HK$67m owed to HKHC at this point.</p>
<p>Finally on 16-Apr-2013, IECCT
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2013/0416/GLN20130416025.pdf" target="_blank">
agreed</a> to buy 100% of LK and the loan for a total of HK$85m, comprising $17.979m for 
the shares and $67.021m for the loan. So TH got just $8.272m for its 46.01% and Dr 
Fung got $1.097m for his 6.10%. See also the HKHC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0416/LTN20130416853.pdf" target="_blank">
announcement</a> and the TH
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0416/LTN20130416883.pdf" target="_blank">
announcement</a>.</p>
<p>For IECCT, this was a Very Substantial Acquisition under the Listing Rules, 
so a
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2013/0823/GLN20130823027.pdf" target="_blank">
circular</a> dated 24-Aug-2013 was published, including an accountants' report 
on LK for the years 2010, 2011 and 2012 and the 5 months to 31-May-2013. This 
helps us fill in the blanks.</p>
<p>You might wonder why LK was now worth so little. The circular revealed that on 26-Apr-2012, LK had sold 70% of HW for just 
HK$6.1m to IM. It didn't say who owned IM, but as noted above, we now know 
that it is owned by Mr Ng. LK ceased to have any interest in HW, which means it 
must have disposed of 30% of HW earlier in the period since it acquired 100%. </p>
<p class="regbox">You will recall that when LK acquired HW in late 2009, its only 
asset was 100% of FOMTG, which owned FOMT, which owned 94% of FOC, which ran the 
cyclotron at St. Teresa's, and HW was then valued at $90m and was churning out 
an annual profit of HK$13.64m. Now 70% of HW had been sold to Mr Ng (via IM) 
for $6.1m, valuing HW at $8.7m. The value had dropped 90% in just over 2 years. There are two possibilities that spring to mind - either the profit 
margins of FOC had collapsed in 2010-2011, or HW was sold on the cheap, or some combination 
of these, assuming that HW had not found another way to consume the profits of 
FOC. You will recall that Mr Ng was one of the founders of FOMTG, and his wife 
sold 27% of FOMTG to TH back in 2009 for HK$32m. So in 2012, via HW, he got 70% 
back for HK$6.1m, and this was not subject to the Listing Rules, because at the 
time, LK was not a subsidiary of a listed company, only an associate of two.</p>
<p>What about the other 30% of HW? Note 23(b) of the accountants' report shows that 
when LK sold 70% of HW on 26-Apr-2012, HW had net assets of $11.796m including 
non-controlling (minority) interests of $3.619m (being 30% of HW and 6% of FOC). 
LK also released a $12.178m gain from its equity from the earlier disposal of 
30% of HW. Now look back to the consolidated statements of changes in equity on 
PDF p89, and you will see the $12.178m being booked to other reserves in 2010, 
along with non-controlling interest of $1.822m, for a total of $14.000m, which 
is also shown as "net cash inflow arising on disposals of partial interests in a 
subsidiary" in the cash flow statement on PDF p92.</p>
<p class="regbox">So it is clear that in 2010, LK sold 30% of HW for HK$14m, 
valuing HW at only $46.7m, or about half what LK paid for it a year earlier. The 
words "disposals" and "partial interests" are in the plural, perhaps indicating 
more than 1 buyer. We can be more precise about when this happened, because LK 
was a subsidiary of HKCH until 23-Nov-2010 and there is no sign of the disposal 
in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/0415/LTN20110415393.pdf" target="_blank">
2010 HKCH accounts</a>, so the sale of 30% probably happened in the last 38 days 
of 2010.</p>
<p>IECCT completed the purchase of LK on 30-Sep-2013.</p>
<h3>TH buys back HKCL</h3>
<p>Now remember the second cyclotron out at the Science Park run by HKCL? When 
we left that story above, on 12-Dec-2008 it was 78% owned by Mr Ng (via IM) and 
22% by Mrs Yeung (via ORD). There were changes in ownership after that.</p>
<p>On 27-Aug-2013, TH
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2013/0827/ltn20130827710.pdf" target="_blank">
bought</a> 70% of <a href="../dbpub/articles.asp?p=2258278">Ever Full Harvest 
Ltd</a> (<strong>EFH</strong>, BVI) and a $10.4m shareholder loan from one
<a href="../dbpub/positions.asp?p=2642538">Yuen Siu Wah</a> (<strong>Mr Yuen</strong>), 
an "independent third party", for HK$21m. EFH was incorporated in the BVI on 
1-Nov-2011 and its only material asset was 100% of HKCL. We know nothing about 
Mr Yuen, 
but an ophthalmology doctor with that name
<a href="http://www.townhealth.com/en/MedicalBusiness_SpecialtyCentre.aspx" target="_blank">
works for TH</a> and they may or may not be the same person.</p>
<p>BVI companies are a black box, so we can't find out who owns the other 30% of 
EFH, but the 23-Jan-2013 annual return of HKCL shows that until 23-Mar-2012, HKCL had 4 shareholders, all of whom transferred 
their stakes on that date to EFH. One of those was IM with 30%, and as noted 
above, we now know it is owned by Mr Ng. The others were one
<a href="../dbpub/natperson.asp?p=2642540">Cheung Lam Hung</a> with 22%,
<a href="../dbpub/orgdata.asp?p=2642541">Sunny Profit Group Ltd</a> (<strong>SP</strong>, 
BVI) with 28%, and Mr Yuen, with only 20%. We don't know how Mr Yuen ended up 
beneficially owning 70% of EFH before selling it to TH.</p>
<p>What we do know is that eventually SP became a 100% subsidiary of TH. We know 
this because SP was mentioned as a pre-IPO shareholder in the Application Proof 
of an aborted GEM listing called <a href="../dbpub/orgdata.asp?p=2545316">CCBA 
International Holdings Ltd</a> (<strong>CCBA</strong>) dated 21-Mar-2016 and 
sponsored by Convoy Capital Hong Kong Ltd.</p>
<p class="regbox">Regulatory note: HKEX deletes these documents from its 
web site after the application is scrapped, creating memory holes, so download 
them while you can. We do, and we call on HKEX to stop deleting history.</p>
<p>Fortunately CCBA is having another 
go, so the new application proof dated 26-Sep-2016 is
<a href="http://www.hkexnews.hk/APP/GEM/2016/2016092304/Documents/GEM201609260023.pdf" target="_blank">
here</a>. Both documents cryptically say that SP agreed on 6-Dec-2013 to buy 
into the precursor of CCBA, but they don't say who owned SP at the time, only 
that it is now wholly owned by TH.</p>
<h3>TH subscribes 9.9% of LK</h3>
<p>TH, having completed the sale of its stake in LK on 30-Sep-2013, didn't stay 
out of it for long. On 26-May-2014, IECCT
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0526/GLN20140526085.pdf" target="_blank">
signed</a> a non-binding memorandum of understanding with TH under which TH 
would invest "not less than HK$50m" in cash for shares of LK, to allow IECCT "to 
allocate more of its internal resources to the development of mobile-online 
gaming business". TH made a corresponding
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0526/LTN20140526512.pdf" target="_blank">
announcement</a>. However, the scale of this proposal was dramatically reduced 
when on 26-Aug-2014, LK
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0826/GLN20140826041.pdf" target="_blank">
issued</a> 1170 new shares (9.9%) to TH at HK$2308 per share for a total of 
$2.7m, diluting IECCT (by then named "China Mobile Games and Cultural Investment 
Ltd") from 100% to 90.1% and valuing LK at $27.28m. TH made a corresponding
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0826/LTN20140826698.pdf" target="_blank">
announcement</a>.</p>
<h3>TH injects HKCL into LK</h3>
<p>On 31-Dec-2014, IECCT
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1231/GLN20141231107.pdf" target="_blank">
announced</a> that TH would inject its 70% of EFH and part of its shareholder 
loan into LK in exchange for 4570 new shares (27.88%) of LK valued at HK$11.882m 
or $2600 per share, close to the net asset value of LK at 31-Oct-2014.</p>
<p>The only material asset of EFH was 100% of HKCL, so in effect this passed 70% 
of HKCL to IECCT. Combined with the earlier subscription, TH would now have 
35.02% of LK and IECCT would have 64.98%. The TH announcement is
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1231/LTN20141231931.pdf" target="_blank">
here</a>. The owner of the other 30% of EFH was named as
<a href="../dbpub/orgdata.asp?p=2642475">Open Fortune Ltd</a> (<strong>OF</strong>, 
BVI), the owner(s) of which were not disclosed. EFH made a net profit of 
HK$1.469m in the 9 months to 31-Dec-2013 and $2.111m for the 10 months to 
31-Oct-2014. Revenue was not disclosed.</p>
<p class="regbox">Regulatory note: the Listing Rules accounting disclosure 
requirements on "Discloseable Transactions", which can involve up to 25% of 
gross assets of the acquirer (and much more of the net assets), are grossly 
inadequate to inform the market. All that
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=2728" target="_blank">
LR 14.58</a> requires is the target's profit before and after tax, which may 
include all sorts of distorting items such as gains on disposals/acquisitions of 
subsidiaries, goodwill impairments or property revaluations. On the balance 
sheet, all we get is gross and net assets, which may include goodwill and other 
intangible assets. Investors deserve more information in order to assess whether 
boards have made reasonable transactions and their impact on future 
profitability and on net tangible assets. At the minimum, this should include a 
proper income statement and balance sheet, whether audited or not.</p>
<p>EFH owed its shareholders a total of $16.6m, including $10.4m to TH, 
and only $6.333m of this was transferred to LK, so TH would continue to finance 
EFH with $4.067m. TH perversely claimed that this financing was due to its 
remaining indirect 24.5% interest in EFH via LK, but of course it also had an 
interest in the loan held by LK.</p>
<p>At the time, IECCT was 25.87% owned by
<a href="../dbpub/articles.asp?p=58895">Convoy Global Holdings Ltd</a> (<strong>Convoy</strong>, 
1019) and 12.02% by <a href="../dbpub/articles.asp?p=63313">China New Economy 
Fund Ltd</a> (0080). Convoy was 21.16% controlled by TH. </p>
<h3>LK issues shares to Kevin Cho Kwai Yee</h3>
<p>The latest manoeuvre by LK,
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2016/1006/GLN20161006123.pdf" target="_blank">
announced</a> on 6-Oct-2016, is to issue new shares for HK$21.136m to
<a href="../dbpub/positions.asp?p=13644">Kevin Cho Kwai Yee</a> ($13.737m) and 
TH ($7.399m) at about NAV per share. As a result, IECCT's stake will be diluted 
to 50.50%, TH will still own 35.02% and Kevin Cho will own 14.48%. Kevin Cho 
will be employed as CEO of <a href="../dbpub/orgdata.asp?p=152006">Hong Kong 
Health Check and Medical Diagnostic Group Ltd</a> (BVI), a 100% subsidiary of 
LK. He was an ED of TH from 2001 to 2008, and is the brother of
<a href="../dbpub/positions.asp?p=11693">Roy Cho Kwai Chee</a>, the founder of 
TH who is still its Deputy Chairman. LK made a net profit of $14.567m in 2015, 
so the investment is on a P/E of 5.1.</p>
<h3>The questions</h3>
<p>The foregoing analysis raises a number of questions:</p>
<ul>
	<li>FOMTG, then owned by HW, was valued at HK$90m when it was merged into LK 
	in late 2009. It made a profit of $13.64m in the year to 31-Mar-2009. Why 
	was it only worth $46.7m in late 2010, when an unnamed party bought 30% of 
	it, and who was the buyer?</li>
	<li>Why was 70% of HW sold to Mr Ng (via IM) for only $6.1m in 2012, valuing 
	HW at only $8.7m? Had the 
	profit margins of FOC and FOMTG really collapsed? Was the cyclotron at St. 
	Teresa's no longer pumping out high-margin isotopes?</li>
	<li>When the Ngs (via IM) and Yeungs (via ORD) bought HKCL, owner of the 
	cyclotron at the Science Park, for HK$100 in 2008, did they also buy the 
	shareholder loan, or did TH keep financing it without owning the equity 
	upside?</li>
	<li>How did Mr Yuen come to own 70% of EFH when he only held 20% of HKCL 
	before the shareholders rolled it into EFH?</li>
	<li>Who owns (via OF) the other 30% of EFH, which owns HKCL?</li>
</ul>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2423995">Astrum Financial Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2545316">CCBA International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63313">China New Economy Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58895">Convoy Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21297">Du Du Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2258278">Ever Full Harvest Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=846313">FIRST ORIENTAL CYCLOTRON LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2642519">First Oriental Medical Technology Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=829381">FIRST ORIENTAL MEDICAL TECHNOLOGY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12131">Hang Tai Yue Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=146679">HEALTH WALK LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2642521">Helix Overseas Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1168598">HONG KONG CYCLOTRON LABORATORIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=152006">Hong Kong Health Check and Medical Diagnostic Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17972">HONG KONG SCIENCE AND TECHNOLOGY PARKS CORPORATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2477165">Isthmus Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2642520">Kingdom Hill Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2642472">Luck Key Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4951">Minerva Group Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=152329">ON RIGHT DEVELOPMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2642541">Sunny Profit Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11691">Town Health International Medical Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366261">UNIQUE PROSPERITY LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2642540">Cheung, Lam Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13644">Cho, Kevin Kwai Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11693">Cho, Roy Kwai Chee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11698">Fung, Bennet Yiu Tong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2623341">Leung, Belinda Yuet Kwan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2477161">Ng, Yau Sing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=21301">Yeung Tsui, Margaret Mai Ling</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=21299">Yeung, Alex Wah Hin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2642539">Yeung, Tommy Wai Hong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2642538">Yuen, Siu Wah</a></li>
				
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