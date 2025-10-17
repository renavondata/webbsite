
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

<script type="text/javascript">document.title="Traffic Truths";</script>

	<div class="summary">The Government's budget proposal on private car First Registration Tax is based on a false premise, and will not achieve its stated objective of congestion reduction. Our research shows that despite higher ownership, private cars occupy less of the roadspace than they did in 2000. We call for a fundamental review of road transport policy and make proposals to achieve a reduction in congestion and road traffic pollution.</div>

<h2 class="center">Traffic Truths<br>
<span class="headlinedate">13 April 2011</span></h2>
<p>In the 2011-12 budget proposals, the Government proposed an
<a href="http://www.budget.gov.hk/2011/eng/pdf/2011supple_appen/e_supplement05.pdf" target="_blank">
increase</a> in First Registration Tax (<strong>FRT</strong>) for private cars. 
Under the heading of
<a href="http://www.budget.gov.hk/2011/eng/budget63.html" target="_blank">Easing 
Traffic Congestion</a>, the Financial Secretary said:</p>
<blockquote>&quot;It is obvious that the continuous growth in the number of 
private cars has adversely affected the traffic conditions on our roads.&quot;</blockquote>
<p>That &quot;obvious&quot; statement was repeated in a
Government
<a href="http://www.info.gov.hk/gia/general/201104/09/P201104090213.htm" target="_blank">
press release</a> on Saturday evening (9-Apr-2011) after a protest 
organised by a political party. Actually, it's not obvious at all. It's not even 
true. What is true is that there have been more licensed private cars in HK each 
year since 2003 (when tax rates were last increased), but that doesn't 
necessarily mean that they are the cause of increased road congestion. That 
depends how much each vehicle is actually used and how much space there is on 
the roads, and as we will show below, the 
average private car does significantly less mileage than it used to, and there 
are, on average, fewer cars on each kilometre of roads than there used to be.</p>
<h3>Distance covered</h3>
<p>How many kilometres do all private cars and other classes of vehicles 
actually cover on our roads? To find those data, we turn to an unlikely source: 
the annual accident statistics published by the Transport Department, which 
include estimates of the distance covered by each class of vehicle in each year. Unfortunately, 
the 2010 accident data are not yet public, so we will have to base our study on 
the 
<a href="http://www.td.gov.hk/filemanager/en/content_4387/09fig3.1e.pdf" target="_blank">period 2000-2009</a>. Keeping in mind that 2003 was the year in which SARS hit 
(reducing economic activity, tourism, and road traffic) as well as the year in 
which FRT was last raised (reducing sales of new cars), so it is hard to 
separate these factors from the results. Here is a summary of the distance 
covered in 
each of 2000, 20003, and 2009:</p>
<img class="center" alt="Vehicle km" src="../images/vehiclekm.gif">
<p>The table shows that after a dip in 2003, <strong>the distance covered by private 
cars was only 50m km or 1.1% higher in 2009 than in 2000</strong>. This is despite the 
fact that the number of licensed private cars, from mid-2000 to mid-2009, increased by 17.7%. A year earlier, in 2008, the distance covered by 
private cars was actually less than it was in 2000. So private cars are not the 
primary cause of an increase in the distance covered by vehicles in HK.</p>
<p>Looking at the other classes of vehicles, you can see that the distance 
covered by taxis has increased substantially, by 287m km or 15.6% from 2000 to 2009. 
<strong>So 
the increase in road traffic from taxis has been more than 5 times the increase 
generated by private cars</strong>. The number of road-licensed taxis has not materially 
changed (up 0.7% in the 9-year period), but they are covering much more 
distance. Meanwhile, there has been a reduction 
in traffic from Medium and Heavy goods vehicles (over 1.9 tonnes). However, most 
of that drop took place in the last 2 years of the study (2008-2009) during the 
global financial crisis when fewer container trucks were shuttling between our 
port and factories in the mainland.</p>
<p>Motor cycles are also covering more ground, up by 75m km or 30.4% in 
9 years. They are more economical on fuel than cars and generally cheaper to park, so 
this might explain the increase in popularity. On-street parking for motor 
cycles is
<a href="http://www.info.gov.hk/gia/general/201102/16/P201102150219.htm" target="_blank">
free of charge</a>. Or maybe we are just all ordering 
more pizza. There were 52.6% more licensed 
motor cycles in mid-2009 than 9 years earlier.</p>
<p>Public buses (including franchised and non-franchised buses) are also up by 
88m km or 11.4% in 9 years, and there were 7.8% more licensed public buses than 
9 years earlier.</p>
<h3>Distance covered by cars per km of road space</h3>
<p>The distance covered by vehicles should also be seen in the context of the 
increase in road space. The Government measures this rather crudely, in terms of 
public road length, which has increased from 1904 km in 2000 to 2050 km in 2009, 
an increase of 7.7%. So in fact, the average number of private cars per 
kilometre of public roads per day has actually dropped by 5.8%, from 6,439 in 
2000 to 6,063 in 2009, as shown in the table below. <strong>We'll say it again: the 
average kilometre of road actually had 5.8% fewer private cars passing over it on 
an average day in 2009 than it did 9 years earlier</strong>.</p>
<img class="center" alt="Private car road usage" src="../images/pcarusage.gif">
<p>The table also shows that private cars in 2009 averaged 32.2 km per day, down 
13.9% from 37.4 km per day in 2000. The Government does not calculate road space 
in terms of kilometre-lanes, but it is worth noting that much of the increase in 
road length in the last decade is expressways and other roads with more than one 
lane in each direction, sometimes 3 lanes in each direction. So the percentage 
increase of road space in terms of lane-kilometres is probably even higher. </p>
<p>To be clear, we are not advocating that the Government continues to build 
roads, just stating the facts about road usage. It is also well-established 
overseas that the more you build, the more they come; the M25 London orbital 
road is a classic example of this. Hong Kong is the
<a href="http://en.wikipedia.org/wiki/List_of_sovereign_states_and_dependent_territories_by_population_density" target="_blank">
4th most densely populated</a> place in the world (after Macau, Monaco and 
Singapore) and each road comes at a high opportunity cost which is never properly 
recovered from road users. Fact: roads occupy 3.8% of HK's land area, while 
public and private residential housing (excluding village houses) occupy 3.7% 
and railways only 0.3%. Village housing is 3.1%. For a full breakdown of land 
usage, see page 480 of the
<a href="http://www.yearbook.gov.hk/2009/en/pdf/Appendices.pdf" target="_blank">
2009 yearbook</a>.</p>
<p>Hong Kong certainly suffers from traffic congestion in certain places at 
certain times of day, 
and targeted measures can reduce it (see below). But the Government's claim that private cars have 
<u>increased</u> road congestion is contradicted by the facts.</p>
<h3>Reasons for reduced car usage</h3>
<p>There are several possible explanations for the reduction in distance 
travelled per private car. It is one thing to buy a car and pay the annual 
licence fee, but these are sunk costs. Once you have a licensed car, the 
economic choice of whether to use it on the roads, rather than just look at it lovingly in 
your private car park space, depends, amongst other things, on the cost of fuel and other 
consumables (such as tyres), which have risen sharply, the availability and cost 
of alternative transport, the time it takes to get anywhere, the level of 
convenience, and the cost of parking.</p>
<p>New lines have opened on the Mass Transit Railway in the last decade, 
and public transport fares have not increased as fast as private car costs. Car 
ownership (as a percentage of the population) is on the rise, but with 
increasing penetration of the population, you get increasingly marginal users - 
people who want the occasional convenience of a car but won't use it much. Finally, 
there is the deterrent effect of existing traffic - if you think it will take 
too long to get somewhere by road, then you try to use other modes of transport.</p>
<h3>Why do we have an FRT?</h3>
<p>There is no logical reason to have FRT at all. The act of buying and owning a 
vehicle does not in itself take up road space or pollute the air. Driving it 
does. We should abolish FRT and instead charge higher duty on fuels to 
incentivise the reduction of vehicle usage, and introduce congestion charges to 
incentivise the avoidance of congested areas. FRT could be replaced with a 
simple flat fee to cover the administrative cost of registering the vehicle.</p>
<p>Even if we keep FRT, the <em>ad valorem</em> &quot;progressive&quot; rates of FRT on private cars are nonsensical. The 
first $150k is taxed at 35%, the next $150k at 65%, the next $200k at 85% and 
everything above that at 100%. It amounts to a luxury tax which 
incentivises people to buy cheaper cars - but a Ferrari takes up just as much 
road space as a Toyota Corolla for any given journey, and if it burns more fuel, 
then it pays more fuel tax, so that's covered.</p>
<p>We don't have a retail tax in HK, and we don't tax other luxury goods, 
such as diamonds, antiques and watches, let alone at progressively higher rates. 
If there is any justification for taxing the registration of vehicles, rather 
than vehicle usage, then it should be a fixed amount per vehicle, not based on 
its value. But we see no justification.</p>
<p>The last time FRT was raised was in the 2003-4 budget. Then, the Government 
was more intellectually honest about its objectives. It was a pure 
revenue-raising measure. Then Financial Secretary Antony Leung Kam-chung
<a href="http://www.budget.gov.hk/2003/eng/budget.htm#Motor%20Vehicles%20First%20Registration%20Tax" target="_blank">
said in his speech</a>:</p>
<blockquote>&quot;we shall make suitable adjustments to the tax bands and tax 
rates for revenue purposes. The adjustment in tax rates will be progressive and 
will have a greater impact on expensive vehicles. Detailed proposals concerning 
the adjustments are set out in the
<a href="http://www.budget.gov.hk/2003/eng/supplement.htm#Motor" target="_blank">
Supplement</a> to this Speech....These new tax measures...will generate $700 
million additional revenue for the Government in a full year.&quot;</blockquote>
<p>You won't find any mention of road congestion. Of course, he later backed 
down somewhat, introducing smaller increases in the tax rates before the budget 
was passed on 25-Jun-2003, but still, the purpose was revenue-raising, as the 
Government
<a href="http://www.info.gov.hk/gia/general/200306/25/0625310.htm" target="_blank">
said then</a>:</p>
<blockquote>&quot;Having reflected upon the views expressed by the motor 
trade and Members at the Bills Committee meeting, the Administration has decided 
to put forward a new proposal which strikes the most appropriate balance between 
the impact on the motor trade and the need to raise revenue from those who can 
afford it to help improve the budget deficit situation.&quot;</blockquote>
<p>Of course, in recent years it has become clear that HK is running a 
structural budget surplus. There is no way that the Government could claim that 
it needs the money, so it claims that the FRT will reduce traffic congestion 
instead. </p>
<h3>Why do licence fees depend on engine size?</h3>
<p>The annual licence fee based on engine size is also misguided. For sure, a car with 
an excessively large engine will generally consume more petrol and generate more 
pollution - but then, it will pay more in fuel duty for each kilometre it 
covers. There is no need to charge a higher licence fee for the engine size. 
What matters is whether you <u>use</u> that engine. The 
licence fee as it stands is really just a hidden luxury tax: cars with larger 
engines tend to cost more, so the Government figures it should charge higher 
fees on an &quot;ability-to-pay&quot; basis, or put simply, &quot;because we can&quot;.</p>
<p>The only real justification for having an annual licence fee at all, rather 
than just recovering road costs from higher fuel duty and road pricing, is that if we 
didn't, then a small number of vehicles with mainland number plates which travel 
across the border regularly, would be able to fill up their tanks in the 
mainland and avoid paying higher fuel duties in HK. But that could be dealt with 
by charging a sufficiently high, but flat, rate of fuel duty on any vehicle that 
returns to HK with more than half a tank of fuel.</p>
<p>We would still need a process for ensuring road worthiness of vehicles and 
that insurance has been purchased, so annual licensing in that sense would still 
be needed, but there is no reason to charge more than its administrative cost.</p>
<p>In 2009-10, FRT raised $4.82bn, up from $3.02bn 9 years earlier, but fuel 
duties raised only $2.84bn, down from $4.02bn 9 years earlier. FRT rates 
increased in 2003-4. Revenue from fuel duties dropped, partly because of the 
shift to LPG taxis and minibuses and partly because of the reductions in diesel 
duty until it reached zero (see below). So the Government seems more concerned 
about whether we own a vehicle than whether we drive it around. The incentives 
are all wrong.</p>
<h3>Taxi myths</h3>
<p>Taxis are often included in sweeping statements by the Government about the 
desirability of public transport, but in reality, when a taxi is covering 
distance with one or more passengers, it takes the same amount of space on the 
road as a private car would, and when it is cruising around looking for a ride, or 
blocking a lane of traffic by queuing at a taxi rank on a public road, then it 
takes up additional road space. You seldom see private cars cruising around with 
no place to go (except chauffeurs trying to avoid the idling engine ban - 
another misguided piece of legislation). So purely with respect to road 
congestion, taxis are a worse form of road transport than private cars.</p>
<p>And guess what: the 
<a href="http://www.td.gov.hk/en/public_services/licences_and_permits/vehicle_first_registration/guidelines_for_importation_and_registration_of_mot/" target="_blank">FRT on a taxi</a> is only 3.7% of its value, compared with a 
minimum of 35% (proposed 40%) for private cars. The annual
<a href="http://www.td.gov.hk/en/public_services/fees_and_charges/index.html#vehicle" target="_blank">
license fee</a> on a taxi is only $3,159, less than the smallest private petrol 
car (with an engine size up to 1500cc) at $3,929. Yet in 2009, the average taxi 
covered 117,511 km of roads (enough to cover the 2050 km of roads in HK 57 
times). That's almost 10 times the distance covered by the average private car 
of only 11,764 km. </p>
<p>Not only that, but consider the following: if a private car averages about 12 
km per litre, then it consumes about 980 litres per year, paying
<a href="http://www.customs.gov.hk/en/trade_facilitation/dutiable/types/index.html#hydrocarbon_oil" target="_blank">
fuel duty</a> at $6.06 per litre of unleaded petrol for a cost of $5,939 in fuel duty alone. And 
how much fuel duty does a taxi pay? Zero. It uses Liquefied Petroleum Gas, or 
LPG. That hidden subsidy is the real reason why the Government will not allow 
LPG-powered private cars to be sold in HK (or the conversion of existing cars). The lower cost of fuel also incentivises 
taxis to go cruising the streets for fares, increasing traffic congestion.</p>
<h3>Tax-free diesel</h3>
<p>As a subsidy to the transport industry, the duty on Euro-V diesel (the only 
type
<a href="http://www.shell.com.hk/home/content/hkg-en/aboutshell/media_centre/news_and_media_releases/2011/price_adjust_petrol_diesel_20110409.html" target="_blank">
sold</a> at filling stations) is also set at zero. Although it is called 
&quot;Euro-V&quot;, it can actually be used in all diesel vehicles. So next time you inhale some diesel 
particulates and an extra burst of smog-forming nitrous oxides, remember, they 
are tax-free. As Donald Tsang (then Financial Secretary, now Chief Executive) 
said in his final
<a href="http://www.budget.gov.hk/2001/english/efile.htm#%22Green%22%20Taxes" target="_blank">budget speech</a> of 7-Mar-01:</p>
<blockquote>
	<p>&quot;why do we continue to exempt franchised buses from duty on diesel and 
	indirectly undermine the competitiveness of railways which are more 
	environmentally friendly?...we must as a community understand that if our 
	environmental sores are left to fester, inaction will, over time, result in 
	far worse pain and far greater costs than will an early cure. Most of the 
	world seems to have woken up to that fact. When will Hong Kong?&quot;</p>
</blockquote>
<p>We can see no good reason for taxing diesel at less than the rate of tax on 
petrol, and it should be charged to all diesel vehicles. It doesn't matter what kind of vehicle 
burns it, it's the emission that counts.</p>
<h3>Pricing the roads</h3>
<p>The proposed increase in FRT will certainly reduce new car sales, but that 
will only have a negligible effect on traffic congestion. A few marginal 
first-time buyers will delay making a purchase, but most will just choose a 
cheaper model or a second-hand car, marginally increasing demand for second-hand 
cars. Some people 
will delay replacing their cars, but that makes no difference to congestion, and a few people will opt for an electric 
or hybrid car which provides a discount on FRT. But a hybrid car takes just as 
much road space as a petrol-driven one for any given journey.</p>
<p>If the Government wishes to reduce traffic congestion (and we wish they 
would), then there is only one 
clear way to do it: increase the cost of using the roads in congested areas. We 
can't do that with FRT, fuel duty or licence fees, because that would target all 
roads rather than just the congested ones. It wouldn't provide any incentive for 
vehicles to avoid congested areas. So
<a href="http://en.wikipedia.org/wiki/Congestion_pricing" target="_blank">
congestion pricing</a> is the only way to achieve this. And we don't even need 
to do that 24x7, because the urban areas are not congested in the middle of the 
night. </p>
<p>We 
already price some of our roads, in the form of cross-harbour tunnels (<a href="../dbpub/orgdata.asp?p=351" target="_blank">Western</a>,
<a href="http://en.wikipedia.org/wiki/Cross-Harbour_Tunnel" target="_blank">
Central</a> and <a href="../dbpub/orgdata.asp?p=800" target="_blank">Eastern</a>), 
some of those that pass through mountains (<a href="http://en.wikipedia.org/wiki/Aberdeen_Tunnel" target="_blank">Aberdeen</a>,
<a href="http://en.wikipedia.org/wiki/Lion_Rock_Tunnel" target="_blank">Lion 
Rock</a>, <a href="http://www.hyd.gov.hk/contractwebsites/r8k/" target="_blank">
Eagle's Nest/ Sha Tin Heights</a>,
<a href="http://en.wikipedia.org/wiki/Shing_Mun_Tunnels" target="_blank">Shing 
Mun</a>, <a href="../dbpub/orgdata.asp?p=2569">Tate's Cairn</a>, and
<a href="http://en.wikipedia.org/wiki/Tseung_Kwan_O_Tunnel" target="_blank">
Tseung Kwan O</a>), some bridges (<a href="http://en.wikipedia.org/wiki/Lantau_Link" target="_blank">Lantau 
Link</a>) and <a href="../dbpub/orgdata.asp?p=3669" target="_blank">Route 3 
Country Park Section</a>, which is a tunnel and highway. Some of these are 
government-owned, and some are on long-term build-operate-transfer (BOT) 
concessions. There is also a privately-built road tunnel connecting
<a href="http://www.hkri.com/icms2/template?series=88&amp;article=1575" target="_blank">
Discovery Bay</a> to the real world. But the road pricing map is a patchwork 
of historic agreements with no coherent strategy, and with the exception of 
tunnel and bridge approach roads and the highway part of Route 3, none of the 
open road is priced. Particularly, the urban areas of Hong Kong Island and the 
Kowloon Peninsula, with their maze of narrow old roads, have no congestion 
charging.</p>
<p>What is needed is a clear and fair basis for pricing road usage, for all 
vehicles entering defined urban areas within certain time frames - say 8am to 
8pm, 6 days per week, with no exemptions (other than emergency services 
vehicles). Buses, coaches and heavy goods vehicles, which take up 
around twice as much road space as a car (even allowing for the gap between 
vehicles) should pay twice the rate of other vehicles. It would still be much cheaper to travel by bus, as the cost is shared amongst all passengers. The 
revenue from road taxes will allow increased social welfare support for those 
who need it to cover higher bus fares. The charge would be made on each entry, 
not an &quot;all you can eat&quot; once-per-day pass. Taxis would add it to their meter, 
as they do now for road tunnels and bridges.</p>
<p>To allow for taxis entering the zone without a passenger, taxis could 
be allowed to add the charge to meters when exiting the zone too. That way, they 
can make a small profit if they carry passengers both ways, and that will 
eliminate any objections they have. This is already the practice with 
cross-harbour tunnels, where a taxi is allowed to charge twice the lowest tunnel 
toll, to cover the risk of returning across the harbour without a passenger.</p>
<p>We should note that any congestion pricing scheme has an inherent element of 
intervention in deciding &quot;how much&quot; traffic is &quot;too much traffic&quot; and what the 
traffic speed target should be. The alternative approach, which is the current 
system, is to allow the roads to congest, and traffic to slow down, until it 
reaches an equilibrium level. The problem with this is that everyone in the 
traffic has to move at the speed dictated by the most marginal users, whereas 
many would be willing to pay a premium for higher traffic speed, because their 
time carries a higher opportunity cost. In larger cities with more multi-lane 
highways, an alternative to blanket congestion zones is to have priority lanes, 
where those who want to avoid the queues pay for the privilege. Unfortunately, 
most of HK's city-centre streets are too narrow to make that viable.</p>
<h3>Other measures</h3>
<p>Other measures that can improve traffic speed include restricting the areas 
in which vehicles can stop on the road for loading and unloading, and reducing 
on-street parking to generate new lanes. Any lane blockage caused by a vehicle 
stopped for loading or unloading (or chauffeurs waiting for their bosses in 
Central) has a knock-on effect to all the traffic behind it. On-street car 
parking is incentivised by ridiculously low meter fees (HK$2 per 15 
minutes) compared with much higher rates charged by off-street car parks. In his 
Mar-1999
<a href="http://www.budget.gov.hk/1999/english/bdgt1.htm#budget52" target="_blank">
budget speech</a>, then-Financial Secretary Donald Tsang proposed
<a href="http://www.info.gov.hk/gia/general/199903/30/0330184.htm" target="_blank">
doubled meter fees</a> to $4 per 15 minutes, but then in Jul-1999 LegCo
<a href="http://www.legco.gov.hk/yr98-99/english/counmtg/voting/v0707999.htm" target="_blank">
vetoed</a> the increase in the face of opposition, possibly from the triads who 
run &quot;valet parking&quot; using the
<a href="http://www.td.gov.hk/en/transport_in_hong_kong/parking/parking_meters/octopus_operated_parking_meters/" target="_blank">
meters in certain areas</a>, and
<a href="http://www.info.gov.hk/gia/general/199907/09/0709292.htm" target="_blank">
cut the fee</a> back to $2 per 15 minutes. They capture the difference between 
the meter charge and the commercial value of the parking space.</p>
<p>In Donald Tsang's final budget as Financial Secretary in 2001, he proposed
<a href="http://www.budget.gov.hk/2001/english/efile.htm#On-street%20Parking%20Meter%20Charges" target="_blank">raising</a> the parking meter fee from $2 to $3 per 15 minutes, but this was 
still
<a href="http://www.legco.gov.hk/yr00-01/english/counmtg/voting/v2006018.htm" target="_blank">
vetoed</a> by LegCo. As a result, parking meter fees, as set out in
<a href="http://www.hklii.org/hk/legis/en/reg/374C/sch2.html" target="_blank">
Schedule 2</a> of the Road Traffic (Parking) Regulations, remain unchanged since 
1994. Parking revenues were only HK$360m in 2009-10.</p>
<h3>Conclusion</h3>
<p>The proposed increase in FRT, like so many parts of the 2011-12 budget, was 
not well thought out and will not achieve its stated objective, which in any 
case was based on a false claim that higher ownership of private cars has 
increased congestion. The Government needs to make a fundamental 
review of road transport policy, and rethink the way it deters road usage in 
congested areas and air pollution from road traffic.</p>
<p>FRT and licence fees based on engine size or vehicle type should be 
abolished, and replaced with small, flat fees to cover the administrative cost of 
registration and licensing. Fuel duties should be increased, and charged to all 
vehicles, and on all fuel types (at different rates per fuel type, based on 
their contribution to pollution). Congestion pricing should be introduced to reduce congestion. 
Meter fees should be raised substantially, to be comparable with off-street 
parking charges. That's the 
road map to a fairer and more effective road transport policy.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=96">Air pollution</a></li>
				
				<li><a href="/dbpub/subject.asp?c=180">Road transport</a></li>
				
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