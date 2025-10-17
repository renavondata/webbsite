
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

<script type="text/javascript">document.title="Alleged hacked BOCI account explains Pa Shun Pharma (0574) surge";</script>

	<div class="summary">A Cyberport-based investment company alleges that an unauthorised person logged into its BOCI account and bought up 4.92% of PSP at an average 36% above the previous day's close, draining its account of about HK$37.7m. The SFC has today commenced a general cybersecurity review on brokers' systems after 16 incidents in the last 12 months involving over HK$100m.</div>

<h2 class="center">Alleged hacked BOCI account explains Pa Shun Pharma (0574) surge<br>
<span class="headlinedate">13 October 2016</span></h2>

<p>A
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=106303&amp;currpage=T" target="_blank">judgment</a> 
published online today,
<a href="../dbpub/orgdata.asp?p=1387286">Fast Track Holdings Ltd</a> (<strong>FT</strong>) 
v
<a href="../dbpub/articles.asp?p=1456">BOCI Securities Ltd</a> (<strong>BOCIS</strong>) 
(HCA 2480/2016) explains why there was a huge spike in the volume and price of
<a href="../dbpub/orgdata.asp?p=2321179">Pa Shun Pharmaceutical International 
Holdings Ltd</a> (<strong>PSP</strong>, 0574) on 23-Sep-2016. Volume was 92.568m 
shares or 9.26% of PSP and the <a href="../dbpub/hpu.asp?i=14148">price</a> at 
one point reached $0.88, up 57.1% on the previous close of $0.56, before closing 
at $0.66, up 17.9%</p>
<p>FT is a company which has been 49% owned by <a href="../dbpub/articles.asp?p=425">
Sun Hung Kai &amp; Co Ltd</a> (<strong>SHKC</strong>, 0086) since 2009. According to the judgment, FT is engaged in the trading of 
securities, options and futures contracts and investment holding. It has 
low-rent government 
<a href="https://www.cyberport.hk/en/offices/cyberport_directory/office_cyberport_office_tenants/regexp:F-J/page:1" target="_blank">premises</a> at our esteemed
<a href="../dbpub/articles.asp?p=17936">Cyberport</a>, shared with an asset manager called
<a href="../dbpub/orgdata.asp?p=2242799">Dragon Field Investment Ltd</a>, 
SFC-licensed since 27-Jul-2015. Being at the Cyberport, they don't have a web 
site, of course.</p>
<p>FT alleges that between 14:40 and 15:22 that day, unauthorised 
person(s) logged into its account at BOCIS 
with a valid user ID and password, from IP address 183.179.239.110, and in the 
space of 18 minutes from 15:03 to 15:21, bought a total of 49.2m shares (4.92%) 
of PSP from a total of 76 selling 
brokers. The purchases cost HK$37.69m (including fees and levies), draining 
almost all of the $37.85m cash in the account, at an average price of $0.7636 
per share, 36.4% above the previous day's close. The shares closed today 
(13-Oct-2016) at $0.55, resulting in a book loss of HK$10.5m so far. </p>
<p>Those trades were settled on 27-Sep-2016 and the Webb-site CCASS 
Analysis System
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=14148&amp;sc=&amp;d1=2016-10-11&amp;d=2016-09-27">
shows the net movements</a>. The IP address 
<a href="http://mxtoolbox.com/SuperTool.aspx?action=ptr%3a183.179.239.110&amp;run=toolpage" target="_blank">tracks</a> to an account at ctinets.com, or HK Broadband Network, so they will probably be able to track 
that to a particular HKBN user's account, although of course that doesn't prove 
that the HKBN customer was the person online - it could just be someone using 
their Wi-Fi network.</p>
<p>One seller which benefited from this ferocious buying is
<a href="../dbpub/orgdata.asp?p=2643789">Advance Apex Ltd</a> (<strong>AA</strong>, 
BVI), which sold 34.9m shares at an average of $0.746 and a high of $0.85,
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=310823" target="_blank">
cutting its stake</a> from 17.45% to 13.96%. AA is 47% owned by PSP 
non-executive director Li Ho Tan, 50% by Cheung Chi Mang and 3% by Yu Wentao.</p>
<p>FT claims it should not be held responsible for the purchases, while BOCIS 
points to the client agreement, clause 15.3 of which states that BOCIS can rely on any 
instructions given by "any other person purporting to be you". The issue at 
trial will likely be whether there are limitations to this clause - for 
example, if a rogue former employee of BOCIS had somehow obtained the user ID 
and password and impersonated FT, then BOCIS might not be able to avoid 
liability if its security policies had facilitated this. Good security policies include not storing plaintext passwords on the server - hopefully they store 
only <a href="https://en.wikipedia.org/wiki/Salt_(cryptography)" target="_blank">
salted hashes</a> (as Webb-site does), so that insiders cannot read user 
passwords.</p>
<p>The judgment makes no mention of any 2-factor authentication. A 
user ID and password were apparently enough to get into the account. In a 
2-factor system, the 2nd 
factor after your password is usually a pseudo-random number generated by a gadget, or a similar 
one-time passcode sent by SMS to a phone (although obviously that doesn't help if the rogue 
has gained access to your gadget or phone). Now we don't know whether FT is an 
institutional or retail client, and whether institutional clients have the 
option of 2-factor authentication, but a visit to the
<a href="https://trade.bocionline.com/OnlineTrade/login.htm?locale=en" target="_blank">BOCIS 
retail login</a> pops up this:</p>
<div class="letterbox">
<p>Online Account Login Page Upgrade</p>
<p>To safeguard your online account security, BOCI Securities Limited ("Our 
Company") is going to upgrade our online account login page in stages. Details 
could be found as follows.</p>
<p>Stage 1: The answer of "Security Question" field is newly added </p>
<p>(Launch Date: 30th September 2016)</p>
<p>After you enter the Login ID and password on the account login page, you are 
required to answer the "Security Question" for continuous use of account. </p>
<p>Stage 2: "Two-factor Authentication Code" field is newly added </p>
<p>(Estimated Launch Date: Coming Soon)</p>
</div>
<p>Better late than never.</p>
<p>Perhaps not by coincidence, the SFC has tonight
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=16PR103" target="_blank">
announced</a> that it has launched a cybersecurity review on brokers' internet 
and mobile trading systems, stating that in the last 12 months there have been 
16 incidents involving 7 brokers and total unauthorised trades in excess of 
HK$100m, presumably including the one above. The SFC says these cases are under 
police investigation.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1456">BOCI SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2242799">EAST EAGLE ASSET MANAGEMENT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1387286">FAST TRACK HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2321179">Pa Shun International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=425">SUN HUNG KAI & CO. LIMITED</a></li>
				
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