
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

<script type="text/javascript">document.title="The Budget and HK's Road to Serfdom";</script>

	<div class="summary">The so-called "Consumption Voucher" will probably become another cash handout, a total of HK$108bn over 2 years - but that's not the point. HK's budget has long since deviated from the Basic Law requirement to keep the budget in line with Gross Domestic Product over time, having expanded by over a quarter since the 1997 Handover. HK is becoming a tax-and-spend interventionist economy, departing from the free-market principles at the root of its success.</div>

<h2 class="center">The Budget and HK's Road to Serfdom<br>
<span class="headlinedate">26 February 2021</span></h2>
<p>The Government's madcap handout of 
so-called "Consumption Vouchers" of HK$5,000 to each Permanent Resident and "new 
arrival" (from the Mainland), at a total cost of HK$36bn, is just another 
warning sign along the economic
<a href="https://en.wikipedia.org/wiki/The_Road_to_Serfdom" target="_blank">Road 
to Serfdom</a> that the Government seems hell-bent on pursuing, driving the 
budget to a structurally higher level in breach of the Basic Law requirement to 
"keep the budget commensurate with the growth rate of its gross domestic 
product" (<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">Article 
107</a>).</p>
<p>&nbsp;The Financial Secretary Paul Chan Mo Po 
said in the
<a href="https://www.budget.gov.hk/2021/eng/budget11.html" target="_blank">Budget Speech</a>:</p>
<blockquote>"In view of the current special situation, the Government should 
	make good use of the fiscal reserves to energise the market, stimulate the 
	economy, and facilitate the speedy recovery of the consumption market and 
	other economic segments in a timely manner. After careful consideration, I 
	will issue electronic consumption vouchers in instalments with a total value 
	of $5,000 to each eligible Hong Kong permanent resident and new arrival aged 
	18 or above, so as to encourage and boost local consumption. This measure, 
	which involves a financial commitment of about $36 billion, is expected to 
	benefit around 7.2 million people. The Government will identify suitable 
	stored value facilities operators to help roll out the scheme, and will 
	announce the details of the scheme as soon as possible."</blockquote>
<p>It was clearly added to the budget at the last minute and is not a 
fully-developed plan. Subsequent reports say the handout will be $1K per month 
which expires each month. The "vouchers" can be spent with offline or online 
local merchants, including but not limited to restaurants and supermarkets, but 
not overseas merchants. Our bet is that this is NGTH - Not Going To Happen, and 
will be replaced with a simple cash-to-bank scheme like last year's, for the 
following reasons:</p>
<ol>
	<li>Assuming that the vouchers are not restricted to particular merchants or 
	narrow sectors, $1000 is highly unlikely to be more than a typical 
	individual would spend on food each month, whether at the supermarkets or 
	eating out. Therefor, the voucher is as good as cash, because it will simply 
	substitute for cash that an individual would have spent on the same items. The 
	cash displaced can then be put to other uses - saving, spending (including 
	overseas online), donating 
	etc.</li>
	<li>There is already an established channel from last year's $10,000 "Cash 
	Payout Scheme" via the banking system. Since the vouchers will displace cash 
	spending, it would be simpler and cheaper to distribute the money to bank 
	accounts.</li>
	<li>The Financial Secretary has suggested that an Octopus Card would be 
	suitable for the voucher - but an Octopus Card, on its own, is a very simple 
	stored-value card and doesn't have the ability to hold a silo of funds for a 
	restricted purpose. You would need to use a smartphone app (such as the 	<a href="https://www.octopus.com.hk/en/consumer/mobile-payment/octopus-app/about/index.html" target="_blank">
	Octopus App</a>) for that, and even then, the software of the app may 
	require customisation. Also, if the Government transfers money to an Octopus 
	Card, then it is a relatively simple matter to transfer it back to your bank 
	account via the Octopus Wallet on a smartphone.</li>
	<li>Not every person, particularly amongst the elderly, 
	uses a smartphone.</li>
</ol>
<p>The handout is a wasteful use of HK's fiscal reserves, because it sprays money at the 
	entire population, rich or poor. Over 90% of the workforce is still employed and in roughly the 
	same financial situation as before COVID-19 - except that they haven't been 
	spending much on foreign holidays and less on bars, gyms, cinemas, 
	restaurants and other things that have been periodically closed by 
	Government order.</p>
<p>The HK$36bn handout is a significant chunk of money, about 1.3% of 
	estimated GDP for 2021-2022, adding to the $72bn cost of last year's handout. So 
as its expenditure grows, the Government reaches for an easy target 
	and jacks up stock market stamp duty by 30% - raising roughly an extra 
	$13bn per year (depending on market turnover).</p>
<p>Below is a chart from this year's Budget of the ratio of budget to 
	GDP since the 1997 Handover. It has increased from about 18.4% in 1997-98 to 
	22.6% in 2019-20, 31.7% in 2020-21 and a projected 27.0% in the current 
	budget. Even 4 years down the road in 2025-26, the spending target is 23.3% 
	- an increase of more than a quarter relative to GDP, since the Handover, 
breaching Basic Law Article 107.</p>
<img class="center" alt="Budget v GDP 2021-22" src="../images/budgetVgdp21-22.jpg">
<p>By comparison, here's the same graph from the 1997-98 Budget Speech - notice 
how the upper bound of the graph is 20%:</p>
<img class="center" alt="BudgetVgdp97-98" src="../images/budgetVgdp97-98.jpg">
<p>There's actually no reason why HK couldn't balance its books this year and 
next, but that would be involve being far more sensible, 
focusing on the needy, stopping needless handouts to the needless, and also 
stopping wasteful interventions to push the economy in one direction or another 
with subsidies for "re-industrialization" or "innovation and technology". 
amongst others.</p>
<p>Just a small example - in the amazing-but-true sections of the budget,
<a href="https://www.budget.gov.hk/2021/eng/budget23.html" target="_blank">you 
will find a plan</a> to pay property tycoons a subsidy of HK$8m for each
<a href="../dbpub/listed.asp?e=r">Real Estate Investment Trust</a> (<strong>REIT</strong>) 
that they create for the stock market. Yes, really. Whatever next - a subsidy 
for launching IPOs? There are continued
<a href="https://www.budget.gov.hk/2021/eng/budget21.html" target="_blank">
subsidies for bond issuers</a> (para 75), so it seems that equity subsidies 
can't be far away. Why not just let the free market function?</p>
<p>Set aside the political issues of the last 2 years. What's really happening 
is an ongoing slide towards big-budget central planning, mainland-style, far 
from the free market approach that powered HK's economic growth in the past.</p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7491">Chan, Paul Mo Po</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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