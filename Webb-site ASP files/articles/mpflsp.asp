
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

<script type="text/javascript">document.title="Solving the MPF-LSP offset problem";</script>

	<div class="summary">We explain the historical context of the Long Service Payment and the offset against employers' Mandatory Provident Fund contributions, which is now an impediment to full portability, efficiency and lower costs in the MPF system. We provide a solution to this problem which, while not cost-free to employers, is better than the political alternatives, so they had better support it.</div>

<h2 class="center">Solving the MPF-LSP offset problem<br>
<span class="headlinedate">21 January 2014</span></h2>
<p>There's been a lot of ill-informed discussion in HK in the last few weeks about 
the offset arrangement between the statutory
<a href="http://www.labour.gov.hk/eng/public/wcp/ConciseGuide/10.pdf" target="_blank">
Long Service Payment (<strong>LSP</strong>)/Severance Payment (<strong>SP</strong>)</a> 
and the employer's contributions under the
<a href="../dbpub/articles.asp?p=10806" target="_blank">Mandatory Provident Fund</a> (<strong>MPF</strong>) 
schemes. The offset remains an impediment to full portability of the 
accumulated contributions, because the employer is concerned that if the 
employee can move his contributions then he may gamble them on higher-risk 
funds and, if that results in losses, he can still get LSP/SP. 
And without full portability, the already-high administration costs are even 
higher and employee choice is limited.</p>
<p>Unionists and some other legislators claim that employers &quot;raid&quot; or 
&quot;steal&quot; the MPF 
savings to pay LSP/SP, and call for the offset to be scrapped, but employers say 
this would be unfair. Before we present <a href="#solution">our solution below</a>, a detailed history 
of how HK got to this point would help us move forward.</p>
<h3>History of Severance Payments</h3>
<p>The combined history of LSP/SP dates back 40 years to 1974, in the wake 
of an economic crash following the
<a href="http://en.wikipedia.org/wiki/1973_oil_crisis" target="_blank">first Oil 
Shock</a>. The Hang Seng Index had reached a high of 1,774.96 on 9-Mar-1973, and 
lost 75.6% of its value by the end of the year to 433.68, bottoming on 
10-Dec-1974 at 150.11, a peak-to-trough loss of 91.5%. There was surely an 
increase in redundancies in the factories of Hong Kong, and the Government was 
facing calls to support the redundant workers.</p>
<p>In LegCo on 3-Jul-1974, the Government
<a href="http://www.legco.gov.hk/yr73-74/h740703.pdf" target="_blank">introduced</a> 
(p38) a bill to amend the Employment Ordinance to introduce statutory severance 
payments on redundancy for all manual workers and for employees who earned below 
a certain salary, at an initial rate of 1/3 of a month's salary for each year of 
service, subject to a minimum of 2 years' service and a maximum of 12 months' 
pay (for 36 years of service). The linkage of payout to duration of service was 
said to be because:</p>
<blockquote>&quot;a worker with longer service stood to lose more 
than a worker with shorter service&quot;</blockquote>
<p>although that is economic nonsense - both workers stood to lose their 
jobs and nothing more. That false distinction survives in the law today, 
providing an incentive for employers to terminate the most recently-hired staff 
rather than the least productive workers, although the MPF offset has started 
to remove that incentive, because the SP is often already paid for in the 
employer's MPF contributions.</p>
<p>Thus in 1974, for the first time, the Government turned an employment 
contract into an asset on which a statutory value was placed, intervening in the 
private employment contract which would otherwise provide for whatever notice 
periods or compensation an employee and employer could freely negotiate. There 
was also a motivation for the Government in privatising its own social 
obligations to provide welfare, as then Acting Secretary for Social Services put 
it:</p>
<blockquote>&quot;It will serve to protect employees against 
possible hardship arising from redundancy and, with Hong Kong's present system 
of social security, it seems important...&quot;</blockquote>
<p>The social security system has of course moved on from 1974, and the
<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_comprehens/" target="_blank">
Comprehensive Social Security Assistance</a> (<strong>CSSA</strong>) scheme, 
which was introduced in 1971 (then known as the Public Assistance Scheme) was at 
very low levels but now provides a 
means-tested inflation-linked monthly payment to those who find themselves both 
unemployed and without savings.</p>
<p>For those interested in LegCo history, the
<a href="http://www.legco.gov.hk/yr73-74/h740731.pdf" target="_blank">second 
reading debate</a> (p41) on severance payments occurred on 31-Jul-1974 and the bill was
<a href="http://www.legco.gov.hk/yr73-74/h740814.pdf" target="_blank">passed 
with amendments</a> (p72) on 14-Aug-1974, the last sitting of that session. 
Later the rate was increased from 1/3 to 2/3 of a month's salary for each year 
of service, subject to a maximum of 12 months' salary.</p>
<h3>History of Long Service Payments</h3>
<p>As one bad policy leads to 
another, the perceived need for LSP arose because of SP. It was felt that if you 
were paid a lump sum for being made redundant, then it was unfair if you were
<em>not</em> paid a lump sum (other than what is contractually agreed) if dismissed for 
other reasons (other than serious misconduct), particularly for becoming old and 
less productive. You might wonder whether it is fair for employers to have to 
compensate people for becoming less employable, but that's politics; it was 
another privatisation of social obligations, and employers would of course build 
the obligation into their hiring, firing and salary decisions.</p>
<p>The bill was
<a href="http://www.legco.gov.hk/yr85-86/english/lc_sitg/hansard/h851204.pdf" target="_blank">
introduced</a> (p30) to LegCo on 4-Dec-1985, and a debate and passage
<a href="http://www.legco.gov.hk/yr85-86/english/lc_sitg/hansard/h851218.pdf" target="_blank">
occurred</a> (p14) on 18-Dec-1985. A contentious issue was how old a person had 
to be to qualify for LSP. The qualifying period was 5 years service if aged 45 
or above, 6 years at age 44, and so on up to 10 years at age 40 or below. The 
law required an LSP at 2/3 of a month's wages for each year of service. Those 
under 36 would get 50% of the prescribed amount, and those aged 36 or more but 
under 40 would get 75%.</p>
<p>However, this did not actually introduce a &quot;retirement age&quot;, because it was 
only payable if the employer terminated the contract, not if the employee 
resigned for ill-health or old age. So on 15-Jun-1988, the Government
<a href="http://www.legco.gov.hk/yr87-88/english/lc_sitg/hansard/h880615.pdf" target="_blank">
introduced</a> (p44) a bill to extend the LSP to 
cover employees who die, resign on grounds of ill-health or who retire 
at age 65 or above after at least 10 years' service. The bill was
<a href="http://www.legco.gov.hk/yr87-88/english/lc_sitg/hansard/h880629.pdf" target="_blank">
debated and passed</a> (p42, 52) on 29-Jun-1988.</p>
<p>On 23-Oct-1991, the Government
<a href="http://www.legco.gov.hk/yr91-92/english/lc_sitg/hansard/h911023.pdf" target="_blank">
introduced</a> (p65) a bill to reduce the qualifying period of service for LSP 
on retirement to 5 years; to remove the differential rates of payment based on 
age over a 2-year period; and to remove the longer qualifying period for 
employees terminated aged below 45, so that it would be 5 years in all cases. 
However, employees aged below 45 with 5-10 years of service would still see a 
reduced phased benefit rising from 50% to 100%. Today it is the same benefit 
regardless of age.</p>
<h3>History of the Employment Ordinance and caps</h3>
<p>The <a href="../codocs/EmployersServants1902.pdf" target="_blank">Employers and Servants Ordinance of 1902</a> introduced deemed monthly contracts 
and notice periods in certain occupations with oral contracts, to resolve disputes 
over notice periods in an era when 
many servants had no written contracts and many couldn't have read them anyway. 
For oral contracts it provided for one month's notice (by either party) or 
payment in lieu. The definition of &quot;servant&quot; contains an interesting list of 
occupations:</p>
<blockquote>&quot;shall include every person above the age of sixteen years being a 
mechanic, artificer or other handicraftsman, engine-driver or fireman; boatman, 
any person engaged for service on board any launch, motor boat, cargo-boat, 
fishing-junk, or trading-junk; messenger, lift 
attendant, godown-keeper, tallyman, watchman, labourer, servant in husbandry or 
manufacture; coachman, groom or other stable servant; gardener or other garden 
servant, bearer of private chair, puller or propeller of private jinricksha, 
water carrier; domestic menial or other house servant whether ordinarily 
employed in or out of doors; who enters into a contract of service with an 
employer.&quot;</blockquote>
<p>Wonderful stuff. Apart from those very limited provisions for oral servants' contracts, 
employees and employers were free to negotiate their contracts. In 1961, the 
list of occupations was abolished and the ordinance
<a href="http://www.legco.gov.hk/1961/h610906.pdf" target="_blank">amended</a> 
(p2) to apply it to any oral employment contract where the cash pay did not exceed 
HK$700 per month, a level set in other legislation in 1953. It was presumably 
thought, in line with the free-market principles that made HK so successful, 
that the minority who were fortunate enough to earn more than that could 
negotiate their own contracts, including notice periods and retirement benefits, 
if any.</p>
<p>The Employment Ordinance was first enacted in 1968, replacing the Employers 
and Servants Ordinance. It applied to all &quot;manual&quot; employees (regardless of 
salary) and to non-manual employees who earned not more than HK$1,500 per month 
(in 1968 dollars). No definition of &quot;manual employee&quot; was provided. The wage ceiling for non-manual workers was revised 
regularly due to inflation and reached $11,500 in 1987. Along the way, the 
ordinance was amended to introduce SP in 1974 and LSP in 1986 and 1988 as 
described above.</p>
<p>On 10-Jan-1990, an amendment was
<a href="http://www.legco.gov.hk/yr89-90/english/lc_sitg/hansard/h900110.pdf" target="_blank">
introduced</a> (p57) to apply the Employment Ordinance to all employees regardless of 
salary, and a cap of $15,000 was introduced on the portion of the salary used 
for calculation of LSP/SP. This brought higher-income professional sectors into 
the system for the first time, and was another example of one bad policy leading 
to another, because it was presumably felt unfair that if you were a non-manual 
worker earning $15,001 per month then you were not previously covered - an 
employer might even give you a pay raise the month before firing you, to push 
you over the limit. Yet as the Government
<a href="http://www.legco.gov.hk/yr89-90/english/lc_sitg/hansard/h900110.pdf" target="_blank">
noted</a> (p58) at the time:</p>
<blockquote>&quot;employees whose monthly wages exceed the current wage 
ceiling are usually and adequately protected by contracts of employment that 
provide for retirement benefits.&quot;</blockquote>
<p>For employees earning more than $15k, the LSP entitlement was phased in over the next 8 
years. That bill also introduced cover for part-time employees who worked not 
less than 18 hours per week in 4 consecutive weeks, and importantly, it 
provided:</p>
<blockquote><strong>&quot;that long service payments and severance 
payments may be offset by the employer's contribution to pension schemes and 
retirement schemes&quot;</strong></blockquote>
<p>The bill was
<a href="http://www.legco.gov.hk/yr89-90/english/lc_sitg/hansard/h900606.pdf" target="_blank">
passed</a> on 6-Jun-1990.</p>
<p>On 13-May-1992, the Government
<a href="http://www.legco.gov.hk/yr91-92/english/lc_sitg/hansard/h920513.pdf" target="_blank">
introduced</a> (p61) a bill which was
<a href="http://www.legco.gov.hk/yr91-92/english/lc_sitg/hansard/h920708.pdf" target="_blank">
passed</a> (p67, 77) on 8-Jul-1992 to, amongst other things:</p>
<blockquote>&quot;remove the ambiguities in the existing provisions on 
setting off of retirement scheme payment against severance or long service 
payment. To ensure that employers will not have to pay double benefits, clauses 
7 and 11 put it beyond doubt that payment of severance or long service payment 
can be set off by retirement scheme payment and vice versa.&quot;</blockquote>
<p>In LegCo on 18-Jan-1995, a bill was
<a href="http://www.legco.gov.hk/yr94-95/english/lc_sitg/hansard/h950118.pdf" target="_blank">
introduced and passed</a> (p50) to increase the maximum LSP/SP payout from 12 
months' salary (with a cap of $180k), equivalent to 18 years' service, first by 
increasing it to 25 years plus half of any remaining period, and then ratcheting 
that up by 2 years per year from 1-Oct-1995 until it reached 43 years on 
1-Oct-2003 and no limit from 1-Oct-2004. The cap was also increased to $210k and 
then increased by $20k every year from 1-Oct-1995 to $390k (US$50k) on 
1-Oct-2003, where it remains.</p>
<p>In LegCo on 21-Jun-1995, the monthly salary cap
<a href="http://www.legco.gov.hk/yr94-95/english/lc_sitg/hansard/h950621.pdf" target="_blank">
was increased</a> (p56) from $15,000 to $22,500, where it remains today, 
although the composite consumer price index has risen about 30% since then. That 
caps the payout at $15k for each year of service, so the cap of $390k relates to 
26 years' service at the maximum salary. The fact that the LSP/SP cap has not 
been increased for inflation is probably deliberate, because that would worsen 
the MPF offset problem.</p>
<h3>Introduction of the MPF</h3>
<p>The last adjustments to LSP caps came almost simultaneously with the 
introduction to LegCo in 1995 of proposals for the Mandatory Provident Fund 
Scheme. This followed an earlier attempt by the Patten administration to 
introduce a universal Old-age Pension Scheme (OPS) partly funded by a 6% tax on 
employees and employers (3% each side) which faced heavy opposition from the 
business community. The proposed level of pension was then $2,300 per month per 
person (not just former employees) over 65.</p>
<p>In a
<a href="http://www.legco.gov.hk/yr94-95/english/lc_sitg/hansard/h941109.pdf" target="_blank">
motion debate</a> (p60) on 9-Nov-1994, James Tien for the Liberal Party proposed 
a privately-managed &quot;compulsory Occupational Retirement Scheme&quot; funded by a 10% 
charge (5% on each side), exempting Foreign Domestic Helpers and low-income 
employees from contributing, and allowing individuals to pick their own funds. 
On 8-Mar-1995 the Government dropped the OPS and
<a href="http://www.legco.gov.hk/yr94-95/english/lc_sitg/hansard/h950308.pdf" target="_blank">
moved a motion</a> (p70) for a mandatory provident fund system with the same 
contribution rates that the Liberal Party had proposed. This put them on the 
path to the MPF, which became operational in Dec-1999.</p>
<p>By the way, that 5%+5% employer/employee thing is just an optical illusion to 
make you feel better - it is actually 10/105, or 9.52%, of the amount your 
employer spends on you, so you should think of it as a 9.52% compulsory savings 
scheme, with full deduction for salaries tax purposes. For every $105 the 
employer spends, you get $95 up front and $10 into your savings scheme, while 
the employer gets a $105 deduction for taxable profits.</p>
<h3>The offset</h3>
<p>With the history laid out, you can now understand that the LSP/SP, from 1988 
onwards was the earliest form of retirement protection, designed to set a 
minimum on what employees would receive in the event of dismissal or retirement, 
not as a supplement. If employers were already voluntarily paying more than that 
via provident funds or other retirement schemes, then they would not have to pay 
again. That minimum obligation is now a liability of up to $390k per employee 
and up to $15,000 for each year of service, whichever is lower.</p>
<p>Before the MPF, some employers already had their own voluntary 
provident fund schemes. Schemes which met certain criteria were approved by the 
Inland Revenue and qualified for tax exemption on contributions, so they were an 
efficient way to pay employees. The role of the Inland Revenue was replaced by 
the Registrar of Occupational Retirement Schemes when the Occupational 
Retirement Schemes Ordinance became effective on 15-Oct-1993.</p>
<p>Since 1990, when the LSP was extended to cover non-manual workers earning 
more than $15k per month, employers had the right to offset the amounts in these 
schemes against the LSP. As the Government put it in the 8-Mar-1995
<a href="http://www.legco.gov.hk/yr94-95/english/lc_sitg/hansard/h950308.pdf" target="_blank">
debate</a> (p75):</p>
<blockquote>&quot;At present, the employer's contributions to a retirement 
scheme may be set off against any amount he has paid out for severance payments 
or long service payments. Employers do not pay twice. Severance payments and 
long service payments are not designed as supplementary retirement schemes. They 
are intended to be alternatives to these retirement schemes. That is why the 
offsetting provisions exist under the present voluntary system of occupational 
retirement schemes. We do not intend to change it under the MPF&quot;</blockquote>
<p>For each year of employment, the LSP/SP liability is 2/3 of 1 month's salary. 
That is about 5.55% of a 12-month salary, or 5.13% of a 13-month salary (many 
employees in HK get a lunar new year bonus). It is no coincidence that the 
employer's contribution to the MPF was set at 5% of salary; in essence it meant 
that employers would put into the fund the amount they should have set aside 
anyway for the worker's eventual retirement or dismissal (unless they resigned 
before 65).</p>
<p>So the offset has a sound historic logic, and it would be unfair to tell 
employers, after 14 years of MPF contributions (even longer for ORSO), that they 
have to pay LSP without any credit for those contributions.</p>
<h3>Multiple accounts</h3>
<p>According to the latest
<a href="http://www.mpfa.org.hk/eng/information_centre/statistics/mpf_schemes_statistical_digest/files/Sep_2013_Issue.pdf" target="_blank">
MPFA statistical digest</a> (Sep-2013) there is now $488bn in MPF funds and 
$283bn in ORSO schemes, a total of $771bn. There are 2.440m employees and 0.217m 
self-employed people in the MPF system, a total of 2.657m, and 0.397m people 
covered by ORSO schemes, of which 0.351m are in MPF-exempted ORSO schemes 
because they provide at least as good benefits as the MPF.</p>
<p>In the MPF, however, there are 3.571m Contribution Accounts, because some 
people have more than one job and perhaps because some have left their employer 
but not moved the money from that account, and there are another 4.551m Personal 
Accounts, which relate to members' former employment and to employees' 
contributions from their current jobs which have been moved out under the 
so-called <a href="http://minisite.mpfa.org.hk/eca/en/" target="_blank">Employee 
Choice Arrangement</a> (<strong>ECA</strong>), which took effect on 1-Nov-2012. 
So that is 8.122m accounts for 2.657m people - or about <strong>3.06 accounts 
per current employee</strong> on average (yes, a few of them belong to people 
now working for ORSO employers or other exempt categories). The additional 
administration this entails, compared with having 1 account each, is a shameful 
waste of resources, and it all comes out of the funds.</p>
<p>Incidentally, in the last update before ECA, at 30-Sep-2012 there were 4.178m 
Personal Accounts, a number which had grown by 0.323m in the previous year 
without ECA, while the increase in the year to 30-Sep-2013 was only 0.373m, or 
50,000 more. This indicates that very few people have overcome the inertia and 
administrative hurdles to move money out of their employer's chosen MPF 
provider. That movement is only allowed once per year anyway, and can take 
several weeks to effect, while money is &quot;out of the market&quot;. The ECA is, as we 
expected, a dismal failure, and not a substitute for true portability via a 
central platform, in which an employee could have a lifetime account through 
which she could direct where the contributions should go. The lack of mobility, 
coupled with the fragmented accounts, is undoubtedly inhibiting competition and 
keeping fees higher than they need to be. <strong>For every 0.1% that we can 
reduce fees, employees would be $488m better off per year, and climbing.</strong></p>
<h3 id="solution">The solution</h3>
<p>Now that you are primed with the background, you can see that the LSP/SP 
system has in essence been superseded by the MPF, and the LSP/SP is preventing 
portability of MPF contributions. It is time to bring LSP/SP gracefully to an end, 
and it is time to introduce full portability of MPF contributions (if we are not 
going to <a href="mpfcost.asp">scrap the system</a> altogether). 
Here's how it would work:</p>
<ol>
	<li>A &quot;Transition Date&quot; would be decided, at which the LSP/SP accruals would 
	end - say 31-Dec-2014.</li>
	<li>From the Transition Date onwards, the employer and employee 
	contributions would be merged, and the employee would be free to move the 
	whole amount and all future contributions to her chosen manager(s): full 
	portability, independent of your job.</li>
	<li>All accrued LSP/SP entitlements would be protected. So if you have been 
	working for the same employer for say 7 years up to the Transition Date, 
	then he would still be liable to pay 7 years' worth of LSP (at final salary) 
	when you eventually retire or if you are terminated, less a fixed &quot;Offset 
	Amount&quot; (see next point), but you would not accrue any more LSP/SP, and 
	there would be no further offset.</li>
	<li>In order to release the MPF funds to full portability, the employer 
	needs certainty on the Offset Amount, but that should come at a price to 
	ensure public acceptability. In the past, the Offset Amount has been the value of 
	the employer's accumulated contributions at termination, up to the amount of 
	LSP/SP. Under our solution, 
	the offset would be frozen at the value of those funds on the Transition 
	Date, up to the value of the LSP/SP on the Transition Date. 
	So for example, if the employer's accumulated contributions (including 
	investment returns) are worth $100,000 on the Transition Date and the LSP is 
	worth $105,000, then the Offset Amount would be $100,000. This rule would be 
	an improvement for employees, because (depending on how far away retirement 
	or termination is) they should be able to make additional investment returns 
	on that money which will not be offset.</li>
	<li>If an existing employee at the Transition date is terminated any time 
	after the Transition Date, then she would have the right to withdraw the 
	Offset Amount from the MPF, wherever her money is, but she would also be 
	free to leave it there for her retirement.</li>
	<li>For anyone who starts a job after the Transition Date, there would be no 
	LSP/SP, but they would have full portability of the 10% contribution. Instead 
	of withdrawing from the MPF to pay LSP/SP, anyone who finds themselves 
	without sufficient savings after being terminated (under 65) should receive 
	CSSA, and the Government should clarify that the asset test for CSSA does 
	not include mandatory contributions in MPF accounts which cannot be withdrawn. The same exclusion 
	applies in personal bankruptcies - the MPF is untouchable.</li>
</ol>
<h3>Striking a balance</h3>
<p>Unions may say that for new jobs after the Transition date, there should 
still be some kind of statutory severance pay on dismissal, but that is really a 
social obligation that should be met through welfare (CSSA) payments to the 
needy, and not to those who have adequate non-MPF assets. The law would still 
provide, as it has since 1902, that if a contract is unwritten, then it is 
deemed to require 1 month's notice, or 1 month's pay instead of notice. A 
possible compromise would be to extend this to written contracts, so that every 
employee gets a minimum of 1 month's notice (excluding cases of serious 
misconduct). Currently the
<a href="http://www.labour.gov.hk/eng/public/wcp/ConciseGuide/08.pdf" target="_blank">
statutory minimum notice</a> for written contracts (after the first month 
probation) is only 7 days.</p>
<p>This solution would not lead to a material increase in CSSA case load. The 
unemployment rate is low, and not every terminated worker has no savings. Those 
who wish to buy insurance against unemployment, which may provide higher 
benefits than CSSA, could do so in the free market.</p>
<p>What has been happening until now is that when an employee is 
terminated after 5 years or more, he gets part of his MPF money 
early instead of LSP, but that leaves him with less to retire with, and the 
whole point of the MPF was supposed to be to provide a retirement cushion. This 
is particularly bad for low-income workers who do not themselves make 
contributions. Currently if you earn less than $7,100 per month then you are 
exempt and only your employer pays into the fund. That money gets cleared out 
when you are terminated, to pay the LSP. In fact it also provides a &quot;please fire me&quot; 
incentive - if you are going to resign, then get your boss to fire you so that you 
can withdraw LSP from the MPF. He won't mind doing that if the LSP amount is 
less than his accumulated MPF contributions.</p>
<p>On point (4) above, the employers may initially complain that this means they will 
have a reduced Offset Amount because of future salary inflation and promotions 
(because the accrued LSP/SP is based on final salary), but we think they will 
find this bearable compared with the political alternatives, such as ending the 
offset completely but keeping LSP, which would be wildly popular with employees 
but would cost employers tens or hundreds of billions of dollars in additional 
payments. So employers, if you don't like our solution, then be careful what you 
wish for.</p>
<p>In practice, very few people (apart from civil servants) stay with the 
same employer for long - the vast number of Personal MPF Accounts after just 14 
years proves this - there are around 2 &quot;old&quot; accounts for every current worker. 
In the ordinary course, many employees would either resign or be terminated 
within a few years of the Transition Date, reducing the actual cost of a frozen 
Offset Amount. Also, those who are close to retirement with very long periods of 
LSP accrual will not have long to grow the MPF money anyway. So what we are 
proposing is not free to employers, but it does allow Hong Kong to move forward 
and reduce the costs of the MPF at minimal cost to them.</p>
<p>The solution we are proposing is also consistent with Chief Executive C Y 
Leung's <a href="http://www.ceo.gov.hk/eng/pdf/manifesto.pdf" target="_blank">
manifesto</a> (p14) to:</p>
<blockquote>&nbsp;&quot;progressively reduce the proportion of accrued 
benefits attributed to the employer's contribution in the MPF account that can 
be applied by the employer to offset [LSP/SP] payments.&quot;</blockquote>
<p>After the Transition Date in our solution, the nominal value of the Offset 
Amount will freeze, while the investment returns on the Offset Amount and 
subsequent contributions will continue to grow, progressively reducing the 
proportion that the Offset Amount represents.</p>
<h3>Other reforms</h3>
<p>There are of course many other changes that should be made to the MPF if it 
is to ever be popular or trusted by the public. These include: greater 
investment choice, including self-managed accounts in bonds, shares and time 
deposits rather than captive funds, and a &quot;central trustee&quot; with an electronic 
platform to manage a &quot;Lifetime Account&quot; for each MPF member and direct the 
payments to chosen managers. And if popularity can be attained, then we need to 
talk about phased withdrawal at 65, so that you don't just take your lump sum 
and blow it all in one night at Happy Valley or use it to pay off debts racked 
up in anticipation of the Big Day. Members should be required to leave in the 
fund a certain amount for each remaining year of their life, based on say, a 
25-year expected retirement.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=60">Labour</a></li>
				
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