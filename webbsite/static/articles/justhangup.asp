
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

<script type="text/javascript">document.title="Screening Our Calls";</script>

	<div class="summary">In this in-depth article, with an accompanying analysis of Pacific Century CyberWorks' hectic sequence of equity fundings and portfolio of acquisitions, we give our latest valuation. To the London board of Cable & Wireless we say: if PCCW is offering you paper, don't pick up the phone.</div>

<h2 class="center">Screening Our Calls<br>
<span class="headlinedate">15 February 2000</span></h2>
<p>Pacific Century CyberWorks (<b>PCCW</b>) has made an audacious
approach to <a href="http://www.cwplc.com/" target="_blank">Cable &amp; Wireless
plc</a>, proposing a merger with its HK-listed subsidiary <a href="http://www.cwhkt.com/" target="_blank">Cable
&amp; Wireless HKT</a>. Any transaction would likely involve the issue of vast
amounts of over-valued shares in PCCW, either in exchange or to fund the
acquisition. How over-valued? Read this article to find out. We've gathered all
the information on PCCW's nine months of hectic existence and presented it on
this site. NOW that's what we call content! </p>

<p>PCCW has yet to publish any full-year results since it was taken
over by Richard Li's <a href="http://www.pcg-group.com/" target="_blank">Pacific
Century Group</a>, but <i>Webb-site.com</i> has pieced together the hyper-active
company's transactions since the takeover, and you can read our detailed
description of PCCW's investment portfolio by clicking <a href="pccwportfolio.asp">here</a>. </p>

<h3>How much cash do they have?</h3>

<p>Since May last year, PCCW has conducted 5 placings (including
yesterday's) and raised a total of <b>US$2,377m</b> net of expenses. A summary
of these transactions can be found <a href="pccwfunding.asp">here</a>. Of the
announced investments made by the company, in some cases the consideration has
not been disclosed. We can assume these are relatively minor, perhaps absorbing
up to US$100m. Investments with disclosed cash investments total US$273m, so we
estimate that the company has spent a total of <b>US$373m</b> on investments. </p>

<p>In addition, various share swaps for acquisitions and
investments have been conducted, of which by far the largest in dollar terms was
the swap with CMGI, a Nasdaq-listed internet company. </p>

<p>So PCCW probably has a cash pile of about US$2bn. However, in
its various placing announcements, US$378m was earmarked for its CMGI Asia joint
venture, and US$289m to develop the broadband satellite venture, Pacific
Convergence Corp. So take that away and the company has about <b>US$1.3bn</b> of
uncommitted cash. We are assuming here that spending on the Cyber-port
construction to date has been minimal and is covered by rental and sales of the
company's office property in Beijing. </p>

<p>At the current market price, C&amp;W HKT is valued at US$38bn,
so US$1.3bn would barely scratch the surface - they could buy 3.4% with that.
PCCW's net assets, which we evaluate below, consist of a Beijing Property and a
collection of mostly over-valued zero-dividend internet investments. So there is
relatively little cashflow or asset base against which to secure loans. Hence
only a reckless banker is going to lend them the cash to make the bid alone. </p>

<p>That means that any major involvement in a merger or even an
acquisition consortium would probably involve the further issue of PCCW shares.
The only other alternatives would be to reach agreements to pre-sell or demerge
the businesses of C&amp;W HKT to reduce the size of the target, or to use issue
junk bonds. </p>

<h3>How big is PCCW really?</h3>

<p>When PCCW acquired 60% of Pacific Convergence Corp (<b>PCC</b>)
from Richard Li's private company, it granted an option to Intel to sell it the
other 40% of PCC in exchange for 1,003m shares of PCCW. If the option is not
exercised within 10 years then PCCW can require it to be exercised, so it is
effectively a forward sale of the stake and we can assume that it will be
exercised by one party or the other. </p>

<p>In May-99, in part consideration for the reversal of PCG's
Beijing property into PCCW, the latter issued convertible bonds with a face
value of HK$960m which convert at $0.31 per share and are therefore almost
certain to convert before expiry, since they are now worth 85 times more as
marketable shares than they are as bonds. Some of them have already converted,
and we will assume that all do. </p>

<p>Taking into account the shares to be issued when the Intel
Option converts, together with the shares from the outstanding convertible
bonds, there will be about 13.5bn shares in issue. There are also an undisclosed
number of executive share options outstanding, so we will ignore these. </p>

<p>Today's closing price of HK$26.35 then values PCCW at about
HK$356bn (<b>US$45.6bn</b>). Investment bank analysts have been competing with
ever higher estimates of value. Merrill Lynch in January put a price of HK$25
per share on the stock, only to be out-done by Lehman in February at HK$35
(which values PCCW at US$61bn on a fully diluted basis). </p>

<h3>What are the net assets?</h3>

<p>After PCCW's acquisition of PCC it had pro forma net assets of
HK$2,290m (US$294m), but assuming conversion of the outstanding convertible
bonds, this increases the net asset value to HK$3,250m (<b>US$418m</b>). </p>

<p>Since then, there have been 4 placings which raised HK$17,776m (<b>US$2,285m</b>)
of net cash proceeds. </p>

<p>PCCW's controlling shareholder, Richard Li, was recently quoted
in Jan-00 as saying that stated that PCCW had seen paper gains of some US$1.3bn
on its investment portfolio so far. However, that comes mostly from investments
in other internet bubble stocks. </p>

<p>For example, when Japanese cellphone retailer Hikari Tsushin
took over HK-listed battery maker <a href="http://www.goldenpower.com/" target="_blank">Golden
Power</a>, PCCW also took a 20% stake at the same time. It subscribed 233.4m
Golden Power shares at HK$0.90 per share, and the shares are now trading at
$18.55, giving a paper profit of $4,120m (US$529m). This is despite the fact
that Golden Power has yet to demonstrate any internet strategy. </p>

<p>PCCW has about 8.12m shares in CMGI which have almost tripled in
value since the September deal, and are now worth about US$937m (unless it has
sold any) based on the market price of US$115.5. That gives a book profit of
US$587m. So the Golden Power and CMGI stakes together account for an unrealised
gain of about US$1,116m. </p>

<p>If we take the company's figure of US$1.3bn of gains, plus
US$350m for the CMGI share swap, then this adds about <b>US$1,650m</b> to the
asset value. We are ignoring any discount (which in some cases could be substantial)
if the company attempts to liquidate the holdings. </p>

<p>So with the placings, the gains in the investment portfolio and
the CMGI share swap, the pro forma net assets of PCCW are about US$4.35bn
(HK$33.8bn). To this we add our <a href="cybervillas.asp">previous estimate</a>
of the future profits from the Cyber-port property development of HK$9.3bn
(US$1.2bn), bringing the total value to HK$43.1bn (<b>US$5.54bn</b>), or around
HK$3.20 per share. Next, we have to evaluate Pacific Century Convergence Corp. </p>

<h3>Pie in the sky</h3>

<p>A lot of the hype surrounding PCCW relates to its planned
broadband satellite network to be operated by its subsidiary Pacific Convergence
Corp (<b>PCC</b>) covering &quot;110m Asian cable households in 63
countries&quot; under the leased satellite footprint. Let's put that in
perspective. </p>

<p>PCC is still very much under development. PCC started as a 60:40
joint venture between Richard Li's private company (PCG) and Intel. According to
the accountant's report issued when PCCW acquired PCC, the combined capital
injection of the two shareholders into PCC by Jun-99 was only US$16.2m. Much
expenditure, risk and development lies ahead of it. We'll describe some of the
key risks here. </p>

<h4>Regulatory hurdles</h4>
<p>It is still difficult for foreign companies (and that includes
HK companies) to do business in the telecommunications sector of many Asian
countries, including mainland China. It will remain difficult for some time.
Would-be operators who skirt the ownership restrictions in various countries by
entering into &quot;consultancy&quot;&nbsp; arrangements, even with government
controlled entities, run the risk of the government changing its mind when it
suits its purpose and canceling contracts.</p>
<p>For example, this happened with China Unicom's so-called CCF
(China-China-Foreign) joint ventures to operate cellphone networks. Foreign
partners formed local joint ventures which in turn provided services to China
Unicom. The foreigners committed capital and resources, took operational risks
and were then told, as business was booming, that their contracts were illegal
and void. China has basically taken the BOT (Build-Operate-Transfer) model and
turned it into the BOC (Build-Operate-Confiscate) model.</p>
<p>WTO and the continuing progress of international deregulation
will gradually reduce this problem across the Asia region, but it will take
time. And with deregulation comes competition.</p>
<h4>Competition</h4>
<p>PCCW will not have the Asian broadband market to itself. Even
before foreign-investment deregulation, domestic telecoms operators are already
competing on their home turf to provide broadband connections between each
country's major cities. And in cities, fixed line telecom operators (through DSL
lines) and wireless local-loop providers will compete with cable TV companies to
provide broadband access.&nbsp;</p>
<p>Similarly, the know-how for converting cable TV networks to
2-way broadband networks is no secret and there will be plenty of companies
seeking to work on these installations. A cable TV operator in an Asian town
will be able to contract-out a suitable solution. The companies who make the
hardware, will be the value-adders in this process.</p>
<p>When that cable TV operator seeks to connect his new 2-way
network to the internet, there will be multiple choices from both fibre optic
and satellite networks. These capacity providers will largely compete on price
to provide data capacity, the same way airlines and shipping companies compete
for traffic. Shifting binary data from A to B (or B to C) is not the kind of
product that gives much scope for differentiation. So competition to provide a
utilitarian product will attract utility rates of investment returns - low and
unexciting.</p>
<p>As an aside, if you think international call costs have hit
bottom, think again. Costs are coming down so fast that in the next few years,
companies will begin to offer unlimited international voice calls (to major
destinations, not Antarctica) on a per-line basis for a fixed monthly fee.</p>
<p>But what about that 110m customer base? Well remember that the
subscriber's main relationship is with the cable TV company, not the firm that
provides the bandwidth to the internet. If the cable TV company gets a better
offer to provide bandwidth between its network and the internet, then it is
likely to take it. Once this competition develops, contracts to provide that
bandwidth are likely to be fairly short. So don't expect PCC to wind up with
110m customers. Think of their customers as cable TV companies, which will be
numbered in the thousands. The question then is how much will a cable TV company
pay for the bandwidth and separately, for any content that PCC might own.</p>
<p>The real winners in the communications game are the content
providers.</p>
<h4>Content</h4>
<p>When you decide to watch a movie on TV, you are not really that
concerned about whether it comes to you by terrestrial TV, cable or satellite.
Your choice of channel is mainly determined by what you want to see and when it
is showing. That is, you want the content. Bandwidth is a commodity, but content
is unique. The whole beauty of the internet is that it brings content to people.
Once cable TV companies provide internet connectivity, their customers will be
concerned about what content that brings them.</p>
<p>Here, PCCW has made a start in licensing content from groups
such as IMG (the sports marketing people) for its proposed channel &quot;Network
of the World&quot;. But the key word here is <i>licensing</i> - they don't own
it. PCCW is way behind people like Newscorp with its Fox Studios and newspapers,
or Time Warner with all its magazines, record labels and Warner Brothers
studios. And remember that a key aspect of the internet is that it gives content
providers direct reach to end-users. For example, PCCW's content provider IMG
already has an on-line presence at <a href="http://www.sports.com/">Sports.com</a>,
accessible from anywhere on the internet. Another example of direct content
provision is <i>Webb-site.com</i>. You will not pay your ISP much of a premium
to reach this site when it is available throughout the web.</p>
<p>As the market develops, content will be king. To acquire serious
content providers takes serious money (or vendors who are willing to accept
over-valued shares). PCCW has barely started to do this, and you cannot value
what you do not have.</p>
<h4>Valuation</h4>
<p>Let's assume that end users are willing, in the very long run,
to pay an extra US$10-20 per month for broadband access to the internet from
their local cable provider. In poorer parts of Asia, traditional cable TV tends
to come very cheaply, so this cost will be a lot to absorb.</p>
<p>Then assume that this commodity service has an operating profit
margin of 10%, split 50:50 between cable TV companies and their broadband
connection provider. That leaves us with profits of US$0.50-1.00 per month, or
US$6-12 per year. Apply a profit multiple of around 10x to that, and you have a
value of US$60-120 per end-user. Next, suppose that of the 110m homes on cable
TV, the broadband market leader (which may or may not be PCC) gets 10% of them
to use its cable-based system, as opposed to other access methods such as DSL or
wireless. So we might be taking about 11m end-users worth US$60-120 each to the
broadband provider, or a US$0.66-1.32bn of valuation.</p>
<p>Given all the above risks, but allowing for at least some
possibility of success on a major scale, for a company which has barely let the
ink dry on its business plan, we would have trouble attaching a valuation of
more than US$2bn to PCC in its present state.</p>

<h3>Value per share</h3>

<p>So take our estimated net assets (including investment gains and
future Cyber-port profits) of US$5.54bn, and add a maximum of US$2bn for PCC.
That gives you a valuation of US$7.5bn (HK$58bn) or around <b>HK$4.30</b> per
share on a fully diluted basis. That implies that PCCW, on a market price of
$26.35, is currently over-valued by a factor of around 6x. </p>

<h3>A word on Equity Spirals</h3>

<p>Hong Kong has been hit by repeated epidemics of investor mania
and never seems to learn. We had red chips in 1993 and again in 1997, and now we
have internet stock mania, jet-fresh from the USA. </p>

<p>PCCW&nbsp; has indeed been able to &quot;create value&quot; for
early-round investors by sucking in later investors or company vendors at higher
prices per share. That is how what we call &quot;equity spirals&quot; work. </p>

<p>We don't blame PCCW or other companies for using an over-valued
share price to raise cash and make acquisitions - when your shares are
over-valued, it is the rational thing to do&nbsp; and a lot of companies are
doing the same thing. We certainly would. But when the last willing investor has
bought in, and the last willing vendor has accepted the paper, then suddenly the
Emperor's clothes will seem as transparent as the day he was born. </p>

<p>In this sense, equity spirals are little different from what
bankers call &quot;Ponzi schemes&quot; which promise artificially high-interest
returns and fulfill this promise to early depositors by paying them off with
later depositors' money, until the number of withdrawals becomes impossible to
meet from fresh deposits. The same mechanism is at work in the internet stock
bubble. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=375">CABLE & WIRELESS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=368">PCCW-HKT Limited</a></li>
				
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