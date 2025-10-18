
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

<script type="text/javascript">document.title="StockMax and competition for HKEx";</script>

	<div class="summary">We look at the implications of HSBC's proposed StockMax dark pool with retail investor participation. It's a wake-up call to the Government, SFC and HKEx that we need to move forward with allowing competition to innovate services both inside and outside HKEx. We propose measures to achieve this while preserving fair and orderly markets.</div>

<h2 class="center">StockMax and competition for HKEx<br>
<span class="headlinedate">7 August 2011</span></h2>
<p>There's been much ado recently about the pending launch by HSBC's securities 
arm, <a href="../dbpub/orgdata.asp?p=50856">HSBC Securities Brokers (Asia) Ltd</a> 
(<strong>HSBA</strong>), of an internal crossing engine called
<a href="../codocs/StockMax110808.pdf" target="_blank">StockMax Crossing</a> (<strong>StockMax</strong>) for securities listed in HK, 
to be made available to retail investors. The media coverage so far has failed 
to make the connection between this issue and that of minimum trading spreads on 
the stock exchange.</p>
<p>There's nothing new about crossing engines - these have been operating on the 
fringes of the market for years, accounting for less than 3% of the market 
turnover in 2010, but until now, the Securities and Futures Commission (<strong>SFC</strong>) 
has only allowed these systems to be available to institutional investors. Some 
of these platforms are &quot;lit pools&quot;, where orders are displayed to participants 
(albeit anonymously), and others are &quot;dark pools&quot;, where orders are not 
displayed, but participants hope that the system will match their order with one 
in the opposite direction at a mutually acceptable price and size.</p>
<p>Systems announced to date include
<a href="https://www.clsa.com/about-clsa/media-centre/2010-Media-releases/direct-access-to-asian-based-crossing-network-clsas-blocsec-is-available-via-autex-trade-route.php" target="_blank">
CLSA's BlocSec</a>,
<a href="http://www.db.com/presse/en/content/press_releases_2010_5126.htm" target="_blank">
Deutsche Bank's DBATS</a>,
<a href="http://gset.gs.com/offering/execution.asp" target="_blank">Goldman Sachs' SIGMA-X</a>,
<a href="http://instinet.com/includes/pdf/news/CBX_Asia_HK_Stocks_.pdf" target="_blank">
Instinet's CBX Asia</a>,
<a href="http://investor.itg.com/phoenix.zhtml?c=100516&amp;p=irol-newsArticle&amp;ID=1403335&amp;highlight=" target="_blank">
ITG's Posit</a>,
<a href="http://www.nomuraholdings.com/news/nr/asia/20100506/20100506.html" target="_blank">
Nomura's NX</a> and
<a href="http://www.ibb.ubs.com/marketing_campaigns/directexecution/libLocal/parts/UBS_PIN_Launched-in-HongKong_09.pdf" target="_blank">
UBS PIN</a> (Price Improvement Network). There are also pools of pools, or 
aggregators, which seek to connect these internal crossing systems to combine 
the fragmented liquidity. These include
<a href="https://www.chi-east.com/" target="_blank">Chi-East</a> (a JV between 
Chi-X and Singapore Exchanges) and ITG's Posit Marketplace. Some of the pool 
operators have also established bilateral arrangements to join their pools 
together.</p>
<p>In regulatory terms, the systems are known as &quot;Automated Trading Systems&quot; (<strong>ATSs</strong>). 
Banks and SFC-licensed brokers can provide an ATS as a &quot;Type 7&quot; regulated 
activity. Those entities which are not licensed intermediaries, such as 
Bloomberg, can be separately authorised to run an ATS under
<a href="http://www.hklii.org/hk/legis/en/ord/571/s95.html" target="_blank">
Section 95(2)</a> of the Securities and Futures Ordinance. A
<a href="http://www.sfc.hk/sfc/html/EN/intermediaries/trading/trading/trading.html" target="_blank">
list of these</a> is published on the SFC web site. HSBA is a licensed 
intermediary, so its ATS license is granted as Type 7, and there is a lengthy
<a href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Cond.jsp?charset=ISO8859_1&amp;ceref=ACB389&amp;applNo=0002" target="_blank">
set of conditions</a> on the SFC web site. Presumably the SFC has to be 
satisfied that all these conditions have been met before StockMax can launch.</p>
<p>Webb-site believes that the exclusion until now of retail investors from ATSs 
has been an unnecessary and protectionist measure for
<a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388), the listed company which owns The Stock Exchange 
of Hong Kong Ltd (<strong>SEHK</strong>). HSBC's StockMax, and others like it, 
should move ahead with allowing retail investor participation in their ATS 
platforms, because it will allow retail investors to benefit from better pricing 
opportunities. The SFC should allow it rather than U-turn and restrict StockMax 
to institutional investors.</p>
<p>As detailed in our article <a href="hkexopoly.asp">
Arculli's rant against competition for HKEx</a> (26-Jun-2010), SEHK currently 
has a statutory monopoly for the operation of a &quot;stock market&quot; in Hong Kong, so 
HKEx has been relatively sanguine about the small amount of volume conducted by 
ATSs. That's because ATS operators in HK have to report their trades to SEHK 
anyway, and HKEx also owns the clearing house, Hong Kong Securities Clearing Co 
Ltd (<strong>HKSCC</strong>) which clears and settles the trades.</p>
<h3>Monopolistic practices</h3>
<p>ATSs are not on a level playing field with the biggest lit pool of all, 
namely the Automated Matching System (<strong>AMS/3</strong>) run by SEHK. As 
explained in paragraph 1 of the SEHK document &quot;<a href="http://www.hkex.com.hk/eng/rulesreg/traderules/Documents/20100628TradingFee.pdf" target="_blank">Operation 
Procedures for Trading Fee</a>&quot;, an Exchange Participant has to pay the 0.005% 
trading fee on each side of a trade &quot;whether in the Trading Hall and whether the 
transaction is arranged or concluded in Hong Kong or elsewhere&quot;. Of course, over 
99% of trades are
<a href="http://www.hkex.com.hk/eng/stat/epstat/floorstat/2011floorstat.htm" target="_blank">
not conducted in the Trading Hall</a>, so the wording is somewhat antiquated, 
but what they mean is that the Exchange Participant pays the fee &quot;whether it 
trades on our system or not&quot;.</p>
<p>This &quot;take-or-pay&quot; arrangement is reminiscent of the anti-competitive 
practice which Microsoft once used to license MS-DOS to PC makers. Although 
other per-copy terms were available, the cheapest deal was a &quot;lockout&quot; deal 
which said that &quot;you are free to use other operating systems, but you must pay 
us a license fee based on the number of PCs you sell, regardless of which 
operating system you use&quot;. In a 1994 settlement with the US Fair Trade 
Commission, this &quot;per processor&quot; license fee arrangement was banned because it 
had the effect of stifling competition. The requirement that all ATS 
transactions result in a trading fee to SEHK has a similar effect.</p>
<p>If and when HK gets a <a href="../dbpub/subject.asp?c=115">competition law</a>, 
this take-or-pay fee arrangement might well be legally unsustainable, as it 
would be an abuse of SEHK's dominant market position.</p>
<p>What HK needs is a Consolidated Tape System (<strong>CTS</strong>) like that 
in the US, to which all operators of trading platforms (including SEHK) report 
their trades. In the US, the CTS is run for the
<a href="http://www.nyxdata.com/cta" target="_blank">Consolidated Tape 
Association</a> (<strong>CTA</strong>) by the NYSE, but there is no reason why 
HK's could not be run by a neutral third party, perhaps established by the SFC 
and run not-for-profit, with operators contributing to the running costs 
proportionate to their turnover. Whoever runs the CTS, ATS operators should not 
have to pay SEHK a fee for each trade they report.</p>
<p>Trades matched by ATS operators have to be reported to SEHK within 15 minutes 
under
<a href="http://www.hkex.com.hk/eng/rulesreg/traderules/sehk/Documents/chap-5_eng.pdf" target="_blank">
Trading Rule 520 and 526</a>, but that is an outdated rule designed for 
manually-matched trades. Automated systems should be able to do this much 
faster. To ensure that ATS participants do not have an information advantage, 
the SFC should require that no trade is reported to a customer of an ATS before 
it is reported to the CTS, and the absolute deadline for reporting automated 
transactions should be reduced from 15 minutes to say 1 second. If a participant 
in an ATS knows that his order has been filled before it is reported to the 
market via SEHK (or the future CTS), then he might take advantage of that by 
adjusting his bids and offers on SEHK or on other ATSs.</p>
<p>To avoid fragmenting market liquidity, HK also needs a Consolidated Quotation 
System (<strong>CQS</strong>) so that all displayed orders on any platform are 
unified, allowing brokers to satisfy their duty to find best execution for 
client orders. Again, there is no need to reinvent the wheel on this - the US 
has a CQS run by the CTA. For more detail on that, see our
<a href="hkexopoly.asp">earlier article</a>.</p>
<h3>Slipping in dark pools</h3>
<p>One of the perceived attractions of dark pools to institutions is the 
possibility that large blocks of stock can be traded without significantly 
impacting the market price, or what the professionals call &quot;slippage&quot;. You might 
wonder whether that is more perceived than real. Intuitively, what should matter 
is how much real supply or demand there is at different price points, regardless 
of whether or how it is displayed. If there is a large block for sale, and a 
large potential buyer, then there's no reason to think that the price would move 
down any more than it would move up. If there is a large sell order but not much 
latent demand, or vice versa, then of course the slippage will be greater, dark 
pools or not. Even if you break the sell order into chunks, that won't create 
demand for the stock that isn't already there. So what the dark pools are about 
is not so much minimising slippage but accelerating execution. Rather than 
spending a long time breaking up your demand into displayed orders, you can 
probe the market with a dark order for the whole lot.</p>
<p>SEHK should counter this by introducing a &quot;dark order&quot; type of its own. 
Naturally, these orders would have to rank below displayed orders in terms of 
priority for execution at a given price (but ahead of displayed orders at 
inferior prices). Introducing this order type would allow SEHK to be more 
competitive with the dark pool operators.</p>
<h3>Going inside the spread</h3>
<p>But there's another big attraction of ATSs: if a stock exchange is inherently 
archaic and inefficient by requiring large minimum price-movements or &quot;tick 
size&quot;, then that dictates a large minimum spread between the best bid and best 
offer price in the market. Competing platforms, lit or dark, can go inside that 
spread and allow people to meet in the middle. And SEHK is indeed archaic and 
inefficient when it comes to spreads. Currently, if a stock is on offer at 
$0.51, you can either take it or bid at $0.50, but nothing inbetween. That is a 
2% spread. You might be willing to pay $0.505, and the seller might be willing 
to accept it, but you cannot do that on AMS/3 on SEHK. So off-exchange you go, 
seeking out a 1% price improvement on an ATS if you split the difference.</p>
<p>It is not clear whether StockMax would actually allow retail investors 
(rather than just institutions) to place bids and offers inside the spread - but 
it should, if it wants to attract extra business. A retail investor willing to 
pay $0.505 for a stock would see a lot of value in that. Equally, HSBC should 
allow retail investors to specify whether their order is displayed or dark. In 
other words, they should allow the same types of orders to retail investors as 
they do to institutional participants. Finally, a retail investor should be 
allowed to choose whether his order is routed to SEHK if it cannot be filled on 
StockMax, and of course, if the order is at an intra-spread price like $0.505, 
then it would have to be rounded down to $0.50 when it is passed to SEHK.</p>
<p>Small brokers are opposing StockMax, because they fear it will draw business 
away from them and away from SEHK's AMS/3. They fear that the sheer size of 
HSBC's retail investor base will produce a more liquid ATS in which significant 
volume could be matched and price-improvement offered. Institutions could also 
&quot;jump the queue&quot; by offering the same price as the top of the queue on AMS/3, 
undermining the time-priority that people receive when posting bids and offers 
in AMS/3. This is an exchange-centric way of looking at it. If you regard AMS/3 
as just another ATS, albeit the largest one, with a 97% market share, then there 
is no reason why participants should not be free to join any queue in any other 
ATS.</p>
<p>HKEx is probably also concerned, because although (for now at least) it 
gets paid either way, it doesn't want to lose substantial volume to other 
platforms. But if its service was more competitive, then it wouldn't have so 
much cause for concern. Ironically it is the same factions which oppose 
reduction of spreads on SEHK that oppose the innovation being offered by ATSs. 
In
<a href="http://www.info.gov.hk/gia/general/201003/03/P201003030101.htm" target="_blank">
an answer</a> to the Legislative Council on 3-Mar-2010, Secretary for Financial 
Services <a href="../dbpub/natarts.asp?p=18733">Ceajer Chan Ka-Keung</a> said:</p>
<blockquote>&quot;Dark pools have the benefit of bringing down trading costs, 
improving efficiency of trade execution and providing significant innovation in 
terms of trading services offered.&quot;</blockquote>
<p>This is indeed true - and HKEx needs to respond to that innovation.</p>
<h3>Cut the spread</h3>
<p>Spread-reduction has been a long-running battle in HK, which Webb-site has 
been campaigning for <a href="cutthespread.asp">since early 2002</a>. 
Some small brokers fear that it leads to reduced rates of commission, because 
those who seek to day-trade by moving from one side of the spread to the other 
will make smaller profits and will therefor demand lower transaction costs. This 
is rather a false concern now that commissions have already been competed down 
to 0.08% or less for online brokers. Another reason that some oppose narrower 
spreads is that, with wide spreads, there is an order-posting race that goes on 
when the market opens, to get to the front of the queue on either side of a wide 
spread. With narrower spreads, there is less advantage in being at the front of 
the queue.</p>
<p>Your editor David Webb was an elected independent director of HKEx the last 
time this issue came up. We pushed hard, and the board of HKEx agreed to cut 
spreads across all price points, but broke it into two phases, then after 
pressure from small brokers, the board split the second phase into phases 2A and 
2B, and then after more pressure, <a href="spreadout.asp">abandoned</a> 
phase 2B in 2007 (2B or not 2B, that was the question). The result was the 
current spread table:</p>
<img class="center" alt="Old spreads" src="../images/oldspreads.gif">
<p>That left reasonably narrow spreads above $5, but left the majority of 
companies (by number) in the inefficient price band below $5. As of Friday 
(5-Aug-2011), only 279 of the 1460 listed equities were priced above $5 per 
share (a table ranked by price
<a href="../dbpub/mcap.asp?exch=all&amp;hide=&amp;sort=prcdn">is here</a>, 
updated daily). Not all low-priced stocks are small companies - Bank of China, 
for example, closed at $3.33 per share on Friday and was the 12th largest
<a href="../dbpub/mcap.asp?exch=all&amp;hide=&amp;sort=mcpdn">stock by market 
capitalisation</a>.</p>
<p>HKEx should respond to this competition by reducing the spread table, 
particularly below $5, and making smaller reductions above $5 to make the whole 
table more consistent. Small brokers should support this, because it will reduce 
the attraction of ATS systems and stop the big retail banks and larger brokers 
from drawing clients away from the smaller firms in search of price improvement 
on ATSs. We propose the following spread table:</p>
<img class="center" alt="New spreads" src="../images/propspreads.gif">
<h3>The small brokers</h3>
<p>Out of the
<a href="http://www.hkex.com.hk/eng/stat/epstat/EPstat.htm" target="_blank">526 
Exchange Participants</a>, The top 65 have about 89%
<a href="http://www.hkex.com.hk/eng/stat/epstat/exreport.htm" target="_blank">
market share</a> between them, with the other 461 holding 11% (including 35 who 
don't trade at all). Given their small combined market share, you might wonder 
why small brokers are so influential on policy-making at HKEx and the SFC.</p>
<p>The answer lies partly in HK's political system. Participants of SEHK, 
together with the 184 participants in the Hong Kong Futures Exchange Ltd (which 
is also owned by HKEx) and the
<a href="http://www.cgse.com.hk/en/member_01.php" target="_blank">171 members</a> 
of the Chinese Gold &amp; Silver Exchange Society together form the &quot;small circle&quot; 
electorate of the so-called &quot;Financial Services&quot; constituency in the Legislative 
Council. They also elect 18 of the 1200-member Election Committee which chooses 
Hong Kong's Chief Executive. Each firm has 1 vote. Asset management companies, 
and the 30,000+ humans licensed by the SFC, are not electors. So in effect, this 
is the &quot;Small Brokerage&quot; sector, not the &quot;Financial Services Sector&quot;. The 
legislator also has a vote in the Election Committee. 19 votes out of 1200, or 
1.6%, might not sound like much, but any Chief Executive candidate naturally 
panders to all such sectors to amass support. The legislator, and others in 
these narrow &quot;functional constituencies&quot; are also important to the Government in 
getting its laws enacted.</p>
<p>Another reason for the small brokers' influence is that the HK Government, 
particularly since the mass protest of 2003 which dislodged HK's first Chief 
Executive, Tung Chee Hwa, shrinks away from protest of any form. That's partly 
because their Beijing masters hate to see public protests for fear that 
mainlanders may mimic them more often than they already do. So if street 
protests are threatened or actioned by any organised group then the Government 
tends to concede, sometimes over-compensating by
<a href="http://www.scheme6000.gov.hk/" target="_blank">flinging cash</a> at the 
problem.</p>
<p>But wait, you might think, &quot;isn't HKEx an independent company, free to make 
decisions in its business interests&quot;? No, because the shareholders of HKEx can 
only elect 6 out of 13 directors, the rest being appointed directly (6) or 
indirectly (1) by the Government. The Chairman of HKEx has to be approved by the 
Chief Executive of HK, and is currently a cabinet member. So although the 
Government only holds a 5.9% stake, HKEx is in most respects a 
Government-controlled company. In an earlier example, of this influence, HKEx on 
20-Feb-2002
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020220news.htm" target="_blank">
delayed</a> the abolition of minimum brokerage commissions by a year. The 
Government cited the unemployment rate as an excuse, even though the sector
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=10PR95" target="_blank">
employs far more people now</a> than it did then.</p>
<p>For the sake of its competitive position in international capital markets, 
Hong Kong cannot afford to continue being held captive to a small but 
influential vested interest, whether it is the small brokers in relation to the 
Trading Rules of SEHK, or the tycoons in relation to other areas of reform, such 
as the Listing Rules. </p>
<h3>Conclusion</h3>
<p>HSBC's StockMax should be seen as a wake-up call to the Government, the SFC, 
HKEx and small brokers. If HKEx is not allowed to innovate, cutting spreads, 
introducing dark order types, and generally becoming more competitive, then we 
can expect more platforms like StockMax to emerge. The Government and SFC should 
not cave into pressure and resist this competition by prohibiting retail access 
to ATSs. The take-or-pay arrangement on SEHK trading fees should be abolished 
and the statutory monopoly on a &quot;stock market&quot; should be removed. Both are 
inconsistent with the principles of a level playing field and a competitive 
market in trading services. To facilitate this competition while maintaining 
fair and orderly markets, the SFC should oversee the establishment of a 
Consolidated Tape System for trades and a Consolidated Quote System for 
displayed orders.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=382">HSBC HOLDINGS PLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50856">HSBC SECURITIES BROKERS (ASIA) LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
				<li><a href="/dbpub/subject.asp?c=122">Dealing costs</a></li>
				
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