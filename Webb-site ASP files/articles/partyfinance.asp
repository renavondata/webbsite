
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

<script type="text/javascript">document.title="Party finances in HK";</script>

	<div class="summary">Which is the wealthiest political party in HK? The answer may surprise you. We publish the accounts of the four main parties for their last two financial years, which go some way towards explaining the hand-to-mouth existence of several of the parties, and the lack of any coherent policy platforms in the pro-democracy camp. This is largely a result of the electoral voting system which divides and conquers them, countered by the secretive funding of the biggest-spending party.</div>

<h2 class="center">Party finances in HK<br>
<span class="headlinedate">7 March 2011</span></h2>
<p>Which is the best-funded political party in Hong Kong? Is it the big-business 
Liberal Party (<strong>LP</strong>)? The barrister-led Civic Party (<strong>CP</strong>)? 
The party of the poor and grass roots, the Democratic Alliance for the 
Betterment and Progress of Hong Kong (<strong>DAB</strong>), or the Democratic 
Party (<strong>DP</strong>)?</p>
<p>All of these 4 parties, which between them won 30 of the 60 seats in the 2008 
Legislative Council election, are actually incorporated as companies limited by 
guarantee (in other words, they have no share capital and are not-for-profit). 
That means that they have to file their accounts at the Companies Registry. The 
accounts are then made available to the public on a pay-per-document basis. We think 
the public interest is served by bringing this to a wider audience. Most of the 
parties do not put their accounts on their web sites, so today Webb-site is 
publishing them, in the interests of transparency. You will find the accounts on the 
individual pages in our database for each party, at these links:</p>
<ul>
	<li><a href="../dbpub/articles.asp?p=33451">Civic Party</a></li>
	<li><a href="../dbpub/articles.asp?p=4689">Democratic Alliance for the 
	Betterment and Progress of Hong Kong</a></li>
	<li><a href="../dbpub/articles.asp?p=31370">Democratic Party</a></li>
	<li><a href="../dbpub/articles.asp?p=31369">Liberal Party</a></li>
</ul>
<h3>The legal requirements</h3>
<p>Under
<a href="http://www.hklii.org/hk/legis/en/ord/32/s107.html" target="_blank">
Section 107(1)</a> of the Companies Ordinance, each company limited by guarantee 
has to file an annual return each calendar year. Under
<a href="http://www.hklii.org/hk/legis/en/ord/32/s109.html" target="_blank">
Section 109</a>, the annual return shall be filed within 42 days after the AGM 
for the year, together with the accounts. Under
<a href="http://www.hklii.org/hk/legis/en/ord/32/s122.html" target="_blank">
Section 122(1A)</a>, the accounts must be laid at the Annual General Meeting and 
must not be more than 9 months old at that time.</p>
<h3>Filing speed</h3>
<p>Three of the parties have 31-Mar year-ends, and the LP has a 31-Dec year-end. 
None of the parties wins any prizes for the speed of accounting to its members 
or the public. For the latest year, the LP filed its 31-Dec-2009 accounts on 
9-Sep-2010, and for the three with 31-Mar-2010 year-ends, the DAB filed on 
31-Dec-2010, the DP filed on 10-Jan-2011, and the CP trailed in last on 
20-Jan-2011, having held its AGM on 8-Jan, which means the accounts were 8 days 
too old at the AGM.</p>
<h3>Results</h3>
<p>Now here's the interesting part. We looked at the last 2 financial years of 
each party. As closely as possible, we have harmonised the accounting of the 
income statements, which use slightly different line items. The first year 
includes the
<a href="http://www.elections.gov.hk/legco2008/eng/" target="_blank">LegCo 
elections</a> of 9-Sep-2008, while the second year does not. Naturally enough, 
the expenditure during the election year was a bit higher.</p>
<h4>Election year ended Dec-2008/Mar-2009</h4>
<img class="center" alt="Party finances 2008-9" src="../images/partyfinances0809.gif">
<p>As the table shows, the DAB raises more and spends more than the other 3 
parties combined, accounting for 55% of all expenditure. It had staff costs of 
$33.8m, or 4 times its nearest rival, the LP. The party of the grass-roots poor 
is the best-funded party. This is 89% funded by donations, in line with all the 
parties. We will leave our readers to speculate on the source of donations to 
the DAB, but presumably they are Beijing-friendly businessmen rather than poor 
people in public housing estates. This funding enables the DAB to finance 
grass-roots campaigns aimed at building electoral support. It is notable that it 
runs a substantial deficit on its branch activities and project expenses, 
amounting to $12.97m in the election year.</p>
<p>The pro-democracy CP and DP, by comparison, have no big business 
support and struggle to find enough resources to do more than run a lean head 
office. Fragmentation of the pro-democracy camp is incentivised by HK's 
particular twist on <a href="PRreform.asp">proportional 
representation electoral maths</a>. The PR voting system incentivises short 
lists of one-person parties and fringe parties rather than consolidation of 
parties with similar policy positions. So the available resources are divided. 
That problem will be worse with the likely addition of a new seat to each of the 
5 geographic super-constituencies in the 2012 election. In New Territories West, 
for example, there will probably be 9 seats, and the first candidate on each 
list will only require 10% of the vote to be absolutely certain of election, and 
very probably less. In 2008, for example, LSD legislator Albert Chan Wai Yip was 
elected with 8.1% of the vote in an 8-seat election.</p>
<p>Meanwhile the LP, largely discredited in the election, knows that money 
can't buy you electoral love when you continue to defend the dysfunctional 
constituencies and the small-circle elections that go with them.</p>
<p>The DAB also had the largest net assets by far, at a modest $35.3m, mainly 
because it owned premises with a book value of $36.75m.</p>
<p>We should note that in 2008 the LP received $26.6m of its funding, being 
almost all of its income, from the &quot;Liberal Party Trust Fund&quot;, the accounts of 
which are not available. LP also acted as the trustee of the &quot;Liberal Party 
Caring Foundation&quot; which was established in 2005 &quot;for the purpose of appealing 
to the Hong Kong public to raise funds for helping the poor in Hong Kong&quot;. That 
fund had assets of $6.362m at the end of 2008, and $6.183m at the end of 2009. 
As LP is only the trustee, the foundation's accounts are not included in the 
LP's accounts, so we can't tell you how much it raised from donations or spent 
on the poor during the year. It would be more transparent if the LP, like the 
DAB, were to run these activities through its own accounts rather than in an 
off-balance-sheet foundation.</p>
<p>The accounts of political parties do not of course include the separate 
fund-raising by individual candidates in elections. These candidates are subject 
to caps on campaign expenditure. </p>
<h4>Non-election year Dec-2009/Mar-2010</h4>
<p>Here are the figures for the latest financial year, with no general 
elections:</p>
<img class="center" alt="Party finances 2009-10" src="../images/partyfinances0910.gif">
<p>As you can see, even in a non-election year, the pro-Beijing DAB funding 
machine keeps rolling, accounting for 65% of the donations to the 4 parties and 
outspending the other 3 parties <em>combined</em> by a margin of 2 to 1. 
Notably, the LP, after its drubbing in the 2008 elections and the loss of some 
of its billionaire backers, cut its 2009 spending way back to less than half 
what it spent in 2008.</p>
<p>Overall, the take-away observation must be how little the pro-democracy camp 
has to work with, and how party financing remains in its infancy. On these 
modest budgets, the parties cannot possibly hope to run meaningful internal 
think tanks or research units to support their decisions on policies, so the 
vacuum has to be filled by outside think tanks. These think tanks struggle to 
gain the attention of stretched pro-democracy legislators, who spend their time 
lurching from one short-term issue to the next in knee-jerk fashion rather than 
coming up with principle-based proposals and well-researched criticism of 
Government policies. Meanwhile, the tycoon-funded
<a href="../dbpub/articles.asp?p=52557">Bauhinia Foundation</a> continues, at 
least with the current administration of Donald lame-Duck Tsang, to inject its 
proposals directly into the Government, largely by-passing the parties.</p>
<p>Incidentally, in case you are wondering, the extremist but 3-legislator 
League of Social Democrats is not set up as a company, so there are no accounts 
available for that, but you would probably need a microscope to see them anyway.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=33451">Civic Party Limited (The)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4689">DEMOCRATIC ALLIANCE FOR THE BETTERMENT AND PROGRESS OF HONG KONG</a></li>
				
				<li><a href="/dbpub/articles.asp?p=31370">DEMOCRATIC PARTY (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=31369">LIBERAL PARTY</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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