
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

<script type="text/javascript">document.title="Hong Kong's electricity tax";</script>

	<div class="summary">The Government and the power companies are playing politics with the tariff, tilting it to tax larger residential consumers in order to subsidize the tariff for smaller ones. We call for a single flat-rate residential tariff and for it to be brought into line with the commercial tariff. Why should people be penalised for living together rather than on separate meters, or for spending more time at home, and why should they pay more than commercial users for the same amount of electricity?</div>

<h2 class="center">Hong Kong's electricity tax<br>
<span class="headlinedate">4 January 2012</span></h2>
<p>In all the noise surrounding the recent announcement of the 2012 tariffs by 
HK's two electricity monopolies, there is a socialist signal. In order to 
achieve lower (or even zero) rates of increase for low residential consumers, 
the power companies, under political pressure, have jacked up the rates they charge to 
higher residential consumers by a much larger percentage. This &quot;tariff tilting&quot;, 
which has been going on for some years, 
amounts to a tax on larger residential consumers to subsidize the cost of 
electricity for smaller residential consumers and businesses. It's socialism 
with Hong Kong characteristics. Unlike almost 
anything else you can buy, the more electricity you buy, the more expensive it 
gets.</p>
<p>Under the Scheme 
of Control Agreement with the Government, each of the power companies is allowed to make a capped rate of return (9.99% 
after tax) on its average net fixed 
assets. Put simply, if anyone pays more than the average tariff, then someone 
else is paying less than the average in order to reach the same revenue for a 
given amount of electricity which then produces the target profit.</p>
<h3>CLP</h3>
<p>Here's the 
comparison of CLP's old and
<a href="http://www.clponline.com.hk/Documents/Common/En/2012%20Tariff%20banner%20E.pdf" target="_blank">new tariff</a> (all-in, including the so-called fuel 
clause charge):</p>
<table class="numtable center">
	<tr>
		<td class="left">Band of<br>units <u>bimonthly</u></td>
		<td class="left">Band of<br>units <u>monthly</u></td>
		<td>2011<br>$/unit</td>
		<td>2012<br>$/unit</td>
		<td><strong>Band<br>increase</strong></td>
	</tr>
	<tr>
		<td class="left">0-400</td>
		<td class="left">0-200</td>
		<td>0.923</td>
		<td>0.923</td>
		<td><strong>0.0%</strong></td>
	</tr>
	<tr>
		<td class="left">401-1000</td>
		<td class="left">201-500</td>
		<td>0.989</td>
		<td>1.038</td>
		<td><strong>5.0%</strong></td>
	</tr>
	<tr>
		<td class="left">1001-1800</td>
		<td class="left">501-900</td>
		<td>1.049</td>
		<td>1.179</td>
		<td><strong>12.4%</strong></td>
	</tr>
	<tr>
		<td class="left">1801-2600 (new)</td>
		<td class="left">901-1300</td>
		<td>1.049</td>
		<td>1.355</td>
		<td><strong>20.1%</strong></td>
	</tr>
	<tr>
		<td class="left">2601+</td>
		<td class="left">1301+</td>
		<td>1.128</td>
		<td>1.440</td>
		<td><strong>27.7%</strong></td>
	</tr>
</table>
<p>As the table shows, consumers of more than 1300 units per month are now 
paying 27.7% more than last year for each additional unit. The units above 1,300 
cost 56.0% more than the cheapest units, compared with only a 22.2% premium last 
year. This is what we mean by &quot;tilting the tariff&quot;. Note that the above table includes the benefit of the 3.3 cents &quot;Rent and 
Rates Special Rebate&quot; which will be of limited duration and is subject to 
resolution of the court case, as we explain in our <a href="CLPsmallprint.asp">
separate article</a>. Without that rebate, you can add 3.5% to the increase in each band. Also 
note that CLP charges bimonthly, so we have halved the bimonthly bands to show the 
average monthly bands.</p>
<p>CLP has abandoned plans to flatten out its commercial or &quot;General Service&quot; tariff, which 
offers a slight discount to larger users, &quot;until a wider public acceptance is 
reached&quot;. The all-in price (net of the rebate) will be 
$1.079 per unit on the first 5,000 units and $1.070 after that. That's a 5.0% 
increase in both cases. We note that on the other side of the fragrant harbour, 
HKE already charges commercial users a higher price for units consumed above 1,500 units/month, 
not a discount. So apparently this &quot;public acceptance&quot; depends on where your business is 
based. Overall, across all users (including bulk users - see below), CLP's average 
tariff for 2012 (net of rebate) is $0.987/unit, up 4.9% from 2011. So users on the General 
Service tariff are also paying more than the average tariff.</p>
<p>In 2012, the CLP residential tariff breaks even with the all-user tariff at 
451 units per month (902 bimonthly), when the bill is $445.14. It breaks even with the 
General Service tariff at 913 units per month, when the bill is $985.22. <strong>If you consume more than that in any month, you will 
be paying more than a shop, office or hotel per unit, while subsidising those 
residential users 
who pay less</strong>. Incremental consumption above 1300 units 
per month costs 
you 33.5% more than the commercial tariff and a 
whopping 45.9% more than the all-user tariff. The expansion of the electricity 
tax is visible in the slope of the green curve below:</p>
<img class="center" alt="" src="../images/CLPtariff.png">
<p></p>
<h3>HKE</h3>
<p>The Hongkong Electric Co., Ltd (<strong>HKE</strong>) already had a steep 
residential price curve before this year, so there was less potential to tilt it 
further, but they still steepened it a bit, and like CLP, they inserted a new 
upper tariff band. The
<a href="http://www.hkelectric.com/web/DomesticServices/BillingPaymentAndElectricityTariff/TariffTable/Index_en.htm" target="_blank">
residential tariff</a> changed as follows:</p>
<table class="numtable center">
	<tr>
		<td class="left">Band of units <u>monthly</u></td>
		<td>2011<br>$/unit</td>
		<td>2012<br>$/unit</td>
		<td><strong>Band<br>increase</strong></td>
	</tr>
	<tr>
		<td class="left">0-150</td>
		<td>0.909</td>
		<td>0.933</td>
		<td><strong>2.6%</strong></td>
	</tr>
	<tr>
		<td class="left">151-300</td>
		<td>1.012</td>
		<td>1.048</td>
		<td><strong>3.6%</strong></td>
	</tr>
	<tr>
		<td class="left">301-500</td>
		<td>1.112</td>
		<td>1.163</td>
		<td><strong>4.6%</strong></td>
	</tr>
	<tr>
		<td class="left">501-700</td>
		<td>1.353</td>
		<td>1.428</td>
		<td><strong>5.5%</strong></td>
	</tr>
	<tr>
		<td class="left">701-1000</td>
		<td>1.448</td>
		<td>1.543</td>
		<td><strong>6.6%</strong></td>
	</tr>
	<tr>
		<td class="left">1000-1500 (new)</td>
		<td>1.546</td>
		<td>1.658</td>
		<td><strong>7.2%</strong></td>
	</tr>
	<tr>
		<td class="left">1501+</td>
		<td>1.546</td>
		<td>1.683</td>
		<td><strong>8.9%</strong></td>
	</tr>
</table>
<p>So residential users of more than 1,500 units now pay 8.9% more for the 
additional units than last year. The additional units cost a whopping 80.4% more than the 
cheapest units, compared with a 70.1% premium in 2011, making HKE's electricity 
tax even higher than CLP's.</p>
<p>HKE's average all-user tariff rose by 6.3% from $1.233 to $1.311, while the
<a href="http://www.hkelectric.com/web/CommercialAndIndustrialServices/BillingPaymentAndElectricityTariff/TariffTable/Index_en.htm" target="_blank">
commercial tariff</a> now has 3 bands: $1.316 for the first 1,500 units, a new 
band of $1.421 for the next 18,500 units, and $1.446 above that. These represent 
band increases of 6.0%, 6.4% and 8.2% respectively. The residential tariff breaks even with the all-user tariff at 1,094 
units, when the bill is $1,434.10. It breaks even with the Commercial 
Tariff at 1,110 units, when the bill is $1,460.63. Here are the 2011 and 
2012 price curves:</p>
<img class="center" alt="HKE tariff" src="../images/HKEtariff.png">
<h3>Bulk discounts</h3>
<p>Both companies offer discounts to large users who are willing to pay a 
capacity charge based on their maximum power demand (in kilovolt-amperes). CLP 
has a &quot;Bulk Tariff&quot; and 
is available to customers whose present or expected consumption is over 20,000 
units per month. For even larger customers (railways and steel smelters spring to 
mind) there is a &quot;Large Power Tariff&quot;. Presumably these tariffs work out 
materially cheaper for customers who choose them. HKE's tariff, or what it calls the
<a href="http://www.hkelectric.com/web/CommercialAndIndustrialServices/BillingPaymentAndElectricityTariff/TariffTable/MaximumTable_en.htm" target="_blank">
Maximum Demand Tariff</a>, offers savings for customers with at least 100 kVA of 
maximum power demand.</p>
<p>There is of course some sense in the lower tariffs for large users - if you 
have a factory, or run a train system like the MTR, then the power company has 
economies of scale because it can deliver electricity to your gate and then you 
handle your internal distribution, and only one bill is collected. But by the same argument, larger residential 
users should actually be getting a slight discount rather than paying extra, because 
the costs of metering, billing and collecting payment on such households is 
spread over more units of energy. The same logic lies behind CLP's commercial 
tariff. You will also find it in the
residential
<a href="https://www.towngas.com/Eng/Cust/Household/CustService/Tariff.aspx" target="_blank">tariff</a> of The <a href="../dbpub/orgdata.asp?p=416">Hong Kong and China Gas Co Ltd</a> (0003, also known as Towngas), where 
the price declines as the user's consumption increases. Towngas is not subject 
to any scheme of control, and gas is arguably less essential than electricity - 
you can cook and heat your water with electricity, but you can't run your lights 
or a TV with gas.</p>
<p>The steepening electricity tariff will make Towngas more attractive for 
cooking, water heating and clothes drying. Currently, the first 500 megajoules 
of Towngas energy are 
charged at 21.9 cents plus a fuel cost adjustment of 5.8 cents per MJ. One unit 
of electricity, a kilowatt-hour, is 3.6 MJ (a Joule is one Watt for one second), 
so the gas equivalent costs $0.9972. That makes gas energy cheaper after you 
have consumed your first 150 units of electricity in HKE's territory or 200 
units in CLP's, although in the case of water heating, the energy efficiency of 
gas versus electric heaters also comes into play, as energy is lost in hot exhaust 
gases, so less is converted into hot water - an energy factor of around 0.7 
compared with 0.9 for electric, so multiply that cost by about 1.3. Still, with 
HKE charging up to $1.683 per unit and CLP at $1.440, it may now be cheaper to burn 
gas than to pay the electricity companies to do it for you.</p>
<h3>The socialist tariff</h3>
<p>Regardless of the scheme of control, we see no reason why larger households 
(with more people and consumption) should be charged at higher rates than small 
ones, or why larger households should cross-subsidise commercial users which pay a lower tariff 
for the same amount of consumption. If this is about incentivising energy 
conservation, it is wrong to assume that households with higher consumption are 
less energy efficient - they may simply have more people in them, or they may 
spend more time at home (particularly if they are retired, looking after 
children, working from home or telecommuting). Why penalise 
them for living together rather than in separate homes on separate electricity 
meters? Why penalise them for spending more time at home than other people? The main incentive to save energy is 
already there in the basic cost of electricity.</p>
<p>This <em>de facto </em>electricity tax, which has 
become steeper in the new tariffs, is devised purely for political rather than 
economic reasons, in order to be able to show lower rates of increase (zero in 
CLP's case) for 
smaller consumers who tend to be correlated with smaller homes and lower 
incomes. By leaning on the electricity companies to do this, the Government is 
privatising social obligations. <strong>We call on the Government and the power 
companies to flatten the tariff for residential users to a single price per unit 
and bring it into line with the commercial tariff.</strong></p>
<p>Apart from the steeply ramped residential tariff, the power 
companies also provide
discounts for certain types of welfare recipients who are on&nbsp; 
Comprehensive Social Security Assistance (CSSA). HKE
<a href="http://www.hkelectric.com/web/DomesticServices/ConcessionaryTariffAndOtherSpecialServices/ConcessionaryTariffSchemes/Index_en" target="_blank">offers</a> a 60% discount on the first 200 units for the elderly (over 60), the 
disabled, single-parent families and the unemployed, while CLP 
<a href="https://www.clponline.com.hk/MyHome/CustomerService/TariffOverview/Domestic/Pages/Default.aspx?lang=en" target="_blank">provides</a> a 
50% 
discount on the first 200 units to elderly (over 60) CSSA 
recipients. All of these come at the expense of higher tariffs for other users 
so that the power companies can achieve their permitted return. <strong>It would be far 
better for the Government to increase CSSA payments so that recipients can 
afford electricity and require the power companies to charge all residential 
users the same flat tariff. </strong> </p>
<p>In a Legislative Council
<a href="http://www.info.gov.hk/gia/general/201112/21/P201112210222.htm" target="_blank">
answer</a> on 21-Dec-2011, the Government said that &quot;this [tariff-tilting] arrangement will help 
promote energy conservation&quot; - but in fact, what it does is to make electricity 
cheaper in real terms for the majority of households which are small, so if 
anything, it has the opposite effect. It is unlikely that reduced consumption by the 
minority in large households is enough to offset this.</p>
<p>Furthermore, not all small households are poor - some are bachelor bankers living in 
pricey little flats in mid-levels, or people with a pied-�-terre or a rural 
weekend home. So dishing out a subsidy in this way, taxing large consumers to 
subsidize small ones, is a 
scattergun approach to welfare, much of which misses its target. If people need 
help paying their electricity bills, that is what the social welfare system 
(including CSSA payments) is for. The Government should not shirk its 
responsibilities by trying to privatize social obligations, nor should it play 
politics with the tariff.</p>
<h3>HKE v CLP</h3>
<p>You may have noticed that HKE's 2012 average all-user tariff is 32.8% more than CLP's. Part of this 
may be due to the difference in energy sources: CLP has nuclear power from Daya 
Bay, while HKE does not. It may also be due to differences in the amount of 
fixed asset investment per unit of energy produced, such as the amount they 
spend on shiny headquarters and substations. Under the Scheme of 
Control agreed with the Government, the power companies 
are allowed to make a 9.99% rate of return on net fixed assets, known as the 
&quot;permitted return&quot;, after tax but before interest on borrowed capital. The 
permitted return for CLP in 2010 was $8.568bn, or about <strong>28.5% of revenue</strong> of 
$30.016bn, while the permitted return for HKE was $4.752bn, or <strong>36.0% of revenue</strong> 
of $13.194bn. Nice work if you can get it.</p>
<p>Note that we said <u>after</u> tax: to make such a 
profit before tax (at a tax rate of 16.5%) you would need to make not 9.99% but 
11.96% return on fixed assets.</p>
<p>We don't like the SoC - the fixed rate of return on investment bears no 
relation to the variable long-term cost of capital reflected by the corporate 
bond and equity markets, and by linking profits to fixed assets, the SoC 
incentivises companies to overinvest. It is undoubtedly true that overinvestment 
produces higher reliability of supply up to a point, but it does so with 
diminishing returns as we squeeze the last decimal points out of reliability. 
According to CLP's annual report, its average unplanned Customer Minutes Lost 
(CML) per year was 2.6 minutes in 2008-10, compared with 14 to 42 minutes in New 
York, Sydney and London. How much are you willing to pay for the difference? And 
how many <u>planned</u> minutes (or hours) of downtime for 
preventative maintenance is needed to achieve this reliability?</p>
<p>That said, the Government
<a href="http://www.info.gov.hk/gia/general/200801/07/P200801070187.htm" target="_blank">
agreed</a> to the current Scheme of Control, and shareholders of CLP and HKE 
(probably including your MPF fund if you have one) expect the companies to 
maximise their profits within the SoC. Indeed, it would be a breach of fiduciary 
duties for the directors to deliberately lower the tariff to make less than the 
allowed profit, unless they believed that this would be a net benefit to 
shareholders in the long run. We should note that the Government itself 
<a href="interven2.asp">owns 
2-3%</a> of <a href="../dbpub/orgdata.asp?p=341">CLP Holdings Ltd</a> (0002) and of
<a href="../dbpub/orgdata.asp?p=388">Power Assets Holdings Ltd</a> (0006, the owner 
of HKE) through the quasi-sovereign wealth fund known as the Exchange Fund (as well as smaller holdings via other 
Government funds), so it has a conflict of interests in this matter, and has 
done since it intervened in the stock market in 1998.</p>
<h3>The cream</h3>
<p>We couldn't conclude this article without mentioning that apart from the Scheme of Control profits, the power companies and their 
owners have also made 
large profits on the redevelopment of vacated sites over the years as HK's 
urban landscape has expanded into what used to be industrial areas. For each 
project, a land premium to Government to convert the land lease into residential 
use or expand its plot ratio, but that still left room for ample profit. Smaller 
sites of disused substations have also been developed.</p>
<p>HKE's old North Point power station became
<a href="http://maps.google.com/maps?hl=en&amp;ll=22.290948,114.194325&amp;spn=0.005063,0.004919&amp;sll=22.396428,114.109497&amp;sspn=1.692448,0.815735&amp;vpsrc=6&amp;t=h&amp;z=18" target="_blank">
City Gardens</a> after it was closed in 1978, and the power station intended to 
replace it on Ap Lei Chau, 
opened in 1968, stood 
for only about 20 years. In 1978, HKE was granted a new site on Lamma Island 
which came online in 1982, and 
then in the late 1980s and early 1990s the Ap Lei Chau site became the enormous 34-tower
<a href="http://maps.google.com/maps?hl=en&amp;ll=22.243573,114.148142&amp;spn=0.010645,0.010375&amp;sll=22.396428,114.109497&amp;sspn=1.394099,0.797882&amp;vpsrc=6&amp;t=h&amp;z=17" target="_blank">South 
Horizons development</a>, in a joint venture with its immediate controlling 
shareholder <a href="../dbpub/articles.asp?p=366">Hutchison Whampoa Ltd</a> (<strong>HWL</strong>, 
0013) and its controlling shareholder <a href="../dbpub/articles.asp?p=488">Cheung Kong 
(Holdings) Ltd</a> (<strong>CKH</strong>, 0001). HKE only got 20% of the upside 
on South Horizons, 
as the joint venture, <a href="../dbpub/orgdata.asp?p=3842">Secan Ltd</a>, was 
20% owned by HKE, 50% by HWL and 30% by CKH and funded pro rata. Meanwhile CLP developed its old Hok Un power plant site into 
<a href="http://maps.google.com/maps?hl=en&amp;ll=22.307778,114.192892&amp;spn=0.007752,0.010053&amp;sll=22.243573,114.148142&amp;sspn=0.010606,0.010375&amp;vpsrc=6&amp;t=h&amp;z=17" target="_blank">Laguna 
Verde</a>, a 4m sq ft residential development in a 50:50 joint venture with CKH 
in the late 1990s and early 2000s.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=341">CLP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51542">HONGKONG ELECTRIC COMPANY, LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=388">Power Assets Holdings Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=18">Electricity</a></li>
				
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