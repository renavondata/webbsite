
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

<script type="text/javascript">document.title="Peace Mark's warning signals";</script>

	<div class="summary">What went wrong at watch shop Peace Mark (0304), former associate of Egana (0048)? Webb-site.com shows you the warning signals which analysts missed.</div>

<h2 class="center">Peace Mark's warning signals<br>
<span class="headlinedate">16 September 2008</span></h2>
<p>Soon after <em>Webb-site.com</em> put the spotlight on 
<a href="../dbpub/articles.asp?p=2078">EganaGoldpfeil (Holdings) Ltd</a> (<strong>Egana</strong> 00048) last year, a number 
of readers wrote to us alleging similar problems at watch shop
<a target="_blank" href="http://www.peacemark.com">Peace Mark (Holdings) Limited</a> 
(<strong>PM</strong>, 00304), which was once an associate of Egana. The e-mails 
were all anonymous, some allegations were quite specific, but none of them could 
provide us with hard evidence. So we did not write about it, because we did 
not have sufficient evidence, and in 10 years, <em>Webb-site.com </em>has never 
been sued, because we go by the facts. Even today, we will not publish many of 
the allegations. Instead, we passed these concerns on to the regulators on 
12-Sep-07. They have investigative powers which we don't. They also have 
statutory secrecy obligations, so we don't know whether they have investigated.</p>
<p>So unfortunately, we had to stand back and watch as the company imploded, 
with the stock down 88% from $12.56 at the end of 2007 to $1.50 on 15-Aug-08, 
and now in
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080911/LTN20080911476.pdf">
provisional liquidation</a>. If 
it ever resumes trading, you can wave goodbye to most of the other 12%. The 
company's market value at the end of 2007 was HK$13.09bn (US$1.68bn). The firm 
also sucked in another HK$1.26bn in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080606/LTN20080606067.pdf">
placing</a> at $7.90 organised on 5-Jun-08 by ABN-AMRO and BNP Paribas, two of 
the three banks which arranged a bridge loan on 1-Feb-08 for the acquisition of 
<a target="_blank" href="http://www.sincere.com.sg/">Sincere Watch Ltd</a> and for the repayment of other debts.</p>
<p>The results for the year to 31-Mar-08 were announced on 22-Jul-08, showing 
net profit up 52.3% and fully-diluted EPS up 42.2%. However, if you look more 
closely at the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080730/LTN20080730886.pdf">
annual report</a> filed on 30-Jul-08, as well as the history of PM since its 
1993 listing, then you will see enough warning signals to have avoided the stock.</p>
<h3>Loans to &quot;business associates&quot;</h3>
<p>Of the $599.5m of net tangible assets at 31-Mar-08, note 23(a) 
records &quot;Long term deposits&quot; of <strong>HK$327.8m</strong>. The note says that 
$136.9m of this &quot;deposit&quot; was made in the year to 31-Mar-07:</p>
<blockquote>&quot;long term deposits to business associates for joint business 
development purpose. The business development of this project is under progress 
and the Directors expected that this amount will be injected into a new joint 
venture next year.&quot;</blockquote>
<p>and then in the year to 31-Mar-08, there were further &quot;deposits&quot; of $191.9m:</p>
<blockquote>&quot;placed with business associates for the development of a 
retail chain network in Asia...the Directors expected that the deposits will not 
be realized within 24 months from the balance sheet date.&quot;</blockquote>
<p>None of this was mentioned in the narrative section of the annual report - so 
we have no idea who the &quot;business associates&quot; are, or what the &quot;business 
project&quot; in 2007 was, or where the &quot;retail chain network&quot; is or was going to be. 
Don't be fooled by use of the word &quot;deposit&quot; - these are of course just 
unsecured loans. They accrue interest at annual prime rate plus 1%, although 
whether that was actually paid or just accrued is another question. Without adequate explanation 
in the report, we can only speculate on why these loans were necessary - where 
did the money go? &quot;Business associates&quot; is also a suspiciously vague term with 
no legal meaning. What kind of &quot;business associates&quot; were these - customers? 
joint venture partners? brokers?</p>
<h3>Investment in unlisted funds</h3>
<p>Then, note 23(c) shows a <strong>HK$40m</strong> investment in an unlisted
<em>&quot;open-ended investment fund managed by professional investment managers&quot;</em> 
- but they don't say who. The fund contained mainly <em>&quot;listed and unlisted 
equity securities in Greater China market.&quot;</em> It's just the sort of thing 
that Egana did when it invested in funds managed by the controlling shareholder 
of Upbest. This investment is in direct contradiction to the statement on page 
36 that:</p>
<blockquote>&quot;Our policy is to deposit surplus cash with creditworthy 
financial institutions or invest in low risk and liquid instruments.&quot;</blockquote>
<h3>Loans to share incentive scheme</h3>
<p>Another potential hole in the balance sheet is <strong>HK$152m</strong> of 
loans to the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070423/LTN20070423134.pdf">
share incentive scheme</a> shown in note 26(a), and explained further in note 
36. This scheme, adopted on 20-Apr-07, allowed participants to purchase existing shares in PM at a 5% 
discount to market price, with a 1-year lock-up. The discount was paid for by 
PM. Participants could pay in a lump sum or by instalments, with 
interest, in 24 monthly instalments for employees, or 12 monthly instalments for 
non-employees.</p>
<p>It is a somewhat unusual form of incentive scheme - the only &quot;incentive&quot; is 
the 5% discount and the fact that participants can borrow 100% of the purchase 
cost. In return for that, participants have to lock up their holding for a year (or 
until the final instalment is paid, if later). More conventional share award 
schemes do not involve loans - the company pays the full cost of the 
shares, and hence fewer shares are purchased to provide the same value of award. 
A good example of this is the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050914/LTN20050914137.pdf">
scheme</a> at HKEx, which your editor helped devise when he was an INED there.</p>
<p>The PM scheme is not just for employees, but was also open to consultants, 
professional advisers, suppliers, customers and authorised agents. Suppliers and 
customers had to have done at least $10m of business with PM.</p>
<p>The discount expenses incurred by PM in the year to 31-Mar-08 were $15.802m, 
which implies that they bought about $316m of shares for the scheme. Almost all 
of this was in the second half of the year, as first-half expenses were just 
$119k, implying purchases of HK$2.4m in the first half and $314m in the second 
half.</p>
<p>In the previous year, expenses for a similar scheme
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060403/LTN20060403116.pdf">
adopted</a> on 31-Mar-06 were $7.583m (almost all of it in the first six months 
ending 30-Sep-06), implying purchases of about $152m. The first scheme was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041214/LTN20041214023.pdf">
adopted</a> on 13-Dec-04.</p>
<p>The current PM scheme is subject to a limit of HK$350m of purchase cost, and 
together with the previous schemes, it is subject to a limit of 5% of the issued 
shares. We don't know how many shares were purchased for the scheme or at what 
prices. Now with the 
PM shares virtually worthless, how many of the participants are likely 
to have the means to honour their commitments to purchase these shares and 
thereby repay the loan?</p>
<h3>Share options for non-employees</h3>
<p>PM also has a share option scheme which it has used liberally to 
reward non-employees, including customers, suppliers and professional advisers. On 8-Mar-07 it 
granted 5-year options to unidentified non-employee(s) to subscribe 41.415m shares at $7.06, 
vesting in 25% tranches from 8-Sep-07 to 8-Sep-10. However, during the year to 
31-Mar-08, PM accelerated the vesting period, allowing 29m options to vest on 
8-Apr-07, one month after they were granted, and the remainder split 50% on 
8-Sep-07 and 50% on 8-Mar-08. Presumably this amendment was made on or before 
8-Apr-07, so it is strange that it wasn't mentioned in the 2007 annual report, 
published on 12-Jul-07. 29m of the options were indeed exercised in the six 
months to 30-Sep-07, bringing in $211m. At the 
time of exercise, the market price was $9.77, giving the holder(s) a gain of 
$81m. PM did not give any reason for accelerating the vesting period. Perhaps 
they needed the cash.</p>
<p>Further back, on 19-Dec-05, PM granted 5-year options to non-employees to 
subscribe 18.75m shares at $2.175 , vesting in 25% tranches from 19-Jun-06 to 19-Jun-09. A quarter of them were exercised in the year to 
31-Mar-08 with a 
gain of $31.3m.</p>
<p>On 23-Aug-02, suppliers and customers were granted 3.5-year options to 
subscribe 34.5m shares at $0.20, exercisable from 23-Feb-03, which they 
exercised by 31-Mar-03. The market price at the time of exercise was $0.43-0.44, 
netting them a gain of $8.1m. By comparison, PM's net profit for the year was 
$58.2m. In those days, companies did not have to expense the options in their 
accounts.</p>
<p>At 31-Mar-08, there were 90.71m options (including employee options) 
outstanding, equivalent to 8.3% of the existing issued shares.</p>
<h3>Auditors</h3>
<p>PM's auditors are <a target="_blank" href="http://www.chuchu.com.hk">Chu and Chu</a> (no train jokes, please). You probably 
haven't heard of them, but their past clients may ring a bell or two, if you are 
a loyal reader of <em>Webb-site.com</em>. PM, which last year was a $13bn company, is 
Chu and Chu's only remaining HK-listed 
client. PM paid them $7.817m in fees last year, including $4.6m for the audit. They've been auditor of 
PM since 1996. Our database shows that 
they have had just 6 other HK-listed clients in past, most of which will be 
familiar to our long-time readers:</p>
<ul>
	<li><a href="../dbpub/articles.asp?p=11823">Upbest Group Ltd</a> (<strong>Upbest</strong>, 
	0335) - auditor since the IPO on 29-Sep-00,
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060516/LTN20060516135.pdf">
	resigned</a> 15-May-06. Upbest featured heavily in our Egana stories last 
	year.</li>
	<li><a href="../dbpub/articles.asp?p=9843">UBA Investments Ltd</a> (<strong>UBA</strong>, 
	0768) - auditor since the IPO on 4-Jan-00,
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060516/LTN20060516142.pdf">
	resigned</a> 15-May-06. UBA is a closed-end investment company managed by 
	Upbest Assets Management Ltd, owned by Upbest.</li>
	<li><a href="../dbpub/articles.asp?p=4802">Grand Field Group Holdings Ltd</a> (<strong>Grand 
	Field</strong>, 0115) -
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030827/LTN20030827088.pdf">
	appointed</a> 27-Aug-03,
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050104/LTN20050104091.pdf">
	resigned</a> 20-Dec-04. See our article
	<a href="grandfield1.asp">Cooking with Gas</a> (4-Mar-04). 
	Several people are facing criminal fraud charges in relation to that case, 
	including the former Chairman, and an executive director of Grand Field as 
	well as the controlling shareholder of Upbest and one of its executive 
	directors.</li>
	<li>Harmony Asset Limited (<strong>Harmony</strong>, 0428) -
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031222/LTN20031222165.pdf">
	appointed</a> 17-Dec-03,
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070102/LTN20070102207.pdf">
	resigned</a> 29-Dec-06. This is another closed-end investment company, and 
	shares a number of unlisted investments with UBA. At 31-Dec-05 and 31-Mar-06 
	respectively, Harmony and UBA each owned 26% of Capital Venture Limited, a 
	property investment and money-lending firm incorporated in HK on 3-Dec-96. 
	They also each owned 26% of Chief Finance Limited, a money-lender 
	incorporated in HK on 9-Aug-00, and Harmony and UBA owned 35% and 20% 
	respectively of Fullpower Holdings Ltd, a BVI company which invested in 
	Challengers Auto Services Ltd. UBA has also invested in Harmony and owned 
	2.6% of it at 31-Mar-08.</li>
	<li><a href="../dbpub/articles.asp?p=11749">China Golden Development Holdings Ltd</a> 
	(0162) - 
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030319/LTN20030319077.pdf">appointed</a> 19-Mar-03,
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060302/LTN20060302120.pdf">
	resigned</a> 28-Feb-06. This company was once known as I-Wood International 
	Holdings Ltd, and featured in our article
	<a href="woodenlammas.asp">Wooden Lammas</a> on 19-Feb-01. In 
	the annual report for the year to 30-Jun-02, previous auditors 
	PricewaterhouseCoopers questioned the &quot;propriety&quot; of certain major 
	transactions and the adequacy of disclosures on related party transactions, 
	and qualified their audit report.</li>
	<li><a href="../dbpub/articles.asp?p=15194">AKuP International Holding Limited</a> 
	(8179) - delisted on 27-Jul-05. The shares were suspended on 4-Feb-04 after 
	the management went missing. That was just after Chu and Chu were
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040106/GLN20040106020.pdf">
	appointed</a> as auditors to replace Morison Heng. For the 2002 audit, 
	Morison Heng had
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030404/GLN20030404014.PDF">
	disclaimed</a> an opinion on the accounts due to lack of evidence on 
	purported sales 
	and profits, amongst other things. Chu and Chu were obviously prepared to 
	take the 2003 job on, but in the end, they never had to do it, as the 
	management vanished.</li>
</ul>
<h3>History</h3>
<p>PM was founded in 1983 by Madam Ho Suk-man (<strong>Madam Ho</strong>), her husband Leung Yung 
(<strong>Mr Leung</strong>), and Mr 
Norwood Cheung Chi-keung, as a watch and clock maker based in Wanchai, HK. The 
factory moved to Tsuen Wan, HK in 1986, and to Shenzhen in 1988. In 1992, they 
entered a joint venture to establish production in Kunming, Yunnan.</p>
<p>PM was listed on 18-Feb-93, in an IPO sponsored by Standard Chartered Asia 
Ltd, issuing 40m shares (25% of the enlarged capital) at $1 each together with a 
2-year warrant at $1.10 for every 5 shares. After the IPO, Madam Ho, the Vice 
Chairman, owned 52.5% and Patrick Chau Cham-kwong (<strong>Mr Chau</strong>), the Chairman, owned 15%. As 
is traditional with HK IPOs, the company just made its profit forecast of $22m 
for the year to 31-Mar-93, then profits dropped 34% in the following year. There 
was a 1:1 bonus issue on 20-Sep-93. On 21-Nov-94, PM completed a 1:1 rights 
issue at $0.20, raising <strong>$64m</strong> gross. In Nov-94, it acquired Mei Ching Products 
Ltd, a leather goods maker, for $37.8m in cash. For the year to 31-Mar-95, PM 
booked a loss of $21m.</p>
<p>On 19-Sep-95, PM placed 123m new 
shares, equivalent to 18.94% of the issued capital, at $0.12 each, raising 
<strong>$14.8m</strong> gross. Up to this point, PM was an unremarkable 
small-cap listed watch maker, one of many in HK at the time.</p>
<h3>Relationship with Egana</h3>
<p>On 16-Dec-95, Egana agreed to buy 30% of PM from Madam Ho for $44.838m, or 
about HK$0.194 per share, and reducing her stake to 4.96%. The transaction was
<a target="_blank" href="http://www.hkexnews.hk/listedco/sdi/19960105i.pdf">
completed</a> on 28-Dec-95, when Madam Ho resigned from the board. In Aug-96, 
Egana distributed 11.4% of PM to its shareholders as a dividend. Egana subsequently increased its stake in the market, reaching 20.2% by 
30-Sep-96. Chu and Chu were appointed auditors of PM in 1996, replacing Deloitte Touche Tohmatsu.</p>
<p>In Sep-96 PM made a bonus issue of one share and one 2-year warrant for every 
five shares held, with an exercise price of $0.30. Egana exercised its warrants 
in Nov-96, injecting $9.38m into PM. PM's accounts for the year to 31-Mar-97 show that it paid $10m 
for a license and $7.14m for <em>&quot;technical know-how in connection with product 
development for the licensed products&quot;</em> during the year to 31-Mar-97. It is not 
clear whether this $17.14m was a deal with Egana, which owned 22.8% of PM at 
31-Mar-97. Also in that year, PM began investing in the stock market, holding 
$27.5m of HK-listed shares at the year end, what it later called <em>&quot;strategic 
investments&quot;</em>.</p>
<p>Then on 21-Apr-97 PM launched a massive 2:1 rights issue at $0.10, raising 
<strong>$192m</strong> 
gross.</p>
<h4>Food import venture with China Paramilitary Police</h4>
<p>In Jul-97, PM agreed with North Anhua Group Corp, described as <em>&quot;the 
investment arm of the China Paramilitary Police&quot;</em> and Overseas Treasure 
Holdings Ltd (whose owners were not identified) to form a joint venture, 
Overseas Treasure (BVI) Ltd, in which PM owned 51%, to engage <em>&quot;in the 
trading of high quality food products&quot;</em> in PRC cities. It was later 
disclosed in the Mar-98 report that only 9% was held by North Anhua and 40% by 
<em>&quot;a third party food marketing group&quot;</em>, presumably Overseas Treasure Holdings Ltd. 
The investment was eventually written off in 2000 (see below). The tenuous 
justification for this non-core business was that it would help develop 
distribution chains for PM's timepieces.</p>
<h4>Another $42.2m of intangibles - from Egana?</h4>
<p>In the year to 31-Mar-98, PM spent another $35.7m on license fees and $6.5m 
on &quot;deferred expenditure&quot; in connection with product development for the 
licensed products, a total of $42.2m, more than the $34.2m net profit for the 
year. The licensors were not identified, although the only brands mentioned in 
the annual report are leather goods under Ferrano and Dugena, which were both 
brands owned by Egana. If these were licensed by PM from Egana, then that should 
have been treated as a connected transaction.</p>
<h4>Sale of leather division to Egana</h4>
<p>On 31-Mar-99, the last day of its financial year, PM agreed to sell to Egana its leather goods division 
for $34.8m and a 45% 
stake in Capricon Co Ltd (<strong>Capricon</strong>), which owned the PM 
factory, for $20.2m, making a total of $55m. The independent financial adviser was 
Upbest Securities Co Ltd and it was approved in an SGM on 28-May-99. PM booked a 
gain of $12.1m on the sale, after writing off deferred expenditure and licenses 
relating to the business - possibly licences it had acquired from Egana.</p>
<p>Also in the year to 31-Mar-99, PM spent $61.1m on unidentified HK-listed 
shares, which were worth $48.8m at the year end. No loss was recognised as they 
were booked as &quot;long term investments&quot;. They also held $7.7m of HK-listed shares 
as short-term investments, reduced from $23.0m a year earlier. PM reported a net 
profit of $36.4m for the year. Egana owned 24.06% at year-end.</p>
<h4>Another $35.5m of intangibles, at least partly from Egana</h4>
<p>On 
30-Jun-99, PM agreed to pay HK$10m to Egana for the exclusive 
right to manufacture clocks under the trademarks of Dugena and Pierre Cardin for 
4 years. Including this, during the year to 31-Mar-00, PM spent a total of $35m 
on licenses ($15m) and technical know-how ($20m). The identity of the other licensors 
was not disclosed. The $35m spent compares with the net profit 
for the year of just $17.2m. Page 5 of the report mentions investing $20m <em>
&quot;to acquire a remote control technology for the application of a household 
appliance type remote control in timepieces&quot;.</em></p>
<p>Also in the year to 31-Mar-00, PM wrote off $33.6m on its food business and 
$9.6m on its general trading business. They also booked a gain on disposal of 
listed securities of $18.6m, allowing them to book a net profit for the year of 
$17.2m.</p>
<h4>Failure to obtain approval of connected transactions</h4>
<p>Since Egana invested in PM, it was accounting for a substantial portion of 
PM's sales: 43% in 1997, 15% in 1998 and 40% in the year to Mar-99, mostly 
timepieces. But PM had never bothered to obtain minority shareholder approval 
for this. In a circular dated 29-Oct-99 Upbest again acted as independent financial 
adviser on the continuing trading transactions after PM
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19991012/LTN19991012045.HTM">
admitted</a> that it had been in breach of the Listing Rules requiring such approval 
since 1995. The stock exchange reserved its right to take further action, but 
didn't.</p>
<h4>More licenses</h4>
<p>On 28-Apr-00 PM 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000502/LTN20000502032.doc">placed</a> 596.5m shares, equivalent to 19.4% of the issued 
capital through Upbest at par value of $0.10 each, raising $58m. Of that, $34m 
was spent on licenses in the year to 31-Mar-01. Before the year-end, however, PM 
disposed of $20m of technical know-how and $46.6m of licenses for $74m, booking 
a gain of $7.4m. Of the proceeds, $54m was received by year-end and $20m was <em>
&quot;receivable from a company for selling back the remote control technology for 
watches&quot;</em> and received after the year-end. They didn't say which 
company. None of this was explained in the Management Discussion and Analysis in 
the annual report, so we don't know who the licensors were or what the licenses 
related to.</p>
<h4>Watch patent</h4>
<p>In addition, in the year to 31-Mar-01, PM paid $34m for a company (not 
identified, but probably Nippon Communication Technology Ltd) which had no 
assets other than a Japanese patent (probably
<a target="_blank" href="http://www.wipo.int/pctdb/en/wo.jsp?wo=2001048569">this 
one</a>) for downloading internet data (or more accurately, setting the time) 
from personal computers to wrist watches through infra-red communication. The 
vendor was not identified. The watch patent 
did not appear in PM's intangible assets at year end, even though they had a 
valuation from Sallmanns (Far East) Ltd at $32m. Instead, $45.264m of goodwill, 
including this deal, was written off directly against reserves.</p>
<p>PM also advanced an aggregate of about $39m to a Japanese distributor for 
&quot;financing the join development of the distribution network in Japan&quot;.</p>
<p>In the year to 31-Mar-02 (Note 28(d) of the accounts), PM sold the watch 
patent company for $34m, satisfied by $34m of &quot;other receivables&quot;.</p>
<h4>Egana exits PM</h4>
<p>On 28-Aug-01, Egana
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010829/LTN20010829039.doc">
sold</a> 10% of PM to Mr Leung, then Managing Director and husband of 
co-founder Madam Ho, for $49.8m or about $0.1354 per share, cutting its stake to 
6.49%, and its representatives resigned from the board of PM. On 18-Sep-01, 
Egana sold its 45% stake in Capricon Co Ltd, which owned the PM factory, back to 
PM for $31.5m, booking a gain of $6.06m. As Egana was no longer a connected 
person, the transaction was not announced by 
either side but appears in note 16(f) of Egana's May-05 accounts.</p>
<p>On 25-Jan-02, PM 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20011203/LTN20011203028.doc">consolidated</a> every 20 shares into 1 share.</p>
<p>On 28-Mar-02, the last working day of the year, PM acquired the Milus brand 
for $39.208m and its workshop in Bienne, Switzerland, for $2m and then 
established <a target="_blank" href="http://www.milus.com">Milus International 
S.A.</a></p>
<p>On 6-Jun-02, PM
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020607/LTN20020607011.doc">
launched</a> another 2:1 rights issue at $0.18, raising <strong>$66.2m</strong> gross. The issue was 
underwritten by A-One Investments Ltd (<strong>A-One</strong>), a BVI shell 
owned 50.45% by Mr Chau and 49.55% by Mr Leung. 
The issue was only 42.5%
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020822/LTN20020822087.doc">
subscribed</a>, and as a result, A-One owned 30.17%. Together with the existing 
holdings of Patrick Chau (10.18%) and Mr Leung (10.00%), they owned 50.35% of 
PM.</p>
<p>Also in Jun-02, PM obtained a Pierre Cardin watch licence for the China 
market. Presumably this came from Egana, which acquired the global Pierre Cardin 
trademark (excluding Argentina, Uruguay, Chile and Japan) in Apr-97.</p>
<h3>Capital-hungry</h3>
<p>On 30-Mar-04, there was a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040331/LTN20040331027.pdf">
placing</a> through Cazenove of 93.5m existing shares and a subscription of 
126.5m new shares at $1.63 each by A-One and Mr Leung, raising <strong>$206m</strong> 
gross.</p>
<p>On 20-Jan-06, there was a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060123/LTN20060123023.pdf">
placing</a> through Cazenove of 90m shares at $3.25 each, raising <strong>$293m</strong> 
gross.</p>
<p>As mentioned above, there was an accelerated vesting of 29.9m options granted 
to non-employees in the 6-months to 30-Sep-07, and this raised <strong>$211m</strong>.</p>
<p>Altogether, <em>Webb-site.com</em> calculates that from listing in 1993 up to 
31-Mar-08, PM has raised gross proceeds of $1,758m (net of buybacks), and paid 
out $357m in dividends. The capital raised includes $371m of shares issued for 
Sincere Watch, and the capital and dividend figures both include $36.8m of scrip 
dividends. And that's before the most recent $1.26bn placing.</p>
<h3>Overdue trade payables</h3>
<p>Not only does PM carry large amounts of bank debt, but also, mainly as 
a result of the Sincere Watch acquisition, it has large amounts due to watchmakers. At 
31-Mar-08, total trade payables were $1,040m. In note 29 of the accounts, the 
actual age of the payables isn't stated, because the ageing analysis is relative 
to the original &quot;due date&quot; - so if they were given 90 days credit, and it is 89 
days old, then it is just classified as &quot;not yet due&quot;. However, we can see that 
HK$577m of trade payables were overdue, including $237m overdue by 91-180 days 
and $208m overdue by more than 180 days. </p>
<p>Of the $1,040m of trade payables, $711m 
was denominated in Swiss Francs. So you can expect a fair amount of angst at the Swiss luxury watch-makers in 
any debt restructuring, unless they have security and custody of the inventory. 
Still, companies like the secretive and probably very profitable Rolex SA, which 
is owned by a foundation and does not publish its accounts, can probably afford 
many such failures.</p>
<h3>Pledge by A-One</h3>
<p>In the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080606/LTN20080606067.pdf">
announcement</a> of the placing on 5-Jun-08, PM said that Mr Chau, Mr Leung and 
A-One have separately undertaken to the Placing Agents that:</p>
<blockquote>
<p>&quot;from the date of the Placing Agreement and up to and 
including the date being three months after the date of the Placing Agreement, 
they will not...(without the prior written consent of the Placing Agents):</p>
<p>(a) ...pledge...any Shares...&quot;</p>
</blockquote>
<p>Less than 3 months later, on 3-Sep-08, PM
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080903/LTN20080903409.pdf">
admitted</a> that A-One has pledged 131,388,889 shares (10.44% of PM) <em>
&quot;for the purposes of certain bonds issued by it&quot;</em> and that the arranger of 
the bonds was ABN AMRO Bank, N.V. (<strong>ABN AMRO</strong>). What PM didn't 
mention is that ABN AMRO was also one of the two Placing Agents in the placing. 
So surely ABN AMRO, as bond arranger, must have been aware of the pledge and 
implicitly or explicitly consented to it. So the question arises - when was this 
pledge made, and why wasn't it disclosed to the public that ABN AMRO had 
consented to it? Did the other placing agent, BNP Paribas, consent? Or was the 
pledge already in existence before the placing announcement? In that case, PM 
was being highly economical with the truth. It is misleading to say that no 
pledges will be made, when there are already pledges in existence. </p>
<p>Whenever a statement is made about such undertakings or lock-ups, it is 
incumbent on the company to update the public on any consents given to waive 
such undertakings. Otherwise, the public is entitled to rely on them.</p>
<h3>Brokerage BUY recommendations</h3>
<p>On page 46 of its 2008 annual report, the company said:</p>
<blockquote>&quot;We are proud of having 14 analysts and brokerage firms cover 
PM with a Buy recommendation. They are
ABN AMRO, BNP, Cazenove, China Merchants Securities, Daiwa, DBS, Deutsche Bank, 
Goldman Sachs, HSBC, JP Morgan, Kim Eng, Merrill Lynch, UBS and UOB. We 
sincerely thanks for their support.&quot;</blockquote>
<p>Oops! It would be unfair to single out any one of these firms for poor 
judgement or failure to do their homework.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15194">AKUP INTERNATIONAL HOLDING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11749">CENTURY GINWA RETAIL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6025">Chu and Chu</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2078">EGANAGOLDPFEIL (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4802">GRAND FIELD GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4940">PEACE MARK (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30006">Sincere Watch (Hong Kong) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30010">Sincere Watch Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9843">UBA INVESTMENTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11823">UPBEST GROUP LIMITED</a></li>
				
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