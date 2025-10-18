
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

<script type="text/javascript">document.title="Government Backs Cartel";</script>

	<div class="summary">In a move which highlights the fallacy of its claim to promote a free market economy, the HK Government has told HKEx, whose board it controls, to delay plans to scrap the minimum commission rule. We look at the wider aspects of what this says for competition policy in Hong Kong, and at the way vested interests dominate the debate on market reforms when investor representation is absent. We call again for the government to adopt the HAMS Proposal.</div>

<h2 class="center">Government Backs Cartel<br>
<span class="headlinedate">24 January 2002</span></h2>
<p>The Hong Kong Government, which owns no shares in Hong Kong
Exchanges and Clearing Ltd (<b>HKEx</b>) but still appoints the majority of its
directors, has caved in to pressure from a small but vocal minority to use that
power to maintain anti-competitive price-fixing practices in Hong Kong's
brokerage industry. In doing so, the Government demonstrates that despite all
its claims of a free market, Hong Kong's economy is still a system of cartels
where the Government puts vested interests ahead of economic competitiveness. </p>

<p>Hong Kong's small brokerage firms, whose owners were paid off handsomely when
HKEx was created, are living in the past. The New York and London commissions
were deregulated in 1975 and 1986 respectively, and they remain world-class
markets employing tens of thousands of brokers.</p>
<p>Unfortunately, Hong Kong still has no organisation to represent investors in
this debate. We call on the Government to table enabling legislation to create
and fund <a href="../HAMS/" target="_blank">HAMS</a> (the Hongkong Association of Minority
Shareholders) through the Good Governance Levy. You can't have a world-class
market if it is dominated by vested interests.</p>
<p><i>Webb-site.com</i> editor David Webb is a member of the informal <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=01pr76" target="_blank">SFC
Shareholders Group</a>, established with government approval, which meets every
couple of months and is sometimes consulted by the SFC on matters affecting
investors, but we can confirm that the group was not consulted on the
government's move.</p>
<p>If Hong Kong had a comprehensive and fair competition law, as most modern
economies do, then the price-fixing arrangement for broking would be illegal.
The <a href="http://www.consumercouncil.org/" target="_blank">Consumer
Council</a>  in 1996 <a href="http://www.consumer.org.hk/trd96/trd96_e.htm" target="_blank">called</a>
for such a law but the government continues to reject it, claiming that
a sector-specific approach is better. The example of brokerage rates
demonstrates that the sector-specific approach is in fact a selective approach
where vested interests are protected at the expense of consumers and for
political ends.</p>
<p>Readers may recall our debate <a href="noncompete.asp" target="_blank">article</a>
against Financial Secretary Antony Leung in the FT Survey last July and his
opposing <a href="http://globalarchive.ft.com/globalarchive/articles.html?id=010713001485" target="_blank">article</a>
on behalf of the Government. He wrote then:</p>
<blockquote>
  <p>&quot;the government will not hesitate to take action to eliminate business
  practices that limit market access or impair economic efficiency or free
  trade.&quot;</p>
</blockquote>
<p>But the government is indeed hesitating to eliminate price-fixing in the
brokerage sector.</p>
<p>As recently as 14-Nov-01, Legislative Councillor <a href="http://www.legco.gov.hk/general/english/members/yr00-04/cyl.htm" target="_blank">David
Chu Yu-lin</a> asked the Government a loaded <a href="http://www.info.gov.hk/gia/general/200111/14/1114170.htm" target="_blank">question</a>
about the effect of the long-awaited deregulation on lay-offs and closures in
the brokerage industry. Mr Chu is one of the 6 legislators appointed by the same
800-member Election Committee that will soon re-appoint the Chief Executive of
Hong Kong, Mr Tung Chee-hwa. That business-dominated <a href="http://www.info.gov.hk/eac/english/ecsubsector/ec-e.html" target="_blank">committee</a>
includes 24 members from the Financial Services and Finance sub-sectors. Mr
Tung, who is likely to be unopposed, is currently trying to get as many
signatures as possible on his nomination form.</p>
<p>For those who don't' know, and the question didn't mention it, Mr Chu's wife
is
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Indi_Details.jsp?charset=ISO8859_1&ceref=AAG890&applNo=0002">Mrs
Chu Ho Miu Hing</a>, who is Managing Director of a small brokerage called Good
Harvest Securities Co Ltd. Mr and Mrs Chu are the Chairman and Vice Chairman of
HK-listed property company <a href="../dbpub/articles.asp?p=1455" target="_blank">Wah Tak Fung
Holdings Ltd</a>, and on 2-Nov-00 Mrs Chu was <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=00pr140" target="_blank">reprimanded</a>
by the SFC for propping up the closing price of the company on the Stock
Exchange.</p>

<p>Anyway, we digress. Back to that legislative council question.
In reply, Stephen Ip, Secretary for Financial Services, pointed out that Hong
Kong was the only remaining market in the 15 largest markets of the world where
brokerage rates were rigged, Taiwan having been the last to deregulate on
1-Jul-00. He added: </p>

<blockquote>

<p>&quot;The liberalisation of commission rates will create an
environment conducive to free competition in the stock market. To meet the
challenges of globalisation and technological advancement, Hong Kong must keep
up with international developments and remain competitive&quot; </p>

  <p>&quot;To allow sufficient time for the industry to adapt to
  the change, the Board of HKEx passed the decision to provide a two-year
  transitional period, thus deferring the liberalisation of brokerage commission
  for two years to April 2002. </p>

</blockquote>
<h3>About turn</h3>

<p>Just over two months later, and reportedly after intervention by
the Chief Executive of Hong Kong, Mr Ip yesterday reversed course, telling
small-broker lobbyists that the abolition would be delayed by at least 12
months, and now his spokesperson is saying (today's SCMP): </p>

<blockquote>
  <p>&quot;With the current high unemployment rate and economic
  downturn, it is obviously not the right time to abolish minimum brokerage
  commission.&quot; </p>

</blockquote>
<p>You will notice that the Government didn't dare put out its own
press release, instead allowing the bad news to be broken by the brokers who
asked for it, and then hiding behind anonymous &quot;spokesperson&quot;
briefings to the media. This is a stark contrast to the fanfare which greeted
the announcement of deregulation nearly two years ago. Then, the HKEx made an 
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2000/0517news.htm" target="_blank">announcement</a>
quoting its Chairman <a href="http://www.info.gov.hk/info/exe7a.htm#lee" target="_blank">Charles
Lee Yeh-kwong</a>, who is also one of Mr Tung's Executive Councillors, and the
Government issued a <a href="http://www.info.gov.hk/gia/general/200005/17/0517171.htm" target="_blank">press
release</a> hailing the move. Mr Lee said back then: </p>

<blockquote>
  <p>&quot;The liberalisation of brokerage commission rates... we
  believe, is in the interest of the investing public, the brokerage industry
  and the economic well-being of Hong Kong&quot; </p>

</blockquote>
<p>He was right then, and the Government is wrong now. There can be
no economic justification for anti-competitive practices. Many sectors of the
economy are going through some pain as they adjust, but the Government wouldn't
dream of introducing say, minimum prices for meals in restaurants, to save jobs
in the restaurant trade, or minimum prices for food in markets, to protect
workers in the retail trade. A free market economy must have a free market in
prices. </p>

<h3>What this means for HKEx</h3>

<p>Incidentally, let's remember that HKEx is a for-profit listed
company. A reduction in brokerage costs would lead to increased turnover due to
the lower friction of dealing costs, oiling the wheels of the market. HKEx gets
a 0.01% turn out of each transaction (split between buyer and seller) so the
more volume, the more money it makes. So the delay is negative for the
profitability of HKEx. </p>

<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

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