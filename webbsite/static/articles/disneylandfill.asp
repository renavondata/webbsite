
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

<script type="text/javascript">document.title="Secrets of HK Disney-landfill";</script>

	<div class="summary">Legislators should this afternoon refuse to sanction the HK Disneyland financial restructuring unless they get full disclosure of the Government-controlled theme park's accounts, plus a release of 60 hectares of valuable public land which would otherwise stay under option to the park for 20 more years. This land should then be tendered for competing and synergistic leisure use.</div>

<h2 class="center">Secrets of HK Disney-landfill<br>
<span class="headlinedate">10 July 2009</span></h2>
<p>
<a target="_blank" href="http://www.legco.gov.hk/yr08-09/english/fc/fc/agenda/fc20090710.htm">
This afternoon</a> HK legislators in the Council's Finance Committee will be 
asked to suspend their disbelief, wish upon a star, and imagine why they should 
approve the debt restructuring exercise at
<a href="../dbpub/orgdata.asp?p=29477">Hong Kong International Theme Parks Ltd</a> 
(<strong>HKITP</strong>), the Government-controlled joint venture which owns 
Hong Kong Disneyland, without extracting some serious concessions.</p>
<p>Of course, the Government would not admit that HKITP would be insolvent 
without debt relief, and has never published its accounts, so it remains a 
&quot;state secret&quot; as to exactly how much it has lost and how much it has paid (or 
agreed to pay) <a target="_blank" href="http://corporate.disney.go.com/">The Walt Disney Company</a> in royalties and management fees since 
the park opened in 2005. Instead, they camouflaged the
financial restructuring
<a target="_blank" href="http://www.info.gov.hk/gia/general/200906/30/P200906300195.htm">
announcement</a> on 30-Jun-09 by headlining the deal as an expansion plan for HK 
Disneyland.</p>
<p>While it will involve several new rides in three &quot;lands&quot;, these are all part 
of the originally intended &quot;build-out&quot; of Phase 1 of HK Disneyland. We've taken 
the new area in the
<a target="_blank" href="http://gia.info.gov.hk/general/200906/30/P200906300195_0193_54065.jpg">
conceptual plan</a> published by the Government, and superimposed it on a 
satellite photo taken around February 2009 (click it to enlarge):</p>
<a href="../images/DisneyBuildOut.jpg">
<img class="center" src="../images/DisneyBuildOut.jpg" alt="Click for full-sized image"></a>
<p>In the left half of the picture we have Phase 1 of Disneyland, 
including land for hotels at the bottom (South), of which two are built, and the 
coach-park and car park at the top. The actual theme park area that a normal 
visitor would see is the small area in the centre with a miniature railway track 
around its perimeter and the white-domed Magic Mountain roller coaster ride at 
its Northern edge, plus 3 attractions just outside the railway to the North-West 
(Autopia, Small World and Golden Mickeys). In all, we estimate from satellite 
measurements that the existing attractions occupy just 23 hectares of the site. 
The new attractions will be in the more colourful part below the South-West 
corner of the existing park, just below the Adventureland lake, on land which 
was deliberately left vacant for the build-out of Phase 1.</p>
<p>Running North-South down the middle you see Park Promenade 
(with bare land either side of it - perhaps for future attractions), and to the 
East of that, hidden by trees when viewed at ground-level, is a massive 
landfill, 60 hectares in size, completed last year and known as &quot;Phase 2&quot;. This 
is owned by the Government, but under the Dec-1999 Project Agreement, HKITP has 
a 20-year option to buy it at the reclamation cost of HK$2.8bn (plus inflation). 
The option can automatically be extended for 5 years and conditionally for a 
further 5 years (if park attendance is more than 8 million but less than 10 
million), so the option could run until 2029.</p>
<p>It is quite obvious that the existing park is unable to 
service its existing debt, hence the request for the Government to convert 
$5.9bn of it into shares and give up the interest. It was not proposed that the 
expansion be debt-financed, even with the existing debt having been converted to 
equity. One can only assume, in the absence of published accounts, that the park 
generates just enough cash to cover its operating expenses but not to finance 
any expansion. Given the
<a target="_blank" href="http://www.chinadaily.com.cn/china/2009-01/15/content_7401331.htm">
looming competition</a> from Shanghai Disneyland, which will have far more land 
at its disposal, together with other destinations, it seems unlikely that HK 
Disneyland would ever be able to justify, on financial grounds, exercising the 
option to purchase and build out Phase 2. So we face the prospect of watching 60 
hectares of public land sit empty for 20 years, or be subject to low-rent 
short-term projects like golf driving ranges. We've had enough of those at Kai 
Tak and what we like to call the &quot;<a href="../dbpub/orgdata.asp?p=46752">West Kowloon Cultural Desert</a>&quot;.</p>
<h3>The Secret deal with Disney</h3>
<p>The Government's
<a target="_blank" href="http://www.legco.gov.hk/yr08-09/english/fc/fc/papers/f09-39e.pdf">
briefing paper</a> for today's meeting does not even mention the crucial issue 
of the Phase 2 land and the option hanging over it. What it does confirm is 
that, as previously <a href="hkdisney.asp">rumoured</a>, Disney has 
been getting a management fee of 2% of gross revenue plus between 2% and 8% of 
Earnings Before Interest Tax, Depreciation and Amortisation (EBITDA), although 
it doesn't tell us what criteria determine whether it is at the 8% or 2% end of 
that range. This will be replaced with a simpler 6.5% of EBITDA (and no 
percentage of gross revenue).</p>
<p>However, what the paper does not disclose, but media reported 
when the project was launched, is that Disney also gets a 10% royalty on all 
ticket sales plus 5% on all food, beverage and merchandise sold in the park. 
These reports have not been denied. On top of that, there are the usual license 
fees it collects from manufacturers of the merchandise.</p>
<p>So the briefing paper is misleading legislators by omission - 
you can hardly trumpet the fact that Disney no longer gets 2% of gross revenue 
without disclosing the royalties it creams off the top of all sales. Legislators 
and the public should be provided with full information, including the accounts 
and agreements, on which they can make a decision. If this briefing paper were a 
prospectus for an investment, it would never get past the SFC - and yet that's 
exactly what it is - a request to convert interest-bearing debt into an 
investment in further equity. The payments to Disney are related-party 
transactions, and investors have a right to know the details.</p>
<h3>What Legislators should do</h3>
<p>Legislators have a unique opportunity to intervene in this 
situation, as the restructuring agreement needs the approval of the Finance 
Committee to convert debt into equity. Legislators should require, before 
approving this, that the Government obtains the following concessions from 
Disney:</p>
<ol>
	<li>The option over Phase 2 should be cancelled, and the land 
	should be tendered for alternative leisure-related uses (in a single lot or 
	split lots), including competing theme park operators. If tourists had more 
	than one theme park to visit in the same area, then synergies would be 
	created. To give you some idea of how big 60 hectares is, it is about 2.6 
	times the size of the Cyberport, including all the residential property that 
	went with it, or more than 3 times the size of Victoria Park (19 ha) in 
	Causeway Bay. Indeed, selling part of the site as sea-front residential 
	property could produce funds to subsidise another theme park on the grounds 
	of the external economic benefits that the Government is so fond of 
	trumpeting.</li>
	<li>Full, uncensored publication of all the agreements between 
	the Government, HKITP and Disney.</li>
	<li>Full, uncensored publication of the audited financial 
	statements of HKITP since inception and forever more, not just the proposed 
	selective financial data which undoubtedly would obscure and obfuscate how 
	much Disney makes from the agreements by hiding it in overall &quot;expenses&quot;.</li>
</ol>
<p>The Hong Kong public have a right to know, and this is a 
unique chance to tear down the wall of secrecy surrounding the Hong Kong 
Disneyland project and to retrieve 60 hectares of valuable public land. Finally, 
let us not forget that it was Donald Tsang's 1999 budget speech (back in the 
Tung Dynasty) which launched this project, along with the Cyberport. With two 
such successful projects behind him, we have no doubt that he 
can exercise his central planning skills (motto: &quot;government leads, market 
facilitates&quot;) to find a new use for this land in one 
of his
<a target="_blank" href="http://www.info.gov.hk/gia/general/200904/03/P200904030256.htm">
pet sectors</a>.&nbsp; </p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=29477">HONGKONG INTERNATIONAL THEME PARKS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=29478">Walt Disney Company (The)</a></li>
				
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