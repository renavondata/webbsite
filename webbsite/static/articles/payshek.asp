
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

<script type="text/javascript">document.title="Pay-Shek";</script>

	<div class="summary">Sheltered by the immunity of the Legislative Council last week, Legislator for concrete Abraham Shek asked rhetorically whether the HKEx Head of Listings is working for David Webb. Well of course, he isn't, but we'll tell you whom Mr Shek is working for. Listed companies pay him as a director about 5 times what he earns as a legislator.</div>

<h2 class="center">Pay-Shek<br>
<span class="headlinedate">5 January 2009</span></h2>
<p>Thanks to all our readers who contributed to an
<a href="../vote/result.asp?p=25">opinion poll</a> last spring on the blackout 
period for directors dealings. That poll was quoted in the Legislative Council 
by HKEx Head of Listings Richard Williams
<a target="_blank" href="http://www.legco.gov.hk/yr08-09/english/panels/fa/agenda/fa20081230.htm">
last week</a> as evidence of public support for the rule change, along with 
another submission by your editor David Webb pointing out that in the last full 
week before Christmas, directors' dealings accounted for just 0.06% of market 
turnover - not the <em>&quot;important source of market liquidity&quot;</em> that 
opponents claimed.</p>
<p>Lacking any substantive arguments against the new rule, and sheltered by the
<a target="_blank" href="http://www.hklii.org/hk/legis/ord/382/s4.html">immunity</a> 
of the Powers and Privileges Ordinance, the Legislator for Real Estate and 
Construction,
<a target="_blank" href="http://www.elections.gov.hk/legco2008/platform/pf_fc_rc_1.pdf">
Abraham Shek Lai-him</a> (alias Abraham Razack),
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=76442&amp;con_type=1">
asked</a> rhetorically whether Mr Williams is working for David Webb. Well of 
course Mr Williams works for HKEx, not your editor, but if Mr Shek is going to 
make allegations like that, then its only fair to look at whom <em>he</em> works 
for. He holds the second-highest number of HK-listed company directorships (all 
non-executive), at 15 (including the managers of 2 Real Estate Investment 
Trusts).</p>
<p>Here's a list of his remuneration as director of 12 of these companies, and 
estimates for the other 3 (all in HK$):</p>
<img class="center" alt="" src="../images/shek1.gif">
<p>These fees are taken from the latest available annual reports, or if he was 
appointed after the year-end, from the announcements appointing him.</p>
<p>Eagle Asset Management (CP) Ltd is the manager of Champion REIT, and Regal 
Portfolio Management Ltd is the manager of Regal REIT. The fees of a REIT 
manager's directors are paid by the manager (which in turn charges a management 
fee to the REIT) so the directors' fees are not disclosed in the annual reports. 
SJM Holdings Ltd has not yet published its first annual report since listing, 
and the Listing Rules do not require IPO prospectuses to say what directors fees 
will be (except in aggregate). So for these three companies, we have just made 
an estimate as the average of Mr Shek's fees for the other 12.</p>
<p>So the table shows that Mr Shek's total fees and allowances are 
estimated at HK$3.45m per year. In addition, he was granted options during the 
latest reported financial year of 2 companies which were valued at about $1.91m 
at the time of grant, making a total remuneration of $5.35m. That's more than 5 
times what he gets
<a target="_blank" href="http://www.legco.gov.hk/general/english/sec/corg_ser/admin_benefit.pdf">
as a Legislator</a>:</p>
<img class="center" alt="" src="../images/shek2.gif">
<p>On top of that, his LegCo filings show that he is a
<a target="_blank" href="http://www.legco.gov.hk/general/chinese/cmi/yr08-12/slh/2slh081006.pdf">
paid consultant</a> of a private company he calls &quot;Sino Administrative Services 
Ltd&quot; in an undisclosed amount. No such company, local or foreign, is found in Hong Kong's companies 
registry, so we suspect he means &quot;Sino Administration Services Limited&quot;. That's 
a wholly-owned subsidiary of <a href="../dbpub/articles.asp?p=664">Sino Land 
Co Ltd</a> (0083). Incidentally, in another sloppy filing, he
<a target="_blank" href="http://www.legco.gov.hk/general/chinese/cmi/yr08-12/slh/5slh081118.pdf">
claims</a> to have <em>&quot;attended Boeing plant and maiden return voyage flight 
from Toulouse&quot;.</em> A Boeing made in
<a target="_blank" href="http://en.wikipedia.org/wiki/Toulouse">Toulouse</a>? 
Airbus will be impressed! [Update: Mr Shek filed a
<a target="_blank" href="http://www.legco.gov.hk/general/chinese/cmi/yr08-12/slh/5slh090113.pdf">
correction</a> on 13-Jan-09.]</p>
<p>Mr Shek's
<a target="_blank" href="http://www.legco.gov.hk/general/chinese/cmi/yr08-12/slh/1slh081006.pdf">
LegCo filing</a> also shows that he was an INED of Hong Kong Hotel Asset 
Management Ltd, manager of the proposed HK Hotel REIT, a spin-off from
<a href="../dbpub/articles.asp?p=3943">Far East Consortium International Ltd</a> 
(0035), which was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080319/LTN20080319253.pdf">
shelved</a> in Mar-08.</p>
<p>So Mr Shek, before you go questioning the motives of regulators, who are you 
working for?</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11600">Shek, Abraham Lai Him</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
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