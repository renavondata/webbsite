
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

<script type="text/javascript">document.title="Submission on Electronic Road Pricing";</script>

	<div class="summary">Speak out! Put market forces to work on the roads. Read our response and then tell the Government whether you agree or not. Consultation ends this Friday, 18-Mar-2016.</div>

<h2 class="center">Submission on Electronic Road Pricing<br>
<span class="headlinedate">12 March 2016</span></h2>
<p>This is the response of Webb-site.com to the
<a href="http://www.erp.gov.hk/" target="_blank">Electronic Road Pricing Pilot 
Scheme public engagement document</a>.</p>
<p>At last, the HK Government appears willing to do something that will upset vested 
interests for the greater public good. We support this. Road pricing is not in 
fact a new concept in HK - there are already charges for various tunnels, 
bridges and the Route 3 Country Park Section. Lessons can be learned from the 
implementation of those. It is remarkable that
<a href="http://www.td.gov.hk/en/transport_in_hong_kong/tunnels_and_bridges/toll_rates_of_road_tunnels_and_lantau_link/index.html" target="_blank">
the tolls on all of those</a> are the same at every hour of the day. This is not 
optimal.</p>
<p>Even the MTR has an
<a href="http://www.mtr.com.hk/en/customer/main/early_bird.html" target="_blank">
early-bird discount</a> (or if you prefer, a premium outside that period) in 
urban areas to shift demand, although they don't follow through with 
differential pricing around the evening rush hour. Remember, you
<a href="MTRchan.asp">stripped the MTRC</a> of its fare autonomy some 
years ago, and if you won't let them increase fares at peak times then 
they can't discount at off-peak times without losing revenue.</p>
<p>In response to the <a href="http://www.erphk.hk/download/document/ERP_PE_Doc_App4_en.pdf" target="_blank">
specific questions in Appendix 4</a>:</p>
<h3>Charging area</h3>
<p>For any chosen area of HK, some traffic normally passes through that area to 
destinations outside it (<strong>through-traffic</strong>) while other 
traffic has a destination within that area (<strong>destination traffic</strong>). 
If the charging area is too small, then some of the destination traffic will 
shift its destination to just outside the boundary, rather than not coming at 
all. For example, if you draw a small area with a car park just outside it, then 
that will boost revenue for the car park and reduce the deterrent to vehicle 
journeys. Congestion near the car park may even increase. Take care to ensure 
that the roads near the boundary can handle the increase.</p>
<p>Through-traffic will tend to avoid the charging area, increasing traffic on 
roads near the boundary, so please ensure that these roads have sufficient 
capacity, or if they don't, then they too must have charging, perhaps at lower 
rates, the further away you get from the core charging zone, so we may need a 
core zone and an adjacent secondary charging zone.</p>
<h4>Open data</h4>
<p>There is only a need for charging at times and in areas where vehicle speeds 
are below a target threshold. The Government collects, or should collect, 
detailed data on existing road traffic, but we are not aware of how detailed 
this is - whether, for example, it counts vehicles passing specific points in 
narrow time intervals. We call on the Government to 
<a href="https://data.gov.hk" target="_blank">publish all the data</a> in an 
open, free, machine-readable form, with real-time updates, so that the community can 
analyse it, suggest where more data are needed, and help to design a solution. 
With insufficient data, we cannot make further comment on the charging area.</p>
<h3>Charging mechanism</h3>
<p>The objective of ERP is to reduce congestion, so this logically requires the
<strong>cordon-based</strong>  mechanism, charging vehicles whenever they cross a 
boundary. You misleadingly call a scheme in which vehicles are only charged once 
per day, regardless of the number of journeys, an "<strong>area-based</strong>" 
mechanism, but it is in fact a <strong>daily-rate</strong> mechanism for 
crossing a cordon. In the daily-rate mechanism, vehicles are only charged for 
the first visit and not subsequent visits to the congestion zone. A daily-rate would have only a minimal impact on congestion, particularly because a 
large portion of the traffic comprises vehicles which visit multiple times per 
day, including buses and taxis. In a daily-rate mechanism it is also harder to 
vary the charge based on demand at different times of day.</p>
<p>A charge should be made on both entry and exit during congestion times, 
otherwise the congestion will be higher in the evening rush hour. Some car 
owners may drive to work early in the morning, when the charge is low or zero, 
park their car in a car park and then leave in the evening rush hour, so they 
must be charged for the evening congestion. Coming to work early shouldn't 
exempt you from congesting the roads in the evenings.</p>
<img class="center" alt="Traffic in Queen's Road Central" src="../images/trafficQRC.jpg">
<h4>Taxis</h4>
<p>Taxi drivers or owners may complain about the ERP proposals and embark on 
their usual protests. The solution is to incentivise them to support ERP. Taxis 
should be allowed to charge the passenger double the congestion charge for a 
journey which enters or exits the zone, so that if they enter or leave empty, 
then their cost will be covered, while if they have passengers in both 
directions, then they will make a profit on the charge. Only if they are 
empty in both directions will they make a loss. Remember that private cars are 
more efficient users of road space than taxis, because they only occupy roads 
when they are actually on a journey.</p>
<h3>Charging period</h3>
<p>Charges should be calibrated to achieve a target average traffic speed, 
balancing the supply of road space with the demand for it. If the actual traffic 
speed is too low, then the charge should be raised. Conversely, if the speed 
exceeds the target, then lower the charge. Consequently, charges should vary at 
different times of day based on demand. At certain times of day (particularly 
overnight) the charge will consequently be zero. The tariff should be reviewed 
on a regular basis (say, every 3 months) so as to maintain the target traffic 
speed in response to shifting demand.</p>
<p>There is nothing special about Sundays or public holidays except that demand 
may be lower then, justifying a zero charge, but if the weekday charging results 
in a shift in demand to Sundays then congestion charges may be needed. It is 
important not to raise expectations that Sunday should be a free-for-all day on 
which congestion does not matter. In some shopping areas, such as Causeway Bay, 
you may find that congestion is very heavy on Sundays. Stick to the principles 
and charge only to achieve a target traffic speed, regardless of the day of the 
week.</p>
<h3>Charging level, exemptions and concessions</h3>
<p>Resist the political temptation to combine social engineering, vote-buying 
(in the transport sector) or social welfare with traffic management. If you 
exempt sectors or charge based on irrelevant factors then those who pay will 
feel that they are being charged to offset the congestion caused by those who 
don't, and the scheme will fail to gain public acceptance.</p>
<p>The 
approach should be strictly based on the road space occupied by a vehicle and 
agnostic to the number of passengers it carries or could carry. So a car, taxi 
and light goods minivan should all pay the same amount (call it <strong>X</strong>), a motorcycle should pay 0.5X, a minibus or a light goods 
vehicle 1.5X, while a heavy goods vehicle or large bus should pay 2X.</p>
<p>This will still result in a per-passenger cost which is lower for buses than 
cars, incentivising the use of buses, which are more efficient users of road 
space except when they are empty or nearly empty. 40 passengers on a bus that 
pays 2X will pay (via the bus fare) 0.05X each, while a person in a private car 
with no passengers will pay 20 times that. It is up to bus companies to 
structure their routes and frequencies to achieve higher occupancy so that 
the congestion charge is spread more thinly across fares. They may also add a 
small surcharge for congestion periods, incentivising passengers to use off-peak 
times.</p>
<p>A per-vehicle charge also incentivises ride-sharing in cars and taxis. 
However, please see our article <a href="roadcartels.asp">Busting 
HK's road transport cartels</a> (14-Dec-2015). One of the causes of congestion 
at peak times is that the Government refuses to issue more licenses for public 
light buses (PLBs) and non-franchised buses, so those who need to travel by road 
use private cars instead.</p>
<p>Electric vehicles don't produce road-side emissions, but they still occupy 
road space, slowing down the vehicles behind them, so they should pay the same 
as other vehicles.</p>
<p>The only sensible exception is emergency-services vehicles. Other Government 
vehicles, including the black, chauffeur-driven limousines that ferry our senior 
officials and civil servants around, should pay the charge, even though the 
revenue goes back to another Government department. It would at least impact the 
departmental budget and make them think about using public transport as most 
people do.</p>
<h3>Technology</h3>
<p>What you call Dedicated Short-range Radio Communication (<strong>DSRC</strong>), 
or put simply, tagging, is the way to go. We also suggest that the tags be 
easily removed and replaced, so that people who share the usage of a vehicle 
(such as taxi-drivers who rent a vehicle for a shift) can use their own tag. 
However, with a tariff based on vehicle size, there must of course be random 
checking using road-side cameras to ensure that people don't buy a motor-cycle 
tag and use it on a heavy goods vehicle.</p>
<h4>Parking, stopping, and lay-bys</h4>
<p>The same DSRC technology should be deployed in all parking meters in HK, so that 
vehicles are automatically charged when they park and until they leave. All 
lay-bys should also have meters. There should be a free period of 5 minutes for 
pick-ups and drop-offs. If your vehicle is still there after 5 minutes then you 
will be charged, and if it is a lay-by, then at a premium rate (say, double the 
normal parking rate), because a lay-by is supposed to be a drop-off and pick-up 
area, not a parking zone, and you need higher availability.</p>
<p>This will stop the frequent practice of drivers hogging lay-bys and 
parking spaces without paying, triggering other users to stop in the road lanes. Charges on parking meters should be raised to 
meet demand - currently they do not exceed $2 per 15 minutes, which is, in many 
places, about one third of the cost of car parks. This often results in criminals 
controlling the spaces and creaming off the difference in "valet parking" 
rackets.</p>
<p>Road lanes should also be strict no-stopping areas during congestion 
charging times, because a prime factor in congestion is when drivers stop in a 
curb-side vehicle lane waiting for their bosses or unloading goods, blocking an 
entire lane and causing dozens of vehicles to have to manoeuvre around them. 
Penalties must be raised and enforcement increased.</p>
<h3>Privacy concern</h3>
<p>There can be no real issue surrounding privacy. That was really just an 
excuse that the Government used the last time it proposed ERP, to avoid tackling 
vested interests in the transport sector. The reason not to be concerned is that 
the level of surveillance already open to the Government with its network of 
CCTV cameras and access to cellphone location data (from triangulation of base 
stations) means that tracking vehicle number plates does not materially increase 
the intrusion. If you are on a secret mission then you can always wear a disguise and 
take public transport using an Octopus card bought with cash.</p>
<h3>Effectiveness</h3>
<p>Obviously the effectiveness should be determined by whether the tariff has 
achieved the target traffic speed, no more and no less. Yes, the tariff should 
be reviewed, we suggest quarterly. Numerous factors affect road demand, 
including weather (demand may be higher in the hot-and-rainy season when walking 
is less attractive), fuel costs, incomes and alternative transport costs.</p>
<h3>Complementary measures</h3>
<p>Yes:</p>
<ul>
	<li>See our proposals for parking metering and lay-by charges above.</li>
	<li>See our proposals in the article <a href="roadcartels.asp">
	Busting HK's Road Transport Cartels</a> (14-Dec-2015)</li>
	<li>Abolish First Registration Tax (<strong>FRT</strong>). Owning a vehicle 
	does not increase road congestion or air pollution. Using it does. See our 
	article <a href="traffic1.asp">Traffic Truths</a>, 1, 13-Apr-2011.</li>
	<li>Abolish annual vehicle license fees for the same reason.</li>
	<li>To reduce air pollution, reintroduce diesel duty and charge LPG duty too. For 
	vote-buying and socialist reasons, duty on diesel and LPG has been set at 
	zero while petrol duty remains at $6.06 per litre (unchanged in years). So goods vehicles, taxis, 
	buses and minibuses are not paying for the air pollution and the consequent
	<a href="http://hedleyindex.sph.hku.hk/html/en/" target="_blank">health care 
	costs and economic losses</a> caused by illness. You probably need to raise 
	the duty level on petrol too.</li>
	<li>The revenue from road pricing and taxing LPG, diesel and petrol can 
	offset the revenue lost by abolition of FRT and vehicle license fees.</li>
	<li>After limiting road usage with congestion pricing and deterring illegal 
	parking/stopping in vehicle lanes with stiffer fines and enforcement, 
	consider introducing dedicated cycle lanes and/or 
	widening pavements for pedestrians by dropping one of the vehicle 
	lanes. Encourage cycling with bike rental and parking facilities as 
	many major cities have done.</li>
</ul>
<h3>Have your say</h3>
<p>Do you agree or disagree with the Webb-site view? Submit your views to the 
Government anonymously using
<a href="https://erphk.hk/en/comment/index.html" target="_blank">this form</a>, 
or by e-mail to <a href="mailto:info@erphk.hk">info@erphk.hk</a>. The 
consultation closes on 18-Mar-2016.</p>
<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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