
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

<script type="text/javascript">document.title="Cut the Spread";</script>

	<div class="summary">From 1-Apr-02, Hong Kong brokerage rates will be negotiable, as they should be in a free market. Now it's time to focus on another inefficiency - HK's gaping spread table, which keeps an artificially wide gap between the bid and offer. Webb-site.com calculates that the average spread in the table is 0.78%, and even the HSI stocks have an average spread of 0.47%. We calls on regulators to cut the spread table to no more than 0.1%, and we explain how to achieve this.</div>

<h2 class="center">Cut the Spread<br>
<span class="headlinedate">6 January 2002</span></h2>
<p>In less than four months' time, clients will be free to
negotiate brokerage rates with their brokers, as the 0.25% minimum brokerage
will be scrapped. Last ditch <a href="smokinggun.asp" target="_blank">efforts</a>
by anti-competitive brokers to delay that appear to have failed. So now it is
time to turn attention towards another inefficiency of the Hong Kong market -
the ridiculously wide spread table which determines the minimum gap between the
bid and offer prices in the market. </p>

<h3>Our order driven system </h3>

<p>Hong Kong has an &quot;order-driven&quot; system, which means
that buyers and sellers submit &quot;bids&quot; and &quot;offers&quot;, through
their brokers, directly to the market. Order driven markets are a <i>good thing</i>,
because they offer transparency to end-users. The alternative is a
&quot;market-maker&quot; system where only brokers can make bids and offers. </p>

<p>If you are a buyer, and nobody is offering stock, then all you
can do is make a bid. If there are sellers making &quot;offers&quot; of stock,
then you can decide whether to take the best offer, or alternatively, you can
submit a bid which is less than the best offer. In the latter case, you join a
queue of people willing to buy at that price. In this way, prioritised queues
are formed of bids at descending prices and offers at rising prices. In effect,
an &quot;auction&quot; is in continuous progress, and this market function is
known as &quot;price discovery&quot;. </p>

<h3>The spread table </h3>

<p>Now in order to prevent people jumping an order queue by
submitting a bid at only a vanishingly better price (such as $1.0000001 to
overtake a bid at $1), an order-driven market must impose a &quot;spread&quot;
table, which specifies the &quot;tick&quot; or minimum increase or decrease in a
bid or offer. All bids or offers must be in multiples of that amount. </p>

<p>In Hong Kong, the minimum bid or offer on any stock is $0.01.
After that, the <a href="http://www.hkex.com.hk/rulereg/rulesex/sch-2_eng.doc" target="_blank">spread
table</a> looks like this (explanation follows): </p>
  <table class="numtable center">
    <tr>
      <th>Price<br>from<br>$</th>
      <th>Price<br>to<br>$</th>
      <th>Tick<br>$</th>
      <th>Min.<br>spread<br>%</th>
      <th>Max.<br>spread<br>%</th>
      <th>Aver.<br>spread<br>%</th>
    </tr>
    <tr>
      <td>0.01</td>
      <td>0.25</td>
      <td>0.001</td>
      <td>0.40%</td>
      <td>10.00%</td>
      <td>1.36%</td>
    </tr>
    <tr>
      <td>0.25</td>
      <td>0.50</td>
      <td>0.005</td>
      <td>0.50%</td>
      <td>2.00%</td>
      <td>1.40%</td>
    </tr>
    <tr>
      <td>0.50</td>
      <td>2.00</td>
      <td>0.010</td>
      <td>0.50%</td>
      <td>2.00%</td>
      <td>0.93%</td>
    </tr>
    <tr>
      <td>2.00</td>
      <td>5.00</td>
      <td>0.025</td>
      <td>0.50%</td>
      <td>1.25%</td>
      <td>0.77%</td>
    </tr>
    <tr>
      <td>5.00</td>
      <td>30.00</td>
      <td>0.050</td>
      <td>0.17%</td>
      <td>1.00%</td>
      <td>0.36%</td>
    </tr>
    <tr>
      <td>30.00</td>
      <td>50.00</td>
      <td>0.100</td>
      <td>0.20%</td>
      <td>0.33%</td>
      <td>0.26%</td>
    </tr>
    <tr>
      <td>50.00</td>
      <td>100.00</td>
      <td>0.250</td>
      <td>0.25%</td>
      <td>0.50%</td>
      <td>0.35%</td>
    </tr>
    <tr>
      <td colspan="5">Average</td>
      <td><b>0.78%</b></td>
    </tr>
  </table>

<p>Here's how it works. Taking the third row, we see that prices
between $0.50 and $2.00 move in $0.01 ticks - so the next price above $0.50 is
$0.51, a 2% spread, the &quot;maximum spread&quot; in our table. And the gap
between $1.99 and $2.00 is about 0.50%, the &quot;minimum spread&quot;. So a
share might be $1.99 &quot;bid&quot; and $2.00 &quot;offered&quot;. </p>

<p>To find the &quot;average spread&quot; for each range, we
computed the simple arithmetic average of all the spreads in the range, which
assumes that stock prices are evenly distributed across the price range. For
example, there are 150 possible prices between $0.50 and $1.99 inclusive, and
the average spread in that range is 0.93%. Taking the simple average of all
ranges (and we know, the ranges are different widths) we get a figure of <b>0.78%</b>.
If you looked at each range based on a median price (the middle price point in
each range) you'd get an average of 0.64%. </p>

<p>Experts will notice that we have omitted the last three ranges
of the official table, which goes up to $200 (tick $0.50) then $1,000 (tick
$1.00) and finally a maximum $9,995 (tick $2.50). That's because there are
currently no shares in those ranges. </p>

<h3>What this shows </h3>

<p>We can all get excited about decreasing brokerage rates, but
there are still huge inefficiencies in the market. </p>

<p>Suppose, for example, you want to sell a declining stock last
traded at $0.26. That puts it into the spread range of $0.25-$0.50, and the
spread is $0.005. Suppose the best bid is&nbsp; $0.255, in which case the offer
cannot be less than $0.26 (half a cent higher). If you would like to offer stock
at <b>$0.259</b>, too bad - you either must &quot;hit the bid&quot; accepting
$0.255, or stand at the last-traded offer of $0.26, hoping a buyer will take
your offer. Now there might be competing offers for the stock, and you might be
a little keener to sell than other people in the &quot;order queue&quot; at
$0.26, but the only way you can jump the queue is to accept <b>$0.255</b>, which
is <b>1.54%</b> less than you wanted to offer. So you may end up without a trade
rather than accept such a low price. Then the broker gets no commission, and the
market loses volume. </p>

<p>It is a sad fact that some investors till think that a stock
which trades at a lower nominal price is &quot;cheaper&quot; than one which
trades at a higher nominal price, because they do not understand how shares are
valued. So for psychological reasons, the majority of companies by number (small
caps) are quoted at less than $1 (in the highest spread ranges), while the vast
majority of companies by value, that is, the blue chips, tend to occupy the
higher price ranges. But even in blue chips, investors do not have narrow
spreads. Take a look at the Hang Seng Index, ranked by nominal price as of
Friday, 4-Jan-02: </p>

<img class="center" alt="" src="../images/spread1.gif">

<p>As you can see, the average spread of 0.47% is almost twice the
current minimum brokerage commission. As brokerage rates come down, this is
going to look more and more obscene. Plain and simple, the spread table must be
cut. In Nasdaq, the tick was cut in 1997 from one eighth to one sixteenth of a
dollar, and last year, they finally left the &quot;pieces of eight&quot; Spanish
system and decimalised, reducing the tick to just US$0.01. The NYSE has also decimalised.
Their stocks typically trade in the tens of dollars, making the tick very small. </p>

<h3>Who benefits from wide spreads? </h3>

<p>Practically the only people who benefit from wide spreads are
those brokers, investment banks and others who make markets in stocks (sometimes
including controlling shareholders - why are you not surprised?).&nbsp; That is
because they can benefit from offering a &quot;spread&quot; on the shares,
willing to buy from you at the best bid or sell to you at the best offer, and
earning a spread in the process. There will always be a portion of customers who
want instant execution of their order, and the certainty of a trade, rather than
joining the bid or offer queue, and these are the juicy clients who
&quot;pay&quot; a spread for the privilege, at the expense of market efficiency. </p>

<h3>Cut the spread - our proposal </h3>

<p>For those brokers who don't take market-making positions, and
are simply in it for the commission, well they should be in favour of anything
which increases trading volume, and narrower spreads should certainly have that
effect, since more trades at the marginal prices &quot;inside&quot; the current
spreads will be matched. </p>

<p><b>We call on the Stock Exchange to cut the spread table to no
more than 0.1% at any point.</b> Currently, we understand the trading system
cannot handle price increments smaller than $0.001, which is 0.1% of one dollar.
So this may mean that they have to either (a) modify the system to handle
hundredths of a cent, or (b) require shares to be consolidated (reverse split)
so that their nominal prices are above $1.00. For example, a stock trading at
$0.25 would have to make a 10:1 consolidation (every ten old shares become one
consolidated share) to take its price up to $2.50. </p>

<p>Descending into hundredths of a cent would probably involve
a&nbsp; lot of costly software changes for data distributors as well as the
Stock Exchange, and would put us even further out of line with world norms.
Therefore consolidation is a better route to go. Consolidation always brings a
problem of odd lots (less than a board lot of shares), but this is a small price
to pay for market efficiency, and people would have enough notice to round up or
down their holdings before consolidation took effect, so as to avoid getting odd
lots. </p>

<h3>Proposal </h3>

<p>Here is our proposed spread table: </p>

  <table class="numtable center">
    <tr>
      <th>Price<br>from<br>$</th>
      <th>Price<br>to<br>$</th>
      <th>Tick<br>$</th>
      <th>Min.<br>spread<br>%</th>
      <th>Max.<br>spread<br>%</th>
    </tr>
    <tr>
      <td><i>0.01</i></td>
      <td><i>1.00</i></td>
      <td><i>0.001</i></td>
      <td><i>0.10%</i></td>
      <td><i>10.00%</i></td>
    </tr>
    <tr>
      <td>1.00</td>
      <td>2.00</td>
      <td>0.001</td>
      <td>0.05%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>2.00</td>
      <td>5.00</td>
      <td>0.002</td>
      <td>0.04%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>5.00</td>
      <td>10.00</td>
      <td>0.005</td>
      <td>0.05%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>10.00</td>
      <td>20.00</td>
      <td>0.01</td>
      <td>0.05%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>20.00</td>
      <td>50.00</td>
      <td>0.02</td>
      <td>0.04%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>50.00</td>
      <td>100.00</td>
      <td>0.05</td>
      <td>0.05%</td>
      <td>0.10%</td>
    </tr>
  </table>

<p>As you can see, stocks with prices below $1.00 (which currently,
is most of them) would have to consolidate to achieve narrower spreads. They
could be given say, 3 months to achieve this, under amendments to the Listing
Rules. It would be a &quot;big bang&quot; approach, a one-off change to improve
market volume and liquidity. None of the stocks in the Hang Seng Index would be
required to consolidate, as they are all already above $1.00, even PCCW! </p>

<h3>Force consolidation </h3>

<p>You may find it surprising to learn that the Stock Exchange has
always reserved the right, in the Listing Agreement, to require companies to
consolidate their stock when the price &quot;approaches the extremity&quot; of
$0.01. They don't appear to use it much, because there are a number of companies
bumping along at the $0.01 mark, below which nobody can make a bid or offer, and
a single tick upwards makes a 10% change in the price. That makes trading very
illiquid - brokers end up matching orders outside the system at fractional
prices. The current rule is too lax, since by the time you get down to the
minimum one cent, the damage to liquidity has already been done. </p>

<p>We need a clear and objective rule which says that if a stock
trades <i>below</i> a threshold for more than (say) 10 consecutive days, then it
must perform a consolidation within (say) six weeks, to raise its nominal price
to not less than double the threshold, which will allow it to slide another 50%
before the same problem arises again. That threshold must allow room for
investors to achieve reasonable trading spreads while the consolidation is in
progress. Under our proposed spread table, that threshold would be $1. </p>

<p>There's a hidden benefit to this proposal. By bringing all
stocks above the $1 mark, into a closer range of nominal prices, failing
companies would be easier to spot, and less educated investors would stop
relying on a stock price being nominally &quot;low&quot; as a measure of value.
In other words, if all stocks traded in similar price ranges, the gullible
investors who get sucked into syndicated ramping schemes would think a little
harder. </p>

<h3>And if we don't? </h3>

<p>A word of warning to the Stock Exchange - if you don't do
something about spread tables, the market will. Quite simply, large
institutional investors will increasingly migrate their trades off-market
through ECNs (electronic communications networks) who are knocking on the door
seeking to provide better, more efficient execution, inside the spread. That
will reduce transparency of the market as a whole, and shrink your business. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
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