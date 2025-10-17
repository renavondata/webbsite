
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

<script type="text/javascript">document.title="ICEA déjà vu";</script>

	<div class="summary">We look at the latest action by the SFC against ICEA, the second in three years, and also at the complicated structure of state-controlled banking giant ICBC in Hong Kong.</div>

<h2 class="center">ICEA déjà vu<br>
<span class="headlinedate">6 June 2008</span></h2>
<p>Reading today's
<a href="../codocs/SFC080606b.pdf" target="_blank">press release</a> from the SFC that it has <em>&quot;resolved certain compliance 
issues&quot;</em> with ICEA Capital Ltd (<strong>ICEAC</strong>) and ICEA Securities 
Ltd (<strong>ICEAS</strong>) gives us a feeling of <em>déjà vu</em>.</p>
<p>ICEAC and ICEAS are both owned by
<a target="_blank" href="http://www.icea.com.hk/">ICEA Finance Holdings Ltd</a> 
(incorporated in the British Virgin Islands), which is 75% owned by 
state-controlled giant Industrial and Commercial Bank of China Ltd (<strong>ICBC</strong>, 
01398) and 25% by The Bank of East Asia, Ltd (BEA, 00023).</p>
<p>The SFC found that from 2002 to 2004, senior staff members (all of whom have 
since left) created an impression that ICEAC and ICEAS were providing improper 
support to a certain listed stock, although the SFC didn't say which one, so <em>
Webb-site.com </em>finds that the SFC falls short on disclosure in this respect. 
The SFC also found a failure to maintain a sufficiently robust Chinese Wall 
between proprietary trading and corporate finance on two occasions, and various 
other failings.</p>
<p>Under the resolution, ICEAC and ICEAS have been fined HK$38m (US$4.87m), and 
have agreed to engage an independent audit firm to conduct reviews of their 
internal control and compliance systems at a time to be chosen by the SFC within 
the next 3 years. If the companies are found to have committed material breaches 
or failures within that period, their licenses <u>may</u> 
be revoked.</p>
<p>We emphasise &quot;may&quot;, because this isn't the first time they've settled with 
the SFC and agreed to clean up their act.</p>
<p>Back on 27-Jan-05, the SFC
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=05PR17">
announced</a> that ICEAC agreed to pay HK$30m to settle disciplinary proceedings 
in which the SFC alleged that ICEAC had not exercised due skill, care and 
diligence as sponsor of the listing of <a target="_blank" href="../dbpub/articles.asp?p=14974">Euro-Asia Agricultural (Holdings) Co Ltd</a>, 
which was suspended in Sep-02, 14 months after it listed, and eventually 
liquidated. ICEAC did not admit liability and the SFC <em>&quot;made no finding of 
wrongdoing&quot;</em> despite its allegations. ICEAC agreed to engage a firm of 
independent accountants to undertake a comprehensive review of its systems and 
controls.</p>
<p>In the Jan-05 release, the SFC noted that <em>&quot;the members of senior 
management responsible for ICEAC's work on the Euro-Asia listing are no longer 
with ICEAC&quot;</em>. Skip forward to 2008, and the SFC notes that <em>&quot;since 2005, 
ICEAC and ICEAS have installed entirely new management teams&quot;</em>.</p>
<p>According to ICBC's 2007 annual report, ICEA made net profit of US$23.82m and 
had net assets of US$69m at year end, so the&nbsp; fine this time amounts to 
about 20.4% of last year's profit - but then they may only have to make such 
payments every 3 years. One has to wonder how many changes of management, how 
many undertakings to clean up compliance, and how many financial settlements are 
allowed before a firm actually gets its licence revoked - it hasn't happened 
yet, to any firm. Perhaps a three-strikes-and-you're-out rule should apply.</p>
<h3>ICBC (Asia) Securities </h3>
<p>Incidentally, ICEA isn't the only arm of ICBC to get into trouble with the 
SFC. On 6-Nov-07, ICBC (Asia) Securities Ltd, a fellow subsidiary wholly-owned 
by Industrial and Commercial Bank of China (Asia) Ltd (<strong>ICBCA</strong>, 
0349), was r<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=07PR186">eprimanded 
and fined</a> a paltry HK$350,000 for failing to maintain the required liquid 
capital of 5% of its liabilities on 4 days between 27-Oct-06 and 3-Nov-06. This 
was when a client sold a large amount of a newly-listed stock on 2 days. Again, 
the SFC didn't say which stock they were talking about, but it was probably ICBC 
itself, which listed on 27-Oct-06.</p>
<p>The brokerage fell short by HK$41m of liquid capital, which implies that the 
client sold at least HK$820m of ICBC stock, probably more. That client certainly 
wasn't an applicant in the Public Offer, since the highest allocation in the 
heavily over-subscribed IPO was only 16.417m shares worth about $57m. So it must 
be someone who got shares in the placing. Since the brokerage isn't known for 
its institutional client base, you have to wonder who was the lucky client which 
got such a generous placing allocation.</p>
<h3>One market, two listings, three investment arms?</h3>
<p>It can only be a matter of time before ICBC privatises ICBCA, formerly Union 
Bank of Hong Kong Ltd, of which ICBC acquired control in 2000. After ICBC's own 
listing, ICBCA is just a loose end, although the parent denies any plans. The 
continued separate existence of ICBCA also results in continuing related party 
transactions - ICBCA's largest single borrower is ICBC itself, and as of 
5-Jun-08, the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080605/LTN20080605303.pdf">
amount ICBC owes ICBCA</a> had risen to HK$34.6bn, or about 2.5 times the net 
tangible assets of ICBCA. That's up from HK$18.4bn on
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071123/LTN20071123303.pdf">
23-Nov-07</a>. Loans from banks to their parents in the &quot;ordinary and usual 
course of business&quot; are exempt from the connected transaction rules by
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_14A.pdf">
Listing Rule 14A.65(1) and 14A.10(9)</a>, so independent shareholders of ICBCA 
have no say over this. There are also advances in the opposite direction, 
although we don't know what the latest level of those is. </p>
<p>ICEA itself is beginning to look short-dated; on 27-May-07 a new company, 
ICBC International Capital Ltd (<strong>ICBCIC</strong>), was
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&amp;ceref=AQW615&amp;applNo=0001">
licensed</a> by the SFC for corporate finance (but not for advising on Takeover 
and Mergers). So far it only has two responsible officers, and no other licensed 
staff. Another company, ICBC International Securities Ltd, was incorporated in 
HK on 7-Apr-08, the same day as ICBCIC, although it does not yet have an SFC 
licence. It seems likely that these two will form the nucleus of a new 
investment banking group, and ICEA may find itself absorbed into ICBC or 
closed.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14974">EURO-ASIA AGRICULTURAL (HOLDINGS) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5449">ICEA CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2025">INDUSTRIAL AND COMMERCIAL BANK OF CHINA (ASIA) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1689">Industrial and Commercial Bank of China Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16746">Tung Shing Securities (Brokers) Limited</a></li>
				
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