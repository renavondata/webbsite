
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

<script type="text/javascript">document.title="Healthcare reform in HK";</script>

	<div class="summary">We respond to the HK Government's healthcare reform proposals, focussing on financial aspects. We take you through the issues and our recommended solution, a restructuring of the subsidy to incentivise self-reliance but to cap everyone's annual fees, leaving the Government to cover individual catastrophe risk. With our structural budget surplus and trillion-dollar reserves, there is no need for mandatory insurance or more forced savings, which are just a favour to the banking and insurance sectors, as the MPF scheme was.</div>

<h2 class="center">Healthcare reform in HK<br>
<span class="headlinedate">13 June 2008</span></h2>
<p class="center"><strong><a target="_blank" href="../vote/poll.asp?p=26">What 
do you think? Take our Healthcare poll</a></strong></p>
<p>On 13-Mar-08, the HK Government published a 
<a target="_blank" href="http://www.fhb.gov.hk/beStrong/eng/consultation/consultation_cdhcr_cdhr.html">consultation document</a> on 
healthcare reform, titled &quot;Your Health Your Life&quot;. This is&nbsp; a combination 
of reforms to the healthcare system, such as a territory-wide electronic health 
record system,&nbsp; and proposals to change the financing system.</p>
<p>Rather unwisely, the government has linked the two together, saying that it 
can't implement service reforms without changing the financing system. They 
might have titled the paper &quot;Your Wealth or Your Life&quot;. In 
reality there is no connection between the two, and the linkage carries the 
implied threat of inaction unless the community agrees to mandatory savings or 
insurance. 
Yet surely if an electronic records system or a register of family doctors, or 
other service reforms are worth implementing, then they should 
already be underway.</p>
<h3>The structural surplus</h3>
<p>It is not as if the Government is short of money - it stashes most of its 
savings in the Exchange Fund, which, along with the accumulated surplus,
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/press/2008/attach/20080530e3a1.xls">
amounted</a> to about HK$1,104bn at 30-Apr-08. That excludes the $359bn in the 
currency board account which backs the US$/HK$ peg. By comparison, on 31-Dec-98, the savings amounted to HK$667bn. So the Government has 
salted away an additional $437bn in just over 9 years, not to mention the billions 
stashed away in liquid investments elsewhere, such as the $5bn hoard in the
<a target="_blank" href="MPFAbloat.asp">MPF Authority</a>, the 
$4bn in the SFC, the $8bn in the Urban Renewal Authority, or the $53bn in the 
Housing Authority. Whoops, we mentioned it.</p>
<p>If you <a target="_blank" href="http://search.info.gov.hk/eng/press.html">
search the Government press releases</a> for the phrase &quot;structural deficit&quot;, 
you will find the last mention of it over 3 years ago, in then Financial 
Secretary Henry Tang's budget wrap-up
<a target="_blank" href="http://www.info.gov.hk/gia/general/200504/27/04270233.htm">
speech</a> on 27-Apr-05, when they were still trying to persuade the public to 
swallow a Goods and Services Tax in this constitutional free port. That talk has been abandoned, and when you 
look at long-run data it is obvious that we have a government which hoards 
public money by running a structural surplus, and then runs a quasi-Sovereign 
Wealth Fund in the form of the Hong Kong Monetary Authority's Exchange Fund, which invests in bonds and equities 
(including HK equities) rather than returning wealth to the people 
as most democracies do.</p>
<h3>Measuring expenditure</h3>
<p>The total public-sector expenditure on health in 2007-08 for our population 
of about 7 million was about HK$33.5bn 
and will rise to $35.8bn in 2008-09, or about $5,100 per person, according to
<a target="_blank" href="http://www.budget.gov.hk/2008/eng/pdf/e-appen-b.pdf">
figures</a> published with the latest budget (see page 9). These are General 
Revenue Account (<strong>GRA</strong>) figures. In the consultation paper, they 
use a more broadly-defined &quot;Domestic Health Accounts&quot; (<strong>DHA</strong>)<strong> </strong>
figure, based on OECD standards, which throws in additional cost allocation from 
non-health departments such as pest control by the Food and Environmental 
Hygiene Department, or building design from the Architectural Services 
Department. Unfortunately, these DHA numbers are not normally calculated by the 
Government - they had to commission a
<a target="_blank" href="http://www.fhb.gov.hk/beStrong/files/consultation/hkdha_eng.pdf">
study</a> just to find out what they are. On average, for the five years from 
2000/1 to 2004/5, DHA was about 15.4% higher than GRA. </p>
<h3>Crude threats</h3>
<p>With our structural surplus and humungous reserves, we can well afford 
to spend more to improve the health care system and shorten waiting lists, with 
or without financing reform. Our doctors are overworked - there is now
<a href="http://www.ha.org.hk/haho/ho/pad/133779e.pdf">talk</a> of cutting their 
hours to &quot;just&quot; 65 hours per week, and limiting on-call shifts to 24 hours - 
they are true heroes, but do you really want your life in the hands of someone 
who might not have slept since yesterday?</p>
<p>In the paper, the Government trots out a series of crude threats, such as 
ever-increasing waiting times for surgery. However, whether waiting times 
increase or decrease is entirely within the Government's control - by hiring and 
training more healthcare professionals, and expanding facilities, waiting lists 
can easily be cut. The queuing system is a form of rationing, because those who 
prefer not to wait and can afford private care will pay for private treatment. 
The longer the queue, the greater the number of people who will go private, 
while for those who cannot afford private treatment, some will simply die from 
the condition for which they are waiting treatment or from something else while 
waiting, thereby reducing the number of treatments given.</p>
<h3>Unreliable projections</h3>
<p>One thing we know for sure about 25-year projections by governments or anyone 
is that they are almost always wrong by a wide margin from the final outcome. 
The HK Government has consistently over-estimated population growth in the past. 
Now it claims that public health expenditure will grow at 5.7% per year from 
2004 to 2033, compared with 3.4% per year for real gross domestic product (GDP), our 
economic output. This would raise public health costs from 2.9% of GDP in 2004 
to 5.5% of GDP in 2033, 25 years from now, while total healthcare (including 
private expenditure) would grow at 5.4% p.a. from 5.3% to 9.2% of GDP.</p>
<p>If this trend were to keep up indefinitely, then 100 years from now, we would 
be spending 38.7% of GDP on total healthcare, and by the year 2158 the figure 
would be 100% of GDP, an economic impossibility, since it would imply everyone 
was working in healthcare and nobody was doing anything else to pay for it. 
Clearly, at some point, the growth of health costs relative to the rest of the 
economy has to flatten out. The truth is that nobody knows what the figures will 
look like 25 years from now. Throughout history, technology has a track record 
of lowering costs in most areas of the economy - for example, the cost of 
publishing this article online is trivial. But in medicine, conventional wisdom 
internationally is that technology will increase costs indefinitely, 
extrapolating from the trend over the last 20 years. That is clearly impossible. 
The past is not a reliable guide to the future.</p>
<p>Advances in medical research are changing the landscape, and some of them 
will undoubtedly cut costs. 40 years ago, when people now in their 60s were 
first getting hooked on nicotine, it was not well accepted that smoking 
cigarettes can cause cancer and heart disease. Now it is, and the smoking 
population has 
declined dramatically, which should lead to lower total expenditure on treating 
those diseases. Some 90% of lung cancer patients are smokers. Early screening for other cancers, such as pap smears for 
cervical cancer and the HPV vaccination, will also cut the death rate and improve economic output - live 
people are more productive than dead people. Advances in genetics in future will allow 
for preventative screening of those most at risk of various diseases based on 
their genes. Today only a handful of people in the World have had their
<a target="_blank" href="http://www.technologyreview.com/Biotech/18809/">genome 
sequenced</a>, but in 2033 this will probably be common and even done at birth.</p>
<h3>We've been here before</h3>
<p>Back in 1993, the Government issued a report titled &quot;Towards Better Health&quot; 
and known as the <a target="_blank" href="../codocs/RainbowReport1993.pdf">
Rainbow Report</a>, which <em>Webb-site.com</em> is putting online for the first 
time. It warned of escalating health care costs. Public spending on healthcare 
was then 2.3% of GDP in fiscal 1992/3. Later, on 12-Apr-99, the Government 
published a consultation paper known as the
<a target="_blank" href="http://www.fhb.gov.hk/en/press_and_publications/consultation/HCS.HTM">
Harvard Report</a>, &quot;Improving Hong Kong's Health Care System: Why and For 
Whom?&quot;. Just 9 years later, the Harvard Report 
<a target="_blank" href="http://www.fhb.gov.hk/download/press_and_publications/consultation/HCS/REPORT56/FP&SM.doc">projections</a> 
are widely out of line with reality.</p>
<p><em>Webb-site.com </em>has looked at the actual 
outcome. The current consultation paper gives us DHA expenditure figures for 2000/1 up to 2004/5. For 
the other years, we have then taken the actual Total Public Expenditure on 
health reported in budgets from 1996/7 up to 2007/8, and the budget estimate for 
2008/9, and added 15% to estimate the DHA figures. For GDP, we have actual 
figures up to 2007 and a projected figure for 2008. Then, we've compared the 
outcome with the Harvard projections of 1996-2016, and the projections in the 
latest consultation paper, from 2005 to 2033. And here's the result:</p>
<img class="center" alt="" src="../images/DHAvGDP.gif">
<p>As you can see, after climbing during the economic slowdown after the 1997/8 
Asian financial crisis, and again during SARS in 2003, the actual public health 
expenditure as a share of GDP is now back down to just 
2.4%, where it was in 1997 and just 0.1% higher than 1992/3 (the Rainbow 
Report), 16 years ago. But if you believed the scary Harvard estimates 9 years 
ago, then by now we should be spending 3.3% of GDP, or about 38% more than we 
actually are spending in 2008/9, as a share of GDP. If that is how reliable the 
projections are after 9 years, then they are almost completely random after 25 
years.</p>
<p>This year's consultation comes with
<a target="_blank" href="http://www.fhb.gov.hk/beStrong/files/consultation/projecthealthexp_eng.pdf">
another set of projections</a> shown in the graph above. You will notice, incidentally, that in all of these &quot;new&quot; consultation 
papers, the historic figures stop in 2004/5, suggesting that they were prepared 
before the 2005/6 figures were available and have been on the shelf since then, 
waiting for a political window of opportunity to launch the consultation.</p>
<p>Starting with 2.9% of GDP in 2004 and projecting forward, the current 
consultation projects public DHA health spending to be 5.2% of GDP in 2033. Even 
by 2010/11, they expect us to be at 3.3%, whereas we now know with some 
certainty that it will be about 2.4% in 2008/9. <strong>Those projections were out of 
date before they were published, and the Government should have admitted that.</strong></p>
<p>To be clear, we are not predicting that public healthcare costs as a share of 
GDP will remain at 2.4% forever. Real healthcare expenditure will certainly go 
up, if only because of the ageing population, and GDP may, or may not, go up faster 
than health expenditure, as it 
has since 2004. As GDP is much harder to project, so are health costs
<u>as a share of GDP</u>, and that is what matters for 
fiscal planning purposes. All we are demonstrating in the above analysis is that 
you have about as much chance of accurately projecting this figure as you do of 
accurately predicting the Hang Seng Index 25 years from now.</p>
<h3>Demographic projections are shaky too</h3>
<p>Even the &quot;ageing population&quot; story stands on shaky ground. We know that the 
existing population will age, but we don't know how many people will move here 
or leave. Recently, we have been inundated with mainland mothers happily paying 
$39,000 per pop to give birth in a public hospital in Hong Kong and claim right 
of abode for their baby under the Basic Law. This is a good thing. Many of those 
children (whose parents are affluent by mainland standards) may eventually return here for education and to work, reducing the 
demographic ageing and strengthening the economy. In the opposite direction, 
schemes may be devised to incentivise retirees to move to the mainland where the 
cost of living is lower, and to build Hong Kong-managed hospitals there where 
land and staff will be cheaper.</p>
<p>Further, the workforce may be replenished by inward migration. Currently HK 
has various barriers to discourage this, and then devises
<a target="_blank" href="http://www.immd.gov.hk/ehtml/hkvisas.htm">schemes</a> 
for the &quot;right&quot; kind of immigrants, such as the Quality Migrant Admission Scheme 
and the Capital Investment Entrant Scheme. But as the domestic workforce 
shrinks, those barriers can come down without political objection, and we can 
welcome immigrants to replenish the workforce, contributing to the economy and 
helping support the welfare and healthcare system. With the economic recovery in 
recent years, the Government has already begun to lower the barriers, for 
example, allowing foreign students to remain here to seek work after graduation.</p>
<h3>Pre-emptive screening</h3>
<p>Another area where more creative thought is needed is in preventative care. 
Future public expenditure could be avoided if age groups at risk of common diseases such 
as diabetes are screened and counselled on their lifestyle choices. Early 
detection could reduce treatment costs and return workers to the economy, while 
counselling those with unhealthy habits would motivate change when they learn 
how much it would cost them in terms of reduced life expectancy, reduced income 
and increased medical expenses if they don't look after themselves.</p>
<p>An economic 
evaluation should be made of the costs and benefits of screening. For rare 
diseases, screening the entire population would not be cost effective, but for 
common diseases, it probably would. On the 
spectrum of incentives, we shouldn't necessarily stop at subsidised or free screening. It may 
actually save money in the long run if we <strong>offer to pay people to be 
screened, </strong>thereby increasing the number of people who come in, 
particularly among the lower income groups where the payment would mean more. 
These are the same people who will be unable to pay for healthcare when they 
need it, resulting in greater public expenditure. There is also a correlation 
between education and income (particularly among the elderly), so the 
lower-income groups are in greater need of advice on preventing illness. With a 
territory-wide records system, it would be easy to track the one-time incentive. Vaccination rates would also be improved by this, reducing common 
diseases such as hepatitis, and the consequent treatments.</p>
<p>Now we move on to the discussion of financing options.</p>
<hr>
<h3>Seven financing options, but 3 basic components</h3>
<p>In its full consultation paper, the Government proposes seven financing 
options, although it cunningly only attaches numbers to six of them. The 
unnumbered first 
option, which we will call &quot;option zero&quot; is to maintain the status quo of 
heavily-subsidised hospital charges, and continue exempting welfare recipients 
from those charges. This and the other six options are also included in a 
<a target="_blank" href="http://www.fhb.gov.hk/beStrong/files/consultation/brochureview_eng.pdf">brochure summarising the 
proposals</a>, but confusingly, they are renumbered 1, 2.1, 2.2, 3.1, 3.2 and 3.3, with 
the status quo again being unnumbered. However, it doesn't really matter, 
because what they all boil down to are 
various permutations of 3 things:</p>
<ol>
	<li>&nbsp;Subsidies from government revenue</li>
	<li>&nbsp;Mandatory Insurance</li>
	<li>&nbsp;Mandatory Savings</li>
</ol>
<p>Let's look at these three components in detail.</p>
<h3>1. Subsidies from government revenue</h3>
<p><em>Webb-site.com</em> has always promoted free markets and civil liberties, but with 
a social safety net to provide a basic standard of living for those unable to 
pay.</p>
<p>There are two basic ways to provide a government subsidy for any goods or 
services. Price-based subsidies deliberately under-price the goods or services, 
while targeted subsidies provide 
financial support to those who cannot pay full prices, in the form of waivers or discounts. 
The price-based approach is politically convenient but highly wasteful, because 
it gives the subsidy to everyone, including those who don't need it. That 
approach is followed by the Government in numerous areas, including, for 
example, swimming pools, museums, water supply and public transport. The Hospital 
Authority (<strong>HA</strong>) also uses the price-based subsidy approach. About 95% of its budget 
comes from the Government.</p>
<p>The <a target="_blank" href="http://www.ha.org.hk/haho/ho/adm/102116e.htm">
current fees and charges</a> are just token, for example, HK$100 per night in a 
hospital bed, originally intended to cover basic food and beverage, $100 per attendance at 
an accident and emergency (A&amp;E) unit and $100 for the first attendance at a 
specialist out-patient clinic. By comparison, according to the HA's latest
<a target="_blank" href="http://www.ha.org.hk/hesd/v2/AHA/ANR0607/HAAR0607_Eng_1-164.pdf">
annual report</a> for 31-Mar-07, the HA's expenses for a visit to an A&amp;E 
department were $700, and its expenses per patient per day in general acute and 
convalescence units were $3,290.</p>
<p>Even with the low fees and charges, 21% of them were waived. Waivers are 
provided to recipients of
<a target="_blank" href="http://www.swd.gov.hk/en/index/site_pubsvc/page_socsecu/sub_comprehens/">
Comprehensive Social Security Assistance</a> (CSSA), as well as patients whose 
monthly household income does not exceed 75% of the median and whose household 
assets do not exceed certain amounts, excluding their home if they own it. 
Medical Social Workers can also grant waivers on various subjective grounds such 
as &quot;other justifiable social factors&quot;, all explained at
<a target="_blank" href="http://www.ha.org.hk/haho/ho/hacp/122630e.htm">this 
link</a>. The maximum income and assets thresholds for HA fee waivers are higher 
than those to qualify for CSSA. The main intent of all this is to satisfy the 
principle enshrined in Section 4(d) of the Hospital Authority Ordinance that <em>
&quot;no person should be prevented, through lack of means, from obtaining adequate 
medical treatment&quot;.</em></p>
<p>It is obvious that there is a lot of scope for raising fees and charges 
without pushing too many people into the waiver class. A night at a hospital for 
HK$100, including all treatment, surgery and care? You can barely go to the movies 
and buy a bucket of popcorn for that these days, and they don't heal you at the 
movies. The Government should embark on a plan to raise fees 
and charges (in real terms, i.e. above the rate of inflation) gradually over 
time, while maintaining a waiver scheme for those who cannot afford it. The 
increased fees could absorb a lot of the projected growth in healthcare costs, 
should these arise.</p>
<p>This increase in fees (or reduction in subsidies) with targeted waivers was 
in fact the recommendation of the &quot;Scott Report&quot; on <em>The Delivery of Medical 
Services in Hospitals</em>, commissioned by the Government in Feb-85 from
<a target="_blank" href="http://www.wdscott.com/">W.D. Scott Pty. Co.</a> and 
Coopers &amp; Lybrand, and delivered in Dec-85. We were unable to find a copy 
online. It recommended increasing charges to 15-20% of actual cost. We would 
suggest that there is scope, at least for the initial part of each person's 
costs, to go further than that, and to be more creative in how the 
burden is spread.</p>
<h3>Our proposal - a staggered subsidy</h3>
<p>The flat-rate subsidy approach (where every price is discounted by the same 
amount) fails to recognise that most people have some financial means to handle 
regular fluctuations in their income and expenditure. For example, if their TV 
or air conditioner breaks down, they will buy a new one. Similarly, most people 
should be able to afford minor medical expenditure (such as casting a broken 
leg) at less subsidised rates, but may not be able to afford the costs of a 
major disease without a large subsidy. So it makes sense to adjust the subsidy 
accordingly.</p>
<p>One way to do this, rather than subsidising 80% of every charge, would be to 
encourage self-reliance and lower usage by charging a higher percentage of 
actual costs for the first dollar amount per person per year, and then to cut 
back thereafter. We will call this a <strong>staggered subsidy</strong>. For example, the maximum annual charge (phased in over several years) 
could be as follows:</p>
<table class="numtable center">
	<tr>
		<th class="left">Actual cost to HA</th>
		<th>Charge</th>
		<th>Maximum</th>
	</tr>
	<tr>
		<td class="left">First $20,000</td>
		<td>50%</td>
		<td>$10,000</td>
	</tr>
	<tr>
		<td class="left">Next $40,000</td>
		<td>25%</td>
		<td>$10,000</td>
	</tr>
	<tr>
		<td class="left">Above $60,000</td>
		<td>0%</td>
		<td>Free</td>
	</tr>
</table>
<p>We don't have enough data to accurately assess how much that would raise, and 
the numbers could be adjusted, but you get the overall idea. The most anyone 
would pay in this example would be $20,000 in one year, equivalent to about 2 
months' median wage, in return for $60,000 of services. If all of that were used on in-patient treatment, taking an 
HA cost-per-night of $3,500, that would cover 17 nights, and the average subsidy 
on that would be two-thirds, with one-third paid by the patient. If you need 
more than 17 nights per year in hospital, then you would have nothing extra to 
pay.</p>
<p>Each citizen would know that they don't have to spend more than $20,000 in 
any year, but unless they are on welfare, they will have to pay up to that 
amount, and this gives them an incentive to take reasonable steps to stay 
healthy and avoid the cost. At the same time, they would know that 
&quot;catastrophic&quot; costs are effectively insured by the Government out of general 
revenues.</p>
<p>Of course, by paying out that amount, they may then end up with 
insufficient assets and on welfare, but that is what welfare is for - a safety 
net for those who have been unable or unwilling to save. Consideration could be 
given to exempting children under 18 and full-time students, so that parents 
would only have to worry about providing for their own costs.</p>
<p>Capping annual fees per person would of course require some form of 
accounting system, but as Hong Kong has a well-established ID-card system, and 
is proposing a system-wide electronic records system, it should not be 
difficult.</p>
<h4>Accurate subsidies</h4>
<p>We also favour more accurate subsidies. Charging a flat-rate per patient 
night is simple but crude, averaging all treatments across all patients. Some 
treatments cost much more than others, because of the drugs involved, the amount 
of tests, or the number of medical staff involved. With modern enterprise 
software, it is now easy to keep track of actual costs. Users should be 
presented with itemised bills showing the full cost of treatment, the amount of 
subsidy, and the net price. The average cost of common treatments should be 
published and used in educational outreach.</p>
<h4>Fee recovery</h4>
<p>We also see no reason to exclude a patient's self-owned home from the net 
assets test for determining exemption from (subsidised) fees. Clearly if all 
their income goes to pay the mortgage, or if the property is all they own, then 
they won't be able to pay much for healthcare at the point of delivery, but the 
HA could record long-term receivables in its accounts, accruing a market rate of 
interest, and when the person in question sells his property or dies, the HA 
should claim for the amount of (subsidised) fees still owed. Statements of 
amounts due should be sent annually, and those overdue by more than a year could 
be secured with a second mortgage on the property. Only if the deceased person's 
estate is insolvent should the amount be written off.</p>
<h3>2. Mandatory insurance</h3>
<p>The Government's proposal is that every person (possibly subject to a minimum income or 
assets test) would be forced to buy an insurance policy from a 
government-approved insurer at a standard rate, with a standard schedule of 
benefits. There are various ways you can do this - a population-wide scheme 
would charge the same premium to everyone, while it would also be feasible to 
divide the risk pool into age groups, so that young people pay less than older 
people. It is also possible to tilt the schedule of benefits towards covering 
the full cost of certain &quot;lower priority&quot; treatments which can then be 
out-sourced to the private sector, such as cataract operations.</p>
<p>Mandatory insurance means what it says - insurers would not be able to deny 
cover or increase your rate after you contract a long-term illness. However, the 
premium would have to be set annually based on the actual cost of providing 
healthcare to the entire population, so <strong>if healthcare costs go up as fast as the 
Government claims, then so will insurance premiums</strong>.</p>
<p>We already have a community-wide risk-sharing system - it is called the tax 
system. Compared with insurance, it doesn't involve any new and costly administration. 
Insurers would have to collect the premiums up front, then haggle with you or 
the hospital over whether your claims are covered, and then pay out.</p>
<p>The Government claims that the premiums would be set on a &quot;no profit&quot; basis, 
but in reality that would be hard to police - they probably mean no underwriting 
profit (premiums minus payouts and expenses), but they would allow the insurers to take the 
float and invest it. They would also allow the insurers to market top-up 
insurance for greater cover - without the insurers having to pay anything for 
&quot;introducing&quot; the clients. How they would allocate internal expenses, 
such as staffing, between the &quot;no profit&quot; and &quot;for profit&quot; insurance is open to 
manipulation.</p>
<p>There is a risk that over time, the Government would raise the level of 
co-payments that the patient would have to pay towards each treatment under the 
basic plan, or limit the annual claims per person under the basic plan, thereby 
pushing the public into buying top-up insurance. Unlike the basic plan, top-up 
insurance would be for-profit, and coverage could be denied to the higher risk 
patients or for pre-existing illness, or their premiums raised to cover it. You 
see, insurance only works if there is uncertainty about the outcome. If you are 
known to have cancer, and certain to require more treatment next year, then any 
insurer would have to charge you to cover the cost, and the insurance would be 
pointless.</p>
<p>Mandatory insurance also runs the risk of cost escalation through excessive 
billing by private clinics or unnecessary tests or drugs, whereas a user-pays 
subsidised system, in a public health system with no profit motive, can deter 
this. </p>
<p>Mandatory insurance would also shift the burden of coverage towards the lower 
and middle income groups, because everyone would pay the same rate, whereas in a 
tax-based system the higher incomes subsidise those on middle and lower incomes.</p>
<h3>3. Mandatory savings</h3>
<p>Little needs to be said about this. Forced savings, like forced insurance, are an intervention in 
personal choice. Savings do not spread risk, and anyone with a serious illness 
in the family would quickly blow through their mandatory savings and have to 
fall back on their other savings or seek waivers of medical fees in the social 
safety net. Experience of the <a target="_blank" href="MPFcosts.asp">MPF has shown</a> that 
forced savings, where money is handed over to banks and institutions, is very costly to operate, 
clocking up administration and management fees of over 2% per year on funds under management, 
which eats away 45% of the capital and returns over a 30-year period. The MPF 
was a big enough gift to the fund management industry, and we see no reason to 
give it another one - we continue to call for abolishing or reforming the MPF.</p>
<h3>The politics</h3>
<p>In our view, the mandatory insurance and mandatory savings aspects of these 
proposals are partly a payback for political support of the insurance and finance 
sectors in the electoral system for the Chief Executive. The proposals would also 
satisfy those tycoons who believe, wrongly in our view, that if Hong Kong becomes 
a democracy rather than a plutocracy, then it will automatically become a high-tax welfare state and bleed 
employers dry, unless schemes like this are installed to prevent it, before we 
have democracy.</p>
<p>The schemes would involve vast amounts of 
administration costs, as the MPF has demonstrated. As for insurance, by the Government's own admission, 
at least 5%, probably more, of the insurance premiums would go in administration 
costs, while as noted above, the Government may pitch the basic insurance at an 
insufficient level of coverage of increased HA charges, particularly for major 
illnesses where limits are hit, and then allow insurers 
to profit from selling top-up insurance on the back of the mandatory insurance.</p>
<p>For readers outside Hong Kong, it is helpful to explain some of the 
influences on the proposals. The tycoon-funded
<a target="_blank" href="http://www.bauhinia.org/">Bauhinia Foundation</a> (<strong>BF</strong>) on 
24-Aug-07 published a
<a target="_blank" href="http://www.bauhinia.org/publications.htm#hcfinal">
report</a> titled <em>&quot;Development and Financing of Hong Kong's Future Health 
Care&quot;</em>. This followed a preliminary report on 10-Jul-07, just 10 days into 
Donald Tsang's second term as Chief Executive. Three of the four directors of BF 
are government-appointed members of the Hospital Authority, including the 
Chairman of both, and our article today &quot;<a target="_blank" href="bauhiniafound.asp">Who 
is the Bauhinia Foundation?</a>&quot; examines the connections and secretive funding 
of the BF.</p>
<p>In the BF report, they proposed in essence a freezing of the current level of 
services in the HA (what they called &quot;Pillar 1&quot;). New 
technologies, advanced surgery procedures, shorter waiting times for non-urgent 
conditions, health screening and early detection services would be provided in 
&quot;Pillar 2&quot;, which would be 50% subsidised if you were in a mandatory savings 
account (MSA), funded by employee contributions, which they proposed be 
collected through the existing MPF system. Employer contributions would be 
&quot;voluntary&quot;. Low income groups would not have access to these new &quot;Pillar 2&quot; 
services, because they would not contribute to MSAs. People would be allowed to 
draw from their MSA to buy approved medical insurance in the private sector. 
There was also a proposed &quot;Pillar 3&quot; consisting of unsubsidised private 
healthcare, but we already have that in the market.</p>
<h3>Tax treatment</h3>
<p>Currently, if an employer provides medical insurance to an employee, then the 
employer deducts the expense from taxable income, while the employee does not 
get taxed on the benefit, as it cannot be converted into cash. But if an 
employee buys his own medical insurance, then he has to do so out of his taxed 
income. This is unfair. To remove the inequity and encourage voluntary medical 
insurance, <strong>people who buy their own insurance should get a deduction of 
the cost against their income for salaries tax purposes</strong>.</p>
<h3>Vehicle and workplace accidents</h3>
<p>There are some types of healthcare, such as treating injuries from vehicle 
accidents and workplace injuries, where the full cost should be covered by 
insurance. Currently all vehicle drivers are required to be insured for third 
party liability, and all employers are required to carry employee compensation 
insurance up to HK$100m for one event, so it is reasonable then to recover the 
full cost of this healthcare and not to burden the public finances with it.</p>
<p>To avoid false claims, public hospitals should charge the patient on the 
usual subsidised basis, and the patient can then recover his payment from the 
insurers. Meanwhile, the hospital should have a right of action (with statutory 
backing if necessary) to recover the subsidy from the insurers involved. The 
mandatory vehicle insurance should be extended to include not just third party 
injuries (including passengers) but the driver himself, and the liability for 
injuries should be divided equally amongst the insured vehicles involved, so 
that if, for example, there are 2 vehicles in a collision, then the insurer of 
each picks up half the healthcare costs without arguing about whose fault it 
was. Put that in law and the vehicle insurance premiums will adjust accordingly.</p>
<h3>No sugar</h3>
<p>In an unsubtle attempt to sweeten the bitter pill of forced savings, the 
Government has suggested that $50bn of our $1104bn of reserves should be 
injected into medical savings accounts at the start, or about HK$7,100 per 
person. This is already public money, and could just as easily be used to 
subsidise an improved healthcare system directly. You can be confident that it 
would not be possible to withdraw this money from your Mandatory Savings Account 
and walk off with it, so don't be fooled into regarding this as a hand-out.</p>
<p>So in summary, we propose:</p>
<ul>
	<li>A <strong>staggered subsidy</strong>, replacing the current flat-rate 
	subsidy, so that a higher portion, say 50%, of the first part of each 
	person's annual costs is paid by them.</li>
	<li>A <strong>cap</strong> on the annual fees chargeable to each person, at 
	say HK$20,000, so that anything above that is covered by the state, in 
	effect providing state-insured catastrophe risk.</li>
	<li>A phased reduction of overall subsidy from 95% to 80%, say over 5 years.</li>
	<li>Continued exemption for those on welfare, but refining the means test to 
	make sure that those who can pay the subsidized fees do, if necessary by 
	deferring the fees until they sell their property or die.</li>
	<li>No mandatory insurance or savings.</li>
	<li><strong>Salaries tax deduction</strong> for voluntary health care 
	insurance purchased by employees (employers already get this deduction from 
	taxable profits).</li>
	<li>Creative schemes to incentivise screening, early detection and 
	education, such as <strong>offering to pay people</strong> to be tested for 
	major risks, if it will reduce treatment expenditure in the long run.</li>
	<li>The Hospital Authority to recover from insurers the full costs of 
	subsidies for treating vehicle and workplace accident victims.</li>
</ul>
<p class="center"><strong><a target="_blank" href="../vote/poll.asp?p=26">What 
do you think? Take our Healthcare poll</a></strong></p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
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