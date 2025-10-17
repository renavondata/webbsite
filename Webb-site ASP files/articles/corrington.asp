
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

<script type="text/javascript">document.title="Woo/Wheelock's dealings";</script>

	<div class="summary">Using a tool on Webb-site, we find that Wheelock group (0020) or its controlling family have built a holding over 2% of Sun Hung Kai Properties Ltd (0016) worth HK$6bn, as well as a $1bn position in fashion chain Prada (1913) and trading positions in Cheung Kong (0001) and its associate Hutchison Whampoa (0013).</div>

<h2 class="center">Woo/Wheelock's dealings<br>
<span class="headlinedate">8 November 2012</span></h2>
<p>As many readers know, Webb-site includes a tool for analysing the custody 
holdings of shares in the Central Clearing and Automated Settlement System (<strong>CCASS</strong>), 
in which shares must be held to trade on the HK bourse. You can get the holdings 
in one stock on a given day
<a href="http://www.hkexnews.hk/sdw/search/search_sdw.asp" target="_blank">
directly from CCASS</a>, but the
<a href="../ccass/cparticipants.asp">Webb-site CCASS Analysis 
system</a> provides much more functionality - including the ability to look at 
the holdings on any given day of a CCASS Participant - a bank, broker, or even 
an Investor Participant if they have consented to be named by CCASS.</p>
<p>Digging around in our own system yesterday, we noticed a Broker Participant 
called <a href="../dbpub/orgdata.asp?p=48464">Corrington Securities &amp; Investment 
Limited</a> (<strong>Corrington</strong>). This firm has a very low profile. It 
has only <a href="../dbpub/officers.asp?p=48464">3 SFC licensed staff</a>, 
including the minimum 2 Responsible Officers (<strong>ROs</strong>). Its office 
is in Room 2301, Wheelock House, the headquarters of
<a href="../dbpub/orgdata.asp?p=346">Wheelock &amp; Co Ltd</a> (<strong>Wheelock</strong>, 
0020), and its complaints officer has an e-mail address at wiclimited.com, a 
domain which is registered to Wharf Limited, a subsidiary of Wheelock. 
Corrington has no web site. When a Webb-site representative phoned to open a 
brokerage account, we were told that they do not deal with &quot;outsiders&quot;.</p>
<p>The latest annual return of Corrington at the Companies Registry shows that 
it was 50% owned by each of two BVI companies, Andrea Limited (<strong>Andrea</strong>) 
and Handale Limited. Andrea was mentioned as a nominee shareholder in a 2003
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2003/0124/ltn20030124050.pdf" target="_blank">
privatisation document</a> for a subsidiary of Wheelock.</p>
<p>All of this points to Corrington being an in-house broker for Wheelock group 
and its 60% controlling shareholders, Chairman <a href="../dbpub/positions.asp?p=1297">
Peter Woo Kwong-ching</a> (<strong>Mr Woo</strong>) and his wife
<a href="../dbpub/natperson.asp?p=1298">Bessie Woo Pao Pui-yung</a>. The couple 
owns about 11% of Wheelock through BVI companies, and the rest is held by a 
trust. She is one of the four children, all daughters, of the late shipping and 
property tycoon <a href="../dbpub/natperson.asp?p=1302">Pao Yue Kong</a>, who 
established the trust. A very organised chap, he named his daughters A, B, C and 
D - Anna, Bessie, Cissy and Doreen, in order of production.</p>
<p>Now 
<a href="../ccass/cholder.asp?part=112&amp;d=11/6/2012&amp;sort=valndn" target="_blank">
<strong>click here</strong></a> to see the current CCASS holdings of Corrington, 
as of 6-Nov-2012, 
ranked by value, and you'll be in for a few surprises. The firm's largest 
holding is 2.06% of fellow developer <a href="../dbpub/articles.asp?p=417">Sun 
Hung Kai Properties Ltd</a> (0016), valued at HK$5.96bn. Click the
<a href="../ccass/chistory.asp?i=9&amp;part=112">history link</a> alongside 
the holding to see that this has increased from 0.64% at the end of 2011. We 
don't know whether this stake is held for Wheelock group or for the family.</p>
<p>There are also unsurprising holdings in group companies Wheelock, its 51% 
subsidiary <a href="../dbpub/orgdata.asp?p=342">The Wharf (Holdings) Ltd</a> (<strong>Wharf</strong>, 
0004), Wharf's 71.3% subsidiary <a href="../dbpub/orgdata.asp?p=343">Harbour 
Centre Development Ltd</a> (<strong>Harbour Centre</strong>, 0051) and Wharf's 
73.6% subsidiary <a href="../dbpub/orgdata.asp?p=9354">i-Cable Communications 
Ltd</a> (1097). There is also part of the family trust's 72.9% holding in
<a href="../dbpub/officers.asp?p=977">Joyce Boutique Holdings Ltd</a> (0647). 
Increases in Corrington's holding in 
Wheelock match directors' dealing disclosures by Mr Woo.</p>
<p>Third on the list is <a href="../dbpub/orgdata.asp?p=41076">Sino-Ocean 
Land Holdings Ltd</a> (3377), a 5.84% stake worth HK$1.75bn. This is probably 
part of the position held by Wharf, which
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=166918&amp;lang=EN&amp;dia=Y" target="_blank">
went through</a> the 5% disclosure threshold on 23-Aug-2011. Next comes a 0.64% 
stake in fashion group <a href="../dbpub/orgdata.asp?p=66598">Prada S.P.A.</a> 
(1913), 
worth HK$1.05bn, <a href="../ccass/chistory.asp?i=6955&amp;part=112">built 
up</a> in the market since 9-Aug-2011. That's interesting because the Woo family 
also has about a
<a href="http://in.reuters.com/article/2011/07/25/ferragamo-woo-idINLDE76O0J020110725" target="_blank">
6% stake</a> in Salvatore Ferragamo Italia Spa, down from an
<a href="http://in.fashionmag.com/news/Hong-Kong-s-Peter-Woo-takes-8-of-Ferragamo,156258.html" target="_blank">
8% stake</a> before its Milan IPO.</p>
<p>Then there's a 1.17% stake in <a href="../dbpub/orgdata.asp?p=53913">Longfor 
Properties Co Ltd</a> (0960) worth HK$899m. That might be part of Peter Woo's 
personal stake, which on 12-Sep-2012
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=52931&amp;lang=EN&amp;dia=Y" target="_blank">
went through</a> the 5% disclosure threshold. Corrington has held more of it in 
the past - up to 2.99% on 12-Oct-2011. As it bought the stake, it gradually 
moved it out to BNP Paribas -
<a href="../ccass/chldchg.asp?i=5480&amp;d=2011-01-07">20m on 7-Jan-2011</a>,
<a href="../ccass/chldchg.asp?i=5480&amp;d=2011-10-13">30m on 13-Oct-2011</a> 
and so on. BNP Paribas
<a href="../ccass/chldchg.asp?i=5480&amp;d=2011-12-13">moved</a> its 
position to BNP Paribas Wealth Management (<strong>BNPWM</strong>) on 
13-Dec-2011, and Corrington
<a href="../ccass/chldchg.asp?i=5480&amp;d=2012-06-28">moved</a> another 50m 
shares to BNPWM on 28-Jun-2012. Corrington also
<a href="../ccass/chldchg.asp?i=5480&amp;d=2012-09-10">moved</a> 10m shares 
to the custody of Standard Chartered Bank (HK) Ltd on 10-Sep-2012.</p>
<p>We note that <a href="../dbpub/positions.asp?p=26426">Mignonne Cheng Dao</a> 
was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0628/LTN20120628573.pdf" target="_blank">
appointed</a> as an INED of Wheelock on 1-Jul-2012, but was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0727/LTN20120727482.pdf" target="_blank">
redesignated</a> as a non-independent NED on 27-Jul-2012 when it was noted that 
she is employed by BNPWM (in fact
<a href="http://www.wealthmanagement.bnpparibas.com/en/iframe-exec_comm-cheng.html" target="_blank">
she is Chairman and CEO</a> of BNPWM for Asia Pacific), which &quot;may provide 
banking services to the Group or its connected persons&quot;.</p>
<p>Apart from BNPWM, the group also appears to use HSBC Private Bank 
(Suisse) SA (<strong>HSBCS</strong>); we see that on 30-May-2011 a block of 
4.68% of Harbour Centre <a href="../ccass/chldchg.asp?i=92&amp;d=2011-05-30">
moved</a> from Corrington and was split almost evenly between BNPWM and HSBCS. 
We see the same pattern on 11-Jan-2011 when a block of shares in insurer AIA 
Group Ltd (<strong>AIA</strong>, 1299)
<a href="../ccass/chldchg.asp?i=6325&amp;d=2011-01-11">moved</a> from 
Corrington to the two banks. Prior to that Corrington held 0.65% of AIA, then 
worth about HK$1.76bn. This is consistent with a
<a href="http://www.bloomberg.com/news/2010-10-05/cheung-yu-tung-to-invest-100-million-in-aia-morning-post-says.html" target="_blank">
media report</a> that Mr Woo invested US$200m in the IPO of AIA, which listed 
on 29-Oct-2010. These movements suggest that what you see in Corrington is only 
a small portion of the family office, as they move holdings out to the private 
banks. Buying through Corrington just eliminates brokerage fees.</p>
<p>In 7th place is a HK$430m shareholding (0.16%) of
<a href="../dbpub/articles.asp?p=488">Cheung Kong (Holdings) Ltd</a> (0001). 
This appears to be a minor trading position which was most recently
<a href="../ccass/chistory.asp?i=44&amp;part=112">at zero on 15-oct-2012</a>. 
Corrington has also had a <a href="../ccass/chistory.asp?i=42&amp;part=112">
fluctuating position</a> in Cheung Kong's 49.97% associate
<a href="../dbpub/articles.asp?p=366">Hutchison Whampoa Ltd</a> (0013), up to 
0.41% or HK$1.38bn on 26-Nov-2010 but currently zero.</p>
<p>So there you have a little peek into the dealings of the Woo family and 
Wheelock group, courtesy of the Webb-site CCASS Analysis System.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=61400">AIA Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48464">CORRINGTON SECURITIES & INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=66598">PRADA S.P.A.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=417">SUN HUNG KAI PROPERTIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=346">WHEELOCK AND COMPANY LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1298">Woo Pao, Bessie Pui Yung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1297">Woo, Peter Kwong Ching</a></li>
				
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