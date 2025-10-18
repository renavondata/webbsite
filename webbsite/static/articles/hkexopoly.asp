
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

<script type="text/javascript">document.title="Arculli's rant against competition for HKEx";</script>

	<div class="summary">The HKEx Chairman has apparently launched a campaign to exempt it from the Competition law currently going through LegCo. We dissect his factually flawed and technophobic arguments. Investors in HKEx should not expect its monopolistic profit margin to continue forever. Let the competition begin.</div>

<h2 class="center">Arculli's rant against competition for HKEx<br>
<span class="headlinedate">29 July 2010</span></h2>
<p>Last week <a href="../dbpub/positions.asp?p=675">Ronald Arculli</a>, government-appointed director and Chairman of
<a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388), the owner of HK's monopoly stock and futures 
exchanges, gave a
<a href="http://www.hkex.com.hk/eng/newsconsul/speech/2010/sp100721.htm" target="_blank">
speech in Shanghai</a> titled &quot;The Role of Exchanges in the New Economic Order&quot;. 
It was a thinly-disguised and factually flawed rant against the competition that 
investors in less-protected 
markets enjoy from competing exchanges and alternative trading systems. It is a competition which 
results in narrower bid-offer spreads and lower transaction costs than in HK, 
where HKEx booked a pre-tax profit of 78.8% of its total revenue in 2009. If that 
isn't a monopolistic profit margin, then we don't know what is.</p>
<p>To many, the speech may have seemed like just another of the dozens of speeches that 
HKEx officials give annually, but if you read between the lines and put it in 
context, this is probably the opening shot in a campaign to get HKEx exempted 
from the
<a href="http://www.gld.gov.hk/egazette/pdf/20101426/es32010142618.pdf" target="_blank">
Competition Bill</a> which was gazetted on 2-Jul-2010. This seems more likely 
given that Mr Arculli's law firm, Arculli Fong &amp; Ng (now known as King &amp; Wood) 
was
<a href="http://www.info.gov.hk/gia/general/200706/05/P200706050200.htm" target="_blank">
appointed</a> by the Government as a consultant on the design of the competition 
law. Ironically, Mr Arculli also chaired HK's gambling monopoly, the Hong Kong 
Jockey Club, from 2002 to 2006. He's also a member of HK's cabinet, the 
Executive Council, so his comments never stray far from Government policy.</p>
<p>HKEx and the Government may be planning to claim that 
HKEx should be exempt from the law because it provides &quot;services of general 
economic interest&quot; (Schedule 1, paragraph 3 of the Bill). We see no 
justification for exempting HKEx. It is such a visible part of our economy, and 
competing trading systems are so common elsewhere in the world, that any attempt 
to exempt HKEx from competition would make an international mockery of the 
proposed law. <strong>Investors in HKEx should factor the likely introduction of 
competition into their valuation of the stock, which currently trades at 29 
times last year's earnings. Don't expect those profit margins to last forever.</strong></p>
<h3>Background</h3>
<p>HKEx owns HK's only stock exchange, HK's only futures exchange (for now), and 
HK's only clearing house for stock transactions, Hong Kong Securities Clearing 
Co Ltd (<strong>HKSCC</strong>). In fact, only one of these is a legally 
protected or <em>de jure</em> monopoly, namely The Stock Exchange of Hong Kong 
Ltd (<strong>SEHK</strong>). After a competition law is passed, there will be 
pressure to repeal that protection. The others are <em>de facto</em> monopolies, 
but any anti-competitive practices, such as restricting access to the clearing 
house from competing clearing houses, would be subject to the Competition law. 
This issue of interchange is similar to the network access provided to competing 
telecom companies.</p>
<p>SEHK's statutory monopoly over stock markets is subtly embedded in a 
series of definitions in the 
<a href="http://www.legislation.gov.hk/blis_ind.nsf/WebView?OpenAgent&amp;vwpg=CurAllEngDoc*568*458*568.1#568.1" target="_blank">Securities and Futures Ordinance</a> (<strong>SFO</strong>) 
which go along the lines of &quot;there shall be only one god, and the god is SEHK&quot;. 
The law goes like this:</p>
<blockquote>
	<p><strong>Definitions:</strong></p>
	<p>&quot;Stock Exchange Company&quot;: The Stock Exchange of Hong Kong Limited [SEHK].</p>
	<p>&quot;relevant recognized exchange controller&quot;: a recognized 
	exchange controller which is a controller of the Stock Exchange Company. [This 
	can only mean HKEx.]</p>
	<p>&quot;stock market&quot;: a place where persons regularly meet together 
	to negotiate sale and purchases of securities (including prices) or a place at 
	which facilities are provided for bringing together sellers and purchasers of 
	securities...&quot;</p>
	<p><strong>Section:</strong></p>
	<p>19(1): No person shall -</p>
	<blockquote>
	<p>(a) operate a stock market unless the person is:</p>
		<blockquote>
			<p>(i) the Stock Exchange Company [SEHK]</p>
			<p>(ii) a recognized exchange company of which a relevant 
			recognized exchange controller [HKEx] is a controller; or</p>
			<p>(iii) a relevant recognized exchange controller [HKEx] which 
			is itself a recognized exchange company&quot;</p>
		</blockquote>
	</blockquote>
</blockquote>
<p>Despite this, the law does provide for &quot;Automated Trading Systems&quot; which 
provide virtually the same functions as a stock market, but the SFC's convenient 
interpretation of this provision is that an ATS becomes a stock market if it 
opens its services to the general public (via brokers). In
<a href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H198" target="_blank">
Guidelines for the Regulation of Automated Trading Services</a>, it says in 
paragraphs 8, 43 and 66 that there may be &quot;circumstances&quot; in which the 
operations of an ATS may fall within the definition of a &quot;stock market&quot;. It 
doesn't actually spell out what those &quot;circumstances&quot; are, but by looking at the
<a href="http://www.sfc.hk/sfc/html/EN/intermediaries/trading/trading/trading.html" target="_blank">
approved list</a> of ATSs, and the conditions applying to them, it is clear that 
they are all prohibited by the SFC from allowing retail investors to deal 
through them, except for recognised overseas stock exchanges. Bloomberg Tradebook, for example,
<a href="http://www.sfc.hk/sfc/doc/EN/intermediaries/trading/trading/conditions%20_bthk_20061001.pdf" target="_blank">
is limited</a> to &quot;professional investors&quot; and excludes individuals or their 
wholly-owned companies.</p>
<p>HKEx has until now been relatively sanguine about ATSs, because 
they have only a small (low single-digit) share of trades in HK stocks, and 
because these trades are all reported to SEHK and cleared through CCASS (Central 
Clearing and Automated Settlement System) operated by HKSCC. So HKEx gets its 
fees either way, whether the trades are matched in an ATS or on SEHK.</p>
<p>However, under a competition law with a level playing field, ATSs 
certainly wouldn't have to pay trading fees to HKEx for a trade it didn't do. 
These ATSs might prefer to arrange their own clearing and settlement and cut 
costs. To do that, their clearing system would need an interconnection with 
CCASS, because that is where the vast majority of publicly-owned shares are 
held, registered in the name of HK's <em>de facto</em> monopoly central 
depository, HKSCC Nominees Ltd. You cannot trade a share on HKEx unless it is 
deposited into CCASS for settlement.</p>
<p>The Government, while introducing a competition law, also has
<a href="interven2.asp">put itself</a> into a conflict of interests 
by owning 5.9% of HKEx. On the one hand, the value of its shareholding, 
around HK$8bn, depends on HKEx maintaining its monopolistic profit margins, 
while 
on the other hand, the Government is supposed to be favouring competition.</p>
<h3>The Chairman's speech</h3>
<p>The arguments Mr Arculli raised against competition were in many instances false and deceptive, and we 
itemise them below in order to dismiss them. Let's start with a criticism of 
Alternative Trading Systems:</p>
<blockquote>&quot;the fair price discovery process is impeded because a portion 
of demand and supply for a stock is effectively concealed.&quot;</blockquote>
<p>This really is baseless when you consider that whether on an exchange or an 
ATS, a large buyer or seller is unlikely to display is full appetite to buy or 
sell a stock. He would more likely slice up his order and issue it gradually, 
possibly placing opposing orders in the opposite queue in order to disguise his 
overall intent. Secondly, this is a symmetric situation - there is just as 
likely to be latent demand as there is to be latent supply. If some large investors 
find it more efficient to meet anonymously in an ATS, avoiding the risk of leaking their 
intentions to brokers who might engage in proprietary trading or even front-running, 
and avoiding any display of orders, then matching these orders is arguably less likely to disturb the market price, which 
is why some large investors prefer to deal that way.</p>
<p>In reality, we suspect that a lot of institutions are deluding themselves if 
they think that dark pools, as a trading system, reduce the amount of &quot;market 
impact&quot; their transactions have. That's because a seller can only sell at the 
mid-market price (half way between the best bid and offer) if there are sufficient buyers who are willing to do the same. 
Otherwise, the orders will not be filled until they lower their offer, resulting 
in market impact. The same logic applies for buy orders. Thus, the only likely 
advantages of ATSs, whether dark or lit, is if they reduce the amount of 
information leakage caused by humans in the chain and avoid conflicts of 
interests by brokers with proprietary trading desks, and if they charge less for 
execution. That's the real attraction 
of ATSs.</p>
<p>If HK's law were amended to allow fair competition between SEHK and other 
trading systems, effectively an open market for exchanges, then it would make 
sense to follow the US approach, which has the &quot;National Market System&quot; governed 
by <a href="http://www.sec.gov/rules/final/34-51808.pdf" target="_blank">SEC Regulation 
NMS</a> and the <a href="http://www.nyxdata.com/cta" target="_blank">
Consolidated Tape Association</a> which produces real-time transaction data on 
the Consolidated Tape System and quotation data on the Consolidated Quotation 
System (<strong>CQS</strong>). These unify the quotes and transactions from 
competing exchanges, and also from certain types of ATS.</p>
<p>In the USA, many brokers have smart order-routing systems which capture the 
best quotes from competing systems. In effect, this unifies the pools of bids 
and offers. The CQS doesn't cover all ATSs, because some work on the basis of 
being &quot;dark&quot; to their participants, so no bids or offers are displayed, and 
investors just input their bids and offers in hope of a match. These &quot;dark 
pools&quot;, however, accounted for only about 7.2% of US volume in 2009 Q2, 
according to the SEC. In other 
words, the vast majority of ATS trading is in &quot;lit pools&quot;. Under 
<a href="http://content.lawyerlinks.com/default.htm#http://content.lawyerlinks.com/sec/sec_rules/17cfr242_300_000.htm" target="_blank">SEC Regulation ATS</a>, an 
ATS with 5% or more of the total trading volume in a stock is required to display their 
best-priced orders in the CQS. On 21-Oct-2009, the SEC
<a href="http://www.sec.gov/news/press/2009/2009-223-fs.htm" target="_blank">
proposed</a> reducing the trigger for reporting quotes to the CQS from 5% to 0.25%, and also removed a loophole in which some ATSs had been 
disguising quotes as &quot;actionable indications of interest&quot; and sending 
them to each other, effectively unifying dark pools into a larger pool.</p>
<h4>Trading spreads</h4>
<p>If ATSs result in some investors getting closer to the mid-market price or 
paying lower fees than is achievable on an incumbent exchange, 
then it is up to that exchange to innovate to improve the attractiveness of its 
service. The London Stock Exchange launched its own dark pool project, called 
Baikal, and on 21-Dec-2009, it
<a href="http://www.londonstockexchange.com/exchange/prices-and-news/news/market-news/market-news-detail.html?announcementId=10318163" target="_blank">
announced</a> a merger of Baikal with
<a href="http://www.tradeturquoise.com/" target="_blank">Turquoise Trading Ltd</a>, 
an ATS founded by banks. In a competitive environment, former monopolies are 
compelled to innovate or lose. Turquoise
<a href="http://www.londonstockexchangegroup.com/newsroom/2010pressreleases/q1imsfy2011.htm" target="_blank">
accounted</a> for 5.4% of UK equities trading in Jun-2010. Similarly, NYSE 
Euronext operates <a href="http://www.tradeonsmartpool.com/" target="_blank">
SmartPool</a>, a dark pool jointly owned with HSBC, J.P. Morgan and BNP Paribas.</p>
<p>Long-time readers of Webb-site will remember how the government-controlled HKEx has
<a href="../dbpub/subject.asp?c=122">resisted</a> the reduction of minimum 
bid-offer spreads, pressured into a U-turn by small brokers who have 13 votes in 
the Election Committee for HK's Chief Executive, and their own representative in 
the Legislative Council. To this day, if you want to improve the best bid on a 
stock at $0.50, you'll have to pay 2% more, at $0.51. At the time of writing, 
some 822 out of 1357 listed stocks are priced below $2.00 (<a href="../dbpub/mcap.asp?sort=prcdn">here's 
a list</a> sorted by stock price), meaning that the minimum spread on these 
stocks ranges from 0.5% to 2.0% (or even more, for a few stocks below $0.05). 
It's ridiculous. Competition would surely force that to change, improving 
service to investors.</p>
<h4>Flash crash</h4>
<p>Mr Arculli points to the &quot;<a href="http://en.wikipedia.org/wiki/May_6,_2010_Flash_Crash" target="_blank">flash crash</a>&quot; of 6-May-2010 in the US, in which 
prices briefly plunged and then bounced back and says that:</p>
<blockquote>&nbsp;&quot;newer trading methods could result in higher highs and 
lower lows: greater volatility and with more frequency&quot;.</blockquote>
<p>He implies that the flash crash was caused by the existence of 
competing trading venues. There is no evidence of that. Whether a market has a 
monopoly exchange or competing exchanges, it will always be possible (in the 
absence of trading curbs) to drive down the quote by hitting all the bids and 
then lowering the offer until buyers step in to welcome the free lunch. </p>
<p>Mr Arculli is not alone in promoting this misconception - in a speech at the 
HK Securities Institute on 8-Jul-2010, SFC CEO Martin Wheatley said that 
competing trading systems cause &quot;huge problems&quot; and have &quot;very negative 
impacts&quot;, and bemoaned the fact that more than 2 months after the US flash 
crash, there has been no explanation. Both of them should look closer to home: 
HKEx has had its own &quot;<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/090309news.htm" target="_blank">flash 
crash</a>&quot; in the shares of HSBC on 9-Mar-2009, when the stock plunged 12.5% in the final 5 minutes of trading, then bounced 
back 13.9% the next day. The SFC
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=09PR25" target="_blank">
commenced</a> an investigation, but there has been no public result, not 2 
months later, not even 17 months later.</p>
<h4>Corporate governance</h4>
<p>Grasping at another straw, Mr Arculli says:</p>
<blockquote>&quot;Arguably, when shares are held only for fractions of a 
second, it is no longer about participating in the ownership of a company or 
ensuring it is well run. The opaqueness of trading, and its fragmentation have 
negative implications for effective corporate governance&quot;</blockquote>
<p>That's nonsense. If high-frequency traders don't hold stocks for long, then 
they collectively won't hold much stock whenever a shareholder vote takes place, 
so it will have no material impact on shareholder governance of companies. 
Indeed, a lot of high-frequency traders aim to be &quot;market neutral&quot;&nbsp; and to 
clear their books by the end of each day. If they hold no shares when the music 
stops, then they have no voting rights. As for &quot;fragmentation&quot;, we hardly need 
to say that it doesn't matter which platform you buy your shares on, they still 
have the same voting rights, so fragmentation of trading is irrelevant to 
corporate governance.</p>
<p>Mr Arculli's new-found interest in corporate governance is touching, but way 
off target. He should focus instead on urging tycoons to support
<a href="../dbpub/subject.asp?c=177">quarterly reporting</a> and cutting the
<a href="../dbpub/subject.asp?c=173">general mandate</a>, and cease efforts to 
weaken governance at HKEx as he <a href="HKExresult2010.asp">tried 
earlier this year</a> with majority signature proposals for board decisions. 
Thankfully HKEx shareholders voted him down on that one.</p>
<h4>Listing regulation</h4>
<p>Mr Arculli then embarks on a soliloquy:</p>
<blockquote>&quot;Furthermore alternative trading platforms do not regulate 
securities issuers.<span>&nbsp; </span>In a sense, investors in these venues have to 
adopt a 'caveat emptor' or buyer-beware approach. Meanwhile, on the flip side, 
the standards that traditional exchanges maintain, and are indeed required to 
have, remain high. We must then ask: <span>why are some share trading venues not 
subject to the same rules and requirements as others? And what is the regulatory 
objective&nbsp;- to protect investors, ensure fairness, or to simply promote 
competition? Or should competition override investors' interests or fairness?&quot;</span></blockquote>
<p>Here, he is conflating the role of exchanges with the role of listing 
regulators. Webb-site has long advocated that the regulation of issuers be 
removed from HKEx, which as a for-profit regulator has a conflict of interest, 
and transferred to the statutory regulator, the SFC. HKEx has been clinging on 
to that role since 2003 when it <a href="hkexpublic.asp">opposed</a> 
the recommendations of the government-appointed Expert Group to transfer 
regulation to the SFC. There is no reason why HKEx, or any trading system, needs 
to be a listing regulator, so it is a red herring to suggest that ATSs don't 
regulated listed companies - they shouldn't. Exchanges and ATSs simply trade 
existing stocks which are listed by the regulator. By the way, in case you might think that 
listing regulation is a burden on HKEx, on which ATSs might get a &quot;free ride&quot;, 
think again - HKEx pulled in HK$728m in listing fees and made $381m of profit 
before tax on its regulatory business in 2009.</p>
<h4>Capital raising</h4>
<p>Then another misleading statement:</p>
<blockquote>&quot;Another advantage traditional exchanges have is the 
capability to help companies raise capital in a cost-effective manner. The new 
trading platforms have yet to be able to gain traction in this area&quot;</blockquote>
<p>That is based on a false premise. Exchanges don't &quot;help companies raise capital&quot;, they simply allow 
buyers and sellers to trade shares after they have been issued. When a company 
conducts an IPO, it does so with consent of the listing regulator after a 
prospectus has been authorised for publication. In the US, 
that regulator is the SEC. In HK, it is HKEx and the SFC under a mangled 
&quot;dual-filing system&quot; - we have two air-traffic controllers for one airspace. But 
HKEx performs this function as a regulator, not as an exchange. 
The exchange does not conduct the IPO - the issuer with its sponsors, book-runners and receiving 
banks does. When trading commences, that is when exchanges, and ATSs, perform 
their function.</p>
<h4>Clearing and settlement</h4>
<p>Mr Arculli says:</p>
<blockquote>&quot;For the system as a whole, central clearing of trades by 
investors on exchanges facilitates regulatory oversight by providing a single 
location for access to information on the extent of market participants' 
potential liabilities.&quot;</blockquote>
<p>This conflates two different functions - trading and clearing. It so happens 
that HKEx owns both an exchange, SEHK and a clearing house, HKSCC. But there is 
no reason why we cannot have competing exchanges which do not provide clearing 
services, and competing clearing houses which do, and some which provide both. 
In the telecom analogy, we have competing telecom operators, and person A on 
network B can call person C on network D. So long as the networks are 
inter-connected, the call gets through. Alternatively, we could have a single 
but separate clearing house, run on a non-profit basis in which it returns 
economies of scale to users through reduced tariffs. If that sounds utopian, it 
isn't - HKSCC was run exactly that way until it was
<a href="uturn.asp">thrown into</a> the HKEx merger as a sweetener.</p>
<p>In fact, HKEx, is relatively unusual in 
running both functions. For example, all US stock transactions clear through 
the National Securities Clearing Corporation owned by the
<a href="http://www.dtcc.com" target="_blank">Depository Trust &amp; Clearing 
Corporation</a>, which is owned by its users. 
It also owns <a href="http://www.euroccp.co.uk" target="_blank">European Central 
Counterparty Ltd</a><a href="http://www.euroccp.co.uk">, </a>or EuroCCP, which 
clears trades for several exchanges and ATSs in Europe. It competes with
<a href="http://www.euroclear.com/" target="_blank">Euroclear plc</a> and
<a href="http://www.clearstream.com" target="_blank">Clearstream</a>.</p>
<h4>Robustness</h4>
<p>Returning to that speech, Mr Arculli gets into a complete non-sequitur:</p>
<blockquote>&quot;The robustness of the regulated exchange model was 
re-affirmed during the financial crisis when exchanges continued to offer their 
services without disruption. They were able to provide much-needed liquidity 
even on days when the OTC and interbank market segments seized up.&quot;</blockquote>
<p>Um, since when can you trade stocks on the interbank market? That is a 
money-lending market, between banks, and it seized up because they were 
unwilling to lend to each other. It has nothing to do with stocks or stock 
markets. He might as 
well say that stock exchanges performed well during the recent oil spill, when 
the Louisiana oyster market dried up. As for the OTC market, he doesn't say what 
products he is talking about, but it presumably isn't listed stocks.</p>
<p>However, since he raises the issue of robustness, what could be less 
robust than having a single point of failure in the form of a monopoly exchange? 
If one trading venue (in our case, SEHK) dominates the market, and its systems 
fail, the whole market fails. If trading can occur on multiple competing venues, 
and one of them has a computer glitch, then the others will keep going. This 
argues <em>in favour</em> of competition, not against it. The fact that HKEx is a 
monopoly means it has to gold-plate its systems with multiple redundancy to 
avoid reduce the risk of taking out the whole market.</p>
<h4>The rise of the machines</h4>
<p>Finally, a piece of technophobic babble:</p>
<blockquote>&quot;Computer-generated liquidity is already affecting real 
liquidity and altering trading activity. We run the risk of having it all just 
be a mathematical playground for the few to the detriment of many. A piecemeal 
approach seems inadequate to these vast changes. Perhaps a more fundamental 
reassessment of how to achieve the right balance between humans and technology 
in the financial field is called for.&quot;</blockquote>
<p>The right balance between humans and technology? Beware the rise of the machines! Perhaps he's been 
watching too many Terminator movies. Mr Arculli seems to think that it is 
fundamentally unfair that someone should be able to program a computer to trade 
more effectively than a guy in a red jacket with a phone, without front-running 
its client's orders or leaking information to the market. Perhaps he is unaware 
that his entire business depends on computers - brokers no longer chalk up 
orders on blackboards, and messengers no longer run around town with bundles of 
street-name share certificates to meet settlement deadlines.</p>
<p>Computerised exchanges, clearing, settlement and order-routing systems and 
electronic communications between them have opened the door to competition in a 
form that could not have existed the last time we had more than one stock 
exchange in Hong Kong (there were four until 1986). Get over the technophobia. Let the 
competition begin.</p>
<hr>
<h3>Postscript</h3>
<p>This article proved right - HKEx and 6 of its subsidiaries, including the 
Stock Exchange, Futures Exchange and their clearing houses, were granted 
exemption under the
<a href="http://www.hklii.hk/eng/hk/legis/reg/619B/sch.html" target="_blank">
Competition (Disapplication of Provisions) Regulation</a>.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=675">Arculli, Ronald Joseph</a></li>
				
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