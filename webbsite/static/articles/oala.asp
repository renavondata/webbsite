
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

<script type="text/javascript">document.title="Help the needy, not the needless";</script>

	<div class="summary">We price the proposed Old Age Living Allowance if means-testing is scrapped to make it a universal pension, and what it would mean for tax rates down the road to a welfare state. We show you the increasingly educated and affluent profile of future retirees, and call on Government to refocus on a better, properly means-tested and rebranded elderly CSSA system. We also look at the $2 fare scheme, another scattergun attempt at welfare.</div>

<h2 class="center">Help the needy, not the needless<br>
<span class="headlinedate">12 October 2012</span></h2>
<p>Some members of the Legislative Council (you know who you are) are currently calling for a 
non-means-tested handout to anyone over 65, rich or poor. In other words, a 
universal pension. The debate is framed around Chief Executive C Y 
Leung's manifesto pledge of a means-tested
<a href="http://www.legco.gov.hk/yr12-13/english/panels/ws/papers/wscb2-4-1-e.pdf" target="_blank">
Old Age Living Allowance</a> (<strong>OALA</strong>) and makes reference to the 
existing Old Age Allowance (<strong>OAA</strong>), colloquially known as &quot;fruit 
money&quot;, but if it is not means-tested, then it is a universal pension by another 
name. The legislators are threatening to veto OALA unless it is universal.</p>
<p>Universal benefits are a wasteful, untargeted and unsustainable 
approach to the allocation of Government resources. Last year, Webb-site ran the numbers on the
<a href="pensioncost.asp">cost of a universal pension</a> 
(12-Mar-2011), based on
<a href="http://www.statistics.gov.hk/publication/stat_report/population/B1120015042010XXXXB0100.pdf" target="_blank">
population projections</a> from the Census and Statistics Department. In twelve 
years' time, 2024, there will be 1.69m people over 65, up from about 0.98m at 
present. That will increase to 2.49m by 2039. Now let's look at what a $2,200 
OAA would cost. First we need to estimate the current cost of elderly 
allowances, then deduct that from what a system with a universal OALA would 
cost.</p>
<h3>What does the current system cost?</h3>
<p>There are currently 3 mutually-exclusive options, in order of 
increasing value: OAA, Disability Allowance (<strong>DA</strong>), which is 
non-means-tested, and means-tested Comprehensive Social Security Assistance (<strong>CSSA</strong>). CSSA currently
<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_socialsecurity/" target="_blank">
starts</a> at the rate of $2820 per month (for an able-bodied singleton) plus an 
annual supplement of $1765, a combined total of $2967/month. Higher rates apply 
for those who are 100% disabled or in need of constant attendance. There are 
also &quot;special grants&quot; for various purposes.</p>
<p>Information on expenditure on these 3 items is sparse but we can piece it 
together. </p>
<ul>
	<li>
	According to
	<a href="http://www.swd.gov.hk/doc/res_stat/swdfig2011.pdf" target="_blank">
	figures</a> from the Social Welfare Department, at 31-Mar-2011 there were 
	508,070 people on OAA. That's been growing at about 10,000 per year, so we 
	estimate there are now 523,000 at $1090/m, or <strong>$6.84bn</strong> per 
	year, excluding frequent &quot;one-off&quot; bonuses dished out in budgets and policy 
	addresses.</li>
	<li>According to a
	<a href="http://www.info.gov.hk/gia/general/201104/13/P201104130093.htm" target="_blank">
	Legco answer</a>, at 31-Mar-2011 there were 58,359 people aged 65+ on DA. 
	There are two levels of DA, &quot;Normal&quot; and &quot;Higher&quot;, currently at $1395/m and 
	$2790/m respectively. According to SWD figures, about 12.8% of all DA 
	recipients are on Higher DA. We will assume that is the same for those over 
	65. So we estimate the Normal DA costs $0.25bn and the Higher DA costs 
	$0.85bn per year, for those over 65, a total of <strong>$1.10bn</strong>.</li>
	<li>According to another Legco answer, at 31-Mar-2010, there were also 187,128 other
	<a href="http://gia.info.gov.hk/general/201103/30/P201103300167_0167_77110.pdf" target="_blank">
	elderly aged 60+ on CSSA</a>, and
	<a href="http://gia.info.gov.hk/general/201103/30/P201103300167_0167_77111.pdf" target="_blank">
	they cost</a> $8.89bn, an average of $3,959 per month. That includes a 
	one-off &quot;bonus&quot; month at the basic rate, but those are becoming the 
	political norm and should be built into expectations. The numbers are not directly comparable 
	to OAA, because CSSA defines elderly at 60+ rather than 65+ for OAA. 
	Assuming that the CSSA age distribution mirrors the population, then about 
	71% of the &quot;elderly&quot; CSSA claimants are 65+, or about 133,000. The number of 
	elderly CSSA cases has been stable over the last 5 years, so we'll assume 
	the same number for 2012. Allowances have been inflation-adjusted since then 
	by +9%, so the current annual cost is about <strong>$6.88bn</strong>, an 
	average of $4315/m per person.</li>
</ul>
<p>Altogether then, we estimate that the current cost of OAA, DA and CSSA for 
those aged 65+ is about <strong>$14.8bn</strong>.</p>
<h3>What would a universal OALA (pension) cost?</h3>
<p>If OALA is not means-tested, then all those on OAA and Normal DA would be 
switched to OALA to receive more money. Those on Higher DA and CSSA would stay 
there because the benefits are greater. As we noted above, the number of elderly 
CSSA cases has not changed materially over the last 5 years, despite the rising 
elderly population. That's partly because people retiring today are wealthier 
than those who retired in the past (for reasons see below). So we'll assume that 
the numbers of elderly 65+ on CSSA in 2024 and 2039 will be unchanged at 
current value of $6.88bn. We'll also assume that those on higher DA, about 0.8% 
of the elderly, increase in line with the elderly population. We'll also assume 
that 2% of the elderly population are economically irrational and simply don't 
collect the entitlement.</p>
<p>We therefore estimate the costs as follows:</p>
<img class="center" alt="" src="../images/OALA1.gif">
<p>So compared with current expenditure, a universal OALA of $2,200 per month 
would cost an <strong>additional $32.3bn in 2024 and $53.0bn in 2039</strong> 
(in 2012 dollars).</p>
<p>You might be thinking that population projections have often been wrong, but 
in this case we are really talking about the age distribution, and there is not 
much uncertainty surrounding longevity. If the absolute size of the population 
turns out to be wrong, then it is more likely to be at the young end of the bell 
curve (the birth 
rate and migration rate) rather than the old end, because old people weren't 
born yesterday.</p>
<h3>And it could be worse...</h3>
<p>Our expenditure estimate assumes that OALA keeps track of inflation (staying 
the same in 2012 dollar-terms). However, if the Government gives in now and 
makes OALA universal, then political pressures 
are likely to force up the handout faster than inflation. People would start to 
see it as a universal pension and then it would be criticised as insufficient to 
live on, even though a large number of recipients wouldn't actually need it. If 
the OALA was raised to say $4,300 per month, close to the current average CSSA 
level, then we can assume about 98% of the elderly population would collect it, 
at a cost of $85.3bn in 2024 and $125.7bn in 2039 (all in 2012 dollars). That's 
an additional $70.5bn in 2024 and $110.9bn in 2039 compared with current 
expenditure.</p>
<h3>Impact on tax rates</h3>
<p>The current GDP of HK (loosely, the money HK people and businesses make) is 
about HK$1,900bn per year, so spending an additional $53bn for a $2,200 
universal pension would be equivalent 
to about 2.8% of GDP, a big increase in the cost of HK's Government, which 
historically has been around 20% of GDP. By comparison, the
<a href="http://www.budget.gov.hk/2012/eng/pdf/head003b.pdf" target="_blank">
2012-13 budget estimates</a> that the total amount we expect to raise from 
salaries tax, property tax and personal assessment in 2012-13 is $56bn, and 
profits tax is estimated at $106bn, a total of $162bn.</p>
<p>Yes, GDP might grow a bit in the future, but there will be other demands on 
the Government, including the cost of healthcare for the elderly. So it is 
safest to budget based on the current situation.</p>
<p>Assuming a current 
average tax rate of 15% on income (after allowances), covering an additional $53bn 
of expenditure would 
result in tax rates going up by about 5%, so look for the profits tax rate to rise 
from 16.5% to 21.5% and the highest salaries tax rate to rise from 17% to 22% by 
2039. Even by 12 years' time, 2024, a 3% tax increase would be needed, taking 
the profits tax to 19.5% and the salaries tax to 20%.</p>
<p>And if political pressure drives the universal pension up to $4300/month, 
then the additional cost would raise tax rates by about 6.5% for 2024 and 10% in 
2039, so by 2039, profits tax would be 26.5% and the top rate of salaries tax 
would be 27%.</p>
<p>In reality, the rates would probably have to go higher than that, 
because as you raise rates, you drive away profits to friendlier jurisdictions. 
When the RMB is fully convertible (as it should be by then), if mainland tax 
rates are still at 25%, then who would want to shift their profits offshore to 
HK, as many do at present?</p>
<p>Yes, we do have substantial fiscal reserves and accumulated surplus in the 
Exchange Fund,
<a href="http://www.hkma.gov.hk/media/eng/doc/key-information/press-release/2012/20120928e4a1.pdf" target="_blank">
currently</a> about HK$1,239bn, but we can't depend on that indefinitely, 
particularly given the profligate way the Government has been spending on 
projects like the <a href="http://www.hyd.gov.hk/xrl/eng/main/" target="_blank">
high-speed tube to Shenzhen</a> ($60bn) and the
<a href="http://www.hyd.gov.hk/eng/road_and_railway/hzmb_projects/" target="_blank">
HK-Zhuhai-Macau air pollution bridge</a> ($49bn). Another 20 projects like that 
and we will be scraping the barrel.</p>
<h3>Old does not mean poor</h3>
<p>Whenever the TV stations talk about this subject, they tend to run B-roll 
footage of stooped old people pushing waste cardboard around, or living in caged 
homes, and this tends to reinforce a perception that all or most old people in 
HK are poor and needy. What they don't show you is retired investment bankers, 
lawyers, accountants, insurance agents, estate agents, stockbrokers, fund 
managers and doctors, who are unlikely to be poor, or civil servants 
on defined-benefit pensions, who will never be without income and normally have 
substantial savings too.</p>
<p>Any permanent civil servant who joined before 
1-Jun-2000 will get a pension based on his pre-retirement income and length of 
service. According to a
<a href="http://www.info.gov.hk/gia/general/201205/16/P201205160361.htm" target="_blank">
Government Answer</a> to Legco, at 31-Mar-2011, there were 103,720 people 
receiving civil service pensions, and another 126,131 working civil servants on 
pensionable terms. The monthly cost was around $1,846m ($22.1bn per year), an 
average of around $17,800/month per existing pensioner. We can see no reason why 
such persons should receive an additional $2,200 per month in the form of a 
non-means-tested OALA. The 2012-13
<a href="http://www.budget.gov.hk/2012/eng/pdf/head120.pdf" target="_blank">
budget estimates pension costs</a> of $23.1bn.</p>
<p>Although the elderly population is rising, the percentage who are 
actually needy of CSSA will fall over time, and if we focus our resources on 
them, then the overall expense will be 
affordable, even if we raise the level of CSSA benefits. The percentage of 
elderly who are poor will shrink because the average lifetime earnings and savings of people 
retiring in the future will be substantially higher than those who worked in 
factories making shirts, plastic flowers and transistor radios in the 1960s and 
1970s, often with only a primary education. They never had the savings capacity 
that many do today.</p>
<p>Take a look at this
<a href="http://www.census2011.gov.hk/en/main-table/B109.html" target="_blank">
table of educational attainment</a> from the 2011 census. It's raw numbers, but 
we'll save you the maths. From this we calculate that in 2011, only 
4.6% of those aged 65+ had a (university) degree, and only 16.6% got beyond 
lower secondary school before heading to work. A stunning 73.6%, almost three 
quarters of our elderly population, didn't get beyond primary school. Almost all 
of them were born before or during World War II.</p>
<p>But for people aged 50-64 who will reach retirement age in the next 15 years, 
8.4% have a degree, and 35.8% went beyond lower secondary school. Then look at 
the cohort aged 35-49, retiring from 2027-2042; 20.9% of them have degrees, and 
63.2% completed upper secondary school (Form 5), sixth form, or higher. Only 
16.1% didn't go beyond primary school, probably including many migrants from the 
mainland. With their education, and HK's economic prosperity in the last few 
decades, goes higher income. So the retirees of the future will overall be 
progressively better off and less 
needy.</p>
<h3>How did we get in this mess?</h3>
<p>Successive administrations since 1997, particularly Donald Tsang's, have been indiscriminate in their 
approach to welfare, outlaying large budget surpluses in a haphazard manner and 
gradually building up an expectation that they will continue to do so. It's an 
aspect of the creeping socialism, central planning and intervention which is 
undermining the capitalist foundations of HK's economic success, but it is not 
too late to stop it. We don't have to end up like Greece or Spain.</p>
<p>In the case of OAA, Donald Tsang got the ball rolling on 15-Oct-2008 by
<a href="http://www.info.gov.hk/gia/general/200810/15/P200810150129.htm" target="_blank">
proposing</a> to raise the OAA to $1,000, but with a means test. At the time, 
the OAA was $625/m for those aged 65-69 (with a means test) and $705/m for ages 
70+ (without a means test). So he was proposing a 41.8% or 60% increase for 
those who needed it. Those already over 70 who could not 
pass the means test would continue to receive the handout at the old 
rate, because they didn't need it. There ensued a famous incident in Legco in 
which the League of Social Democrats threw fruit at the Chief Executive, and 9 
days later, he
<a href="http://www.info.gov.hk/gia/general/200810/24/P200810240231.htm" target="_blank">
caved in</a>, &quot;shelved&quot; the means test, and increased the allowance to $1,000/m 
for everyone, including those who didn't need it, which
<a href="http://www.info.gov.hk/gia/general/200812/29/P200812290198.htm" target="_blank">
took effect</a> on 1-Jan-2009, raising annual expenditure by $1.765bn (plus 
bonuses). Since 
then, the allowance has been adjusted for inflation to its current $1,090/m.</p>
<h3>C Y, stand your ground and reform CSSA</h3>
<p>Where C Y Leung really messed up was by proposing this new layer of 
means-tested benefits in the first place, part of an election game in which 
Henry Tang
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=119642&amp;con_type=1" target="_blank">
countered</a> with an even higher offer of $3,000. We already have the CSSA 
system for means-tested benefits. There are problems with it, because qualifying 
involves assessing the entire household income, and often obtaining confirmation of the level of support (or confirmation of 
no support) from children, the so-called &quot;bad child&quot; letter. But rather than fix 
the problems with CSSA, the Chief Executive has proposed a patch-up job in the 
form of OALA.</p>
<p>CSSA should be modernised. The &quot;bad child&quot; letter can be scrapped, in favour 
of a simple declaration of income and assets of the individual or couple. Lying about that will still be a 
criminal offence.&nbsp; Asset thresholds should rise. Currently you have to be 
down to your last HK$24,000 of
<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_socialsecurity/" target="_blank">
assets to qualify</a> - but many people want a cushion to pay for their funeral, 
whilst still scraping by on minimal income. For an elderly person, the asset 
threshold should be raised to a more humane level, perhaps HK$100,000 for a 
singleton.</p>
<p>If C Y Leung had only been talking about raising the benefits and modernising 
CSSA, then nobody would be suggesting removing the means test. But because he 
has proposed OALA, which sounds like the existing OAA, he has paved the way to 
another political crisis. That said, he should now stand his ground. If legislators vote down the OALA proposal, 
they would be doing him a favour, because they will give him a chance to do a 
proper overhaul of the elderly CSSA system. He should 
then immediately establish a commission to review the elderly CSSA system, its 
assessment process and its benefit levels. It should probably also be rebranded 
to remove any stigma that the old CSSA has accumulated. We suggest the &quot;Modern 
Elderly Allowance for Needy Seniors&quot;, or MEANS, as it would be means-tested. No 
doubt a catchier Cantonese name can be devised.</p>
<p>If we have proper means-testing, then benefit levels for the needy can rise 
too. Put simply, we can afford to do more for the needy if we don't throw money 
at the needless. At the same time, he should do what Donald Tsang failed to do, 
and stop dishing out $1,090 per month to anyone who can't pass the means test. 
The truly needy should get a reformed CSSA level of benefits, not $1,090 per 
month.</p>
<h3>A proper means test</h3>
<p>One of the bizarre aspects of the existing means test for OAA, which is the 
same as the proposed means test for OALA, is that it excludes a primary 
residence from assets - so we are paying welfare to people who could otherwise 
sell their home and rent a similar one with part of the proceeds, or they could 
get a
<a href="http://www.hkmc.com.hk/eng/pcrm/ourbusiness/rm.html" target="_blank">
reverse mortgage</a> and stay in the home for the rest of their life while 
collecting monthly payments from the HKMC. We really shouldn't be paying welfare 
to people who own property. They are not poor, just illiquid, and they can 
resolve that by liquidating their main asset.</p>
<p>The OAA/OALA means test also ignores the support of family members. So 
if you live in a $3m flat and have less than $186,000 of cash savings (or $281k 
for a couple), and your family is supporting you with monthly payments (and 
getting a <a href="http://www.ird.gov.hk/eng/pdf/pam61e.pdf" target="_blank">tax 
allowance</a> for doing so), you can still get the proposed OALA. When you die, 
your family inherits the $3m property. In effect, the OAA or OALA comes right 
back to them. Example: retire at 65, live to 85, and collect OALA for 20 years 
at $2,200 per month. Use that and your family's support to live off, without 
touching your home, and your estate will be $528,000 better off when it passes 
to your children, who will also have received a tax break. How is that a good 
use of taxpayers' money?</p>
<p>By comparison, the CSSA has a proper means test, where income and assets from 
all sources is counted. That is as it should be, but we can certainly raise the 
thresholds and simplify the application process.</p>
<h3>$2 fares</h3>
<p>It's not just the higher OAA where this scattergun approach exists. On 28-Jun-2012, the HK Government 
began rolling out a 
<a href="http://www.lwb.gov.hk/fare_concession/index_e.html" target="_blank">
Public Transport Fare Concession Scheme</a> (<strong>PTFCS</strong>) which is 
another example of its wasteful and untargeted approach to welfare.&nbsp;Any 
person over 65, rich or poor, 
will now be entitled to take public transport for a nominal HK$2 (US$0.26) per 
journey, subsidised by taxpayers. We wonder why they bother charging at all. And 
that is any time of day, not just off-peak times. So old security guards, 
already benefitting from a
<a href="http://www.labour.gov.hk/eng/service/witss.htm" target="_blank">Work 
Incentive Transport Subsidy</a> (<strong>WITS</strong>) of $600/m, will now be 
able to get to work and back for just $100/m (assuming 25 days x $4) and pocket 
the other $500/m.</p>
<p>WITS, by the way, is another misguided scheme which
<a href="http://www.info.gov.hk/gia/general/200706/21/P200706210112.htm" target="_blank">
started</a> in 2007 with good intentions to compensate low-income workers who 
are forced to live in remote public housing and commute to work, but now it has 
morphed into a subsidy for all low-income workers, including city-dwellers, 
negating the compensatory effect. Instead, it gives employers an effective 
subsidy - they can pay less and still get people to come to work. And WITS has
<a href="http://www.labour.gov.hk/eng/service/witss_2.htm" target="_blank">yet 
another version of means test</a>, which excludes a self-occupied property from 
assets, but includes support from family in the household income test.</p>
<p>Back to the PTFCS. In a
<a href="http://www.legco.gov.hk/yr11-12/english/panels/ws/papers/ws0514cb2-1904-1-e.pdf" target="_blank">
paper</a> submitted to a LegCo meeting on 14-May-2012, the Government itemised a 
list of eligible routes. These include all the MTR lines except: the Airport 
Express, journeys to the border at Lo Wu and Lok Ma Chau, and the Shatin 
Racecourse (if you can afford to go abroad or gamble, then you can afford the 
rail fare). We predict a boom in domestic courier services staffed by seniors.</p>
<p>The subsidy also includes all the domestic ferry services, including 
the route from Central to <a href="http://www.dbay.com.hk/" target="_blank">Discovery Bay</a>, home of a huge single-developer 
private estate and no public housing. Anyone who can afford to live there 
doesn't need taxpayers to subsidise their transport. Retirement to Discovery Bay just became a whole lot more 
attractive. </p>
<p>The regular
<a href="http://www.dbay.com.hk/icms2/template?series=328" target="_blank">1-way fare</a> is $33.80 for adults and $16.90 for seniors aged 
&gt;=65, so there is already a cross-subsidy between passengers below and above 65. 
By buying &quot;stored points&quot; in a proprietary &quot;Transport Card&quot;, frequent users can get the price down to 
$27.97 for adults and $14.03 for seniors. Now the Government will subsidize most of the rest, reducing the senior fare 
to $2, a saving of 85.7% even for the lowest existing fare of $14.03. Between 
midnight and 6 a.m., the savings will be even greater, as the lowest senior fare 
overnight is currently $27.21. But seniors should be tucked up in bed with a 
whisky at that time of night, so we will ignore the overnight fare saving.</p>
<p>Even so, a person aged 65, commuting 5 days a week to central to continue a 
job or visit friends, would normally pay at least $140.30 per week and will now pay just 
$20. Over a 48-week year, allowing time for holidays, that would come to a 
saving of $481.20/month.</p>
<p>Who does this help? Well it helps:</p>
<ul>
	<li>landlords and property owners in Discovery Bay, because the 
	transport costs of living there just became a lot less for a large number of 
	people. That is likely to push rents up, absorbing a lot of the transport 
	savings that an elderly tenant might achieve. With rents up, the value of 
	property goes up too. Retirees who already own property there will get a 
	double boost - subsidised fares, and higher property value.</li>
	<li>the developer, Hong Kong Resort Co Ltd, which is 50% owned by
	<a href="../dbpub/orgdata.asp?p=462">HKR International Ltd</a> (<strong>HKR</strong>, 
	0480) and 50% owned by <a href="../dbpub/articles.asp?p=379">CITIC Pacific Ltd</a> (<strong>CITIC Pacific</strong>, 
	0267), to the extent that it can develop the resort further, perhaps by 
	boosting the plot ratio. It was reported in 2008 to be seeking to double the 
	plot ratio to 0.36.</li>
	<li>the operators of the ferry, because when you cut the user's price of 
	something by 86% then you are bound to increase demand. In this case the 
	ferry is operated by Discovery Bay Transportation Services Ltd, owned by the 
	developer.</li>
	<li>tenants aged 65+, to the extent that their rent (if any) increases by 
	less than their transport savings.</li>
</ul>
<p>The Government estimates the cost of the $2 fare scheme system-wide at HK$400m in the first full year, 
but that will grow over time as the number of elderly increases. The 
Government's estimate is also too low - they admit in their paper that they 
&quot;have not factored in additional patronage which may be induced by the Scheme&quot;. 
Still, taking their figures and using their population projections, we estimate that would cost $690m in 2024 and 
$1.02bn in 2039, all in 2012 dollars. This is just plain silly. If we took that 
$400 million in 2012, and allocated it to each of the 133,000 seniors over 65 on 
CSSA, then they could have an extra $3,000 per year or $250 per month. Why 
spread it across the entire 980,000 elderly population?</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=24">Social welfare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
				<li><a href="/dbpub/subject.asp?c=29">Transport</a></li>
				
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