
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

<script type="text/javascript">document.title="Tiangong INED's bogus degrees";</script>

	<div class="summary">The Audit Committee Chairman of high-speed steel maker Tiangong (0826), claims a hat-trick of bogus degrees, including one which listing sponsor BNP Paribas should have spotted in due diligence.</div>

<h2 class="center">Tiangong INED's bogus degrees<br>
<span class="headlinedate">14 September 2009</span></h2>
<p>Following on from today's story on the new <a href="neoceo.asp">Neo-Neon 
CEO's bogus degree</a>, we look at the degrees of one
<a href="../dbpub/positions.asp?p=40600">Mr Lau Siu Fai</a> (<strong>Mr Lau</strong>), 
who has been an INED of high-speed steel maker
<a href="../dbpub/orgdata.asp?p=40591">Tiangong International Co Ltd</a> (0826) 
since its listing in 2007. Not only that, but he is Chairman of its Audit 
Committee and the only one of the 3 INEDs with any purported accounting or 
financial expertise, as required by
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_3.pdf">
Listing Rule 3.10(2)</a>. The IPO prospectus dated 13-Jul-07
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070713/00826_184479/E117.pdf">
states</a> that Mr Lau:</p>
<blockquote>&quot;graduated from the Sussex College of Technology with a Master 
of Arts degree in Accounting&quot;.</blockquote>
<p>As we pointed out in our article <a href="francischoi.asp">Choi's Choice of 
Degrees</a> (21-Nov-07), Sussex College of Technology Limited was a diploma mill 
based in Tower Hamlets, London and not a
<a target="_blank" href="http://www.dcsf.gov.uk/recognisedukdegrees/index.cfm?fuseaction=institutes.list&amp;InstituteCategoryID=1">
UK-recognised</a> degree-awarding body. The information we found was publicly 
available and IPO Sponsor <a href="../dbpub/adviserships.asp?p=9572">BNP Paribas 
Capital (Asia Pacific) Ltd</a> should have spotted this during due diligence 
work on the prospectus.</p>
<p>Since the IPO, Mr Lau's academic accomplishments have reached new heights. 
His biography in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080421/LTN20080421329.pdf">
2007 annual report</a> states that:</p>
<blockquote>&quot;He graduated from the Parkhurst University, UK with a PhD in 
Finance, the Clayton University, USA with a Master's Degree in Business 
Administration and the Sussex College of Technology with a Master of Arts degree 
in Accounting.&quot;</blockquote>
<p>He's gone for the hat-trick of bogus degrees. Parkhurst University was one of 
the many bogus UK university names used in the fraudulent
<a target="_blank" href="http://www.timeshighereducation.co.uk/story.asp?storyCode=401562&amp;sectioncode=26">
University Degree Program</a> run from call centres in Israel and Romania. There 
is, however, a famous
<a target="_blank" href="http://en.wikipedia.org/wiki/Parkhurst_(HM_Prison)">
Parkhurst Prison</a> on the Isle of Wight, where we would like to put directors 
who claim bogus doctorates.</p>
<p>Clayton University is or was also an unaccredited diploma mill. The internet 
archive shows its now-vanished
<a target="_blank" href="http://web.archive.org/web/20071009054321/http://www.culhk.com/">
web site</a> at culhk.com between 2000 and 2007 and others at 
claytonuniversity.net and claytonuniversity.com. The
<a target="_blank" href="http://web.archive.org/web/20021208201502/www.culhk.com/co.html">
contact page</a> in 2002 shows that it had an agent in Lockhart Road, Hong Kong. 
The site
<a target="_blank" href="http://web.archive.org/web/20071008065741/www.culhk.com/FAQ.html">
claimed</a> in 2007 that &quot;our programs are approved by recognized professional 
institutes...Currently, the Institute of Cost and Executive Accountants...have 
approved us.&quot;</p>
<p>We searched, but all we could find on the institute was this sparse-looking
<a target="_blank" href="http://www.icea.enta.net/">sub-domain site</a>, with no 
contact details. The
<a target="_blank" href="http://www.icaew.com/index.cfm/route/155900/icaew_ga/en/Home/About_us/History_of_accounting/Index_of_UK_and_Irish_Accountancy_and_Professional_Bodies_including_historical_and_defunct_bodies#i">
ICAEW web site</a> (which does not endorse it) says the institute was once 
called the &quot;Association of Cost and Executive Accountants&quot;. It is apparently 
defunct, and there is a tribute
<a target="_blank" href="http://www.iceaglobal.com/">web site</a> which is 
peppered with Google-ads. Mr Lau claims to be an associate of the &quot;Association 
of Cost and Executive Accountants&quot;. There is also a company limited by guarantee 
incorporated in Hong Kong called &quot;Association of Cost and Executive Accountants 
in Hong Kong Limited&quot; which is in the process of being struck off by the 
registrar and hasn't filed an annual return since 2000. Given that both the UK 
and HK entities are dormant, it is unclear why Mr Lau thinks he is still an 
associate.</p>
<p>Possibly not by coincidence, we also found that Mr
<a href="../dbpub/positions.asp?p=13772">Chow Pai Ying</a>, in 2002 a former 
INED of Winsor Industrial Corp Ltd and <a href="../dbpub/orgdata.asp?p=2653">
Winsor Properties Holdings Ltd</a> (1036),
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030725/00098/f102.pdf">
claimed</a> to hold a &quot;Doctor of Philosophy degree in Business Administration 
from the Clayton University, a Master of Business Administration from the 
Pacific Western University, U.S.A.&quot; (possibly the
<a target="_blank" href="http://en.wikipedia.org/wiki/Pacific_Western_University_(Hawaii)">
diploma mill</a> in Hawaii) and was also a member of the &quot;Association of Cost 
and Executive Accountants, U.K.&quot;</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=40591">Tiangong International Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2653">Vanke Overseas Investment Holding Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=507">WINSOR INDUSTRIAL CORPORATION, LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2638">Chow, Stephen Pai Ying</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40600">Lau, Siu Fai (1958)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=124">Degrees</a></li>
				
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