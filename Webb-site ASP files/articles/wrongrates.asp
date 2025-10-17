
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

<script type="text/javascript">document.title="HK's Rates reforms: damage to property values, needless complexity and misdirected handouts";</script>

	<div class="summary">It's not too late for the Government to return to fiscal sanity with a simple Rates system rather than practice the populist politics of petty envy.</div>

<h2 class="center">HK's Rates reforms: damage to property values, needless complexity and misdirected handouts<br>
<span class="headlinedate">30 January 2024</span></h2>
<h3>Background</h3>
<p>The property Rates system (<strong>Rates</strong>) in HK has a long history dating back to&nbsp; the first
<a href="https://oelawhk.lib.hku.hk/items/show/28" target="_blank">Rating Ordinance of 1845</a>, just 4 years after the 
British occupation. Back then, the purpose of Rates was to fund the Police Force. Subsequent Rates were used to fund 
street lighting (1856), water (1860) and the fire brigade (1875). All good stuff. Since 1931, income from rates has been 
part of the General Revenue account. A good history of all this is contained in the online books of the 
<a href="../dbpub/orgdata.asp?p=2533687">Rating and 
Valuation Department</a> (<strong>RVD</strong>): <a href="https://www.rvd.gov.hk/doc/en/hist_rate.pdf" target="_blank">The 
History of Rates in Hong Kong</a> (2013) and the more recent
<a href="https://www.rvd.gov.hk/doc/en/property_rates.pdf" target="_blank">Property Rates in Hong Kong</a> (2021).</p>
<p>The Rates system relies on the concept of "rateable value" (<strong>RV</strong>), which is basically the estimated 
annual market rental value of a property on a given date, regardless of whether it is occupied by the owner, rented out 
or vacant. Originally, there were long periods between revaluations leading to sharp jumps when they took effect, but 
from 1988 this was reduced to 3-yearly, and since 1999, annually. The total RV of all properties at 1-Apr-2023 was 
HK$694.1bn.</p>
<p>Rates are then charged as a percentage of the RV. Since annual valuations took effect on 1-Apr-1999, the percentage 
has remained at a simple 5%.</p>
<h3>Historic abuse of the Rates system</h3>
<p>You might think, from the background above, that the Rates system produces a reliable, stable revenue stream for 
the Government, relative to economic activity which is reflected in RVs. However, a look at the
<a href="../dbpub/govac.asp?t=0&amp;i=6&amp;g=1" target="_blank">General rates in the Webb-site HKSAR Accounts Explorer</a> 
reveals a different picture, with rates as a percentage of Gross Domestic Product having fallen from 1.08% in the 
year to 31-Mar-2001, to 0.67% in the year to 31-Mar-2023.</p>
<p><a href="../dbpub/govac.asp?t=0&amp;g=1&amp;i=6">
<img alt="Rates to GDP" class="center" src="../images/RatesToGDP.png"></a></p>
<p>The reason for this volatility is that, after an initial rebate (all rates for the quarter to 30-Jun-1998) and 
concession (half of all rates in the quarter to 30-Sep-1999) during the Asian Financial Crisis of 1998-99, in 2002-03 
the Government began to abuse the Rates system as a sort of populist handout system, by capping concessions at 
a dollar amount ($5,000 in 2002). This of course favours properties with smaller RVs, while larger premises paid the 
normal 5% minus $5,000.</p>
<p>This was followed in the quarter to 30-Sep-2003 (the year of SARS) by differential concessions capped at $1,250 for 
residential properties and $5,000 for non-residential (which tend to have larger RVs). There was then a short 4-year 
period of fiscal sanity until the so-called "one-off concessions" began again in the year to 31-Mar-2008 and they have 
never stopped since. In the current year to 31-Mar-2024, for each of the first 2 quarters there was a
<a href="https://www.budget.gov.hk/2023/eng/pdf/e_supplement01.pdf" target="_blank">concession</a> capped at $1,000 per 
property (of all types), reducing revenue by HK$5.94bn.</p>
<p>Tinkering with capped Rates concessions, or capped waivers of salaries tax or profits tax, is not a sensible way to 
run the budget nor to conduct welfare. If the Government is raising too much revenue, which has been a problem in the 
past, then the solution is to cut the percentage rates of taxes, including Rates, or at least make a uniform concession 
as they did with Rates in 1998 and 1999, without caps. Everyone ends up paying the same lower percentage.</p>
<p>On the other hand, if the Government wants to do more to help the poor, as it should, then it should do so with 
means-tested payments via the Social Welfare Department. After all, genuinely poor people don't own property and 
therefor won't benefit from rates concessions anyway. Yes, there is a small category of people who own their home but 
are illiquid, but the solution for them is to sell the property and rent an equivalent one, not for the Government to 
compensate them for owning property and exclude those who don't own property from the embedded handout.</p>
<h3>The proposed changes</h3>
<p>Now, things are about to get worse, unless the Government rethinks. In the 2022-23 budget,
<a href="../dbpub/positions.asp?p=7491">Paul Chan Mo Po</a>, the Financial Secretary,
<a href="https://www.budget.gov.hk/2022/eng/budget84.html" target="_blank">announced</a> that the Government would:</p>
<ol>
	<li>Further complicate the concessions for domestic (but not other) properties by limiting them to human owners (not 
	companies), and only one property per owner (<strong>Phase 1</strong>).</li>
	<li>Introduce a "progressive" (a euphemism for "escalating") Rates system for domestic (but not other) properties by 
	charging 5% on the first $550k of RV ($45.8k per month) of RV, then 8% on the next $250k, then 12% on the excess 
	above $800k ($66.7k per month) (<strong>Phase 2</strong>). How they came up with these increments and thresholds, and how they 
	might change in future, is anyone's guess.</li>
</ol>
<p>The timing of these changes depends on necessary software and systems updates (at a cost of hundreds of millions of 
HK$), but could take effect in the coming fiscal year to 31-Mar-2025.</p>
<h3>Phase 1</h3>
<p>While reducing the number of properties entitled to a Rates concession would obviously increase revenue, the right 
question, as noted above, is "why even provide concessions at all"? Why introduce so much complexity when HK is supposed 
to have a "<a href="https://www.investhk.gov.hk/en/why-hong-kong/low-simple-and-competitive-tax-system/" target="_blank">low, 
simple and competitive tax system</a>"? This proposal entails development of a new system by RVD, extensive rewriting of 
its computer software, and sucking in data from the Land Registry and the Immigration Department to verify that the 
ratepayer is indeed the owner, that her HKID is correct, and that she is entitled to the concession. There will also 
need to be a system for deciding, if a person owns more than 1 domestic property, which one of those properties gets the 
Rates 
discount.</p>
<p>Phase 1 also emphasises the welfare nature of the concessions: the Government claims that it is unfair that "owners 
who hold multiple properties enjoy multiple relief" - even though they of course pay their fair share of taxes on every 
property. In 
essence, Phase 1 says "this isn't meant to be a tax reduction, it's a handout limited to 1 per human property owner". 
Strangely, though, this twisted logic is not being applied to non-residential properties such as shops and offices, 
which will continue to get 1 concession per property, regardless of the type of owner, if and when provided.</p>
<h3>Phase 2</h3>
<p>Phase 2 means that for a property with a RV of $800k ($66.7k per month), the tax would be $47.5k (5.94%), while for a 
property with a RV of $1.2m ($100k per month), the tax would be $95.5k, an effective rate of 7.96%. Obviously as RV 
rises, you get closer to the full 12%. A house with an RV of $2.4m ($200k per month) would cost 9.98% in rates - call it 
10%. Here's the graph.</p>
<img class="center" alt="Rates v rent" src="../images/ratesVrent.gif">
<h3>Impact of Phase 2 on valuations</h3>
<p>Of course, the gross RV of a property is not the bottom line, because the owner has to pay for repairs and other 
outgoings (including in many cases, land rent at 3% of RV), so a change of 1% in the rate of Rates reduces net rental 
income by more like 1.2%. Ultimately, the value of a property equates to the net present value of its future net rental 
income. <strong>So for each additional 1% of RV (1.2% of net rental income) that the Government takes indefinitely, 
the value of your property should decrease by the same amount, 1.2%</strong>.</p>
<p>If you don't believe this, then 
imagine that the Rates were charged at 80% of RV and that your repairs and other outgoings were 20%. That would leave 
you with nothing every year, and the net present value of nothing is (approximately) nothing. The property would not 
just be worth less, but worthless.</p>
<p>And no, tenants will not pay more to rent your property just because your Rates have gone up. Their ability to pay 
depends on their incomes, not your costs. Any increase in rates comes out of the owner's pocket. Also, if the tenant pays the 
rates, then they will have less to spend on rent. So owners of a property with an RV of $100k per month will pay Rates of 
about 8% of RV versus the previous 5%. The effective 3.6% decrease in net rental income will reduce the value of that 
property by about 3.6%.</p>
<p>Phase 2 also involves new software for the RVD to calculate the Rates payable. The Government estimates that Phase 2 
will raise an additional HK$0.76bn of revenue per year, a tiny amount relative to the $5.2bn cost of concessions on 
domestic properties in 2023-24. That's because it would only affect an initial 2.2% of domestic tenements (excluding 
separate car park spaces). But before you look away thinking that this won't affect you, consider the fact that once 
such a system is established, it is a relatively simple matter to steepen the curve with higher rates and to reduce the 
thresholds at which those rates apply. Even if the Government never changes the thresholds again, inflation will ensure 
that more properties are lifted into the higher bands.</p>
<p>The Government is, in our view, practicing the populist politics of petty envy while needlessly complicating what 
was a very simple system, particularly when it was a steady 5% without concessions. In its
<a href="https://www.legco.gov.hk/yr2022/english/panels/fa/papers/fa20220404cb1-104-1-e.pdf" target="_blank">submission 
to LegCo</a> on 14-Mar-2022, the Government admitted that:</p>
<blockquote>
	"the existing regime to a certain extent already aligns with the "affordable users pay" principle by collecting more 
	rates revenue in absolute amount from more valuable properties."</blockquote>
<p>That should be enough, but they say that Phase 2 is to:</p>
<blockquote>
	"further uphold the "affordable users pay" principle"</blockquote>
<p>Where does this line of perverted reasoning take us? Would a 17% band be OK on top of the 5%, 8% and 12% bands? How 
about 28%? Surely that's affordable too, and it's a lucky number, unless you own a residential property.</p>
<p>It isn't too late to stop this madness. The Financial Secretary is shortly to announce his 2024-25 budget. 
Legislators, particularly those who own property, may wish him to think again. All that HK needs is a simple fixed 
percentage level of Rates on all properties, set according to revenue needs (currently 5%), without embedded and 
misdirected handouts. </p>
<p><em>&copy; Webb-site.com, 2024</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2533687">HKSAR Rating and Valuation Department</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7491">Chan, Paul Mo Po</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=24">Social welfare</a></li>
				
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