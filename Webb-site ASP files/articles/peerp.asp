
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

<script type="text/javascript">document.title="Submission to Public Engagement Exercise on Retirement Protection";</script>

	<div class="summary">We call for abolition of non-means-tested schemes, staggered subsidies for public healthcare and a deployment of the savings on a higher socal safety net and better healthcare. HK can't pursue a universal handout without breaching the Basic Law, and even if it could, the Laffer Curve may make it unsustainable as taxable profits and earnings would shift away. Finally, the MPF is a costly interventionist failure that should be scrapped, and if it is not, then LSP must be phased out to allow full portability of MPF assets.</div>

<h2 class="center">Submission to Public Engagement Exercise on Retirement Protection<br>
<span class="headlinedate">21 June 2016</span></h2>

<p>This is the submission of Webb-site.com to the
<a href="http://www.rp.gov.hk" target="_blank">Public Engagement Exercise on Retirement Protection</a>. For the last 6 months, 
from Winter Solstice to Summer Solstice, the 
HK Government has been consulting the public on what kind of system it can or 
should have for ensuring that nobody has less than a socially acceptable 
standard of living in retirement.</p>
<p>Webb-site supports having a social safety net, regardless of age. Old or 
young, able or disabled, it is necessary for a secure and harmonious society 
that we look after those who are unable to look after themselves. At the same 
time, care must be taken to spend limited public resources wisely, not to raise 
the social safety net to a level which removes the work incentive or the 
incentive to save for a better standard of living in retirement, and not to 
embark on schemes that are fiscally unsustainable or even unconstitutional.</p>
<h3>No welfare if you fare well</h3>
<p>Welfare payments and other support should be for those who need it, not for 
those who fare well already. HK has unfortunately accumulated a mixture 
of conflicting policies which result in wastage of public resources. By 
providing welfare for those who don't need it, we are already reducing the 
capacity to provide more for those who do. For example:</p>
<ul>
	<li>The
	<a href="http://www.lwb.gov.hk/fare_concession/index_e.html" target="_blank">
	Public Transport Fare Concessions Scheme</a>, also known as the $2 fare 
	scheme, gives almost-free transport to anyone over the age of 65, regardless 
	of wealth. The Government pays the fare difference to the transport 
	operators (except for pre-existing concessions which amounted to a 
	cross-subsidy from other passengers). This scheme, according to government 
	figures, is estimated to cost <strong>HK$1,238m</strong> in 2016-17.</li>
	<li>The
	<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_ssallowance/" target="_blank">
	Old Age Allowance</a> (<strong>OAA</strong>), also known as "fruit money", 
	is not means-tested. It currently pays HK$1,290 per month to each eligible 
	claimant over the age of 70. At 31-Mar-2016, there were
	<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_statistics/" target="_blank">
	224,463 recipients</a>, at an annual cost of <strong>HK$3,475m</strong>.</li>
	<li>The <a href="http://www.swd.gov.hk/oala/index_e.html" target="_blank">
	Old Age Living Allowance</a> (<strong>OALA</strong>), which provides $2,495 
	per month to persons below certain income and assets thresholds. The assets 
	test improperly excludes a person's home and the cash value of life 
	insurance policies, resulting in handouts to people who are not poor but are 
	illiquid. Yet they have the choice of selling their property and renting, or 
	obtaining a
	<a href="http://www.hkmc.com.hk/eng/our_business/reverse_mortgage_programme.html" target="_blank">
	reverse mortgage</a> which will allow them to live in the property until 
	they die but withdraw cash from its value. At 31-Mar-2016, There are 432,862 
	recipients, at an annual cost of <strong>HK$12,960m</strong>.</li>
</ul>
<p><a href="http://www.swd.gov.hk/doc/res_stat/swdfig2014.pdf" target="_blank">Figures from the Social Welfare Department</a> show that when OALA was 
introduced in 2013-14, the number of OAA recipients (including those aged 65-69 
who were previously means-tested) dropped by 354,641 to 191,634, and the number 
of recipients for the new OALA then was 416,166.</p>
<p>As we noted in our article "<a href="oala.asp">Help the 
needy, not the needless</a>" (12-Oct-2012), the number of eligible claimants of 
elderly Comprehensive Social Security Assistance (<strong>CSSA</strong>) (which, just to confuse things further, kicks in at 60, not 65 or 
70) had flat-lined for a number of years. This is because although the elderly 
population is increasing, the lifetime earnings and educational attainment 
of&nbsp;new retirees is better than earlier ones. In 
fact, the number of elderly CSSA claimants has now dropped 22% in six years, 
from
<a href="http://gia.info.gov.hk/general/201103/30/P201103300167_0167_77110.pdf" target="_blank">
187,128 at 31-Mar-2010</a> to
<a href="http://gia.info.gov.hk/general/201605/18/P201605180255_0255_166240.pdf" target="_blank">
146,135 at 31-Mar-2016</a>. </p>
<p>In most remaining cases, persons receiving OAA would not qualify for OALA 
because their assets or income (excluding their home and insurance policies) 
would be too high, and those receiving OALA would not qualify for CSSA, because that has a proper 
means test (including all assets and income) but pays more, with a
<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_socialsecurity/" target="_blank">
starting level</a> of $3,150 per month for an able-bodied 60 year-old, plus a 
"Long-Term Supplement" of $2,090 per year after the first 12 months, plus 
various supplements in certain circumstances.</p>
<h3>Wastage</h3>
<p>The 3 wasteful schemes identified above, and these are not the only ones, 
already cost a total of <strong>HK$17.7bn</strong> per year, a figure which will 
rise in real terms as the population ages. This is money which could otherwise 
be spent in other areas, such as increasing the levels of CSSA payments for the 
genuinely poor, or expanding the capacity of the public healthcare system, to 
reduce waiting times. There, again, the Government adopts an irrational policy 
of charging only HK$100 per night in hospital and $100 per outpatient visit, 
regardless of wealth, except that payments are waived for CSSA recipients. There 
is no reason in principle why those patients who have sufficient incomes or 
assets should not contribute towards their healthcare costs, up to a sensible cap.</p>
<p>In response to a public consultation in 2008, Webb-site
<a href="health1.asp">proposed</a> a "staggered subsidy" system in 
which each patient (other than CSSA recipients) would pay, each year, 50% of the 
first HK$10,000 of their costs, 25% of the next $40,000 and nothing above that, 
limiting the expenditure to $20,000 per year. The excess would be paid by the 
Government out of general revenues, providing a <em>de facto</em> community pool 
of insurance. Such a co-payment system would make the public healthcare system 
more sustainable at a lower cost to the public purse than will otherwise be the 
case. Continuing at a fixed token rate per night, even if it is adjusted for 
inflation, will not address the fact that subsidies are being wasted on those 
who don't need them.</p>
<h3>Basic Law</h3>
<p>Any attempt to implement universal handouts at the levels others have 
suggested for all elderly people, rich or poor, would likely be subject to 
judicial review for breach of 
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">Article 107</a> of the Basic Law, which states:</p>
<blockquote>"The Hong Kong Special Administrative Region shall follow the 
principle of keeping the expenditure within the limits of revenues in drawing up 
its budget, and strive to achieve a fiscal balance, avoid deficits and keep the 
budget commensurate with the growth rate of its gross domestic product."</blockquote>
<p>If the Government adopts a universal handout then it would be 
deliberately steering Hong Kong onto a path that would cause the budget to grow 
faster than the growth of gross domestic product, breaching the last part of 
Article 107. Having entered the post-colonial era with public expenditure in 
1997-98 at 17% of GDP, it has already risen to 21.2% of GDP in 2016-17, 
according to the latest budget estimate. A large part of this increase has been 
caused by indiscriminate handouts as well as spending on uneconomic 
infrastructure projects such as the HK$84bn express rail link to Shenzhen.</p>
<p>It's worth mentioning that to a lesser extent, corporate welfare (an 
oxymoron) has also been involved, such as the HK$1bn
<a href="http://www.bud.hkpc.org/" target="_blank">BUD Fund</a> (for Branding, 
Upgrading and Domestic (PRC) sales) launched in 2012, the $11.2bn
<a href="http://www.itf.gov.hk/l-eng/StatView101.asp" target="_blank">granted 
since 2001</a> under various <a href="http://www.itf.gov.hk" target="_blank">
Innovation and Technology Fund</a> schemes, and the underwriting of SME loans 
with Government guarantees.</p>
<p>Meanwhile, government revenues (including taxes, land premiums, stamp 
duty, betting duty and other duties) have significantly exceeded expenditure, 
resulting in an increasing hoard of public wealth in the Exchange Fund. This is 
not the "fiscal balance" required by the Basic Law. Taken together, the fiscal 
reserves, reserves of statutory bodies and the accumulated surplus of the 
Exchange Fund have increased by about HK$1 trillion since the 1997 Handover, 
sucking money out of the economy.</p>
<h3>Can the revenue be raised?</h3>
<p>Even though the Government has hoarded these reserves, that does not mean 
that a multi-decade commitment to universal handouts for an expanding elderly 
population, alongside increasing elderly healthcare costs, is sustainable from 
reserves alone. Government revenues would have to rise, and we should also note 
that continued heavy infrastructure spending is also likely to eat into those 
reserves.</p>
<p>Even if such a commitment to a universal handout were to survive the 
constitutional challenge outlined above, it is doubtful whether the tax revenues 
could actually be raised sufficiently to cover the future cost. Keep in mind the
<a href="https://en.wikipedia.org/wiki/Laffer_curve" target="_blank">Laffer 
Curve</a>. That is a basic observation that, as tax rates are raised, at some 
point, the revenue reaches its maximum and then declines. If tax rates are 0%, 
tax revenue is obviously zero. If tax rates were 100%, nobody would have any 
incentive to work or make a taxable profit, and tax revenues would also be 
near-zero. Somewhere between these extremes, revenue is maximised, but will it 
be enough to finance all the promises of the Government? We suggest not.</p>
<p>A large portion of HK's taxable profits are booked in Hong Kong solely
<em>because</em> we have a lower rate (16.5%) than the mainland (25%). 
Manufacturers and traders shift their profits to the lowest-cost jurisdiction as 
far as they can. Hong Kong's current advantage of being the only financial 
centre in China without capital controls (apart from Macau) also incentivises 
that choice, because you can book your profits in hard currency rather than RMB. 
But as capital controls on the mainland are gradually abolished, retaining 
profits there will become more attractive if our tax rates are converging, or 
the profits may be shifted to other lower-tax jurisdictions such as Singapore or 
Macau instead.</p>
<p>Meanwhile, if skilled professionals in financial services and other mobile 
sectors can obtain lower tax rates in other jurisdictions, Hong Kong could 
suffer a brain drain, particularly for younger professionals who are already 
beginning to question whether the promises in the Basic Law are worth anything 
after 2047. Anyone graduating in 2027, just as sharp tax increases would be come 
necessary to fund the handouts, will have a possible 40-year career ahead of 
them, half of which lies after 2047. If China's markets become more open, many 
of them may just choose to work in the mainland or elsewhere and pay similar 
rates of tax instead of HK.</p>
<p>The World is littered with the carcasses of unsustainable non-means-tested 
welfare schemes. We must learn from others' mistakes. Hong Kong has prospered in 
the past by pursuing free market principles with a sustainable social safety 
net, one that we can afford to raise as long as it is means-tested. The 
legislators from across the political spectrum who have been calling for 
universal handouts are in fact working against the interests of the poor by 
calling for the diversion of limited public resources from the needy to the 
needless. </p>
<p>You, the Government, owe it to the people of Hong Kong, who did not elect 
you, to make choices in their best interests rather than pander to populist 
pressures.</p>
<h3>The MPF</h3>
<p>We cannot conclude without mentioning the
<a href="../dbpub/articles.asp?p=10806">Mandatory Provident Fund</a>. The MPF 
has always been based on the erroneous and insulting assumption that those who 
can afford to save for retirement will not do so unless the law forces them to. 
Time has proven this wrong - the number of people who fall into the CSSA safety 
net has been in decline as the elderly population rises, even after they have 
spent whatever small amounts they received from the MPF in its early years, 
because they had other savings. HK, unlike many developed nations, does not 
penalise personal savings by taxing dividends (which are distributions of 
profits after tax) or capital gains, so those who can afford to save are not 
deterred from doing so.</p>
<p>The MPF in fact should stand for "Mandatory Payments to Fund-managers", since 
there is no option to self-manage the savings by buying non-fund assets such as 
bonds, equities, time deposits or gold. Over the first 15 years, according to
<a href="http://www.mpfa.org.hk/engtxt/information_centre/press_releases/6410_record.jsp" target="_blank">
MPFA figures</a>, the average internal rate of return on MPF funds was 4.0%, 
which is only 2.3% in real terms, after inflation. But we know that the average 
annual expenses were about 2%, so the MPF has benefitted service providers, 
including fund managers, banks, auditors, brokers, trustees and custodians, 
almost as much as it has benefitted the employees.</p>
<p>For every $105 that an employer spends on an employee (up to a cap), $95 goes 
to the employee and $10 goes into the MPF, dressed up as a 5% contribution from 
each side on $100 of salary, and of that MPF money, almost half of the gross 
returns will be eaten up in fees and costs before it is paid out in a lump sum 
at 65. If the scheme was intended to protect those who could save but won't, 
then the lump-sum payout may be blown in one night in Happy Valley or Macau, or 
in paying off pre-retirement debts, so the MPF doesn't even achieve that 
purpose.</p>
<p>We submit that the MPF is an interventionist failure and should be 
scrapped. Instead, return free choice by giving $105 to the workers and let them 
make their own spend-or-save decisions, in the knowledge that the social safety 
net will still be there if they need it. Most of those who can save will save; 
the social safety net will catch them if they fall, but few would deliberately 
fall.</p>
<p>If the MPF is to be retained, then the Long-Service Payment (<strong>LSP</strong>) 
system should be phased out as proposed in our article "<a href="mpflsp.asp#solution">Solving 
the MPF-LSP offset problem</a>" (21-Jan-2014). Accrued entitlements would be 
preserved, but no new LSP entitlements would accrue after a cut-off date, and 
the amount of MPF assets that could be offset against those LSP obligations 
would be frozen on that date too. This proposal includes full portability of 
both employer and employee MPF assets, increasing the administrative efficiency 
of the scheme.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11586">HOSPITAL AUTHORITY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
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