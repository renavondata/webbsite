
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

<script type="text/javascript">document.title="Manipulation mania";</script>

	<div class="summary">What are markets really for? Does the law on market manipulation, and its enforcement, create unreasonable expectations from investors about the information in market prices, volumes and order queues? We say it does. It is time for the Government and SFC to review their approach and reset public expectations. We also look at shill bidding in auctions.</div>

<h2 class="center">Manipulation mania<br>
<span class="headlinedate">12 July 2010</span></h2>
<p class="revisedate">expanded 13-Jul-2010</p>
<p>With all the recent fuss about alleged &quot;manipulation&quot; of property prices, 
which we discuss in our <a href="conduitroad.asp">Conduit controversy</a> 
article today, we think it is time to reset public expectations about the 
purpose of markets and reliance on market data, and it is also time for the 
Government and SFC to review their approach to &quot;market manipulation&quot; cases. Hardly a week goes by 
without some petty &quot;criminal&quot; being convicted for entering bids or offers into 
our stock exchange's order-driven trading system, but is this regulatory time 
and money well spent, and does the law and its enforcement create unreasonable 
expectations from investors about the information in market prices, volumes and 
order queues? We say it does.</p>
<h3>What are markets for?</h3>
<p>The primary purpose of stock exchanges is what their name suggests - to allow willing buyers and sellers 
(and issuers) to come together and exchange shares for cash 
at prices they find acceptable. It is only an incidental effect that it 
generates a stream of reported transactions, which might, if the market is deep 
enough, give you some guide as to what price your shares are
<u>currently</u> saleable for. The displayed order queues 
of bids and offers are just that - binding bids which sellers may hit, and 
biding offers which buyers may take, resulting in executed transactions. The 
queues should not in themselves be expected to yield information about future 
prices, or about supply or demand which is not displayed.</p>
<p>But the SFC and the law adopts the view that investors should be entitled to 
an information signal purely by looking at the market activity and order queues, 
rather than, or in addition to, actually knowing anything about the company's 
fundamentals. This attitude encourages ignorance and gambling (or day-trading) 
rather than informed investing. Regulators think that a large bid queue should 
mean that a price is going to go up, and punters are entitled to rely on that 
signal and benefit from it, not that there are just lots of bids. Why should it 
mean anything more than that?</p>
<p>Numerous professionals and academics, with large amounts of computing power 
at their disposal, have tried to tease predictive value out of market data, 
either with short-term or long-term prediction horizons. Very few succeed. Where 
they do find a signal in the noise, their advantage is usually short-lived and 
competed away. Of course, if there was a clear signal in the market data, then 
we would all be able to profit from it, thereby creating a positive outcome in a 
zero-sum game, a logical impossibility. So at best it can be said that only the 
most skilful participants can glean any predictive value from the data generated 
by other participants' actions.</p>
<p>Logically, if the market data have no information value, then 
manipulating the data shouldn't make any difference to that information value. 
Unfortunately, global laws on market manipulation tend to encourage, and are 
founded on, the mistaken belief that market data do have some information value 
and should be relied upon and incorporated into investment decisions. A paradigm 
shift is needed. </p>
<p>Let's examine the taxonomy of market 
manipulation offences commonly seen in HK:</p>
<h3>Type 1: affecting the bid or offer queues</h3>
<p>Often, the thrust of the 
charge is that the wrongdoer &quot;created a false and misleading impression of 
supply and demand&quot; by entering bids when he was 
also selling (although the opposite is also possible - entering sell orders when 
you are trying to buy more of a stock you already hold). In our view, there is nothing wrong with that - any bid in the 
system is binding and may be hit by a seller. It is not in that sense a &quot;false&quot; 
bid.</p>
<p>What these punters are doing is what the professionals call &quot;algorithmic 
trading&quot; or &quot;order management&quot; - trying to mask your intentions by placing 
orders on both sides of the market, 
or posting small slices of the order you actually want to execute (sometimes 
called an iceberg order, because only the tip of the order is shown) in order not 
to push the market away from you by shifting the apparent supply/demand balance. 
The queues are not an &quot;impression of supply and demand&quot;, so they cannot be a 
true or false one - they are only an impression of current orders, no more or 
less than that.</p>
<p>For example, let's say you intend to sell 1m shares of a company at the 
current best offer price, but you only offer 100,000 shares initially. Simply by
<u>not</u> entering your full supply as an order, the 
result is that the offer queue does not reflect the full supply. Alternatively, 
you might put in a bid for 100,000 shares (at or below the best bid price) and 
an offer of 200,000, so that your net order is still the same. If both orders 
are executed, you will have sold a net 100,000 shares and made a small gain 
before costs. Still, you are not displaying your full intent to sell 1m shares, 
and you are on the bid too. Is that bid really a &quot;false&quot; bid? Is that market 
manipulation?</p>
<p>People who enter bids and offers, whatever their motive, are entering 
binding, executable orders. In so doing, they cannot reduce liquidity or make 
the bid-offer spread wider, and they often improve it. Prosecution of this 
offence simply risks depressing market activity, because someone who enters 
offers when they are trying to buy more of a stock they own, or bids when they 
are trying to sell, might be accused of manipulation.</p>
<h3>Type 2: stock ramping</h3>
<p>A second type of manipulation offence is longer-term (not intra-day) 
&quot;ramping&quot; of stock prices. This usually involves cornering the shares in a stock 
so that only a small percentage is held by people outside of the wrong-doers' 
syndicate. That's by necessity: if the stock were widely held, then it would not 
be so feasible to shift the price away from fundamental value. But is there 
really any victim in this? If you are one of the few outside shareholders, and 
you see a stock rising far above what you think is reasonable, then you are not 
a victim, you are a winner. You are free to sell, and you will often be hitting 
a bid from the syndicate if you do. And if you buy the stock at an inflated 
price without doing your homework, knowing nothing about its underlying value, 
then you are a gambler, not an investor. You are relying on a market signal 
which shouldn't exist. You only have yourself to blame if the 
bet goes sour.</p>
<p>The best regulatory approach to this is to provide good disclosure about the 
distribution of shareholdings in a company. The SFC does that with its 
occasional concentration warnings, but usually only after a price has been 
ramped - they don't normally investigate and issue warnings purely because of 
apparent concentration. Webb-site has an ongoing
<a href="../ccass/cconc.asp">CCASS Concentration Analysis</a> of the 
distribution of shares in the clearing system. While most CCASS Participants are 
not beneficial owners, this does provide some guide to the diversity of 
shareholders in a stock. Webb-site also occasionally publishes
<a href="../dbpub/subject.asp?c=106">Bubble Warnings</a> when time permits. </p>
<h3>Type 3: fixing the close</h3>
<p>In another type of market manipulation offence known as &quot;fixing the close&quot;, almost every day of the week, we note a last-minute small 
transaction, or a small bid or offer, in one or more of the 30-40 small-cap stocks we hold, 
shifting the 
price up (or sometimes, down) by a few ticks (a tick being the minimum increment 
or decrement in a stock price). This, the SFC says, fools tomorrow's investors into paying more (or selling for less) than the previous price. Why should that be the case? Nobody has to pay more for a stock, 
or sell it for less, than they think it is worth.</p>
<p>When you have small, thinly-traded stocks with wide bid-offer spreads, the 
price can bounce around between the bid and the offer like a ping-pong ball. For 
example, if it is bid at $0.48 and offered at $0.52, it is just as likely to 
close at $0.48 as it is at $0.52, an 8% range, depending on where the last trade 
is printed. There is no unique &quot;correct&quot; market price. If the price stands at 
$0.48 a minute before the close, and someone then puts in a single board-lot order at $0.515, then 
if nothing else happens, the last 
quoted price will be 7.3% higher than $0.48, but 1.0% lower than $0.52. That 
doesn't make the closing price in any way &quot;wrong&quot; or misleading - it is just a 
closing price, and is in fact closer to the mid-point between what other bidders 
are willing to pay and what other sellers are willing to offer. In that sense 
the manipulation results in a &quot;fairer&quot; price.</p>
<p>If investors place any reliance on the previous day's prices, when 
judging what bid or offer to make the next day, then they should be looking at 
the VWAP - the volume-weighted average transacted price, not the closing price. 
Webb-site calculates VWAP daily for each stock - just enter the stock code at 
the top of any page and choose &quot;Raw Prices&quot;.</p>
<h3>Type 4: volume inflation</h3>
<p>Another type of market manipulation offence involves not prices, but volume. 
A group of closely related traders will place similar or matching bids and 
offers, executing trades without increasing or decreasing their combined 
shareholdings, and thereby raising the volume and number of reported trades. 
Here, the offence relies on the implicit view that investors are entitled to 
regard past volume as a guide to future volume. But why should that be the case? 
In individual stocks, and across an entire market, volume can ebb and flow. If 
everyone wakes up one morning and is happy with what they own, then there will 
be very little volume. If a popular stock has been accumulated by long-term 
investors who see value in it, then its volume may shrink until one of them is 
willing to sell. If there is a lot of uncertainty about the future of a company, 
good or bad, then volume will usually increase along with volatility. So all 
that investors can assume about volume is that in the long-run it usually is 
proportionate to the number of freely-held shares or &quot;free float&quot; (outside of 
directors and controlling shareholders). It is irrational to assume that a 
substantial increase from the long-run average is sustainable, and that reliance 
should not be encouraged. </p>
<p>By making volume-inflation an offence and then occasionally prosecuting, 
lawmakers and regulators have created an expectation that investors should be 
able to depend on reported volume as a guide to future volume. They shouldn't. 
Free float is a guide to potential volume, and that is about all.</p>
<h3>Derivative fraud offences</h3>
<p>In our view, the only victims and wrong-doing arising from the above 
activities is when there is a &quot;derivative fraud&quot; against persons who are not 
unrelated buyers, sellers or holders of the stock, but are holding some other financial 
instrument which is priced by reference to the stock, or are receiving 
fraudulent advice in relation to the stock. For example, if someone 
inflates the market price of a stock in order to boost the value of a mutual 
fund, and then redeems units in that fund or collects a performance fee as 
manager of the fund, then he has defrauded the fund holders.</p>
<p>Another example is where someone depresses a stock price and then gets his 
listed company to grant share options exercisable at the depressed price. That's 
a fraud against the company and its shareholders.</p>
<p>A third example is when a stock or group of stocks is momentarily depressed 
in order to trigger a &quot;knock-out&quot; in a related option (when a target price is 
reached), such as a
<a href="http://www.hkex.com.hk/eng/prod/secprod/cbbc/understand.htm" target="_blank">
Callable Bull/Bear Contract</a>. There, the fraud is against the contract 
holders, but not against people who were lucky enough to buy stock at depressed 
prices in the market.</p>
<p>A fourth example is where someone who is involved in a stock-ramping scheme 
advises clients to buy into it - otherwise known as a boiler-room scam. There, 
you have fraudulent advice to clients.</p>
<p>In all such cases, with sufficient evidence, prosecutions for fraud should be 
brought, and that is where the focus on trading-related offences should lie.</p>
<h3>Shill bidding in auctions, and eBay</h3>
<p>Outside of stock markets, a similar area of misguided legislation in some 
places around the world relates to
<a href="http://en.wikipedia.org/wiki/Shill" target="_blank">shill bidding</a> - 
that is, bidding for your own items in an auction using a &quot;shill&quot; - a nominee or 
different name. This is similar to what the SFC might call a &quot;false bid&quot; in the 
market from someone who is selling shares, except that there is usually only one 
item in an auction rather than the continuous auction in markets. Again, if you want to bid for an 
auction item, and know what something 
is worth to you, then why should it matter what someone else bids for it, shill 
or not? You don't have to outbid them if you don't want to. If the seller wins 
the auction, he usually incurs costs and has to re-auction.</p>
<p>A buyer shouldn't expect other people's bids to tell him what the item is 
worth to him or what it might resell for. Yet in many countries it is an offence 
to bid in your own auction. Recently a UK eBay seller set a world precedent by
<a href="http://www.theregister.co.uk/2010/07/05/ebay_shill/" target="_blank">
pleading guilty</a> to bidding for his own items on eBay, saying he didn't know 
that was illegal - and why should it be? He had also committed fraud by clocking 
back a minivan's odometer, but that is a different offence.</p>
<p>Amazingly, online auction leader eBay has a
<a href="http://pages.ebay.com/help/policies/seller-shill-bidding.html" target="_blank">
shill bidding prohibition policy</a> which defines shill bidding far more 
broadly as &quot;when <u>someone a seller knows</u> bids on the 
seller's item. This includes family members, friends (including online friends), 
roommates or employees.&quot; That's even if the person is bidding for their own 
account and not on behalf of the seller. eBay says they don't allow shill 
bidding because &quot;people the seller knows might have information about the item 
that other members don't, which might give them an unfair advantage.&quot; How, 
exactly?</p>
<p>Let's look at both cases.</p>
<ul>
	<li>If the friend has positive information, then she might bid higher 
	than those without it, and win the auction. The winner gets a &quot;better&quot; item 
	than the one described in the listing, which just means that the seller 
	might receive a lower price than if all bidders had that positive 
	information, and can only blame himself.</li>
	<li>If the friend has negative information, then the item is worse 
	than described (e.g. faulty or defective) but the winner has recourse for 
	fraudulent misrepresentation, having bid based on the listed description. 
	That's true whether or not there is shill bidding. </li>
</ul>
<p>Either way, it is hard to see how the shill bidding in itself disadvantages 
other bidders. In reality, it is almost impossible for eBay to prevent shill 
bidding, since it doesn't know who you know, and by claiming to prohibit shill 
bidding, eBay creates unreasonable expectations from members that it will be 
successful in enforcing the policy. If anything is deceptive here, it is the 
policy itself. It would be a far more sensible approach to remind members that 
&quot;the seller, or someone the seller knows, may be bidding in this auction&quot;. Real 
bidders would probably still bid what the item is worth to them.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=114">Company & securities law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=167">Market manipulation</a></li>
				
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