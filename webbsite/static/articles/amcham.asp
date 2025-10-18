
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

<script type="text/javascript">document.title="Booms, Busts and Dollarisation";</script>

	<div class="summary">A presentation by David M. Webb to the American Chamber of Commerce in Hong Kong.</div>

<h2 class="center">Booms, Busts and Dollarisation<br>
<span class="headlinedate">3 November 1998</span></h2>
<p>Thank you for your kind introduction and for hosting this event today.</p>

<p>In my presentation today I am first going to cover the background to our current
currency regime, and the consequences of the peg on prices in the economy. Then I will
cover the alternative regimes, and why I think dollarisation is the best solution for Hong
Kong.</p>

<p>As I will explain, dollarisation would not only reduce the risk premium associated with
lending and investing in Hong Kong dollar assets, but would also serve to reduce the
volatility that we have seen in asset prices, which has given rise to the boom and bust
cycles of recent years.</p>

<p>There are essentially three options for Hong Kong to choose from in its approach to the
currency: </p>

<ul>
  <li>A quasi-currency board system, as we have had since 1983</li>
  <li>A floating Hong Kong Dollar, as we had between 1974 and 1983</li>
  <li>A currency union with a major trading power, known as &quot;dollarisation&quot;</li>
</ul>

<h3>Background</h3>

<p>The &quot;peg&quot;, or more formally the linked exchange rate mechanism, was
introduced in some haste as a solution to the run on the Hong Kong dollar which
accompanied uncertainty surrounding the future of Hong Kong prior to the announcement of
the Joint Declaration. Against the US dollar, the currency depreciated by 36% from 6.1 at
the end of August 1982, just before Prime Minister Thatcher visited Beijing, to a record
low of 9.6 on 24th September 1983. During this period, several banks faced difficulties
and the property and stock markets crashed. Various people have been credited as the
&quot;architects of the peg&quot; but it is worth noting that the peg as a concept was
nothing new, since the world's currencies had been pegged to each other under the Bretton
Woods agreement until 1972.</p>

<p>Slide 1 shows the fundamental mechanism for issuance of the currency. The note-issuing
bank must deposit a corresponding amount of US dollars with the Exchange Fund at the fixed
rate of one US dollar for every 7.8 Hong Kong dollars issued. In exchange for the deposit,
the bank is given a non-interest bearing Certificate of Indebtedness. It is non-interest
bearing because the note-issuing bank does not have to pay interest on the currency.</p>

<p><u>Slide 1</u></p>

<h3 class="center">The Process of Banknote Issuance in Hong Kong</h3>
<img class="center" alt="" src="../images/peg.gif">

<p>In currency board theory, when there is a shortage of Hong Kong dollars in the system,
interest rates will rise, and banks will turn in US dollars for Hong Kong dollars, thereby
satisfying that demand and causing interest rates to fall back. Conversely, when there is
a surplus of Hong Kong dollars, interest rates will fall, and banks will redeem Hong Kong
dollars for US dollars.</p>

<p>Since 1983, there have been a number of alterations to the system, in 1988, 1996 and
most recently the &quot;7 Measures&quot; this year. The HKMA called this process a
&quot;purification&quot; of the Peg, but in fact it has gradually moved further away from
the strict discipline of a currency board. It now takes on many of the attributes of a
central bank which would be absent from a pure currency board system. This includes
intervention in the money markets to smooth interest rates, and intervention in the
foreign exchange market.</p>

<p>Whether this is a good or bad thing is a subjective matter. On the plus side, the
ability to stabilise interest rates and act as lender of last resort should strengthen
perception of the banking system, which increases the confidence in the currency. On the
negative side, intervening in this way means that the discipline of an orthodox currency
board, namely higher interest rates to reverse capital outflows, and lower rates to repel
capital inflows, is invoked less often, which can lead to questions about whether the
mechanism works, and to excessive inflows and outflows of capital.</p>

<p>In fact, in the modern era of floating currencies and large international capital
flows, there are only a few examples of operational currency boards, namely Hong Kong,
Argentina, Lithuania, and Djibouti, which are linked to the US dollar; Estonia and
Bulgaria, which are linked to the Deutschmark; and Brunei which is linked to the Singapore
Dollar. With the exceptions of Brunei and Djibouti, all of these pegs were introduced in
response to crisis conditions. Therefor the development of Hong Kong's unique flavour of
currency board to deal with its particular political and economic circumstances has been
highly experimental and reactionary in nature.</p>

<p>It seems highly unlikely to me that the government had designed its
&quot;7-Measures&quot; plan to stabilise interest rates prior to resorting to the drastic
tactic of stock market intervention in August. Not having invented the economic
nut-cracker, they reached for the sledgehammer.</p>

<h3>The government abandoned a strict currency board long ago</h3>

<p>The government has been intervening in the foreign exchange market for many years in a
process known as sterilisation of capital inflows. During the last several years, the
government has been running a huge budget surplus. This is almost as undesirable as a
large deficit, because it has been generated in large part through a process of asset
inflation leading to higher income from land premiums, rates, stamp duty and from profits
tax on developers and landlords. We should not allow claims of &quot;Asian contagion&quot;
to cloud the fact that Hong Kong's economy was already structurally unsound.</p>

<p>In fiscal 1997, salaries tax accounted for only 14% of total government revenue.
Betting duty accounted for another 6%, so if you are an average income earner who gambles,
smokes, drinks and drives you may well be paying the government more in duties than in
salaries tax. The government has become hooked on land-related income. They can now either
engineer a new asset boom to generate revenue, or they can seize the opportunity to
restructure the tax base and put a heavy damper on the property cycle.</p>

<p>The budget figures are shown in Slide 2. Excluded from the surplus, for political
reasons, is the 50% share of net income from land sales between 1985 and the handover,
which was set aside for the SAR Land Fund. This was formally transferred to the government
at the handover, so all future income from land sales will go directly into the revenue
account. In the 15 months up to the handover alone, payments into the Land Fund amounted
to HK$65bn.</p>

<p><u>Slide 2</u></p>
<img class="center" alt="" src="../images/GovSurp.gif">

<p>The cumulative fiscal surplus, including the Land Fund, grew from just HK$76bn in March
1991 to HK$457bn at the end of March 1998, equivalent to US$59bn.</p>

<p>As Hong Kong's economy heated up, more and more money flowed in. The demand for Hong
Kong dollars grew. As more US dollars were turned in for Hong Kong dollars, the government
was faced with two choices; either to test the currency board mechanism by allowing
interest rates to drop as liquidity expanded, or to &quot;sterilise&quot; the inflow by
selling its fiscal surplus for foreign currency. In a previous episode in late 1987 and
early 1988 the government authorised a possible charge on large bank deposits, in effect a
negative interest rate, but this was not used. The government has since opted to sterilise
the inflows, and so over time the bulk of the fiscal reserves have been converted to
foreign currency and held by the Exchange Fund.</p>

<p>In addition, the government, through the HKMA, has issued some HK$89bn of Exchange Fund
Bills and notes, which has the effect of borrowing from the market to absorb liquidity.</p>

<p>Slide 3 shows the combined balance sheet of the Exchange Fund and Land Fund, plus minor
accounts, at the end of June 1998. As you can see, after deducting the US dollars needed
to back the monetary base, that is, the notes and coins in circulation and the balance of
the banking system, all of the government's net financial assets were held in foreign
currencies. </p>

<p><u>Slide 3</u></p>
<img class="center" alt="" src="../images/GovNFA.gif">

<p>The problem with sterilisation in a pegged exchange rate regime is that if you don't
allow the peg to do its work and let interest rates fall, then you tend to attract even
more capital inflow. This pushes up asset prices. Slide 4 shows this process in action.</p>

<p><u>Slide 4</u></p>
<h3 class="center">Contribution of the Peg to Asset Booms and Busts<br><i>- Boom:</i></h3>
<img class="center" alt="" src="../images/Boom.gif">

<p>In a fixed exchange rate regime, all of the pressure of net inflows is placed on asset
prices through the banking system. Too much money chases a finite supply of assets, banks
are awash with liquidity, prices rise, attracting more capital inflow, and a speculative
bubble results. A key aspect of this effect, which I will return to later, is the fact
that prudential rules mean banks must balance their assets and liabilities in each
currency. Banks are nothing more than highly geared companies, typically 1000% geared,
which are allowed to take public deposits, and as such must balance their exposures
prudently. So, faced with an excess of Hong Kong dollars, they lend against Hong Kong
assets. There is not much demand for Hong Kong dollar borrowing overseas.</p>

<p>You can't blame banks for behaving in this way, since they are all on a mission to
maximise return on capital for their shareholders. The more they lend, the greater the net
interest income on their capital. As a system, they are allowed to lend three dollars to
customers for every one dollar they hold in liquid assets. This is known as the
&quot;multiplier effect&quot; and the only thing that prevents banks lending more is the
regulatory liquidity ratio and capital adequacy rules.</p>

<p>Given a choice, they might wish to lend the money to overseas borrowers in less
overheated markets and different currencies, but they are restricted by the need to
balance their currency exposure. If their excess liquidity is in Hong Kong dollars, then
they will lend in Hong Kong dollars.</p>

<p>Slide 5 shows what happens when this effect reverses, as it has done recently. Capital
outflows result in tightening liquidity. Interest rates rise, and credit contracts.
Foreign banks grow nervous about lending, and are often faced with higher inter-bank
funding costs, so they contract their loan books. Local banks react to falling asset
prices by doing likewise. Falling asset prices stimulate further capital withdrawals,
reinforcing the process.</p>

<p><u>Slide 5</u></p>
<h3 class="center">Contribution of the Peg to Asset Booms and Busts<br><i>- Bust:</i></h3>
<img class="center" alt="" src="../images/Bust.gif">

<p>We cannot talk about booms and busts in asset prices without recognising their
reflexive effect on the economy. Asset price cycles are closely interrelated with
inflation in the economy. The government charges more for land, developers charge more for
flats, buyers pay more in mortgages, and demand higher salaries from their employers.
Shops, hotels and restaurants increase prices to cover higher rents and salaries.
Inflation results. I don't need to explain to you how the effects work in reverse.</p>

<p>An additional aspect of the pegged exchange rate is that local firms, particularly
property firms, have been willing to take on US dollar borrowings on the assumption that
the peg remains. However, at a time of capital outflow and credit contraction by foreign
banks, this will have a greater impact as local firms look to refinance their loans in
Hong Kong dollars at the same time as a domestic credit crunch is underway. Recent days
have shown this in action with a well-known second-tier developer looking to local banks
for support.</p>

<p>Slide 6 shows the aggregate balance sheets of the Hong Kong banking system at the end
of July. We see that the system had net liabilities of HK$763bn in foreign currency to
banks outside Hong Kong. The figures are obscured because part of this would finance loans
to overseas customers or loans for use outside Hong Kong, but nevertheless they are
indicative of the dependency of the banking system on credit from overseas, which has been
shrinking rapidly, not least from Japan.</p>

<p><u>Slide 6</u></p>
<img class="center" alt="" src="../images/BalShtAllAI.gif">

<p>The HKMA does not disclose how much of its foreign currency assets are held as deposits
in the Hong Kong banking system and thereby reverse the effect of a liquidity drain. This
is an unpublicised intervention tool at their disposal, and could have a significant
effect in off-setting capital outflow. It is questionable whether such deposits should be
counted within foreign reserves as they are not easily withdrawn without creating pressure
on the banking system and therefor on the currency, and in my view these deposits should
be separately disclosed from foreign reserves.</p>

<h3>Floating as an alternative</h3>

<p>Now I want to move on to the second of the three options for the currency, the option
of floating. In a large economy with a strong domestic sector, there are certainly
arguments in favour of allowing excess capital flows to be absorbed by movements in
exchange rates. When demand for a currency rises, instead of feeding through into domestic
asset prices, the currency appreciates and goods become more expensive. Exports slow,
imports rise and the currency corrects.</p>

<p>However, Hong Kong is not a normal economy. In nautical terms, Hong Kong is like the
straits of Gibraltar are to the Mediterranean. We are a narrow bottleneck for massive
flows of import and export finances in and out of the PRC. We are also the main port of
entry for foreign investment into China, and I believe, we are the main depository for
corrupt capital from China. If you are going to take a bribe, you place it offshore where
it won't be seen. The same applies to the avoidance of foreign exchange controls. Most
profits from export manufacturing in Southern China end up back in Hong Kong, not in the
technically-insolvent mainland banks.</p>

<p>We act as a buffer for capital inflow to China. When a Hong Kong-based red chip issues
shares for foreign capital, it flows first into Hong Kong before eventually making it into
projects in the PRC. Not all of that money is needed to buy foreign equipment, so some of
it ends up in Chinese banks or in the foreign reserves of the PRC. Figures are not
published to tell us how much of the deposit base of Hong Kong represents mainland foreign
reserves.</p>

<p>In short, we are one of the most externalised economies in the world. Slide 7 shows how
our total trade volume as a percentage of GDP compares with that of the G7 industrialised
nations.</p>

<p><u>Slide 7</u></p>
<img class="center" alt="" src="../images/TradevGDP.gif">
<p>Based on trade alone, ignoring investment flows, we are 5 times more externalised than
Canada, and 17 times more externalised than the USA. Much of this trade is already done in
foreign currencies, but the fact that they flow through our banking system means that only
a small shift in the balance of trade can have a big impact on our balance of payments,
and so we could expect a volatile exchange rate as a free-floating currency.</p>

<p>Aside from the provision of premises, labour and a transport and communications
infrastructure, Hong Kong now has virtually no domestic economy. Since 1983 the majority
of the manufacturing base has shifted to the mainland, and trade flows with the PRC have
grown dramatically. Nearly all of our oil, gas, coal, food and durable goods are imported.</p>

<p>A floating exchange rate would result in volatile prices of these imported goods, which
would increase uncertainty in the economy. Attempts to smooth the exchange rate would be
hampered by the sheer volume of capital flows.</p>

<p>Perhaps the biggest risk associated with floating is also the reason that we pegged in
the first place, namely a run on the Hong Kong dollar. If we break the peg in good times,
it may not happen, but if we float and there is a serious run on the Hong Kong dollar,
then people will first try to convert to foreign currency deposits. The large switch out
of Hong Kong dollars would cause the banking system to go into currency imbalance,
carrying more foreign currency liabilities than assets. This could only be corrected if
the Monetary Authority simultaneously sold foreign reserves for Hong Kong dollars and
became a big depositor in the system.</p>

<p>Since Hong Kong dollar deposits are known to outweigh the foreign reserves by more than
2 to 1, as the conversion gathered pace, the reserves would drain away and confidence in
the currency would collapse. The possibility of devaluation causing currency losses in the
banking system would reduce confidence in it, and this in turn would cause consumer
capital flight. Banks would collapse and the government would have to take them over, as
it did in the early 70s and again in the early 80s. Consumers would watch their savings
devalue, and reduce their spending. Those with a Hong Kong dollar mortgage might feel
happier, but in a recession their Hong Kong dollar salaries would be unlikely to rise fast
enough to offset the higher interest rates of a credit crunch.</p>

<p>Mobility of capital increases with the mobility of people. The majority of the consumer
deposit base is held by the wealthier and more educated segment of society, many of whom
have secured foreign residency rights since 1983. So if anything the mobility of their
capital has increased, worsening the risk of capital flight.</p>

<p>The Monetary Authority could try to resist the outflow by holding back liquidity to
hike interest rates. However, interest-rate arbitrage will only take place if people are
confident that there will be no devaluation. If that virtuous circle is broken, it cannot
easily be repaired, as the UK showed in 1992.</p>

<p>No amount of hiking of interest rates can protect a currency in free-fall. This is
perhaps the reason that the HKMA shied away from repeating the 3-digit interest rate
experiment that happened last 23rd October. At that time, I estimated that if the HKMA did
not intervene to boost liquidity and reduce rates, then there was a 50% chance of the peg
breaking and devaluing by about 30% within the next 3 months. To offset such a risk, I
would need to earn 15% per quarter, which compounds to 75% per annum, on a Hong Kong
dollar time deposit. I walked down Des Voeux Road to see whether there were any queues
outside the banks. Clearly rates at that level are not economically sustainable and would
cause rapid loan defaults, so even the peg mechanism has its limits. Happily, in switching
my deposits to US dollars, I was in a minority, and the peg survived, for now.</p>

<p>The recent 7-point measures, while reducing volatility in the inter-bank interest rate
market, also mean that the interest-rate defence mechanism will be invoked less often,
which probably requires greater faith in the currency board system.</p>

<h3>Legal Tender</h3>

<p>Now I move on to the third option, that of dollarisation. To truly understand
dollarisation, we must first understand the concept of legal tender and how it relates to
the banking system. Legal tender is set by the law of the land. It is the currency by
which any creditor must accept settlement of any debt. For example, if you owe AmCham
HK$300 as a consequence of a deal struck under Hong Kong law, such as attending this
lunch, then you cannot tender US dollars in settlement - only HK dollars will do.
AmCham might agree to accept US dollars, but that would be up to them.</p>

<p>So a given money cannot truly be a currency unless it is declared legal tender. Without
this, a holder of that money cannot be sure of being able to use it to settle debts, and
the wheels of commerce grind to a halt.</p>

<p>Being legal tender is a necessary but not sufficient condition for a money to be a
practical currency. If people cease to have confidence in it, then they will start to
store their savings in a different currency, and may even denominate their transactions in
a different currency. This is happening in parts of Russia, where the legal tender is the
Rouble, people hold US dollars or Deutschmarks and only exchange them for Roubles when
they need to buy something. Even then, the seller will often accept the dollars in
payment. When dollars began to ran out, they recently started buying the next most liquid
commodity, which happens to be Vodka. So now people barter with it, and the government is
thinking of nationalising the Vodka factories so that they can control the new &quot;money
supply&quot;.</p>

<h3>Dollarisation in practice</h3>
<p><u>Slide 8</u></p>

<h3 class="center">Dollarisation</h3>
<img class="center" alt="" src="../images/DollariseNotes.gif">

<ul>
  <li>Law passes to make US$ legal tender for all debts</li>
  <li>On D-Day, re-denomination of all HK$ bank accounts (loans and deposits)
    overnight into US$ at 7.8 to 1</li>
  <li>All other debts re-denominated to US$, e.g. credit card, tax bill</li>
  <li>Public exchanges old HK$ notes for US$ notes during brief transition
    period. </li>
  <li>&quot;New Hong Kong Dollar&quot; legal tender coinage could be issued -
    each New HK$ worth 7.8 old Hong Kong dollars, giving 1:1 parity with US$, to avoid mental
    arithmetic.</li>
  <li>Retailers would re-price in US$. Deadline would be set for all vendors to
    price in US$ (or New HK$).</li>
</ul>

<p>Note: </p>

<ul>
  <li>Similar &quot;dollarisation&quot; process will take place in 11 countries
    in Europe as they convert from old currencies to the Euro, starting 1-Jan-99 over 3 years.</li>
  <li>Participating countries are not &quot;banana republics&quot;: Austria,
    Belgium, Finland, France, Germany, Ireland, Italy, Luxembourg, Netherlands, Portugal,
    Spain.</li>
</ul>

<p>There would be two principal aspects of dollarisation, as shown on Slide 8. First, a
small portion of our foreign reserves, about US$10bn, and maybe some more for spare cash,
would be converted into real US dollar paper money. This would be exchanged for the
&quot;certificates of indebtedness&quot; and cash held by the 3 note-issuing banks, who in
turn would arrange the free exchange of the Hong Kong dollar notes in public hands for US
dollar notes at the rate of 7.8 fixed by legislation. In addition, the small
&quot;clearing&quot; balances of banks held at the HKMA would also be converted into US
dollar money.</p>

<p>At the same time, legislation would be enacted to make the US dollar legal tender in
all current and future contracts and to settle all existing HK dollar liabilities. That
includes your salary, the amount you owe the gas company, the HK dollar amount you have
deposited with the bank, and the amount you have borrowed from the bank on your mortgage.
Overnight, the HK dollar assets and liabilities of the banking system would become
denominated in US dollars.</p>

<p>To appease national sensitivities, the Hong Kong dollar can remain in circulation in
coinage form, or possibly even a new note form, so long as it is freely exchangeable for a
100% backing of US dollars. Having our own coinage would eliminate the problem of shifting
large weights of the US coinage half way around the world.</p>

<p>A practical issue is that most people's mental arithmetic capabilities do not
extend to constantly dividing and multiplying by 7.8. It would also be inconvenient for
vendors to go on displaying two prices for their goods forever. It would therefor be
appropriate to consolidate the Hong Kong Dollar into a &quot;New Hong Kong Dollar&quot; at
the rate of 7.8 to 1. In this way, we could continue to circulate coinage and even notes
carrying our Bauhinia, and every New Hong Kong dollar would be worth one new US dollar.</p>

<h3>Money in banks</h3>

<p>When considering dollarisation, it is important to realise that money in banks is not
the same as legal tender. A deposit is nothing more than a loan to your bank, which helps
it to finance its lending activity. Although banks are required to retain a portion of
their assets in liquid assets to meet withdrawals, we cannot all &quot;have our money
back&quot; at the same time without bringing down the banking system. This is the case
regardless of whether our deposits are denominated in Hong Kong dollars or a foreign
currency.</p>

<p>Critics of dollarisation have suggested that to dollarise, all Hong Kong dollar
deposits would need to be backed by the government's foreign reserves. This is a fallacy,
since it pre-supposes that dollarisation would make the banking system vulnerable to a
full-scale capital flight. On the contrary, in the event of a crisis, I believe
dollarisation may well be the only solution that would prevent capital flight. Certainly
floating the currency would simply exacerbate flight. It is a sad fact that nationalistic
considerations mean the government would probably only take dollarisation as a last resort
rather than making the move in a calmer environment.</p>

<p>Even if there was an initial jump in the demand for holding US dollar notes, this would
quickly subside as people got used to the novelty and preferred to earn interest on their
savings. A temporary doubling of notes in circulation could easily be handled with a
temporary conversion of another US$10bn of foreign assets from the Exchange Fund.</p>

<h3>The Basic Law</h3>

<p>Article 111 of the Basic Law states that <i>&quot;the Hong Kong dollar, as the legal
tender in [Hong Kong], shall continue to circulate&quot; </i>and must be backed by a<i>
&quot;100% reserve fund&quot;. </i>There has been some debate about whether this allows
for dollarisation. I am not a PRC constitutional lawyer and cannot give you a view on
whether the inclusion in English of the word &quot;the&quot; before &quot;legal
tender&quot; excludes the possibility of a second legal tender, but it seems to me that in
the event of an emergency dollarisation, such niceties would be debated after the fact. A
benefit of a one-party State is that the National People's Congress can and will
approve amendments to the Basic Law if required to do so.</p>

<h3>Seigniorage</h3>

<p>One of the objections to dollarisation raised in the Government's &quot;Report on
Financial Market Review&quot; is that it would result in the loss of
&quot;seigniorage&quot; on the currency in circulation. Currently, the notes are backed by
deposits of US dollars with the Exchange Fund, which earns about HK$4bn a year in interest
on this money after costs of printing our own. Dollarisation would mean converting that
money into US dollar notes for circulation in Hong Kong, passing the benefit to the
Federal Reserve.</p>

<p>However, to some extent the seigniorage question is illusory. This is because in order
to collect the seigniorage on our own currency, we have to maintain excessively
large foreign reserves to
back it.</p>

<p>If we dollarise, then we will not need to keep a body-builder's reserves and
instead can slim down and spend these reserves on the development of Hong Kong.
Furthermore, the removal of currency risk would reduce the funding cost of businesses, and
this would probably more than compensate for the seigniorage through economic growth.</p>

<p>As a matter of practice, the current economic downturn will result in a yawning budget
deficit this year, and we will have to dig into foreign reserves to pay for it. That is
the price we pay for collecting ever-higher income from the sale and use of land during
the boom.</p>

<h3>Damping the asset cycle</h3>

<p>In a dollarised economy, banks would no longer have to worry about mismatching their
currencies. Slide 9 shows how this benefits the economy by reducing the pressure of funds
flows on asset prices. When there is a surplus of funds in Hong Kong, asset prices will
rise, lending will become more competitive and interest spreads decline. The funds can
then be lent more profitably to overseas borrowers without a currency imbalance in the
banking system. This capital outflow would correct the surplus and reduce the size of the
booms in our asset values.</p>

<p>Conversely, when there is a shortage of funds in Hong Kong, spreads will rise,
attracting foreign lenders who will not face any currency risk in lending to Hong Kong.
For example, at present, if a Dutch Bank wants to increase its mortgage portfolio here,
then it is deterred from doing so because it would have to raise Hong Kong dollar funding
in the interbank market or compete for deposits. But in a dollarised economy, it could
take Dutch deposits of Euros, swap them into US dollars and lend them in Hong Kong. The
capital inflow would correct the shortage and reduce the size of our downturn.</p>

<p><u>Slide 9</u></p>

<h3 class="center">Under Dollarisation, full Currency Union with US$ dampens Asset Cycle</h3>
<img class="center" alt="" src="../images/DampenAsset.gif">

<p>Lenders would still have to deal with country risk (such as the risk of the PRC
declaring war on Taiwan and bringing sanctions upon itself). They would still face legal
risk, but in Hong Kong there is a solid legal system to protect their rights. But they
would no longer face the greatest risk of all, currency risk.</p>

<p>I contend that a large part of the interest rate premium for borrowing in Hong Kong as
compared with borrowing in the USA relates to the credit crunch in Hong Kong, which in
turn relates to the currency risk posed to overseas lenders.</p>

<h3>Dollarisation is not forever</h3>

<p>Dollarisation now does not prevent the possibility of changing to a different currency
in years to come. In the unlikely event that the US began to have hyperinflation, we would
be using a devaluing currency over which we had no control. The solution then would be to
adopt a different currency, as our trading companies would do anyway.</p>

<p>More realistically, at some point in the very distant future, China may solve its
banking system problems and move to a fully convertible and stable Yuan, at which point it
would be one of the world's major currencies. At this time, there is no reason why
Hong Kong could not adopt the Yuan as legal tender instead of the US dollar, but as an
international trading port and financial centre, I suspect the preference would be to
remain with the US dollar, and people could choose to trade in Yuan if they wished.</p>

<h3>The Problem</h3>

<p>To summarise, the kernel of the problem is that we have been trying to have the
benefits of a fixed exchange rate without being willing to take the final step of adopting
the currency to which we are fixed. This means that on the one hand we are swearing that
we are totally committed to the relationship, but on the other hand are not willing to go
ahead and marry the girl after a 15-year courtship. It is enough to test the patience of
any bride. We follow the US interest rate cycle, but our financial system remains only
partially integrated with the US monetary system. As such, we must also pay the costs of
repeated financial stress on the system as our boom and bust asset cycles continue.</p>

<p>We hear politicians complaining about &quot;secretive&quot; and
&quot;unaccountable&quot; hedge funds, or speculators, or even &quot;manipulators&quot;
but they were only making money because of a recognition of the weaknesses of the system.
We have to face the fact that it is bizarre for a small territory of 6m people, with a
highly externalised economy, to try to maintain its own separate currency, which results
in banks having to balance two separate balance sheets - their local and foreign
currency assets and liabilities.</p>

<p>To draw an analogy, imagine if greater London, which has a similar population to Hong
Kong, with all its banks, and all its trade with the motherland of the UK and the rest of
the world, tried to maintain the &quot;London Dollar&quot; linked to the British Pound at
7.8 to 1. Only the London Dollar would be legal tender within the area surrounded by the
M25 orbital motorway. London would inevitably suffer from surges of capital inflows and
outflows, both trade and speculative. The London property market would be quite
spectacular.</p>

<p>As international trade and capital flows become larger, the world is moving away from
the concept of one currency per country. The 11 initial countries of European Currency
Union, or Euroland as it is becoming known, are about to surrender their currencies for a
common currency over which each of them alone has no control. These are not banana
republics.</p>

<p>The world could spend less time trying to stabilise currencies if countries all adopted
a common currency, but unfortunately inherently unstable economies run by corrupt
governments will always want to have their own currency so that they can use the
last-ditch tool of being able to devalue their currencies, print money, debase the
currency and cause hyper-inflation, which wipes out the savings of a generation. This has
happened twice in Indonesia since World War II, it happened in Brazil, Yugoslavia and
Albania, and history has many more examples. Hong Kong is better than that, and should not
need to hold on to that option.</p>

<p>Thank you for your attention.</p>

<p><em>David M. Webb<br>
</em>Hong Kong<br>
3rd November 1998</p>

<p><em>&copy; Webb-site.com, 1998</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=121">Currency board/ peg</a></li>
				
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