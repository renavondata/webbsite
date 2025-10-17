
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

<script type="text/javascript">document.title="Consumer Council's own-goal";</script>

	<div class="summary">In a spectacular own-goal against consumers, the Hong Kong Consumer Council has called for support of the "no-surcharge" rule for credit and charge cards, an anti-competitive rule which other countries have outlawed. It maintains higher consumer prices, boosts card issuers' profits, encourages consumer debt and distorts the payment system against cash and debit cards. It should be outlawed.</div>

<h2 class="center">Consumer Council's own-goal<br>
<span class="headlinedate">23 August 2008</span></h2>
<p>Last week, Hong Kong's Consumer Council issued a
<a target="_blank" href="http://www.consumer.org.hk/website/ws_en/news/press_releases/p38201.html">
press release</a> urging credit cardholders to say &quot;no&quot; to merchants imposing a 
surcharge on purchases. They pointed out that Visa, MasterCard and American 
Express all prohibit merchants from adding a surcharge on purchases made with 
their cards (the <strong>no-surcharge rule</strong>). If a retailer wishes to 
accept those cards, then it is contractually bound to play by those rules.</p>
<p>The Consumer Council has fallen into a trap and completely missed the core problem - which is that 
the rule is anti-competitive. They appear to be unaware that in other places the 
rule has been outlawed. In fact, the Council's call serves to boost credit 
card-issuers' profits and maintain higher sticker-prices for consumers. It's the 
first time we can recall the Consumer Council supporting an anti-competitive 
scheme. The no-surcharge rule also results in a cross-subsidy from those who pay 
by cash or bank debit cards (such as
<a target="_blank" href="http://www.eps.com.hk">EPS</a>) to those who pay by 
credit or charge cards, distorting the payments market in favour of the card 
systems.</p>
<h3>How the card systems work</h3>
<p>Each time you pay for something with a credit or charge card, the retailer or 
service provider (known as a <strong>merchant</strong>), does not receive the 
full price on the receipt. The price is &quot;discounted&quot; by the merchant's bank or
<strong>acquirer</strong>, typically by 2-3%, known as the <strong>merchant 
discount</strong>. In the case of credit card networks, the acquirer in turn 
takes a slice and pays the rest as an <strong>interchange fee</strong> fixed by 
the card network (e.g. Visa or MasterCard), which in turn pays that fee to the 
bank which issued your credit card. The network also charges a small processing 
fee to the acquirer. In the case of American Express, which issues its own 
cards, it simply keeps the merchant discount. You can see the
<a target="_blank" href="http://usa.visa.com/download/merchants/Interchange_Rate_Sheets.pdf">
US Visa interchange fees</a> and
<a target="_blank" href="http://www.mastercard.com/us/wce/PDF/MasterCard%20Interchange%20Rates%20and%20Criteria%20-%20April%202008.pdf">
US MasterCard interchange fees</a> online. They vary depending on the type of 
transaction, the type of the merchant and the type of the card. Regardless of 
card type, merchants are obliged to accept all credit cards on that network. The 
US interchange fees were not published until about 2006, and the Hong Kong fees 
are still a network secret.</p>
<h3>Consequences of the no-surcharge rule</h3>
<p>For the majority of merchants, who comply with it, the no-surcharge rule 
means that consumers do not normally get a lower price if they are willing to 
pay cash, or use a lower-cost payment system, such as bank debit cards, which 
usually have a flat fee rather than a percentage fee. Therefore the rule tilts 
the market for payment systems in favour of credit and charge cards, and give 
the card systems a greater share of consumer purchases than would otherwise be 
the case. The processing cost of a cash payment for the retailer is no more than 
the cost of taking it securely to the bank, and they get instantly available 
funds rather than having to wait for the bank or charge-card companies to credit 
their account a few days later.</p>
<p>Retailers have to make their profit somewhere, so if they make less profit 
from card purchases, they have to make more profit from cash and debit-card 
purchases. As a result, sticker prices are higher than they would otherwise be.</p>
<p>The no-surcharge rule also reduces competition for the level of interchange 
fees, because consumers don't get a lower price if they use a different card 
network, whereas the card-issuing banks will sign up with the payment network 
which offers them the highest interchange fee. So payment networks compete to 
pay the banks the highest fees, driving up the merchant discounts charged to 
retailers. Only in the extreme will you find that some retailers simply refuse 
to sign up with payment networks (in particular, American Express) because of 
the high merchant discount. However, most retailers cannot afford to ignore the 
two major credit card networks Visa and MasterCard, as there will always be 
people who want to buy on credit.</p>
<h3>Reward schemes</h3>
<p>There is of course competition between card-issuing banks to lure customers 
for their credit cards, in the form of competing points schemes (typically 
convertible into a range of goods, or into air-miles) or even cash rebates 
(typically 0.5%), where they pass on some of the interchange fees to the 
cardholder. However, that doesn't eliminate the fact that they will choose the 
payment network which gives them the highest interchange fees, which are 
ultimately passed on to the consumer. Visa and MasterCard both operate premium 
card schemes which carry higher interchange fees (allowing issuers to give 
higher rewards), and these higher fees are ultimately paid by merchants and 
cross-subsidised by those consumers who use cheaper payment systems.</p>
<p>Under the no-surcharge rule, the reward schemes incentivise consumers to use 
the card systems rather than cash or debit cards, as the price is the same. This 
also is likely to result in higher levels of consumer credit card debt, as 
consumers do not see their spending in an immediate reduction of their bank 
balances, and succumb to the temptation not to pay in full when the bill comes, 
or sometimes, simply forget to pay, resulting in lucrative charges by the 
issuing bank and high interest charged from the transaction date onwards.</p>
<h3>Australian example</h3>
<p>This anti-competitive system is perfectly legal in Hong Kong, because we 
still don't have a competition law, but in other markets, such as Australia, the 
EU and the US, the whole system has
<a target="_blank" href="http://en.wikipedia.org/wiki/Interchange_fees">come 
under scrutiny</a> and action from competition regulators. In 2000 in Australia, 
the Competition and Consumer Commission and the Reserve Bank of Australia 
published a
<a target="_blank" href="http://www.accc.gov.au/content/item.phtml?itemId=306324&amp;nodeId=6a68084d29bfcfaeb1517122aa02e184&amp;fn=Debit%20and%20Credit%20Card%20Schemes%20in%20Australia.pdf">
study</a> which identified the same problems with the no-surcharge rule and with 
interchange fees, which at the time averaged 0.95%, while the merchant discount 
averaged 1.78%. Consequently, in 2002 the RBA
<a target="_blank" href="http://www.rba.gov.au/PaymentsSystem/Reforms/CCSchemes/FinalReforms/index.html">
required</a> that interchange fees be reduced to reflect actual processing 
costs, and removed the &quot;no surcharge&quot; rule. Australian interchange fees have 
since
<a target="_blank" href="http://www.rba.gov.au/MediaReleases/2006/Pdf/mr_06_08_benchmark_calc_credit_card.pdf">
come down</a> to around 0.5%. American Express, being a proprietary system, was 
outside of the ruling on interchange fees, but
<a target="_blank" href="http://www.rba.gov.au/PaymentsSystem/Reforms/CCSchemes/amex_undertaking_01092004.pdf">
undertook</a> to scrap its no-surcharge rule.</p>
<h3>Consumer Council: take action</h3>
<p>So instead of supporting the no-surcharge rule, the Consumer Council should 
be urging the Government to outlaw it, either directly or through the
<a target="_blank" href="http://www.cedb.gov.hk/citb/ehtml/competition.htm">proposed 
competition law</a> if it is promptly enacted. It is unclear whether the card 
networks also prohibit a discount for cash (they keep their rule books secret, 
and the rules prohibit disclosure by member banks), but if there is a 
&quot;no-discount&quot; rule, then that rule should also be outlawed, as a cash discount 
is just the flip-side of a card surcharge.</p>
<h3>Consumers: take action</h3>
<p>If you are shopping, and your retailer (like most major chains) plays by the 
card network rules and will not make a surcharge for credit cards, then if you 
are willing to pay cash or by local debit card (such as EPS), you should demand 
a discount. There is no reason why you should hand a higher profit margin on 
your transaction to a retailer who is clearly willing to settle for a 2-3% 
smaller profit if he accepts a credit or charge card. All you are doing is 
cross-subsidising those who pay with credit cards.</p>
<h3>Other countries: take note</h3>
<p>This problem is far from unique to Hong Kong. Many other countries have the 
same issue. Media and populist politicians are often easily misled into thinking 
that credit card surcharges must be &quot;bad&quot; when in fact they benefit consumers 
overall by pushing down cash prices as well as pressuring credit card 
interchange fees through competition. The Hong Kong Consumer Council fell into 
that trap, and believe it or not, last year Ireland was even
<a target="_blank" href="http://www.entemp.ie/press/2007/20070806.htm">planning</a> 
to ban credit card surcharges! The card networks and banks must have celebrated 
that one! This year, however, they appear to have
<a target="_blank" href="http://www.irishtimes.com/blogs/pricewatch/2008/05/01/a-bad-news-story/">
put it on ice</a>.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12920">CONSUMER COUNCIL</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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