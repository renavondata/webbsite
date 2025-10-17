
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

<script type="text/javascript">document.title="Cosmetic appearances";</script>

	<div class="summary">When the ICAC charged a person with engineering fraudulent acquisitions by Uni-Bio Science (0690) last month, we suspect they only saw half the story. Webb-site looks at the overlaps between UBS and Global Green Tech (0274), and at a series of its acquisitions.</div>

<h2 class="center">Cosmetic appearances<br>
<span class="headlinedate">25 May 2010</span></h2>
<p>On 14-Apr-2010, the Independent Commission Against Corruption (<strong>ICAC</strong>) <a href="../codocs/ICAC100414.pdf">announced</a> that it had charged 
<a href="../dbpub/natarts.asp?p=57515">Michael Liang Hui Min</a> 
(<strong>Mr Liang</strong>), alleging that he conspired with others (as yet 
unnamed) between Aug-2005 and Jul-2007 to defraud existing and potential 
investors in <a href="../dbpub/orgdata.asp?p=14534">Uni-Bio Science Group Ltd</a> (<strong>UBS</strong>, 0690). Mr Liang 
was said to be a <em>de facto</em> controlling shareholder of UBS, and to have 
conspired with others to conceal that he was the true owner of three mainland 
companies which were sold to UBS, namely:</p>
<ul>
	<li>Dongguan Shi Bo Kang Jian Pharmaceutical Technology Co Ltd (<strong>DG-Pharmaceutical</strong>)</li>
	<li>Beijing Genetech Pharmaceutical Co Ltd (<strong>Beijing Genetech</strong>)</li>
	<li>Shenzhen Watsin Genetech Ltd (<strong>Shenzhen Watsin</strong>)</li>
</ul>
<p>In this article, we call these acquisitions the <strong>Three Deals</strong>. He was also alleged to have conspired with others to falsify the accounting 
documents of the 3 companies to make them look financially sound and worth more 
than they actually were, and arranged for UBS to acquire those companies at 
inflated prices totalling HK$1.29bn (US$166m), settled in cash and new shares. It was 
suspected that part of that was then passed to Mr Liang. No plea was taken, pending further inquiries and legal 
advice.</p>
<p>On 13-May-2010, four weeks after Mr Liang was charged, UBS put out a 1-page
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100513/LTN20100513551.pdf" target="_blank">
response</a> to press coverage (the announcement does not mention the ICAC). UBS 
said that &quot;to its best knowledge after making reasonable inquiries&quot; there exists 
no invisible controlling shareholder, and the sellers of the three companies are 
independent third parties.</p>
<h3>A brief history of UBS</h3>
<p>UBS was listed on 12-Nov-2001 as &quot;New Spring Holdings Ltd&quot;, engaged in the 
manufacture and sale of packaging products and paper gift items. Just 50m shares 
(27.8% of the company) were sold at HK$1, including 12.5m old shares. The 
company made losses in each full year after listing. On 25-Aug-2005, Automatic 
Result Ltd (<strong>Automatic Result</strong>, BVI)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20050902/LTN20050902026.pdf" target="_blank">
agreed</a> to buy the founder's 52.78% stake for $0.497 per share, triggering a 
general offer. Automatic Result was &quot;wholly and beneficially owned&quot; by
<a href="../dbpub/positions.asp?p=29842">Tong Kit Shing</a> (<strong>Mr Tong</strong>), 
but its only director was Mr <a href="../dbpub/positions.asp?p=29843">Liu Guoyao</a> 
(<strong>Mr Liu</strong>, alias Lau Kwok Yiu). The ICAC alleges that Mr Liang 
was a de facto controlling shareholder of UBS, which contradicts the statement 
that Mr Tong was the owner of Automatic Result.</p>
<p>After the takeover, on 22-Sep-2005, Mr Tong became Chairman and Mr Liu became 
CEO of UBS. This was the first appearance in HK-listed companies for both men. Mr 
Tong was &quot;engaged in metal and scrap metal trading business in the PRC since 
1997&quot; and &quot;also has been investing in a company in the PRC which is 
principally engaged in the development of water treatment system since 2001&quot;. Mr 
Liu &quot;owns a hotel in Dongguan, the PRC&quot; where he has been a general manager 
since 1999.</p>
<p>Automatic Result was advised on the takeover by
<a href="../dbpub/articles.asp?p=12115">Kingston Corporate Finance Ltd</a>, 
which we presume knew its client. The 
offer
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20051013/LTN20051013106.pdf" target="_blank">
closed</a> without acceptances on 13-Oct-2005. On 5-Nov-2005, UBS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20051107/LTN20051107022.pdf" target="_blank">
announced</a> its proposed change of name to its current name, along with an 
intention to diversify into &quot;bio-science related businesses&quot; and said it was in 
&quot;very preliminary negotiation with certain party on the proposed acquisition or 
co-operation of certain pharmaceutical business&quot;. It also changed its 
auditors from <a href="../dbpub/orgdata.asp?p=16944">Hopkins CPA Ltd</a> (<strong>Hopkins</strong>, 
formerly Albert Lam &amp; Co) to <a href="../dbpub/orgdata.asp?p=3259">CCIF CPA Ltd</a> 
(<strong>CCIF</strong>), ostensibly because Hopkins was going to carry out an 
internal control review, although we cannot find any subsequent mention of this 
review.</p>
<p>The managing director of CCIF is <a href="../dbpub/natarts.asp?p=3258">Charles Chan Wai Dune</a>. 
He and CCIF were recently <a href="../codocs/100315ChanCharlesWaiDunePR.pdf">fined and 
reprimanded</a> by the HKICPA for a defective audit of
<a href="../dbpub/orgdata.asp?p=1064">UDL Holdings Ltd</a> (the company was not 
named but we figured it out). CCIF was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080828/LTN20080828105.pdf" target="_blank">
replaced</a> again as auditor of UBS by Hopkins on 26-Aug-2008. All of the audit 
reports on UBS since its IPO have been clean.</p>
<p>UBS had not issued any shares 
since its 2001 IPO, but under new management, they soon started pumping out the 
paper. On 15-Feb-2006, UBS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060215/LTN20060215027.pdf" target="_blank">
launched</a> an open offer of 2 new shares at $0.50 for every share held, 
raising $175.5m net.</p>
<h3>The Three Deals</h3>
<p>If, as the ICAC alleges, Mr Liang conspired with others, then who else might face allegations in 
this case? Obviously if he was the true owner of the 3 mainland companies as 
alleged, then those who were named as the vendors (which UBS always stated to be 
independent third parties) may not have been the true vendors. So first let's 
get the details of the three deals, and then we will tell you what we know about 
the vendors.</p>
<p>This is where you can help, dear reader. Look at the names below 
defined in bold. Those are people for whom we we have some information, and the 
rest are people on whom we cannot find anything, so if you know anything about 
the undefined people, <a href="../contact">please tell us</a> in confidence.</p>
<h4>Deal 1: FUTL (DG-Pharmaceutical)</h4>
<p>On 26-Apr-2006, UBS 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060427/LTN20060427062.pdf" target="_blank">announced</a> 
that it would buy Figures Up Trading Ltd (<strong>FUTL</strong>, BVI) for 
HK$472m, of which $274m was in cash and the rest in shares at $0.90, based on 
10.1x 2005 earnings. FUTL was incorporated on 12-Apr-2000. It owned only Dongguan Tai 
Li Green Environmental Technology Co Ltd (incorporated in the PRC on 
25-Sep-2002), which owned only DG-Pharmaceutical (incorporated on 9-Sep-2002), 
engaged in &quot;sales and distribution of pharmaceutical and healthcare products&quot;. The vendors were:</p>
<ul>
	<li>Liu Cheng Hua (17%)</li>
	<li><a href="../dbpub/positions.asp?p=57516">Kings Wong Kim Kwan</a> (<strong>Mr Wong</strong>, 
	17%)</li>
	<li>Hau Cheong Man (17%)</li>
	<li>Li Kit Yuk (<strong>Mr K Y Li</strong>, 17%)</li>
	<li>Chan Siu Ming (16%)</li>
	<li>Susanna Leung Lai Kwan (16%)</li>
</ul>
<p>We note that the 6 vendors each received either 4.92% or 4.63% of the 
enlarged share capital of UBS, so none of them had a 5% discloseable 
shareholding after the deal. This was a Major Transaction under the Listing 
Rules, requiring a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060522/LTN20060522092.pdf" target="_blank">
circular</a> with an accountant's report on FUTL. The reporting 
accountant was CCIF, which expressed an opinion that the financial information 
gave a true and fair view of FUTL for the 3 years to 31-Dec-2005. The ICAC alleges that the accounts of FUTL and the 
other 2 acquisitions were falsified. If that is true, then CCIF failed to spot 
it.</p>
<h4>Deal 2: Nan Hoo (Beijing Genetech)</h4>
<p>On 27-Nov-2006, UBS 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20061129/LTN20061129030.pdf" target="_blank">agreed</a> to 
buy Nan Hoo 
Properties Ltd (<strong>Nan Hoo</strong>, BVI) for HK$454m, of which $230m was 
in cash and the rest in shares at $2.80. Nan Hoo was incorporated on 20-Apr-1993 
and by the time of the UBS acquisition it owned only Beijing Genetech, 
which it acquired in Dec-2003. The vendors of Nan Hoo were named as:</p>
<ul>
	<li><a href="../dbpub/positions.asp?p=40920">Stanley Leung Kar Loon</a> (<strong>Stanley Leung</strong>, 35%)</li>
	<li>Soona Yuen King Tak (35%)</li>
	<li><a href="../dbpub/positions.asp?p=45409">Ho Yik Leung</a> (<strong>Mr Y 
	L Ho</strong>, 30%)</li>
</ul>
<p>Nan Hoo, via Beijing Genetech, was &quot;engaged in the manufacture and sale of 
pharmaceutical products&quot;, but the 2007 UBS annual report stated that Nan Hoo 
&quot;had no significant contribution to the Group's revenue&quot; from the date of 
completion of the acquisition (21-Dec-2006) to the 31-Mar-2007 year-end. The 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070727/LTN20070727016.pdf" target="_blank">accounts</a> 
(note 37(b), p105) showed that the deal completed for $457.107m (slightly higher than 
announced, because of a rise in the share price before completion) including 
$116.9m of intangible assets and $193.626m of goodwill. This is exactly the 
amount of goodwill impairment 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090825/LTN20090825406.pdf" target="_blank">booked</a> 
(note 17, p82) by UBS in the year ended 31-Mar-2009, so we 
assume that was on Nan Hoo, although they didn't say so.</p>
<p>We pause to note another potential problem with UBS: as at 31-Mar-2008, 
within &quot;other receivables, deposits and prepayments&quot;, they had paid out 
$155.302m as &quot;deposits for purchases of technical know-how&quot; of several 
pharmaceutical products and the exclusive right for commercialisation thereof, 
which was expected to become intangible assets &quot;upon obtaining the patent 
granted by the SFDA&quot;. Actually, the
<a href="http://eng.sfda.gov.cn/eng/" target="_blank">State Food and Drug 
Administration</a> approves and registers drugs but does not grant patents. For 
patents, you go to the
<a href="http://www.sipo.gov.cn/sipo_English/" target="_blank">State 
Intellectual Property Office</a>. Anyway, in the year to 31-Mar-2009, the net 
amount of such deposits dropped to $21.863m, with no additions to intangible 
assets, and there was an impairment loss on other receivables, deposits and 
prepayments of $108.882m.</p>
<h4>Deal 3: Zethanel (Shenzhen Watsin)</h4>
<p>On 24-Jul-2007, UBS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070725/LTN20070725011.pdf" target="_blank">
announced</a> that it had agreed to buy Zethanel Properties Ltd (<strong>Zethanel</strong>, 
BVI) for about HK$366.7m, which was settled with $165m in cash and 36.67m shares 
at $5.50. The deal was completed on 22-Aug-2007. Zethanel's only material asset 
or liability was its 100% stake in Shenzhen Watsin, which produced &quot;recombinant 
human epidermal growth factor... in liquid preparations primarily indicated for 
external use for burn and wound care&quot;. UBS, via DG-Pharmaceutical, was already 
the exclusive mainland distributor of these products under an agreement entered 
into on 31-Mar-2007.</p>
<p>The vendors, both being &quot;independent third parties&quot; were named as:</p>
<ul>
	<li><a href="../dbpub/positions.asp?p=41876">Judy Lau</a> (<strong>Judy Lau</strong>, 
	50%)</li>
	<li><a href="../dbpub/positions.asp?p=12212">Choi Woon Man</a> (<strong>Mr 
	Choi</strong>, 50%)</li>
</ul>
<h3>The names, and Global Green Tech</h3>
<p>A common thread for many of the vendors in the Three Deals is 
<a href="../dbpub/orgdata.asp?p=12209">Global Green Tech Group Ltd</a> (<strong>GGT</strong>, 
0274). On 29-Apr-2010 GGT published its 2009
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100429/LTN201004291753.pdf" target="_blank">
annual report</a>, on which the auditor set some kind of record by listing 15 
different reasons why it disclaimed an opinion on the accounts. Virtually every 
item in the balance sheet lacked adequate information or explanation, yet in the 
previous year, the same auditor, Hopkins, gave it a clean bill of health. The 
stock has been suspended since 10:00 on 30-Apr-2010, pending clarification.</p>
<p><strong>In our view, the ICAC should be having a good hard look at the 
acquisitions made by GGT too, particularly of its cosmetic distributors. We go 
through a number of these deals in the rest of this article.</strong></p>
<p>We note that in each of the Three Deals, the financial adviser to UBS was
<a href="../dbpub/adviserships.asp?p=7329">REXCAPITAL (Hong Kong) Ltd</a> (<strong>Rex</strong>). 
Rex was also the independent financial adviser to 
the independent directors of GGT in at least 3 circulars in 2007.</p>
<p>GGT was co-founded by <a href="../dbpub/natperson.asp?p=12218">Lau Ru 
Dong</a> (<strong>Mr R D Lau</strong>) and Mr Choi (one of the Zethanel vendors) in Nov-1994. It was listed in HK on 18-Dec-2000. It was then &quot;principally engaged 
in the development, manufacture and sale of... home and personal care 
products... and industrial surfactants&quot;. Right after its IPO in 2000, GGT was 26.4% owned by 
R D Lau and 34.0% by Mr Choi. R D Lau never served on the board of GGT.</p>
<p>Judy Lau (the other Zethanel vendor) is Mr R D Lau's daughter, 
and she was a senior manager of GGT and Chairman of its subsidiary
<a href="../dbpub/orgdata.asp?p=41874">Bio Beauty Group Ltd</a> (<strong>Bio 
Beauty</strong>), which
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20071210/LTN20071210409.pdf" target="_blank">
aborted</a> an IPO on 10-Dec-2007.&nbsp; Her brother is
<a href="../dbpub/positions.asp?p=12211">Jim Lau Jin Wei</a> (<strong>Jim Lau</strong>), 
who was Chairman of GGT. Mr Choi was an Executive Director of GGT until 
30-Sep-2004.</p>
<p>The reporting accountant in the GGT 
prospectus was 
<a href="../dbpub/articles.asp?p=5346">Ernst &amp; Young</a>, but it is interesting to note that the accounts of the 
subsidiaries for 1997 and 1998 (the first 2 years of the 3-year track record) 
were audited by Alex So &amp; Co. That's the sole proprietorship of
<a href="../dbpub/positions.asp?p=29845">Alex So Yin Wai</a> (<strong>Mr So</strong>). 
Mr So was appointed as an INED of UBS on 22-Sep-2005 (upon the takeover by 
Automatic Result) and
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100322/LTN20100322519.pdf" target="_blank">
resigned</a> on 15-Mar-2010, just a month before Mr Liang was arrested, because 
&quot;he wishes to have more time to devote to his other work commitments&quot;. Mr So was also Chairman 
of the audit committee of UBS. That left UBS with only 2 INEDs (less than the 
minimum of 3), neither of which had accounting or financial expertise. The 
vacancy was filled on 7-May-2010 by
<a href="../dbpub/positions.asp?p=51431">Tsao Hoi Ho</a>. He was once the 
qualified accountant at <a href="../dbpub/orgdata.asp?p=16489">Ming Fung 
Jewellery Group Ltd</a> (<strong>MFJ</strong>, 0860), joining them in Dec-2005 
and leaving in 2008.</p>
<p>A former INED of GGT is <a href="../dbpub/positions.asp?p=8681">
Jerry Yip Wai Leung</a> (<strong>Mr Yip</strong>). Mr Yip is a 
partner of J. Chan, Yip, So &amp; Partners, a law firm. Mr Yip was an INED of
<a href="../dbpub/articles.asp?p=4978">Styland Holdings Ltd</a> (<strong>Styland</strong>, 
0211) from 14-Jul-1999 to 31-Mar-2003. He was appointed as an INED of GGT on 20-Oct-2000 
(before its IPO). On 
30-Sep-2004, Mr Yip was reclassified as non-independent, because his firm had 
been providing legal services to GGT and the Listing Rules changed that day so 
that corporate lawyers could no longer claim to be independent directors of 
their clients. Mr Yip stepped down as NED on 30-Sep-2005.</p>
<p>On 13-Jan-2006, Mr Yip (via his family trust)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060127/LTN20060127024.pdf" target="_blank">
bought</a> the 36.5% controlling stake in
<a href="../dbpub/orgdata.asp?p=3855">Green Energy Group Ltd</a> (<strong>GEG</strong>, 
0979, then China Nan Feng Group Ltd), triggering a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060302/LTN20060302076.pdf" target="_blank">
general offer</a> which
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060324/LTN20060324170.pdf" target="_blank">
closed</a> on 24-Mar-2006, when Mr Yip became Chairman of GEG. All the incumbent 
directors, including the INEDs, were replaced. Mr So was one of the new INEDs. 
Apart from Mr Yip, the only other executive director was
<a href="../dbpub/positions.asp?p=32680">Charles Ming Ka Fook</a> (<strong>Mr 
Ming</strong>). He was an ED from 2-Mar-2006 to 5-Jun-2006, then Deputy 
Chairman until his
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080303/LTN20080303283.pdf" target="_blank">
death</a> at the age of 73 on 2-Mar-2008.</p>
<p>At the IPO of GGT in Dec-2000, the Financial Controller was
<a href="../dbpub/positions.asp?p=8344">Henry Chan Bing Kwong</a> (<strong>Henry 
Chan</strong>), who had joined the company 5 months earlier, and had a post-IPO 
stake of 9.6%. He received his stake under a declaration of trust from 
Mr Choi in 1996 &quot;for his assistance in...corporate and financial planning&quot;. 
Henry 
Chan was an Executive Director of Styland from 1-Aug-1997 to 4-May-2000. He left 
GGT some time in 2003. He was also an INED of MFJ for nine months that year.</p>
<p>Mr Y L Ho, one of the Nan Hoo vendors, 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080515/LTN20080515112.pdf" target="_blank">was an INED</a> of GGT from 15-May-2008 to 6-Jul-2009. 
We know nothing else about him.</p>
<p>Another INED of GGT was <a href="../dbpub/positions.asp?p=17813">
Goldman Lee Pak Chung</a> (<strong>Mr Lee</strong>). He was appointed on 
30-Sep-2004 (the day Mr Yip was re-designated to NED) serving until a change of 
control on 25-Sep-2009. On 13-Jan-2007, he was 
appointed Qualified Accountant and Company Secretary of UBS. Mr Lee was one of 
the people
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100325/LTN20100325007.pdf" target="_blank">
arrested</a> by the ICAC on 1-Mar-2010 and released on bail. He resigned 
from UBS effective 1-May-2010. He was also an INED (and chairman of 
the audit committee) of MFG from 12-Aug-2002,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100420/LTN20100420617.pdf" target="_blank">
resigning</a> on 20-Apr-2010 after his arrest, although the reason he gave was 
&quot;due to his commitments to other business which require more of his dedication&quot;.</p>
<p>One other overlap: one of the INEDs lined up by Bio-Beauty for its aborted 
IPO was Mr <a href="../dbpub/positions.asp?p=41878">Tam Pei Qiang</a>, who is 
also the financial controller of GEG. He joined GEG in 2005.</p>
<h3>Options &amp; convertibles</h3>
<p>GGT was also one of the issuers <a href="toxicon.asp#GGT">
featured</a> in our article on CSFB's toxic convertibles in 2005. It's 
interesting to note how few of the listed companies in that article are still around. 
As we noted in that article, GGT has been a prolific issuer of share options 
since its IPO, regularly granting a slug of options equal to the maximum 10% of 
existing issued shares permitted by the Listing Rules. The options are allotted 
not just to directors and employees but also to customers, suppliers and 
consultants. In many cases, they are exercised soon after grant. Five years 
later, the habit continues.</p>
<p>For example, on 7-Jul-2009 it
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090708/LTN20090708325.pdf" target="_blank">
granted</a> options over 198.8m shares equivalent to 10% of the existing issued 
shares, and 181.3m of these were exercised by 17-Aug-2009. On 25-Feb-2010, it
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100225/LTN20100225341.pdf" target="_blank">
granted</a> options over another 262.1m shares, again equal to 10% of the 
existing issued shares.</p>
<p>There are some companies in HK which apparently regard the share option 
scheme as little more than a form of placing mandate, a way to hand out equity 
without getting minority shareholders' approval to renew the general placing 
mandate.</p>
<h3>Bio-Treat</h3>
<p>Mr Wong, one of the six purported vendors of FUTL, was an Executive Director of 
<a href="../dbpub/orgdata.asp?p=22593">Bio-Treat Technology Ltd</a> (<strong>Bio-Treat</strong>, 
SGX:B22) 
from 10-Feb-2006 to 5-Aug-2009, and had worked for Bio-Treat in a sales and 
marketing capacity since 1998. Bio-Treat, involved in biological treatment of 
waste water, was listed in Singapore on 16-Feb-2004. A pre-IPO investor was 
GGT, which owned 8% 
immediately prior to the IPO. It purchased this stake from Bio-Treat's then 
Chairman Mr Wing Hak Man in 
May-2002 for HK$31.6m.</p>
<p>Mr Yip was an INED of Bio-Treat from 22-Oct-2003 (pre-IPO) to 31-Jul-2007.</p>
<p>Mr <a href="../dbpub/positions.asp?p=29844">Zhou Yao Ming</a>, who has been an INED of Bio-Treat since 22-Oct-2003 
(pre-IPO) is also an INED of UBS since 22-Sep-2005 and was an INED of GEG from 
2-Mar-2006 to 5-Jun-2006.</p>
<p>Bio-Treat reported strong growth for several years, but by 30-Jun-2007 it 
had accumulated trade and other receivables of RMB1,001m, compared with revenue 
that year of RMB1,589m. In the following 2 years, it made massive impairment 
provisions of RMB889m on trade receivables.</p>
<h3>Bio-Tech Pharm</h3>
<p>Another company of interest is Bio-Tech Pharm Group Ltd (<strong>BTP</strong>, 
BVI). According to the 2002 accounts of GGT, during that year, GGT acquired 4.5% 
of BTP for HK$31.5m, as well as its 8% stake in the forerunner of Bio-Treat, so 
the total outlay was HK$63.1m, and this indeed shows up in the cash flow 
statement. So that's fine, but then four years later, in
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070502/0274/f115.pdf" target="_blank">
note 22</a> of the 2006 GGT accounts, we see this garbled statement:</p>
<blockquote>
	<p>&quot;On 5 January 2002, one of the Group's subsidiaries was 
	entered into a share swap arrangement with an independent third party - <strong>Leung Kar 
	Loon, Stanley</strong>. Mr Leung would transfer those share of Bio-Tech Pharm Group 
	Limited for 4.5% with consideration of HK$31.5 million to the Group's 
	subsidiary.</p>
	<p>However, on <strong>13 December 2003</strong>, there was another share 
	swap arrangement between the subsidiary and another independent third party - 
	<strong>Li 
	Kit Yuk</strong>. The arrangement was about the subsidiary to transfer the 4.5% of share 
	of Bio-Tech Pharm Group Limited to him amounting to HK$31.5 million in exchange 
	with the 11,250,000 shares for HK$2.80 per share of Uni-Bio Science Group 
	Limited ("Uni-Bio") on or before 31 December 2006. Together with the unrealised 
	gain as at 31 December 2006, there was altogether HK$38,812,500.</p>
	<p>The subsidiary executed the shares swap on 18 December 2006 
	with the intention to dispose the share in Uni-Bio in the near future and 
	transferred as trading securities under listed equity securities in note 23.&quot; 
	(<strong>emphasis added</strong>)</p>
</blockquote>
<p>Now first of all, there was no &quot;share swap&quot; - it is clear from the 2002 
accounts (if they were not false) that this was a cash purchase. There was no 
mention of any share swap until 2006, and even then, they don't say what shares 
they swapped for the BTP stake in 2002. In the intervening years, the GGT accounts 
all stated ownership of the stake.</p>
<p>The above accounting extract also connects Stanley Leung, one of the 
purported Nan Hoo vendors, to GGT. He was also an INED of 
<a href="../dbpub/orgdata.asp?p=11418">Long Success 
International (Holdings) Ltd</a> (8017) from 14-Sep-2007 to 30-Jun-2008. That's all 
we know about him.</p>
<p>The above accounting extract also connects Mr 
K Y Li, who was one of the FUTL vendors, and GGT. He apparently swapped part of his 
28m UBS shares, which he received when selling FUTL to UBS, for the 4.5% stake 
in BTP. But look at that date - 13-Dec-2003 - that was more than 2 years before 
Mr K Y Li sold his stake in FUTL to UBS, so how could he have known, back in 2003, 
that he would have 11.25m UBS shares to trade with&nbsp;GGT by the end of 2006? 
Surely something is wrong here.</p>
<h3>Michael Liang</h3>
<p>Now, we return to Mr Liang. He has been mentioned in a court judgment before 
as a witness in an appeal of a magistracy case. The
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=26046&amp;currpage=T" target="_blank">
judgement states</a> that according to the facts admitted 
by the appellant, Mr Liang was:</p>
<blockquote>&nbsp;&quot;a director of Fortune Net Communication[s] 
Limited... and a proprietor of another company called 'Global Green Tech'&quot;.</blockquote>
<p>That's either an amazing coincidence of names, or it is odd that GGT has 
never mentioned Mr Liang in its prospectus or subsequently. We mention this only because it appears to establish a connection between Mr 
Liang and &quot;Global Green Tech&quot;, which is presumably GGT or one of its 
subsidiaries.</p>
<p>We found one other reference to Mr Liang: according to page 21 of a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090727/ltn20090727397.pdf" target="_blank">
circular</a> of <a href="../dbpub/orgdata.asp?p=3220">Media Chinese 
International Ltd</a> dated 28-Jul-2009, on 10-Jun-2009, he and &quot;Chan Kong&quot; 
filed a writ against a subsidiary of Media Chinese called
<a href="../dbpub/orgdata.asp?p=57757">Yazhou Zhoukan Ltd</a>, case 
HCA1375/2009, alleging defamation in the issue of Yazhou Zhoukan dated 
3-May-2009. Chan Kong is the co-founder of Bio-Treat, and is currently an INED 
of newly-listed <a href="../dbpub/orgdata.asp?p=57273">Fook Woo Group Holdings 
Ltd</a> (0923).</p>
<p>In that same page, you will see that GGT, its subsidiary
Bio Beauty and others are suing another subsidiary of Media Chinese, Ming Pao 
Newspapers Ltd, alleging defamation in two articles published on 11-Dec-2007 and 
12-Dec-2007, case HCA80/2008.</p>
<h3>Bio Beauty</h3>
<p>Now let's look at Bio Beauty, the aborted spin-off which lies at the core of 
GGT's balance sheet. As the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20071203/LTN20071203402.pdf" target="_blank">
prospectus</a> records, on 11-Sep-2001, a company called High Billion Investment 
Ltd (<strong>High Billion</strong>) entered into an agreement with
<a href="../dbpub/orgdata.asp?p=57884">Bio-Click Technologies Ltd</a> (<strong>Bio-Click</strong>) 
pursuant to which Bio-Click granted a non-exclusive license on unpatented 
technology know-how &quot;for the extra-cellular production and purification&quot; of
<a href="http://en.wikipedia.org/wiki/Epidermal_growth_factor" target="_blank">
human Epidermal Growth Factor</a> (<strong>hEGF</strong>) for 4 years commencing 
6-Nov-2002, the date of the first invoiced sale. After the first 4 years, High 
Billion would continue to use the technology for free.</p>
<p>Bio-Click was owned as to 48.54% by two researchers at Hong Kong University 
of Science and Technology, 48.54% by a company called Vivid King Ltd (the owner 
and domicile of which was not disclosed) and 2.91% by HKUST's research company. 
The licensee, High Billion, was owned by Mr Huang Baiqing and Mr Lau Kwok Yiu. 
If the second name seems familiar, <strong>that's because it's also the alias of 
Mr Liu, the hotelier who later became CEO of UBS!</strong></p>
<p>Bio Beauty records that &quot;the management of our Group decided to use hEGF in 
February 2001 as our active ingredient in the production of skincare products&quot;, 
and in Oct-2001, the month after the non-exclusive license was granted to High 
Billion, it bought High Billion for HK$20m. The 2001 GGT accounts record the 
acquisition, with $3m paid on 28-Sep-01 and $17m on completion on 13-Nov-2001. 
On 14-Jan-2003, Bio-Click signed a supplemental deed waiving all future fees 
payable under the original agreement with High Billion, and was paid only $0.3m 
upon execution of the original license. Apparently that's all that the Bio-Click 
professors thought their hEGF know-how was worth.</p>
<p>In 2001, Bio Beauty agreed with Cosme-Tech S.A.R.L. of France to act as OEM 
manufacturer for skincare products. We can't find that company, but perhaps it 
is related to <a href="http://cosmetech.com/" target="_blank">Cosmetech 
Laboratories, Inc.</a> of New Jersey, USA. Bio Beauty selected &quot;<a href="http://www.mb-gghegf.com" target="_blank">Marjorie 
Bertagne</a>&quot; (<strong>MB</strong>) from readily available brand names owned by 
Cosme-Tech. The name had not been used and no trademark had been registered, so 
it is not clear what they mean by &quot;owned&quot;, but it doesn't matter. It gives them 
an excuse to stick the word &quot;Paris&quot; in the logo, even though the products are 
made in China and Cosme-Tech did not charge them for the brand. &quot;Marjorie 
Bertagne - Dongguan&quot; just wouldn't have quite the same attraction, and face 
creams are nothing if not for saving face. Cosme-Tech acted 
as OEM manufacturer until GGT got its own production lines up and running in 
China in 2003.</p>
<h4>Distribution and retail</h4>
<p>In its 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020410/274/F102.pdf" target="_blank">2001 annual report</a>, GGT spoke about its &quot;own retail outlets&quot; in HK and 
plans to launch in the PRC in May-2002. In the next 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020904/274/F101.pdf" target="_blank">interim report</a>, it stated 
that it had opened a &quot;flagship&quot; store in Causeway Bay in Dec-2001, followed by 2 
more in Admiralty and Shatin, and 7 counters in department stores in HK &amp; Macau.</p>
<p>However, it later quietly created a separate, partly-owned subsidiary to 
manage the production and sale of MB skincare and colour cosmetics in the PRC 
and HK. Global Cosmetics (China) Co Ltd (<strong>GCC</strong>) was established 
in the PRC on 1-Apr-2004 and first appeared in the GGT accounts for calendar 
2004 as a 70% subsidiary. Another company, Global Cosmetics (HK) Co Ltd (<strong>GCHK</strong>), was incorporated in HK 
on 6-Aug-2004. There was no mention of it in the GGT accounts for 2004 and 2005.</p>
<p>The 2004 accounts 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20050505/0274/F112.pdf" target="_blank">mentioned</a> (note 36(h)) that Cr<span class="highlight">y</span>stal 
Marketing Management Limited (<strong>Crystal</strong>, spelt with a &quot;y&quot;) was a 
minority shareholder &quot;of the Group&quot; (presumably, of a company in the Group) and 
had entered into an agreement to pay &quot;royalty fee and advertising subsidy&quot; to 
Global Chemicals (China) Co Ltd (<strong>Global Chemicals</strong>, a 
wholly-owned subsidiary of GGT) of 28% of net income from sales of MB products 
to customers, services rendered to customers (probably beauty treatments) and 
any other income incidental thereto, amounting to $2.755m in 2004. Crystal also 
paid an advertising fee of $100k per month from Jan-Apr-2004 and $200k per month 
May-2004 onwards.</p>
<p>The 2005 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060504/0274/F113.pdf" target="_blank">accounts</a> (note 33(f)) mentioned the same contract with Global 
Chemicals, but curiously, said that Crystal paid the royalty fee to GCC, not 
Global Chemicals. This is not just a pedantic difference, because GCC was 70% owned by GGT, whereas Global Chemicals was 100% owned.</p>
<p>On 2-Jan-2007, GGT
revealed GCHK for the first time, by
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070102/LTN20070102205.pdf" target="_blank">
announcing</a> that it had agreed to buy 17% of GCHK from 
<a href="../dbpub/orgdata.asp?p=57794">Cr<span class="highlight">i</span>stal 
Marketing Management <span class="highlight">Company</span> Limited</a> (<strong>Cristal</strong>, 
with an &quot;i&quot; and a &quot;Company&quot;) for <strong>HK$241.09m</strong> in cash, implying a 
valuation for the whole of CGHK of $1,418m. Cristal was incorporated in HK on 
24-Aug-2001 whereas Crystal in untraceable, so we'll assume that Cristal and 
Crystal are the same company. GGT said that GCHK was 70% owned by GGT and 30% by 
Cristal, with HK$40m of share capital issued at par, and was &quot;principally 
engaged in the wholesale of cosmetics and skincare products manufactured by 
members of the Group.&quot; GGT also said that GCC was a subsidiary of GCHK.</p>
<p>So GGT was paying 35.45 times the start-up cost to buy another 17% of GCHK. 
The owner of Cristal was not disclosed. Cristal's principal activities were 
&quot;retailing of cosmetics and provision of beauty treatment services.&quot; This was a Discloseable Transaction 
under the Listing Rules, but not a Major Transaction, so no accountants' report 
was contained in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070119/LTN20070119067.pdf" target="_blank">
circular</a>. GCHK The circular 
contained a claim that the unaudited net asset value of CGHK at 30-Jun-2006 was 
HK$250.2m. So 17% of that would be $42.5m. However, we note that by the time 
the deal completed, the share of net assets was only $18.13m, as recorded in 
note 15 of the 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080316/LTN20080316006.pdf" target="_blank">2007 accounts</a>.</p>
<p>On 16-Aug-2007, GGT
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070816/LTN20070816429.pdf" target="_blank">
agreed</a> to buy the remaining 13% of GCHK from Cristal, this time for 
HK$274.1m, satisfied by issuing 13,936,390 shares (then 15.34%) of Bio-Beauty, 
ahead of the IPO which was later aborted. This time, the amount of the net 
assets acquired was HK$37.59m. The price implied a valuation of $2,108m on GCHK. 
This was again a Discloseable Transaction, so no accountants' report was 
required in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070904/LTN20070904302.pdf" target="_blank">
circular</a>. Again, the owner of Cristal was not disclosed.</p>
<p>In both acquisitions, Rex acted as Independent 
Financial Adviser, blessing the deals.</p>
<p>Next came the aborted IPO of Bio Beauty, in which HK tycoon Mr 
<a href="../dbpub/natarts.asp?p=62">Cheng Yu Tung</a> 
(<strong>Y T Cheng</strong>, controller of the New World group) and Philippine 
tycoon Henry Sy Senior (founder of the SM Prime group) were each going to 
subscribe US$10m as cornerstone investors.</p>
<p>After the IPO was scrapped, on 11-Sep-2008, GGT
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080912/LTN20080912536.pdf" target="_blank">
agreed</a> to buy back 7,758,590 shares (8.54%) of Bio-Beauty from Cristal for 
<strong>HK$265.3m</strong> in cash (exactly $34.2 per share), implying a valuation of $3,107m on 
Bio-Beauty. GGT stated that Cristal had sold 6.8% of Bio-Beauty to a company 
called World Eagle International Limited (<strong>World Eagle</strong>) in July 
and September 2008, and that the (still unnamed) owner of Cristal had told GGT 
that it intended to sell its remaining 8.54% stake to another (unnamed) 
HK-listed company, part of which was in competition with GGT. Again, this was a 
Discloseable Transaction, and a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080925/ltn20080925208.pdf" target="_blank">
circular</a> was issued.</p>
<p>The owner of World Eagle was not disclosed, but we can tell you a bit about 
it...</p>
<h4>World Eagle, Cheng Yu Tung and Mr Ming</h4>
<p>World Eagle is not a complete stranger. Our research finds that on 
4-Jul-2002, GGT
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020705/LTN20020705016.doc" target="_blank">
entered</a> into a top-up placing to place 54m shares (11.71% of enlarged) at 
$2.10, of which 40m shares went to World Eagle, which was then owned by Y T 
Cheng, and 14m shares went to
Mr Ming, together raising $110m net. Sometime after that, but before 
29-Jan-2007, Mr Ming became the owner of World Eagle. We know this because on 
29-Jan-2007, World Eagle was owned by Mr Ming when it acquired shares in (guess 
what) UBS, from Cheng Yu Tung. In two off-market transactions that day, World 
Eagle
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=15645&amp;lang=EN&amp;dia=Y" target="_blank">
bought</a> 69.5m shares
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=15646&amp;lang=EN&amp;dia=Y" target="_blank">
and</a> 13.9m warrants. So, sometime between 2002 and 2007, Mr Ming acquired World Eagle 
from Mr Cheng or an intermediate owner. Looking back, on 4-Aug-2006, UBS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060807/LTN20060807030.pdf" target="_blank">
agreed</a> to issue 108m shares at $2.50 to Y T Cheng, raising $269.7m net. He later received warrants in a 1 for 
5 bonus issue to all shareholders. So part of that was sold to World Eagle, by 
then under Mr Ming's ownership.</p>
<p>As noted above, Mr Ming died on 2-Mar-2008. Obviously then, he was not in charge 
of World Eagle when it bought shares in Bio-Beauty later that year. We don't 
know who was.</p>
<h4>GGT buys Cristal</h4>
<p>On 22-May-2009, GGT
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090522/LTN20090522461.pdf" target="_blank">
agreed</a> to buy Supreme China Ltd (<strong>Supreme China</strong>, BVI) which 
owned only Cristal, from Title Best Ltd (BVI), for <strong>HK$320m</strong>, of which $160m was 
in cash, and $160m in 8% 3-year bonds initially convertible at $0.36 per share. 
The owner of the vendor was not disclosed in the announcement, but was finally 
named in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090612/LTN20090612002.pdf" target="_blank">
circular</a> as Mr Leung Hung Fai (<strong>Mr H F Leung</strong>). This was a Very 
Substantial Acquisition under the Listing Rules, so there was an accountant's 
report on Supreme China, from Hopkins. We have been unable to find any 
other information on Mr H F Leung.</p>
<p>According to the circular, Cristal has been the sole 
distributor of the &quot;Marjorie Bertagne&quot; cosmetics and skin care products 
developed and/or manufactured by GGT since 2001, with 19 shops and counters in 
HK and Macau and over 100 employees.</p>
<p>The circular showed that World Eagle paid $211.3m (the same price per share) 
for its Bio Beauty shares, so now we can tell you that <strong>overall, Cristal received 
a total of $717.7m in cash (including $506.4m from GGT) in 
return for the 30% of GCHK which cost $12m four years earlier, a gain of 
$705.7m.</strong> Supreme China paid out 
$895.9m of dividends over the 3 years to 31-Mar-2009. Mr H F Leung was the sole director and, 
presumably, the sole owner during the period. Or at least, that's the cosmetic 
appearance - but is it more than skin-deep?</p>
<p>In the year to 31-Mar-2009, Cristal bought $26.8m of cosmetics from GCHK.</p>
<p>On 25-Sep-2009, there was a change of the largest shareholder of GGT, and new 
management was installed. With the new board, the incoming Company Secretary of GGT was Mr 
<a href="../dbpub/positions.asp?p=38694">Fung Kwok 
Leung</a>. He
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100430/LTN20100430881.pdf" target="_blank">
resigned</a> effective 1-May-2010. Guess where he went? He was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100502/LTN20100502013.pdf" target="_blank">
appointed</a> CFO and Company Secretary of UBS on the same day, replacing Mr 
Lee.</p>
<p>We continue with our look at GGT under its new board in another story today,
<a href="westralian.asp">Global Green Tech goes mining</a>.</p>
<h3>Hopkins' other clients</h3>
<p>Four of the firms in this article share the same auditor, Hopkins. Our database
<a href="../dbpub/adviserships.asp?p=16944">shows</a> that it currently has only 
6 listed audit clients, including GEG, GGT, MFG and UBS. The other two are <a href="../dbpub/orgdata.asp?p=18157">Neo Telemedia Ltd</a> (<strong>Neo 
Telemedia</strong>, 8167) and <a href="../dbpub/articles.asp?p=15854">Tack Fat 
Group International Ltd</a> (<strong>Tack Fat</strong>, 0928), a company we warned the market about twice 
(in 2005 and 2007) before 
it collapsed in 2008. It appointed Hopkins on 6-Oct-2009.</p>
<p><a href="../dbpub/orgdata.asp?p=3424">
Mei Ah Entertainment Group Ltd</a> (<strong>MAEG</strong>, 0391) owned 3.9% of 
UBS when it was listed in 2001. In 2007, MAEG was one of three subscribers in a
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20070108/GLN20070108013.pdf" target="_blank">
takeover</a> of Neo Telemedia, along with <a href="../dbpub/orgdata.asp?p=826">Hanny 
Holdings Ltd</a> and <a href="../dbpub/natperson.asp?p=38744">Hoffman Ma Ho Man</a>, 
the Deputy Chairman of <a href="../dbpub/orgdata.asp?p=2924">Success Universe 
Group Ltd</a> (0487). 
Hopkins has been auditor of Neo Telemedia since 20-Sep-2005.</p>
<p>Hopkins was also the auditor of
<a href="../dbpub/orgdata.asp?p=13386">Code Agriculture Holdings Ltd</a> (<strong>Code 
Agriculture</strong>, 8153) from 15-Jun-2006 to 1-Apr-2009.&nbsp; Code 
Agriculture was listed as &quot;M21 Technology Limited&quot; on 30-Mar-2001, when it was 
29.25% owned by MAEG.</p>
<p>The MD of MAEG, Mr <a href="../dbpub/positions.asp?p=13391">Tong Hing Chi</a>, 
was an NED of UBS from its IPO until 30-Aug-2005. He was MD of Code Agriculture 
from its IPO until 31-Oct-2008. He has been Vice 
Chairman of Neo Telemedia since 1-Mar-2007.</p>
<p>In the past, Hopkins has 
been auditor of several companies we have written about, including
<a href="../dbpub/articles.asp?p=1670">Skyfame Realty (Holdings) Ltd</a> (from 
2002 to 28-Sep-2005) and <a href="../dbpub/articles.asp?p=13482">Riverhill 
Holdings Ltd</a> (from 22-Aug-2003 to 29-Nov-2004). Both companies featured in 
our &quot;Styland Network&quot; stories of 2002. This was eventually followed by 
a series of regulatory investigations and actions.</p>
<p>We deal with Code Agriculture in <a href="codeagri.asp">another story</a> 
today.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=29846">Alex So & Co</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16489">Apollo Future Mobility Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41874">Bio Beauty Group Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22593">China Everbright Water Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3855">Green Energy Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13386">Jiading International Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16944">Jonten Hopkins CPA Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3424">MEI AH ENTERTAINMENT GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18157">Neo Telemedia Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12209">Renaissance Asia Silk Road Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7329">REXCAPITAL (HONG KONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4978">STYLAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14534">Uni-Bio Science Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8344">Chan, Henry Bing Kwong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=62">Cheng, Yu Tung (1925-08-27)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12212">Choi, Woon Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=38694">Fung, Kwok Leung (1966)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45409">Ho, Yik Leung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41876">Lau, Judy</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12218">Lau, Ru Dong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17813">Lee, Goldman Pak Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40920">Leung, Stanley Kar Loon</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=57515">Liang, Michael Hui Min</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=32680">Ming, Charles Kar Fook</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29845">So, Alex Yin Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41878">Tam, Pei Qiang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=57516">Wong, Kings Kim Kwan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8681">Yip, Jerry Wai Leung (1957)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29844">Zhou, Yao Ming</a></li>
				
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