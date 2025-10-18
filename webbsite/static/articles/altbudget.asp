
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

<script type="text/javascript">document.title="The alternative Budget Speech, 2013: Prosperity through Reform";</script>

	<div class="summary">Webb-site reveals the Hong Kong Budget Speech which should be delivered next Wednesday.</div>

<h2 class="center">The alternative Budget Speech, 2013: Prosperity through Reform<br>
<span class="headlinedate">22 February 2013</span></h2>
<p>This is the Hong Kong <a href="http://www.budget.gov.hk/" target="_blank">Budget Speech</a> 
that should be given next Wednesday, 27-Feb-2013, but won't.</p>
<p><strong>Mr President,</strong></p>
<p>I move that the Appropriation Bill 2013 be read a second time.</p>
<h3>Introduction</h3>
<p>Having regard to our substantial 
<a href="http://www.hkma.gov.hk/media/eng/doc/key-information/press-release/2013/20130131e3a1.pdf" target="_blank">reserves of 
some $1341bn</a> at the end of 2012 (including the 
accumulated $624bn surplus in the Exchange Fund) and to the long-run average surpluses which have led to the accumulation of these reserves, there is ample 
scope to reduce revenues while continuing to enhance social services, including 
education, healthcare and welfare. Rather than engage in sporadic, untargeted 
and unpredictable hand-outs, we will abolish economically inefficient taxes, 
reform and reduce other taxes, and remove wasteful programmes.</p>
<p>We will return to the free market principles on which Hong Kong built its 
economic success, by withdrawing the Government from commercial activities in 
the economy, and removing direct and hidden subsidies to commercial enterprises.</p>
<p>We will reform the tax system so that revenue is collected fairly from gross 
domestic product (<strong>GDP</strong>), the economic output of HK, wherever possible simplifying the 
system and removing distortions of incentives. For individuals, economic gain is 
their earnings (whether in cash or benefits) minus a personal allowance for 
expenses, and for businesses, economic gain is their profits.</p>
<p>Finally, we will comply with
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Basic Law Article 107</a>, which requires HK to &quot;strive to achieve a fiscal 
balance, avoid deficits and keep the budget commensurate with the growth rate of 
its gross domestic product&quot;. By requiring fiscal balance, BL 107 indeed requires 
that we return surpluses, net of deficits, to the economy, rather than piling up 
reserves as HK has done in the past. We will do this with adjustments to tax 
rates rather than unpredictable handouts, waivers and subsidies. Welfare will be 
appropriately funded but not subject to random redistributive handouts.</p>
<p>The last requirement of BL 107, to keep budget growth in line with GDP, is 
important, because it implies that in the long run, Government expenditure and 
revenues should be a constant share of GDP, not an increasing share of GDP. In 
1997-98,
<a href="http://www.budget.gov.hk/1997/speech/eng/appa.pdf" target="_blank">
budgeted public expenditure</a> was 18.3% of GDP, but this has been creeping up 
and by 2012-13 it was
<a href="http://www.budget.gov.hk/2012/eng/pdf/e_appendices_a.pdf" target="_blank">
budgeted</a> at 21.4% with a decline to 19.2% after 4 years. In other words, for 
every $100 of economic output, the Government now accounts for $3 more of it 
than it did at the time of the Handover.</p>
<p>We shall aim to keep this figure at or below 20% in the long run, and 
shall not spend just for the sake of it. In particular, we will stop 
over-stimulating the construction sector with projects which do not generate an 
economic rate of return. Hong Kong has undergone a vast development since World 
War II, but we are now entering the era of in-filling, replacement and upgrading 
rather than rampant expansion. The road to economic hell is paved with concrete, 
not good intentions.</p>
<h3>Abolishing stamp duty</h3>
<p>Stamp duty, currently charged on real estate and HK-registered shares, is an archaic tax dating from the time of King William III of 
Orange and Queen Mary II, introduced in England in 1694 to finance a war against 
France. It has no place in a modern economy, because it taxes the value and 
frequency of transfer of 
certain assets rather than the corporate or personal productivity that make up our 
GDP. Slapping
<a href="http://www.info.gov.hk/gia/general/201302/22/P201302220572.htm" target="_blank">
ever-increasing</a> levels of stamp duty on transactions makes properties less 
affordable, and grabs a bigger slice of the value from each transaction, slowing 
down turnover and impeding freedom of choice.</p>
<p>Potential vendors have already paid their stamp duty when they bought. 
Their property is theoretically worth the net present value (<strong>NPV</strong>) 
of all future net income from it. They have a choice between occupying, or 
equivalently, collecting rental income, or selling, so they will be reluctant to 
reduce their asking price for sale relative to a given NPV of rentals. 
Similarly, potential buyers can either carry on renting or pay up the stamp duty 
in order to secure the future rental income stream (or the avoidance of rent by 
occupying), so they will be reluctant to pay a lot more than the NPV. The higher 
the transaction costs, the longer the expected holding period needs to be to 
justify the levy.</p>
<p>A simple thought experiment shows that if we jacked up regular stamp duty to 
1000% then almost nobody would ever sell again, and almost nobody would buy - 
they would just rent from those who own, to prevent the Government grabbing most 
of the value as transaction costs. The calculus at lower rates is similar. 
Higher rates of stamp duty reduced turnover, but they don't affect the NPV.</p>
<p>An example will help you to understand why. Suppose an office property is
<u>transacted</u> at $6m plus 3% stamp duty, or a duty of 
$180,000, then this equivalent to a property with a theoretical value of $6.09m 
on which each side pays &quot;brokerage&quot; of $90,000 (about 1.48%) to the Government. 
The buyer pays a total of $6.18m, and the seller receives $6.00m. If we double 
stamp duty to 6% but still split the costs, assuming the NPV stays the same at 
$6.09m as it should, then the transacted price would shift to 
$6.09m/1.03=$5,912,621. The buyer would pay $6,267,379 including stamp duty, and 
each side would be paying about $177,378 in &quot;brokerage&quot; to the Government, or 
2.91% of the market value. Yes, there is a reduction in the transacted price, 
but in reality all it does is to deter both buyers and sellers due to the higher 
costs. The seller receives less, but the buyer pays more, so the price drop is 
illusory. The higher the duty, the fewer people would be willing to buy or sell.</p>
<p>Here's what happens if you increase the stamp duty in multiples of 3%:</p>
<p class="center"><img alt="" src="../images/stampEffect.gif" style="width:100%;max-width:499px"></p>
<p>So effective from midnight tonight, we will <a href="stampout.asp">abolish</a> stamp duty.</p>
<p>This will remove friction from the economy which keeps people locked in 
their homes (rather than moving homes and paying duty again) and slows down 
turnover of shares, while driving people into riskier derivatives that do not 
bear stamp duty. Revenue from stamp duty has <a href="stampout.asp">
increased</a> from $7.3bn in 2002-3 to $44.4bn in 2011-12. This is a major drag 
on GDP.</p>
<p>We will also abolish Special Stamp Duty and withdraw the proposed Buyer's 
Stamp Duty, as both are <a href="stamp2012.asp">unconstitutional</a> 
penalties on the exercise of rights contained in Basic Law 105, 
as well as having numerous undesirable consequences and unintended victims. 
However, if people are trading in properties as a business, whether or not they 
are incorporated, that business will remain 
subject to profits tax. I will return to housing and land policy later in this 
speech.</p>
<h3>Flattening salaries tax</h3>
<p>Currently, an individual has a personal allowance of 
$120k per year and is then subject to salaries tax at 2% on the next $40k, 7% on the next $40k, 
12% on the next $40k and 17% thereafter, subject to a maximum overall charge of 
15% on pay <u>before</u> allowances (known as the &quot;Standard 
Rate&quot;). So the first $240k produces tax of just $8,400, or 
3.5% of earnings. It is hardly worth it. Above $240k, the rate is 17% until it 
drops to 15% at $1620k, which is the breakeven point for the Standard Rate. To 
simplify this and make it fairer, without charging anyone more, we will:</p>
<ul>
	<li>raise the personal allowance from $120k to $200k
	</li>
	<li>abolish the 2%, 7% and 12% bands
	</li>
	<li>adopt a flat rate of tax for all earned income above $200k at 
	14%.
	</li>
</ul>
<p>For a given amount of earnings, everyone will pay less tax. Those earning 
between $120k and $200k will be removed from the tax net, and those earning 
between $200k and $240k will see their tax bill at least one third lower. Those 
earning between $240k and $1620k will get a 3% reduction on that band, from 17% 
to 14%, while those earning more than the $1620k breakeven point will only get a 
1% reduction plus the $28k from no longer taxing their personal allowance. </p>
<p>As noted below, we will tax benefits, including housing, at their real value, 
and we will abolish the home loan interest deduction, which will at least 
partially offset the revenue reduction. We will review the new flat rate of tax 
in the light of actual revenues.</p>
<h3>Profits tax</h3>
<p>Profits tax will be reduced from 16.5% to 14%, the same rate as salaries tax. This 
will remove the incentive for business owners to pay out all their profits as 
director's bonus. They will still enjoy salaries tax allowances if they 
incorporate and pay themselves at least $200k, but above that, there will be no 
difference in the tax treatment of salaries and profits.</p>
<p>We will no longer indulge in profits tax waivers. Companies which organise 
themselves into multiple subsidiaries, for example, a retailer holding company 
with 1 shop per subsidiary, have been able to claim last year's
<a href="http://www.budget.gov.hk/2012/eng/budget06.html" target="_blank">
$12,000 waiver</a> multiple times. This is not an efficient use of public money. 
Instead, if revenues are consistently above budget on a 5-year average, then we 
will lower the flat rate of salaries tax and profits tax to compensate.</p>
<h3>Couple's allowance</h3>
<p>Allowances for the cost of raising 
children and supporting relatives will be the same as before. However, in a 
modern society, we must recognise that many couples choose to share their home, 
their lives and their income without getting married, and in some cases marriage 
is not an option because our law does not yet recognise same-sex marriage. 
Unmarried but cohabiting couples, heterosexual or homosexual, should be allowed 
to share their personal tax allowances. Therefore married person's allowance 
will be replaced with a &quot;Couple's Allowance&quot; of the same value, being twice the 
single allowance. To claim it, a couple must share the same residential address 
and either be married or not closely related - i.e. not linearly related or 
siblings.</p>
<p>It should be noted that, with the new flat tax rate, there will be no 
advantage in claiming couple's allowance unless one of the two is earning less 
than the tax threshold of $200k per year.</p>
<h3>Taxing non-cash benefits</h3>
<p>We will abolish the <a href="housinglark.asp" target="_blank">loophole</a> of favourable treatment of rental reimbursements 
or housing provided by the employer. This is currently valued at 10% of your 
cash salary; instead, we will value it at its actual cost or the rateable value 
of the premises, whichever is greater. This formula allows for the possibility 
that quarters are subsidised or provided free. If you receive free electricity 
as a director of a power company, or other perks not convertible into cash, 
these will also be taxed at actual value. The fundamental principle is that you 
will be taxed on the fair value of <em>what</em> you are paid, not <em>how</em> 
you are paid.</p>
<h3>Abolishing mortgage interest deduction</h3>
<p>We will abolish the specific salaries tax deduction for interest on home 
loans. The deduction distorts the incentives being buying and renting, and in 
effect is a gradual return of the stamp duty we were previously charging, but 
only if the buyer borrows to finance his purchase, so it is also a distortion of 
the incentives in financing choices. However, we will be raising personal 
allowances as mentioned below, so this will counter the effect of abolition.</p>
<h3>Roads and air pollution</h3>
<p>We will abolish First Registration Tax, because vehicle ownership doesn't 
cause pollution or congestion. Driving them does. If you want to buy a beautiful car 
and just look at it in your car park, then you won't be taxed for that. You 
could just as easily buy a painting and look at it. For the 
same reason, we will abolish annual vehicle licence fees and replace them with a 
simple administrative fee to cover the cost of verifying that the vehicle has a 
road-worthiness certificate if required. Annual emissions tests will be 
mandatory. However, we will increase taxes on 
vehicle <u>usage</u> as explained below.</p>
<p>Diesel engines are an ongoing source of particulate air pollution, and 
yet we charge zero diesel duty and $6.06 per litre on Petrol. This is 
inconsistent with the associated healthcare costs and damage to the environment, 
as well as the cost of land allocated to roads and road maintenance costs. It is 
a hidden subsidy to the transport trade. Roads in general are underpriced, 
resulting in congestion. With 
immediate effect, duty on both diesel and petrol will be raised to $8.88 per 
litre, without exemptions.</p>
<p>LPG doesn't produce as much NOx or particulates, but still generates CO2 
and an LPG vehicle still incurs road costs. LPG duty will be introduced at $4.88 
per litre, without exemptions. This will remove the hidden subsidy to taxis and 
minibuses. We will permit the licensing of private cars powered by LPG, as fuel 
source should be a matter of free choice, and we wish to encourage less 
polluting fuel usage.</p>
<p>We will also introduce electronic road pricing in all congested areas, which 
will be smart enough not to charge when traffic is low and to 
charge more during peak hours, so as to keep the traffic moving at not less than a target 
speed. Shops and distributors should reschedule deliveries if they wish to 
reduce or avoid the charge.</p>
<p>Metered parking is currently very underpriced, and that represents unfair 
competition with private sector car parks, as well as using up valuable road 
space in some areas. We will raise parking meter charges from $2 per 15 minutes to $6 per 15 
minutes in urban areas and $5 in rural areas, and thereafter keep it in line 
with private-sector car park charges, currently around $24/20 per hour. Wherever 
on-street parking is an impediment to traffic, those spaces will be removed, 
because the income from meters is not worth the economic cost of traffic jams.</p>
<p>Fixed penalties for illegal parking have not been raised since 1994. The fine 
for dropping a sweet wrapper in a public place is $1500, but illegal parking 
only costs $320, which many consider good value if you only get caught once in 
10 hours. So we will raise the fine to $1500 for a first offence in any 12-month 
period, and $3000 for a second or subsequent offence. A third offence will also 
incur licence points for the responsible driver. To increase transparency, full 
names and ID numbers of offenders will be published. Your ID number is an 
<a href="identity.asp">identifier</a>, not a password.</p>
<p>The overall effect of these measures will be to increase revenues from fuel 
duties, parking and electronic road pricing, while eliminating revenue from 
first registration tax and annual license fees. The aim is to increase overall 
revenues from road transport, thereby deterring road usage and air pollution 
overall.</p>
<h3>Taxis</h3>
<p>We never promised not to issue more taxi licenses, and these were never 
intended as an investment but as a system for ensuring that fares are properly 
metered and safety standards are met. The current system is anti-competitive, 
because in order to drive a taxi for a living, you have to pay someone else not 
to, by buying or renting an existing license. Indeed, most drivers currently pay 
rent to a relatively small group of people who own the 
licenses. When fares go up, the value mainly accrues to the license owners, not 
the drivers, because the economic value-added of a driver remains the same. He 
will only drive if he can make roughly what he would earn on any alternative 
minimum-wage job.</p>
<p>We
<a href="http://www.td.gov.hk/en/transport_in_hong_kong/public_transport/taxi/" target="_blank">currently</a> have some 
18,138 licensed taxis, comprising 15,250 urban (red), 2,838 rural (green) and 50 
Lantau (blue). Red and green taxi licenses
<a href="http://www.taxixchange.com/" target="_blank">change hands</a> at about 
$7m and $5m respectively, valuing the stock at around HK$121bn. If you have been 
betting on this ridiculous situation continuing, then you have just lost the 
bet. Taxi licenses are not a license to print money.</p>
<p>We will henceforth allow anyone with a 
clean driving licence and roadworthy taxi to obtain a non-transferable taxi 
license for an administrative charge of $100 per year. However, those 
considering applying should note that taxis will be subject to congestion 
charges each time they enter a given zone, and they will be charged fuel duty on 
LPG, to 
cover air pollution and general road usage, so operating costs will be higher 
than before. These costs will reduce the rental that drivers can afford 
to pay to taxi owners, while drivers' net income will be largely unaffected, 
remaining close to minimum wage levels for a relatively unskilled job.</p>
<h3>Buses</h3>
<p>We will introduce a more rational system for buses. In congested areas, 
&quot;landing slots&quot; at bus stops will be created and re-tendered every 3 
years, to reduce 
the problem of buses queuing up and blocking traffic flow to drop or pick-up passengers. Like other 
vehicles, buses will have to pay congestion charges (at twice the rate for a car 
and the same as a truck) and will not be exempt from fuel duty as they are at 
present, but since the cost will be spread amongst all passengers, this will 
have minimal impact on fares if buses are well-loaded. It will incentivise bus companies to use 
interchange hubs and not to run so many low-load buses through congested areas 
at peak times.</p>
<p>We will also allow open competition. Franchises will be abolished, and bus 
companies will be free to choose what routes to run and how much to charge, subject only to advanced publication of tariffs 
and routes, which may include 
different charges at different times of day. They will set prices that they are 
willing to accept and which passengers are willing to pay, just as red 
mini-buses do. The Chief Executive of HK will no longer set bus fares. That's 
not his job, and it is a thankless task.</p>
<p>Since franchises will be scrapped, it follows that we will remove the
<a href="http://gia.info.gov.hk/general/201205/23/P201205230220_0220_94292.pdf" target="_blank">
unofficial cap of 7071</a> on the number of non-franchised buses (NFBs). A 
premium for their licenses has already begun to develop, and we do not want them 
to end up like taxi licenses. They will, like other traffic, have to pay fuel 
duties and congestion charges. This should relieve the current pressure on 
school bus costs due to the increased demand on NFBs from tourism, and will 
allow more children to take a school bus rather than be driven to school in a 
car or taxi. This will reduce road congestion overall.</p>
<h3>The $2 elderly fare scheme</h3>
<p>This scheme is an example of wasteful expenditure. We will abolish it, and 
instead increase elderly CSSA levels to cover the increased cost of personal transport 
for those who cannot afford it. This will target the subsidy where it is needed, rather than 
subsidising the transport costs of those who can afford it.</p>
<h3>Housing and Land</h3>
<p>The Government has a duty to ensure that its citizens have a basic 
livelihood, including housing, education, healthcare and sufficient income for a 
basic standard of living. The &quot;housing&quot; part of that is to ensure that people
<u>have</u> a home, not that they <u>own</u> 
one. No person should be homeless. We will step up the public rental housing 
scheme and the building of old-age homes to ensure that, rather than the current 
3-year waiting list, there is sufficient inventory that anyone who qualifies 
gets a home - in other words, a zero waiting list. This is in line with the 
principal of &quot;no rationing through queuing&quot;.</p>
<p>You can have a public apartment for as long as you live and cannot afford 
private rentals, but we will not subsidize private home ownership. That is not a 
good use of public resources. It amounts to a subsidy to invest in property, and 
we don't subsidise other kinds of personal investments, such as stocks and 
bonds. We accept that some citizens will never achieve 
the earning capacity to save enough equity to own a home. Excessive home 
ownership targets in the West, and preferential tax treatment for the home as an 
asset, has led to housing crashes, a financial meltdown, and waves of 
foreclosures against people who could not afford to own a home in the first 
place. We will abolish the Home Ownership Scheme for good.</p>
<p>Speaking of housing crashes, we are due for one. We have taken steps via the 
HKMA to limit loan-to-value ratios in mortgages, to ensure as far as possible 
that taxpayers are not faced with bailing out the banks when the bubble bursts. 
So if you find that you cannot afford the deposit or a mortgage, then the market 
is sending you a clear signal: don't buy now. Be patient, and stop blaming 
foreign buyers for your plight - the evidence since BSD was proposed is clear 
that prices have continued to rise because of the expectation of continued low 
interest rates, even when the market is restricted to permanent residents. So 
overseas buyers and non-permanent residents were not causing the problem.</p>
<h3>Lease conditions on land use</h3>
<p>For many decades, the Government has been restricting new leases of land to 
be for purposes chosen by the Government. The Government decided whether a piece 
of land should be a hotel, or an office/retail block, or residential. In 
essence, they were playing FarmVille with the land supply. It was a case of 
&quot;Government leads, market builds&quot;. More recently, the Government has even been 
specifying the apartment size and minimum number of apartments that must be 
built on private residential sites.</p>
<p>This central planning does not optimise land usage according to the needs of 
the economy, and it also results in years of delay and negotiations over land 
premiums when an owner wishes to change the land use from one purpose to 
another, such as industrial to residential. It also result in hidden subsidies 
to a sector when a piece of land is reserved for one purpose but would have been 
more valuable for another purpose. For example, hotel land has been too cheap, 
lowering the cost of hotel rooms and attracting low-end tourism. Finally, there 
has been an inconsistent approach to plot ratios for different uses - for 
example, a hotel or office can have 12 times, when a residential project on the 
same site would only be allowed 8 times if it only abuts one street.</p>
<p>Going forward, we will return to a more liberal approach. Land needed for 
Government programmes (including public schools, public hospitals, public rental 
housing and other community facilities) will remain in Government hands, but for 
other uses, we will adopt an &quot;unrestricted use&quot; approach in which the highest 
bidder wins and decides what to build, subject to the plot ratio limit on the 
land. If in future, an alternative use becomes more economically desirable, then 
whoever owns that leasehold will be free to quickly redevelop it without payment 
of premium. This will be a &quot;Government supplies, market decides&quot; approach. You 
will probably find that developers still tend to cluster their usage, with 
clusters of retail or offices, for example, because they create economic 
synergies, but our approach will allow a more organic evolution of the city 
rather than a rigidly-planned one. If a neighbourhood is crying out for a 
supermarket or a clinic, then one will likely be built to satisfy demand.</p>
<h3>New land leases</h3>
<p>We will continue to increase private sector land supply to offset demand.</p>
<p>Even private sector homes in HK are in fact leasehold interests in Government 
Land. We will <a href="leases2.asp" target="_blank">reform the land revenue system</a> to reduce the capital cost of 
ownership, by raising the amount of ground rent on new land leases from 3% of 
rateable value to 30% of rateable value. Accordingly land premiums will drop, 
and so will the capital cost of ownership, in exchange for the obligation to pay 
higher ground rents. This will gradually build up a recurrent revenue stream to 
fund our future obligations. The ground rent will fluctuate with rateable value, 
as it does now.</p>
<p>Developers and estate agents will be required to make clear in advertising 
whether the land leases are on old terms with 3% ground rent, to be known as 
&quot;GR3&quot; or the new &quot;GR30&quot; lease, for 30% Ground Rent, or on a fixed ground rent 
(&quot;GRF&quot;), as very old leases are.</p>
<h3>Leases without a right of renewal</h3>
<p>
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Basic Law Article 123</a> states that where leases of land without a right of 
renewal expire after 30-Jun-1997, the HKSAR may formulate its own laws and 
policies.</p>
<p>Our new policy will be to offer leases with ground rents at 30% of rateable 
value (variable). However, to avoid shocking the market, for the few leases without a right of renewal which 
expire in each of the next 9 years, we will phase in the new policy by offering 
new leases with ground rents incremented at the rate of 
3% per year until they reach 30%. So for example, a lease which expires in 
fiscal 2013-2014 will be offered a lease with a ground rent at 6% of rateable 
value per year, while one which expires after 31st March 2021 will be offered a 
new lease with a ground rent at 30% of rateable value per year. To provide 
certainty and improve confidence, new leases will be for 999 years (which was 
the policy up until about 1900) rather than the current 50 years.</p>
<h3>Longer leases in exchange for commitment to pay higher rent after 2047</h3>
<p>The rule of law protects all existing leases, but many leases 
(including most in the New Territories granted before 1-Jul-1997) expire on 
30-Jun-2047, just over 34 years from now. See
<a href="leases1.asp" target="_blank">the Webb-site article for a 
definitive history of HK land leases</a>. We are prepared now to offer certainty 
by locking in a new lease for 999 years, subject to ground rent of 30% of 
rateable value commencing on 1-Jul-2047. That way, as long as the rule of law 
is respected after 2047, you know what the deal will be regardless of future 
changes in Government policy. Leasehold owners will be free to decide whether to 
take up this option, but they should know that a future government might 
withdraw or change the policy. For those who own shares in a land lease, such as 
apartments, we will legislate to allow the existing lease to be exchanged for 
the new lease if at least 80% of the owners agree.</p>
<p>The Government will retain powers of compulsory 
purchase, subject to fair compensation, where land is needed for public purposes 
such as railways or roads. However, now that there is a law in place (the
<a href="http://www.hklii.hk/eng/hk/legis/ord/545/" target="_blank">Land 
(Compulsory Sale for Redevelopment) Ordinance</a>) to provide for auctions of 
multi-owner buildings upon reaching certain thresholds, there is a free market 
mechanism for determining when it is economically sensible to redevelop. 
Accordingly, the Government no longer needs to intervene, and the 
<a href="../dbpub/orgdata.asp?p=16864" target="_blank">Urban Renewal 
Authority</a>, which has outright compulsory purchase powers and pays more than 
the fair value of old apartments, will be shut down.</p>
<h3>HKMC</h3>
<p>The <a href="../dbpub/orgdata.asp?p=13499" target="_blank">Hong Kong Mortgage Corporation</a> is engaging in mission-creep on the back 
of an implicit government support. The latest example is a 
<a href="http://www.hkmc.com.hk/eng/pcrm/ourbusiness/mf.html" target="_blank">Microfinance 
Scheme</a> of personal 
loans. This is not Bangladesh. We have a functioning personal loan sector, and 
we have a government-run student loan scheme. The 
HKMC also represents an intervention in the free market for mortgage insurance. 
We will either fully float the HKMC in an IPO, or we will put it into &quot;run-off 
mode&quot; in which it stops conducting new business and closes down after 
its remaining obligations expire, whichever creates the best value for 
taxpayers. We should not wait until it becomes our own Fannie Mae or Freddie Mac 
and we have to bail it out.</p>
<h3>Other privatisation</h3>
<p>The Government should not be intervening in export credit insurance either. 
We will either fully dispose of the 
<a href="../dbpub/orgdata.asp?p=16652" target="_blank">Hong Kong Export Credit Insurance 
Corporation</a> in an IPO, or close it down and release its capital after its 
obligations expire, whichever realises the best value for taxpayers. We will 
also sell off the Cyberport, including the shopping mall, hotel and offices, as 
either a REIT or in a public auction.</p>
<h3>SME funding</h3>
<p>We will put an end to the corporate welfare system. The social safety net is for people, not businesses. 
We must allow the ecology of capitalism to function through survival of the 
fittest businesses using capital obtained at market rates, not subsidised by 
taxpayers. This will make our economy stronger allowing the continuous renewal 
of the economy by reallocation of resources, including labour and capital, from 
failing businesses to viable ones.</p>
<p>So we will shut down all
<a href="http://www.smefund.tid.gov.hk/" target="_blank">SME Funding Schemes</a>. 
We will immediately stop granting new loans and guarantees. The schemes will end 
when outstanding loans and guarantees expire. This will save taxpayers billions 
on future loan defaults under the
<a href="http://www.smefund.tid.gov.hk/english/sgs/sgs_objective.html" target="_blank">
SME Loan Guarantee Scheme</a>. The previous administration 
<a href="http://www.budget.gov.hk/2012/eng/budget06.html">introduced</a> a scheme, with a $100bn quantum, which 
it estimated will cost taxpayers HK$11bn in future defaults (net of guarantee 
fees). Propping up businesses whose owners are either unwilling or unable to 
find their own capital, and then lose ours, is not the way to foster a vibrant 
economy.</p>
<p>Last year, the Government poured HK$1bn of public money into a &quot;<a href="http://www.bud.hkpc.org" target="_blank">Dedicated 
Fund on Branding, Upgrading and Domestic Sales</a>&quot;, via the Hong Kong 
Productivity Council, with up to $0.5m per enterprise. This is nothing but a 
distortive subsidy. Businesses should use their own funds for branding, 
upgrading and sales to the &quot;domestic&quot; mainland. We will terminate the scheme.</p>
<h3>Financial services regulation</h3>
<p>We will embark on a project to unify the regulation of financial services 
into a single Financial Services Commission (<strong>FSC</strong>), combining 
the service-regulation functions of the SFC, HKMA, Insurance Authority and MPFA. 
Anyone who deals with clients will then have a single licensor applying 
consistent standards. Meanwhile, the regulation of capital adequacy in banks, 
insurers, exchanges and brokers (stocks and futures) will be housed under a new 
Capital Adequacy Commission (<strong>CAC</strong>) tasked with ensuring 
financial stability. The HKMA will continue to manage the currency board (peg), 
oversee the interbank payments systems and manage the Exchange Fund.</p>
<p>Listing regulation is misplaced as a business of a for-profit listed company 
itself, Hong Kong Exchanges and Clearing Ltd. We will move the regulation of 
listed companies back to the SFC, which already regulates takeovers, and rename 
the combined entity the &quot;Listings and Takeovers Authority&quot;. Both the Listing 
Rules and the Takeovers Code will be given statutory backing, initially with 
civil penalties.</p>
<p>When this transfer is complete, we will repeal the statutory monopoly of the 
Stock Exchange of Hong Kong Limited, allowing
<a href="darkspread.asp" target="_blank">competing exchanges</a> to 
lower transaction costs and improve services for customers, on a level playing 
field, without requiring them to pay fees to HKEx. To avoid market 
fragmentation, a consolidated quotation and reporting system will be overseen by 
the SFC, with each exchange required to report quotes and transactions to a 
consolidated data feed to ensure that brokers achieve best execution for their 
clients.</p>
<p>We will also review any obstacles that are preventing development of an 
exchange-traded retail bond market. Banks will be required to obtain &quot;best 
execution&quot; on bonds as they already do on shares, to avoid them distributing 
bonds but then holding clients hostage to a
<a href="https://www.cmu.org.hk/" target="_blank">wide quote</a>. Banks will 
then have to compete fairly for deposits against the alternative of buying 
corporate and governmental bonds.</p>
<p>I will now turn to three of our most important obligations as a government: 
education, healthcare and welfare.</p>
<h3>Education</h3>
<p>There are too many rigidities in our education system and it is producing 
sub-optimal results. We need every student to maximise her potential. The 
previous administration introduced vouchers for kindergartens, but the terms 
were overly restrictive. We will extend the voucher system to all levels of 
schooling, remove the restriction on what schools can charge, and remove the 
not-for-profit requirement. Each student will receive a voucher equivalent to 
what the Government would spend on a public sector school, and will be free to 
spend it either in a public sector school or a private school, and private 
sector schools will be free to charge top-up fees.</p>
<p>The English Schools Foundation subsidy will be terminated, as it will also 
qualify for the voucher, as will other private schools.</p>
<p>We will conduct a study to review the amount of this voucher to determine 
whether we are currently spending enough on public sector education per child. 
We will provide additional vouchers for those diagnosed with special educational 
needs, including those with learning difficulties, to ensure that schools do not 
turn away the more expensive customers and serve them properly.</p>
<p>All schools will be given the freedom to choose what language(s) of 
instructions they wish to offer, and will also be free to set their own 
admission policies. The market will then discover how much demand there is for 
Cantonese, English, Mandarin, bilingual or trilingual instruction, and it will 
change according to market demand rather than central planning. Parents will 
need to judge what kind of teaching will best benefit their child, depending on 
his or her learning abilities. Schools will need to compete to attract students 
with vouchers; this will include assessing their teachers to ensure that they 
are able to provide good service, and removing or retraining those teachers who 
are not performing.</p>
<h3>Healthcare</h3>
<p>A comprehensive public healthcare system is an essential service, but we must 
take steps to make it more sustainable. Those who cannot afford to pay, having 
been means-tested for CSSA, will continue to receive healthcare absolutely free. 
However, those who can pay should pay more than the $100 per night and token 
charges for outpatient services. 
<a href="health1.asp" target="_blank">We will adjust charges</a> so that each person 
co-pays 50% of the first $10,000 of costs per year, and 25% of the next $20,000 
per year. For costs beyond that level, usually involving chronic disease or 
major operations, there will be no charge, so the maximum will be $10,000 in 
co-payments per person per year. This will incentivise healthy living and reduce 
abuse of emergency wards as clinics. We will make any such charges tax-deductible, 
directly connecting the Hospital Authority to the Inland Revenue Department for 
verification purposes.</p>
<p>If you are spending money on private healthcare then you are also saving us 
money on treating you. To encourage this self-reliance, we will make medical insurance premiums 
tax-deductible.</p>
<p>We will take steps to remove anti-competitive practices from the healthcare 
industry and dismantle cartels, including admission of suitably qualified 
professionals from appropriate overseas jurisdictions without requiring them to 
re-qualify.</p>
<h3>Welfare</h3>
<p>A compassionate and caring society is a stable society. If we focus our 
efforts on genuine need rather than scatter-gun subsidies, then within our 
budgetary constraints, we can and must do more for the poor. We will conduct a 
comprehensive review of CSSA. The &quot;bad child&quot; letter will be abolished - 
children will not need to confirm that they are not supporting their parents. 
Applicants will of course still be liable for defrauding the public purse if 
they do not disclose all sources of income and assets.</p>
<p>We will stop ignoring homes in the computation of assets for some means 
tests. We fundamentally should not be handing out money to people who have 
millions of dollars in property when there are those without property or other 
assets who struggle to get by. Those who have property can either sell it or get 
a reverse mortgage to generate income while still living in the home. We will 
eliminate duplicated assessment costs for means-tested benefits by introducing a 
single biennial measurement. The data can then be used by all government 
services, including public housing and CSSA.</p>
<p>The welfare outlook is not all gloom though. Due to primitive conditions in 
our post-WWII economy, 75% of people over 65 today did not progress beyond 
primary school, but the retirees of tomorrow will on average be far better 
educated and have had higher earnings and savings capacity during their 
lifetimes. This is why, even as the elderly population grows, the number of 
elderly CSSA cases has actually
<a href="http://www.statistics.gov.hk/pub/B71209FB2012XXXXB0100.pdf" target="_blank">
flat-lined since 2005</a> and the percentage of elderly who need support has 
been declining.</p>
<h3>The Mandatory Provident Fund</h3>
<p>The MPF is now widely recognised for having failed in its mission. It forces 
those who would have saved anyway to put part of their savings into high-cost 
funds, while providing little for those who do not earn enough to save and will 
still need social security. Upon retirement, it gives participants a lump sum 
which they could blow in one night at Happy Valley. It has enriched fund 
management companies and administrators, and thousands of people in HK do 
nothing but administer the MPF schemes of everyone else. This is not a 
productive use of resources.</p>
<p>We will abolish the MPF and allow workers to withdraw their funds or leave 
them where they are. Even after MPF contributions cease, employers will continue 
to make provision for Long Service Payment obligations under the Employment 
Ordinance, but those entitlements accrued after MPF abolition will not be offset 
against the accrued MPF fund.</p>
<h3>Liberalising the employment contract</h3>
<p>It is the Government's role to provide social security for those who 
lose their jobs or retire and in either case do not have the means to support 
themselves. Overall, the less we interfere in the private contract between a 
willing employer and employee, the higher employment and incomes will be. We 
must avoid the temptation to privatise government obligations by statutory 
impositions on the employment contract, thereby deterring or distorting 
employment choices.&nbsp; We will undo some of the past damage in this area:</p>
<ul>
	<li>We will review whether the
	<a href="http://www.labour.gov.hk/eng/faq/cap57l_whole.htm" target="_blank">
	Severance and Long-Service Payment</a> system is fulfilling its objectives, 
	or whether in reality it incentivises employers to lay off staff before they 
	reach the 5-year entitlement date for LSP. There may be a case for 
	terminating the LSP scheme for new contracts and instead allowing people to 
	receive their full economic value as they work rather than having part of it 
	deferred until they retire or are terminated.</li>
	<li>Instead of requiring employers to pay for
	<a href="http://www.labour.gov.hk/eng/faq/cap57h_whole.htm" target="_blank">
	maternity leave</a>, the Government will pay for it instead, which will 
	deter employers from quietly choosing male over female candidates of equal 
	ability. This will also encourage female employees to produce babies without 
	fear of causing costs to be incurred by their employer. This should boost 
	the birth rate.</li>
	<li>We will also abolish the prescribed
	<a href="http://www.labour.gov.hk/eng/faq/cap57i_whole.htm" target="_blank">
	annual leave entitlements</a> which rise based on the length of employment, 
	and instead prescribe a minimum of 7 days. Those who have already accrued 
	higher entitlements (up to 14 days after 9 years employment) can keep them, 
	but for new employment contracts, additional leave should be a matter of 
	free negotiation. Currently, taking into account about 16 General Holidays 
	which fall on weekdays, those who have worked for 9 years with a 5-day week 
	are about 2.9% (about 7/245) less productive than someone of the same 
	ability who is a new hire. Again, when low-skilled workers are on the same 
	wage, this incentivises employers to terminate those who have worked longer.</li>
</ul>
<h3>Concluding remarks</h3>
<p>Mr President, if we return to the free-market principles upon which Hong Kong 
rose to success against the backdrop of a centrally-planned China after 1949, 
and if we withdraw from the increasingly interventionist measures of previous 
administrations, then the people of Hong Kong can look forward to a brighter, 
more dynamic future, with more choice over their lives and more opportunity. 
This is a budget for prosperity through reform, and I commend this budget to the 
house.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
				<li><a href="/dbpub/subject.asp?c=19">Education</a></li>
				
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=180">Road transport</a></li>
				
				<li><a href="/dbpub/subject.asp?c=24">Social welfare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=190">Statutory backing of Listing Rules</a></li>
				
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