
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

<script type="text/javascript">document.title="HKEx keeps wide spreads";</script>

	<div class="summary">The Board of HKEx (0388) today decided to keep wide bid-offer spreads for stocks below $5, cancelling its plan to improve market efficiency after intense lobbying by some small brokers, who also campaigned against the elimination of minimum commissions in 2000-2002. Once again in Hong Kong, political expediency trumps logic and commitment. We call on good companies to now distinguish yourselves by consolidating your shares to get into the efficient price zone above HK$5.</div>

<h2 class="center">HKEx keeps wide spreads<br>
<span class="headlinedate">14 February 2007</span></h2>
<p>At a board meeting today, Hong Kong Exchanges and Clearing Limited (<b>HKEx</b>, 
0388)
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2007/0702142news.htm" target="_blank">abandoned</a> its plans to reduce the minimum bid-offer spread for stocks below $5 
on the Stock Exchange.</p>
<p>The brief history is this: back on 6-Jan-02, <i>Webb-site.com</i>
<a target="_blank" href="cutthespread.asp">called</a> for the exchange to cut 
trading spreads in the interests of market efficiency. Shareholders elected your editor to the Board of HKEx as an outside 
candidate in Apr-03. On 6-Aug-04, HKEx
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2004/040806news.htm" target="_blank">announced</a> a consultation on reducing spreads in two phases, starting with 
shares priced above $30. On 4-Feb-05, HKEx
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2005/050204news.htm">
announced</a> conclusions on the consultation, and a decision to proceed. Phase 
1 was
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2005/0506292news.htm">
implemented</a> on 4-Jul-05, affecting 22 primary-listed stocks.</p>
<p>On 15-Feb-06, HKEx
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2006/0602153news.htm" target="_blank">announced</a> that, after reviewing the favourable results of Phase 1, it would 
proceed with Phase 2, to cut spreads across the rest of the board from $0.25 
upwards (stocks below $0.25 already have the smallest possible increment of 
$0.001). HKEx said in that announcement:</p>
<blockquote>
	<p>&quot;Statistical findings collected following the implementation of the Phase 
	1 proposal indicate that the initial reduction of minimum spreads has 
	enabled investors to buy and sell securities at more price levels within a 
	given price range than before. Findings also revealed that bid-ask spreads 
	narrowed, increasing the chance of order execution at the marginal prices 
	inside the previous spreads and thus improving market efficiency.&quot;</p>
</blockquote>
<p>A broker backlash ensued, with threats of street protests by their staff. In 
the meantime, your editor stood for re-election to the board at the AGM, joined 
by a new candidate, Christine Loh, in a campaign that featured this policy issue 
centre stage. The broker-backed opponents of narrower trading spreads lost 
fairly and squarely, with your editor receiving the largest majority in any HKEx 
contested election yet. We had en
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060427/LTN20060427020.PDF">
electoral mandate</a>, to do what we said we would do, both of which are quite 
rare in this town.</p>
<p>Despite this, on 2-Jun-06, the Board responded to pressure and
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2006/0606022news.htm">
decided</a> to break Phase 2 into two phases, named 2A and 2B, as shown in
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2006/documents/0606022news.pdf">
this table</a>. We disagreed with that, as we saw no reason for further delays. 
As an interim measure, with which we also disagreed, the spreads between $2 and 
$5 were only reduced to $0.01 rather than the original plan of $0.005, making it 
less obvious that we had just created a 2-tier market, between high and low 
efficiency, by having a medium inbetween.</p>
<h3>No reason for U-turn</h3>
<p>As the two-phase announcement of 2-Jun-06 made clear:</p>
<blockquote>
	<p>&quot;HKEx will monitor the results of Phase 2A and will proceed in the first 
	quarter of 2007 with...Phase 2B, subject to no systemic problems having 
	arisen in Phase 2A&quot;.</p>
</blockquote>
<p>It was agreed today that there had been no systemic problems in Phase 2A, so 
the condition was satisfied. In the summer doldrums, some brokers had claimed 
that the spread reduction had reduced turnover, but in fact the market hit 
record turnover levels in the second half of this year (not counting the 
Government intervention blitz of 28-Aug-1998) and the stocks in the $2-20 range 
were no exception.</p>
<p>Soon after Phase 2A took effect, a local academic and some brokers complained 
in the press that the spread reduction had reduced stock volatility, thereby 
damaging the value of warrants. Meanwhile other brokers claimed that the spread 
reduction had <i>increased</i> volatility. They couldn't even sing in harmony, 
although they tried, with a demonstration on the floor of the Stock Exchange. Of 
course, both claims were wrong. Volatility is a measure of risk, and if you 
could reduce investment risk simply by narrowing the trading spread of 
securities, then the
<a target="_blank" href="http://nobelprize.org/nobel_prizes/economics/laureates/1990/">
1990 Nobel prize</a> for the capital asset pricing model would need to be 
returned, and all market prices would be re-rated upwards for the lower risk in 
the investment. Pure magic!</p>
<p>Before Phase 1, broker representatives had also claimed that they would find 
it impossible to keep up with the rate of modification of limit orders as people 
raised or lowered their bids or offers in our order-driven system. In fact, 
there was barely any change in the number of order modifications. What we <i>did</i> 
see was an increase in the trade-to-order ratio - the percentage of orders that 
were getting completed, and a reduction in queue size. This was because, when 
you have a narrower bid-offer spread, more buyers and sellers are willing to 
trade at the prices on offer or bid, rather than join the queue just to save an 
extra fraction on the price. Reducing queue size with faster service in this way 
is a good thing, just as shorter queues in the lift lobby or at the immigration 
counter are a good thing.</p>
<p>In fact, small brokers haven't suffered from this in terms of volume. The
<a target="_blank" href="http://www.hkex.com.hk/data/epstat/exreport.htm">market 
share</a> of brokers ranked 66th and lower, known as Category C, has increased 
from 11.02% in Jun-06, before Phase 2A, to 12.32% in Dec-06. At the same, 
average daily market turnover has increased 59% from $29.98bn in Jun-06 to 
$47.68bn in Dec-06, so Category-C turnover has grown by 77.8% to $5.87bn in that 
period. For sure, the bubble in the market has attracted a lot of retail 
investors, but these tend to be short-term traders which rather contradicts the 
claim that narrower spreads drove them away.</p>
<p>In our view, the opposition to greater efficiency comes from the same source 
as the opposition earlier this decade to the elimination of fixed minimum 
commissions. Some, but not all, small brokers, were then, and are now, simply 
unwilling to deal with greater competition. Narrower trading spreads would 
reduce other transaction costs, which means that their clients would become more 
sensitive to brokerage rates, and some will move to brokers who have cut rates 
by investing in technology to provide service at a lower price. In 2002, with a 
threat to organise street protests, the brokers succeeded in persuading the 
Government, who in turn persuaded HKEx, to delay scrapping minimum commissions 
by 1 year (see <a target="_blank" href="nofreemarket.asp">Government Backs 
Cartel</a>, 24-Jan-02). </p>
<h3>Political realities</h3>
<p>If there was no systemic problem with Phase 2A, and if the benefits from 
spread reduction were obvious, and had been stated in the previous press 
releases announcing the plan, then why did the Board, including 
Government-appointed directors, do a U-turn? Perhaps they were thinking (with 
apologies to Shakespeare):</p>
<blockquote>
	<p>&quot;2B, or not 2B: that is the question. Whether 'tis nobler in the mind to 
	suffer the slings and arrows of outraged brokers, or not to take arms 
	against a sea of market inefficiency...&quot;</p>
</blockquote>
<p>Of course, we cannot know what was going through the minds of fellow 
directors today, but that is our best guess. There is a pseudo-election for 
Chief Executive of Hong Kong in March, and the small brokers and their 
functional (or so we are told) legislator have 13 votes in the 800-member 
Election Committee. Like so many other special interests vested in the 
committee, they have the ability to create embarrassment, let alone the 
threatened street protests that were promised when it looked like Phase 2 would 
be adopted in one go back in Feb-06. The board stalled once in June, breaking it 
into two phases, and then again today, cancelling the second half.</p>
<h3>The consequences</h3>
<p>Of the 1175 listed ordinary shares, Phase 2B would have affected about 954 
stocks (81% of companies) trading below $5, representing 23% of market capitalisation. That 
includes 206 stocks between $2 and $5 where the spread would have been halved 
from its interim level achieved in Phase 2A. The bar chart below illustrates 
where we stood before Phase 1 (we'll call it Phase 0, in pale blue), and the 
progressive effects of Phases 1 (yellow, Jul-05), 2A (burgundy, Jul-06) and the 
now-cancelled 2B (purple) on the maximum percentage spread in each range.</p>
<img class="center" alt="" src="../images/spread5.gif">
<p>As that shows, putting things in real-estate terms that Hong Kongers love 
best, we now have low-rise buildings in the price range of $5 upwards, a 
medium-rise burgundy tower between $2-5, and three ugly pale-blue skyscrapers 
still standing between $0.25 and $2.00. Ridiculously, we have a 2% spread at 
$0.50 but only a 0.2% spread at $5.</p>
<h3>The two-tier market</h3>
<p>Now, there is nothing more we can do on this subject at HKEx. At least we can 
say that if we had not been on the board, you would probably only be looking at 
Phase 1, because that is all that management initially proposed to do. By 
logical persuasion and academic evidence, we broadened the target and ended up 
with Phase 2A, and now listed companies have a choice of two market tiers. They 
can either price their stock above $5, and have a spread of not more than 0.2%, 
or they can stay in the inefficient zone below $2, where there are far more 
&quot;junk stocks&quot; which are subject to market manipulation and where the companies 
who issue them often have appalling governance.</p>
<h3>Good companies should respond</h3>
<p>We urge all respectable listed companies with prices below $5 to address this 
problem by raising your share price into an efficient zone above $5. You should 
do this by consolidating your shares. For example, if you run a company with 
shares priced at 50 cents, you can consolidate 10 existing shares into 1 new 
share, resulting in a price of $5, and if you are concerned about creating 
fractional &quot;board lots&quot; (the minimum size for automated trading on the exchange) 
then you can simultaneously cut the board lot by the same factor, eliminating 
the problem. A 2,000-share board lot would then become a 200-share board lot, 
with the same value as before. Investors will take you more seriously, 
particularly if you have a price which translates to more than one US dollar per 
share (HK$7.80) which many overseas investors regard as the penny-stock 
boundary.</p>
<h3>A reminder of Hong Kong's unique system</h3>
<p>Today's episode should remind us all of two things:</p>
<ul>
	<li>In Hong Kong's unique system of constitutional representation for 
	special interests, via the election committee who chooses the Chief 
	Executive, and via the functional constituencies in the Legislative Council, 
	political expediency often ranks ahead of logic when it comes to policy 
	making.</li>
	<li>Only a minority of the board of HKEx can be elected by shareholders, 
	while the rest are appointed by Government (currently including four HKSAR 
	Executive Councillors). The Government also has a veto over anyone owning 
	more than 5% of the company. HKEx is, to all intents and purposes, a 
	Government-controlled company.</li>
</ul>
<p>Trading spreads are widely regarded as a component of transaction costs. By 
failing to implement the remaining cuts in trading spreads, HKEx has undermined 
its own calls for the Government to cut or eliminate stamp duty (currently 0.2% 
on each stock transaction, split 2 ways) to improve market efficiency.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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