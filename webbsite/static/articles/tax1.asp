
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

<script type="text/javascript">document.title="Tax Benefits";</script>

	<div class="summary">One big tax loophole that the Government left open in today's budget is the Housing Loophole - as a result, Hong Kong taxes people not on the basis of how much they are paid, but how they are paid. A person who would otherwise reach the top rate of 16% can cut that to just 6.87%, with the employer's co-operation. We take you through the numbers.</div>

<h2 class="center">Tax Benefits<br>
<span class="headlinedate">10 March 2004</span></h2>
<p>One of the things that Financial Secretary Henry Tang could have 
done in today's budget, but didn't, was to start taxing employees on the basis 
of <u>how much</u> they are paid rather than <u>how</u> they are paid.</p>
<p>This is a subtle but key point. For a salaries tax system to be 
fair, it should require two individuals, who receive remuneration of identical 
value but in different forms, to pay the same amount of tax. That's not the case 
in HK, where the tax an employee pays depends more on how they are paid, not how 
much they are paid. </p>

<p>The 
<a href="http://www.hklii.hk/eng/hk/legis/ord/112/" target="_blank">Inland Revenue Ordinance</a> has a specific provision in 
<a href="http://www.hklii.hk/eng/hk/legis/ord/112/s9.html" target="_blank">Section
9</a> that any housing which is paid for by an employer is  deemed for tax
purposes to be worth 10% of the employee's other cash remuneration (net of 
deductions). This is regardless of whether you are living in a mansion or a 
hovel - the taxable value bears absolutely no relationship to the value of the 
property. It results in a discriminatory tax system in which those who are 
provided housing pay far less tax than those who receive the equivalent in cash. 
Such arrangements tend to favour high income workers who would otherwise pay up 
to 20% on the incremental value.</p>

<p>Why deem the value to be 10% of salary? We have no idea. Perhaps back in the 
distant past, it was thought that nobody would spend more than about 10% of 
their income on housing, but that is surely not the case now. For many, the 
figure is probably closer to 50%.</p>

<h3>Salaries Tax overview</h3>

<p>HK has a system of 
<a href="http://www.gov.hk/en/residents/taxes/taxfiling/taxrates/salariesrates.htm" target="_blank">staggered
salaries tax rates</a> which begins at 2% and rises to 20% (rates for 2004/05), but subject to a
cap of 16% of <i>&quot;net total income&quot;</i> (after deductions but before
allowances). After allowances, for anyone with taxable income over $90k, the 
first $90k per year is taxed at 8% and anything above that is taxed at 20%, 
subject to the 16% overall cap.</p>

<p>Each person has an allowance of $100,000 of tax-free income
per annum, and married couples can allocate their combined $200,000 in the most
tax-efficient manner. There are also various <a href="http://www.info.gov.hk/ird/eng/tax/ind_all.htm" target="_blank">allowances</a>
for dependent children, parents, grandparents and siblings.</p>

<p><i>Webb-site.com</i> has derived a simple formula to determine the point at which the tax rate levels out at 16%: </p>

<p class="center">Income = $282,000 + (5 x Allowances) </p>

<p>For example, a married person with 2 children would have to earn $1.582m per 
year (or just under $132k per month) in top-line income (including employee's 
MPF contributions)
before reaching the 16% tax rate on his pay.</p>

<h3>The Housing Loophole</h3>

<p>To illustrate our case, let's take two persons, Worker A and Worker B. Each 
does the same job as a senior manager in competing companies, each is married 
with two children, and his or her spouse doesn't have any income. Each worker 
can claim total allowances of
$200k for the couple and $60k for the children, total $260k. He or she can also deduct
the $12k per year put into the mandatory provident fund (5% of the first $20k of 
each monthly salary) before calculating taxable income.</p>

<p>Worker A is given $132k per month, but Worker B is given $66,000 per month, 
and provided with housing worth another $66,000 per month. Then his housing 
would only be taxed as 10% of his income (net of MPF), or $6,500 per month. His 
assessable income would be $71,500 per month instead of $131,000 per month, 
saving him 20% of the difference in tax.</p>

<p>Let's compare the incomes of our two workers:</p>
  <table class="numtable center fcl">
    <tr>
      <th>HK$</th>
      <th>Worker A</th>
      <th>Worker B</th>
    </tr>
    <tr>
      <td>Monthly salary</td>
      <td>132,000</td>
      <td>66,000</td>
    </tr>
    <tr>
      <td>Monthly housing benefit</td>
      <td>0</td>
      <td>66,000</td>
    </tr>
    <tr>
      <td>Total monthly remuneration</td>
      <td>132,000</td>
      <td>132,000</td>
    </tr>
    <tr>
      <td>MPF deduction</td>
      <td>-1,000</td>
      <td>-1,000</td>
    </tr>
    <tr>
      <td>Value of housing</td>
      <td>0</td>
      <td>6,500</td>
    </tr>
    <tr>
      <td>Assessable monthly income</td>
      <td>131,000</td>
      <td>71,500</td>
    </tr>
    <tr>
      <td>Total annual remuneration</td>
      <td>1,584,000</td>
      <td>1,584,000</td>
    </tr>
    <tr>
      <td>Annual tax</td>
      <td>251,520</td>
      <td>108,800</td>
    </tr>
    <tr>
      <td>Effective tax rate</td>
      <td><b>16.00%</b></td>
      <td><b>6.87%</b></td>
    </tr>
  </table>
<p>Yes, it's true. Worker B pays the same tax that someone earning just $72,500 
per month would pay, all because of the Housing Loophole, and Worker B pays only 
43% of the tax paid by Worker A, even though both are doing the same job for the 
same remuneration.</p>
<p>In fact, if a married worker with two children is able to take half his 
income as housing, then he would not pay his highest rate of tax until he earns 
$2.876m per year, or say $240k per month, including living in a home costing 
$120k per month. That would put him in a large house somewhere on the Peak. And 
his tax bill would be just $251,328, or <b>8.73%</b> of his compensation.</p>
<p>Furthermore, the 16% cap on the tax rate effectively <u>reduces</u> the 
marginal rate of tax above the threshold, because the 20% tax rate ceases to 
have effect. So if he gets another $1 added to housing and $1 added to salary, 
then the deemed income is $1.10, taxed at 16% for an effective tax rate of only 
8.8% on the increase. <b>What this means is that someone who gets half their 
compensation in housing will never pay more than 8.8% in effective tax rate</b>. </p>
<p>The system also allows a lot of lower-income people to escape the tax net altogether, but 
only if the employer co-operates. For example, a married person with two 
children earning $20k per month and receiving $20k in housing would have a total 
compensation of $480k but pay no tax, but a person earning the same amount in 
cash would pay tax of $30,800, or 6.42%, almost the same rate as our high-income 
Worker B above, who earns 3.3 times as much.</p>
<h3>So why do they keep the system?</h3>
<p>Why does the government persist with this scheme? There are several possible 
reasons (apart from the obvious ones - incompetence or laziness):</p>
<ul>
  <li>
  <p style="margin-bottom: 6">The majority of senior civil servants and 
  ministers, including the Financial Secretary, are provided with housing and 
  benefit from the loophole;</li>
  <li>
  <p style="margin-bottom: 6">The system supports the property sector, by 
  encouraging employees to rent homes in order to take part of their income as 
  housing benefit. The property cartel has always been close to government 
  policy-making and the tycoons have&nbsp; a strong vote in electing the Chief 
  Executive, and Government has been hooked on land premiums which derive from 
  the property market;</li>
  <li>
  <p style="margin-bottom: 6">The Government dare not make any big changes to 
  the tax system (or any other policy area) so long as it lacks an electoral 
  mandate from the people (i.e. at least until 2007, possibly 2047) for fear of 
  complaint;</li>
  <li>
  <p style="margin-bottom: 6">The Government can claim to have a progressive tax 
  rate system (higher rates for higher incomes) while in practice only a tiny 
  percentage of the population pays the top rate, and down in the so-called 
  social safety net, people are living in cage-homes.</li>
</ul>
<h3>Other untaxed benefits</h3>
<p>The Government has also not been taxing any benefit so long as it cannot be 
converted to cash and does not settle an obligation of the employee. So if you 
are provided with use of a company car (but not given the car), or if the 
employer puts utility bills of the home in its name and pays them, then those 
are tax free too. This is also unfair and discriminatory.</p>
<h3>Recommendation</h3>
<p>We don't have figures on how much income is declared each year as housing 
benefit, but it is a fair bet that the majority of medium and high earners 
structure their pay in this way. Government should close the Housing Loophole by 
taxing housing and all other employment benefits at their fair market value. In 
the case of housing, this should either be the rent paid (including any 
management fees and rates), or the rateable value assessed by the Rating and 
Valuation Department, whichever is higher.</p>
<p>If all employment benefits were taxed at their fair value, then the 
Government would have substantially higher income without raising salaries tax 
rates at all, and could even afford to lower the rates over time.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
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