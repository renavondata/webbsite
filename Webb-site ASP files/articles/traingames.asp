
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

<script type="text/javascript">document.title="China Railway Games";</script>

	<div class="summary">In part 2 of a series, we look at how HK$16bn of market cap evaporated when bubbles around China Railway Logistics, PME and Forefront burst. Each dealt with the same purported arm of the Ministry of Railways for joint ventures in wagon-leasing, media and online ticketing, each of which failed to get started. A miriad of BVI shells with shadowy owners are involved, but at least one has exposed himself in a court case.</div>

<h2 class="center">China Railway Games<br>
<span class="headlinedate">11 June 2009</span></h2>
<p>Continuing on from our <a href="byfordbubble.asp">Byford story</a>, 
this instalment is a complicated story which we will tell in chronological 
order. Pour yourself a large cup of coffee and pay attention. It focuses on three listed companies: <a href="../dbpub/orgdata.asp?p=10787">China Railway Logistics Ltd</a> 
(<strong>CRL</strong>, 8089, formerly named &quot;Proactive Technology Holdings 
Ltd&quot;), <a href="../dbpub/orgdata.asp?p=17410">PME Group Ltd</a> (<strong>PME</strong>, 
0379)
and <a href="../dbpub/orgdata.asp?p=14229">Forefront Group Ltd</a> (<strong>Forefront</strong>, 0885), 
and the common thread to all of them is unsuccessful dealings with various 
purported tentacles of 
state-owned China Railway, including a purported HK subsidiary.</p>
<p>Each of the listed 
companies, like Byford, dealt with BVI companies with previously unheard of owners, at 
least one of whom we can show was just a stooge. The hype surrounding these 
companies caused bubbles in their stocks which later burst: at market prices, 
PME was once worth HK$5.9bn, CRL was once worth $8.3bn and Forefront $3.8bn, a 
total of $18bn. Some $16bn of that is gone now.</p>
<p>Are you sitting comfortably? Then we'll begin...</p>
<h3>China Railway Logistics</h3>
<p>On 7-Nov-06, <a href="../dbpub/positions.asp?p=11327">Mr Tsang Chi Hin</a> (<strong>C H Tsang</strong>), then Chairman, Co-founder and CEO of 
CRL, at the time a sleepy little GEM stock,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20061107/GLN20061107026.PDF">
sold</a> 22.59% of CRL to Well Support Ltd (<strong>Well Support</strong>, BVI) 
at $0.08 per share for HK$4.19m. Like many GEM stocks, it was tightly held - 
when it was listed in 2000, 10 investors held 82.2% of the public float, which 
was 20% of the company. The owner of Well Support was not named, although it 
later turned out to be the family trust of Mr Liu Yi Dong (<strong>Mr 
Liu</strong>). He did not join the board, and we know nothing about him. When trading resumed on 8-Nov-06 after 
Mr Liu's purchase, the price jumped 1100% from $0.045 to close at $0.54.</p>
<p>On 21-Nov-06, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20061121/GLN20061121016.pdf">
launched</a> a top-up placing&nbsp; of 46.4m shares (16.67% of enlarged) at 
$0.241, a 19.7% discount to market, raising $11.2m gross ($10.9m net) via <a href="../dbpub/orgdata.asp?p=16123">Kingston Securities Ltd</a> (<strong>Kingston Securities</strong>), 
exhausting the general mandate.</p>
<p>On 5-Dec-06, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20061206/GLN20061206012.pdf">
signed</a> an MOU with Shellybeach Investments Ltd (BVI, <strong>Shellybeach</strong>) 
regarding a possible acquisition of at least 51% of Eternity Profit Investments 
Ltd (BVI, <strong>Eternity Profit</strong>) from Shellybeach, making a deposit 
of $6m. Eternity Profit would form a joint venture later named &quot;Onway 
Logistics Ltd&quot; (HK, <strong>Onway</strong>) 
with <a href="../dbpub/orgdata.asp?p=49490">China Railway Investments Group 
(Hong Kong) Ltd</a> (<strong>CRIGHK</strong>, then &quot;China Railway Television Media (Hong Kong) Ltd&quot;), 
and that such joint venture would in turn form a mainland JV, namely China Railway 
Television Freight and Logistics Transport Co., Ltd. (later renamed CR Onway 
Freight Logistics and Transport Co Ltd, <strong>CR Onway</strong>) 
with <a target="_blank" href="http://www.crstv.com.cn">Guangdong China Railway Television Media Ltd</a> (PRC, <strong>GCRTM</strong>), 
to participate in the purchase of cargo trains and operation of railway 
transportation and logistics in the PRC. As far as CRL knew, CRTMHK was &quot;held 
by&quot; GCRTM (but see below). The owner of Shellybeach was not disclosed at the time.</p>
<p>On 23-Jan-07, a clutch of new directors 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070123/GLN20070123019.PDF">joined</a> the CRL board.
Among them, <a href="../dbpub/positions.asp?p=10778">Michael Koh Tat Lee</a> (<strong>Mr Koh</strong>) 
and <a href="../dbpub/positions.asp?p=15503">Lim Kwok Choi</a> (<strong>Mr 
Lim</strong>) were appointed as EDs while 
<a href="../dbpub/positions.asp?p=11656">Sunny Lok Shing Kwan</a> (<strong>Sunny Lok</strong>) was appointed as INED. </p>
<p>On 2-Feb-07, CRL sent out a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070202/GLN20070202009.pdf">
circular</a> to refresh the general issue mandate, on which the IFA was <a href="../dbpub/orgdata.asp?p=37566">Nuada Ltd</a>. 
The mandate was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070221/GLN20070221015.PDF">
approved</a> on 21-Feb-07.</p>
<p>On 15-Feb-07, CRL 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070215/GLN20070215042.pdf">revised</a> the MOU for the cargo JV, to acquire 100% of 
Eternity Profit rather than at least 51%. Onway would be 61.25% owned by Eternity 
Profit and 38.75% by CRIGHK. CR Onway would be 80% owned by Onway, 16% by GCRTM 
and 4% by Beijing Run Tong Transportation Consulting Co Ltd (<strong>BRTTC</strong>). </p>
<p>On 12-Mar-07, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070322/GLN20070322024.pdf">
converted</a> the MOU into an agreement to acquire Eternity Profit for 
HK$681.45m, of which $6m was the deposit and the rest satisfied by issuing 95m 
shares to Shellybeach at $7.11 per share. Eternity Profit had equity of just 
HK$0.1m at 31-Mar-07. CRL also launched a top-up placing of 55m shares at $7.11 
via <a href="../dbpub/orgdata.asp?p=30230">CCB International Capital Ltd</a> (<strong>CCBI</strong>), 
raising $391m gross ($383m net), almost exhausting the general mandate. The placing was completed on 26-Mar-07. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070327/GLN20070327045.pdf">
announcement</a> stated that 11m shares went to <a href="../dbpub/officers.asp?p=37583">AT Asset Management (Asia-Pacific) Ltd</a>, 
the short-lived HK office of
<a target="_blank" href="http://www.alliancetrust.co.uk/">Alliance Trust plc</a>, 
and that 44m shares were placed to Bear Stearns Asia Ltd. However, disclosures show that 
22m shares
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=61093&amp;lang=EN&amp;dia=Y">
went</a> to Gandahara Master Fund Ltd and 22m shares
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=60286&amp;lang=ENdia=Y">
went</a> to funds run by Indus Capital Partners LLC. Bear Stearns either never 
had, or never filed, a discloseable interest - it was probably just a broker in 
the deal.</p>
<p>Shellybeach would receive 22.18% of the enlarged capital of CRL. The announcement 
stated that GCRTM owned only 51% of CRTMHK, and the other 49% was owned by 
Pacific Telecom and Networks Limited (<strong>PTNet</strong>, BVI), an &quot;independent third party&quot;. The 
owner of that was not disclosed, but whoever it was stood to gain substantially 
from the effective carried interest of 18.99% in Onway. As for Shellybeach, it 
was owned by Cheung Yu Ching (<strong>Ms Cheung</strong>). We know nothing about her, and she did not join 
the board of CRL. She remains in the shadows with Mr Liu.</p>
<p>Onway would contribute RMB200m to CR Onway for its 80% stake. GCRTM and BRTTC 
had purportedly contributed RMB50m of capital for their 20% stake, although this was 
possibly not all cash. </p>
<h3>Who is PTNET?</h3>
<p>Strangely for a purported telecom and network company, we could not find any 
web site for PTNet. The only online reference we can find to PTNet is an
<a target="_blank" href="http://www.trlabs.ca/trlabs/about/mediaroom/news/20060117.html">
announcement</a> by Canadian research network TRLabs on 17-Jan-06 that it had 
agreed with <a target="_blank" href="http://www.crstv.com.cn/">China Railway Television Media Co Ltd</a> (<strong>CRSTV</strong>) and PTNet to develop and 
implement a prototype rail car system to provide passengers in trains and 
stations with access to TV, videos, broadband wireless internet and related 
services. PTNet's MD was named &quot;Stephen Lai&quot;, and the MD of CRSTV was 
named as &quot;Wang Jing&quot; - whose name comes up later in this article as 
director of CRIGHK. The project was mentioned in TRLabs'
<a target="_blank" href="http://www.trlabs.ca/trlabs/acrobat/2006AnnualReport.pdf">
2006 annual review</a>, but not after that. Probably best forgotten, eh?</p>
<h3>Now we introduce PME again</h3>
<p>On 2-Apr-07, PME, then a sleepy little industrial stock,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070403/LTN20070403061.PDF">
launched</a> a placing via <a href="../dbpub/orgdata.asp?p=14367">Get Nice 
Securities Ltd</a> of 191.6m new shares (16.67% of enlarged) at $0.172 per 
share, a 19.6% discount to market, raising $32.95m gross ($32.13m net). The 
placing was completed on 16-Apr-07. Meanwhile on 12-Apr-07, PME
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070416/LTN20070416047.pdf">
launched</a> a placing via Kingston Securities of unlisted 12-month warrants to 
subscribe 220m shares at $0.25 per share, for $0.046 per 
warrant, raising $10.12m gross ($9.82m net). The exercise price 
was a 26.5% discount to the market price of $0.34. The warrants were issued on 
20-Jun-07. 150m warrants were exercised by 30-Jun-07 and the rest in Jul-07, 
raising $55m.</p>
<h3>PowerPoint presentation</h3>
<p>During April 2007, a PowerPoint presentation was circulating in the market 
which clearly related to CRL's cargo deal, although it was described as &quot;Hong 
Kong Listco&quot; or &quot;XYZ Company Limited&quot; and was titled &quot;Supplementary Information 
on Project Everbright&quot;, presumably the codename for the project. It's not clear 
who produced it, although the author in the document properties is a &quot;William 
Lee&quot;. The presentation described in detail the financial plan, claiming that the 
payback period from buying and leasing the cargo wagons would be about 1.1 years 
(before funding costs and tax) - pretty incredible for an asset that should last 
for many years, perhaps decades. It also claimed a &quot;de facto non-competition 
undertaking from [Ministry of Railways] for 50 years.&quot;</p>
<p>There's enough information on slides 11 and 12 to produce a profit forecast. 
We arranged for the presentation to be sent to the Stock Exchange Listing 
Division, asking why such specific information had not been published. Surely 
the public had a right to know - so
<a target="_blank" href="../codocs/Proactive%20Technology%20(8089.HK)%204.23-27.07.pdf">
click here to read it</a>. You will notice on page 17 and 18 the claim that 
CRIGHK was &quot;a wholly-owned subsidiary and window company of [GCRTM]&quot;. That was 
false - as noted above, 49% of CRIGHK was owned by PTNet, whoever they are. It 
also claimed that GCRTM is a wholly-owned subsidiary and window company of the
<a target="_blank" href="http://www.china-mor.gov.cn/">Ministry of Railways</a>.</p>
<p>On 20-Apr-07 CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070423/GLN20070423013.pdf">
announced</a> that the Beijing Municipal Bureau of Commerce had approved CR 
Onway has a Chinese-foreign cooperative joint venture on 9-Apr-07. You will see 
later why this was significant.</p>
<p>The acquisition
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070525/GLN20070525003.pdf">
circular</a> was dated 25-May-07. It contained a discounted cash flow 
valuation report on CR Onway by <a href="../dbpub/orgdata.asp?p=16536">
Grant Sherman Appraisal Ltd</a>, putting the value at RM8,047.4m, implying that 
the 49% economic interest acquired by CRL was worth $3,943m.</p>
<p>On 29-May-07, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070529/GLN20070529030.pdf">
announced</a> that the Self-owned Wagon Management Office of the Harbin Railway 
Bureau &quot;acknowledged&quot; that CR Onway was qualified to operate the business of 
railway transportation and had complied with all necessary application and 
documentation requirements for the purchase of 100 tanker wagons.</p>
<p>On 4-Jun-07, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070605/GLN20070605002.pdf">
announced</a> another top-up placing, this time of 49.766m shares (12.99% of enlarged) 
in two tranches at $13 via CCBI, raising $647m gross ($630m net). This was 
completed on 13-Jun-07, whereupon CRL immediately launched
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070614/GLN20070614001.pdf">
another top-up placing</a> of 11.148m shares at $14 each via CCBI raising $156m gross 
($155m net), which was completed on 25-Jun-07. That day, the stock closed at an 
all-time daily high of $19.44, valuing CRL at $7,665m.</p>
<p>CRL had almost exhausted the general issue mandate granted at the 
AGM on 30-Mar-07, so on 20-Jul-07, there was another
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070719/GLN20070719048.pdf">
circular</a> to refresh the mandate, and this time the IFA was 
<a href="../dbpub/orgdata.asp?p=32441">Veda Capital Ltd</a> (<strong>Veda 
Capital</strong>). The 
mandate was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070809/GLN20070809057.pdf">
approved</a> on 9-Aug-07.</p>
<p>We pause to remind you that the Responsible Officers of Veda Capital are 
Julisa Fong Man, who was Chairman of Byford from 7-Sep-07 to 23-Apr-08, and Hans 
Wong Hin Shek, who was once a director of Kingston Corporate Finance Ltd and is 
still an ED of <a href="../dbpub/articles.asp?p=4977">Golden Resorts Group 
Ltd</a> (<strong>Golden Resorts</strong>, 1031), the Macau chip controlled by Pollyanna Chu Li Yuet Wah, who also 
controls Kingston group.</p>
<p>On 8-Jun-07, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070611/GLN20070611012.pdf">
announced</a> that Onway had injected $100m into its 80%-owned mainland 
subsidiary, CR Onway.</p>
<p>On 20-Jun-07, the CRL acquisition of Eternity Profit was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070620/GLN20070620016.pdf">
approved</a> at an SGM. As of 30-Jun-07, the acquisition by CRL had not yet been completed, but the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070810/GLN20070810027.pdf">
interim report</a> shows that it had made a &quot;deposit of the capital contribution 
for [CR Onway]&quot; of HK$201.02m.</p>
<h3>PME buys into CRL</h3>
<p>On 25-Jun-07, the day the second CRL top-up placing completed and Mr Liu's 
shareholding was replenished, PME conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070704/LTN20070704423.pdf">
agreed</a> to buy his entire holding of 52.42m shares (13.29%) of CRL at $17.72 
for HK$929m, paid for by issuing 282m shares (17.8% of enlarged capital) of PME 
at $1.10 and $618.6m of 8% 3-year bonds convertible at $1.10 per PME share. This 
was the subject of a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070822/LTN20070822022.pdf">
circular</a> dated 22-Aug-07 which included another general issue mandate on 
which the IFA to PME was again Veda Capital.</p>
<p>As you will see below, this purchase never completed, but PME bought shares 
in CRL from Shellybeach instead.</p>
<h3>PME's deal with CRIGHK</h3>
<p>On 5-Jul-07, PME
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070708/LTN20070708014.pdf">
launched</a> a placing via CCBI of 229m shares (14.33% of enlarged) at $2.49, a 
19.68% discount to market, to raise $570.2m gross ($563m net) for &quot;general 
working capital&quot;, although it went on to say that it could be used to &quot;diversify 
into the multi-media advertising business&quot;. PME had acquired 100% of Best Time Far East Ltd (HK, <strong>Best Time</strong>) from 
a Mr Tan Hong Wen, for a 
nominal HK$100. We cannot find any trace of Mr Tan Hong Wen. The announcement 
stated:</p>
<blockquote>&quot;On 3 April 2007, Best Time entered into a co-operation 
agreement...with [CRIGHK], an associate of the Ministry of Railway, PRC for the development and application of multi-media 
entertainment and advertising business in the railway stations as managed by 
CRIGHK in PRC and provision of such services to other passenger trains 
and wagons. [CRIGHK] held the operation and management rights (&quot;Rights&quot;) of all 
media related business (&quot;Business&quot;) in the railway stations managed by 
[CRIGHK]...for a period of 10 years. Best Time and [CRIGHK] will form a joint 
venture for the operation of the Business. [CRIGHK] shall contribute the Rights 
to the new joint venture...&quot;</blockquote>
<p>That sounds like a lot to be giving up for just $100. Note the timing: the 
agreement between Best Time and CRIGHK was signed on 3-Apr-07, just a day after PME 
started pumping out warrants and shares in the two placings via Get Nice and 
Kingston Securities at escalating 
prices. Could it be that those who received the warrants and shares knew that this 
purported media 
deal was in the pipeline?</p>
<p>The Best Time deal was not quite that simple. Note 34 of PME's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080429/LTN20080429473.pdf">
2007 annual report</a> shows that Best Time had made a loan of $25m to an 
unnamed party, which it had funded by borrowing from an unnamed party. On 
31-Dec-07, the last day of the year, PME sold Peaknice Investment Ltd, which 
owned 100% of Best Time and 61% of Railway Media (China) Co Ltd, to a third 
party for $8,000, booking a loss of $186k. That neatly avoids subjecting Best 
Time's assets to any auditor's scrutiny. The railway media deal was not 
mentioned in the narrative of the annual report. Too embarrassing. </p>
<p>The placing was completed on 23-Jul-07. That day, PME shares closed at an 
all-time daily high of $3.73, valuing PME at <strong>$5,962m</strong>.</p>
<p>The 2007 year-end balance sheet showed &quot;deposits placed with a financial 
institution&quot; (probably a broker) &quot;for trading in securities&quot;, of HK$200.4m, and 
bank deposits of $165m. What they did with all that money will be covered in a 
future article.</p>
<h3>Forefront and CRIGHK</h3>
<p>China Railway's various purported subsidiaries were apparently dealing with multiple 
listed shell companies simultaneously. We've already told you about PME and CRL. 
On 24-Jul-07, Forefront
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070724/LTN20070724396.pdf">
said</a> that it was negotiating &quot;with an independent third party regarding a 
possible investment in a mass transportation ticketing project&quot;. On 25-Jul-07 
the stock closed at a record daily high of $2.55, valuing Forefront at <strong>
$3,761m</strong>.</p>
<p>On 
7-Aug-07, Forefront
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070807/LTN20070807388.pdf">
signed</a> a non-binding MOU with Mr Tsang Kai Ming (<strong>K M Tsang</strong>) 
for the purchase, for $80m in cash, of Natural Harvest Investments Ltd (BVI,
<strong>Natural Harvest</strong>) which in turn owned 61.25% of Talenteam 
Development Ltd (BVI, <strong>Talenteam</strong>) which in turn had agreed to 
subscribe 80% of China Railway Information and Technology Limited (<strong>CRIT</strong>), 
which would be a newly-established sino-foreign equity joint venture &quot;to operate 
and to own or derive economic benefits in the China Railway Web Portal&quot; at
<a target="_blank" href="http://www.tieliu.com.cn/">www.tieliu.com.cn</a>, 
including online ticketing.</p>
<h3>Who is K M Tsang?</h3>
<p>Forefront was and is in the orbit of what we will call the &quot;Chung Nam 
Network&quot;, the full extent of which this article has no room for. We know nothing 
about K M Tsang, except that his name has come up in connection with one other 
company in the Chung Nam Network. On 8-Dec-06 he acquired a loan of HK$5m which 
was made on 8-Nov-07 by Hansom Finance Ltd&nbsp; (a 100% subsidiary of
<a href="../dbpub/orgdata.asp?p=4997">Freeman Corp Ltd</a>, <strong>Freeman</strong>, 
0279) to <a href="../dbpub/orgdata.asp?p=3107">Goldwiz Holdings Ltd</a> (<strong>Goldwiz</strong>, 
0586, delisted), and on 16-Mar-07 he issued a writ for repayment. Goldwiz
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070328/ltn20070328067.pdf">
announced</a> this on 27-Mar-07, also saying that Sunderland Properties Ltd (<strong>Sunderland</strong>) 
had served a winding-up petition in relation to a deposit of $10m which it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070307/LTN20070307027.pdf">
had advanced</a> on 19-Jun-06 as earnest money for a possible rescue of Goldwiz. 
According to other disclosures, Sunderland was wholly-owned by
<a href="../dbpub/natarts.asp?p=20431">Eugene Chuang Yue Chien</a> (<strong>Eugene 
Chuang</strong>), who at various times has owned and is closely associated with
<a href="../dbpub/orgdata.asp?p=12651">Chung Nam Securities Ltd</a> (<strong>Chung 
Nam Securities</strong>). On 
22-May-06, a month before the earnest money was paid, Goldwiz had signed a 
margin client's agreement with Chung Nam Securities.</p>
<p>Earlier, on 14-Dec-06, Goldwiz said
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061220/LTN20061220150.pdf">
receivers had been appointed</a> pursuant to the terms of a debenture (the 
amount was $75m) for a secured loan to Goldwiz from CUPAC Finance Limited, 
another company in the Chung Nam Network.</p>
<p>Incidentally, both Chung Nam Securities and Kingston Securities featured in 
the recent PCCW vote-splitting court case.</p>
<p>As we will show shortly, the mysterious K M Tsang might not have been the 
true owner of Natural Harvest.</p>
<h3>Sour JV</h3>
<p>Anyway, back to Forefront and CRIGHK. On 21-Aug-07, the MOU became an 
agreement, and the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070821/ltn20070821407.pdf">
announcement</a> disclosed that the rest (38.75%) of Talenteam was owned by 
CRIGHK, while China Railway Television Media (Mainland) Limited (<strong>CRTMM</strong>) 
owned the rest (20%) of CRIT, and that CRIGHK and CRTMM had the same ultimate 
shareholder. This ownership structure, an 80:20 mainland JV and a 61.25:38.75 HK 
JV, is identical to that used in the CRL/ Onway/ CR Onway deal. CRIT would have 
$200m of registered capital, just like CR Onway. CRIT had $50m of paid-up 
capital and Talenteam was liable for a further $150m.</p>
<p>$20m was paid to K M Tsang as a refundable deposit, and the 
remaining $60m was due on completion, which occurred on 7-Sep-07. CRIGHK was 
also (or at least appeared to be) a shareholder in Forefront - it had
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=73191&amp;lang=EN&amp;dia=Y">
increased</a> its holding from 4.75% to 6.43% on 15-Aug-07 and
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=73698&amp;lang=EN&amp;dia=Y">
to 7.84%</a> on 22-Aug-07, in circumstances which we will describe later in this 
article.</p>
<p>It didn't take long for Forefront's deal to go sour, if indeed it wasn't sour 
at the outset. In its 2007
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080427/LTN20080427074.pdf">
results</a> announced on 25-Apr-08, it wrote:</p>
<blockquote>&quot;After the completion of the sale and purchase agreement, the 
PRC partner refused to provide information of the financing positions, the 
situation of the injected funds as well as the status of the web portal 
projects. On the other hand, they requested immediate capital injection of an 
additional capital contribution HK$150 million pursuant to a joint venture 
agreement. The PRC partner has also commenced arbitration proceedings in PRC on 
the capital injection matter. The Group has obtained a PRC legal opinion and 
believes that the probability of being successfully claimed by the PRC partner 
is remote. Legal action against the PRC partner for redress by the Group has not 
been commenced as the Group is awaiting the result of a <strong>similar action 
by an independent party</strong> against the PRC partner. In view of the PRC 
legal opinion and actual situation, the Board made a full impairment on the 
investment.&quot; (emphasis added)</blockquote>
<p>They also said that a director had reported the case to the HK Commercial 
Crime Bureau of the police in November 2007. You might wonder why they didn't 
disclose this earlier than 25-Apr-08, five months later. Surely it was 
price-sensitive information. Forefront was merrily issuing shares in a rights 
issue (underwritten by Chung Nam Securities) and a placing (via Get Nice 
Securities Ltd) in between the failure of the joint venture and the 
disclosure of that failure. In the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080919/LTN20080919668.pdf">
interim results</a> published on 19-Sep-08, Forefront went further, saying of 
its PRC partner:</p>
<blockquote>&quot;They even refused to account for the whereabouts of the 
initial capital contribution of HK$55 million...In the opinion of the directors, 
the PRC partner was a fraudster...The Company's indirect non wholly-owned 
subsidiary, [Talenteam], received notification dated 4 July 2008 from China 
International Economic and Trade Arbitration Commission regarding the withdrawal 
of such arbitration proceedings from the PRC partner&quot;</blockquote>
<p>Do they protest too much?</p>
<h3>Eugene Chuang, CRIGHK and Forefront</h3>
<p>Now, what was that &quot;similar action by an independent party&quot;? We think they 
must be referring to
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=62931&amp;currpage=T">
HCA2432/2007</a>, in which Capital Union Inc (<strong>Capital Union</strong>) 
sued CRIGHK, and applied for &quot;summary judgement&quot; (which basically means a 
judgement for the plaintiff without trial of the issues, if the case has no realistic defence). The &quot;principal shareholder&quot; of Capital 
Union was Eugene Chuang. The claim was based on two loans made by Capital Union 
to CIGHK dated 15-Aug-07 for $100m and 23-Aug-07 for $50m. The loans were used 
to buy shares in Forefront, but there were disputes between the parties as to 
whether the loans were binding on CRIGHK or whether they were genuine loans at 
all. CRIGHK made 2 defences:</p>
<ol>
	<li>It said that under its memorandum and articles of association, it was 
	required to have at least 2 directors, and Eugene Chuang knew that it only 
	had one, therefore its purported board minutes authorising the loan were 
	invalid and so was the loan.</li>
	<li>It said that the loans &quot;were sham transactions which were intended to 
	disguise the fact that...Mr Chuang was the true investor in the shares of 
	Forefront that were acquired using the proceeds of the purported loans&quot;.</li>
</ol>
<p>To support point 1, the defendant filed an affirmation by a current director 
of CRIGHK that he was not a director at the time of the loans, on the basis of 
information supplied by Mr Wang Jing, who claimed to be the only director. The 
judge wrote:</p>
<blockquote>&quot;Wang was said to have been unable to make an affirmation 
because <strong>he was unable to leave the Mainland to come to Hong Kong, having been 
prevented by authorities there from doing so</strong>.&quot; (emphasis added)</blockquote>
<p>So Mr Wang Jing apparently is or was being detained or restrained up North. Now here's where 
things get interesting, in paragraph 7 of the judgment:</p>
<blockquote>&quot;According to the Defendant [CRIGHK], earlier in 2007, it had entered 
into a joint venture agreement with another company controlled by Mr Chuang 
(known as Natural Harvest Investment Limited ("Natural Harvest")), to develop a 
platform for the electronic sale of railway tickets in the Mainland through the 
internet. It was said that some HK$500,000,000 was to be invested in the joint 
venture. The joint venture does not, however, appear to have worked out, and it 
appears that the Defendant has commenced arbitration proceedings on the Mainland 
in respect of the joint venture.</blockquote>
<blockquote><strong>Mr Chuang agrees that there was such a joint venture. He says 
that after entering into it, he decided to transfer the shares of Natural 
Harvest to Forefront. This was done on about 7 August 2007</strong>.&quot; 
(emphasis added)</blockquote>
<p>Hold on a minute - by his own admission in court, Mr Chuang controlled Natural Harvest - and we all thought that it was K M Tsang who sold Natural Harvest to 
Forefront. Assuming the judgment is accurate, it seems that Mr K M Tsang was just a 
&quot;front&quot; or stooge for Eugene Chuang. The date matches: 7-Aug-07 was the date of the MOU 
with K M Tsang. Shareholders have been misled, big-time. The judgment 
continues:</p>
<blockquote>&quot;Mr Chuang says that it was just after this that he was 
approached by Mr Wang, who said that the Defendant wished to purchase shares in 
Forefront, as it was expected that such shares would rise in value in the longer 
term, given the injection of Natural Harvest (and thus an interest in the joint 
venture) into Forefront.&nbsp; He says that Mr Wang told him that the Defendant 
did not have funds available for this, and that it wished to borrow the 
necessary funds to enable it to do so.&nbsp; Mr Chuang says that he agreed that 
the Plaintiff would lend the Defendant a total of HK$150,000,000 to purchase 
shares in Forefront, and that this was the reason for the loans which are the 
subject of these proceedings.&nbsp; Mr Chuang also says that the loans were 
insufficient to cover the cost of the shares that were purchased, but that the 
balance of the cost of the shares was made available to the Defendant by way of 
margin facilities provided by Chung Nam Securities Limited ("Chung Nam"), a 
securities dealing company of which he was the major shareholder.&nbsp; He says 
that Mr Wang gave him authority to purchase Forefront shares on behalf of the 
Defendant, using the proceeds of the loans, and that he duly did so, acquiring a 
total of 140 million shares in Forefront for the Defendant on 14, 15 and 22 
August 2007, at a total consideration of HK$204,135,963.38 using the loan from 
the Plaintiff and the margin facilities from Chung Nam&quot;</blockquote>
<p>This sounds implausible to us, because in effect, CRIGHK would be getting a 
100% loan from Mr Chuang's companies, without any collateral, against a small-cap stock which, even on a 
good day, you could not borrow more than 50% for. But we continue with the 
judgment:</p>
<blockquote>&quot;The Defendant's version of events is very different.&nbsp; It 
says that it was in fact Mr Chuang who wanted to acquire shares in Forefront, 
and that he suggested that instead of doing so himself, or through companies 
controlled by him, he should do so using the name of the Defendant.&nbsp; He 
explained to Mr Wang that by doing this, it would create the impression that a 
substantial Mainland company associated with the Ministry of Railways was 
acquiring a significant stake in Forefront, which had just acquired the 
shareholding in Natural Harvest and thus an interest in the joint venture.&nbsp; 
This would be likely to cause the value of the Forefront shares to rise, to Mr 
Chuang's advantage.&nbsp; The Defendant says that Mr Wang reluctantly agreed to 
this, as he did not want to jeopardise the substantial investment that was to be 
made in the joint venture.&quot;</blockquote>
<p>Now that sounds much more plausible - using a big name to promote the stock. 
Then the judge finds other inconsistencies in Mr Chuang's version of events:</p>
<blockquote>
	<p>&quot;It is also to be noted that the 1 August 2007 minutes [of 
	CRIGHK] have certain other curious features:-</p>
	<p>(1) They refer to a copy of the loan agreement - however, on Mr&nbsp;Chuang's 
	case, he was not approached for the loan until 7&nbsp;August 2007.&nbsp; It is 
	odd that the loan agreements should have been available at board meetings 
	which purportedly took place some days before that.</p>
	<p>(2) They suggest that the board meeting in question took place in Hong 
	Kong, at an address which is in the same building as (and just one floor 
	below) the address of Chung Nam, when Mr Wang has said that he was not in 
	fact in Hong Kong that day.&quot;</p>
</blockquote>
<p>Oops! The judge concluded:</p>
<blockquote>&quot;there do appear to be a number of features of the evidence 
that call into question the true nature of this transaction, which would appear 
to be best investigated at a trial of these proceedings&quot;</blockquote>
<p>The judge therefore granted unconditional leave for CRIGHK to defend the 
action. As far as we know, the case has not yet been heard. Incidentally, the 
solicitors for the plaintiff were Andrew Lam &amp; Co - the firm founded by
<a href="../dbpub/natarts.asp?p=5979">Andrew Lam Ping Cheung</a>, the lawyer 
convicted in the Semtech case, who was formerly an independent non-executive 
director of a number of companies in the Chung Nam Network.</p>
<h3>Back to CRL</h3>
<p>After that detour to show you CRIGHK's other failed deals with PME and 
Forefront, we return to the cargo 
deal with CRL.</p>
<p>On 12-Jul-07 the acquisition by CRL of Eternity Profit was completed, and the 
95m shares were issued to Shellybeach. The share price that day was 
$17, valuing the new shares at $1,615m and the entire company at a whopping 
<strong>$8,318m</strong>.</p>
<p>On 2-Aug-07, CR Onway Freight Logistics and Transport Co Ltd (<strong>CR 
Onway</strong>)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070808/GLN20070808076.pdf">
signed</a> a non-binding letter of intent with China Shenhua Rolling Stock 
Branch for the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070808/GLN20070808076.pdf">
leasing</a> of self-owned wagon trains operated by CR Onway.</p>
<p>On 14-Sep-07, PME
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070914/LTN20070914578.pdf">
announced</a> that the EGM to approve the purchase of Mr Liu's stake in CRL had 
been adjourned, in view of the slump in the CRL share price to $11.02.</p>
<p>As you will recall, Shellybeach, owned by they mysterious Ms Cheung, was the 
vendor of the cargo project to CRL, and received 95m CRL shares in return. On 
29-Oct-07, according to dealing disclosures, Ms Cheung
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=21383&amp;lang=EN&amp;dia=Y">
sold</a> Shellybeach to a company owned by Mr Chan Foo Wing (<strong>Mr Chan</strong>), 
for $7.20 per CRL share, making him a 19.41% shareholder of CRL. Mr Chan has not 
served on any HK-listed boards and didn't join CRL's either. The only trace of 
him we can find is that on 18-Oct-02 (before the disclosure threshold dropped 
from 10% to 5%) he
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=160&amp;lang=EN&amp;dia=Y">
increased</a> his holding in Same Time Holdings Ltd (0451) from 9.96% to 10.12%, 
becoming a discloseable shareholder. His shareholding was consolidated 20:1 and 
gradually diluted to 5.62% in following years, although he did not file any more 
disclosures until he
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=29820&amp;lang=EN&amp;dia=Y">
sold it</a> by accepting a general offer on 26-Mar-09. </p>
<p>On 17-Dec-07, PME
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071218/LTN20071218381.pdf">
agreed</a> to buy 71m shares (14.51%) of CRL at $4 each from Shellybeach for 
$284m in cash. The deal
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071219/LTN20071219424.pdf">
completed</a> 2 days later. Meanwhile, discussions purportedly continued with Mr Liu on 
amending the deal to buy his shares, and the deadline for fulfillment was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071227/LTN20071227196.pdf">
extended</a> to 30-Jun-08 and then
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080702/LTN20080702446.pdf">
terminated</a>.</p>
<p>On 20-Dec-07, <a href="../dbpub/natperson.asp?p=4379">Albert Ha Shu Tong</a> 
(<strong>Mr Ha</strong>) was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20071220/GLN20071220046.pdf">
appointed</a> as CEO of CRL. He knew CRL's ED Mr Koh. Mr Ha had taken over from 
Mr Koh as Chairman of <a href="../dbpub/orgdata.asp?p=14791">M Dream Inworld Ltd</a> (8100) on 13-Apr-07, and both were 
still serving on that board when Mr Ha joined CRL.</p>
<p>On 5-Feb-08, the first visible signs of trouble emerged. CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080205/GLN20080205059.pdf">
announced</a> that according to a media report, CR Onway had issued a writ of 
summons in HK against the financial controller of CR Onway, alleging 
misappropriation of RMB73m. As far as the directors of CRL were aware, there had 
been no such loss. Until the media report CRL was not aware of the proceedings, 
which had not been approved by the board of CR Onway &quot;and may be connected with 
efforts by [CRL] to effect changes to the management of CR Onway&quot;. </p>
<p>On 28-Feb-08, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080228/GLN20080228029.pdf">
announced</a> further details of the trouble at CR Onway. CRL owned 61.25% of 
Onway, which had contributed $151.98m into CR Onway, of which Onway supposedly 
owned 80%. CRL said that &quot;in or around August 2007&quot; it had come to CRL's 
attention that the JV agreement approved by the Ministry of Commerce (<strong>MoC</strong>) 
on 9-Apr-07 was not &quot;in the terms that [CRL] had understood&quot;. CRL had been 
operating on the assumption that Onway controlled the board of CR Onway with a 
right to appoint 4 out of 7 directors, including the Chairman, but the approved 
JV agreement only gave them 3 out of 7, and GCRTM had the right to appoint the 
Chairman. This begs the obvious question: <strong>if CRL knew about this problem 
in or around August 2007, why did it take them 6 months to announce it? Surely 
it was price-sensitive information. </strong>CRL also said that although the MoC 
had approved conversion of CR Onway into a China-foreign cooperative joint 
venture on 9-Apr-07, CR Onway &quot;had not yet been formally converted as such&quot; and 
therefore Onway was not registered as a shareholder of CR Onway.</p>
<p>On 10-Mar-08, Mr Ha
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080311/GLN20080311064.pdf">
resigned</a>, Mr Lim became Chairman, and Sunny Lok was changed from INED to ED.</p>
<p>On 12-Mar-08, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080313/GLN20080313003.pdf">
lost</a> its 4th Qualified Accountant in as many months, Caroline Siu, following 
the resignation of Mr Wong Yiu Hung
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080204/GLN20080204060.pdf">
on 1-Feb-08</a>, Ms Wong Han
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20071213/GLN20071213027.pdf">
on 13-Dec-07</a>, Ivan Li Kam Cheung
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20071112/GLN20071112113.pdf">
on 12-Nov-07</a>. Happily for companies like CRL, but not for investors in HK, 
the Stock Exchange abolished the requirement that listed companies should have a 
qualified accountant on 1-Jan-09.</p>
<p>On 28-Mar-08, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080330/GLN20080330076.pdf">
announced</a> its 2007 results, losing $1,691m, including an impairment of 
$1,622m of goodwill on the acquisition of Eternity Profit. Notably for this 
outstanding performance, Mr Koh was awarded a discretionary bonus of $6m on top 
of his 2007 salary of $2.92m. CRL had advanced $200m to its 61.25% subsidiary 
Onway, which had in turn had advanced $151.98m to CR Onway, and this was 
accounted for as a deposit for acquisition. CRL said it had formed a <strong>
Special Committee</strong> to review the circumstances surrounding the 
acquisition and identify a strategy to protect CRL's interests in CR Onway. The 
committee comprised C H Tsang, <a href="../dbpub/natperson.asp?p=8067">Lawrence Lok Yuen Ming</a> (<strong>Lawrence Lok</strong>, described as &quot;the assistant to the Chairman&quot;) and Mr 
Leung Ming Fai, the latest qualified accountant appointed 3 days earlier.</p>
<h4>About Lawrence Lok Yuen Ming</h4>
<p>Lawrence Lok and Sunny Lok were both once directors of a firm called
<a href="../dbpub/officers.asp?p=16636">CSI Investment Management Limited</a>. 
We don't know whether they are related. Lawrence Lok was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200412/03/1203068.htm">
appointed</a> on 3-Dec-04 to sit on an insider dealing tribunal case, but he 
resigned on 18-Jan-05 &quot;prompted by matters unrelated to either the tribunal or 
the present case&quot;.</p>
<p>What matters could those be? Could it have anything to do with the fact that 
he
<a target="_blank" href="http://www.prnewswire.com/cgi-bin/stories.pl?ACCT=104&amp;STORY=/www/story/07-11-2005/0004064696&amp;EDATE=">
was once Finance Director</a> of US-traded China Energy Savings Technology, Inc 
(<strong>CESV</strong>)? This stock was suspended from trading on Nasdaq by the 
US SEC on 19-May-06. On 4-Dec-06 the SEC
<a target="_blank" href="http://www.sec.gov/litigation/litreleases/2006/lr19933.htm">
filed fraud charges</a> against CESV, &quot;alleging that they orchestrated an 
elaborate stock manipulation scheme&quot;. Lawrence Lok was not named in the action. 
He was finance director from 1-Jul-05 until 28-Apr-06 and was named in class 
actions, which were later
<a target="_blank" href="http://securities.stanford.edu/1036/CESV_01/">abandoned</a>. 
The SEC's interest may have been triggered by our article
<a href="starway.asp">Golden Resorts and CESV</a> (8-May-05), which 
related to a transaction involving the same asset as one with Golden Resorts, which, 
as we noted earlier, is controlled by the same person as Kingston Securities.</p>
<p>Lawrence Lok also made a guest appearance in a 
<a target="_blank" href="http://www.sfat.gov.hk/english/determination/AN-4-2005-Reasons%20for%20Determination.pdf">Securities and Futures Appeal 
Tribunal case</a> involving a representative of Kingston Securities. Apparently:</p>
<blockquote>&quot;This gentleman, Lawrence Lok Yuen Ming, had introduced 
Codebank...to Kingston Securities, which thereafter had acted as the lead 
manager/underwriter for the Codebank listing&quot;</blockquote>
<p>Readers may recall that <a href="../dbpub/articles.asp?p=15091">Codebank 
Ltd</a> was a horrid little GEM company which still holds the record for the youngest infant 
mortality on GEM after a chunk of its IPO proceeds went missing. It was listed on 21-Dec-01 and last traded on 13-May-02, just 
143 days old.</p>
<h3>CR Onway's bank deposits frozen</h3>
<p>On 1-Sep-08, Eternity Profit
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080911/GLN20080911019.pdf">
received</a> a notice from CRIGHK that a mainland court judgment (the court 
name was not translated) was handed down upon CR Onway to freeze and set aside 
the bank deposits of CR Onway in the total amount of RMB131m (HK$149m).</p>
<blockquote>&quot;Based on the copy of the Judgement Notice received by [CRL], 
it appears that the Judgement Notice was made pursuant to the claim of a company 
known as [no translation provided] (the &quot;Judgement Applicant&quot;) against [CR 
Onway] allegedly relating to a sale and purchase agreement in relation to a 
property...and a settlement order...has been granted by the Court in favour of 
the Judgement Applicant for [CR Onway] to pay for some settlement&quot;</blockquote>
<p>So it appears that CR Onway tried to buy property with some unspecified 
amount of the cash injected by Onway, which in turn was provided entirely by 
CRL, even though it only owned 61.25% of Onway which owned 80% of CR Onway. A 
later
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/1105/GLN20081105001.pdf" target="_blank">announcement</a> 
on 4-Nov-2008 also stated:</p>
<blockquote>&quot;The Special Committee is also investigating whether GCRTM and 
BRTTC are subsidiaries of the Ministry of Railways of the PRC or not.&quot;</blockquote>
<p>This is rather mind-boggling - the implication is that they now suspect they 
were dealing with bogus counterparties. It's the sort of thing that you should 
normally cover in day 1 of due diligence before making an acquisition. Obviously 
if GCRTM was not a subsidiary of the Ministry of Railways, then neither was 
CRIGHK - but that would also mean that Forefront and PME had been dealing with a 
phantom too. Is it really possible that none of them was aware of that? Or is it 
more likely that GCRTM and CRIGHK are genuine subsidiaries of China Railway? You 
decide.</p>
<h3>CRL disposes of Eternity Profit at a loss</h3>
<p>On 13-Oct-08, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081105/GLN20081105001.pdf">
agreed</a> to sell Eternity Profit to Portstar Enterprises Ltd (BVI, <strong>
Portstar</strong>) for $6.095m (the investment cost), and also agreed to sell to 
Portstar the debt due from Eternity Profit (which had a face value of $151.98m 
at 30-Aug-08) for $135m for the shareholder loans, which had a face value of 
$151.98m at 30-Aug-08. The sale of the debt was conditional on the mainland 
court's freezing order against CR Onway's bank deposits being lifted. Notably 
the completions of the two sales were not interconditional, so Portstar could 
complete the share purchase while leaving CRL with the debts. However, CRL had 
the right to buy back Eternity Profit at the same price until the sale of the 
debts was completed. The disposal was the subject of a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081201/GLN20081201031.pdf">
circular</a> dated 2-Dec-08.</p>
<p>Note 18(c) of the 2008 annual report states:</p>
<blockquote>&quot;After the disposal of [Eternity Profit], the Group is in 
close contact with Portstar to follow up the status of relevant legal and 
business procedures to recover the previous amount of deposits paid. Based on 
legal advice and update from Portstar, the directors consider the possibility of 
recovery of HK$151,980,000 is remote and impossible, and accordingly, full 
impairment loss in respect of the loan receivable was made&quot;</blockquote>
<h3>The Portstar connection</h3>
<p>The owner of Portstar was not disclosed by CRL, but we can tell you something 
else about Portstar. On 2-May-07, <a href="../dbpub/orgdata.asp?p=13754">China Bio-Med 
Regeneration Technology Ltd</a> (<strong>CBRT</strong>, 8158), then known as &quot;B 
M Intelligence International Ltd&quot;
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20070503/GLN20070503023.PDF">
announced</a> an MOU with Portstar for a possible investment in Gold Regent Corp Ltd (HK, <strong>Gold Regent</strong>), 
which was engaged in PRC internet cafés. The owner of Portstar was not 
disclosed, but was an &quot;independent third party&quot;. On 25-Jun-07, the MOU was 
replaced by an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070626/GLN20070626062.pdf">
agreement</a> for CBRT to buy 50% of Gold Regent from Portstar for a nominal 
price of $2. No funding plan had been determined for Gold Regent, which was 
still in negotiations to invest in an internet cafe operation.</p>
<p>On 2-May-07 (the same day as CBRT's MOU with Portstar), <a href="../dbpub/natperson.asp?p=16422">Agnes Yeung Sau 
Han</a> (<strong>Ms Yeung</strong>) was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070502/LTN20070502397.PDF">appointed</a> as an executive director of
PME. Then on 8-Jun-07, she was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070608/GLN20070608029.PDF">
appointed</a> as an ED of CBRT. Keep in mind that at this point, apart from Ms Yeung, there is no visible connection between 
PME and CBRT.</p>
<p>On 16-Jul-07,
<a href="../dbpub/natperson.asp?p=40536">Yu Sau Lai</a> (<strong>Ms Yu</strong>) 
was appointed as ED of CBRT. The annual report for the year ended 30-Apr-07 
stated Ms Yeung and Ms Yu are &quot;responsible for the business development of the 
Group, especially in the internet cafe business in the PRC&quot; - in other 
words, the business which CBRT had acquired 50% of from Portstar.</p>
<p>Mr Lim and Sunny Lok (ED and INED of CRL) and Ms Yeung knew each other - they 
had served together on the board of garment retailer
<a href="../dbpub/articles.asp?p=16414">LeRoi 
Holdings Ltd</a> (<strong>Leroi</strong>, 0221). Ms Yeung, who has a higher 
diploma in fashion design, joined Leroi in 1998 and is the sister-in-law of its 
founder. Mr Lok joined as INED on 
26-Aug-02, before the listing on 7-Nov-02. Mr Lim joined as ED on 30-Jul-04, and all left in Jan-07.</p>
<p>On 8-May-08, Ms Yeung was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080508/GLN20080508033.pdf">appointed</a> as ED of CRL, 
and on 20-May-08, Mr Koh
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080520/GLN20080520031.pdf">
resigned</a>.</p>
<p>On 21-May-08, PME 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080527/LTN20080527299.pdf">bought</a> 27.1% of CBRT from its then Chairman, becoming the 
largest shareholder. So CBRT and CRL both had PME as a substantial shareholder. What a 
coincidence that they have also dealt with the same independent BVI company, Portstar on 
two different transactions! We'll tell you more about CBRT in a later article.</p>
<h3>Special Committee gives up</h3>
<p>On 27-Jul-08, co-founder and former Chairman C H Tsang took medical leave, and Ms Yeung
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080728/GLN20080728054.pdf">
replaced him</a> on the Special Committee.</p>
<p>On 14-Nov-08, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081114/GLN20081114116.pdf">
announced</a> that the unnamed legal adviser and financial adviser to the 
Special Committee had resigned because their fees as billed had not been agreed 
and paid.</p>
<p>On 18-Feb-09, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090218/GLN20090218035.pdf">
announced</a> that a new legal adviser to the Special Committee had been 
appointed, but did not name the adviser. Meanwhile it had settled the fees of 
the old legal adviser and the financial adviser, who had been reappointed.</p>
<p>On 2-Jun-09, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090602/GLN20090602111.pdf">
announced</a> that on 19-May-09, the Special Committee told the board it was 
facing &quot;limitations and difficulties&quot; and that there would be a &quot;tremendous 
amount of costs and expenses&quot; to continue with the Review of the Eternity Profit 
deal. The board cited the &quot;extravagant costs&quot; involved and since Eternity Profit 
had already been disposed of, they gave up. We can't help wondering whether the 
Special Committee was something the Stock Exchange told them to establish, given 
the lengths they went to to justify abandoning it.</p>
<p>At the end of 2007, CRL was still sitting on a cash pile of $923m raised from 
the placings at the top of the railway concept bubble. What did they do with it? That 
will be the subject of <a href="CBRT.asp">Part 3</a>.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=30230">CCB INTERNATIONAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=25518">China Energy Savings Technology, Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17410">China Ever Grand Financial Leasing Group Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49490">CHINA RAILWAY INVESTMENTS GROUP (HONG KONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13754">China Regenerative Medicine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10787">Chinese Strategic Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15091">CODEBANK LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3107">GOLDWIZ HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16536">GRANT SHERMAN APPRAISAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4977">Kingston Financial Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=37566">Nuada Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14229">Rentian Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12651">SEEKERS MARKETS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32441">VEDA CAPITAL LIMITED (HK)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=20431">Chuang, Eugene Yue Chien</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10778">Koh, Michael Tat Lee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49968">Liu, Yi Dong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8067">Lok, Lawrence Yuen Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11656">Lok, Sunny Shing Kwan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11327">Tsang, Chi Hin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16422">Yeung, Agnes Sau Han</a></li>
				
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