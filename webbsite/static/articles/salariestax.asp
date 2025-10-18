
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

<script type="text/javascript">document.title="Reforming Salaries Tax";</script>

	<div class="summary">The budget was devoid of any structural reform to public finances. In our first article in a series, Webb-site fills the void with a proposal to reform Salaries Tax to make it a simpler, fairer and flat tax.</div>

<h2 class="center">Reforming Salaries Tax<br>
<span class="headlinedate">24 February 2011</span></h2>
<p>As usual, yesterday's <a href="http://www.budget.gov.hk/" target="_blank">budget</a> 
was devoid of any structural reform to our public finances. In this article, 
we'll zoom in on the salaries tax regime and look at ways in which the 
Government, or the next one, might reform it to make it fairer and more 
efficient. A lot of media focused on the lack of &quot;one-off&quot; rebates (that's why 
they're called &quot;one-off&quot;) or changes to the basic personal allowance, but this 
really misses the big picture.</p>
<h3>Approach and current structure</h3>
<p>The basic approach of salaries tax is to tax each earning person on 
their personal &quot;profit&quot;, i.e. their earnings minus reasonable living expenses. 
That represents their share of economic output, or Gross Domestic Product. They 
provide their services to employers, but they have costs in doing so, namely the 
cost of living - housing, eating, transport and so on.</p>
<p>It is 
similar to the way we tax businesses, but it would be impractical for each person 
to file accounts, let alone audited accounts, documenting their expenses, so HK 
keeps this simple by giving workers
<a href="http://www.gov.hk/en/residents/taxes/salaries/allowances/allowances/7years.htm" target="_blank">
personal allowances</a> for such expenses, and tax them on any earnings after deducting those allowances. Thus, a single person gets a personal 
allowance of HK$108k (US$13.8k) per year, a married couple $216k, and if a person supports 
a sibling, parent, grandparent or minor child (or student up to 25 years old) 
then he gets an allowance for the cost of that too.</p>
<p>This is an eminently sensible approach. We should treat children as an 
allowable expense, because parents are creating the taxpayers of tomorrow. We 
even have a higher deduction in the year the child is born, because that is when 
healthcare costs for the mother and child are highest. There are other
<a href="http://www.gov.hk/en/residents/taxes/salaries/allowances/deductions/" target="_blank">
deductions</a>, most of which make sense. For example, if you are taking an 
education course, that will probably improve your future earnings power and 
taxpaying ability, so you get a deduction for that, up to $60k p.a..</p>
<p>However, what happens to the remaining &quot;chargeable income&quot; is a mish-mash of 
history unique to HK. We have the following 
<a href="http://www.gov.hk/en/residents/taxes/taxfiling/taxrates/salariesrates.htm" target="_blank">tax bands</a> on chargeable income, after allowances and deductions:</p>
<table class="optable center fcl">
	<tr>
		<td><em>Chargeable income</em></td>
		<td><em>Rate</em></td>
		<td><em>Tax</em></td>
	</tr>
	<tr>
		<td>First $40,000</td>
		<td>2%</td>
		<td>$800</td>
	</tr>
	<tr>
		<td>Next $40,000</td>
		<td>7%</td>
		<td>$2,800</td>
	</tr>
	<tr>
		<td>Next $40,000</td>
		<td>12%</td>
		<td>$4,800</td>
	</tr>
	<tr class="total">
		<td>First $120k</td>
		<td>7%</td>
		<td>$8,400</td>
	</tr>
	<tr>
		<td>Thereafter*</td>
		<td>17%-15%</td>
		<td>&nbsp;</td>
	</tr>
</table>
<p class="center"><em>*17% subject to a cap of 15% on income after 
deductions but <u>before</u> allowances.</em></p>
<p>What this means, for high-earning people, is that their marginal tax rate 
drops from 17% to 15% above a certain level. Because this &quot;standard rate&quot; of 15% 
is on income before allowances, the threshold above which your tax rate drops to 
15% depends on whether you are supporting a spouse or children or other relatives. 
For a single person, it is $1.518m (or $126.5k/month), and for a married person 
with a non-working spouse and 2 children, the threshold will be $3.456m (based on 
yesterday's proposed increase in child allowance from $50k to $60k per child). 
Above that, you pay 15%.</p>
<p>Another inequity is that a married couple with only one working spouse gets a 
combined allowance of $216k (twice the $108k singleton allowance), but the 
earner only gets one block of $40k chargeable income at the 2%, 7% and 12% 
bands, so if the earner earns more than $256k then she pays more tax than if 
each spouse had half the combined income. For example, if she earns $456k, then 
she pays $28.8k in tax, whereas if they each earn $228k, then they only pay 
$16.8k in tax in total.</p>
<h3>Background data</h3>
<p>We don't have a breakdown of the actual assessable incomes of the 1.4m 
current salaries taxpayers, but we know from a study commissioned by the 
Government in 2001 that in 1999, 21% of salaries taxpayers paid 82% of the tax. 
More recently, in 2008 there was a
<a href="http://www.info.gov.hk/gia/general/200807/09/P200807080276.htm" target="_blank">
LegCo Question</a> which resulted in a
<a href="http://gia.info.gov.hk/general/200807/09/P200807080276_0276_42122.doc" target="_blank">
table</a> of salaries tax paid in ranges for the 2006-7 year. Taking the 
mid-point of each range multiplied by the number of payers, and knowing the 
actual salaries tax collected in 2006-7, we estimate that the 20% of taxpayers 
(8% of workers) who paid $20k or more in tax paid 90% of all salaries tax that 
year. For reference, the first $90k was taxed in 3 bands at 2%, 7% and 13%, then 
19% thereafter with a standard rate of 16%.</p>
<img class="center" alt="Salaries tax 2006-7" src="../images/salariesTax07.gif">
<h3>A fair and flat salaries tax</h3>
<p>It would be far simpler and more equitable to tax personal profit at a flat 
rate. To be politically acceptable, any reform should not involve workers paying 
more dollars in salaries tax than before, so here's how it can be done:</p>
<ul>
	<li>There is little point in charging people 2% on the first $40k. It raises 
	only $800, so even if all of the 1.4m salaries taxpayers were earning the 
	full $40k (which they are not), this band only raises $1.12bn out of the 
	<a href="http://www.budget.gov.hk/2011/eng/pdf/head003b.pdf" target="_blank">budgeted</a> $48.15bn of salaries tax, 
	and the administrative cost of assessing and collecting it from those who 
	don't have more than the $40k of chargeable income eliminates a lot of the 
	tax raised. So one simple step would be to abolish 
	the 2% band by raising personal allowances by $40k.</li>
	<li>The next $40k band of 7%, even if all 1.4m taxpayers are in it (which they 
	are not), could only raise $3.92bn. Probably only half the workers are 
	partially in that bracket. Let's assume half of our 1.4m taxpayers earn 
	three quarters of that bracket, then they pay 700k x $2,100 = $1.47bn.</li>
	<li>Taken together, the first $120k of assessable income charges just $8,400 
	in tax, an average rate of 7%. So a taxpayer earning all of that would pay 
	the same amount if we taxed half of it at 14%. <strong>So we propose increasing 
	personal allowances by $60k and then tax all chargeable income at a flat 14%. No 
	taxpayer would pay more, almost all would pay less, and some would fall out of the 
	salaries tax net altogether.</strong></li>
	<li>The &quot;standard rate&quot; of tax would be abolished as an anachronism. 
	Even high-earning people should be entitled to the same allowance for basic 
	expenses.</li>
</ul>
<p>So here is how our 14% flat-tax would look, based on existing allowances for comparison purposes:</p>
<table class="optable center fcl">
	<tr>
		<td><em>Current<br/>chargeable income</em></td>
		<td><em>Tax now</em></td>
		<td><strong><em>14% Flat tax</em></strong></td>
		<td><em>Tax reduction</em></td>
	</tr>
	<tr>
		<td>$20k</td>
		<td>$400</td>
		<td>$0</td>
		<td>$400</td>
	</tr>
	<tr>
		<td>$40k</td>
		<td>$800</td>
		<td>$0</td>
		<td>$800</td>
	</tr>
	<tr>
		<td>$60k</td>
		<td>$2,200</td>
		<td>$0</td>
		<td>$2,200</td>
	</tr>
	<tr>
		<td>$80k</td>
		<td>$3,600</td>
		<td>$20k x 14% = $2,800</td>
		<td>$800</td>
	</tr>
	<tr>
		<td>$100k</td>
		<td>$6,000</td>
		<td>$40k x 14% = $5,600</td>
		<td>$400</td>
	</tr>
	<tr>
		<td>$120k</td>
		<td>$8,400</td>
		<td>$60k x 14% = $8,400</td>
		<td>$0</td>
	</tr>
	<tr>
		<td>Thereafter</td>
		<td>17%-15%</td>
		<td>14%</td>
		<td>&nbsp;</td>
	</tr>
</table>

<p>This would of course reduce overall revenue from salaries tax, but the 
middle-income workers, who currently pay 17% on chargeable income over $120k (that is, 
above $10k of 
&quot;profit&quot; per month) would benefit more in percentage-of-income terms 
(a 3% tax cut) than the very high 
earners who currently only pay 15% on their income before allowances. They would 
only get a 1% tax cut, plus they would stop being taxed on their personal 
allowance.</p>
<p>As an alternative, even if we did not want to reduce the headline top rate, 
we could accomplish a flat tax of 15% by increasing the allowance by $64k and 
taxing everything above it at 15%. The next $56k at 15% would raise $8,400, 
which is what we get from the current $120k in 3 bands. Nobody would pay more 
than before. A 15% flat tax would look like this:</p>
<table class="optable center fcl">
	<tr>
		<td><em>Current<br/>chargeable income</em></td>
		<td><em>Tax now</em></td>
		<td><strong><em>15% Flat tax</em></strong></td>
		<td><em>Tax reduction</em></td>
	</tr>
	<tr>
		<td>$20k</td>
		<td>$400</td>
		<td>$0</td>
		<td>$400</td>
	</tr>
	<tr>
		<td>$40k</td>
		<td>$800</td>
		<td>$0</td>
		<td>$800</td>
	</tr>
	<tr>
		<td>$64k</td>
		<td>$2,480</td>
		<td>$0</td>
		<td>$2,480</td>
	</tr>
	<tr>
		<td>$80k</td>
		<td>$3,600</td>
		<td>$16k x 15% = $2,400</td>
		<td>$1,200</td>
	</tr>
	<tr>
		<td>$100k</td>
		<td>$6,000</td>
		<td>$36k x 15% = $5,400</td>
		<td>$600</td>
	</tr>
	<tr>
		<td>$120k</td>
		<td>$8,400</td>
		<td>$56k x 15% = $8,400</td>
		<td>$0</td>
	</tr>
	<tr>
		<td>Thereafter</td>
		<td>17%-15%</td>
		<td>15%</td>
		<td>&nbsp;</td>
	</tr>
</table>
<p>Even if all 
the income above the first $120k is currently taxed at 17% (which it isn't), 
then dropping that to 14% would cut the revenue on that by 3/17 or 17.6%. That's 
the upper bound, but in reality, because of the standard tax rate, the revenue reduction on the over-$120k amount would be 
more like 14%, and perhaps 15% for salaries tax overall. <strong>So we estimate that our 
flat tax proposal would probably only reduce salaries tax revenue by about 15%, 
or $7.2bn in 2011-12</strong>. That is very affordable compared with the $24bn that the Government 
proposes to inject into MPF accounts, although the two are not mutually 
exclusive. A reminder that we have about $1,200bn in liquid reserves.</p>
<p>Yesterday's budget actually froze personal allowances for those who do not 
have children or dependent relatives, reducing the allowance in real terms after 
this year's expected 4.5% inflation. Our proposal would instead give everyone a 
$60k increase in personal allowance to $168k per year (or $14k per month), and a 
simple, understandable flat tax regime thereafter, with none of the current 
anomalies.</p>
<h3>Tax benefits</h3>
<p>One other reform is needed to salaries tax, and that is to start taxing 
people on <u>what</u> they are paid rather than
<u>how</u> they are paid. Currently there is a giant 
loophole in the tax law
<a href="http://www.hklii.org/hk/legis/en/ord/112/s9.html" target="_blank">
Section 9(2)</a> of the Inland Revenue Ordinance, which says that if your 
employer reimburses your rent or provides you with a home, then you will not be 
taxed on the rental value of the home but it will be taxed as 10% of your cash 
income. For example, if your employer pays you $50k per month and provides you 
with a home worth $50k per month then you will be assessed on $55k, not $100k, 
even though that is the tax-deductible cost for the employer. Other benefits 
which cannot be converted into cash and do not settle the employee's liabilities 
are also exempt, except for school fees. So if your employer pays for life 
insurance, health insurance or utilities on a flat rented in the employer's 
name, then he can deduct that from taxable profits as an employment expense, but 
you do not pay tax on the value of that benefit.</p>
<p>This policy is unfair and should be abolished. All benefits should be part of 
assessable income in the hands of an employee, as they are tax deductions to an 
employer. In the case of quarters provided rent-free, the rateable value of the 
premises should be the deemed value of the benefit. We <a href="tax1.asp">made this point</a> 7 years ago, after the budget 
in 2004.</p>
<p>The additional revenue from properly taxing benefits, particularly housing 
benefits, would partially offset the reduction in revenue from a flat tax at 14% 
as proposed above. Consequently over time, we may be able to lower the flat tax 
rate further.</p>
<h3>Home loan interest deduction</h3>
<p>One deduction doesn't make sense: the
<a href="http://www.gov.hk/en/residents/taxes/salaries/allowances/deductions/homeloan.htm" target="_blank">
home loan interest deduction</a> of up to $100k for 10 years, because housing 
costs should be covered by the personal allowance, and there is no deduction for 
rental costs. So that should be scrapped as part of our proposed reforms, with a 
larger personal allowance instead. As then-Financial Secretary (now Chief 
Executive) Donald Tsang
<a href="http://www.budget.gov.hk/1997/speech/eng/speech.htm#REVENUE" target="_blank">
said</a> in his budget of 1997:</p>
<blockquote>&quot;Some Members have again called for a tax allowance to cover 
spending on mortgage interest or even rental payments...it would be wrong in 
principle to create a general tax concession, regardless of the individual 
family's needs, to cover investment in housing&quot;</blockquote>
<p>Demonstrating his renowned ability to flip-flop his principles, he then introduced it in the following budget. Our proposed $60k increase in 
personal allowance ($120k per couple) is some compensation for removal of that 
distortion between renting and buying. With interest rates at record lows, now 
is the best window of opportunity to abolish the deduction.</p>
<h3>A footnote on profits tax</h3>
<p>An anonymous official briefing <em>SCMP</em> before the budget (as many did) said that profits tax could not be reduced 
because of the &quot;current anti-business sentiment&quot;. This is a deplorable basis 
on which to decide tax policy. Not all businesses are giants in cartels - the 
vast majority by number are small and medium enterprises. If you are 
over-taxing, under-spending, and hoarding $1.2 trillion of reserves, then you 
should be cutting taxes across the board and not engaging in haphazard &quot;one-off&quot; 
handouts such as general rates waivers and electricity subsidies. The Government 
is still in denial that is has a structural surplus, despite repeatedly 
underestimating the outcome.</p>
<p>Profits tax currently raises about twice as much as salaries tax, because 
businesses make more profits than people do, and is <a href="http://www.budget.gov.hk/2011/eng/pdf/head003b.pdf" target="_blank">
budgeted</a> at $96.9bn this year, compared with $48.15bn for salaries tax. 
Profits taxes and salaries taxes must be kept in sync, because otherwise people 
who own businesses will convert their profits into salaries (including bonuses) 
and declare no profit. Corporate profit becomes personal profit.</p>
<p>The general 
argument in favour of a slight differential between the rates of profits tax and salaries tax 
(which HK has) is that businesses tend to qualify for more tax deductions than workers do, 
and they can also carry forward their losses to offset future profits, which 
workers cannot. So if we 
introduce a headline salaries tax rate of 14%, down from 15%, then we should cut 
profits tax by the same 1%, from 16.5% to 15.5%. <strong>That would cut profits tax 
income by 1/16.5, or about $5.9bn</strong>, based on the budgeted figure.</p>
<p>We do not support the notion of a progressive tax (tiered) rate for 
businesses - that would just encourage large companies to divide their 
businesses into multiple subsidiaries, such as a separate company for each shop, 
to benefit from the lower rate. Indeed many do already, for other reasons. A 
flat tax rate is as simple and fair for business as it is for individuals.</p>
<h3>Conclusion</h3>
<p>So that's how to reform salaries tax.</p>
<ul>
	<li>Raise the personal allowance from $108k to $168k, with a flat rate 
	of tax at 14% thereafter, or to $172k with a flat rate of 15% tax 
	thereafter. Abolish all the other rates and the standard rate. Nobody would 
	pay more tax than at present from this change.</li>
	<li>Tax housing benefits at their real value, and tax other non-cash 
	benefits, because we should tax workers on what they are paid, not how they 
	are paid.</li>
	<li>Remove the home loan interest deduction, because the (enlarged) personal 
	allowance should cover basic housing costs, whether interest or rental.</li>
	<li>If you cut the top rate of salaries tax from 15% to 14%, then cut 
	profits tax from 16.5% to 15.5% to keep them synchronised and avoid 
	arbitrage.</li>
</ul>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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