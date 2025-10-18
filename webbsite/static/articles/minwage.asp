
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

<script type="text/javascript">document.title="Minimum wage will reduce some incomes";</script>

	<div class="summary">The road to intervention is paved with unintended consequences. We look at the conflict between the Minimum Wage and the MPF, resulting in some workers receiving less take-home pay and others having very little work incentive beyond 178.5 paid hours per month. We propose adjustments to the MPF threshold and contribution basis for low-income workers to address this.</div>

<h2 class="center">Minimum wage will reduce some incomes<br>
<span class="headlinedate">2 January 2011</span></h2>
<p>In a classic demonstration of how the road to Government intervention is 
paved with unintended consequences, when the
<a href="http://www.gld.gov.hk/egazette/pdf/20101429/es12010142915.pdf" target="_blank">
Minimum Wage Ordinance</a> (<strong>MWO</strong>) comes into effect on 
1-May-2011, paradoxically, some employees are actually going to suffer a drop in their 
take-home pay. Yes, you read that right, and no, we are not talking about those 
who lose their jobs. Why the paradox? Blame another piece of 
interventionist legislation, the
<a href="http://www.hklii.org/hk/legis/en/ord/485/" target="_blank">Mandatory 
Provident Fund Schemes Ordinance</a> (<strong>MPFSO</strong>).</p>
<p>The MPFSO requires that anyone earning the &quot;minimum level of relevant income&quot; 
is required to contribute 5% of it (up to the &quot;maximum level of relevant 
income&quot;) to the compulsory savings scheme, which the employer must deduct from 
the wages. Currently, the minimum is HK$5k per month; it was
<a href="http://www.info.gov.hk/gia/general/200211/22/1122164.htm" target="_blank">
raised</a> in February 2003 from $4k/m. The maximum is $20k/m.</p>
<p>After much wrangling over what will be a biennial political hot potato, the minimum 
wage
<a href="http://www.info.gov.hk/gia/general/201011/10/P201011100222.htm" target="_blank">
has been set</a> at $28 per hour. So the $5k minimum relevant income level for MPF 
corresponds to about 178.6 paid hours at the minimum wage. The Government
<a href="http://www.info.gov.hk/gia/general/201011/10/P201011100288.htm" target="_blank">
estimates</a> that 314,600 employees will be affected by the minimum wage. 
Within them, most were earning less than $5k per month, and some of those will 
now cross that boundary, at which point their take-home pay will drop by $250, 
being 5% of their salary siphoned off into the MPF. Anyone previously earning 
between $4,750 and $4,999 could find themselves with lower take-home pay as a 
result.</p>
<p>For example, if an employee was earning $27.75 per hour and was paid for 180 
hours per month (including credit for statutory holidays and annual leave), then 
she was taking home $4,995. Her gross pay will now increase to $28 per hour, 
making $5,040, of which $252 will go into the MPF, and she will take home 
$4,788. <strong>She will have a drop of $207 or 4.1% in take-home pay</strong>. 
The Government may argue that the MPF is not money wasted, but try telling that 
to someone who is trying to put rice in the bowl today, not in 40 years' time.</p>
<h3>Marginal income and the work incentive</h3>
<p>Beyond $5k of gross pay, every hour at the minimum wage gives the employee 
take-home pay of $26.60 (95% of $28), so it will take an extra 9.4 paid hours to 
recover the initial $250 removed by the MPF when crossing the $5,000 mark. So working to the nearest half-hour, it is only worth getting 
paid for either 178.5 hours per month (for $4,998), or at least 188 hours per 
month (for take-home pay of $5,000.80). That's an extra 9.5 paid hours for $2.80 
of take-home pay. The effective marginal take-home pay for each of those extra 
hours is $0.29 per hour.</p>
<p>In more detail, here's what the work incentive looks like, relative to 178.5 
paid hours at the minimum wage:</p>
<img class="center" alt="Work incentive" src="../images/workincentive.gif">
<p>Note that in the above calculations, we have used the term &quot;paid hours&quot;. That 
is because the highly interventionist Employment Ordinance imposes a requirement to pay for 12
<a href="http://www.hklii.org/hk/legis/en/ord/57/s39.html" target="_blank">
statutory holidays</a> each year, and also for a minimum number of annual leave 
days following a
<a href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/C7C4581529275DA4C82564800042A760?OpenDocument" target="_blank">
complicated formula</a> depending on the period of employment, starting with 7 
days per year and building to 14 days after 9 years of service. The rate of pay 
for these prescribed days is the same per day as the average daily wage on real 
working days. So &quot;paid hours&quot; includes the same number of hours on each of those 
days as is worked on other days. For example, someone on a 6-day week with 7 
years of service would get 24 days per year off, or 2 days per month, and still 
be paid for those days. </p>
<p>There are 365.2425 days in an average Gregorian year, so for those working a 
6-day week, there are about 313.1 working days in a year, or about 26.1 days per 
month, minus statutory holidays and leave days. So it only takes about 6.84 paid hours per 
day for someone on a 6-day week to be pushed over the $5k threshold and into the 
MPF trap. If the threshold is raised to $6k, then it will take about 214.3 
hours, or 8.2 hours per day, or 49 hours for a 6-day week, before someone faces 
an MPF deduction. According to the Census and Statistics Department, in the 3 
months to Oct-2010, the
<a href="http://www.censtatd.gov.hk/hong_kong_statistics/statistical_tables/index.jsp?tableID=016&amp;ID=&amp;subjectID=2" target="_blank">
median worked hours per week</a> (excluding meal breaks) was about 48, so half 
the population works longer than that. In &quot;retailing, accommodation and food 
services&quot; the median was 54 hours. In
<a href="http://www.censtatd.gov.hk/hong_kong_statistics/statistical_tables/index.jsp?charsetID=1&amp;tableID=015" target="_blank">
another table</a>, we see that 790,000 people, or 22% of the workforce, worked 
at least 55 hours per week. That would probably include a lot of security guards 
on 12-hour shifts.</p>
<p>Also, keep in mind that some months have more work days than others. In a 
31-day month, it is possible to have only 4 rest days and 27 work days. If that 
happens, then someone on hourly pay for an 8-hour day would notch up 216 hours, 
tipping them over the $6k threshold at $6048. So to avoid this risk and cater 
for some of those who work longer hours, the threshold should be raised to at 
least $6,500.</p>
<p><strong>In summary, unless the MPF minimum relevant income is raised 
substantially, most full-time workers on minimum wage will be forced to 
contribute to the MPF. To prevent most minimum-wage workers be hit with an MPF 
deduction, Webb-site calls on the Government to raise the minimum level of relevant 
income to at least $6,500.</strong></p>
<p>The marginal income per hour tabulated above demonstrates why an increasing 
number of workers will seek part-time jobs (or self-employment) rather than work 
themselves into the MPF and earn very low rates of marginal take-home pay. There 
is very little work incentive beyond 178.5 paid hours per month. Each employment 
contract is assessed separately for MPF limits, so if a person has two jobs, 
each of which pays less than $5,000, then he will not have to contribute to the 
MPF. Of course, finding additional jobs is easier said than done, and most 
workers will just have to take the hit on their take-home pay.</p>
<p><strong>To protect the work incentive, employee contributions 
should only be levied on the excess over the minimum, not on the whole amount. 
With a minimum of $6,500, contributions could be tapered by charging 10% on the amount between $6.5k and 
$13k, so that the percentage of gross pay escalates from 0% to 5% of relevant 
income. </strong>This is shown in the table below.</p>
<img class="center" alt="Tapering employee contributions" src="../images/taperMPF.gif">
<h3>MPF costs</h3>
<p>It is true that the employee (if she lives to 65) will eventually enjoy the 
benefit of whatever remains of her MPF contributions after the trustees and fund 
managers have gorged themselves on fees, but that is not much comfort to a young 
employee for whom $250 or $325 per month (5% of the minimum relevant income for 
MPF) could make a difference to their quality of life today, 
not in 40 years' time. As a reminder, here is a table from our
<a href="mpfcost.asp">article</a> of 23-Jun-2005, showing how much 
of your capital and returns will be lost in expenses over different periods of 
investment:</p>
<img class="center" alt="MPF costs" src="../images/mpfcos2.gif">
<p>Total expense ratios
<a href="http://cplatform.mpfa.org.hk/MPFA/english/system.jsp" target="_blank">
continue to average</a> around 2%, so the table shows that 55.4% of the capital 
and returns for an investment made now will be taken as fees and other expenses 
over the next 40 years. For an 18-year-old just starting the MPF, he actually 
has 47 years before it pays out, so make that 61.3% on his first payment.
<strong>For this reason alone, there is a strong argument that younger employees 
should be exempted from the MPF while they try to make a start on their adult 
lives, perhaps only requiring contributions over the age of 40. </strong>At 
least they will then only have to tolerate 25 years of fees, or 12.5 years on 
the average payment.</p>
<h3>Min-max review</h3>
<p>After legislative amendments passed on 12-Jul-2002,
<a href="http://www.hklii.org/hk/legis/en/ord/485/s10a.html" target="_blank">
Section 10A</a> of the MPFSO requires that at least once in every 4 years 
thereafter, the MPFA will review the minimum and maximum relevant levels of 
income and make recommendations to Government. That means that another review 
was due in 2010. The levels must &quot;take into account&quot; 50% of the monthly median 
employment earnings when determining the minimum, and the 90th percentile of 
monthly employment earnings when determining the maximum (i.e. the level above 
which 1 in 10 of the working population receives). Both are estimated using the 
Census and Statistics Department's
<a href="http://www.censtatd.gov.hk/products_and_services/products/publications/statistical_report/labour/index_cd_B1050001_dt_detail.jsp" target="_blank">
General Household Survey</a> (<strong>GHS</strong>), which of course is subject 
to sampling errors, under-declaration (particularly by people who are claiming 
means-tested benefits and public housing) and seasonality of earnings. Here's 
the
<a href="http://www.statistics.gov.hk/publication/stat_report/labour/B10500012010QQ03B0100.pdf" target="_blank">
latest issue</a>.</p>
<p>Upon the 2006 review, there was a
<a href="http://www.info.gov.hk/gia/general/200612/28/P200612280230.htm" target="_blank">
proposal</a> on 28-Dec-2006 from the MPF Authority to raise the maximum relevant 
income from $20k to $30k. This was strongly opposed by Webb-site and others. See 
our article &quot;<a href="MPFincrease.asp">Stop the Increase</a>&quot;, 
11-Feb-2007, for detailed arguments. We and others made
<a href="http://www.legco.gov.hk/yr07-08/english/panels/fa/papers/fa_r1.htm" target="_blank">
submissions</a> to the Legislative Council on the matter. In response to that 
opposition, the proposal was quietly dropped by the Government. The minimum 
relevant income was not proposed to be changed.</p>
<p>The minimum wage will shift the wages of the lowest income workers upwards, 
equalising them all at $28 per hour (except for those who lose their jobs), but 
it will not change the median, which is, by definition, the income earned or 
exceeded by 50% of the workforce. This median has increased from $10,000 in the 
quarter to 30-Sep-2006 to $11,000 in the quarter to 30-Sep-2010. This would 
indicate a raise in the minimum relevant income level, but only from $5,000 to 
$5,500. This would spare some of the lowest-paid workers from losing another 
$275 per month to the MPF, but of course, there would be many others who would still 
fall into the MPF trap. The MPFA has not yet announced its recommendations for 
2010.</p>
<p>According to the same GHS survey, 9% of the workforce earned more than 
$35k and 4.1% earned between $30-35k, so the 90th percentile is around the $33k 
mark. Furthermore, 24.2% of the workforce earned more than $20k in the quarter to 
30-Sep-2010.</p>
<p>Let us hope that, again, the maximum relevant income is not raised. 
Hong Kong should not become a nanny state. If the top-earning quartile of the 
workforce cannot be trusted to manage their own savings on a voluntary basis, 
then the Government is insulting the intelligence of the professional classes.</p>
<p>As we've consistently said, the MPF is a highly interventionist interference in 
personal choice and should be abolished, but until it is, at least 
spare the lowest income workers from the pain of unintended consequences.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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