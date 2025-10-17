
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

<script type="text/javascript">document.title="Cementing the marriage can save the family";</script>

	<div class="summary">This article by David M. Webb was published in the South China Morning Post.</div>

<h2 class="center">Cementing the marriage can save the family<br>
<span class="headlinedate">26 August 1998</span></h2>
<p>There comes a time in every relationship when words and deeds are not enough. At least
one partner needs the permanence of a lasting relationship. That time has come for Hong
Kong, which has been engaged to the US dollar for 15 years now but for some reason will
not commit. In the past, this might have been because her Sino-British parents could not
agree, and now perhaps because her motherland does not approve.</p>

<p>Again and again, Hong Kong swears that the relationship with the US dollar is
&quot;inviolable&quot;, and will be defended at all costs. Indeed, it will
&quot;burn&quot; anyone who speculates against the romance. But speculators continue to
wonder, if the young lady is not taken, can she be distracted? All this places terrible
strain upon her daily life, as she tries to pursue her career of trading between her
motherland and the rest of the world. Surely things would be easier if she were to marry
the US dollar and take his name.</p>

<p>This process is known as dollarisation, about which there are many misconceptions.</p>

<h3>How it works</h3>

<p>There would be two principal aspects of dollarisation. First, a small portion of our
foreign reserves (about US$12 billion, or 13 per cent, and maybe some more for spare cash)
would be converted into real, paper US dollars. This would be exchanged for the
&quot;certificates of indebtedness&quot; and cash held by the three note-issuing banks,
who in turn would arrange the free exchange of the HK$75 billion of Hong Kong dollar notes
in public hands for US dollar notes at a fixed rate (probably US$1 for every HK$7.8, the
present rate). In addition, the small &quot;clearing&quot; balances of banks held at the
Hong Kong Monetary Authority (HKMA) would also be converted into US dollars.</p>

<p>At the same time, legislation would be enacted to make the US dollar legal tender in
all existing and future contracts and to settle all existing Hong Kong dollar liabilities.
That includes your salary, the amount you owe on your credit card, the Hong Kong dollars
you have deposited with the bank and the amount you have borrowed from the bank on your
mortgage. Overnight, the Hong Kong dollar assets and liabilities of the banking system
would become denominated in US dollars.</p>

<p>Article 111 of the Basic Law states that &quot;the Hong Kong dollar, as the legal
tender in the HKSAR, shall continue to circulate&quot; and must be backed by a &quot;100
per cent reserve fund&quot;. Of course, the ultimate solution to this is to amend the
Basic Law, which can eventually be done after approval from - among others - the National
People's Congress. In the meantime, we can comply by allowing the coins of Hong Kong
dollars to continue to circulate. They only represent about 5 per cent of the physical
money in circulation, so this would not destabilise the situation.</p>

<p>We will still need coins, and it will be impractical for shopkeepers to indefinitely
display prices in &quot;old money&quot; and &quot;new money&quot;. Rather than import US
coinage we may eventually produce a &quot;new Hong Kong dollar&quot; to circulate in coin
form only, with each one equal to 7.8 old Hong Kong dollars. This would provide a thread
of continuity (and national pride) while at the same time the US legal tender would
provide the financial stability we all seek, and a new Hong Kong dollar coin would be
worth the same as a US dollar. These coins would be backed by an equal amount of US dollar
reserves held by the HKMA.</p>

<h3>The benefits</h3>

<p>There would no longer be a peg to defend. We would all transact in US dollars and
interest rates would decline to levels which reflect only our credit risk (essentially,
the risk of me not paying you back and the country risk of the law not requiring me to do
so).</p>

<p>The HKMA would no longer need to intervene in the stock market, and speculators would
not be able to put pressure on the currency, because the currency would be the US dollar.</p>

<p>The Government would no longer need to hold such large US dollar reserves (part of
which represent our previous budget surpluses) to bolster the credibility of the peg, and
could afford to spend some of these reserves on things such as better hospitals, education
of the future work force and getting us through the recession without raising taxes.</p>

<p>Foreign banks would likely probably raise their &quot;country limits&quot; on lending
in Hong Kong, because they would no longer be faced with currency risk and the need to
match Hong Kong dollar loans from Hong Kong dollar deposits for the interbank market.</p>

<p>This would bring a fresh supply of credit to ease the credit crunch, breathe life back
into the mortgage market and allow businesses to get back to work.</p>

<p>After dollarisation, we would see renewed foreign investment - and Hong Kong equities
would rise - due to lower interest rates on investors' borrowings and some of the risk
premium associated with their Hong Kong dollar exposure eliminated. Non-US firms using
Hong Kong as a gateway to the mainland would only have to worry about the exchange rate of
their own currency with the Yuan and not with the Hong Kong dollar too.</p>

<p>The securitised debt market would develop, with yield-hungry foreign bond investors
buying our US dollar bonds without worrying about a currency mismatch from being secured
on Hong Kong dollar assets.</p>

<p>There would no longer be the currency risk of part of our retirement money (under the
new Mandatory Provident Fund) being held in Hong Kong dollar assets.</p>

<h3>The costs</h3>

<p>The principal cost of dollarisation is that the Government would lose the seigniorage,
or the interest on the reserves which are converted into US dollar notes (which are
interest free). This would cost us, at the existing US Federal Reserve target rate of
about 5.5 per cent, about US$660 million per year, or 0.4 per cent of gross domestic
product. The relief from the higher interest rates we are suffering would more than offset
that through an increase in economic growth (or a reduction in the rate of contraction).</p>

<p>There would be other one-off costs; shops, banks and accountants would have to adjust
computers to divide everything by 7.8, and machines which take the notes and coins would
need adjustment. However, with the advent of cash-less transactions this would be a
relatively minor expense.</p>

<p>In addition, the HKMA would lose its formal role as a quasi-central bank. This hardly
matters as the peg gave it no real control over monetary policy. Its role as keeper of the
Government's fiscal reserves would continue. It would lose its formal role as lender of
last resort, but would still have sufficient reserves to provide liquidity in a future
crisis and could continue to operate the domestic RTGS (real-time gross settlement system)
which could be linked to the US clearing system. In addition, with a dollarised and open
banking system, liquidity can also be raised from foreign banks to rescue a local bank
without the foreigner worrying about currency risk.</p>

<h3>Misconceptions</h3>

<p>There should be no loss of face from dollarisation. Monetary union does not imply
political union. If anything, the Hong Kong dollar is a distraction from the advantages of
Hong Kong as a place with a free market, the rule of law, sound fiscal management and
entrepreneurial spirit. It is becoming clear that small but financially open economies,
with large trade exposures, can no longer cling to the ill-perceived &quot;prestige&quot;
of issuing their own currencies and hope to avoid the effects of large speculative capital
flows consequent from an open economy.</p>

<p>This is ultimately why the smaller members of the European Union will benefit so much
from a common currency area, and foreign trade denominated in a principal currency.
Smaller and easily manipulated currencies are incompatible with open economies, which is
why the alternative of floating the Hong Kong dollar is unthinkable and would lead us back
to the pre-peg crisis of 1983.</p>

<p>Analysts have suggested that we would need foreign reserves to cover all bank deposits.
That is plain nonsense. No banking system in the world can withstand withdrawal of all
deposits, whatever their currency. The conversion to US dollars would increase depositors'
confidence and a &quot;mass bank run&quot; would be less likely than it is now. Even if
there was an initial jump in the demand for holding US dollar notes, this would subside as
people got used to the novelty and preferred to earn interest on their savings. A
temporary doubling of notes in circulation could easily be handled with a temporary
conversion of another US$12 billion of foreign assets from the Exchange Fund.</p>

<p>Analysts have stated that, by dollarising, Hong Kong would become more vulnerable to
the downward and upward cycles of the US economy. That is factually wrong, since we are
already linked to the US dollar and so adopt its interest rates (plus a premium). In
addition, we had one of the greatest booms in our market during 1991 to 1993, when the US
economy was still emerging from recession, and we have entered recession while the US has
been booming. Having the same unit of account does not tie us economically any more than
using the same language would. Besides, much of our trade flows (between the world and the
mainland) are already priced in other currencies, and this would not change.</p>

<h3>Problems if no dollarisation</h3>

<p>The currency board-like system we have is a strong one, but not strong enough, as has
been demonstrated by the Government's perceived need to intervene in the stock markets to
defend it. How this will end is a matter of debate, but governments have a poor history of
playing in markets. There is a real risk that the more stock prices and fair values
differ, the more ordinary investors will start to sell their shares and convert funds into
leading currencies in anticipation of a market collapse when intervention ceases (as it
eventually must). Dollarisation should be simultaneous with the end of stock-market
intervention, to avoid this confidence run.</p>

<p>Another potential source of a confidence crisis is the struggle to reform the mainland
banking system, technically insolvent through an accumulation of bad loans. By
dollarising, Hong Kong can establish itself as an &quot;island of financial
stability&quot; and reduce the risk of a run on all banks here.</p>

<p>There is still time for the Government to implement dollarisation, before it is too
late. Without wishing to be alarmist, it would be too late to prepare for dollarisation if
a sudden worsening of the situation caused everyone in Hong Kong to convert their Hong
Kong dollar savings accounts and commercial deposits (worth about HK$1.5 trillion) into
foreign currency deposits. This would create a big currency mismatch between the banks'
Hong Kong dollar assets (loans) and their foreign-currency liabilities (our deposits). As
concern grew about this mismatch, depositors would transfer their money to overseas banks,
worsening a liquidity crisis. In effect, there would be a run on all the banks (starting
with the small ones, but sparing none).</p>

<p>This is the situation we hope to avoid, and the answer is to pre-empt it by dollarising
the monetary system.</p>

<p><i>David M. Webb is a private investor and researcher.</i></p>

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