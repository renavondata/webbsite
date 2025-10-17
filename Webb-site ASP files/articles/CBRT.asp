
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

<script type="text/javascript">document.title="Skin in the game";</script>

	<div class="summary">In part 3 of a series, we look at the often calamitous IPOs produced by B M Intelligence and its conversion into China Bio-med Regeneration Technology, involving a huge mark-up on the acquisition. We also cover an international organisation run out of a cobbler's shop in Las Vegas, and the recent changes of ownership in CBRT, including a CPPC member who is a big fan of the PLA.</div>

<h2 class="center">Skin in the game<br>
<span class="headlinedate">23 June 2009</span></h2>
<div style="background-color:lightgray;text-align:center;border:1px solid">
Following on from our <a href="byfordbubble.asp">Byford</a> and
<a href="traingames.asp">China Railway Games</a> stories, this is Part 3 in a 
continuing series.</div>

<ul class="navlist">
	<li id="livebutton">Main story</li>
	<li><a href="semtech.asp">Semtech</a></li>
	<li><a href="gpnano.asp">GP Nanotechnology</a></li>
</ul>
<div class="clear"></div>
<p>OK, it's been 12 days since we <a href="traingames.asp">took you through</a> all the shenanigans around
<a href="../dbpub/orgdata.asp?p=10787">China Railway Logistics Ltd</a> (<strong>CRL</strong>, 
8089) and <a href="../dbpub/orgdata.asp?p=17410">PME Group Ltd</a> (<strong>PME</strong>, 
0379). Now we'll move on to what became another piece of this network, <a href="../dbpub/orgdata.asp?p=13754">China Bio-Med 
Regeneration Technology Ltd</a> (<strong>CBRT</strong>, 8158).</p>
<p>CBRT started life as &quot;B 
M Intelligence International Ltd and was listed on 18-Jul-01. It was 
&quot;principally engaged in the provision of business, accounting and corporate 
development advisory services to companies in Hong Kong and the PRC&quot;. It did not have any 
accounting licence. It's then Chairman and founder,
<a href="../dbpub/positions.asp?p=7661">Lowell Lo Wah Wai</a> (<strong>Lowell Lo</strong>), 
also owned 99.99% of <a href="../dbpub/orgdata.asp?p=33514">Lo and Kwong C.P.A. 
Co Ltd</a> (<strong>Lo and Kwong</strong>), an accounting firm, the other 0.01% 
being held by <a href="../dbpub/positions.asp?p=12717">Alex Kwong Kam Kwan</a> (<strong>Alex 
Kwong</strong>), who was also a former shareholder in 
<a href="../dbpub/orgdata.asp?p=22528">BMI Consultants Ltd</a>, the 
main subsidiary of CBRT when it listed. The other 
executive director and substantial shareholder of CBRT was
<a href="../dbpub/positions.asp?p=12994">Barry Ip Yu Chak</a> (<strong>Barry Ip</strong>). 
CBRT, in the form of BMI Consultants, was just a 2-man business run by Lowell Lo and Barry Ip until it began 
hiring staff in Jan-2001, six months before its own listing.</p>
<p>The core of CBRT's pre-IPO track record (the 3 years to 30-Apr-01) consisted 
of preparing other companies for listing, the accounting work for which was 
subcontracted to two independent accountancy firms, one in HK and one in Shenzhen. In Aug-1996, CBRT entered into a service agreement with
<a href="../dbpub/orgdata.asp?p=8487">KLL Associates CPA Ltd</a> (<strong>KLL</strong>), 
which provided the outsourced HK accountancy services to clients of CBRT. KLL was 
taken over on 1-Aug-05 by <a href="../dbpub/orgdata.asp?p=22122">BDO Ltd</a>,, 
which also subsumed <a href="../dbpub/orgdata.asp?p=14787">Shu Lun Pan 
Horwath Hong Kong CPA Ltd</a> on 1-May-09.</p>
<p>In Feb-2001, CBRT entered into a &quot;co-operative alliance agreement&quot; with 
<a href="../dbpub/orgdata.asp?p=15005">Altus 
Capital Ltd</a> (<strong>Altus</strong>), a corporate finance advisory firm in HK. 
The CBRT prospectus didn't mention it, but <a href="../dbpub/positions.asp?p=7367">
Arnold Ip Tin Chee</a> and <a href="../dbpub/positions.asp?p=9179">Patrick Sun 
Sai Man</a>, directors of Altus, joined the board of CBRT as NEDs on 26-Apr-01 
and resigned on 15-Jun-01, before it was listed. This was revealed in the 
directors' report for the year to 30-Apr-02.</p>
<p>Also in Feb-2001, CBRT formed <a href="../dbpub/orgdata.asp?p=16315">BMI 
Appraisals Ltd</a> (<strong>BMI Appraisals</strong>), a 50:50 joint venture with 
Mr <a href="../dbpub/natperson.asp?p=16316">Tony Cheng Chak Ho</a> (<strong>Tony 
Cheng</strong>), an &quot;independent chartered surveyor...to focus mainly on 
valuation of intangible assets&quot;. In fact Mr Cheng worked until 31-Jul-01 
for <a href="../dbpub/orgdata.asp?p=5577">Sallmanns (Far East) Ltd</a> (<strong>Sallmanns</strong>), 
the firm which issued the valuation report in CBRT's listing prospectus on 
11-Jul-01. He had failed to tell the senior management of Sallmanns about this. 
The Disciplinary Board of the Hong Kong Institute of Surveyors (<strong>HKIS</strong>) 
issued a report to the General Council which determined that he had &quot;conducted 
himself in a manner unbefitting a member of the Institute&quot; and resolved to
<a target="_blank" href="../codocs/HKIS031125.pdf">suspend his membership</a> for 2 years from 25-Nov-03.</p>
<p>It's worth reviewing some of CBRT's pre-IPO projects, mostly carried out 
before its own listing, so you can get some feel for the way the firm did 
business.</p>
<h3>Pre-IPO clients</h3>
<p>An early pre-IPO client of CBRT was <a href="../dbpub/orgdata.asp?p=8477">Sun 
Hing Vision Group Holdings Ltd</a> (<strong>SHV</strong>, 0125), which listed on 
25-May-99. KLL was the joint reporting accountant on this IPO. The first annual 
report after listing revealed that Lowell Lo was briefly an INED of SHV from 
3-Mar-99 to 23-Apr-99, before the IPO. Perhaps he wasn't considered independent, 
given his firm's advisory role. He was replaced as INED by his younger brother,
<a href="../dbpub/positions.asp?p=8484">Roy Lo Wa Kei</a> (<strong>Roy Lo</strong>), 
who still serves. This company worked out alright though, and your editor now 
holds over 6% of it.</p>
<p>Another pre-IPO client of CBRT was <a href="../dbpub/orgdata.asp?p=12367">
Time Infrastructure Holdings Ltd</a> (<strong>TIH</strong>, 0686, then &quot;Gay 
Giano International Group Ltd&quot;), which listed on 13-Apr-00. Although Ernst &amp; 
Young was the reporting accountant in the IPO, all the subsidiaries' accounts 
for the first 2 years of the track record were audited by Lo and Kwong, Lowell 
Lo's firm. During 2000 the stock price was ramped and then collapsed. On 
8-Jul-02, Mr <a href="../dbpub/natarts.asp?p=12368">Cheung Sing Chi</a>
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020708/LTN20020708082.pdf">
resigned</a> as Chairman of TIH after being charged by the Commercial Crime 
Bureau. In 2003 he and his brother, <a href="../dbpub/natperson.asp?p=12381">
Cheung For Sang</a>, were
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=03PR114">
jailed</a> for conspiracy to defraud investors by market manipulation. Barry Ip 
was an NED of TIH from 12-Mar-01 until he resigned on 21-May-04. On that day, 
TIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040521/LTN20040521104.pdf">
appointed</a> Roy Lo as INED. Ernst &amp; Young
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030625/LTN20030625066.pdf">
resigned</a> as auditors on 24-Jun-03 and were replaced by KLL.</p>
<p>Another CBRT client was
<a href="../dbpub/articles.asp?p=10865">Sino-Tech International Holdings Ltd</a> 
(<strong>SIH</strong>, 0724), then known as Millennium Sense Holdings Ltd and 
later notoriously known as Semtech International Holdings Ltd, which listed on 3-Jul-00. 
CBRT booked fees of $2.04m on pre-IPO advice and 
a further $2.1m of advice including &quot;performance improvement&quot; and &quot;crisis 
management&quot; up to Feb-2001. SIH, a maker of cigarette lighters, accounted for 
47.2% of CBRT's turnover in the last year before listing. On 8-Nov-00, SIH 
agreed to subscribe $2m for a convertible note in CBRT, which was converted into 
5m shares (1.67%) of CBRT upon its listing and sold for $1.16m in the first half of 
2002.</p>
<p>The MD and founder of KLL, <a href="../dbpub/positions.asp?p=5531">Daniel Lee 
Ka Leung</a>, was an INED of SIH from 1-Jun-98 (pre-IPO) to 18-Jun-01. For more 
on SIH, the scandals surrounding it in 2004, subsequent convictions, possible 
options abuse and the missing deposit on a failed Vietnamese chromium mining 
project, see our
<a href="semtech.asp">side-piece</a>  article today. Lowell Lo 
was appointed as INED of SIH on 27-Sep-04, when the listing rules increased the 
required number of INEDs to 3.</p>
<p>Another pre-IPO client of CBRT was <a href="../dbpub/orgdata.asp?p=15450">Vital Pharmaceutical Holdings Ltd</a> (<strong>Vital 
Pharma</strong>, 1164), which joined GEM on 7-Feb-02. Roy Lo was an INED of that twice: from 26-Jan-02 (pre-listing) to 2-Jul-02, 
when he was replaced by Mr <a href="../dbpub/positions.asp?p=15757">Lui Tin Nang</a> 
(<strong>T N Lui</strong>, who still serves), and again from 30-Sep-04 to 19-Oct-06, when he 
was replaced by Mr <a href="../dbpub/positions.asp?p=36657">Brandson Chong Cha 
Hwa</a> (<strong>Mr Chong</strong>), who also became an INED of
CRL a week later. Vital Pharma's auditors PwC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041221/LTN20041221121.pdf">
resigned</a> on 17-Dec-04, citing concerns about internal controls, an 
unsatisfactory response to a Stock Exchange inquiry, and an &quot;unusual and 
disturbing&quot; message from two Executive Directors which &quot;contained certain 
emotional expressions&quot;. </p>
<div style="border:1px black solid;margin:2px;padding:2px">
<h4 style="margin-top:0px">IFMA</h4>
<p>We pause to note that Mr Chong is also President of a HK company called
<a href="../dbpub/orgdata.asp?p=49769">International Institute of Business 
Administration Ltd</a>, incorporated 31-Mar-03. It has a
<a target="_blank" href="http://www.iba.org.hk">web site</a>, the domain of 
which is <a target="_blank" href="../codocs/whois.iba.org.hk.pdf">registered</a> 
to &quot;Institute of Business Appraisers&quot; and administered by BMI Technologies Ltd, 
owned by CBRT. Another interesting entity is
<a href="../dbpub/orgdata.asp?p=49773">International Financial Management 
Association Ltd</a>, incorporated in HK on 29-Aug-05. It's &quot;Standing director&quot; 
is Roy Lo and its Vice President is Lowell Lo. The brothers Lo and Mr Chong are 
listed as <a target="_blank" href="http://www.ifmanet.org/en/training2.htm">
trainers</a> on its web site, <a target="_blank" href="http://www.ifmanet.org">
www.ifmanet.org</a>, which says it is a &quot;global professional financial 
organization engaging in the research of theory and application of financial 
management&quot;.</p>
<p style="margin-bottom:0px">However, there is another &quot;International Financial Management 
Association&quot;, headquartered in Las Vegas, Nevada, with a different web site,
<a target="_blank" href="http://www.ifmweb.org">www.ifmweb.org</a>. That domain 
is registered to one Simon Tang of Houston, Texas. It is unclear whether the two 
organisations are associated, although they do apparently share several 
directors, including W J Fields Jr, whose
<a target="_blank" href="http://www.infousa411.com/ViewBusinessProfile.aspx?recordid=D08101F9868827836168617CE6D887E684C9244691B9A69E8ABC2B05CFF157CB">
shoe repair shop</a>, at 3126 Las Vegas Boulevard North, doubles as the US 
headquarters.
<a target="_blank" href="https://businessphotosusa.com/imagedb/1024x768/3/2/1/1/7153211.JPG">
Zoom 
in to see it</a>, between Sofia's Pizza and Elvia's Beauty Salon. So you can 
have lunch, get a facial, get your shoes repaired and join the IFMA all in one 
stop! Three of the 
directors of the US organisation, including Simon Tang, work for
<a target="_blank" href="http://www.certifiedbb.com/cbbstaf.html">Certified 
Business Brokers</a>, a firm in Houston. Another director, John Nechman, is an
<a target="_blank" href="http://winwinlaw.com/Our_Attorneys.html">attorney</a>  
at Simon Tang's law firm.</p>
</div>
<p>Another CBRT client was <a href="../dbpub/orgdata.asp?p=16922">Zhejiang 
Yonglong Enterprises Co Ltd</a> (<strong>Zhejiang Yonglong</strong>, 8211). Roy Lo was an INED of 
that from 14-May-02 to 26-Jun-02, before it 
listed on 8-Nov-02. He was replaced 
by T N Lui. The joint auditor at the IPO was KLL.</p>
<p>Incidentally, T N Lui has been an INED of CBRT since 30-Sep-04 (when the 
Listing Rules increased the requirement to 3 INEDs). So he serves on the board 
of CBRT as well as two of its former clients.</p>
<p>Barry Ip and Roy Lo are now Managing Director and Deputy Managing Director of
<a href="../dbpub/orgdata.asp?p=29526">ShineWing (HK) CPA Limited</a> (<strong>ShineWing</strong>), 
an accounting firm which took over the practice of Ho and Ho &amp; Company on 
3-Aug-05. ShineWing is currently the auditor of
<a href="../dbpub/adviserships.asp?p=29526&amp;hide=Y">53 listed companies</a>, 
including PME, CRL, <a href="../dbpub/orgdata.asp?p=13901">China Fortune Group Ltd</a> (<strong>China 
Fortune</strong>, 0290), <a href="../dbpub/orgdata.asp?p=18177">Byford 
International Ltd</a> (<strong>Byford</strong>, 8272), SIH, Zhejiang Yonglong and Vital 
Pharma, all of which have featured in our 3-part story so far, as well as 
<a href="../dbpub/orgdata.asp?p=23491">ZZNode 
Technologies Co Ltd</a> (<strong>ZZNode</strong>, 2371) which we will cover in a 
future instalment. Barry Ip
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040806/GLN20040806021.PDF">
changed</a> from ED to NED of CBRT on 6-Aug-04 and on 1-Aug-05, he
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050802/GLN20050802011.PDF">
resigned</a> effective 31-Oct-05, but continued to be employed as an external 
consultant and subsequently received more share options.</p>
<p>Tony Cheng has been an INED of <a href="../dbpub/orgdata.asp?p=4979">North 
Mining Shares Co Ltd</a> (0433) since 12-Apr-01. The shares of that company were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801178.pdf">
suspended</a>  for 4 years from 6-Jun-03 to 2-Aug-07 after Chairman Qian Yong Wei, 
a Shanghai-based property developer, 
became uncontactable. It turned out that he was jailed for unrelated bribery 
offences. Roy Lo was appointed as INED on 25-Sep-04. Mr Qian is now out of jail, 
still the controlling shareholder, and his son Qian Yi Dong was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090326/LTN20090326601.pdf">
appointed</a>  ED on 26-Mar-09. The re-election circulars for the AGMs held in 
2004 and 2007 failed to disclose the HKIS disciplinary action against Tony 
Cheng.</p>
<p>Another pre-IPO client of CBRT, described but not named in the prospectus, 
was <a href="../dbpub/articles.asp?p=13826">GP Nanotechnology Group Ltd</a> (<strong>GPN</strong>, 
8152, delisted) which was listed on 17-Jul-01, the day before CBRT itself. CBRT 
billed GPN $1.5m in the 2 years to 30-Apr-01. KLL was the joint reporting 
accountant, and the listing was sponsored by Shenyin Wanguo Capital (H.K.) Ltd. 
For more on the SFC's action against GPN (which followed a complaint from 
Webb-site.com) and the convicted criminal who the SFC alleges was behind GPN, 
see our <a href="gpnano.asp">side piece</a> today.</p>
<h3>Subsidiaries and investments</h3>
<h4>BM Innovation</h4>
<p>On 8-May-02 CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020510/08158MC20020510004414A.pdf">
agreed</a> to place 32m shares (9.38% of enlarged) at $0.30 via Guotai Junan 
Securities (Hong Kong) Ltd raising $9.6m gross ($9.3m net). </p>
<p>In its listing prospectus, CBRT mentioned a private company then called 
Innovation (Asia) Ltd, &quot;engaged in the provision of tutorial services for 
students&quot; and owned as to 60% by Lowell Lo, 15% by his brother, 5% by his 
brother's wife and 20% by an independent third party. This was renamed
<a href="../dbpub/orgdata.asp?p=16318">BMI Innovation Ltd</a> (<strong>Innovation</strong>) 
on 27-Feb-02, and some time in Jun-2002, CBRT subscribed for 
30% of its enlarged capital for just HK$15,000, making it an associate and 
generating $351k of negative goodwill which CBRT booked as profit in the year to 
30-Apr-03. By then it had dropped tutorials and was &quot;engaged in the provision of 
event management services and corporate communications services&quot;. Within a month 
of the investment, on 9-Jul-02, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020709/00000MC20020709205908E.pdf">
announced</a> that Innovation had applied for its own listing on GEM. Thankfully 
this is one deal which never saw the light of day.</p>
<p>During the six months to 31-Oct-05, CBRT sold its stake in Innovation to Roy 
Lo for $15,000, at cost.</p>
<h4>BZR Capital</h4>
<p>In Sep-03 CBRT acquired 60% of ZR Capital Ltd, a corporate finance advisor, 
for $300k and renamed it BZR Capital Ltd. On 26-May-09 it was renamed
<a href="../dbpub/orgdata.asp?p=19774">Chanceton Capital Partners Ltd</a>. It 
has only done a handful of deals as financial adviser or independent financial 
adviser in the listed company arena.</p>
<h4>BMI Wealth Management Ltd</h4>
<p>During the year to 30-Apr-05, CBRT sold 28% of a subsidiary, then called BMI 
Wealth Management Ltd, to an independent third party for $27k, booking a gain of 
$3k, so it was pretty small at that stage. It got a bigger mention in the 2006 
report, which said that it &quot;specialises in providing wealth management services, 
provides an one stop comprehensive range of financial products and insurance 
linked product&quot;. In the year to 30-Apr-07, it got no mention at all, and was 
93.28% owned at year-end, with its issued share capital expanded from $120k to 
$500k, implying that CBRT had invested another $300k. On 18-Jul-07 it was 
renamed <a href="../dbpub/orgdata.asp?p=49744">Jumbo Alliance Funds Ltd</a> (<strong>Jumbo 
Alliance</strong>). This was the only company which disappeared from the list of 
CBRT subsidiaries in the year to 30-Apr-08. According to note 35 of the accounts, one 
subsidiary was disposed of during the year for a cash consideration of $120k, so 
that was probably it. The business is alive and has a
<a href="http://www.jafunds.com">web site</a>, which states that its director is 
Barry Ip. The Professional Insurance Brokers Association register
<a target="_blank" href="http://www2.piba.org.hk/pn01_2.php?srhtyp=M&amp;regno=0335">
states</a> its Chief Executive as Terence Hui Chi Tat.</p>
<p>On 17-Dec-08, CBRT issued a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081217/gln20081217024.pdf">
clarification</a> announcement regarding a press article which stated that BMI 
Funds and Jumbo Alliance are involved in litigation with a Mr Chan Wing Tat. 
CBRT then disclosed that Jumbo Alliance had been disposed of on 26-Jun-07. </p>
<h4>Union Registrars</h4>
<p>On 1-Apr-05 CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050401/GLN20050401073.PDF">
acquired</a> a 4.9% interest in <a href="../dbpub/orgdata.asp?p=31574">Union 
Services and Registrars Inc</a> (BVI, <strong>Union Registrars</strong>) for 
HK$588k, and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050418/GLN20050418021.PDF">
changed</a> its registrars to Union Registrars Ltd on 15-Apr-05. On 9-Dec-05 
CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051216/GLN20051216017.PDF">
bought</a> another 2.1% interest in Union Registrars for $144k. On 8-Oct-07 CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20071008/gln20071008027.pdf">
bought</a> another 8% of Union Registrars for $2m, taking its interest to 
14.42%.</p>
<h3>More events</h3>
<p>On 19-Dec-05, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051219/GLN20051219009.PDF">
appointed</a> Mr <a href="../dbpub/positions.asp?p=31453">Liu Ming Ming</a> (<strong>M 
M Liu</strong>) as INED at the princely fee of HK$5k per year. He was also the 
general manager of two subsidiaries of CRL.</p>
<p>On 22-Feb-07, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070222/GLN20070222033.PDF">
launched</a> a placing of 74.2m new shares (16.59% of enlarged) at $0.218 (16.1% 
discount to market), raising $16.2m gross ($15.7m net), via 
<a href="../dbpub/orgdata.asp?p=16123">Kingston Securities Ltd</a> (<strong>Kingston 
Securities</strong>), 
&quot;for general working capital&quot;.</p>
<p>On 1-Mar-07 M M Liu
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070228/GLN20070228017.PDF">
resigned</a> for &quot;personal reasons&quot;.</p>
<p>On 2-May-07, CBRT
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20070503/GLN20070503023.PDF">
announced</a> an MOU with Portstar Enterprises Ltd (BVI, <strong>Portstar</strong>) for a possible investment in Gold Regent Corp Ltd (HK, <strong>Gold Regent</strong>), 
which was engaged in PRC internet cafés. The owner of Portstar was not 
disclosed, but was an &quot;independent third party&quot;. On 25-Jun-07, the MOU was 
replaced by an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070626/GLN20070626062.pdf">
agreement</a> for CBRT to buy 50% of Gold Regent from Portstar for a nominal 
price of $2. No funding plan had been determined for Gold Regent, which was 
still in negotiations to invest in an internet cafe operation. As we mentioned 
in Part 2 (<a href="traingames.asp">China Railway Games</a>) Portstar was also 
the entity which acquired the unsuccessful cargo leasing entity from CRL.</p>
<p>On 2-May-07 (the same day as CBRT's MOU with Portstar), <a href="../dbpub/natperson.asp?p=16422">Agnes Yeung Sau 
Han</a> (<strong>Ms Yeung</strong>) was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070502/LTN20070502397.PDF">appointed</a> as an executive director of
PME. Then on 8-Jun-07, she was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070608/GLN20070608029.PDF">
appointed</a> as an ED of CBRT.</p>
<p>On 16-Jul-07,
<a href="../dbpub/natperson.asp?p=40536">Yu Sau Lai</a> (<strong>Ms Yu</strong>) 
was appointed as ED of CBRT. The annual report for the year ended 30-Apr-07 
stated Ms Yeung and Ms Yu are &quot;responsible for the business development of the 
Group, especially in the internet café business in the PRC&quot; - in other 
words, the business which CBRT had acquired 50% of from Portstar. No further 
mention of the internet cafés was made after that.</p>
<p>Also on 16-Jul-07 CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070716/GLN20070716041.pdf">
appointed</a> <a href="../dbpub/positions.asp?p=40536">Yu Sau Lai</a> (<strong>Ms 
Yu</strong>) as ED and <a href="../dbpub/natperson.asp?p=18033">Terence Chan Ho Wah</a> (<strong>Terence 
Chan</strong>) and <a href="../dbpub/natperson.asp?p=40538">Cheever Cheung Siu Chung</a> (<strong>Cheever Cheung</strong>) 
as INEDs. At 
the time Terence Chan was also an INED of CRL, and he was briefly an INED of SIH 
from 13-Nov-03 to 2-Jan-04. Ms Yeung, Ms Yu and Cheever Cheung may have known 
each other already - all were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070711/GLN20070711035.pdf">appointed</a> as directors of
<a href="../dbpub/orgdata.asp?p=18154">Heng Xin China Holdings Ltd</a> (<strong>HXC</strong>, then Tiger Tech Holdings Ltd, 8046) 5 days earlier on 
11-Jul-07. That was the day on which HXC completed a placing of unlisted 
warrants to subscribe shares equivalent to 20% of its issued capital via 
Kingston Securities. The names of the placees were not disclosed. The warrants 
were all exercised on 16-Jul-07.</p>
<p>On 29-Aug-07 a 3 for 1 bonus issue
by CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070829/GLN20070829029.pdf">
became effective</a>.</p>
<p>On 6-Nov-07, CBRT
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20071106/GLN20071106057.pdf">
launched</a> a placing via Kingston Securities 
of 90m new shares (4.7% of enlarged) at $0.209 to raise $18.8m gross ($18.2m 
net). There was no plan for the cash, nor had they spent the $15.7m raised in 
the
previous placing. Note that, because of the bonus issue, the effective 
issue price in the previous placing was now $0.0545.</p>
<h3>PME takes over</h3>
<p>On 21-May-08, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080527/GLN20080527040.doc">
agreed</a> to sell BMI Funds Management Ltd and 45% of Fu Teng Ltd (BVI), which 
owned BMI Appraisals, to Lowell Lo, 
for a total of $63.4m in cash. At the same time, Lowell Lo sold his 27.1% stake in 
CBRT to PME for $99.9m, or $0.194 per share, and resigned from the board, along 
with CEO Mr Wong Wai Tung. CBRT shareholders
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080815/GLN20080815031.pdf">
approved</a> the deal on 15-Aug-08, and both sales were completed on 29-Aug-08. The 
independent financial adviser on the connected transaction between CBRT and 
Lowell 
Lo was <a href="../dbpub/orgdata.asp?p=34259">Guangdong Securities Ltd</a>. The 
MD of that firm, Graham Lam Ka Wai, at the time was an INED of China Fortune and 
ZZNode and later of CRL.</p>
<p>On 23-Jun-08, Ms Yeung was appointed as CEO of CBRT,
<a href="../dbpub/natperson.asp?p=17286">Oscar Wong Sai Hung</a> (<strong>Mr 
Wong</strong>) was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080620/GLN20080620072.pdf">
appointed</a> non-executive Chairman for an annual fee which was mis-stated as 
$100k and later turned out to be $715k, while
<a href="../dbpub/natperson.asp?p=22923">Joseph Orr Wai Shing</a> (<strong>Mr 
Orr</strong>) and <a href="../dbpub/natperson.asp?p=42494">Raymond Lam Shiu 
Cheung</a> (<strong>Raymond Lam</strong>) were appointed as INEDs. Mr Orr was 
already an INED of Byford since 7-Sep-07, while Raymond Lam became an INED of 
CRL (which was then 14% owned by PME) on 22-Dec-08. Mr Wong bought 30m shares 
(then 1.58%) of CBRT at $0.297 on 18-Jul-08.</p>
<h3>CBRT gets a new skin</h3>
<p>On 25-Jun-08, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080715/GLN20080715000.pdf">
agreed</a> to buy FD(H) Investments Ltd (BVI, <strong>FDH</strong>) from All 
Favour Holdings Ltd (BVI, <strong>All Favour</strong>), owned 50% by 
<a href="../dbpub/positions.asp?p=46787">Lawrence Woo Hing Keung</a> (<strong>Mr Woo</strong>), 
45% by Ms Wan Fang Li, and 5% by <a href="../dbpub/natperson.asp?p=12740">Lin 
Hoi Kwong</a> (<strong>Mr Lin</strong>), for $190m, of which $70m was in cash 
and $120m in 2-year 0% bonds which are convertible at $0.03 per share (a 90.3% 
discount to market) into 4,000m shares 
equivalent to 210.44% of the existing issued shares. Of the $70m in cash, $6m 
had already been paid as a deposit under an earlier
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080225/GLN20080225046.pdf">
letter of intent</a> on 25-Feb-08. A further $14m was due by 30-Jul-08, and the 
rest on completion.</p>
<p>As you may recall from Part 1 (<a href="byfordbubble.asp">Byford 
story</a>), Mr Woo has been an ED of Byford since 27-Oct-08. Mr Lin was an ED of 
China Fortune from 6-Dec-04 to 31-Oct-05 and an ED of
<a href="../dbpub/orgdata.asp?p=4873">China Sciences Conservational Power Ltd</a> 
(<strong>CSCP</strong>, 0351) from 8-Feb-01 to 10-Feb-04. We'll cover CSCP in a 
future instalment. We know nothing about Ms Wan Fang Li. 
CBRT was advised by
<a href="../dbpub/orgdata.asp?p=37566">Nuada Ltd</a>, and a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080926/GLN20080926049.pdf">
circular</a> was dated 29-Sep-08. The deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081030/GLN20081030076.pdf">
completed</a> on 29-Oct-08.</p>
<p>FDH in turn has acquired 51% of <a href="../dbpub/orgdata.asp?p=49440">Shaanxi Aierfu Activtissue Engineering Co Ltd</a> 
(<strong>Aierfu</strong>) which in turn owns 51% of three subsidiaries involved in 
the development of &quot;tissue engineering products&quot;. Aierfu had one product named &quot;Activskin&quot;, which was expected to be in 
mass production in 2009, and two others in clinical trials. It is unclear whether 
those are owned by Aierfu itself, or by its 51%-owned subsidiaries, namely Shaanxi Aierfu Bosheng Biological Engineering Co Ltd (<strong>Bosheng</strong>), Shaanxi 
Aimeiya Bio-Technology Co Ltd (<strong>Aimeiya</strong>) and Shaanxi Aierfu 
Cornea Engineering Co Ltd (<strong>Cornea</strong>).</p>
<p>Incidentally, the announcement of the letter of intent referred to Aierfu's 
product as &quot;Apligraf&quot; in the English translation. The announcement of the 
agreement referred to it as &quot;Activskin&quot;. We only note this because
<a target="_blank" href="http://www.apligraf.com">Apligraf</a> is a trademark of 
a similar product from <a target="_blank" href="http://www.organogenesis.com/">
Organogenesis Inc</a>, which went into Chapter 11 in 2002 and re-emerged under 
private ownership in 2003. Other products in this space include:
<a target="_blank" href="http://www.dermagraft.com">Dermagraft</a>, originally 
produced by Advanced Tissue Sciences Inc, which went into Chapter 11 in 2002, 
and was taken over by Smith &amp; Nephew and then sold to
<a target="_blank" href="http://www.advancedbiohealing.com">Advanced BioHealing 
Inc</a>; and Orcel by
<a target="_blank" href="http://www.forticellbioscience.com">Forticell 
Bioscience, Inc</a>. As the bankruptcies indicate, firms have struggled to make 
money in this field. Dermagraft is currently listed at US$1,300 per piece, which 
hardly makes it a mass-market product, even in the USA.</p>
<p>The circular contained accountant's reports by
<a href="../dbpub/orgdata.asp?p=49447">Anthony Kam &amp; Co.</a>, whose sole 
proprietor is <a href="../dbpub/natperson.asp?p=23094">Anthony Kam Hau Choi</a>. According to the accountant's report, FDH acquired its stake in 
Aierfu on 
19-Feb-08 for HK$50m in &quot;other payables&quot; or IOUs. The vendor was not named. Also on 19-Feb-08, Aierfu 
acquired 51% of Aimeiya and Cornea for RMB1.02m in cash and RMB13.20m in &quot;other 
payables&quot; respectively. The 51% stake in Bosheng had been acquired for RMB1m 
on 15-Nov-07. So on the face of it, All Favour was making a huge mark-up by 
charging CBRT $190m for something which had cost less than $70m to put together. Not only that, but as we mentioned, the consideration shares were being 
issued at a 90% discount to a market price - perhaps a tacit admission that the 
stock price was in a bubble, but nevertheless, those 4,000m shares were 
theoretically worth $1,240m at the market price of $0.31 before the announcement 
of the deal. Add that to the $70m of cash and you have a price of $1,310m, or a 
more than an 18-fold mark-up.</p>
<p>The circular also contained a valuation report by 
<a href="../dbpub/orgdata.asp?p=16536">Grant Sherman Appraisal 
Ltd</a> valuing Aierfu at HK$400m. This was the same firm which valued the assets 
at the core of the CRL railway wagon-leasing acquisition on 25-May-07.</p>
<h3>Placing and ownership changes</h3>
<p>On 14-Jul-08, CBRT entered into a placing agreement with 
<a href="../dbpub/orgdata.asp?p=18892">Fortune (HK) Securities Ltd</a> (<strong>Fortune 
Securities</strong>) to issue 380m shares (16.67% of 
enlarged) on a 
best-efforts basis. As we noted in Part 1, this broker is owned by China 
Fortune. This agreement was terminated on 15-Jul-08 and instead on 17-Jul-08 
CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080718/GLN20080718000.pdf">
announced</a> a placing of the same number of shares through 
<a href="../dbpub/officers.asp?p=30230">CCB International 
Capital Ltd</a> (<strong>CCBI</strong>) at $0.255 (17.7% discount to market) to raise $96.9m gross ($94.3m net). The placing was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080813/GLN20080813168.pdf">
completed</a> on 13-Aug-08. As you may recall from Part 2 (<a href="traingames.asp">China 
Railway Games</a>), CCBI was the broker in three CRL placings which raised 
$1,194m and one PME placing which raised $570m, in March to July 2007 on the 
back of railway-related deals which didn't work out.</p>
<p>On 15-Aug-08, two days later after completing the placing, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080818/GLN20080818034.pdf">
amended</a> the acquisition agreement with All Favour by agreeing that the $64m 
of remaining cash consideration (including the $14m which was due by 30-Jul-08) 
would now all be paid by 18-Aug-08 and forfeited if CBRT did not complete the 
acquisition. Perhaps All Favour needed the cash to settle the IOUs issued for FDH's 
purchase of its stake in Aierfu ($50m) and Aierfu's stake in Cornea 
(RMB13.2m=HKD14.52m) with had both been struck almost exactly 6 months earlier. 
However, that left CBRT's shareholders with a Hobson's choice at the EGM on 
15-Oct-08 - either vote in favour, or wave goodbye to HK$70m. CBRT's acquisition of FDH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081030/GLN20081030076.pdf">
completed</a> on 29-Oct-08.</p>
<p>On 14-Nov-08, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081114/GLN20081114067.pdf">
appointed</a> Mr <a href="../dbpub/positions.asp?p=45293">Tin Ka Pak</a> as ED. 
He was already an ED of PME and ZZNode.</p>
<p>On 29-Sep-08, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081002/GLN20081002039.PDF">
agreed</a> to subscribe for HK$30m of convertible bonds issued by
CSCP. At least 
two other listed companies in the same network as CBRT (HXC and later CRL) 
bought CSCP 
convertible notes too. </p>
<p>On 12-Mar-09, PME
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090318/LTN20090318561.pdf">
agreed</a> to sell 500m shares (21.92%) of CBRT to Vital-Gain Global Ltd (BVI,
<strong>VGG</strong>), an &quot;independent third party&quot;, for $60m, or $0.12 per 
share. The Major Transaction was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090603/LTN20090603274.pdf">
approved</a> at an EGM on 3-Jun-09. According to disclosures of interests dated 
4-Jun-09, VGG is 40% owned by one &quot;Lu Na&quot; and 40% by one &quot;Wang Qing&quot;, but they 
quickly cut their stakes - see later.</p>
<p>On 24-Mar-09, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090324/GLN20090324010.pdf">
appointed</a> Mr Dai Yumin (<strong>Mr Dai</strong>) and Mr Luo Xian Ping as EDs. 
Mr Dai was then a &quot;marketing consultant&quot; of a subsidiary of PME. The 
announcement said that Mr 
Dai had agreed, for an unspecified price, to buy 60% of All Favour, which 
currently held the convertible bonds which CBRT had issued to buy FDH. It wasn't 
stated which of All Favour's 3 shareholders was selling.</p>
<p>According to disclosures of interests, on 5-Jun-09, one &quot;Xu Jifeng&quot;&nbsp; 
(via Honour Top Holdings Ltd) acquired 20% of All Favour, while Mr Dai (via 
Forerunner Technology Ltd) acquired 40% of All Favour, and the holding of Plenty 
Best Investments Ltd (which presumably was still owned by Wan Fang Li) was 
reduced from 45% to 40% of All Favour.</p>
<h4>All hail the PLA</h4>
<div class="rightpicbox" style="max-width:250px">
	<img src="../images/Kitchener.jpg" alt="Your country needs you">
</div>
<p>According to disclosures of interests, on 15-Jun-09, Sunbase Global Holdings 
Co. Ltd (BVI, <strong>Sunbase</strong>) acquired 60% of VGG for an undisclosed 
price. On the same day, Lu Na's and Wang Qing's stakes were each cut from 40% to 16% of VGG. We infer that they sold 48% to Sunbase, and the other 12% came from 
whoever owned the remaining 20%. </p>
<p>Sunbase is 50% owned by &quot;Gunter Gao&quot; and 50% by &quot;Linda Yang&quot;. According to 
our records, <a href="../dbpub/natperson.asp?p=26674">Gunter Gao Jingde</a> and
<a href="../dbpub/natperson.asp?p=49755">Linda Yang</a> are husband and wife. 
They also have a company called <a href="../dbpub/orgdata.asp?p=46572">Sunbase 
International (Holdings) Ltd</a> and a large property management firm called
<a href="../dbpub/orgdata.asp?p=49757">Sunbase International Properties 
Management Ltd</a> which wins a lot of HK Government tenders. Gunter Gao is also 
a member of the CPPCC National Committee. You can read all about his patriotic 
works on this
<a target="_blank" href="http://www.sunbase.com.hk/en/director.html">modest page</a> 
of his firm's web site, not least:</p>
<blockquote>&quot;Dr. Gao generously supported the publication of <em>The Great 
Rehearsal in the Taiwan Straits, The PLA Garrison Troops in Hong Kong, Scanning 
China's Peripheries, A Firm Rock in Midstream</em>, and other valuable books 
with the intent of promoting the glorious image of the People's Liberation Army 
(PLA) as a civilizing and a powerful force and of spreading the superior 
tradition and revolutionary spirit of the PLA.&quot;</blockquote>
<p>If that isn't enough to make you want to drop what you are doing and sign up to join 
the army, then what is?</p>
<h3>Option grants</h3>
<p>At each of the five AGMs of CBRT between 2002 and 2006, large chunks of options were approved 
for Lowell Lo and Barry Ip. Inbetween, as the share price fell, some of those 
options were cancelled to make room for new ones at lower exercise prices (there 
is a Listing Rules limit of 30% on outstanding options v share capital) and some 
were exercised, but by the end of the 2006 AGM, they each had 
options over shares equivalent to 9.43% of the existing issued share capital. 
After the 3:1 bonus issue (in effect a stock split), their options became 100m shares at $0.01 and 40m shares at $0.06125. They exercised 
200m options at $0.01 on 17-Apr-09 (8.06% of the enlarged capital) and still 
hold the shares, which are suspended at $0.27.</p>
<h3>Investment sales</h3>
<p>Perhaps having a clear-out after its skin graft, on 31-Mar-09 CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090331/GLN20090331106.pdf">
agreed</a> with Excalibur Securities Ltd (controlled by China Fortune) to place 
out various investments for HK$17m. These included shares in CRL and Byford and 
unlisted warrants in <a href="../dbpub/orgdata.asp?p=16766">China Public 
Procurement Ltd</a> (1094, then &quot;Sunny Global Holdings Ltd&quot;). We'll be covering 
that company in a future instalment of this series. On 29-Apr-09, CBRT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090429/GLN20090429050.pdf">
agreed</a> with Fortune Securities to place out for $34m the CSCP convertible 
bonds it had subscribed in Sep-2008. The buyers were not disclosed, and both 
asset sales were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090522/GLN20090522026.pdf">
completed</a> on 22-May-09. CBRT didn't say when it bought the shares, although 
balance sheets indicate that they were all purchased after 31-Oct-07.</p>
<h3>Sale of the rest of BMI</h3>
<p>On 8-Jun-09, Lowell Lo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090619/GLN20090619050.pdf">
agreed</a> to buy the remaining bits of BMI still owned by CBRT for HK$11.3m, 
subject to shareholders' approval. The stock is suspended pending a full 
announcement.</p>
<h3>Valuation</h3>
<p>Allowing for the 4,000m shares which could be issued on conversion of the 
bonds held by All Favour, and the outstanding 80m share options, CBRT has a 
potential issued capital of 6,560.88m shares. At the current market price, 
that's a market value of $1,771m. All that for a business, Aierfu, which has yet 
to generate sales, let alone profit. Don't put your skin in this game.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1980536">Anthony C.C. Kam & Co.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4873">ASIA ENERGY LOGISTICS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12367">Beijing Energy International Holding Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16315">BMI APPRAISALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49337">BMI FUNDS MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16318">BMI INNOVATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30230">CCB INTERNATIONAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15450">CGN Mining Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=19774">Chanceton Capital Partners Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16766">Cherish Sunshine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17410">China Ever Grand Financial Leasing Group Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13754">China Regenerative Medicine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18177">Chinese Food and Beverage Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10787">Chinese Strategic Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23491">Chuanglian Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18892">FORTUNE (HK) SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13901">GoFintech Quantum Innovation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16536">GRANT SHERMAN APPRAISAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18154">Heng Xin China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49773">INTERNATIONAL FINANCIAL MANAGEMENT ASSOCIATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49744">JUMBO ALLIANCE FUNDS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8487">KLL ASSOCIATES CPA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=33514">LO AND KWONG C.P.A. COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4979">North Mining Shares Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=37566">Nuada Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5577">PURVIEW (FAR EAST) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49440">Shaanxi Aierfu Activtissue Engineering Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=29526">SHINEWING (HK) CPA Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49327">SINO CAPITAL SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8477">SUN HING VISION GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21796">UNION REGISTRARS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=31574">Union Services and Registrars Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16922">Zhejiang Yongan Rongtong Holdings Co., Ltd.</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=18033">Chan, Terence Ho Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16316">Cheng, Tony Chak Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40538">Cheung, Cheever Siu Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12381">Cheung, For Sang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12368">Cheung, Sing Chi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=36657">Chong, Brandson Cha Hwa</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=48561">Dai, Yumin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=26674">Gao, Gunter Jingde</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7367">Ip, Arnold Tin Chee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12994">Ip, Barry Yu Chak</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=42494">Lam, Raymond Shiu Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5531">Lee, Daniel Ka Leung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12740">Lin, Aristo Hoi Kwong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7661">Lo, Lowell Wah Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8484">Lo, Roy Wa Kei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15757">Lui, Tin Nang (1957)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22923">Orr, Joseph Wai Shing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9179">Sun, Patrick Sai Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45293">Tin, Timmy Ka Pak</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17286">Wong, Oscar Sai Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46787">Woo, Lawrence Hing Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49755">Yang, Linda</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16422">Yeung, Agnes Sau Han</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40536">Yu, Sau Lai</a></li>
				
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