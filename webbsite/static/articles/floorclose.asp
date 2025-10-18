
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

<script type="text/javascript">document.title="Time to Close the Floor";</script>

	<div class="summary">It's been nine years in the making, but trades which touch the floor of the Stock Exchange have now dwindled to 3% of market volume, and the lease expires on Halloween 2005. It is time to close the floor and celebrate the fact that we have an electronic order-driven market rather than a living museum. Anyone for go-karting?</div>

<h2 class="center">Time to Close the Floor<br>
<span class="headlinedate">12 October 2004</span></h2>
<p>When your editor first started work as a young corporate finance executive in 
the City of London in Sep-86, one of the first things he did in his lunch break 
was to pay a visit to a place that would soon lapse into history. A brief walk 
down the road took him to the floor of the London Stock Exchange.</p>
<p>On 27-Oct-86, a revolution known as &quot;Big Bang&quot; occurred in London, and the 
market moved from a floor-based face-to-face trading system to an electronic 
quotation system, at the same time as the abolition of minimum commissions and 
the removal of the prohibition on firms acting as both &quot;jobbers&quot; (or what the 
NYSE still calls &quot;specialists&quot;) and stockbrokers, amongst several other reforms. 
The equity trading floor closed shortly afterwards, although a small corner 
remained for stock options.</p>
<p>In Hong Kong, minimum commissions were finally abolished by
<a target="_blank" href="http://www.hkex.com.hk/">Hong Kong Exchanges and 
Clearing Ltd</a> (<b>HKEx</b>, 0388) on 1-Apr-03, and the trading floor is still 
there, despite having moved to the Automated Matching System (<b>AMS</b>), with 
the first stocks being admitted in 1993 and the transition completed in Jan-94. 
AMS meant that instead of brokers manually matching trades face to face on the 
floor or over the phone, the trades were input into terminals and matched in a 
computerised order-driven system in strict price and time priority.</p>
<p>Almost 9 years ago, on 25-Jan-96, after much resistance from brokers who 
thought it might damage the value of their &quot;seats&quot; on the trading floor, the 
Stock Exchange began allowing trading through &quot;off-floor&quot; terminals in brokers 
offices. This marked the beginning of the end for the floor, but it has been a 
long goodbye. Initially only one off-floor terminal was allowed for each 
on-floor seat held. By the end of 1996, there were 515 off-floor terminals which 
already accounted for half of the market turnover.</p>
<p>There were and are still a number of ways to restrict the throughput of a 
terminal, by limiting the order size, or the maximum number of outstanding 
orders, or the maximum number of order inputs in a given time. For example, on 
31-Jan-94, the maximum order size was increased from 100 to 200 board lots, 
followed by a rise on 17-Feb-97 to 300 board lots, on 26-May-97 to 400 board 
lots and on
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2001/0206news.htm">
12-Feb-01</a> to 600 lots. Meanwhile, on 20-Oct-97 the maximum number of 
outstanding orders per terminal was increased from 200 to 400.</p>
<p>From 9-Jan-98, brokers were allowed to use a second off-floor terminal. On 
23-Oct-00, the first phase of AMS/3 was launched, which allowed multiple 
terminals to share a single broker code previously occupied by a single input 
terminal. Using an &quot;Open Gateway&quot;, brokers were free to connect their own order 
input systems, including piping client orders straight from their web sites 
(subject to any credit approval). For electronic orders, there was no longer a 
need for manual order entry by the broker. On 12-Feb-01 the maximum number of 
outstanding orders per broker code was increased from 800 to 2,000. On
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2001/0222news.htm">
23-Feb-01</a>, AMS/3 began allowing electronic orders to be routed through the 
internet and mobile phones to its Order Routing System.</p>
<h3>The floor dries up</h3>
<p>As shown in the
<a target="_blank" href="http://www.hkex.com.hk/relation/lstdoc/e_388pro-20000622app02.pdf">
valuation report</a> of the HKEx listing document dated 22-Jun-00, HKEx has a 
21-year lease over the 1st and 2nd floors of One &amp; Two Exchange Square, 
including the trading hall, visitor gallery and ancillary office spaces.</p>
<p>The lease, from the Government, runs from 1-Nov-84 to 31-Oct-05, at a current 
monthly rent of $1,040,877.34 or about HK$24.18 per sq ft for the 43,040 sq ft 
windowless space. The lease is as old as Exchange Square itself, and the Stock 
Exchange opened for business on 2-Apr-86 following the 4-way merger of the old 
Hong Kong Stock Exchange, the Far East Exchange, the Kam Ngan Stock Exchange and 
the Kowloon Stock Exchange.</p>
<p>As a result of the move to off-floor terminals and the subsequent 
introduction of AMS/3, the proportion of trades conducted on-floor has dwindled, 
and is now down to around 3% of turnover. Due to automated matching, what that 
means in practice is that the value of trades in which <u>both</u> the buying 
and the selling brokers are on the floor is now down to around 0.09%. In the 
other 99.91% of trades, either the buying or the selling broker, or both, are 
not on the floor.</p>
<p>Probably the only brokers who work on the floor these days are 
small brokers or sole traders who are treating it as an office and are trying to 
keep their costs down. Indeed, rumour has it that when a big listing ceremony is 
being held, officials have to call up brokers and ask them to run down and put 
their red jackets on to make the place look busy.</p>
<p>The single terminal on the floor can now be better thought of as the 
&quot;off-office&quot; terminal rather than the &quot;on-floor&quot; terminal. The other thing that 
the floor facilitates is unrecorded face-to-face conversations between brokers 
who may then engage in front-running of client orders, rat-trading or market 
manipulation without detection.</p>
<h3>The way forward</h3>
<p>Hong Kong cannot live in the past. Some brokers have called for the hall to 
be retained, or for a cut down version to accommodate those who are unwilling or 
unable to invest in their own offices. <i>Webb-site.com</i> does not support 
this, as it would come at considerable cost and would represent a subsidy to the 
small brokers from the rest of the market, ultimately paid for through the 
exchange's fees. The only way to avoid such a subsidy would be to directly 
charge those brokers who wish to stay the full cost of the new hall, including 
rent, maintenance and the capital expenditure needed to upgrade the equipment, 
much of which is now obsolete. Frankly it would be better if groups of them got 
together and built their own dealing room somewhere else.</p>
<p>A shrunken floor would also make it look like Hong Kong had a shrinking stock 
market, and would retain the image of red-jacketed brokers running around 
matching bargains which is inconsistent with the modern electronic matching 
system we have. We should celebrate that system rather than carry on pretending that we 
still do things manually in some kind of living museum - if that is what we 
wanted then we might as well put the blackboards up and get brokers to chalk up 
prices just like the &quot;good-old-days&quot;. That's where the term &quot;board lots&quot; and 
&quot;main board&quot; came from.</p>
<p>Instead, what we should do is:</p>
<ul>
  <li>Surrender the Exchange Square property to the 
  Government when the lease expires on 31-Oct-05. The Government, as landlord, 
  can then do whatever they like with it.</li>
  <li>Lease smaller premises to act as a media centre, a 
  place for listing ceremonies and a visitor and education centre to exhibit the 
  long and colourful history of Hong Kong's stock markets. The media centre 
  would allow TV stations to give &quot;live from HKEx&quot; market reports with an appropriate 
  screen-based backdrop. The visitor centre would allow the public, and in 
  particular the young speculators of tomorrow, to become more familiar with our 
  markets.</li>
</ul>
<p>As for what the Government might do with the property, that is really their 
problem, but given its high ceilings and column-free structure it might be 
adaptable into an ice skating rink, bowling alleys, another multiplex cinema, a 
concert venue or even an electric go-karting circuit. The possibilities are 
endless, and no doubt if they tender it out, the market will find a solution.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
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