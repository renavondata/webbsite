
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

<script type="text/javascript">document.title="TraHK on Tap";</script>

	<div class="summary">We explain in detail how the Tap mechanism will draw index shares from the Government's holdings when the market moves upwards, dampening the upside on the market. At the current rate, we expect HK$24bn of tap next year. We also look at the redemption and subscription mechanism and its likely effect on the trading prices of the TraHK. Finally, we demonstrate how the HSI has been boosted relative to the rest of the market by the Government's intervention.</div>

<h2 class="center">TraHK on Tap<br>
<span class="headlinedate">1 November 1999</span></h2>
<table class="txtable center">
	<tr>
		<th class="center" colspan="2">Contents</th>
	</tr>
	<tr>
		<td>
			<a href="#noordinary">No ordinary unit trust</a><br>
			<a href="#tap">The Tap</a><br>
			<a href="#case1">Case 1: the shareholder</a><br>
			<a href="#case2">Case 2: the futures player</a><br>
			<a href="#otherarb">Other types of arbitrage</a><br>
			<a href="#uncertain">Uncertainty over NAV</a>
		</td>
		<td>
			<a href="#range">What's the trading range?</a><br>
			<a href="#tapaffect">Will the tap affect the market?</a><br>
			<a href="#tapsize">Tap size</a><br>
			<a href="#outlook">Outlook for HSI</a><br>
			<a href="#distort">Intervention boosted HSI</a>
		</td>
	</tr>
</table>
<p>With the closing of the retail offer of the Tracker Fund of Hong
Kong (TraHK) only 3 days away, we explain the obscure &quot;Tap&quot; mechanism
and analyse the cost of the arbitrage opportunities that it may create and its
likely dampening effect on the market level. We'll also look at the complicated
subscription and redemption &quot;in kind&quot; mechanism, and this will lead us
to an estimate of the trading range of the TraHK relative to its net asset
value. At the end of this article, we'll demonstrate how intervention pushed the
Hang Seng Index up, and look at the market downside. </p>

<h3 id="noordinary">No ordinary unit trust</h3>

<p>As the Government has mentions in the subtitles of its sweet commercials, the TraHK is not like a normal unit trust. In a normal unit trust,
there is no real need for a listing on a stock exchange because no trading takes
place in the units except with the fund manager. The manager handles
subscriptions (when an investor puts new money into the fund in exchange for
units) and redemptions (when an investor sells units back to the fund in
exchange for cash). </p>

<p>In the case of TraHK, redemptions can only be done &quot;in
kind&quot;. What this means is that in return for the units, you get a basket of
the 33 shares which make up the Hang Seng Index, in about the same proportions
as in the index. Because of the problem of odd lots (see previous articles),
redemptions will only be accepted in multiples of 1 million units (or about
HK$13m). Even then, an investor may not get whole board lots of constituent
stocks, depending on how precisely the basket weightings are calculated by the
manager. </p>

<p>Subscriptions can normally only be done &quot;in kind&quot; (by
presenting the manager with the right numbers of shares in the index basket) and
again only for multiples of 1 million units. However, there is also a cash
subscription capability known as the &quot;Tap&quot;. </p>

<h3 id="tap">The Tap</h3>

<p>The Tap is basically a mechanism to allow the Government to sell
further units in TraHK when the market is rising. The way it works is that an
investor may apply (again in multiples of 1 million units, known as a
&quot;Creation Unit&quot;) to pay cash for
new units in TraHK, and the manager will use the cash to buy an index
basket of shares from the Government. The price of the basket will be
the IBEAS (Index Basket Exercise and Alignment Settlement) price. This prices the index based on the average price of each
member stock
taken at 5-minute intervals during the trading day (excluding the 10:00 and
14:30 opens and the 16:00 close). That is, there are 47 readings, 30 in the
morning session and 17 in the afternoon session. </p>

<p>In practice, the tap will be used by investment banks and large
institutions to &quot;arbitrage&quot; the market. In a fast rising market, or
one which rises suddenly late in the day, the IBEAS
will be lower than the price of the index at the end of the day. If this
difference is large enough to cover the costs involved, then it provides a
potential arbitrage opportunity using the Tap. </p>

<p>To determine how wide the gap has to be to activate the Tap,
we'll look at two cases. The first represents a holder of index shares, the
second a futures player. </p>

<h3 id="case1">Case 1: the shareholder</h3>

<p>If you are a large investment fund then you may already hold the
stocks which make up the Hang Seng Index (or you can top up easily with the
smaller ones you don't own). In that case, when an arbitrage gap opens, you can sell the shares
in the market and subscribe for TraHK units under
the Tap. The cost of selling the shares will be <b>0.125%</b> stamp duty, <b>0.011%</b>
transaction levy and, unless you are a broker, <b>0.25%</b> commission (if you
get rebates or &quot;soft dollars&quot;, then deduct that and don't tell
anyone). The Government will also charge you <b>0.125%</b> stamp duty on the
shares purchased under the Tap to create your new TraHK units. </p>

<p>You may also find that your own selling cannot be achieved at
nominal market prices, because to act fast you may &quot;hit the bid&quot; side
of the bid-offer spread, whereas in a rising market a lot of the prices will be
dealt at the &quot;offer&quot;. The minimum spread is determined by the
increments in which bids and offers are permitted on the Stock Exchange. The
current &quot;spread table&quot; is: </p>

  <table class="numtable center">
    <tr>
      <th>Stock price from</th>
      <th>Spread</th>
      <th>Spread as % of price</th>
    </tr>
    <tr>
      <td>$0.01</td>
      <td>$0.001</td>
      <td>10%-0.40%</td>
    </tr>
    <tr>
      <td>$0.25</td>
      <td>$0.005</td>
      <td>2.00%-1.00%</td>
    </tr>
    <tr>
      <td>$0.50</td>
      <td>$0.010</td>
      <td>2.00%-1.00%</td>
    </tr>
    <tr>
      <td>$2</td>
      <td>$0.025</td>
      <td>1.00%-0.50%</td>
    </tr>
    <tr>
      <td>$5</td>
      <td>$0.050</td>
      <td>1.00%-0.17%</td>
    </tr>
    <tr>
      <td>$30</td>
      <td>$0.10</td>
      <td>0.33%-0.20%</td>
    </tr>
    <tr>
      <td>$50</td>
      <td>$0.25</td>
      <td>0.50%-0.25%</td>
    </tr>
    <tr>
      <td>$100</td>
      <td>$0.50</td>
      <td>0.50%-0.25%</td>
    </tr>
    <tr>
      <td>$200</td>
      <td>$1.00</td>
      <td>0.50%-0.10%</td>
    </tr>
    <tr>
      <td>$1000</td>
      <td>$2.50</td>
      <td>0.25%-</td>
    </tr>
  </table>

<p>In practice, the top band is not used. HSBC was above $200
before its stock split in July. The top 10 companies in the HSI, which account
for 80% of its value, have share prices between about $15 and $100, so you can
expect average minimum spreads of about 0.35%. Therefore, if you have to hit the
bid, and half of the stocks have last traded at the offer, you can assume a
discount of about <b>0.18%</b> on the last index value. This is a hidden cost of
dealing in Hong Kong, and small brokers have resisted narrowing the spread table
for obvious reasons. However, with the increasing presence of ECNs (Electronic
Communication Networks) we hope that the newly merged HKEC will narrow the
spread table at an early opportunity to compete with them for pricing quality. </p>

<p>Additional uncertainties are introduced by the fact that trading
computers cannot be directly linked to the Exchange, and all orders must be
input to terminals by hand. So it takes time to hit 33 stocks in one go. Time
equals uncertainty. That won't change until AMS3 is introduced later next
year.&nbsp; </p>

<p>Once you've sold your shares and got your TraHK units, then to
get back to where you started you would have to redeem the units for shares (in
kind) or sell TraHK in the market and buy back the shares you sold. Redemption
is cheaper. Most fund managers won't want to pay State Street 0.1% per annum
when they could be managing the shares themselves, and in some cases their
trustees won't permit them to hold more than a certain percentage of their
investments in other funds (such as TraHK), since that leads to the
institution's clients being &quot;double charged&quot; for fund management. So
they can't just hold the TraHK forever. </p>

<p>Redemption of TraHK results in a transaction fee of $30,000 per
application. For the minimum size of 1m units (about $13m), that works out at
0.231%, declining for larger transactions. However, bear in mind that larger
transactions will have greater &quot;market impact&quot; - selling the stock may
cause prices to go down. So it may be necessary to accumulate TraHK through
several arbitrage transactions and then redeem in a larger batch. In our model
we'll assume redemptions in batches of 5m units, reducing the cost to 0.046%. </p>

<p>There is also a cancellation fee of $1 per board lot of TraHK
(500 units), or about 0.015%. All in all, the arbitrage costs for a broker and
non-broker are estimated below:&nbsp; </p>

  <table class="numtable center fcl">
    <tr>
      <th>Tap arbitrage by a shareholder</th>
      <th>Broker</th>
      <th>Non-broker</th>
    </tr>
    <tr>
      <td>Sale of index shares - spread (estimate)</td>
      <td>0.180%</td>
      <td>0.180%</td>
    </tr>
    <tr>
      <td>Sale of index shares - stamp</td>
      <td>0.125%</td>
      <td>0.125%</td>
    </tr>
    <tr>
      <td>Sale of index shares - brokerage</td>
      <td>&nbsp;</td>
      <td>0.250%</td>
    </tr>
    <tr>
      <td>Sale of index shares - transaction levy</td>
      <td>0.011%</td>
      <td>0.011%</td>
    </tr>
    <tr>
      <td>Subscription of TraHK - stamp</td>
      <td>0.125%</td>
      <td>0.125%</td>
    </tr>
    <tr>
      <td>Redemption of TraHK - transaction fee (5m units)</td>
      <td>0.046%</td>
      <td>0.046%</td>
    </tr>
    <tr>
      <td>Redemption of TraHK - cancellation fee</td>
      <td>0.015%</td>
      <td>0.015%</td>
    </tr>
    <tr>
      <td><b>Total costs</b></td>
      <td><b>0.502%</b></td>
      <td><b>0.752%</b></td>
    </tr>
  </table>

<p>Given the uncertainties on the spread, and allowing for a
worthwhile profit, we are unlikely to see brokers arbitrage until the IBEAS is
at least 0.70% less than the Hang Seng Index, and fund managers won't come in
until a 0.95% gap exists (in each case offering a 0.20% profit). It is also
possible that Participating Dealers may charge a commission for processing
subscription applications, adding to the costs. </p>

<p>The whole point of arbitrage is to remove market anomalies, so
we expect the investment banks (with their own brokerages) to normally move in
before they become wide enough for non-broker institutions to take advantage of
them. </p>

<p>If the index has been steadily moving upward during the day and
gained at least 1.4%, or has been flat followed by a late spurt of more than
0.8%, then this would create such conditions. </p>

<p>In both case 1 and 2, we have not allowed for the possibility
that an arbitrageur might take a position and then wait for the mis-pricing to
reverse itself (e.g. until futures go to a discount to fair value or TraHK goes
to a premium to its net asset value) before closing the position, since there
can be no certainty over when or if this might happen. </p>

<h3 id="case2">Case 2:&nbsp; the futures player</h3>

<p>In this case, the would-be arbitrageur would sell futures
contracts and buy TraHK through the Tap. Such an opportunity might be created
not just by a move in the index, but by an over-pricing of the futures contract
which can emerge from time to time. Apart from the price of the underlying
shares, the &quot;fair value&quot; of a futures contract is determined by
interest rates, the dividends due on the shares, and the time remaining until
expiry. </p>

<p>Hang Seng Index futures are still dealt with by open-outcry,
which has inefficiencies of its own. The move to screen-based trading won't come
until early next year (or whenever they get it working). As each TraHK unit
represents 1/1000th of an index, the minimum creation of 1m units (a Creation
Unit) is equivalent to $1,000 per index point, or 20 futures contracts (which
are each worth $50 per point). There would be some market impact from selling
several Creation Units. </p>

<p>In order to &quot;close out&quot; his gains, our trader will
have to buy back the futures contracts and either sell the TraHK or redeem it
for underlying shares and then sell the shares. He may find that TraHK is
trading at a discount to its NAV in which case he'll have to redeem the units
rather than sell them. Either way, he pays stamp duty when he sells the units or
shares in the market. The minimum brokerage on futures contracts is $100 each
side, plus transaction levy of $11.50. In addition, the minimum spread is 5
index points. If the last trade was at the offer, then hitting the bid would
thus cost <b>0.038%</b> (if the bid were large enough in volume). Apart from
this, the costs of buying TraHK, redeeming it, and selling the index shares are
the same as in Case 1. </p>

<p>Typical costs would then be: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Tap arbitrage by a futures player</th>
      <th>Broker</th>
      <th>Non-broker</th>
    </tr>
    <tr>
      <td>Spread on sale &amp; purchase of futures</td>
      <td>0.076%</td>
      <td>0.076%</td>
    </tr>
    <tr>
      <td>Round trip commission on futures</td>
      <td></td>
      <td>0.031%</td>
    </tr>
    <tr>
      <td>Round trip transaction levy on futures</td>
      <td>0.004%</td>
      <td>0.004%</td>
    </tr>
    <tr>
      <td>Other costs as in Case 1</td>
      <td>0.502%</td>
      <td>0.752%</td>
    </tr>
    <tr>
      <td>Total costs</td>
      <td><b>0.582%</b></td>
      <td><b>0.863%</b></td>
    </tr>
  </table>

<p>Again, we have ignored any commission charged by Participating
Dealers on subscriptions or redemptions. We've also ignored interest loss on the
margin deposit for the futures contracts. </p>

<h3 id="otherarb">Other types of arbitrage</h3>

<p>The TraHK itself is open to arbitrage if its pricing drifts too
far away from fair value, even when the Tap for that quarter has been exhausted.
For example, if TraHK is trading at a discount relative to its net asset value
(based on latest market prices) then it should be possible to buy TraHK units in
the market and present them for redemption, and sell the underlying shares in
the market. However, it takes 2 trading days to redeem the units (once you've
got them), so to avoid market risk, you'd have to sell index shares you already
own, or borrow them (more costs) until you can redeem TraHK, or sell futures. If
you already own index stocks, then the estimated cost is as follows: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Stock/TraHK arbitrage (no Tap)</th>
      <th>Broker</th>
      <th>Non-broker</th>
    </tr>
    <tr>
      <td>Stamp on purchase of TraHK</td>
      <td>0.125%</td>
      <td>0.125%</td>
    </tr>
    <tr>
      <td>Transaction levy on purchase of TraHK</td>
      <td>0.011%</td>
      <td>0.011%</td>
    </tr>
    <tr>
      <td>Commission on purchase of TraHK</td>
      <td></td>
      <td>0.250%</td>
    </tr>
    <tr>
      <td>Sale of index shares - spread (estimate)</td>
      <td>0.180%</td>
      <td>0.180%</td>
    </tr>
    <tr>
      <td>Sale of index shares - stamp</td>
      <td>0.125%</td>
      <td>0.125%</td>
    </tr>
    <tr>
      <td>Sale of index shares - brokerage</td>
      <td></td>
      <td>0.250%</td>
    </tr>
    <tr>
      <td>Sale of index shares - Transaction levy</td>
      <td>0.011%</td>
      <td>0.011%</td>
    </tr>
    <tr>
      <td>Transaction fee on redemption (5m units)</td>
      <td>0.046%</td>
      <td>0.046%</td>
    </tr>
    <tr>
      <td>Cancellation fee on units</td>
      <td>0.015%</td>
      <td>0.015%</td>
    </tr>
    <tr>
      <td><b>Total costs</b></td>
      <td><b>0.513%</b></td>
      <td><b>1.013%</b></td>
    </tr>
  </table>

<p>Conversely, if an investor holds (or borrows) TraHK and it is
trading at a premium to net asset value, then&nbsp; he can sell it in the market
and at the same time buy the underlying index basket of shares, then present the
shares to TraHK to create new TraHK units if desired. </p>

<h3 id="uncertain">Uncertainty over NAV</h3>

<p>Whenever an investor want to buy or sell TraHK, one challenge
will be to figure out what the current net asset value (NAV) is. This is because
it will not be as simple as just dividing the HSI by 1,000. The TraHK will be
accumulating dividends and operating costs (paying out the dividend net of such
costs every 6 months) and in addition, it will accumulate a &quot;tracking
error&quot; due to changes in the index weightings. </p>

<p>The NAV will only be calculated and published once per day
through the Stock Exchange (based on the previous night's closing prices) and it
probably won't distinguish between the index shares and other net assets in the
fund. So for the private investor, as the day goes on and the market moves, it
will become difficult to figure out the exact NAV. The simplest estimate will be
to multiply the previous night's NAV by the current HSI and divide by the
previous night's HSI. </p>

<p>Fortunately, it is unlikely that other net assets will ever be
more than 3% of the fund, unless one of the index stocks pays out a very large
dividend. </p>

<h3 id="range">What's the trading range?</h3>

<p>Based on our analysis of the arbitrage costs, we would expect
the TraHK to spend most of its time in a range of -1% to +1% relative to its
current NAV. However, if the Tap is open and the market has risen steeply that
day,&nbsp; expect the TraHK to trade at a larger discount in the afternoon,
because the big guys will not pay more for units in the market than they can pay
at the Tap. </p>

<p>When the Tap is closed, the range will hold because investment
banks with direct access to the stock and futures exchanges will arbitrage to
remove the difference. It will take a few weeks for these banks to get a grip on
the mechanics, so we can expect a slightly wider range until things settle down. </p>

<p>As for liquidity, don't expect miracles. If people are long-term
holders then you will at first be looking at a relatively small amount of stock
(perhaps $2-3bn) trading in the market. That's nothing like Hutchison or HSBC.
But as an individual small holder of TraHK, you will probably be able to get
98-99% of NAV any time you want. </p>

<h3 id="tapaffect">Will the Tap affect the market?</h3>

<p>We can expect the Tap mechanism to be
activated whenever the market rises steadily by about 1.4% or more during the course of the
day (leaving the IBEAS at about a 0.7% discount to the closing prices) or if the
market is flat followed by a late surge. Tap subscribers have until 16:15 each day to apply for units at that day's IBEAS, so
in practice they can wait until late in the afternoon session when the IBEAS is
almost
known. Applications are made through CCASS terminals which every broker has,
although they have to agree to be a &quot;Participating Dealer&quot; in the
scheme. </p>

<p>Of course, the very act of arbitrage selling will have a
negative effect on the price of the shares. In effect, as long as the Tap is
open, the net demand for index stocks will be met by the Government supply of
TraHK units under the Tap. This shifts the supply-demand balance and will
provide downward pressure to stock prices in the absence of other factors. </p>

<h3 id="tapsize">The Tap Size</h3>

<p>At least 10 business days before the beginning of each calendar
quarter, the Government will announce how much stock it will make available for
the Tap. The 10th business
day before the first quarter of 2000 is 16-Dec-99. In the case of the partial quarter from 12-Nov-99 until the end of the
year, they have said it &quot;<i>is not expected to exceed</i>&quot; <b>HK$3bn</b>,
an amount which will be announced by 9-Nov-99. After that, your guess is as good
as ours. As the first tap only runs for half of the quarter, we could expect a Tap
size of at least <b>$6bn</b> for the first quarter of 2000. Presumably the
Government wishes to sell as much as it can through the Tap to reduce its equity
holdings towards the target level, without denting the market too much. It owns <b>$198bn</b>
of stock (as of 20-Oct-99, when the index closed at 12,499). If it keeps tapping
at the current rate, that would see another $24bn of stock returned to the
market during 2000, in addition to the planned privatisation of the MTRC. </p>

<h3 id="outlook">Outlook for HSI</h3>

<p>The size of the Government holdings represents a considerable
overhang of stock on the market. Whenever the market rises, the Government will
be tempted to open the Tap wider for the next quarter, so the market upside will be limited by this
knowledge. That gives us a reason to be bearish on blue chips over the near
term. In addition, we regard stocks on Wall Street as seriously over-valued, and
you should know that if Wall Street crashes, Hong Kong will crash too.
Professionals call that &quot;correlation&quot;. </p>

<p>Now you might be thinking that the HK Government, having done it
once, would always intervene in the event of a major market fall, as they did
last Summer. Think again. The Government last year bought 15% of the free float
(the shares not held by controlling shareholders) and would put itself in a far
more precarious position if it were to do the same thing again. Owning 30% of
the free float would eliminate any residual claim to be a promoter of free
markets. So expect any
Government support in the event of a crash to be very limited. </p>

<h3 id="distort">Intervention boosted HSI</h3>

<p>It is worth comparing what has happened to the Hang Seng
Index (where the Government intervened) with the wider Hong Kong market (where
no purchases were made).&nbsp;We can do this by looking at the Hang Seng Mid-Cap
Index (HSMCI), which represents the stocks approximately ranked 101st to 150th
by size. </p>

<p>The Government intervention began on 14-Aug-98. If we look at
the period from 2-Jan-98 (the base date of the HSMCI) to a week before
intervention (7-Aug-98), the two indices moved almost in line, the HSI falling
34.3% and the HSMCI falling 34.0%. We ignore dividends in both cases. </p>

<p>However, in the period from 7-Aug-98 to today, we can see that
the HSI has increased by 89.8% while the HSMCI has increased by only 41.8%.
That's a huge out-performance for the HSI of about 34%. If the HSI were to fall
back into line with the MCI then it would fall by about 25% to just below the
10,000 mark. </p>
  <table class="numtable center fcl" style="font-size:10pt">
    <tr>
      <th></th>
      <th>2-Jan-98</th>
      <th>7-Aug-98</th>
      <th>1-Nov-99</th>
      <th>From 2-Jan-98<br>
        to 7-Aug-98</th>
      <th>From 7-Aug-98<br>
        to 1-Nov-99</th>
    </tr>
    <tr>
      <td>HSI</td>
      <td>10,680.57</td>
      <td>7,018.41</td>
      <td>13,322.11</td>
      <td>-34.3%</td>
      <td>89.8%</td>
    </tr>
    <tr>
      <td>HSMCI</td>
      <td>1,000.00</td>
      <td>659.64</td>
      <td>935.65</td>
      <td>-34.0%</td>
      <td>41.8%</td>
    </tr>
  </table>
<p>Bear those figures in mind. You might think that the difference
is explained by mid-cap companies having a tougher time then their larger
counterparts, but that's an awfully big difference which did not seem to be
present during the first 7 months of 1998, when the economy was probably in
greater distress than it is now. </p>

<p>We don't buy that story - we think that, apart from the bull-run
on global stock HSBC, the main reason for the out-performance is the simple
scarcity of supply of stock which is about to be remedied. Intervention pushed
it up, disintervention will push it down. </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=7679">EXCHANGE FUND INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51819">Tracker Fund of Hong Kong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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