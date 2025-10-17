
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

<script type="text/javascript">document.title="China Strategic bubble";</script>

	<div class="summary">We warn investors of a bubble in the stock of China Strategic, the 80% owner of the proposed buyer of Taiwan's Nan Shan Life Insurance, partly financed by a massive note issue convertible into 78bn shares at $0.10 each. We publish the placing list and analyse the names in the deal. Finally, we warn investors to avoid 7 companies in the "Chung Nam network", which has lost HK$6.2bn in 5 years.</div>

<h2 class="center">China Strategic bubble<br>
<span class="headlinedate">13 November 2009</span></h2>
<p>There's been much excitement this week about the proposed acquisition by 
Primus Nan-Shan Holding Co Ltd (<strong>PNS</strong>) of 97.57% of
<a href="../dbpub/orgdata.asp?p=54045">Nan Shan Life Insurance Co Ltd</a> (<strong>Nan 
Shan</strong>), a Taiwanese life insurance company, from
<a href="../dbpub/orgdata.asp?p=17260">American International Group, Inc.</a> (<strong>AIG</strong>) 
for US$2.15bn. According to the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091110/LTN20091110006.pdf">
announcement</a> dated 10-Nov-09, PNS is owned 80% by
<a href="../dbpub/orgdata.asp?p=2911">China Strategic Holdings Ltd</a> (<strong>CSH</strong>, 
0235) and 20% by PFH Holdings Ltd (Cayman), which is the general partner of PFH 
GP, L.P., which in turn is the general partner of PFH Partnership Holdings, L.P. 
(<strong>Primus Investor</strong>), which is an affiliate of Primus Financial 
Holdings Ltd (Cayman). That complexity probably has something to do with US tax.</p>
<p>Two unnamed Taiwanese commercial banks are expected to provide NT$ debt 
financing to PNS of up to US$700m equivalent (50% each), of which US$640m will 
go to the purchase price. That leaves CSH paying <strong>US$1,205m</strong> for 
its 80% stake in PNS, and Primus Investor paying US$301m for its 20%.</p>
<h3>Bubble warning</h3>
<p>CSH intends to raise HK$7.6bn (US$980m) net through a placing of notes 
convertible into 78bn shares at $0.10 each, and HK$3.96bn (US$511m) net through 
a placing of 40bn shares at $0.10 each, raising a total of <strong>US$1,491m</strong>. 
The placing agent is <a href="../dbpub/articles.asp?p=16123">Kingston 
Securities Ltd</a> (<strong>Kingston Securities</strong>).</p>
<p>So CSH should have about US$286m left over after paying for its stake in PNS. 
It will also issue options over 7.1bn shares at HK$0.10 each vested in 5 
tranches over 4 years (with 20% up front), the bulk of which (6.4bn) goes to 2 
directors. When exercised, these would bring in HK$710m (<strong>US$92m</strong>).</p>
<p>The shares of CSH took off on the news. At the end of April they closed at 
$0.098. On Wednesday they reached a high of $1.00, closing at $0.81, and 
yesterday (Thu-12-Nov) they closed at $0.71. Upon completion of the deal, 
exercise of all the options and conversion of all the convertible notes, there 
would be about 128.8bn shares in issue, which at last night's price values CSH 
at about HK$91.4bn (<strong>US$11.8bn</strong>).</p>
<p>Prior to the deal, at 30-Jun-09 CSH has net equity of HK$406.6m and 
convertible note liabilities of HK$518.1m, so assuming full conversion, adjusted 
equity was HK$924.7m (<strong>US$119m</strong>). So taking the fully converted 
equity, plus the proceeds of the placings and share options, CSH would have 
combined equity of about <strong>US$1,702m</strong> (HK$13.2bn) or about <strong>
HK$0.102</strong> per share.</p>
<p>Keeping in mind that AIG's sale of Nan Shan was the outcome of a competitive 
process, it seems unlikely that the company is worth significantly more than 
they PNS is paying for it. But let's be generous, and say that it is worth 1.5 
times its net assets, which at 30-Nov-08 were NT$83.4bn (by comparison, Manulife 
(0945) trades at 1.45 times its 31-Dec-08 NAV). So that would make Nan Shan 
worth NT$125.1bn (US$3.88bn), and 97.57% worth US$3.79bn, and that's US$1.64bn, 
or 76%, more than PNS is paying for it. So 80% of that belongs to CSH, or 
US$1.31bn (HK$10.17bn) or about HK$0.079 per share. Even then, that only 
stretches CSH's value to about <strong>$0.181</strong> per share. <strong>So 
even with a generous valuation, we see a downside of 75% from last night's price</strong>. 
With the deal not certain to complete, it should be trading even lower than 
that.</p>
<p>We say that's generous because Nan Shan has
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091112/LTN20091112608.pdf">
ongoing issues</a> with its 34,000 agents, as well as a
<a target="_blank" href="http://www.bloomberg.com/apps/news?pid=20601087&amp;sid=aiw3zgzU8JmU">
reported</a> potential need for capital to buttress guaranteed-return policies. 
Nan Shan, which in addition to agents has 4,000 employees, was third largest 
last year in terms of premium income, which suggests that there are 2 other 
firms with at least as many employees/agents. Take into account smaller firms 
and there might be 160,000 people in Taiwan, or about 1 in 60 members of the 
Taiwan workforce, who do nothing but sell insurance to the other 59. The finance 
and insurance sector employs 415,000 people in total, according to the National 
Statistics <a target="_blank" href="http://eng.stat.gov.tw/">web site</a>.</p>
<h3>Who's in the deal?</h3>
<p>The placing list for the share placing is not known, but the convertible note 
issue was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090820/LTN20090820159.pdf">
launched</a> back on 20-Aug-09. The 78bn underlying shares (which will be about 
60% of the fully-diluted company) are so massive relative to the existing shares 
that almost all the placees of the note issue have a discloseable &quot;derivative 
interest&quot; in at least 5% of the existing issued shares. So we have been able to 
piece together the placing list from filings, and here it is:</p>
<img class="center" alt="" src="../images/CSHnotes.gif">
<p>Running down the list, with some gaps (updated 16-Nov-09):</p>
<ul>
	<li><a href="../dbpub/positions.asp?p=9267">Cheung Chung Kiu</a> is the 
	Chairman and controlling shareholder of
	<a href="../dbpub/orgdata.asp?p=5025">Yugang International Ltd</a> (<strong>Yugang</strong>, 
	0613) and <a href="../dbpub/orgdata.asp?p=8379">C C Land Holdings Ltd</a> (<strong>CC 
	Land</strong>, 1224), amongst others.</li>
	<li>PMA Strategic Investments Fund is managed by
	<a href="../dbpub/orgdata.asp?p=35776">PMA Capital Management Ltd</a>. We 
	don't know who owns the fund.</li>
	<li><a href="../dbpub/orgdata.asp?p=15522">Get Nice Holdings Ltd</a> (<strong>Get 
	Nice</strong>, 0064) owns the note subscriber
	<a href="../dbpub/articles.asp?p=14367">Get Nice Securities Ltd</a>, and 
	often does placings for listed companies in what we call the Chung Nam 
	network (see below) and also often works for the same clients as Kingston 
	Securities, the placing agent in the CSH deal.</li>
	<li><a href="../dbpub/positions.asp?p=1580">Joseph Lau Luen Hung</a> is the 
	Chairman of <a href="../dbpub/articles.asp?p=1579">Chinese Estates 
	Holdings Ltd</a> (0127).</li>
	<li><a href="../dbpub/natarts.asp?p=62">Cheng Yu Tung</a> is the 
	Chairman and controller of <a href="../dbpub/orgdata.asp?p=432">New World 
	Development Co Ltd</a> (0017) amongst others.</li>
	<li><a href="../dbpub/positions.asp?p=5086">Tang Ching Ho</a> is Chairman 
	and co-founder of <a href="../dbpub/orgdata.asp?p=2475">Wang On Group Ltd</a> 
	(1222).</li>
	<li><a href="../dbpub/positions.asp?p=7330">Ng Leung Ho</a> is 
	Chairman of <a href="../dbpub/articles.asp?p=5142">Wonderful World 
	Holdings Ltd</a> (0109) and founded Good Fellow Group Ltd (now
	<a href="../dbpub/orgdata.asp?p=7328">China Grand Forestry Green Resources 
	Group Ltd</a>, 0910) which originally made money selling uniforms to the 
	Supreme People's Procuratorate of the PRC.</li>
	<li><a href="../dbpub/positions.asp?p=11693">Cho Kwai Chee</a> is CEO of
	<a href="../dbpub/articles.asp?p=11691">Town Health International 
	Holdings Ltd</a> (3886).</li>
	<li><a href="../dbpub/natperson.asp?p=52015">Yam Tak Cheung</a> owns 
	Integrated Capital (Asia) Ltd, which this year successfully
	<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=67832&amp;currpage=T">
	sued</a> <a href="../dbpub/natarts.asp?p=8734">Abba Chan Tat Chee</a>, 
	former Chairman of China Sciences Conservational Power Ltd (now
	<a href="../dbpub/articles.asp?p=4873">Asia Energy Logistics Group Ltd</a>, 
	0351) over a defaulted loan. Abba Chan pleaded guilty to theft and fraud 
	charges in the case. Mr Yam
	<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=07PR72">
	pleaded guilty</a> in 2007 to failure to disclose a shareholding on time. Mr 
	Yam is a controlling shareholder of <a href="../dbpub/articles.asp?p=9458">Green 
	Global Resources Ltd</a> (0061), <a href="../dbpub/articles.asp?p=4810">China Motion 
	Telecom International Ltd</a> (0989) and <a href="../dbpub/articles.asp?p=13593">
	Rojam Entertainment Holdings Ltd</a> (8075) but does not sit on their boards.</li>
	<li>Seekers Master Fund was incorporated in the Cayman Islands on 7-Dec-07 
	and, as of 30-Sep-08, was owned by Hennabun (see below).</li>
	<li><a href="../dbpub/natperson.asp?p=46606">Zhang Xingmei</a> is a 
	non-executive director of <a href="../dbpub/orgdata.asp?p=46597">Renhe 
	Commercial Holdings Co Ltd</a> (1387) and wife of the Chairman,
	<a href="../dbpub/positions.asp?p=46600">Dai Yongge</a>.</li>
	<li><a href="../dbpub/positions.asp?p=3288">Peter Lam How Mun</a> (<strong>Mr 
	Lam</strong>), is the Deputy Chairman of C C Land.</li>
	<li><a href="../dbpub/positions.asp?p=10034">Howard Wong</a> is Chairman of
	<a href="../dbpub/articles.asp?p=4788">GR Vietnam Holdings Ltd</a> (<strong>GR 
	Vietnam</strong>, 0139)</li>
	<li><a href="../dbpub/positions.asp?p=7056">Ou Yaping</a> is Chairman 
	of <a href="../dbpub/orgdata.asp?p=5610">Sinolink Worldwide Holdings Ltd</a> 
	(<strong>Sinolink</strong>, 1168) and <a href="../dbpub/orgdata.asp?p=1843">
	Enerchina Holdings Ltd</a> (0622).</li>
	<li><a href="../dbpub/positions.asp?p=12011">Paul Suen Cho Hung</a> is 
	Chairman of <a href="../dbpub/orgdata.asp?p=18211">BEP International 
	Holdings Ltd</a> (2326) and <a href="../dbpub/orgdata.asp?p=5047">Poly 
	Development Holdings Ltd</a> (1141)</li>
	<li><a href="../dbpub/positions.asp?p=40967">Lee Yuk Lun</a> is Deputy 
	Chairman of <a href="../dbpub/orgdata.asp?p=3017">Rising Development 
	Holdings Ltd</a> (1004).</li>
	<li><a href="../dbpub/positions.asp?p=10623">Anthony Cham Wai Ho</a> 
	is Deputy Chairman of Get Nice.</li>
	<li><a href="../dbpub/positions.asp?p=12179">Yeung Ming Kwong</a> is 
	Chairman of <a href="../dbpub/articles.asp?p=14229">Forefront Group Ltd</a> 
	(<strong>Forefront</strong>, 0885), see below.</li>
	<li><a href="../dbpub/positions.asp?p=534">Benny Kwong Kai Sing</a> is 
	Chairman of <a href="../dbpub/articles.asp?p=4822">Heritage International 
	Holdings Ltd</a> (<strong>Heritage</strong>, 0412), see below. </li>
	<li>Benny Chong Tin Lung used to work for Merrill Lynch, but was terminated 
	in Apr-02 and
	<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=03PR83">
	reprimanded</a> by the SFC for misconduct in Apr-03.</li>
	<li>A Mr Kuk Po Shun <a href="../codocs/SFC041125.pdf">pleaded guilty</a> in 
	2004 to failure to disclose a shareholding. We know nothing else about him. </li>
</ul>
<p>We have no information on Daisy Wong Fung Kwan, Viola Mak Siu Hang, Bryant 
Zhang Yu Tao, Hui Yick Fu or Yan Chi Ping. If you know who any of 
them is, or have more information on any of the other subscribers,
<a href="../contact/"><strong>please tell us</strong></a>.</p>
<p>A bit of trivia: Mr Lam married
<a href="../dbpub/natperson.asp?p=8499">Betty Chong Yuet Wah</a>, a cousin and 
sister-in-law of <a href="../dbpub/natperson.asp?p=747">Li Ka Shing</a>. She is 
the daughter of Mr <a href="../dbpub/natperson.asp?p=48748">Chong Ching Um</a>, 
the founder in 1935 of <a href="../dbpub/orgdata.asp?p=48747">Chung Nam Watch Co 
Ltd</a>. He was the father of the late <a href="../dbpub/natperson.asp?p=24156">
Amy Chong Yuet Ming</a> and uncle of Li Ka Shing, who married cousin Amy. In 
1989, Mr Lam and his wife founded Qualipak Manufacturing Ltd, which made 
packaging boxes for watches. In 1994, they sold it to Unisouth Holdings Ltd (now
<a href="../dbpub/articles.asp?p=3286">Willie International Holdings Ltd</a>,
<strong>Willie</strong>, 0273) for HK$136m in cash. Mr Lam was MD of Willie from 
19-Jul-95 to 20-Jan-99, when he stepped down to chair Qualipak International 
Holdings Ltd which was spun off and listed on 30-Apr-99. After asset injections 
and a change of control, this became C C Land.</p>
<h3>The Chung Nam network</h3>
<p>In 1995 Willie acquired stock and futures brokerages which it renamed
<a href="../dbpub/orgdata.asp?p=12651">Chung Nam Securities Ltd</a> (<strong>Chung 
Nam Securities</strong>) and <a href="../dbpub/orgdata.asp?p=40611">Chung Nam 
Commodities Ltd</a> (<strong>Chung Nam Commodities</strong>) respectively, and a 
shell company which had already agreed to buy a seat on the stock exchange and 
is now a brokerage called <a href="../dbpub/orgdata.asp?p=20730">Radland 
International Ltd</a> (<strong>Radland</strong>). On 6-May-97 Willie sold 60% of 
Chung Nam Commodities to CU Investment (Holdings) Ltd (<strong>CUIH</strong>). 
They hadn't sold it for long. On 26-Nov-97 Willie agreed to buy Hennabun Capital 
Group Ltd (BVI, <strong>Hennabun</strong>), which owned CUIH, from a company 
which was 52.73% owned by Joan Huang Min Chuan, the mother of
<a href="../dbpub/positions.asp?p=9038">Henry Chuang Yue Heng</a> (<strong>Henry 
Chuang</strong>), who was already a director of Radland. Henry Chuang became ED of Willie on 1-Apr-98 and Chairman on 
25-Oct-99, where he remains. His brother, <a href="../dbpub/natarts.asp?p=20431">
Eugene Chuang Yue Chien</a>, has never been on any HK-listed boards.</p>
<p>We pause to note that in the PCCW
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=65708&amp;currpage=T">
vote-rigging case</a>, the judge held that 132 persons in whose names single 
board lots were acquired through Chung Nam Securities, and 18 persons in whose 
names single board lots were acquired through Radland, did so as a result of a 
plan devised by a Eugene Chuang. The judge also held that a plan had been 
devised by <a href="../dbpub/natperson.asp?p=8770">Pollyanna Chu Li Yuet Wah</a> 
to induce employees of Kingston Securities and Golden Resorts Group Ltd, their 
friends and relatives, and clients of Kingston to purchase one to three board 
lots of shares (a total of 175 shareholders) and to sign proxy forms in favour 
of the Scheme of Arrangement to privatise PCCW.</p>
<p>In 1998, Willie reorganised Hennabun, which became the holding company of 
Chung Nam Securities, Chung Nam Commodities and Radland. The reason we are 
telling you this is that Hennabun subsequently became a financial lavatory down 
which other listed companies flushed their capital by investing in its shares or 
convertible notes, and some of those listed companies are or were run by people 
named in the list above.</p>
<ul>
	<li>On 15-Dec-03, Sinolink (controlled by Mr Ou Yaping) subscribed HK$75m 
	for 50m shares (then 17.23%) in Hennabun (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031224/LTN20031224040.pdf">disclosed</a> 
	in a Willie circular of 24-Dec-03). $25m of this was impaired in in 2004, 
	and the remaining $50m in 2005. Sinolink never named the investment.</li>
	<li>On 3-Mar-04, Yugang (controlled by Mr Cheung Chung Kiu) subscribed 
	HK$100m for 80m shares (then 20.56%) in Hennabun, disclosed in
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040406/00613/EWF113.pdf">
	note 38(ii)</a> of its annual report (thank heavens for post balance sheet 
	events, which auditors insist on disclosing). In 2004 Yugang took a $30m 
	impairment loss, and a further $50m in the half-year to 30-Jun-05. After the 
	2005 year-end, the investment was disposed of to an unknown buyer.</li>
</ul>
<p>We consider Sinolink and Yugang to be on the periphery of this network, 
rather than in the core. Other peripheral companies which invested in shares or 
convertible notes of Hennabun included <a href="../dbpub/articles.asp?p=4813">
China Sci-Tech Holdings Ltd</a> (0985), <a href="../dbpub/articles.asp?p=345">
Beauforte Investors Corp Ltd</a> (0021),
<a href="../dbpub/articles.asp?p=4845">Golden Resources Development 
International Ltd</a> (0677), <a href="../dbpub/articles.asp?p=3386">China 
WindPower Group Ltd</a> (0182, then N P H International Holdings Ltd),
<a href="../dbpub/articles.asp?p=15351">China Investment Fund Co Ltd</a> 
(0612) and <a href="../dbpub/articles.asp?p=826">Hanny Holdings Ltd</a> 
(0275).</p>
<p>We're going to make this really simple for you. What we call the Chung Nam 
network currently includes Willie, Heritage, Forefront, two other companies we 
have not yet mentioned, <a href="../dbpub/articles.asp?p=4918">Mascotte Holdings Ltd</a> (<strong>Mascotte</strong>, 0136) 
and
<a href="../dbpub/articles.asp?p=4997">Freeman Corp Ltd</a> (<strong>Freeman</strong>, 0279), 
and two Chapter 21 investment companies,
<a href="../dbpub/articles.asp?p=14910">Radford Capital Investment Ltd</a> (<strong>Radford</strong>, 
0901), and <a href="../dbpub/articles.asp?p=9176">Unity Investment Holdings 
Ltd</a> (<strong>Unity</strong>, 0913) which are both managed by CU Investment 
Management Ltd. Radford and Unity do very little but invest in other companies 
in the network, and there is a history of inter-dealing between these companies, 
even though at the times of most such transactions, they have not been &quot;connected&quot; within the meaning of 
the Listing Rules.</p>
<p>Freeman recently reacquired a controlling stake in Hennabun from Eugene 
Chuang in a deal which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090930/LTN20090930273.pdf">
completed</a> on 30-Sep-09. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090129/LTN20090129323.pdf">
circular</a> dated 30-Jan-09 contains an accountants report (p157 of PDF) shows 
that Hennabun lost HK$516.1m in the 3 years and 9 months to 30-Sep-08. Note that 
we say &quot;reacquired&quot;: Freeman first acquired control of Hennabun from Willie back 
in 2006 (before 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070629/LTN20070629483.pdf">selling</a> it to Eugene Chuang 
on 29-Jun-07), so there is another 
accountants' report in the acquisition
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060524/LTN20060524052.pdf">
circular</a> dated 24-May-06 (p46 of PDF) which shows that in the 2 years ended 
31-Dec-04, it lost HK$562.6m. So that means that in the 5 years and 9 months to 
30-Sep-08, it lost a total of <strong>HK$1,079m</strong>. We don't know what 
they made or lost in the year which passed before completion of the acquisition.</p>
<p>The bulk of this track record was net bad loan provisions of $637.9m. It 
also made a loss of $195.5m in 2005 on disposal of subsidiaries which owned more loans. 
At least some of those loans were made to companies in which Willie said, in
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/00273/EWF113.pdf">
note 43(b)</a> of its 2003 annual report, &quot;a brother of a director&quot; is also a 
director and/or substantial shareholder. Perhaps they were referring to Eugene 
Chuang, brother of Henry Chuang. At the end of 2004, two subsidiaries of 
Hennabun held loans in the amount of $291.62m, of which $200m had been 
guaranteed by &quot;a director of Hennabun&quot;. During 2005, these and possibly other 
subsidiaries were disposed of at a loss of $195.5m.</p>
<p>The table below shows that the combined net loss of these companies in their latest financial year 
(Dec-08 or Mar-09) was HK$3,127m. <strong>Over the last 5 years, they have lost 
HK$6,201m (US$795m)</strong>. We exclude Mascotte and Forefront before 2007 when they 
entered the network.</p>
<img class="center" alt="" src="../images/cnnp&l.gif">
<p>At any given time, large chunks of the stock in these companies (over 30% in 
most cases) is in the custody of Chung Nam Securities. The Webb-site CCASS 
Analysis system shows you the <a href="../ccass/cholder.asp?part=39">current 
holdings</a> of Chung Nam Securities, including many of the other listed 
companies 
mentioned above. The losses are financed by repeated placings of shares and 
convertible notes (often with each other), and rights issues. The resulting 
dilution necessitates repeated consolidation (reverse split) of the shares. For 
example, Freeman has consolidated by 500,000 to 1 since 1998, and Heritage has 
consolidated by 1,000,000 to 1 since 18-Sep-01. It is difficult to conceive an 
easier way to lose your money than investing in the Chung Nam network.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12652">Allied Weli Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17260">American International Group, Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4997">Arta TechFin Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8379">C C Land Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15351">Carmen Century Investment Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=46597">China Dili Group</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4918">China Ruyi Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3017">China Smarter Energy Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1579">CHINESE ESTATES HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5047">CMBC Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3386">Concord New Energy Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2911">CSC Holdings Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4813">CST Holding (HK) Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15522">GET NICE HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14367">GET NICE SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4845">GOLDEN RESOURCES DEVELOPMENT INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14910">Goldstone Investment Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5142">Good Resources Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=345">Great China Holdings (Hong Kong) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9176">Harbour Digital Asset Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=52014">INTEGRATED CAPITAL (ASIA) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3286">MASON GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=826">Master Glory Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=54045">Nan Shan Life Insurance Company, Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18211">New Provenance Everlasting Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=432">NEW WORLD DEVELOPMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1843">Oshidori International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20730">Oshidori Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5025">Planetree International Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=35776">PMA Capital Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14229">Rentian Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12651">SEEKERS MARKETS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4822">SHANDONG HI-SPEED HOLDINGS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4788">Smart Fish Wealthlink Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11691">Town Health International Medical Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2475">WANG ON GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5610">Z Fin Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10623">Cham, Anthony Wai Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=62">Cheng, Yu Tung (1925-08-27)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9267">Cheung, Chung Kiu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11693">Cho, Roy Kwai Chee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=54065">Chong, Benny Tin Lung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8770">Chu Lee, Pollyanna Yuet Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20431">Chuang, Eugene Yue Chien</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9038">Chuang, Henry Yueheng</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46600">Dai, Yongge</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=54067">Kuk, Po Shun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3288">Lam, Peter How Mun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1580">Lau, Joseph Luen Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40967">Lee, Alan Yuk Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=66787">Mak, Viola Siu Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7330">Ng, Leung Ho (1949)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7056">Ou, Yaping</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12011">Suen, Paul Cho Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5086">Tang, Ching Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10034">Wong, Howard (1956)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=52015">Yam, Tak Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12179">Yeung, Ming Kwong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46606">Zhang, Xingmei</a></li>
				
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