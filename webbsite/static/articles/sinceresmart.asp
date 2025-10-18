
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

<script type="text/javascript">document.title="Hao Wen, Capital VC and Unity";</script>

	<div class="summary">Webb-site finds questionable cash investments at extremely high valuations which link together 3 listed companies. We urge the SFC's corporate misconduct team to investigate.</div>

<h2 class="center">Hao Wen, Capital VC and Unity<br>
<span class="headlinedate">24 September 2015</span></h2>
<p>Browsing through documents for a much longer forthcoming story, we came 
across two highly questionable acquisitions that link together 3 listed 
companies: <a href="../dbpub/articles.asp?p=14086">Hao Wen Holdings Ltd</a> (<strong>Hao 
Wen</strong>, 8019) and two
<a href="http://en-rules.hkex.com.hk/net_file_store/new_rulebooks/h/k/HKEX4476_3361_VER10.pdf" target="_blank">
Chapter 21</a> investment companies, <a href="../dbpub/articles.asp?p=18187">Capital VC Ltd</a> (<strong>Capital VC</strong>, 
2324) and <a href="../dbpub/articles.asp?p=9176">Unity Investments Holdings Ltd</a> 
(<strong>Unity</strong>, 0913) that we have warned investors about in the past.</p>
<p>On 1-Sep-2014, <a href="../dbpub/articles.asp?p=14086">Hao Wen Holdings Ltd</a> 
(<strong>Hao Wen</strong>, 8019)
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2014/0901/gln20140901269.pdf" target="_blank">
announced</a> the acquisition of 22.5% of
<a href="../dbpub/orgdata.asp?p=2478708">Sincere Smart International Ltd</a> (<strong>Sincere 
Smart</strong>, BVI), which owns 100% of
<a href="../dbpub/orgdata.asp?p=2004595">Ideal Surplus Inc Ltd</a>, a HK company 
which, according to Hao Wen, is &quot;principally engaged in the provision of cloud 
platforms application and solutions&quot;. The &quot;<a href="http://www.ideal-surplus.com/en/aboutus.asp" target="_blank">About 
us</a>&quot; page of its web site seems to confirm this, but if you click on the 
English &quot;<a href="http://www.ideal-surplus.com/en/" target="_blank">Home</a>&quot; 
button then you get a whole different experience - some sort of online Chinese 
betting platform. The vendor was a Mr Wang Zewei (<strong>Wang Zewei</strong>) 
and the deal
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1008/GLN20141008027.pdf" target="_blank">
completed</a> on 8-Oct-2014.</p>
<p>The cash purchase price of HK$69m for 22.5% implies a valuation for 100% of 
HK$306.7m, compared with net profit from 7-Jan-2013 to 31-Mar-2014 of $3.4m and 
net assets of $2.9m, so this was a rich valuation indeed. Hao Wen was 
&quot;principally engaged in the sale of biodegradable products and raw materials and 
the manufacture and sale of biomass fuel&quot;. You can see the synergy, can't you? 
No?</p>
<p>There was no mention of who owned the other 77.5% of Sincere Smart, so we 
dug, and found that in the 6 months to 31-Dec-2014, Capital VC bought an 
unspecified stake in Sincere Smart for HK$42.7m, see note 13 of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/0226/ltn20150226583.pdf" target="_blank">
interim results</a>. The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/0624/ltn20150624711.pdf" target="_blank">
open offer circular</a> of Capital VC dated 24-Jun-2015, p53, discloses that the 
stake is 14.00%. So like Hao Wen, Capital VC had paid a price which implies a 
$305m valuation on Sincere Smart. The next page shows that in the 9 months to 
31-Dec-2014, Sincere Smart lost HK$0.2m and ended with net assets of HK$2.7m. 
This is not what you would call a growth company.</p>
<p>But there was a third player. Note 12 of the 2014
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0421/LTN20150421676.pdf" target="_blank">
annual report</a> of Unity shows that it spent HK$90m on 29.5% of Sincere Smart, 
again a valuation of HK$305.1m. So the 3 companies, Hao Wen, Capital VC and 
Unity had altogether spent <strong>HK$201.7m</strong> on a 66% stake. However, on 5-Feb-2015, 
Unity agreed to sell its stake to &quot;a third party&quot; for HK$92m, of which $2m had 
been paid (see note 33) and $90m was due by 2-Oct-2015. That's rather 
convenient, because it avoids having to do an impairment test on the investment 
for the 2014 audit.</p>
<p>Capital VC has
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0624/LTN20150624717.pdf" target="_blank">
deferred</a> its year end from 30-Jun-2015 to 30-Sep-2015, so it won't have to 
deal with that problem just yet.</p>
<p>The connection between Hao Wen and Unity goes further though.</p>
<p>Another investment made by Unity in 2014 was a 29.9% stake in
<a href="../dbpub/orgdata.asp?p=2478842">Peak Zone Group Ltd</a> (<strong>Peak 
Zone</strong>, BVI) for HK$90m, valuing the whole at $301m. Peak Zone is 
&quot;engaged in the provision of integrated application.&quot; Note 17(iii) of the Unity 
2014 annual report says Peak Zone made a profit of HK$0.392m and had net assets 
of HK3.092m, so this appears to be another vastly overpriced investment. Again, 
it was convenient that on 27-Feb-2015, after the year end and before the 
accounts were audited, Unity agreed to sell its stake to &quot;a third party&quot; for 
HK$108m, of which just $2m had been received and the rest was due by 
31-Dec-2015. That raises the valuation of Peak Zone even further, to HK$361.2m. 
As Peak Zone was under contract for sale, no impairment test was applied.</p>
<p>By amazing coincidence, the 2014
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0330/GLN20150330003.pdf" target="_blank">
annual results</a> of Hao Wen include a footnote that on 6-Feb-2015, after the 
year end, it agreed to buy 5.4% of Peak Zone from an &quot;independent third party&quot; 
for HK$19.2m (implying a valuation of $355.6m), and the transaction was 
completed on 16-Feb-2015.</p>
<p><em>Webb-site Reports </em>urges the SFC's
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=13PR121" target="_blank">
corporate misconduct team</a> to investigate these transactions.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=18187">Capital VC Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14086">Hao Wen Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9176">Harbour Digital Asset Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2004595">IDEAL SURPLUS INC LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2478842">Peak Zone Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2478708">Sincere Smart International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2478707">Starry Regent Limited (VG)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2478709">Wang, Zewei</a></li>
				
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