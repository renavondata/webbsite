
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

<script type="text/javascript">document.title="Scrap the MPF";</script>

	<div class="summary">We find that a typical Mandatory Provident Fund is running an expense ratio of about 2.0% per year, or about 15 times that of an exchange-traded index fund. Over 40 years, as much as 55% of today's capital and returns will be eaten up by MPF expenses. And all this for a compulsory savings scheme which is fatally flawed by the lump-sum payout. We call on the Government to return personal savings to the free market.</div>

<h2 class="center">Scrap the MPF<br>
<span class="headlinedate">23 June 2005</span></h2>
<p>The HSBC Hang Seng Index Tracking Fund (<b>HSI-MPF</b>), one of the funds you 
can choose as part of the 
<a target="_blank" href="http://www.hsbc.com.hk/hk/mpf/download.htm">HSBC MPF</a> range of unit trusts, was launched on 
1-Dec-00 with a unit price of HK$10.00. 4.5 years later, on 1-Jun-05, the unit 
price had risen to $10.37, a gain of just 3.7%. &quot;OK&quot;, you might be thinking, 
&quot;the markets have not been that good, and I'll be saving for the rest of my 
working life, so I needn't worry about a few years of bad returns&quot;.</p>
<p>Think again. It's not the market that's the problem, it's the MPF scheme 
itself. We'll explain why.</p>
<p>Index tracking funds are usually one of the lowest cost forms of mutual 
funds, because the manager of the fund has very little work to do. All he has to 
do is make sure that the fund buys the basket of shares which comprise the 
index, in the same proportions as the stocks within the index. For example, if a 
stock represents 10% of the index value, then he puts 10% of the money into that 
stock. There is no stock picking required, no gruelling research and company 
visits, and as a consequence, management costs are low. For example, the
<a target="_blank" href="http://www.trahk.com.hk/">Tracker Fund of Hong Kong</a> 
(<b>TraHK</b>), which had assets of about $30.7bn at 31-Dec-04, pays its manager 
and trustee a total fee on a sliding scale which starts at 0.100% and goes down 
as the fund gets larger. Last year, it was 0.095%.</p>
<p>Also, because they are so mechanical, index tracking funds do what they are 
supposed to do, and within a very narrow margin, they track the index. For 
example, in 2004, TraHK's net asset value per unit increased by 13.17%, while 
the index increased by 13.15%, both excluding dividends, which TraHK pays out 
(net of expenses) to unit holders. The Total Expense Ratio (<b>TER</b>) of TraHK 
for 2004, based on the average fund size during the year, was about 0.135%.</p>
<p>The HSI-MPF, like all MPF funds, does not pay out dividends (because it is 
saving for retirement) but reinvests the income in the fund, buying the basket 
of stocks to maintain the same composition as the index. The Hang Seng Index is 
published by <a target="_blank" href="http://www.hsi.com.hk">HSI Services Ltd</a>, 
a subsidiary of <a target="_blank" href="http://www.hangseng.com">Hang Seng Bank 
Ltd</a>, which in turn is controlled by
<a target="_blank" href="http://www.hsbc.com/">HSBC Holdings plc</a>.</p>
<p>Now for a dividend-reinvesting index fund, its total return should closely 
match the total return on an index, assuming that any dividends are immediately 
reinvested in the index. Thankfully, since last year, HSI Services has been 
publishing the total return index for its flagship index (<b>HSI-TRI</b>), and 
the series goes back to the beginning of 1990, which is more than we need for 
this article, since the MPF only started on 1-Dec-00.</p>
<h3>HSI-MPF verus HSI-TRI</h3>
<p>When we examined the daily unit values of the HSI-MPF downloaded from its web 
site, we found some slightly 
odd behaviour in the first few months, which we will simply ascribe to start-up 
issues and not worry about. So for the purpose of this study, we will look at 
the 4 years from 31-May-01 to 31-May-05, starting six months after the launch of 
the fund, when the bugs had been ironed out.</p>
<p>On 31-May-01, the HSI-TRI closed at 20,011.40. On 31-May-05, it closed at 
24,357.54, a total return of <b>21.7%</b>. Meanwhile, the unit value of the 
HSI-MPF rose from 9.26 to 10.37, a total return of only <b>12.0%</b>. That means 
that the MPF fund under-performed the index it was supposed to track by a total 
of 7.99% over 4 years, or a compound average under-performance of 2.06% per 
year. That is more than <b>15 times</b> the total expense ratio of the TraHK 
last year.</p>
<p>By comparison, if you could put your money into an exchange-traded 
index-tracking fund (<b>ETF</b>) such as TraHK, then ignoring the initial 
purchase expenses (brokerage and stamp duty), and assuming the fund has a total 
expense ratio of 0.15% per year (we are being generous), you would have made 
about <b>21.0% </b>in 4 years, and only lost 0.7% to expenses.</p>
<p>The cumulative under-performance of the MPF fund against the costless 
total-return index is shown below, with a green line to indicate what the 
under-performance of an ETF like TraHK would be:</p>
<img class="center" alt="" src="../images/mpfcos4.gif">
<p>Scary, isn't it? This chart is just for 4 years. What do you think it will 
look like after 40 years?</p>
<p>In case you are wondering, that brief blip on 13-Dec-01 is probably just an 
error in the MPF price data and can be ignored. The graph shows well enough how 
dramatic the MPF fund's under-performance is, and how much better-off you would 
be if you could invest directly in a low-cost index tracking fund.</p>
<h3>The reason for under-performance</h3>
<p>The main reasons why the total expense ratio of the MPF fund is so high is 
the amount of fees it pays.</p>
<p>HSBC, which is probably not unusual among MPF providers in this respect,
<a target="_blank" href="http://www.hsbc.com.hk/hk/mpf/pdf/pbsupp_feetable.pdf">
charges</a> annual management, trustee, custodian and administration fees 
totalling 1.95% on the net assets of all its equity-based funds, including the 
HSI-MPF, even though index tracking funds are much less costly to manage.</p>
<p>One of the reasons these fees are so high, apart from the desire of banks to 
make huge profits, is that the MPF is expensive to administer - tens of 
thousands of employers across Hong Kong have to fill in complicated forms every 
month with details of employees who have left the firm, joined the firm, retired 
or left Hong Kong, recording variations in their salaries, commissions and 
bonuses, and then someone at the MPF provider has to process those forms and 
chase down late payments.</p>
<p>All of the administration costs are borne by the funds - the employer pays 
nothing but the mandatory contributions each month, 5% of salary (excluding 
housing allowances) up to a maximum contribution of $1,000, and the same amount 
is deducted from the employee's salary, for a total contribution of 10%.</p>
<p>But perhaps the biggest reason for the high fees is that the market is price 
insensitive. The people who decide which MPF provider to pick, the employers of 
Hong Kong, are not the beneficiaries of the funds. The employees of Hong Kong 
are, but not until decades later, long after most of them have left their 
current employer. All the employer cares about, at least in the short to medium 
term, is complying with its obligations to make the mandatory contributions to 
the fund. As a result, there is not much competition driven by the fees, and 
employers are more likely to choose their fund provider based on who they bank 
with and which bank processes their payroll each month.</p>
<h3>Will the MPF feed me, when I'm 64?</h3>
<p>When Paul McCartney finally turns 64 next year, his pension fund is probably 
not something he will have to worry about. But for the average HK citizen, 
planning on saving for the next 20, 30 or 40 years, what will the typical MPF 
cost ratio, say 2% per year, do to your savings? Take a look at the table below, 
which shows how much of the market performance will be burnt up by expenses over 
a lifetime:</p>
<img class="center" alt="" src="../images/mpfcos2.gif">
<p>What this table shows you is that if you are 25 years old, and MPF funds 
continue to run expense ratios of 2% per year for the next 40 years, then by the 
time you retire in 2045 at the age of 65, <b>55.4%</b> of your capital and 
returns from today's contributions will be eaten up by expenses. On the other 
hand, if the Government scrapped the MPF and allowed you to buy exchange-traded 
index funds with the same money, with a total expense ratio of 0.15% per year, 
then only 5.8% would go in expenses over 40 years, and you would get 94.2% of 
the market's returns for whatever index you were buying.</p>
<p>Of course, you will not always be 40 years away from retirement, and money 
saved later will have less time to be eaten up by expenses, but on the average, 
you could still be looking at a 40% hit.</p>
<h3>A misconceived policy</h3>
<p>The policy intent of the MPF was in essence to force a small minority of 
people who would not otherwise save any of their salaries, to save for 
retirement. That's what the &quot;M&quot; stands for - Mandatory. Those who are 
sufficiently self-disciplined to save on their own did not need the Government 
to force them to. By forcing people to save, Governments hope to reduce the 
risk that people will need social security payments, or the &quot;safety net&quot; 
provided by the state, when they retire.</p>
<p>However, when you retire, after a huge chunk of your mandatory savings has 
been eaten up in expenses by the banks and fund managers, what you will get from 
the MPF is a lump sum. And if you are one of the people who needed this 
Government-imposed discipline, then you are hardly likely to take that lump sum 
and invest it wisely. You are more likely to blow it in a few wild nights at 
Happy Valley or on a luxury cruise, and then come back to the Government (the 
taxpayers) for social security. So the policy intent of the MPF is then 
defeated. The only way to resolve that would be to require that the MPF payout 
be made in stages, so that retirees can only spend it slowly. One option would 
be to require everyone to buy annuities, which pay a fixed monthly income for 
the rest of their life, however long it is. But again, this would involve 
handsome profits for the people who sell annuities.</p>
<h3>A free market?</h3>
<p><b>Hong Kong claims to be a free market, but mandatory savings represents 
interference in personal choice. The MPF scheme benefits a few large banks more 
than it benefits the people of Hong Kong. We call on the Government to scrap the 
MPF and return personal savings choices to the free market. Let people choose 
whether to withdraw the accumulated funds and invest them directly, in lower 
cost investment products, and let the banks and fund managers compete more 
efficiently for the business. The 10% of salaries up to $20k currently being 
paid into the funds should be paid directly to employees instead, so that the 
cost to employers remains unchanged.</b></p>
<p>Just over 4 years into the project, on 31-Mar-05, there was a total of 
HK$124bn of funds in MPF schemes and it is growing at about HK$24bn per year. At 
a 2% expense ratio, the expenses this year alone will be about HK$2.6bn. In 10 
years' time, ignoring investment returns, the fund size will be up to about 
$364bn, and the annual expenses will be $7.2bn.</p>
<p>By comparison, last year the Government
<a target="_blank" href="http://www.legco.gov.hk/yr04-05/english/panels/ws/papers/ws0613cb2-1828-3e.pdf">
spent</a> $12.7bn on elderly social security, including an old-age allowance for 
those over 70 which is not means-tested and even old tycoons would qualify for.</p>
<p>Those who choose not to save and to rely on the meagre social security 
payments in Hong Kong, should know that they will not be looking forward to a 
luxurious retirement, but one with just the bare necessities of life. That is 
sufficient incentive for most people to provide for their futures.</p>
<p>If the MPF is not scrapped and saving is to remain compulsory, then at the 
very least, individuals should be free to choose their own &quot;Personal Provident 
Funds&quot; or PPF providers, and opt out of the employer's choice of provider. That 
would increase the incentive for employees to shop around for the lowest expense 
ratio funds in the given category, and to choose between competing fund managers 
based on performance, rather than being trapped in a bank's in-house fund 
offerings.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
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