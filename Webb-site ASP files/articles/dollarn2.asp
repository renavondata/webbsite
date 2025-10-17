
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

<script type="text/javascript">document.title="Creeping Dollarisation in HK";</script>

	<div class="summary">After ruling out dollarisation as an option in its Financial Market Review in 1998, the Government is embarking on a course that will lead to the next best thing. We take a look ahead to how the introduction of a US Dollar clearing system in Hong Kong may eventually lead to the sidelining of the Hong Kong Dollar to pocket change.</div>

<h2 class="center">Creeping Dollarisation in HK<br>
<span class="headlinedate">23 May 2000</span></h2>
<p>One of the first pieces we ever published on Webb-site.com was
the text of a Nov-98
speech &quot;<a href="amcham.asp" target="_blank">Booms, Busts
and Dollarisation</a>&quot; on the advantages of dollarisation as a solution to the stresses in the
Hong Kong monetary system. That followed in the wake of the Government's
misguided <a href="interven.asp" target="_blank">intervention</a> in the stock
market in Aug-98, which in turn was a reaction to weaknesses in the currency
board system known as the &quot;peg&quot;. </p>

<h3>Intervention need never have happened</h3>

<p>The essence of what happened prior to the stock market
intervention was that the Government was running a very &quot;orthodox&quot;
currency board. They believed that if there was a shrinkage in the supply of
Hong Kong Dollars (due to people switching into foreign currency) then they
should allow short-term local interest rates to climb until money was attracted
back into the system by the conversion of US Dollars into Hong Kong Dollars.
Penal rates of interest were imposed on banks if they repeatedly tried to borrow
HK$ from the HKMA. During the Oct-97 crisis, this strategy was demonstrated when
overnight rates briefly rose to triple-digit levels as equities crashed. </p>

<p>The flaw in the orthodox currency board is that when rates climb
too high, confidence in the currency begins to weaken, and at the same time
equity markets slide, feeding the fear. Then the higher interest rates are not
enough to compensate for the risk of a substantial devaluation in the currency. </p>

<p>For example, even if 1-month HIBOR (the inter-bank interest
rate) rises by 12%, this is only an extra 1% per month. Imagine yourself back In
crisis conditions, and suppose that you estimate there is a 50% probability of
the peg breaking in the next month, and that if it did, there would be a 20%
devaluation. The &quot;expected return&quot; on the Hong Kong Dollar is then a
loss of 10% (a 50% chance of a 20% loss), which is ten times what you would be
paid for holding it. </p>

<p>Although the peg had by then been in place for 15 years, it
seems that the Government was unprepared for the situation when hedge funds
discovered the flaw and put pressure on the interest rates, trying to benefit
from the resulting confidence crisis by taking short positions in the stock
market. </p>

<p>What followed was nothing more than a panic move in which the HK
Government invested US$15bn of public money in the stock markets to squeeze out
the short positions of the speculators. This approach was given a boost in the
Autumn of 1998 by the global contraction of credit to hedge funds caused by the
Russian debt crisis, which cut their firepower. </p>

<p>Following the intervention, the HKMA got their night-caps off
and their thinking caps on, and realised that they should never have allowed
rates to be squeezed in this way. They introduced the &quot;<a href="https://www.hkma.gov.hk/eng/key-information/press-releases/1998/980905.shtml" target="_blank">7 measures</a>&quot; to
modify the currency board, and effectively converted the HKMA into a central
bank. A full discount window was introduced to which Government bills and notes
from certain other issuers could be presented as security for short-term HK$
funds, greatly expanding the monetary base. </p>

<p>Behind the scenes, there may also be a use by the Government of
the foreign reserves to cushion outflows by repatriating US Dollar deposits to
HK banks and then converting them to HK Dollars, triggering the corresponding
sales by the banks. This could be justified, if required, on the basis of the
need to finance the budget deficit from these reserves. </p>

<p>While all this has made it much harder to cause any change in
interest rates by market manipulation, there was still a concern that the sheer
volume of transactions passing through Hong Kong and the expanding size of the
Hong Kong Dollar capital markets could create opportunities for speculators. </p>

<p>Steps were taken, for example, to discourage supranational
bodies or multinationals from issuing short-term Hong Kong Dollar debt, because
they would naturally swap the borrowed HK$ for US$. Hedge funds could take the
other side of the swap and then sell the resulting HK$ for US$, setting up an
outflow. </p>

<p>In effect, the HKMA has set out to domesticate the Hong Kong Dollar
further and limit its use by external parties. </p>

<h3>The US Dollar clearing system</h3>

<p>The HKMA is now introducing a domestic US Dollar clearing
system, to be <a href="http://www.info.gov.hk/hkma/eng/press/2000/20000309e3.htm" target="_blank">administered</a>
for the next 5 years by HSBC. This will be a full-blown counterpart to the Hong
Kong Dollar clearing system, including Real-Time Gross Settlement (RTGS). Until
now, US Dollar payments between banks and with non-bank counterparties had to be
cleared through correspondent banks in the USA. The resultant time delay of up
to 2 days made it impractical for many purposes. </p>

<p>The stated motivation of the new system is to allow trading and
settlement of US Dollar-denominated transactions in equities and bonds,
initially on GEM. However, it has much wider potential than that. There is no
reason why trading of all securities could not then migrate to US Dollars. Take
HSBC Holdings plc, for example - a stock that still comprises around 20% of the
Hang Seng Index. That company, which is domiciled in the UK, recently listed on
the New York Stock Exchange and its primary currency of accounting is the US Dollar
(its accounts also include translations into Pounds Sterling and HK$).
Even its shares are now denominated in US Dollars. </p>

<p>If all HK stocks were traded in US$, and produced their accounts
in US$, then foreign investors would find it easier to assess them, and
cross-listings of HK stocks on US stock markets would just become an extension
of the trading pool, with pricing being in the same denomination. </p>

<p>For overseas issuers (including mainland PRC companies) it makes
far more sense to raise US Dollars directly than to conduct offers in HK Dollars
and then convert them. The widespread use of US Dollars in our capital markets
would be a huge boost to Hong Kong's aspirations to be a global financial
centre. </p>

<p>Unless it is artificially restricted, there is no reason why the
US$ clearing system could not also be used in everyday life. The system will
also allow individuals to operate regular US$ current accounts. Cheques would
clear overnight, the same as they do in HK$. Soon, you could be carrying a
dual-currency cheque book which will allow you to shop and settle bills in US$
so long as your counterparty agrees. Credit cards and debit cards (such as the
EPS system) could work the same way. </p>

<p>People working for companies which already do a large part of
their business in US Dollars might request their salaries in US Dollars, and the
companies would be happy to oblige as this removes currency translation
altogether, and no longer involves telegraphic transfers overseas. Such
companies include airlines, investment banks and multinationals with national or
regional headquarters in Hong Kong. In time, local banks would match the
resulting growth in the US$ deposit base by offering residential mortgages in US
Dollars. </p>

<p>You can see where this is heading. Under the Basic Law (unless
amended), the Hong Dollar must remain legal tender, but there is no reason why
we cannot reduce its role to pocket change and adopt the US Dollar for all
&quot;big ticket&quot; transactions. </p>

<p>The final step in this process would be to make life simpler for
everyone by consolidating every 7.8 Hong Kong Dollars into one &quot;New Hong
Kong Dollar&quot;, equal in value to a US Dollar. This would then allow goods
and services to be priced in one single amount, but settled with the same number
of Hong Kong Dollars or US Dollars if the vendor agrees. This would be a boon to
tourists who could then shop till they drop effectively in US Dollars without
having to perform mental arithmetic. A &quot;parity peg&quot; of one US Dollar for every New Hong Dollar would reinforce the psychological perception that the
peg is permanent. At 7.8, it has always seemed up for discussion. </p>

<h3>See what you can do when you try!</h3>

<p>After the Oct-97 crash, the Government commissioned a &quot;<a href="http://www.info.gov.hk/fsb/finance/docs/eng-repo.doc" target="_blank">Report
on Financial Market Review</a>&quot; (word format) which was released on 23-Apr-98.</p>

<p>In that report, the possibility of dollarisation
was given short shrift. Sadly, we believe China would only allow Hong Kong to
formally adopt a foreign currency as a second legal tender under extreme
pressure (such as everyone panicking and swapping their HK$ deposits for US$,
creating a currency mismatch in the banking balance sheet), which incidentally,
is the worst time to attempt dollarisation. Never mind the fact that 12
countries in Europe have been happy to surrender currency sovereignty to the
European Central Bank and the Euro.</p>

<p>Apart from the sovereignty problem, one of the
primary reasons cited for dismissing dollarisation was the difficulty in
clearing transactions. The report stated:</p>

<blockquote>
  <p>&quot;Theoretically, it should be possible for the banks to maintain US Dollar clearing accounts
  with the HKMA for the purpose of settling interbank and other transactions. But it is doubtful whether the US authorities 
  would allow US Dollar clearing to be conducted by a foreign monetary authority in another time zone&quot;</p>

</blockquote>
<p>The new US$ clearing system demonstrates that
there was no difficulty in achieving this. Indeed, the HKMA is so relaxed about
the matter that it has contracted out the system to HSBC.</p>

<p>It won't quite lead to dollarisation (since strictly speaking
the US Dollar will not be legal tender), but it's the next best thing. The
current timetable sees US$ stock clearing from Aug-2000 and US$ cheque clearing
from Sep-2000. From thereon, expect a gradual transition over several years as creeping
dollarisation takes its effect.</p>
<p><em>&copy; Webb-site.com, 2000</em></p>
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