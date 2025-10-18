
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

<script type="text/javascript">document.title="Guangdong Investment's unaccredited MBAs";</script>

	<div class="summary">The Guangdong window company is being run by a board with not one but two MBAs from the same diploma mill. We'll tell you who else among HK-listed companies claims a degree from International East-West University.</div>

<h2 class="center">Guangdong Investment's unaccredited MBAs<br>
<span class="headlinedate">18 January 2011</span></h2>
<p>Here we go again - in the course of writing today's <a href="applieddev.asp">
other story</a> on Applied Development Holdings Ltd, we came across a diploma 
mill called &quot;International East-West University&quot; (<strong>IEWU</strong>), 
purportedly of Hawaii, USA from which one of ADH's INEDs, Mr
<a href="../dbpub/natperson.asp?p=56538">Su Ru Jia</a> (<strong>Mr Su</strong>), claims an MBA.</p>
<p>So, who else amongst 
HK's listed boards has such a bogus degree? </p>
<p>Well, one listed company boasts not one but two graduates of this esteemed 
entity. They are <a href="../dbpub/positions.asp?p=16352">Zhang Hui</a> (<strong>Mr Zhang</strong>) 
and <a href="../dbpub/positions.asp?p=24705">Xu Wenfang</a> (<strong>Ms Xu</strong>), 
respectively the Managing Director and a non-executive director of
<a href="../dbpub/articles.asp?p=1340">Guangdong Investment Ltd</a> (<strong>GDI</strong>, 
0270), which 
is majority owned by the government of Guangdong Province, PRC.</p>
<p>Mr Zhang was appointed as an Executive Director of GDI on 28-Oct-2002 and as 
Managing Director on 5-Dec-2002. From the 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030428/LTN20030428132.htm" target="_blank">2002 annual report</a> onwards, his 
biography has included the MBA from IEWU. Ms Xu was appointed NED on 3-Mar-2005, 
she has claimed an MBA in each annual report from 2004 onwards, but didn't say 
where it was from until the 2009 annual report. She has also been an NED of
<a href="../dbpub/orgdata.asp?p=4445">Kingway Brewery Holdings Ltd</a> (0124) 
since 3-Nov-2010.</p>
<h3>About IEWU</h3>
<p>IEWU was incorporated in Hawaii. On 
22-Jul-2002, the Office of Consumer Protection of Hawaii
<a href="http://hawaii.gov/dcca/ocp/udgi/lawsuits/int_east/intl_e_w_u_c.pdf" target="_blank">
sued</a> IEWU and Cheng Chung-ying (<strong>Mr Cheng</strong>), a Hawaii resident and director of IEWU, 
stating that IEWU had since 1-Jul-1999 operated a degree-granting institution 
which had never been accredited by an agency or association recognized by the 
United States Secretary of Education. Despite IEWU's claims in marketing 
materials to be in Hawaii, the State also said that IEWU did not have an office 
there.</p>
<p>On 20-Jan-2004, the State, IEWU and Mr Cheng agreed to a permanent injunction 
and final judgment, promising to comply with Hawaii's
<a href="http://hawaii.gov/dcca/ocp/udgi/regulation" target="_blank">
Unaccredited Degree Granting Institutions Law</a> in future, and paying a fine 
of US$5,000.</p>
<p>IEWU has a <a href="http://www.iewu.org" target="_blank">web site</a> at iewu.org,
<a href="../codocs/whois.iewu.org.pdf" target="_blank">registered</a> to a Yan 
Yu.</p>
<p>On 19-Dec-2008, someone made an attempt in Hawaii to register the 
similar-sounding &quot;<a href="http://hawaii.gov/dcca/ocp/udgi/lawsuits/EWU/" target="_blank">East 
West University LLC</a>&quot; (<strong>EWU</strong>) with an address in Lisbon, 
Portugal. The Hawaii Office of Consumer Protection responded with a 
questionnaire to determine whether EWU was operating an unaccredited degree 
granting institution. After no response was received, on 27-Jan-2009 the state 
issued a &quot;<a href="http://en.wikipedia.org/wiki/Subpoena_duces_tecum" target="_blank">subpoena 
duces tecum</a>&quot;. Then on 27-Feb-2009, still with no response, the state
<a href="http://hawaii.gov/dcca/ocp/udgi/lawsuits/EWU/east_west_univ_motion_for_order.pdf" target="_blank">
asked the court</a> to order EWU to show cause why it is not in contempt, with a 
fine of US$500 per day until such time as it fully complies. A court hearing was 
set for 31-Mar-2009, and when EWU did not show up, it was
<a href="http://hawaii.gov/dcca/ocp/udgi/lawsuits/EWU/east_west_univ_contempt_order.pdf" target="_blank">
held in contempt</a>.</p>
<h3>Other MBA-holders</h3>
<p>While Mr Zhang, Ms Xu and Mr Su are the only current directors with IEWU &quot;degrees&quot; 
that we can find, there is also Ms <a href="../dbpub/positions.asp?p=63663">Tian 
Fengying</a>, who is not a director but a Deputy General Manager of
<a href="../dbpub/orgdata.asp?p=24297">Dynasty Fine Wines Group Ltd</a> (<strong>DFW</strong>, 
0828). Former directors and officials with an IEWU degree include:</p>
<ul>
	<li>Mr <a href="../dbpub/positions.asp?p=24300">Gao Xiaode</a>, an ED and 
	General Manager of DFW from 10-Aug-2004 to 1-Jan-2006</li>
	<li>Ms <a href="../dbpub/positions.asp?p=32301">Elizabeth Lee Ran</a>, Vice 
	Chairman of <a href="../dbpub/orgdata.asp?p=15449">Artel Solutions Group 
	Holdings Ltd</a> (0931) from 8-Feb-2006 to 3-Jul-2006.</li>
	<li>Mr <a href="../dbpub/positions.asp?p=30208">Liu Wei</a>, an NED of
	<a href="../dbpub/orgdata.asp?p=30203">Guangdong Nan Yue Logistics Co Ltd</a> 
	(3399) from 28-Oct-2002 to 19-Jun-2009, and Mr
	<a href="../dbpub/positions.asp?p=63666">Liu Zhi Quan</a>, Secretary of the 
	Board of the same company until 2009.</li>
</ul>
<p>If we've missed anyone out, please <a href="../contact">let us know</a>.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15449">China HK Power Smart Energy Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=24297">DYNASTY FINE WINES GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1340">GUANGDONG INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30203">Guangdong Yueyun Transportation Company Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=24300">Gao, Xiaode</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=32301">Lee, Elizabeth Ran</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=30208">Liu, Wei (1959)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=63666">Liu, Zhi Quan (1965)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=56538">Su, Ru Jia</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=63663">Tian, Fengying</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=24705">Xu, Wenfang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16352">Zhang, Hui (HKID:R150XXX)</a></li>
				
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