
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

<script type="text/javascript">document.title="Incredibubble!";</script>

	<div class="summary">What else can you call a US$3.2tn market which has gained 358% in 20 months and trades on a historic P/E of over 60, which is probably closer to 80-100 if you take out stock-market and real-estate revaluations from "E". We look at the bubble, the impact on HK, the thru-train, the calls in HK for an A-H arbitrage mechanism, and how the bursting may affect the socio-political system. The absence of a free media is itself contributing to the bubble.</div>

<h2 class="center">Incredibubble!<br>
<span class="headlinedate">16 September 2007</span></h2>
<p class="center"><b><a target="_blank" href="../vote/result.asp?p=19">China Bubble poll results</a></b></p>

<p>In spotless Dalian 10 days ago, where all signs of 
industrial activity and construction had ceased for the <i>&quot;Summer Davos&quot;</i> 
session of the World Economic Forum, nobody wanted to mention the &quot;B&quot; word. Hear 
no evil, speak no evil and see no evil in the world's largest country without  
free media. Even western bankers and economists, who should know better, bit 
their tongues. Take, for example, the session on
<a target="_blank" href="http://www.weforum.org/en/knowledge/Events/2007/InauguralAnnualMeetingoftheNewChampions/KN_SESS_SUMM_21850">
Outlook for China's Capital Markets</a>.</p>
<p>In China, it's become the great urban myth of 
2007: &quot;the government won't <i>let</i> the market fall before the Beijing Olympics&quot;. 
But the Government wasn't able to control the market on the way up, so why 
should they be able to control it on the way down? All that they can do is 
manipulate the state-controlled media in increasingly futile efforts to jawbone 
the market in a sideways direction, accompanied by tweaking of bank reserve 
ratios and interest rates. They must be absolutely terrified.</p>
<p>Back on 23-Mar-07, the People's Daily opined
<a target="_blank" href="http://english.peopledaily.com.cn/200703/23/eng20070323_360428.html">
China has no serious stock market bubble</a>. Rest assured, they said, the State 
Council had made <i>&quot;important strategic plans and brilliant policy decisions&quot;</i> 
and quoted former CSRC Chairman Zhou Zhengqing as saying <i>&quot;there is no serious 
bubble in China's stock market.&quot; </i>and <i>&quot;generally speaking, the development 
of the stock market is healthy&quot;.</i> That has become the line-to-take among 
officialdom.</p>
<p>Almost 6 months later, and with the
<a target="_blank" href="http://finance.yahoo.com/q/hp?s=000001.SS">Shanghai 
Composite Index</a> (<b>SCI</b>) up another 72%, on 8-Sep-07, the official
<a target="_blank" href="http://www.chinanews.cn/business/2007-09-08/39289.html">
Chinanews</a> tells us <i>&quot;Generally speaking, Chinese stock market is still 
developing soundly at present and there are no major bubbles in the stock 
market...&quot;. </i>The latest article proudly tells us that the mainland market 
capitalization has hit CNY24trn (USD3.2tn) and the average (historic) 
price/earnings&nbsp;(P/E) ratio is now 61.2.</p>
<p>Of course, the &quot;E&quot; in that P/E includes a 
substantial component of stock market gains as the dragon chases its own tail. 
Since the end of 2005, the SCI has increased from 1,161 to 5,312, a gain of 358% 
(or 4.6-fold) in just 20 months, allowing many companies to report bumper 
earnings for the 2006 calendar year. Accompanying the market bubble has been a 
property bubble which again has been included in the &quot;E&quot; through increases in 
the valuations of property assets. But these are capital items, reflecting the 
net present value of future net income from property - so including them in a 
P/E calculation is wrongly squaring the multiple. Excluding stock market and property 
gains from earnings, a fairer estimate of the market P/E would be 80-100x core 
earnings.</p>
<p>The vast majority of individual investors in 
China today have never experienced a serious market correction, and have 
only the simplest understanding of the market. All that they know is that almost 
everyone they know has made gains on their stocks, so they jump on the 
bandwagon. What they don't know is that the bandwagon is heading for the edge of 
a cliff. Like a giant
<a target="_blank" href="http://en.wikipedia.org/wiki/Ponzi_scheme">Ponzi scheme</a>, 
when everyone has bought in, there will be nobody left to pay them a profit.</p>
<p>By definition, bubbles are markets whose 
valuations are unsupported by fundamentals. There is nothing to fall back on. 
Bubbles never just plateau and go sideways - because that would not satisfy 
investors who bought in expectation of continued rapid gains. As soon as the 
momentum runs out, those investors head for the exit, and with nobody willing to take 
their place, the market crashes, usually overshooting fundamental value on the downside. Just a 
return to the index level of 20 months ago, when valuations of some stocks were 
beginning to look reasonable, would be a drop of 78%.</p>
<p>Like avalanches and other non-linear phenomena, 
nobody can exactly predict when a bubble will burst. All they can do is look at 
the accumulating snow on the mountain, and decide that it is not a good time to 
go skiing. By staying indoors, they might miss out on 
some great skiing, but they can be certain of avoiding burial in an 
avalanche.</p>
<h3>The A-H Gap</h3>
<p>As some of China's more sophisticated investors 
look out of the chalet window at the rest of the world, one thing that must have 
become increasingly obvious to them is the discount on which shares of some 
companies trade in Hong Kong as &quot;H&quot; shares, relative to their A-share 
counterparts. &quot;One company, two share prices&quot; mirrors &quot;One country, two 
systems&quot;. Since the end of 2005 and up to 17-Aug-07, the H-share index had 
gained &quot;only&quot; 106% from 5,330 to 11,003, a pale imitation of the bubble over the 
border, where the SCI had gained 301% to 4,657 in the same period, outperforming 
the H-share index by about 95%.</p>
<p>Along the way, there has been increasing 
hand-wringing by bureaucrats in Hong Kong about the city's market being 
sidelined as companies naturally prefer to list where they can get the best 
price for their shares. For the same reason, mainland government-controlled 
companies listed in HK during the earlier &quot;red chip&quot; phase, when the companies 
were incorporated in HK, are now seeking to cash in on the mainland 
bubble by issuing shares there, although none has yet been approved by the CSRC.</p>
<h3>HK Government fails at home</h3>
<p>In our view, the concerns of HK bureaucrats 
are misplaced. Rather than looking for ways to spread the bubble from the 
mainland to HK, and seeking to prevent red-chips from listing in the mainland, they 
should allow the bubble to run its natural course and burst. Instead, they 
should be focussing on a backlog of legislative reform, such as 
statutory backing for our Listing Rules (<a target="_blank" href="PERLsubs.asp">under discussion</a> since the
<a target="_blank" href="/dbpub/subject.asp?c=140">Penny Stocks 
Incident</a> of 2002), scripless registration for our stocks (on the drawing board 
since the
<a target="_blank" href="http://www.fstb.gov.hk/fsb/ppr/report/doc/scefi-e.doc">
SCEFI report</a> in 1999), and class action rights for investors, to privatise and enhance the 
deterrent to abuse of minority shareholders. The HK Government has never even 
acknowledged the need for the latter, preferring to rely on a system that goes 
little further than name-and-shame, and leaving the courts inaccessible to 
investors individually, due to the prohibitive cost of a single action. Even if 
class actions were permitted, the current law leaves auditors 
with no duty of care to investors, and prospectus liability goes no further 
than those who subscribe in an IPO and still hold the stock, not secondary 
market purchasers.</p>
<p>HK authorities should, as we said a year ago, focus on 
<a target="_blank" href="valueproposition.asp">building a value proposition for 
HK</a> by upgrading HK's legislative and 
regulatory software for the future. When the bubble bursts, HK will, as part of 
the free world, continue to be open for business, and mainland companies will 
still come here to list, while the mainland will likely go into one of its 
paralytic phases of banning new IPOs and will likely launch a &quot;stabilisation fund&quot; to 
cushion the fall. So the bust will buy HK more time to get its act together. In 
the 4 years of mainland market disruption from its 2001 bubble down to the 
trough of 2005, HK did very little to build its competitive advantage.</p>
<h3>The &quot;through-train&quot;</h3>
<p>The yawning A-H price gap, as well as the 
increase pressure from foreign exchange inflows, may have been a 
catalyst for the premature
<a target="_blank" href="http://www.safe.gov.cn/model_safe_en/news_en/new_detail_en.jsp?ID=30100000000000000,156&type=&id=2">
announcement</a> on 20-Aug-07 by the State Administration of Foreign Exchange, 
under the mainland's central bank, of pilot plans to allow mainland individuals 
to convert their domestic savings into HKD and buy shares in HK via the Tianjin 
branch of Bank of China Ltd.</p>
<p>The HK market reacted euphorically, with the 
H-share index gaining 33.7% and the broader Hang Seng Index gaining 22.1% in the 
last 4 weeks, while the SCI gained 13.2%. Still, A-shares trade at an average 
65% premium to corresponding H-shares as of Friday 14-Sep-07. That's without a 
single share being bought under the so-called &quot;through-train&quot; scheme, which 
media reports say will not start until October at the earliest, more likely in 
2008. For now, the 
authorities have succeeded in talking up the HK market, partly by being vague 
about the scheme's details.</p>
<p>In our view, the HK market's reaction was wrong, 
because either:</p>
<blockquote>
	<p>1. the scheme is going to be very limited, 
	with operational barriers such as
	<a target="_blank" href="http://en.investteda.org/linvinginnorthernchina/BinhaiNewArea/default.htm">
	Tianjin Binhai</a> residency requirements or an inability to deal in 
	real-time, having little effect on HK-listed shares; OR</p>
	<p>2. the scheme is for real, in which case the 
	capital outflow will crash the mainland market and take HK down with it.</p>
</blockquote>
<p>The CSRC, responsible for the stability of the 
securities market, knows the consequences of scenario (2) and is not keen on the 
scheme. In Dalian, Chairman Shang Fulin described it as <i>&quot;a trial, an 
experiment&quot;</i>. When your own stocks are on 80-100x core earnings, and the rest 
of the world averaging 20x or less, the consequence of lifting outbound capital 
controls is obvious.</p>
<p>Those who say that Hong Kong prices will rise to 
meet China's prices have failed to appreciate that HK stocks are priced relative 
to the other investment opportunities for global capital, whereas China's stocks 
are priced relative to no other choices for mainlanders but real estate or cash. 
Even the recent run-up since the &quot;thru-train&quot; was announced is making some 
foreign investors nervous, as demonstrated by the block-sales last week of 
certain H-shares.</p>
<h3>HSI past draw-downs</h3>
<p>Whatever the eventual catalyst, when the mainland 
bubble bursts, it will certainly take the HK market down with it, since most of 
the market capitalisation is now either mainland stocks or stocks with a large 
component of mainland business. It would not be at all unreasonable to visit 
15,000 or even 12,000 again on the Hang Seng Index, despite the depreciation of 
the dollar and the time value of money since we were last at those levels. Here 
is a look at previous draw-downs (bold text indicates a then-record):</p>
<img class="center" alt="" src="../images/incred1.gif">
<p>Looking just at the last 6 major draw-downs since 
the HK$/US$ peg was introduced in 1983, the average is 47%, the smallest was 36% 
in 1984, and the largest was 60% from 1997 to 1998. So a mid-sized drawdown 
would take us back to 13,200. For sure, the market could stretch even higher 
from today, but it will be ugly when it corrects.</p>
<h3>Taiwan, 1990</h3>
<p>The mainland market today shares many of the 
characteristics of the Taiwan market in 1990, although the Taiwan market was of 
course much smaller. The market was young, speculative and underdeveloped, as 
Taiwan emerged from it's post-war period of martial law. The capital account was 
largely closed, with foreign investors first granted permission for fixed 
amounts of investment quota as Qualified Foreign Institutional Investors (QFII) 
in 1991. Market turnover in 1990 was 500% of market capitalisation. The Taiwan 
Stock-Weighted Index reached a high of 12,495 on 10-Feb-90, and then crashed 80% 
to a low of 2,560 that year. The two years before that also saw huge swings. 17 
years later, that 1990 record high still stands, with the index now at 9,032.</p>
<h3>Burst bubble will hit the banks</h3>
<p>When the mainland bubble bursts, it will 
accelerate the onset of the first post-IPO banking crisis. Before listing 3 of 
the big 4 mainland banks (BOC, ICBC and CCB), the Government injected some 
US$20bn each of fresh capital and transferred out the bad loans to special 
vehicles. That cleaned out the bad loans, but it didn't remove the bad lenders. 
With China only part-way through the transition from planned economy to market 
economy, the large old banks are still really just collections of thousands of 
smaller banks, with inadequate credit analysis, and with a large measure of 
policy-driven and corruption-driven lending. In the current bubble, many of the 
corporate loans are being diverted into the stock and property markets, and the 
collapse of the bubble will create loan-losses.</p>
<p>In the past, with the banks wholly-owned by 
government, bail-outs were relatively simple affairs, but next time, they will 
have to choose between renationalising the banks by injecting fresh equity, or 
diluting their control with outside equity, something which is an anathema to a 
control-obsessed state.</p>
<h3>The common market</h3>
<p>HK Government representatives have in recent days 
been in full spin mode, seeking (but failing) to justify its
<a target="_blank" href="interven2.asp">purchase</a> of a 5.9% stake in HKEx. 
They talk in
<a target="_blank" href="http://www.info.gov.hk/gia/general/200709/12/P200709120195.htm">
vague terms</a> about possible future co-operation with the mainland exchanges, 
cross-listings, share swaps, or full mergers. This is really stating the 
obvious. When mainland capital controls are fully abolished, and the RMB takes 
its place as an international, fully convertible currency, then China's 
exchanges will be competing on a level playing field, and it will then make 
sense (subject to any competition laws) for them to cross-list securities or 
merge at a corporate level. With full convertibility, the financial systems can 
be connected, and HKEx can trade and settle shares in RMB just as easily as HKD. However, we are still some years away from full 
abolition of capital controls, and that day may recede further when the bubble 
bursts.</p>
<p>While we wait for capital controls to be 
abolished, 
there have been calls from the Hong Kong Monetary Authority and the Government since Mar-06 for 
China Depository Receipts (CDRs) to be listed in the mainland representing 
HK-listed shares, and for Hong Kong Depository Receipts to be listed in HK 
representing mainland-listed shares.</p>
<p>This, on its own, would be largely cosmetic. Putting a wrapper around the shares would 
not change the pricing dynamics. The CDRs would still amount to A-shares, 
available only to mainlanders (and QFII investors) and traded in RMB, while the HDRs would still amount to H-shares, traded in HKD and available 
only to the rest of 
the world (and QDII investors). Unless there is freedom to move capital between 
the markets, the A-H price differentials that vary from time to time would be 
unaffected by the introduction of CDRs/HDRs, as they would trade in isolated 
pools.</p>
<h3>Arbitrage</h3>
<p>However, the most worrying aspect of the HK 
Government's calls is that the HKMA has been pushing to establish 
an &quot;A/H arbitrage&quot; mechanism (apart from the thru-train) in which an entity 
(let's call it &quot;ArbCo&quot;) jointly owned by the two central banks would have exclusivity 
to arbitrage by freely moving capital between the two markets. Joseph Yam hinted at this in his
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/viewpt/20060323e.htm">
column</a> of 23-Mar-06:</p>
<blockquote>
	<p>&quot;Before the relevant controls are dismantled 
	and the invisible hand can be relied upon, an arbitrage mechanism might be 
	needed to permit buying and selling in the two markets to achieve price 
	equalisation. Since foreign-exchange transactions would be involved, the 
	People's Bank of China and State Administration of Foreign Exchange might 
	have to play a role in this arbitrage mechanism.&quot;</p>
</blockquote>
<p>and
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/viewpt/20070201e.htm">
again</a> on 1-Feb-07:</p>
<blockquote>
	<p>&quot;<span lang="EN-GB">Another example is the 
	creation of derivative instruments in the form of, say, certificates of 
	ownership of shares listed on the Shanghai, Shenzhen and Hong Kong stock 
	exchanges, and have them traded in both markets with an arbitrage mechanism 
	to equalise prices.&quot;</span></p>
</blockquote>
<p>and this from
<a target="_blank" href="http://www.ft.com/cms/s/a2ff2bc4-1b1a-11dc-bc55-000b5df10621.html">
Donald Tsang in the FT</a> on 15-Jun-07:</p>
<blockquote>
	<p>&quot;There's no reason why through arbitrage 
	arrangements that shares, stocks listed in Shanghai cannot through some 
	financial instruments be traded in Hong Kong... Similarly I do not see why 
	Hong Kong stocks cannot be co-listed in the Shanghai stock market through an 
	arbitrage arrangement...</p>
	<p>All you need is cooperation between the 
	[HKMA] and the [PBOC]. And we are pals. We work together very closely 
	already so there is really not too much difficulty for doing the arbitrage 
	arrangement but this would be a big step for the mainland. They quite 
	rightly so have to be very cautious how it might impact on the mainland 
	market... I do not want to characterise [China's reaction] in any way but I'm 
	very enthusiastic..."</p>
</blockquote>
<p>How could this possibly work? Whenever there was a price differential in a 
dual-listed stock (or DR) between the two markets, ArbCo would buy from the cheaper market and sell to the more 
expensive. To settle those trades, there are two possible approaches, but as we 
will show, only one of them is viable:</p>
<ol>
	<li>
	<p>ArbCo would be allowed to transfer shares between the mainland 
and HK registers, converting A-shares to H-shares or vice versa, to deliver for 
	settlement of the sale; OR</p></li>
	<li>
	<p>ArbCo would buy shares in the long market and borrow shares to 
	sell short in the higher-priced market (currently, the A-share market).</p>
	</li>
</ol>
<p>However, the mainland 
does not allow short sales and does not have a well-developed stock-lending 
market, and even if it did, ArbCo would incur stock-borrowing costs, would have 
to post collateral, and could end up with huge short positions in one market, 
with correspondingly huge stakes and voting rights in the other side of the 
pair-trade. That's also very risky, because once they had borrowed every 
available share, there would be no further way to hedge the long position, and 
they would have to stop intervening in both markets, so the spread would widen 
again. If stock-lenders started to recall their loans, then ArbCo would have to 
buy back shares in a short-squeeze, pushing the price up, and unwind the other 
side of the hedge, pushing it down and incurring a loss. So option (2) is 
essentially unworkable, and we have to assume that option (1) is the intent, 
i.e. that ArbCo would have the exclusive right to move shares between the HK and 
mainland registers (or depositories) for settlement of offsetting trades, but would not hold any 
long or short positions in either market.</p>
<p>There are two possible approaches to the trading; 
we'll call the first one a &quot;clean arbitrage&quot; in which ArbCo seeks to eliminate 
price differences by bridging the two markets, simultaneously hitting equal and 
offsetting bids and offers in the two markets whenever the two cross over, and 
not seeking a profit. The second approach is a &quot;dirty arbitrage&quot;, in which ArbCo 
profits from its unique privileges by allowing a spread between the two markets, 
and only intervening to take advantage of that spread when it is at or above a 
pre-determined limit.</p>
<p>The dirty arbitrage would be similar to the way 
the HKMA runs its <a target="_blank" href="thickpeg.asp">thick peg</a> HKD/USD 
currency board, purportedly only intervening at the boundaries of 7.75 and 7.85 
(a 1.3% range) rather than running a clean peg at 7.80. The difference, however, 
between the currency board and the stock markets is that in the currency board, 
the HKMA can issue an infinite amount of HKD (at 7.75) to satisfy demand, 
because it is the issuer of the currency. In the stock market, you are dealing 
with a fixed amount of shares in each company, and that only changes if the 
company issues new shares (or buys back shares).</p>
<p>In either the clean or dirty arbitrage scenario 
(unless the target spread was very wide, say a 50% discount), mainland prices 
would plunge towards HK prices, which are determined in competition with 
investments in the rest of the world. ArbCo would sell in the mainland  
and buy in HK until prices were equalised (clean arbitrage) or 
reached the target spread (dirty arbitrage). In a clean arbitrage scenario, and 
with enough companies in the program, that would crash the mainland bubble. In a dirty arbitrage scenario, there would remain 
an imbalance between demand in the mainland and HK, reflected by the 
differential pricing, and this could draw shares off the HK register and onto 
the mainland register, gradually delisting the shares from HK. If this reached 
its extreme, liquidity in the HK stock would dry up, and there would be nothing 
left to arbitrage until mainland prices fell enough to be attractive to overseas investors 
again.</p>
<p>In either scenario, as more and more companies 
were dual-listed (whether in share form or depository receipt form, it makes no 
difference) this would amount to the gradual abolition of capital controls, as 
mainlanders would be able to use their RMB to buy shares in foreign companies on 
the mainland register, and ArbCo would funnel the foreign exchange out through 
the conduit as shares came in. By proposing an arbitrage system, the HKMA is, in effect, 
calling for a gradual abolition of capital controls.</p>
<p>We can see no good reason for giving the HKMA/PBOC 
a monopoly on the relaxation of capital controls. It is surely not in HK's 
interest to allow mainland companies to be delisted from HK by 
converting H-shares and red-chips into A-shares through a dirty arbitrage conduit, and it 
is not in China's interest to trigger a precipitous collapse of its bubble 
through a clean arbitrage conduit.</p>
<p>Given the precarious state of the mainland 
bubble, they have simply left it too late to open the capital floodgates without 
triggering a crash. This is something they could have more safely done in 
mid-2005, but it is not a realistic option today, any more than a full-blown 
thru-train is.</p>
<h3>Socio-political risk and reform</h3>
<p>The most unpredictable aspect of all this is how 
the Chinese public will react to the eventual bursting of the bubble. Cosseted in a 
state-controlled balm of soothing media, with assurances that the markets are 
<i>&quot;healthy&quot;</i> and that there are <i>&quot;no major bubbles&quot;</i>, the revelation that stock 
markets are not centrally-planned and state-directed, and the loss of substantial chunks of life 
savings, is going to be a huge shock. At a dinner in Dalian, we were joined by 
postgraduate students from Tsinghua University, the cream of China. We asked one 
of them, pursuing a PhD in economics, whether he invested in the stock market. 
&quot;Oh yes&quot;, he said. &quot;And what about your classmates?&quot; we asked 
him. &quot;Well, last year, 
I was the only one, but now all of them are doing it.&quot;</p>
<p>The rising prosperity of China's urban masses 
under economic reforms, together with the State's iron grip on the media and 
oppression of free speech, has kept the population largely content with the 
Government's leadership, but it comes at a cost, because efficient and free 
markets depend on information flow. The near-absence of public debate on the 
market risks, and the complacent propaganda in the media, have allowed the bubble to grow 
larger than it otherwise would, sucking in more people with more of their money. 
The collapse will leave a lot of people questioning that system, and that could 
in the end be the silver lining, leading to greater freedom of speech and the media, 
greater governmental accountability, and ultimately political reform.</p>
<p class="center"><b><a target="_blank" href="../vote/result.asp?p=19">China Bubble poll results</a></b></p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21194">World Economic Forum</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2191">Tsang, Donald Yam Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2192">Yam, Joseph Chi Kwong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=145">Government policy - general</a></li>
				
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