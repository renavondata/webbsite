
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

<script type="text/javascript">document.title="The cost of a universal pension";</script>

	<div class="summary">Following Jim Walker's guest article today, we run the numbers to show why a universal pension would put HK on the road to fiscal hell, a high-tax European-style welfare state. The ageing population means a HK$6k per month pension in 2039 would imply at least a 35% tax rate, and probably higher as mobile profits and professionals leave. Even 13 years from now, tax rates would rise to at least 28.5% to balance the budget.</div>

<h2 class="center">The cost of a universal pension<br>
<span class="headlinedate">12 March 2011</span></h2>
<p>Following on from today's article <a href="upwalker.asp">Universal pensions 
in HK: the case against</a>, by guest contributor Jim Walker, we will run the 
numbers to show you why adopting a universal pension, paid to every citizen over 
the age of 65, would put HK on the road to fiscal hell, a high-tax 
European-style welfare state.</p>
<h3>The ageing population</h3>
<p>Like most of the developed world, HK has an ageing population. According to 
the latest 30-year
<a href="http://www.statistics.gov.hk/publication/stat_report/population/B1120015042010XXXXB0100.pdf" target="_blank">
population projections</a> (2009-2039) from the Government's
<a href="http://www.censtatd.gov.hk/" target="_blank">Census and Statistics 
Department</a>, the population in mid-2009 was 7.00m, of which 12.8%, were over 
65. In mid-2024 (13 years from now), the population is projected to be 8.02m, of 
which 21.0% will be over 65. In mid-2039, the population is projected to be 
8.89m, of which 28.0% will be over 65. Here's a breakdown:</p>
<img class="center" alt="HK's ageing population" src="../images/agepop.gif">
<p>The population projections do not predict much growth in the workforce: 
between 2011 and 2039, the number of people between 20-64 years old is expected 
to increase by only 2.7%, while the number over 65 increases by 165%.</p>
<p>Now we freely admit that HK's past population projections have been 
inaccurate, partly due to subsequent policy changes, but they are the best we 
have to work with, and long-term fiscal policy-making would be reckless if it 
did not take them into account. The projections are of course partly founded on 
government policy, including the incentives for and against reproduction, 
migration to HK and emigration from HK, and even the incentives for and against 
living healthier lives, such as cigarette taxes. The fiscal policy itself feeds 
back into these policies - it is part of a dynamic system.</p>
<p>For example, if we promised a pension to every &quot;permanent resident&quot; (<strong>PR</strong>) 
who actually lives in HK, then more PRs who have left HK would return to live 
here and claim it, boosting the old-age population. Under paragraph 7 of
<a href="http://www.hklii.org/hk/legis/en/ord/115/sch1.html" target="_blank">
Schedule 1 of the Immigration Ordinance</a>, If you are a Chinese citizen and 
PR, then you do not lose PR status by leaving HK - it is yours for life. If you 
are a non-Chinese citizen and PR who has left HK, then you only lose PR status 
if you stay away and do not &quot;touch base&quot; for more than 3 years.</p>
<h3>What it would cost</h3>
<p>In current-dollar terms, the ageing population means that for each HK$1,000 
per month ($12k per year) handed out to all over-65 year-olds in 2024, it would 
cost $20.2bn, and in 2039 it would cost $29.9bn. Of course, nobody would regard 
$1,000 per month as an adequate pension if that is all they have to rely on. 
Currently, over-70s get more than that as &quot;fruit money&quot;, or
<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_ssallowance/" target="_blank">
Higher Old Age Allowance</a>, without means-testing ($1,035/m from 1-Feb-2011) 
and those between 65 and 70 get it if they are poor enough. Those over 60 can 
also apply for a means-tested
<a href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_comprehens/" target="_blank">
Comprehensive Social Security Assistance</a> (<strong>CSSA</strong>) of $2,680 
per month, as well as the repeated &quot;one-off&quot; annual budget handouts such as an 
extra month's worth of allowances, electricity subsidies and so on.</p>
<p>So any discussion of a universal pension to replace means-tested benefits is unlikely to start at less than 
$4k per month (in current dollars), and more likely there will be pressure to 
raise it to $6k per month, which is roughly what someone on minimum wage will be 
earning from 1-May-2011 if they work 49 hours a week. So let's take a range of $4k to 
$6k, and see what that would cost per year in 2011, 2024 and 2039:</p>
<img class="center" alt="65+ pension" src="../images/pencost.gif">
<p>So even if we paid all residents over 65 a pension of $4k per month, this 
would already cost $43bn per year, and would rise to $119bn by 2039. At a more 
likely $6k per month, this would cost $179bn per year in 2039. All figures 
are in 2011 dollars, not adjusting for inflation.</p>
<p>Current Old Age Allowance and CSSA for the elderly is a tiny fraction of that. In 
2001-12, CSSA (across all age groups) is
<a href="http://www.budget.gov.hk/2011/eng/pdf/head170.pdf" target="_blank">
budgeted</a> at $19.2bn and the Social Security Allowance Scheme (including 
Disability Allowance and Old Age Allowance) is $9.3bn. Within those, the 
payments to over-65s are maybe one-third, or about $9-10bn - we will assume 
$10bn. So even if these allowances are replaced by the universal pension, a 
$6k/month pension would still cost an additional $111bn in 2024 and $169bn in 
2039, in current dollars. That's about 10% of our current GDP.</p>
<h3>Impact on salaries tax and profits tax</h3>
<p>Now to put that in perspective, in this year's budget (2011-12), taxes on 
earnings and profits (mainly Salaries Tax and Profits Tax) are
<a href="http://www.budget.gov.hk/2011/eng/pdf/head003b.pdf" target="_blank">
estimated</a> to raise about $151bn. So to pay for the $6k universal pension, we 
would need to raise tax rates by about 111/151=74% by 2024, and by 169/151=112% 
by 2039. Our current standard tax rates are 15% on salaries and 16.5% on profits. So 
to pay for the universal pension, <strong>we would have to raise these tax rates 
within 13 years by 2024 to about 27% for salaries and 28.5% for profits</strong>. 
The tax rates on salaries and profits must be kept close together, otherwise 
there will be arbitrage as business owners can choose whether to take the 
earnings as 
profits or as remuneration. And that's just for starters - <strong>by 2039, the tax 
rates would have to rise to 33.5% on salaries and 35% on profits.</strong></p>
<p>There are additional impacts that we have no factored in:</p>
<ul>
	<li>The higher tax rates would drive away some business. It is no secret 
	that a substantial portion of HK business profits come from transfer pricing 
	of mainland exports and imports, for two reasons: (i) mainland tax rates are 
	higher than HK's; and (ii) mainland companies like to get an international 
	currency in HK rather than book their profits in the mainland where the 
	currency is not convertible. Almost certainly by 2039, and likely long before that, the RMB 
	will be an international currency. And if mainland tax rates are the same or 
	less than HK's, then businesses will prefer to book their profits in the 
	mainland.</li>
	<li>Similarly, some skilled professionals in all sectors, both native and 
	immigrant, would choose to live somewhere less crowded and polluted than HK 
	if they are going to be taxed at welfare-state levels. As we mentioned in 
	our article on <a href="salariestax.asp">reforming Salaries tax</a>, 
	in 2006-7, 8% of workers paid 90% of the salaries tax, for the simple reason 
	that they earned most of the money.</li>
	<li>
	<p>The elderly population would be increased by the pension itself, because 
	some Permanent Residents who have left HK would undoubtedly return to enjoy 
	the pension, increasing the cost to taxpayers.</p>
	</li>
	<li>
	<p>There may be some growth in real wages, which would offset some of the 
	above factors, but not by much.</p>
	</li>
	<li>As the population ages, public health care costs will likely increase. 
	People are living longer, but after you eliminate the increase in longevity 
	from the reduction in smoking-related diseases and low-cost things like 
	vaccines, most of the rest of average 
	life extension is achieved by better medicine and life-sustaining but 
	expensive treatments, and as people live longer, more of them suffer chronic 
	illness or dementia, requiring long-term care, or need other work such as 
	hip replacements.</li>
</ul>
<p>So for these reasons, the actual tax rates necessary to pay for a universal 
pension and still balance the budget would likely be even higher than our estimate, and 
even then we may not be able to cover it, because the higher the tax rates, the 
more you drive away business and people, so there is a point on the rate scale 
above which tax revenue actually decreases. This is the maximum on the
<a href="http://en.wikipedia.org/wiki/Laffer_curve" target="_blank">Laffer Curve</a>, 
and it will be different for each economy.</p>
<p>Of course, we could buffer the increase by spending some of the reserves, but 
this would only be a stop-gap move. We have $1.2 trillion of reserves (including 
the surplus of the Exchange Fund), which 
would only finance the pension for about 7 years at 2039 rates, or 10 years at 
2024 rates, and there will be other competing claims on those reserves, 
including rising public healthcare costs. Another variation would be 
to set the pension age at 70, in the hope that people who live longer will be 
fit enough to work longer - but that still leaves a huge cost, running at $141bn 
per year by 2039:</p>
<img class="center" alt="70+ pension" src="../images/pencost70.gif">
<p>Others have called for introducing new taxes, such as a Goods 
and Services Tax. That is just rearranging the deck chairs on the titanic. One 
of the driving forces of our retail sector is purchases by mainland and European 
tourists, avoiding high VAT rates back home. Throw away the box and carry the 
product back in your luggage, around your neck or on your wrist. If we 
introduced a GST ourselves, a lot of those sales would disappear unless they 
were exempted. There would doubtless be calls for exemptions on social 
necessities like food. So a GST would not come close to covering the cost. Total 
retail sales in 2010 were $325bn. The bottom line is that whichever way you tax 
it, you cannot take $169bn out of the economy, equivalent to about 10% of 
economic output, without severe negative consequences.</p>
<h3>Conclusion</h3>
<p>So a universal pension would result in western tax rates, consistent with a 
welfare state, and the end of free-market capitalism in HK. If we want to keep our competitive advantage as a financial, 
professional services and trade centre 
then we simply can't afford to redistribute so much of the personal and business 
earnings to those who don't earn it as is implied by a universal pension. The latest budget changes, with a $6k 
&quot;one-off&quot; distribution to all permanent residents, are setting a dangerous precedent in 
that direction.</p>
<p>The numbers above are the economic realities of 
proposing a universal pension - it is simply unworkable, and any politician who 
promises it to you now is writing cheques that future Governments cannot cash. 
We <em>can</em> afford to continue providing a means-tested safety net, but that is all 
that HK can afford if it wishes to avoid the road to fiscal hell.</p>
<p>Politically, with the campaign for chief executive in 2012 beginning to 
heat up, HK is approaching a key fork in the road. Turn left for socialism, or 
turn right for capitalism with a social safety-net. Turn left for economic 
decline, or right for economic prosperity. China proved from 1949 to 1979 that 
levelling incomes and removing incentives certainly narrows the &quot;wealth gap&quot; (to 
zero, in the case of communism) but only by making the rich poorer, not the poor 
richer. The USSR and the Eastern Bloc did the same. Cuba did the same. And in a 
milder form, Greece and Spain have recently emphasised the point.</p>
<p>To paraphrase
<a href="http://en.wikipedia.org/wiki/George_Santayana" target="_blank">George 
Santayana</a>, those who do not learn from history are condemned to repeat it. 
Voters (and people who elect voters) and candidates in 2012 need to understand 
that capitalism and economic prosperity are how we pay for the social safety 
net, but that gratuitous redistribution of wealth just leaves less wealth to 
distribute in the first place. This is particularly true of HK, with a high 
mobility of profits and skills, almost no natural resources and a minimal 
manufacturing base. If we hollow out the trade, finance and professional sectors 
of HK with the imposition of much higher tax rates, then HK will be a much 
poorer place.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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