
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

<script type="text/javascript">document.title="Revealed: SFC probes Chairman, CEO of Hua Han Health (0587), freezes their accounts";</script>

	<div class="summary">The SFC has frozen accounts at 3 brokerages up to HK$3.81bn, the amount raised by HHH in 2015 in an open offer ($3.19bn) and a CB ($0.62bn) issued to Huarong (2799) and CCB (0939). The SFC suspects false or misleading statements and misappropriation of part of the proceeds.</div>

<h2 class="center">Revealed: SFC probes Chairman, CEO of Hua Han Health (0587), freezes their accounts<br>
<span class="headlinedate">16 February 2019</span></h2>
<p>We do love a good puzzle to test our surveillance systems. Yesterday (15-Feb-2019) the SFC announced that it has issued restriction 
notices to 3 brokers freezing certain unnamed clients' accounts:</p>
<blockquote>"which are related to the suspected disclosure of false or 
misleading financial information in various announcements, annual results and 
annual reports of a listed company, which was likely to induce transactions."</blockquote>
<p>The announcement made no mention of the fact that the 3 Notices (<a href="../codocs/SFC190215.pdf" target="_blank">bundled here</a>), dated 30-Jan-2019, were also published yesterday in the Gazette.&nbsp; 
Although the Notices still don't name the listed company or clients involved, we 
can tell you who they are.</p>
<p>The Notices state that:</p>
<blockquote>"the announcements relate to certain fund raising activities in 2015 
whereby the Listed Company raised a total sum of HK$3,814,551,000...</blockquote>
<blockquote>the suspected culprits responsible for the disclosure of false or 
misleading information are two individuals who are part of the senior management 
of the Listed Company...</blockquote>
<blockquote>The two individuals are also suspected to have misappropriated 
HK$258,500,000 which forms part of the proceeds raised by the Listed Company 
through the fund raising activities in 2015, via their wholly-owned and 
controlled British Virgin Islands (BVI) incorporated companies.</blockquote>
<blockquote>Company A was one of the BVI companies which received part of 
the suspected misappropriated funds."</blockquote>
<p>In one of the brokerages, <a href="../dbpub/articles.asp?p=16123">Kingston Securities Ltd</a> (<strong>Kingston</strong>), 
Company A has 2 margin accounts and at 22-Nov-2018, there were a total of about 
2,059m shares of the Listed Company held in the Accounts which the Commission 
estimates to be worth HK$1,091m.</p>
<p>The Notices state that Company A and "one of the two individuals" held 2 and 
1 margin accounts with <a href="../dbpub/articles.asp?p=51088">Haitong International Securities 
Co Ltd</a> with cash and 
securities worth HK$220.2m at 30-Nov-2018, and at the remaining broker, 
<a href="../dbpub/orgdata.asp?p=134894">Changjiang Securities Brokerage (HK) Ltd</a>, Company A has securities worth 
HK$63.6m at 19-Nov-2018.</p>
<p>So, based on all that, we can tell you:</p>
<ol>
	<li>The Listed Company is <a href="../dbpub/articles.asp?p=17721">Hua Han 
	Health Industry Holdings Ltd</a> (<strong>HHH</strong>, 0587). On 
	2-Feb-2015, HHH
	<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2015/0202/LTN201502022267.pdf" target="_blank">
	announced</a> an issue of convertible bonds to raise HK$620m gross, and on 
	28-Apr-2015, HHH
	<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2015/0428/LTN201504281884.pdf" target="_blank">
	launched</a> a 1:2 open offer which raised HK$3,194,551,000 gross, making a 
	total of HK$3,814,551,000, which matches the Gazette Notice. </li>
	<li>The stock was
	<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2016/0927/LTN20160927131.PDF" target="_blank">
	suspended</a> on 27-Sep-2016 when HHH missed the results deadline for the 
	year to 30-Jun-2016. The suspended price is $0.53 per share, matching the 
	share price implied by the SFC's "estimate" of the value of 2,059m shares at 
	$1,091m. The SFC also
	<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2018/1121/LTN201811219981.PDF" target="_blank">
	issued a direction</a> to suspend the stock on 20-Nov-2018. HHH said that 
	the concerns stated in the direction "are mainly in relation to the annual 
	reports issued by the Company since 30 June 2012."</li>
	<li>Company A is <a href="../dbpub/orgdata.asp?p=2543637">Bull's-Eye Ltd</a> 
	(<strong>BEL</strong>).</li>
	<li>The two individuals are <a href="../dbpub/positions.asp?p=17723">Peter Y 
	Zhang</a>, Chairman and co-founder of HHH, and
	<a href="../dbpub/positions.asp?p=17725">Deng Jie</a>, the CEO and 
	co-founder, who own 68.62% and 31.38% of BEL respectively.</li>
	<li>At the
	<a href="http://di.hkex.com.hk/filing/di/NSForm3A.aspx?fn=195223&amp;lang=EN" target="_blank">
	last filing</a> (9-Sep-2016), BEL held 2,142,202,643 shares (29.86%) of HHH. 
	The Kingston account in CCASS (the clearing system)
	<a href="../ccass/choldings.asp?i=3317&amp;d=2018-11-22">shows</a> 
	1,986,014,295 shares of HHH at 22-Nov-2018, slighly less than mentioned in 
	the Gazette Notice, probably because other shares have been re-pledged for 
	financing or are not in CCASS.</li>
</ol>
<p>We note that there were 2 subscribers to the $620m convertible bond issue in 
equal amounts of HK$310m: a wholly-owned subsidiary of
<a href="../dbpub/articles.asp?p=1785">China Construction Bank Corp Ltd</a> 
(0939) and a wholly-owned subsidiary of
<a href="../dbpub/articles.asp?p=2417308">China Huarong Asset Management Co Ltd</a> 
(2799), which has been in our news for other reasons.</p>
<p>HHH has not published any results since the half-year to 31-Dec-2015. We 
haven't been able to deduce how the alleged misappropriation was made.</p>
<p>The SFC describes the investigation as "still ongoing".</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2543637">Bull's-Eye Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2417308">China CITIC Financial Asset Management Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1785">CHINA CONSTRUCTION BANK CORPORATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51088">HAITONG INTERNATIONAL SECURITIES COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17721">Hua Han Health Industry Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=17725">Deng, Jie (1964)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17723">Zhang, Peter Yue</a></li>
				
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