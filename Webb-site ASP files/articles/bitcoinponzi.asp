
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
</style>
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

<script type="text/javascript">document.title="Bitcoin: the World's first decentralised Ponzi scheme";</script>

	<div class="summary">So long as we have governments with the power to tax and spend in their own currencies, digital pseudo-currencies will never gain traction. Bitcoin and its imitators are a zero-sum game in which the sum of all fiat currency paid for it is the sum of all fiat currency received for it, excluding mining costs. The earlier participants are now cashing out the billions that newcomers are putting into this distributed Ponzi scheme. Play it for entertainment value if you want, but remember that you are purely betting on the greater stupidity of others.</div>

<h2 class="center">Bitcoin: the World's first decentralised Ponzi scheme<br>
<span class="headlinedate">14 December 2017</span></h2>

<p>Let's try to explain, in simple terms, why Bitcoin and other digital 
pseudo-currencies will fail. Bitcoin is the World's first distributed, 
decentralised
<a href="https://en.wikipedia.org/wiki/Ponzi_scheme" target="_blank">Ponzi 
scheme</a>. No single operator is running it, and everyone has a chance to 
participate in it, but its value is determined purely by the weight of money 
coming into it and the willingness of holders to sell it. Like any Ponzi scheme, 
earlier participants came in at lower cost, and are now receiving much 
of the billions of dollars (yes, really) that newcomers are putting in.</p>
<p>Some members of the scheme spend their time telling their 
friends how they should get in on this Big New Thing and how much money they 
have already made "on paper", or more accurately "on screen". If your Bitcoins 
are now "worth" more than you paid for them then you may feel successful, but if 
you haven't yet cashed out as much as you've put in, then you're still a 
potential victim. On the other hand, if you've got your cash back or more, then 
you're already a paid-up and paid-out member of the Bitcoin Ponzi Scheme. And 
unlike <a href="https://en.wikipedia.org/wiki/Bernard_Madoff" target="_blank">
Bernie Madoff</a>, you're probably not going to jail, although some of the 
self-serving promoters of Bitcoin are skating dangerously close to that if it 
can be proven that they knew their claims were false and/or were simultaneously 
selling. Also, unlike the
<a href="https://en.wikipedia.org/wiki/Jeffry_Picower" target="_blank">
beneficiaries</a> who cashed out of Madoff's funds before he crashed, you 
probably won't have to pay anything back. That's the beauty of a decentralised 
Ponzi scheme.</p>
<p>Most of the larger participants will privately admit, if only to themselves, 
that Bitcoin is a bubble, but they also believe that they can get out before it 
crashes, or don't much care because they have already cashed out far more than 
they put in. But just remember this: Bitcoin is essentially a
<a href="https://en.wikipedia.org/wiki/Zero-sum_game" target="_blank">zero-sum 
game</a>. At any point in time, the cumulative sum of all net cash put in by losers will 
equal the cumulative sum of all net cash taken out by winners (excluding mining costs).</p>
<h3>"But banks are awful - there must be a better way"</h3>
<p>Millions of smaller participants, perhaps holding the not-unjustified view 
that the World's banking systems and governments have failed them, think that 
Bitcoin or other crypto-tokens are the future of money, some kind of utopian 
"end of fiat currency" scenario in which we will all trade with each other in 
units of "crypto-currencies" and take back control of our financial lives. We're 
here to tell you, for reasons explained below, that as long as the World has governments with the power to tax 
and spend, that isn't going to happen. Citizens should instead pressure their 
governments to stop the insane amount of interference in the banking system 
which has kept it so difficult and expensive for honest people to wire money, 
open accounts and do business, particularly when they are running small 
businesses. Banks should not be expected to act as policemen, particuarly now 
that Governments are
<a href="https://en.wikipedia.org/wiki/Common_Reporting_Standard" target="_blank">
getting more access</a> to their customers' data.</p>
<h3>No, it's not a currency</h3>
<p>To be viable as a currency, something must be both a medium of exchange and a 
store of value. These are mutually independent criteria: one cannot be satisfied 
from the other. If a currency doesn't have some intrinsic value relative to 
real-world assets or liabilities, then even if you can wire it around the world 
in minutes, it's value will fluctuate based on the willingness of others to take 
it off your hands and nothing else. It won't be a reliable store of value, so it 
will be tossed around like a hot potato. Any merchant who accepts it will 
immediately convert it into a fiat currency to avoid the risk of holding it.</p>
<p>Governments no longer guarantee the exchangability of their currencies for 
gold, silver or other rare atomic elements. They instead issue "fiat" 
currencies, basically IOUs, the value of which (measured in other currencies, or 
the goods and services it can buy) can also crash if they print too much - as
<a href="https://en.wikipedia.org/wiki/Hyperinflation_in_Zimbabwe" target="_blank">
Zimbabwe did</a>. A fiat currency is only as good as the country which issues 
it. However, a government levies taxes in the same currency (creating 
liabilities for taxpayers), and spends that money to pay civil servants and 
provide citizens with basic goods and services, such as education, healthcare or 
public roads, or just hands it out as welfare that its poorer citizens can 
spend. A government also measures business profits and salaries in the same 
currency - giving currency its third major function, as a unit of account. You 
won't see companies or people filling out their tax returns in Bitcoins.</p>
<p>So a government (particuarly an elected one) has an inherent incentive not to 
dramatically devalue its currency, destabilising its economy with hyperinflation 
and reducing the real value of both its tax collections and its expenditures. 
Situations like Zimbabwe are the exceptions that prove the rule, and almost 
always result in the overthrow of the government involved. Governments therefore 
aim to manage the quantity of money so that there is just a modest incentive to 
spend it or lend it; many central banks have declared targets of 2% inflation 
and some (notably the
<a href="https://en.wikipedia.org/wiki/Federal_Reserve_System" target="_blank">
US Federal Reserve</a>) have a dual mandate of maximising employment. </p>
<p>By comparison, Bitcoin isn't issued by any Government or any single entity. 
Nobody stands behind it, and its rate of creation is determined not by inflation 
targets but by a simplistic formula which halves the rate of production every 4 
years. Indeed, because supply does not expand to meet demand, Bitcoin has been 
going through hyper-<em>deflation</em> - the price of everything measured in 
Bitcoin has been plummeting, making it irrational to spend Bitcoin unless you 
expect it to decline in value. So perversely, anyone who has the confidence that 
this is the future of currency is unlikely to spend it.</p>
<p>Incidentally, that formula for the mining rate, like every other aspect of a 
distributed system, is only set by consensus; it is perhaps only a matter of 
time before the consensus, out of rational self-interest, decides to abandon the 
software-imposed cap of 21 million Bitcoins and increase the reward for "mining" 
it, once the majority of operators have cashed out enough from the Ponzi scheme 
to make that attractive. What makes you think that a global collective of 
miners, without a country or an economy to run or an election to win, will not 
at some point begin to debase their "currency"?</p>
<h3>"But its value is its utility"</h3>
<p>Some Bitcoin proponents say that its value is derived from its utility as a 
medium of exchange - but that just takes you round in an infinite loop, because 
to be able to exchange value for goods and services, a currency must have a 
widely-accepted, stable value on its own. And even if that utility were there, 
the fees for transactions have begun rising, make Bitcoin unviable for small 
transactions. This has also prompted a split within the mining community (known 
as a "hard fork"), with a new variation in the software to allow more 
transaction capcity in every 10-minute settlement run. The result is that each 
old Bitcoin token on 1-Aug-2017 split into a current Bitcoin token and a "<a href="https://en.wikipedia.org/wiki/Bitcoin_Cash" target="_blank">Bitcoin 
Cash</a>" token, and there is no reason why that can't happen again.</p>
<p>The combination of price volatility and transaction fees has also resulted in 
some early adopters such as Valve Corp (operator of the Steam gaming platform)
<a href="https://steamcommunity.com/games/593110/announcements/detail/1464096684955433613" target="_blank">
dropping it</a> as a means of payment.</p>
<h3>"But it costs money to mine it"</h3>
<p>Other proponents - John McAfee,
<a href="https://www.cnbc.com/2017/09/13/john-mcafee-challenges-jamie-dimon-bitcoin-skepticism.html" target="_blank">
for example</a>, argue that Bitcoin has value because it costs money to "mine" 
it in enormous server farms, burning Gigajoules of electricity every second in 
the "proof of work", literally creating hot air. That, again, is a false and 
circular argument, because the only reason that so much energy and hardware is 
being deployed to heat the air is because the price of Bitcoin is so high, and 
the only reason it is so high is because so much real money is being used to buy 
Bitcoins.</p>
<p>The key to understanding this is to understand that the Bitcoin 
software sets the "difficulty" of a cryptographic puzzle so that it is solved by 
brute force every 10 minutes on average. The more machines working on it, the 
higher the difficulty is set.</p>
<p>In more detail, the algorithm that all Bitcoin miners run is a distributed 
lottery in which each machine is performing random "hash" calculations on a 
"block" of transaction data, and the first machine to produce a hash-value below 
a certain target "wins" the mining reward, currently 12.5 new Bitcoins, plus a 
currently-smaller amount of existing Bitcoins deducted as fees from the 
transactions. Each 10-minute block only has room for a certain number of 
transactions, so the fees are set by bids attached to the submitted 
transactions. Indeed, the only thing that you can <span class="auto-style1">only</span> 
buy with Bitcoin is the transaction confirmation.</p>
<p>The first 1,612,800 Bitcoins (up to
<a href="https://blockchain.info/block-height/32255" target="_blank">block 32255</a>) 
were generated on a single PC in 2009 with a "difficulty" level of 1. Today 
hundreds of thousands of machines are running the same software, with a 
difficulty level on
<a href="https://blockchain.info/block-height/499035" target="_blank">block 
499035</a> of 1.59 trillion. But if the price of Bitcoins drops, then machines 
will be turned off or used to mine another kind of cryto-token, and the 
difficulty level will drop again, reducing the mining cost in response. So it is 
the price of Bitcoin that drives the mining cost, not the other way around, and 
the price is determined by the money flowing into the Ponzi scheme, not by the 
cost of mining. If only the same amount of energy were being devoted to more 
useful computational tasks, such as
<a href="http://folding.stanford.edu/diseases/" target="_blank">protein folding</a>. 
For more on the mechanics and origins of Bitcoin and its inherent flaws, see our 
article <a href="bitcoinhole.asp">The Hole In Bitcoin</a>, 
4-Nov-2013.</p>
<h3>It can melt down, but you can't melt it down</h3>
<p>You won't find any pictures of Bitcoins in this article, because unlike the 
mass media, we don't want to mislead you into thinking that Bitcoins are shiny, 
golden and metallic and have some kind of intrinsic value. Bitcoins are just 
256-bit sequences of 1s and 0s, or 32-byte numbers. Nothing more than that. When 
the market crashes, you can't melt them down or use them as jewellery or for 
electrical circuits. You can just print them out and wonder why you paid so much 
for a collection of 1s and 0s. The few physical coins that you see in stock 
photos were just produced as a promotional gimmick. Some are sold "empty" and 
others have inside them a printed private key for Bitcoins, like a fortune 
cookie. Anyone who has that key can transfer the Bitcoins electronically, 
leaving an empty physical coin.</p>
<h3>But what about other uses?</h3>
<p>Readers may have observed that Bitcoin seems to have found an application, or 
a partner, in crime. For example, producers of ransomware software have locked 
down computers and then demanded that the victims purchase and then send 
Bitcoins to a designated, anonymous network address. This is certainly an 
application, but for its utility, criminals still depend on ultimately being 
able to exchange the Bitcoins for real-world goods and services, or equivalently 
for fiat currency. So although Bitcoin can be used to skirt around the 
burdensome anti-money-laundering regulations or capital controls as long as it 
remains in the Bitcoin network, this is rather like entering an underground 
railway system - you can't stay there forever. At some point, you have to 
resurface. And if only criminals are using the network, then it's going to be 
rather difficult to get out without being noticed. So the ransomware operators 
can buy illegal drugs with Bitcoin, but how are the drug sellers going to 
convert their Bitcoins into cash or anything else?</p>
<p>Reduced to this level, Bitcoin is just an intermediary system between 
money-service operators, with victims exchanging cash for Bitcoins, and 
criminals trying to convert received Bitcoins back into cash without being 
noticed. No wonder, then, that most of the World's governments have reacted by 
classifying any exchange that converts fiat currency to or from Bitcoins as a 
money-services operator, requiring the usual "know your client" obligations that 
are imposed on banks and remittance firms, thereby imposing similar 
administrative costs which are reflected in the conversion fees. These 
regulations severely limit Bitcoin's potential as a payment system for crime.</p>
<h3>Join if you want</h3>
<p>We don't doubt that some people are getting tremendous entertainment value 
just watching the price of a small bet (relative to their net worth) on Bitcoin 
go up and down. It's no different to a night at the casino or the racetrack in 
that respect. As long as you accept that you could lose everything you bet, you 
too can participate in the World's first decentralised Ponzi Scheme (or any of 
its imitators), but just remember that you are purely betting on the greater 
stupidity of others.</p>

<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=120">Crypto-tokens</a></li>
				
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