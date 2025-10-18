
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

<script type="text/javascript">document.title="MPF Part 2: Stop the Increase";</script>

	<div class="summary">We call on the Government to stop the proposed increase in MPF contributions, which we estimate will cost HK$4.24bn per year. We renew our call to abolish the MPF and return economic freedom to the people. As more capital gets trapped in MPF funds, demands to withdraw it for urgent needs will become more frequent. And is Donald Tsang planning a Mandatory Medical Savings scheme?</div>

<h2 class="center">MPF Part 2: Stop the Increase<br>
<span class="headlinedate">11 February 2007</span></h2>
<p>If you are a middle-income worker, smiling at the thought of 
spending your recent pay increase, wipe that smile off your face, because what 
the employer gave, the Government will take away. It's for your own good, they 
say.</p>
<p>Quietly during the 3-day week between Christmas and New Year, the Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/200612/28/P200612280230.htm">
announced</a> a proposed increase in the costs of employment and a decrease in 
take-home pay for anyone earning over HK$20,000 per month in Hong Kong. If the 
Government gets its way, the 
maximum level of &quot;relevant income&quot; for calculating contributions to the 
Mandatory Provident Fund will be raised from $20,000 to $30,000. Employers, 
employed persons (<b>EPs</b>) and self-employed persons (<b>SEPs</b>) in the MPF 
schemes have to contribute 5% of relevant income to 
the MPF, so that's up to an extra $500 per month for each. As we show below, the 
total additional cost based on 2006 incomes is about <b>HK$4.24bn</b>.</p>
<p>To be precise, the proposal has been &quot;submitted&quot; to Government by the 
Mandatory Provident Fund Schemes Authority. This in turn is advised by the 
<a href="../dbpub/officers.asp?p=26443">Mandatory Provident Fund Schemes Advisory Committee</a> (<b>MPFSAC</b>), one of those 
Government-appointed bodies created in an attempt to legitimise decisions of a 
government without an electoral mandate. The proposed increase is subject to the approval of 
the Chief Executive and the Legislative Council.</p>
<p>The MPFSAC is chaired by Professor
<a href="../dbpub/positions.asp?p=25254">Nelson 
Chow Wing Sun</a>, SBS, a many of many hats who also sits on the Barristers Disciplinary Tribunal 
Panel, the Commission on Strategic Development Executive Committee, and the
<a href="../dbpub/officers.asp?p=31161">Commission on Poverty</a>, to 
which the Government attaches such importance that it has forgotten to announce 
any extension of its members' terms, which
<a target="_blank" href="http://www.info.gov.hk/gia/general/200501/27/01270177.htm">
expired</a> on 27-Jan-07. When we contacted the COP's secretariat,
<a target="_blank" href="http://www.directory.gov.hk/details.jsp?lang=eng&dn=cn=1123009347,ou=FSO,ou=People,o=GOVERNMENT,c=HK">
Mr K C Lam</a> told us that the terms had in fact been extended to 30-Jun-07 - 
you read it here first!</p>
<p>According to Professor Chow, <b> <i>&quot;the [MPF] increase proposed would enhance 
employees' sense of belonging&quot;</i>.</b> Belonging to whom exactly? Belonging to the 
Government? Belonging to banks? Belonging to employers?  
Incidentally, Professor Chow 
<a href="http://www.gld.gov.hk/egazette/pdf/20061036e/egn2006103697.pdf" target="_blank">lost his seat</a> on the Election Committee in 
December, fetching only 707 votes from a voter turnout of 2,505 in the Higher 
Education sub-sector, far behind leader <a href="../dbpub/positions.asp?p=33266">Joseph Cheng Yu Shek</a> with 1709 votes. 
Perhaps Professor Chow has lost his own sense of belonging. He has also chaired 
the MPFSAC for over 8 years, beyond the normal 6-year limit for Government 
appointments. His term expires on 30-Mar-07.</p>
<h3>Twisted rationale</h3>
<p>In 2002, the MPF Ordinance was
<a target="_blank" href="http://www.legco.gov.hk/yr00-01/english/bc/bc10/general/bc10.htm">
amended</a> to require that every 4 years, the MPFA must conduct a review of the 
minimum and maximum levels of &quot;relevant income&quot;, and make recommendations to 
Government. Without limiting the factors, they were required to take into 
account, in respect of the minimum, 50% of the monthly median employment 
earnings from the General Household Survey (<b>GHS</b>) (currently $5,000), and in respect of the maximum, the 
employment earnings at the 90th percentile - in other words, the level of 
earnings which is only exceeded by 10% of the work force. In the first review in 
2002, the 90th percentile was already at $30k, but the Government cited the <i>
&quot;current economic situation&quot;</i> and left the maximum at $20k.</p>
<p>The use of the 90th percentile begs a question: if the intent of the MPF was 
to provide for a <u>basic</u> level of assets upon retirement, to reduce the 
risk of reliance on social security payments, then why make it mandatory for 
higher income groups to save so much? For sure, higher savings would afford them 
a better standard of living on retirement, but the decision to save for that 
lifestyle ought to be a matter of personal choice, since the state does not have an 
obligation to support anyone's higher quality lifestyle, as any
<a href="../dbpub/natarts.asp?p=30024">former judge convicted of welfare fraud</a> will tell you.</p>
<p>The proposal is now that the total contribution at the top end, based on 
$30,000 per month, should be $3,000, which is 12 times the $250 contribution for 
a low-skilled worker earning $5,000, because up to that level only the employer 
has to contribute.</p>
<p>50% of MPF EPs earn less than $10,000 per month and (with employers) pay 
less than $1,000 monthly into the MPF. The proposed maximum is 3 times the median. 
Is this median contribution sufficient?, If so, then why force higher savings? 
Or is the Government implying that the median rate of mandatory savings won't be 
enough for basic subsistence, for 50% of the workforce? If so, then the MPF 
fails its purpose, and the 
Government should have the intellectual honesty to admit it.</p>
<p>Even if the contributions are sufficient, the MPF doesn't really fulfill its 
intended purpose, because there are no constraints on spending the money when 
you retire at 65. You can take the lot and pay off debts, or put it on any horse 
you like at Happy Valley, and then go back to welfare.</p>
<h3>Impact on the $20k+ group</h3>
<p>According to the MPFA's
<a target="_blank" href="http://www.legco.gov.hk/yr06-07/english/panels/fa/papers/fa0105cb1-602-3-e.pdf">
submission</a> on 5-Jan-07 to the Legislative Council Financial Affairs Panel, 
as of 30-Jun-06, there were 326,000 EPs in MPF schemes with monthly 
relevant income over $20,000, or about 16.1% of 2.019m EPs at that date. There were 
also about 83,900 SEPs in MPF schemes with relevant income over 
$20,000 per month, or about 29.2% of 0.287m SEPs in the schemes at that date. Of these, the MPFA 
estimates that 167,600 EPs and 40,400 SEPs earned between $20-30k. The MPFA 
estimates average monthly relevant income within the bands as follows:</p>
	<table class="numtable center fcl">
		<tr>
			<td>Relevant income</td>
			<td>EPs $/m</td>
			<td>SEPs $/m</td>
			<td>Average $/m</td>
		</tr>
		<tr>
			<td>$20-30k</td>
			<td>26,475</td>
			<td>27,100</td>
			<td>26,596</td>
		</tr>
		<tr>
			<td>$30k+</td>
			<td>30,000</td>
			<td>30,000</td>
			<td>30,000</td>
		</tr>
		<tr class="total">
			<td>Average</td>
			<td>28,188</td>
			<td>28,604</td>
			<td>28,272</td>
		</tr>
	</table>

<p>Using later enrolment data from the latest
<a target="_blank" href="http://www.mpfahk.org/english/quicklinks/quicklinks_sta/files/Dec_2006_Issue.pdf">
MPFA Statistical Digest for 31-Dec-06</a> (where EPs had grown 2.6% in number), and assuming the same earnings 
distribution, <i>Webb-site.com</i> estimates the number of people in each income 
band at 31-Dec-06 was as follows:</p>
	<p class="widthAlert3">Some data are hidden to fit your display.<span class="portrait"> Rotate?</span></p>
	<table class="numtable center fcl" style="font-size:10pt">
		<tr>
			<th>31-Dec-06</th>
			<th>EPs</th>
			<th class="colHide3">SEPs</th>
			<th>Total</th>
			<th>EPs %</th>
			<th>SEPs %</th>
			<th>Total %</th>
		</tr>
		<tr>
			<td>$20-30k</td>
			<td>171,917</td>
			<td class="colHide3">40,118</td>
			<td>212,035</td>
			<td>8.30</td>
			<td>14.08</td>
			<td>9.00</td>
		</tr>
		<tr>
			<td>$30k+</td>
			<td>162,480</td>
			<td class="colHide3">43,197</td>
			<td>205,677</td>
			<td>7.85</td>
			<td>15.16</td>
			<td>8.73</td>
		</tr>
		<tr class="total">
			<td>$20k+</td>
			<td>334,396</td>
			<td class="colHide3">83,315</td>
			<td>417,712</td>
			<td>16.15</td>
			<td>29.23</td>
			<td>17.73</td>
		</tr>
		<tr>
			<td>All MPF</td>
			<td>2,071,000</td>
			<td class="colHide3">285,000</td>
			<td>2,356,000</td>
			<td>100.00</td>
			<td>100.00</td>
			<td>100.00</td>
		</tr>
		<tr>
			<td colspan="7">Source: MPFA, Webb-site.com</td>
		</tr>
	</table>
<p>That's probably an understatement, as some EPs would have had pay raises 
since Jun-06, increasing the numbers of EPs over $20k. Based on our estimated 
numbers of EPs and SEPs at 31-Dec-06, we've calculated the impact 
of the proposed MPF increase on people earning more than $20k per month. We've taken 
into account lunar new year &quot;13th month&quot; payments to EPs (see below). 
The total 
increase in contribution is about $3.78bn, as follows:</p>
	<table class="numtable center fcl">
		<tr>
			<td>$m</td>
			<td>Employer</td>
			<td>EPs</td>
			<td>SEPs</td>
			<td>Total</td>
		</tr>
		<tr>
			<td colspan="5">MPF before</td>
		</tr>
		<tr>
			<td>$20-30k</td>
			<td>2,063</td>
			<td>2,063</td>
			<td>481</td>
			<td>4,607</td>
		</tr>
		<tr>
			<td>
			$30k+</td>
			<td>1,950</td>
			<td>1,950</td>
			<td>518</td>
			<td>4,418</td>
		</tr>
		<tr class="total">
			<td></td>
			<td>4,013</td>
			<td>4,013</td>
			<td>1,000</td>
			<td>9,025</td>
		</tr>
		<tr>
			<td colspan="5">MPF after</td>
		</tr>
		<tr>
			<td>$20-30k</td>
			<td>2,761</td>
			<td>2,761</td>
			<td>652</td>
			<td>6,175</td>
		</tr>
		<tr>
			<td>
			$30k+</td>
			<td>2,925</td>
			<td>2,925</td>
			<td>778</td>
			<td>6,627</td>
		</tr>
		<tr class="total">
			<td></td>
			<td>5,686</td>
			<td>5,686</td>
			<td>1,430</td>
			<td>12,802</td>
		</tr>
		<tr>
			<td colspan="5">Increase $m</td>
		</tr>
		<tr>
			<td>$20-30k</td>
			<td>698</td>
			<td>698</td>
			<td>171</td>
			<td>1,567</td>
		</tr>
		<tr>
			<td>$30k+</td>
			<td>975</td>
			<td>975</td>
			<td>259</td>
			<td>2,209</td>
		</tr>
		<tr class="total">
			<td>
			</td>
			<td>1,673</td>
			<td>1,673</td>
			<td>430</td>
			<td>3,776</td>
		</tr>
	</table>
<h3>More people affected, higher cost than they claim</h3>
<p>The MPFA LegCo submission says that the increase <b> <i>&quot;would not have any 
immediate impact on the 83% of MPF members who earn below $20k per month&quot;</i></b>, 
but that is not true, because the MPFA has ignored the fact that most EPs receive 
part of their income as a 13th month lunar new year payment. MPF for EPs is assessed on actual pay in 
each calendar month, 
so that pushes anyone with a regular salary exceeding $10k into the space above $20k 
for 1 month. SEPs pay MPF based on their assessable profits as sole proprietor 
of their business, and can opt for annual payment, so they are not subject to 
the lunar new year effect.</p>
<p>This effect can be seen in the MPF 
statistics, which show that mandatory contributions in the quarter to 31-Mar-06 were 
$6.57bn compared with $5.96bn in the previous quarter. Taking the previous 
quarter's average of $1.99bn per month, we can see that MPF contributions in the lunar 
new year month are about 29% higher than normal months.</p>
<p>Looking at the Government's <a target="_blank" href="../codocs/GHS06Q3.pdf">2006 Q3 General 
Household Survey</a> of employment earnings, we note that 22.2% of 3.286m people 
in employment (including self-employment) earned more than $20k/month, a lot 
higher than the 16.3% of MPF EPs. That's partly because a lot of higher-income 
people are in the civil service pension scheme or in exempt ORSO schemes, and hence 
are exempt from the MPF. 
Scaling up the rest of the figures 
from the GHS, we estimate that about 711,000 MPF EPs, or about one third, earn between $10-20k per 
month, as follows:</p>
	<table class="numtable center" style="font-size:10pt">
		<tr>
			<td class="colHide3">Band base $k/m</td>
			<td>Band mid-point $k/m</td>
			<td>% of MPF EPs</td>
			<td>Estim. EPs</td>
			<td class="colHide3">Current MPF $/y</td>
			<td>Proposed MPF $/y</td>
			<td>Incr. $/y</td>
			<td>Total MPF incr. $m</td>
			<td>Current MPF $m</td>
		</tr>
		<tr>
			<td class="colHide3">10</td>
			<td>11</td>
			<td>10.4</td>
			<td>215,344</td>
			<td class="colHide3">7,050</td>
			<td>7,150</td>
			<td>100</td>
			<td>22</td>
			<td>1,518</td>
		</tr>
		<tr>
			<td class="colHide3">12</td>
			<td>13</td>
			<td>9.4</td>
			<td>194,699</td>
			<td class="colHide3">8,150</td>
			<td>8,450</td>
			<td>300</td>
			<td>58</td>
			<td>1,587</td>
		</tr>
		<tr>
			<td class="colHide3">14</td>
			<td>15</td>
			<td>8.0</td>
			<td>166,041</td>
			<td class="colHide3">9,250</td>
			<td>9,750</td>
			<td>500</td>
			<td>83</td>
			<td>1,536</td>
		</tr>
		<tr>
			<td class="colHide3">16</td>
			<td>17</td>
			<td>3.2</td>
			<td>66,620</td>
			<td class="colHide3">10,350</td>
			<td>10,850</td>
			<td>500</td>
			<td>33</td>
			<td>690</td>
		</tr>
		<tr>
			<td class="colHide3">18</td>
			<td>19</td>
			<td>3.3</td>
			<td>68,250</td>
			<td class="colHide3">11,450</td>
			<td>11,950</td>
			<td>500</td>
			<td>34</td>
			<td>781</td>
		</tr>
		<tr>
			<td class="colHide3"></td>
			<td></td>
			<td>34.3</td>
			<td>710,954</td>
			<td class="colHide3"></td>
			<td></td>
			<td></td>
			<td><b>230</b></td>
			<td>6,112</td>
		</tr>
	</table>
<p>The table shows that under the proposed increase, these EPs and their employers will each pay about $230m of additional MPF 
contributions per year, a total of $460m. So only 50% of EPs, who earn less than 
$10k, will be unaffected, and even then, some of them, such as estate agents, 
may have irregular incomes which occasionally exceed the current $20,000 
maximum.</p>
<p>Adding the impact on EPs from $10k-20k to the impact on all members above 
$20k takes our estimate of the total annual increase in MPF contributions, 
based on 2006 incomes, to <b>$4,236m</b>, about 16% more than the $3,641m 
estimate given to Legislators by the MPFA. 2007 pay increases will raise it 
further. Mandatory contributions in 2006 were $25.40bn, so the proposal will increase 
that by about 17% to $29.64bn per year.</p>
<h3>What it means for someone on $30k</h3>
<p>If you earn 
$30,000 per month, then your take-home pay (before tax) will be cut by $500, or 1.67% per month. If you 
have 
just received a 4% salary increase, then deduct 1.67% for MPF, and then deduct the 2.3% rate of 
inflation (as of Dec-06), and you will find yourself no better off than last year.</p>
<h3>Employers</h3>
<p>Although some employer groups have expressed reservations and some have opposed 
the increase in their
<a target="_blank" href="http://www.legco.gov.hk/yr06-07/english/panels/fa/papers/fa_r1.htm">
submissions</a> to LegCo, they have not been protesting loudly about this, but there 
may be a reason 
for the mild response. 
They are allowed to
<a target="_blank" href="http://www.mpfahk.org/english/abt_mpfs/abt_mpfs_fms/abt_mpfs_fms_olssp/abt_mpfs_fms_olssp.html">
offset</a> their own contributions against amounts that they would have to pay 
under statutory severance and long-service payments. If a person has served at 
least 5 years, and is dismissed, or retires after reaching the age of 65, or 
becomes 
medically unable to work, then he gets 2/3 of his final month's wages (capped at a 
salary of $22,500) in respect of each year of service up to a maximum payment of 
$390,000. That works out at 1/18 or 5.55% of final salary per service year, 
subject to the caps, so broadly speaking, for the cases of severance, medical 
disability or retirement, the MPF contributions have only 
shifted the cash-flow but not materially changed the eventual cost for 
employers. That offset was how the Government persuaded employers to support the 
introduction of the MPF in the first place.</p>
<p>There are some real costs, however, because if employees under 65 resign, 
then they can take the employer's contributions with them, whereas they would 
not have qualified for long service payment in the past.</p>
<h3>The demographic time bomb myth</h3>
<p>Governments of developed economies around the world, and Hong Kong is no 
exception, wring their hands over a purported &quot;demographic time bomb&quot; or the 
&quot;rising cost of old age social security&quot;. It makes for sensational headlines, 
but it is really a myth supported by the vested interests of financial 
institutions who push for legislative mandates or tax incentives to capture 
savings. Here are the realities:</p>
<ul>
	<li>For sure, people are living longer, and birth rates in the developed 
	economies have fallen below replacement levels, but there is no shortage of 
	young people from the developing world to make up for it - and migration 
	will be incentivised by work opportunities. According to the
	<a target="_blank" href="http://www.census.gov/ipc/www/world.html">US Census 
	Bureau</a>, in 2030, the world population is projected at 8.3bn, up from 
	6.5bn in 2006, and the percentage of working-age between 20 and 64 will be 
	57.1%, up from 55.6% at present.</li>
	<li>As people live longer and stay fitter longer, they are able to work 
	longer, helping to offset the increase in the retired/working ratio. In 
	2030, the global percentage over 65 will increase from 7.4% to 12.0%, but 
	the percentage over 70 will be 8.0%. One option is to raise the retirement age for social 
	security by 1 year every 5 years from now until 2027, which would keep the 
	percentage of the population above that age static. </li>
	<li>Technology over decades has produced, and continues to produce, 
	productivity gains so that although the retired/working ratio has increased, 
	the number of workers needed to support each retiree on welfare has reduced. 
	We are no longer in a world of subsistence farming.</li>
	<li>Those who are having fewer or no children will spend less of their 
	lifetime 
	income on child-rearing, increasing their 
	ability to support themselves in retirement.</li>
	<li>Finally, in the case of a recently-developed economy like Hong Kong, 
	remember that people retiring today started work when Hong Kong was just a 
	backward manufacturing economy with much lower real (inflation-adjusted) 
	incomes than now. They did not have the lifetime earnings capacity that many 
	people have today. The retirees of 2030 will, on average, be more prosperous 
	than those of 2006, and fewer will need social welfare.</li>
</ul>
<h3>Moral dilemmas over trapped capital</h3>
<p>In Jun-05, we
<a target="_blank" href="mpfcost.asp">called</a> for the MPF to be scrapped, and 
we reaffirm that view. The MPF is inconsistent with the principles of economic 
freedom that made 
Hong Kong successful, including personal freedom to choose when and how to 
invest, save 
or spend. The MPF is hugely expensive to administer and regulate, and as the 
contributions accumulate, it won't be many more years before the annual fees and 
expenses on the funds are more than HK spends on old-age social security. Today, 
thousands of workers in Hong Kong, and the firms which employ them, are paid by 
all the other workers to do nothing but arrange the MPF schemes for those other workers. Couldn't these 
MPF arrangers be doing something more 
productive?</p>
<p>Hypocritically, virtually the only workers who are not subject to the overhead costs of MPF are the civil 
servants who dreamed up the scheme in the first place, because they will get a 
pension, paid for from taxation. The Government should focus on providing the basic social safety net 
through CSSA, which, like civil service pensions, is paid for by taxes, and not interfere with the people's 
freedom of choice beyond that.</p>
<p>As of Dec-06, there was $202bn in the MPF, and another $211bn in ORSO 
(Occupational Retirement Schemes Ordinance) schemes. The MPF money is already 
equivalent to about $86,000 per scheme member. As this pile grows, the public 
are likely to increasingly resent this intrusion into their affairs, because 
more of their net worth will be &quot;trapped capital&quot;, untouchable at times when they might need it.</p>
<p>For example, if a home-owner loses his job, and can't keep up with his mortgage 
payments, then he could lose his home to the same bank that is 
managing his MPF account, but he would be unable to withdraw money from the MPF 
to service his mortgage. Even for those who have jobs, it is really quite 
ridiculous that you have to pay fees to a bank for managing your MPF money at the 
same time as paying an interest spread to the bank on your mortgage debt. The 
bank 
makes money both ways! You should be 
able to divert your MPF contributions to your mortgage. </p>
<p>Wait until interest 
rates start rising again, and the current property bubble bursts, then you will 
see what we mean. If the purpose of the MPF was to provide security for 
retirement, then surely it is consistent with that to allow people to secure a 
roof over their heads and not require public housing.</p>
<p>Or take another example: a person is told that she or her child needs an 
operation, only available overseas or privately, or after a lengthy wait in HK, and she can't 
afford private treatment, but could if she was allowed to withdraw money from her MPF. Or 
what about education - a child may want to go overseas to university, but the 
parents can't afford it without drawing down their savings. If the money is 
trapped in the MPF, then that is not an option. That education might increase the 
child's earnings potential and thereby make him more able to support his parents in old age, 
as well as paying more tax to support the social security system.</p>
<h3>Coming soon: Mandatory Medical Savings?</h3>
<p>All of the issues relating to trapped capital will become more obvious as the MPF enlarges. Despite this, 
the Government has another scheme under gestation, which is just beginning to 
show signs of birth: let's call it the Mandatory Medical Scheme, or MMS. Donald 
Tsang, in the going-around-in-small-circles
<a target="_blank" href="http://www.donald-tsang.com/downloads/policy_eng.pdf">policy blueprint</a> published last week for his re-appointment 
campaign, says:</p>
<blockquote>
	<p><b>&quot;I will consider introducing savings accounts for our citizens to pay for 
	medical services&quot;.</b></p>
</blockquote>
<p>Now of course, anyone can save already or buy medical insurance if they want, 
so in order for his statement to imply anything new, he must be alluding to a 
mandatory scheme, or one that involves Government subsidy to incentivise 
contributions. Making contributions tax deductible wouldn't have much benefit, 
since only high income people pay material rates of direct tax and most of them already 
have private or company medical care anyway. <b>We dare him to commit that the 
savings scheme will not be mandatory. If he doesn't, then you'll know why.</b></p>

<p><b><a href="MPFAbloat.asp">Part 3: The Bloated Regulator</a></b><br>
<b><a href="MPFcosts.asp">Part 1: What the MPF Costs You</a></b></p>

<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
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