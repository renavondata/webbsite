
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

<script type="text/javascript">document.title="HKEx invents square wheel";</script>

	<div class="summary">HKEx has reportedly approved a new rule which will make it the only market in the world to have no price caps in regular trading but a limit on movements during the closing auction, thereby locking in any manipulation that occurs just before the auction. Many developed markets have adopted random auction closing-times to deter manipulation, which HKEx did not even allow for in its recent consultation.</div>

<h2 class="center">HKEx invents square wheel<br>
<span class="headlinedate">12 February 2009</span></h2>
<p>In a capitulation to the demands of small brokers, who account for a
<a target="_blank" href="http://www.hkex.com.hk/data/epstat/exreport.htm">small 
fraction</a> of turnover on the exchange, the government-controlled board of 
Hong Kong Exchanges and Clearing Limited (<strong>HKEx</strong>, 0388) has 
reportedly approved rule changes which will restrict price movements during the 
Closing Auction Session (<strong>CAS</strong>), the last 10 minutes of trading 
each day (between 16:00 and 16:10), to not more than 2% up or down, thereby 
locking in any price-fixing which occurs just before 16:00. A formal 
announcement is awaited, and the SFC has to approve the rule change.</p>
<p>The reported rule is a uniquely Hong Kong contraption. Rather than adopt the 
round wheels of other developed markets, HKEx is inventing a square one. 
Following allegations of price manipulation during the CAS, HKEx
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/0811283news.htm">
published</a> a
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/cp200811_e.pdf">
consultation paper</a> on the CAS on 28-Nov-08, but did not include the option 
of a random closing time, a refinement which <em>Webb-site.com</em> and others 
had <a href="closingauction.asp">called for</a>. Indeed, your editor 
David Webb had called for that when he was a director of HKEx before the CAS was 
even introduced. A random closing time during an auction makes it much more 
expensive for someone to manipulate the closing price, particularly if the 
randomness period is long enough.</p>
<p>In its Exchange newsletter of July-2008, HKEx
<a target="_blank" href="http://www.hkex.com.hk/publication/newsltr/2008-07-09-e.pdf">
said</a>:</p>
<blockquote>&quot;As part of its efforts to continuously improve the securities 
market's infrastructure, HKEx is seeking comments from all segments of the 
market and is considering suggestions on possible enhancements to the closing 
auction mechanism. <strong>HKEx is open to various options including the 
possibility of adopting the random closing approach</strong>, allowing short 
selling during auction sessions, changing the combination of order types during 
auction periods and revising the matching priorities. <strong>These issues will 
be covered in a market-wide consultation paper to be released in the third 
quarter of this year</strong>.&quot; (emphasis added)</blockquote>
<p>Well, that wasn't true. The paper came out in the 4th quarter, and when it 
did, it excluded the random closing option, although this had reportedly been 
included in earlier drafts as late as 13-Nov-08, two weeks before it was 
published.</p>
<p>The
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/cp200811q_e.doc">
questionnaire</a> accompanying the consultation made clear that HKEx had its 
heart set on some form of price control or abolition of the CAS - there was no 
option for &quot;status quo&quot;. The first question in the questionnaire was &quot;Do you 
support Approach 1, Approach 2, Approach 3 or suspending the CAS as a whole?&quot;. 
And of course, the 3 approaches were all forms of price controls, while 
suspending CAS would be a return to the price manipulation often seen in the 
last minute of regular trading before the CAS was introduced. The remaining 
questions tended to exclude the investing public, or at least retail investors, 
by asking questions such as &quot;how much lead time would your firm require for its 
implementation?&quot;. Such a narrow consultation, both in scope of proposals and in 
target audience, was not worthy of our response, so we didn't.</p>
<h3>Consequences</h3>
<p>If the rule is changed as reported, then it will have the following results:</p>
<ol>
	<li>For shares priced between $0.010 and $0.049, no price movement would be 
	permitted, because a single tick ($0.001) is more than 2%. For shares priced between $0.05 and $0.099, the price movement would be 
	restricted to one tick ($0.001), because 2 ticks would be more than 2%. Similarly, for shares priced between $0.255 and $0.99, the price 
	movement would be restricted to 1 tick ($0.01), because 2 ticks would be 
	more than 2%. As of last night (11-Feb-09), of the 1264 equity shares listed 
	on HKEx, 814 (64%) had share prices below $1.00. They account for about 
	$388bn of market value. The largest was Shougang Concord International Enterprises Ltd (0697) 
	with a market value of $6.1bn.</li>
	<li>Companies with share prices between $1.00 and $1.49 would be restricted 
	to a movement of 2 ticks ($0.02). There were 93 stocks in that price range 
	last night, with a combined market value of $141bn. The largest which is not 
	currently suspended is China Travel International Investment Hong Kong Ltd 
	(0308), with a market value of $6.9bn.</li>
	<li>Incidentally, if you are wondering why the rule would limit price 
	movements in low-priced stocks to so few ticks, it's because of the U-turn 
	HKEx did over the final phase of spread reductions, which were
	<a href="spreadout.asp">abandoned</a> in 2007, again after heavy 
	political lobbying by small brokers. Tick sizes between $0.25 and $2.00 were 
	due to be reduced by 80%, but this was dropped, leaving a 2-tier market.</li>
	<li>To make any sense, the Exchange would have to delete at 16:00 any 
	outstanding orders on the bid and offer queues which fall outside the 
	allowed price range, as these will be impossible to fill, and might 
	otherwise present a misleading picture. </li>
	<li>These price restrictions would have a chilling effect on liquidity in 
	the CAS.</li>
	<li>It is unclear whether the rule would apply to leveraged instruments, 
	such as company warrants, derivative warrants, and callable bull/bear 
	certificates. If it does, this would be highly restrictive, because by their 
	nature, the percentage price movements of such instruments are normally 
	multiples of the movements in the underlying stocks.</li>
	<li>Finally, the amended rule would actually defeat the intention of the 
	amendment, by making it easier and less costly to manipulate the closing 
	price, because anyone who pushes up or drives down a price in the last 
	minute of the Continuous Trading Session (between 15:59 and 16:00) can be 
	certain that it will not move against them by more than 2% in the CAS, and 
	probably not at all. For example, if you push the price up by 6%, then it 
	won't fall back by more than 2% in the CAS, leaving at least a 4% increase. In many 
	cases, nobody would be willing to buy during the CAS at the elevated price, 
	so no IEP (Indicative Equilibrium Price) would be established in the CAS, 
	and under existing rules, the average price in the last minute (taken at 
	15-second intervals) would then become the closing price, giving the 
	price-fixer his 6% gain.</li>
</ol>
<p>In the latest consultation paper, it was pointed out that some Asian markets 
have price caps in their regular trading session (Tokyo, Korea, Taiwan and 
Shenzhen). For these, they naturally carry on with the same price caps in the 
closing auction. These are wide limits - the smallest is 5% for certain Shenzhen 
stocks, the largest is 15% in Korea, and Taiwan has a 7% limit, in each case 
relative to the previous day's close.</p>
<p>But for what we can fairly call the more modern markets, there are no price 
controls (Australia, NYSE, NASDAQ, London, Euronext and Deutsche Bourse), and 
hence none in their closing auction either. Three of those markets: Australia, 
London and Deutsche Bourse, have random closing times, as shown in Appendix I of 
the
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/c_auction_e.pdf">
original consultation paper</a> issued on 21-Mar-07. This information was not 
included in the Nov-08 consultation, presumably because HKEx did not want to 
consider the random closing route.</p>
<p>Even the
<a target="_blank" href="http://www.set.or.th/en/regulations/supervision_market/tradingsystem_p9.html">
Stock Exchange of Thailand</a> has a random closing time <em>&quot;to prevent the 
manipulation of closing prices&quot;, </em>it says on its web site. In Europe, 
other exchanges with random closes include
<a target="_blank" href="http://www.instinet.com/pdf/europeExchange/Borsa%20Italiana%20Exchange%20Guide.pdf">
Milan</a> in Italy,
<a target="_blank" href="http://www.instinet.com/pdf/europeExchange/Madrid%20Stock%20Exchange%20Guide.pdf">
Madrid</a> in Spain,
<a target="_blank" href="http://www.instinet.com/pdf/europeExchange/Vienna%20Stock%20Exchange%20Guide.pdf">
Vienna</a> in Austria,
<a target="_blank" href="http://www.instinet.com/pdf/europeExchange/Budapest_Stock_Exchange_Guide.pdf">
Budapest</a> in Hungary and
<a target="_blank" href="http://www.instinet.com/pdf/europeExchange/Athens%20Stock%20Exchange%20Guide.pdf">
Athens</a> in Greece.</p>
<p>If the rule is approved, HKEx will become the only market we know which has 
no price caps in the continuous trading session but has price caps in its 
closing auction. Why is it, do you think, that no other market has chosen this? 
Perhaps because no other market has a Government which is so beholden to special 
interests, such as the small brokers who hold 13 seats in the Chief Executive's 
election committee, including 1 seat in the Legislative Council. The Government 
in turn appoints 7 of the 13 directors of HKEx, currently including 3 members of 
Hong Kong's cabinet, the Executive Council.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=113">Closing auction</a></li>
				
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