
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

<script type="text/javascript">document.title="PCCW Equity Funding";</script>

	<div class="summary">This page provides details of the various equity issues for cash by Pacific Century CyberWorks. It does not include shares issued in exchange for assets or shares of other companies.</div>

<h2 class="center">PCCW Equity Funding<br>
<span class="headlinedate">15 February 2000</span></h2>
<h3>Summary</h3>

<p>In the last 9 months PPCW has conducted 5 placings and a US$50m
issue to Intel, raising an estimated total of US$2,377m net of expenses, as
shown in the table below:</p>

<img class="center" alt="" src="../images/pccwfu1.gif">

<p>Note: the above table assumes that the
over-allotment option for the placing announced on 14-Feb-00 will be exercised.</p>

<h3>Placing 5</h3>

<p>On 14-Feb-00 PCCW made a preliminary <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000214/LTN20000214106.HTM" target="_blank">announcement</a>
of a placing of 250m shares, subject to an over-allotment option of a further
85m shares at HK$23.50 per share, raising
a total of $7,704m (US$990m) assuming exercise of the over-allotment option. The
placing was led by BNP Prime Peregrine and BOCI Asia (Bank of China's securities
arm). The other placing agents were UBS and CSFB. The shares represent 3.47% of
the enlarged issued share capital. </p>

<p>It was intended that the proceeds &quot;<i>may be used in
connection with the possible transaction relating to a merger between [PCCW] and
Cable &amp; Wireless HKT Ltd.</i>&quot; </p>

<h3>Placing 4</h3>

<p>On 25-Jan-00 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000126/LTN20000126013.HTM" target="_blank">announced</a> a placing of 188m shares at
HK$15.80 per share. The next day this was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000127/LTN20000127044.HTM" target="_blank"> enlarged</a> to 248m shares by the full
exercise of an over-allotment option, raising a total of $3,833m (<b>US$492.7m</b>) net
of expenses. The placing was conducted through BNP Prime Peregrine (as lead
manager), CSFB, HSBC and Jardine Fleming. The new shares represented 2.66% of
the enlarged issued share capital. </p>

<p>Of the proceeds, HK$2,945m (US$378.5m) were <i>&quot;earmarked...
for the establishment of and investment in CMGI Asia and the implementation of
its business plan.&quot;</i> </p>

<h3>Placing 3</h3>

<p>On 13-Oct-99 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991014/LTN19991014027.HTM" target="_blank">announced</a>
a placing of 635m shares at HK$6.10 per share. The next day this was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991015/LTN19991015032.HTM" target="_blank">enlarged</a>
to 668,863,000 shares by the partial exercise of an over-allotment option by BNP
Prime Peregrine, the lead manager. The other placing agents were HSBC and
Jardine Fleming. The placing raised a total of $3,992m (<b>US$513.1m</b>) net of
expenses. The new shares represented 7.96% of the enlarged issued share capital. </p>

<p>Of the proceeds, US$129m were used for the investment in SoftNet
Systems. </p>

<h3>Placing 2</h3>

<p>On 13-Sep-99 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990914/LTN19990914024.HTM" target="_blank">announced</a>
a placing of 360m shares at HK$5.55 per share. The next day this was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990915/LTN19990915031.HTM" target="_blank">enlarged</a>
to 414m shares by the exercise in full of the over-allotment options. The
placing agents were BNP Prime Peregrine, CSFB, HSBC and Jardine Fleming. The
estimated proceeds were HK$2,247m (<b>US$288.8m</b>) net of expenses. </p>

<p>It was intended that the proceeds would be used &quot;<i>entirely
for the operational launch and development of the business of Pacific Century
Convergence Corporation Ltd</i>&quot;, a 60% owned subsidiary of PCCW. </p>

<h3>Investment by Intel</h3>

<p>On 2-Aug-99 PCCW <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990802/LTN19990802038.HTM" target="_blank">announced</a>
that Intel Pacific, Inc would subscribe <b>US$50m</b> for 77,800,000 shares at
HK$5 per share. The proceeds were to be invested in Pacific Convergence
Corporation, Ltd in order to enable it to purchase equipment from Intel. </p>

<h3>Placing 1</h3>

<p>On 3-May-99 in conjunction with the takeover of the company by
PCG, PCCW (then Tricom) <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990504/LTN19990504025.HTM" target="_blank">announced</a>
a placing of 1,151,056,000 shares at HK$0.31 per share to raise net proceeds of
HK$329m (<b>US$42.3m</b>). Note: these figures have been adjusted for the 5:1
consolidation of shares. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
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