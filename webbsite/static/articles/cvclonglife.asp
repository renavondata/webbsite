
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

<script type="text/javascript">document.title="Capital VC (2324) and Longlife (8037)";</script>

	<div class="summary">Our analysis shows that a general offer may have been triggered for Longlife and possibly for Capital VC too. We look at the close relationship between the two and the people involved. We also ask how a person could continue to act as director of a valuer, issuing valuation opinions for numerous listed companies, without disclosing that he was bankrupt at the time.</div>

<h2 class="center">Capital VC (2324) and Longlife (8037)<br>
<span class="headlinedate">14 August 2011</span></h2>
<p>Time for a look at cosmetics and health products distributor <a href="../dbpub/orgdata.asp?p=21238">Longlife 
Group Holdings Limited</a> (<strong>Longlife</strong>, 8037) which listed on GEM 
on 17-Nov-2004. It appears to us that a general takeover offer for this company, and 
possibly one for its substantial shareholder, <a href="../dbpub/orgdata.asp?p=18187">Capital VC Ltd</a> 
(<strong>CVC</strong>, 2324), should have been forthcoming. Allow us to explain. 
A key figure in this story is <a href="../dbpub/positions.asp?p=18594">Peter Yau Chung Hong</a> (<strong>Mr 
Yau</strong>), an Executive Director of CVC since its listing in 2003, so bear 
that name in mind as we move along.</p>
<h3>A short history of Longlife</h3>
<p>On 22-Mar-2007, Longlife's founder and former Chairman 
<a href="../dbpub/positions.asp?p=21239">Yang Hong Gen</a> (<strong>Mr Yang</strong>) 
resigned. On 18-Jun-2007, Mr Yang
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20070618/GLN20070618033.pdf" target="_blank">
sold</a> 135m shares (27.00%) of Longlife to 
<a href="../dbpub/positions.asp?p=41549">Zheng Lixin</a> (<strong>Mr Zheng</strong>) 
for $0.252 per share, cutting his stake from 56.10% to 29.10%. On 31-Oct-2007, Mr Zheng was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20071031/GLN20071031098.pdf" target="_blank">
appointed</a> Chairman and CEO of Longlife.</p>
<p>On 24-Nov-2009, CVC, an investment company listed under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_21.pdf" target="_blank">
Chapter 21</a> of the Listing Rules, bought 37.675m shares (7.06%) of Longlife 
on-market at $0.23 per share. The next day, 
25-Nov-2009, the stock shot up for
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20091125/GLN20091125008.pdf" target="_blank">
no apparent reason</a>, and CVC sold 10.165m shares (1.90%) at an average 
$0.325, a 41% one-day profit, but it later bought back in.</p>
<p>On 7-Dec-2009 Mr Yang
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20091207/GLN20091207058.pdf" target="_blank">
sold</a> his remaining 145.5m shares (27.28%) in the market at $0.23 per share. Of those shares, simultaneous disclosures show that 
105m shares were placed in three equal amounts of 35m shares (6.56%) with:</p>
<ol>
	<li>CVC (increasing its stake from 4.92% to 10.59%);</li>
	<li><a href="../dbpub/natarts.asp?p=39926">Au Yeung Kai Chor</a>, a man who 
	has held executive directorships in, and conducted transactions with, listed 
	members of what we call the "Chung Nam Network", and was 
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100804/LTN20100804744.PDF" target="_blank">censured</a> by the Stock 
	Exchange on 4-Aug-2010; and</li>
	<li><a href="../dbpub/orgdata.asp?p=67595">Eftpos Ltd</a> (<strong>Eftpos</strong>), 
	a BVI company. At least up to 5-Feb-2008, Eftpos was wholly-owned by one Wu 
	Wai Yin, and through that company, he had earlier held stakes of 9.94% in 
	CVC and 
	7.90% in <a href="../dbpub/orgdata.asp?p=14446">Prosticks 
	International Holdings Ltd</a> (8055). Eftpos later held 7.07% of
	<a href="../dbpub/orgdata.asp?p=18358">Kaisun Energy Group Ltd</a> (<strong>Kaisun</strong>, 
	8203). Neither Mr Wu nor any other person disclosed any interest in the 
	shares of Kaisun or Longlife held by Eftpos.</li>
</ol>
<p>On 1-Oct-2009, Mr Zheng
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20090930/GLN20090930074.pdf" target="_blank">
stepped down</a> as CEO of Longlife but remained as Chairman. On 29-Dec-2009, he 
began selling his 25.31% holding, eventually reducing to 0.83% on 10-Mar-2010. 
He
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100407/GLN20100407101.pdf" target="_blank">
resigned</a> as Chairman and director on 7-Apr-2010. At least some of his 
holding was acquired by CVC. For example CVC
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=128774&amp;lang=EN&amp;dia=Y" target="_blank">
bought</a> 40m shares (7.5%) on 30-Dec-2009, the day that Mr Zheng
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=90612&amp;lang=EN&amp;dia=Y" target="_blank">
sold</a> 40.85m shares, out of the 43.77m shares traded in the market that day.</p>
<p>Soon afterwards, CVC's influence on Longlife began to increase, as we will 
show.</p>
<h3>New Longlife ED and INEDs</h3>
<p>On 19-Jan-2010, a new ED, <a href="../dbpub/positions.asp?p=18596">Cheung 
Hung</a> (<strong>Mr Cheung</strong>) and 2 INEDs, <a href="../dbpub/positions.asp?p=56157">Chan 
Wai Yan</a> (<strong>Ms Chan</strong>) and
<a href="../dbpub/natarts.asp?p=49969">William Sham Chi Keung</a> (<strong>Mr 
Sham</strong>) were
appointed to Longlife. By then, CVC had
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=129320&amp;lang=EN&amp;dia=Y" target="_blank">
increased</a> its holding to 22.40% of Longlife.</p>
<p>The 
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100119/GLN20100119043.pdf" target="_blank">announcement</a> 
of the appointments doesn't disclose (because it was more than 3 years earlier) 
that Mr Cheung was an NED of CVC from its listing until 6-Aug-2004. Mr Cheung 
became Chairman of Longlife on 7-Apr-2010. He was Vice President of Sales for Guotai Junan Securities (Hong Kong) Ltd, one of the co-Lead managers of CVC's 
listing in 2003. He 
was a licensed representative of the brokerage until 12-Sep-2008. A fellow 
subsidiary, <a href="../dbpub/adviserships.asp?p=24272">Guotai Junan Assets 
(Asia) Ltd</a>, was the investment manager of CVC from 1-Jun-2004 to 
16-May-2007. According to Longlife, he is now the Vice President of <a href="../dbpub/orgdata.asp?p=67587">
Guoyuan Asset Management (Hong Kong) Ltd</a>.</p>
<p>Ms Chan is also the sales director of gold 
dealer <a href="../dbpub/orgdata.asp?p=67592">CNI Bullion Ltd</a>, which is 30% 
owned by CVC (the maximum percentage allowed for a Chapter 21 company) and 
generated most of CVC's profit in 2010. 
We don't know who owns the rest of CNI Bullion, but that stake puts her 
independence into question, as she is an employee of an associate of CVC, 
a substantial shareholder of Longlife. How can Ms Chan be independent of 
Longlife? It appears that CNI Bullion is part of a larger group of financial 
services companies under the umbrella of <a href="../dbpub/orgdata.asp?p=59555">
CNI Securities Group Ltd</a>. According to note 34 of CVC's
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101027/LTN20101027353.pdf" target="_blank">
2010 annual report</a>, Mr Yau has beneficial interests in
<a href="../dbpub/orgdata.asp?p=67892">CNI Securities Ltd</a>,
<a href="../dbpub/orgdata.asp?p=67893">CNI Financial Holdings Ltd</a> and
<a href="../dbpub/orgdata.asp?p=67894">CNI Assets Management Ltd</a>. Another 
group company is <a href="../dbpub/orgdata.asp?p=67935">CNI Credit Ltd</a>.</p>
<p>So that's 2 of the 3 new directors we can link to CVC.</p>
<p>The third director, Mr Sham, has no connection to CVC that we are aware of, but he has featured in two previous Webb-site articles for his work 
as a valuer of businesses acquired by listed companies. In the first of those,
<a href="grandfield1.asp">Cooking with Gas</a> (4-Mar-2004), two 
directors of the client company, <a href="../dbpub/articles.asp?p=4802">Grand 
Field Group Holdings Ltd</a> (0115) were subsequently jailed after charges were 
brought by the ICAC relating to the fraudulent acquisition. Mr Sham was not 
charged with any offence.</p>
<h3>A bankrupt valuer</h3>
<p>According to a follow-up announcement by Longlife made 3 days after his 
appointment, Mr Sham was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100122/GLN20100122057.pdf" target="_blank">
declared bankrupt</a> on 11-Jun-2003 and discharged from bankruptcy 5 years 
later. It is interesting to note that his bankruptcy did not apparently stop him 
acting as Executive Director of B.I. Appraisals Ltd and signing valuation 
reports in numerous listed company circulars while he was bankrupt. Perhaps he 
obtained leave of the court to act as director under
<a href="http://www.hklii.org/hk/legis/en/ord/32/s156.html" target="_blank">
section 156</a> of the Companies Ordinance. As far as we know, his bankruptcy 
was not disclosed in any of those reports. It only came to light because 
directors of HK-listed companies have to disclose past bankruptcies. </p>
<p>Whatever the reasons for his bankruptcy, investors in those companies might 
have viewed the valuations differently if they had known that they were being 
written by an undischarged bankrupt. For a list of HK-listed clients of his firm,
<a href="../dbpub/adviserships.asp?p=16425">click here</a>. The &quot;1-time&quot; 
appointments relate to reports in circulars to shareholders. The others relate 
to ongoing appearances as a valuer in annual reports.</p>
<h3>Athens Capital</h3>
<p>We pause to note that according to CVC's 2010 annual report, Mr Yau had 
beneficial interests in <a href="../dbpub/adviserships.asp?p=49246">Athens 
Capital Ltd</a> (<strong>ACL</strong>). ACL acted as placing agent for Longlife 
in a
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100210/GLN20100210079.pdf" target="_blank">
placing of new shares</a> at $0.215 per share on 10-Feb-2010 which
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100310/GLN20100310087.pdf" target="_blank">
completed</a> on 10-Mar-2010.</p>
<h3>Options for CVC</h3>
<p>On 9-Apr-2010, Longlife
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100412/GLN20100412001.pdf" target="_blank">
granted</a> options to CVC to subscribe 500,000 shares, exercisable at $0.355 
per share for 10 years. No justification was offered for this grant of options 
to a substantial shareholder. It's not as if CVC is an employee who required 
incentivisation.</p>
<h3>Cohabiting</h3>
<p>In fact, Longlife and CVC were getting on so well together that they decided to 
share an office lease, jointly signing a tenancy agreement for part of the 76th floor 
of HK's tallest building, the spanking new International Commerce Centre, for 3 
years starting 5-Jul-2010. At that time, CVC owned 9.16% of Longlife, and 
Longlife had not yet become a disclosed shareholder of CVC.</p>
<p>The joint tenancy was first disclosed on page 14 of the Longlife annual
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20101222/gln20101222031.pdf" target="_blank">
results announcement</a> on 22-Dec-2010. If either company defaults on its half 
of the rent, then the other company is liable for the full amount. According to 
their reports, CVC occupies Suite 7601B, and Longlife occupies Suite 7602A.</p>
<h3>Common auditor</h3>
<p>On 3-Sep-2010, Longlife
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100903/GLN20100903083.pdf" target="_blank">
announced</a> it was changing auditors from ShineWing (HK) CPA Ltd to
<a href="../dbpub/adviserships.asp?p=33560">Cheng &amp; Cheng Ltd</a>, which audits 
just 4 other listed companies in HK, including CVC, which made the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090908/LTN20090908385.pdf" target="_blank">
same change</a> of auditor on 8-Sep-2009.</p>
<h3>CVC/Longlife cross-holding</h3>
<p>Now here's the (even more) interesting thing. Some time before 9-Dec-2010, Longlife began 
investing in the stock market. Of all the stocks it could have bought, it bought 
shares in its own shareholder, CVC,
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=149907&amp;lang=EN&amp;dia=Y" target="_blank">
passing through</a> the 5% disclosure threshold on 9-Dec-2010 and increasing 
since then.</p>
<p>Mr Yau currently owns 22.18% of 
CVC (since 14-Apr-2011). According to p15 of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110727/LTN20110727369.pdf" target="_blank">
CVC circular</a> dated 28-Jul-2011, as at 25-Jul-2011, Mr Yau also owned 7.99% 
of Longlife, CVC owned 23.14% of Longlife, and Longlife owned 8.92% of CVC.</p>
<p>CVC
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=161167&amp;lang=EN&amp;dia=Y" target="_blank">
cut its holding</a> in Longlife from 23.17% to 22.80% on 29-Jul-2011. Based on 
the latest disclosures, here are the holdings:</p>
<img class="center" alt="CVCLonglife" src="../images/CVCLonglife.gif">
<p>As you can see, Mr Yau and CVC now have more than 30% of Longlife, and Mr Yau 
and Longlife now have more than 30% of CVC.</p>
<h3>A general offer for Longlife?</h3>
<p>As a director of CVC, Mr Yau is presumed under the
<a href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H622" target="_blank">
Takeover Code</a> (paragraph 2 of the definition) to be &quot;acting in concert&quot; with 
CVC. If they are acting in concert, then they together cannot increase their 
holding above 30% of Longlife without triggering a general offer. Based on the 
circular, on 25-Jul-2011 he and CVC together held 7.99+23.14=<strong>31.13%</strong>, so a 
general offer should have been triggered on or before that date when the 
combined holding first reached 30%, at the highest price that either of them 
paid in the preceding 6 months or since that date. <strong>We call on the SFC to 
determine whether a general offer obligation has been triggered by the presumed 
concert party, as we think it has.</strong></p>
<p>We don't know exactly when they crossed the 30% threshold, or what is the 
highest price that either of them has paid, but we do know that it is at 
least $0.28 per share which CVC
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=155291&amp;lang=EN&amp;dia=Y" target="_blank">
paid</a> on 15-Mar-2011. That compares with Friday's (12-Aug-2011) closing price 
of $0.228 per share. Until the question of a general offer is determined, it 
would be wise to suspend trading in the shares of Longlife.</p>
<p>Being a Chapter 21 investment company, under Rule 21.04(3)(a), CVC is not 
allowed to own more than 30% of an investee company or take management control 
of it. So if a general offer for Longlife is to be made by Mr Yau and/or CVC, 
then it will be up to them to resolve that problem between them. The Listing Rules do not 
affect any obligation they may have under the Takeover Code. CVC does have an 
investment manager which can advise upon investments, but it is clear from the 
prospectus that &quot;the Directors are responsible for approval of all investment 
decisions&quot; so it cannot be argued that the investment manager put them into this 
situation.</p>
<h3>A general offer for CVC?</h3>
<p>On 17-May-2011, Longlife
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=159566&amp;lang=EN&amp;dia=Y" target="_blank">
increased</a> its stake in CVC from 7.73% to 9.12%. Taken together with Mr Yau's 
holding in CVC (which is accurate because every dealing by a director must be 
disclosed), the combined stake increased from 29.91% to <strong>31.30%</strong> at $0.44 per 
share, passing through the takeover threshold of 30%. There is no <em>
presumption</em> in the Takeover Code that Mr Yau and Longlife 
were acting in concert, but that doesn't mean that they weren't. At the time, CVC 
and Mr Yau together owned about 25% of Longlife, and there are other circumstances outlined above (the directors, the shared 
office lease, the share option grant, the common auditor, and the Athens Capital 
placing) which could allow this 
inference. <strong>The SFC should consider whether in reality Mr Yau and 
Longlife were acting in concert to acquire control of CVC and therefore whether 
a general offer is required.</strong></p>
<p>Obviously it would not make much sense if CVC and Longlife were to make 
general offers for each other, because that could result in annihilation of the 
outside equity, rather like binary stars merging into a black hole, so if both 
offers have been triggered then at least one of the offers would have to be made by 
the only other person involved, Mr Yau.</p>
<h3>Joining the Chung Nam Network</h3>
<p>On 9-Jun-2011, CVC
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110609/LTN20110609697.pdf" target="_blank">
announced</a> that it proposed to issue 250m shares, or 29.72% of its enlarged 
capital, to <a href="../dbpub/articles.asp?p=3286">Willie International Holdings 
Ltd</a> (0273), a core member of the Chung Nam Network, via Chung 
Nam Securities Ltd as &quot;placing agent&quot;. CVC joins two 
other Chapter 21 investment companies in that network,
<a href="../dbpub/articles.asp?p=14910">Radford Capital Investment Ltd</a> (<strong>Radford</strong>, 
0901) and <a href="../dbpub/articles.asp?p=9176">Unity Investments Holdings Ltd</a> 
(<strong>Unity</strong>, 0913). The issue price is a 17.1% discount to the 5-day 
average price, but more importantly, a highly dilutive 59% discount to the net 
asset value per share - something the announcement doesn't even mention, 
although it is covered in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110727/LTN20110727369.pdf" target="_blank">
circular</a>.</p>
<p>The subscription was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110812/LTN20110812798.pdf" target="_blank">
approved</a> at the EGM held on 12-Aug-2011. If it completes, then that will 
dilute Mr Yau and Longlife's combined holding in CVC below 30%, but that doesn't absolve 
them from making a general offer - they would just have to make the offer to a 
larger share base.</p>
<p>Mr Yau was appointed as an INED of
<a href="../dbpub/articles.asp?p=4997">Freeman Financial Corp Ltd</a> (<strong>Freeman</strong>, 
0279) on 26-Nov-2010 and as an INED of Radford on 30-Jun-2011. Freeman is also a 
core member of the Chung Nam Network. It is also worth noting that according to 
an
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070426/ltn20070426315.pdf" target="_blank">
announcement</a> of 26-Apr-2007, Mr <a href="../dbpub/positions.asp?p=12179">
Yeung Ming Kwong</a>, Chairman of <a href="../dbpub/articles.asp?p=14229">
Forefront Group Ltd</a> (<strong>Forefront</strong>, 0885), another company in 
the Chung Nam Network, is or was a director of B.I. Appraisals Ltd, Mr Sham's 
valuation firm. That firm acted as Forefront's investment property valuer in its 
2007 annual report and has also done work for Freeman twice in 2008 as well as 
acting for <a href="../dbpub/articles.asp?p=13425">Dragonite International Ltd</a> 
(<strong>Dragonite</strong>, 0329), another member of the network, on 
20-Jun-2011.</p>
<h3>Market Misconduct Tribunal</h3>
<p>And there's one more thing.</p>
<p>On 12-Apr-2011, the Financial Secretary of HK
<a href="../codocs/FS-MMT110412.pdf" target="_blank">
instructed</a> the Market Misconduct Tribunal to investigate whether Mr Yau and 
<a href="../dbpub/positions.asp?p=5457">Duncan Chui Tak Keung</a> (<strong>Mr Chui</strong>) had engaged in false trading, 
price rigging or stock market manipulation in the shares of CVC prior to a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090115/LTN20090115637.pdf" target="_blank">
placing</a> in Jan-2009. Mr Chui was Chairman at the time and remains an 
Executive Director of CVC. The
<a href="http://www.mmt.gov.hk/eng/hearings/hearings.htm" target="_blank">
substantive hearings</a> in the MMT case are scheduled for October and November 
2011. That should keep them both busy.</p>
<p>Mr Chui is an interesting chap himself. A grandson of the founder of the
<a href="../dbpub/articles.asp?p=63424">Fook Lam Moon 
Restaurant</a> (where a dispute between his father and other relatives is 
underway), he is also CEO of AIM-traded <a href="../dbpub/orgdata.asp?p=67831">China 
Private Equity Investment Holdings Ltd</a> (AIM:<strong>CPEH</strong>). The bulk 
of the assets of CPEH are in 33.6% of a company called
<a href="../dbpub/orgdata.asp?p=67848">Fortel Technology Holdings Ltd</a> (<strong>Fortel</strong>). 
This is accounted for as an investment rather than associate, so few numbers 
have been disclosed, but CPEH
<a href="http://www.cpe-invest.com/index.php/download_file/62/145/">said in 
April</a> that it hopes to list Fortel in HK later in 2011. Mr Chui owns 47.8% 
of Fortel himself, and part of the family stake was sold to CPEH in the first 
place.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=18187">Capital VC Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=33560">CHENG & CHENG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21238">China Biotech Services Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67592">CNI BULLION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67595">Eftpos Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67848">Fortel Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49246">FORTUNE FINANCIAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67831">Jade Road Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3286">MASON GROUP HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=39926">Au Yeung, Kai Chor</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=56157">Chan, Wai Yan (1974)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=18596">Cheung, Ben Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5457">Chui, Duncan Tak Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49969">Sham, William Chi Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=18594">Yau, Peter Chung Hong</a></li>
				
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