
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

<script type="text/javascript">document.title="Cheng & Cheng's EPS snafu";</script>

	<div class="summary">The HKICPA sanctions the audit firm and its director, but fails to disclose the listed company involved. We'll tell you who it was.</div>

<h2 class="center">Cheng & Cheng's EPS snafu<br>
<span class="headlinedate">1 September 2015</span></h2>
<p>The <a href="../dbpub/articles.asp?p=6184">Hong Kong Institute of Certified Public Accountants</a> (<strong>HKICPA</strong>) 
today <a href="../codocs/HKICPA150901.pdf" target="_blank">announced</a> that it 
has &quot;resolved&quot; (or settled) a complaint against auditor
<a href="../dbpub/officers.asp?p=33560">Cheng &amp; Cheng Limited</a> (<strong>C&amp;C</strong>) 
and its director <a href="../dbpub/positions.asp?p=33559">Alice Li Yuen Yu</a> (<strong>Ms 
Li</strong>), for failure to spot a material error in the earnings per share 
calculation of a listed company for the year ended 31-Dec-2012. The listed 
company also had convertible notes outstanding which had not been properly 
considered in the diluted EPS calculation.</p>
<p>The &quot;administrative penalty&quot;? A measly HK$25,000 for each of the firm and its 
director, plus joint costs of $10,000.</p>
<p>The self-regulatory body does not say which listed company was involved. 
<a href="../dbpub/">Webb-site Who's Who</a> covers all auditors of HK-listed companies since 1990, so we 
can show you the <a href="../dbpub/adviserships.asp?p=33560" target="_blank">
client list</a> of C&amp;C. Eliminating those where the firm was appointed 
after 2012, and eliminating those without December year-ends and those which had 
no convertible notes, and Webb-site find the error in the 2012
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2013/0328/GLN20130328213.pdf" target="_blank">
annual report</a> of Oriental Unicorn Agricultural Group Ltd, now known as
<a href="../dbpub/orgdata.asp?p=13526">China Demeter Investments Ltd</a> (<strong>China 
Demeter</strong>, 8120).</p>
<p>The error was pretty basic: every 40 shares were consolidated into 1 share on 
20-Oct-2011, which was during the 17-month accounting period from 1-Aug-2011 to 
31-Dec-2012. The calculation of the time-weighted average number of shares had 
failed to exclude the shares which were removed by the consolidation, and so 
note 15 on page 66 gave the weighted average number of shares for basic EPS as 
484,234,278, when it should have been 280,983,410. Divide that into profits of 
$59.541m and as a result, basic EPS was stated as $0.1230 when it should have 
been $0.2119, or 72% higher.</p>
<p>By the time the 2013 results were published, there had been a further 4 for 1 
share consolidation, so the 2013
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0328/GLN20140328123.pdf" target="_blank">
annual report</a> needed to adjust for that in the comparison with 2012, making 
the adjusted EPS 4 times larger at $0.8476. Note 14 
on page 49 covers up the previous error by stating that the EPS has been 
restated &quot;resulting mainly from the share consolidation&quot;, without mentioning how 
shareholders had been misled in the 2012 report. We searched the announcements 
but could not find any admission by China Demeter that the original 2012 EPS calculation was 
wrong. </p>
<p>We call on the Stock Exchange and SFC to require the company to confess to 
the false and misleading statement in its 2012 annual report. C&amp;C
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1208/GLN20141208017.pdf" target="_blank">
resigned</a> as auditors on 8-Dec-2014 stating that apart from &quot;various factors 
including the professional risk associated with the audit and the level of audit 
fees&quot; there were &quot;no other matters in connection with its resignation that needs 
to be brought to the attention of the shareholders of the Company.&quot; Well, the 
EPS snafu is one matter which we think should have been disclosed.</p>
<p>Oh, and the 2012 audit fee was HK$300,000, or 12 times the penalty levied by 
HKICPA. Just another cost of doing business for the audit firm. Incidentally, 
the sanctioned Ms Li is also an INED of <a href="../dbpub/officers.asp?p=927">
South China Holdings Co Ltd</a> (0413) since 2004 and she chairs its audit 
committee, so that company needs to make an announcement about her sanction.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=33560">CHENG & CHENG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13526">China Demeter Financial Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6184">HONG KONG INSTITUTE OF CERTIFIED PUBLIC ACCOUNTANTS</a></li>
				
				<li><a href="/dbpub/articles.asp?p=927">South China Holdings Company Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=33559">Li, Alice Yuen Yu</a></li>
				
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