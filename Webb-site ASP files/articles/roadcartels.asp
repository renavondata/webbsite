
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

<script type="text/javascript">document.title="Busting HK's road transport cartels";</script>

	<div class="summary">On the day the competition law takes effect, we take a long hard look at the anti-competitive legislation and policies which support a HK$116bn taxi cartel, a $22bn minibus cartel and a $13bn non-franchised bus cartel as well as restricting the hire car market. The Government should scrap all restrictions and franchises, introduce congestion pricing, and allow competition to serve the public interest.</div>

<h2 class="center">Busting HK's road transport cartels<br>
<span class="headlinedate">14 December 2015</span></h2>
<div class="summary">Note:a Chinese translation of this article has been produced by Harbour Times 
	<a href="http://harbourtimes.com/2015/12/23/推翻香港道路交通霸權/" target="_blank">at this link</a>.</div>
<p>Today, 14-Dec-2015, Hong Kong's
<a href="http://www.hklii.hk/eng/hk/legis/ord/619/" target="_blank">Competition 
Ordinance</a> finally 
<a href="http://www.gld.gov.hk/egazette/pdf/20151929/es220151929156.pdf" target="_blank">takes 
full effect</a>, the culmination of some 20 years of 
campaigning, starting with a
<a href="https://www.consumer.org.hk/web/CompetitionStudyReports/1996-11_Competition_policy.pdf" target="_blank">
report</a> by the Consumer Council in 1996. Webb-site was a part of that 
campaign, including a <em>Financial Times</em> debate back in Jul-2001, when we
<a href="noncompete.asp">wrote the case</a> for a law, and then 
Financial Secretary <a href="../dbpub/positions.asp?p=2195">Antony Leung Kam 
Chung</a> wrote <a href="../codocs/010713FTleung.pdf" target="_blank">against it</a>. Leung worked for HK's 
first Chief Executive, <a href="../dbpub/natperson.asp?p=1303">Tung Chee Hwa</a>, a shipping 
tycoon whose firm was in the container cartel and was also in business with Li 
Ka Shing. Leung wrote that a competition law was unnecessary and "would adversely 
affect the business sector". If he was referring to the fortunes of any abusive 
incumbent players, then he was right.</p>
<p>One of the few things for which we can thank Tung's successor
<a href="../dbpub/natarts.asp?p=2191">Donald Tsang Yam Kuen</a> is tabling a law which would reduce 
the dominance of the tycoons who elected them both - but then he didn't like 
answering to <em>anybody</em>. The third and current Chief Executive, 
<a href="../dbpub/natarts.asp?p=1680">Leung Chun Ying</a>, has been
<a href="https://www.youtube.com/watch?v=1zpzzU_UskQ" target="_blank">much more 
hesitant</a> about biting the hand that feeds him.</p>
<p>So today Hong Kong at last has a law against anti-competitive practices such 
as price-fixing and bid-rigging. Although the ordinance has numerous defects, 
such as lacking a merger-control regime except for telecommunications, lacking 
criminal sanctions against individuals, and exempting statutory bodies (with 
exceptions), it's a start and, like the Government itself, better than nothing.</p>
<p>But anyone who believes the economic 
freedom awards HK receives from foreign organisations, only needs to understand our transport sector to know that 
the domestic economy is far from free. HK retains numerous pieces of 
anti-competitive legislation and policies that will continue to inhibit 
competition in various sectors because the Competition Ordinance does not 
override them.</p>
<p>Today we'll look at road transport, specifically the taxi, hire car, public 
light bus, non-franchised bus and franchised bus sectors. Pour yourself a 
competitive cup of coffee and we shall begin.</p>
<h3>Taxis</h3>
<p>In HK, if you want to drive a taxi for a 
living, then you have to pay someone else not to, by buying or renting their 
licence. Every taxi licence in HK is in one sense a colonial licence, as the 
HKSAR Government has never issued a new taxi licence. HK has 18,138 registered 
taxis, comprising 15,250 red urban taxis, 2,838 green New Territories taxis, and 
the lesser-spotted 50 blue Lantau taxis. That compares with over 28,000 in 
Singapore, a smaller place with a smaller population where there are no quantity 
limits and prices are set by competition.</p>
<p>The last new HK licences were 10 for Blue Taxis on Lantau 
Island tendered in early 1997, just before the Handover, and prior to that, 300 
red and 100 green licences in 1994. Meanwhile there has been a 20.9% increase in 
HK's
<a href="http://www.censtatd.gov.hk/hkstat/sub/sp150.jsp?tableID=001&amp;ID=0&amp;productType=8" target="_blank">
population</a> from 6.035m in mid-1994 to 7.299m in mid-2015 and a 26.4% 
increase in the length of public roads from 1,661km at the end of 1994 to 2,099km 
at the end of 2014. Newer roads tend to have more lanes than the old urban 
roads, so the unpublished increase in lane-kilometres must be significantly 
higher.</p>
<p>The number of licensed private cars has increased 77.2% from 279,420 at the 
end of 1994 to 495,038 at the end of 2014. As more marginal owners come into the 
system, the average private car is driven less - an average of 
30.4km per day in 2014, compared with 37.1km per day in 1994, down 18.0%. By 
comparison, the average taxi did about 360km per day in 2014. Motor 
vehicle ownership in HK remains low with only about 96 per 1,000 people, of 
which 68 are private cars. This
<a href="https://en.wikipedia.org/wiki/List_of_countries_by_vehicles_per_capita" target="_blank">
compares</a> with 809 motor vehicles in the USA, 519 in the UK and 149 in Singapore, 
per 1,000 people.</p>
<p>In an unrestricted market, the value of a taxi would be no more than its 
depreciated cost, including any registration taxes. A new Toyota Crown LPG Taxi 
costs HK$230k at
<a href="http://www.toyota.com.hk/Toyota/media/General/commercial-vehicles-price-list.pdf" target="_blank">
list price</a>. But in HK's restricted 
market, taxis change hands at vast premiums, with a red taxi
<a href="http://www.taxixchange.com" style="text-decoration: none" target="_blank">trading</a> around 
HK$6.7m and a green taxi around HK$5.5m. This values the entire fleet at about 
HK$118bn. Even allowing about HK$2bn for the vehicle values (half-used), that 
leaves a premium of <strong>HK$116bn</strong> (US$15.0bn), or about HK$16k per HK resident. 
Assuming that this is a fair market price, it represents the net present value of all 
the future excess payments or "<a href="https://en.wikipedia.org/wiki/Economic_rent" target="_blank">economic rents</a>" that customers in HK are expected 
to make 
for taxi journeys, above what they would pay in an open market. That's how much 
the cartel is worth.</p>
<p>An <a href="http://www.info.gov.hk/bor/en/docs/d12599.pdf" target="_blank">
Inland Revenue case shows</a> (p10) that in Feb-1993 taxi licences were fetching 
about HK$1.1m each, so they are up over 500% since then.</p>
<p>Of course, if you can afford nearly HK$7m for a licence (or even the deposit 
for a loan) then you probably don't need to drive a taxi for a living, and most 
drivers rent their vehicles for a 12-hour shift from owners. Not being a 
highly-skilled profession, the driver takes home (after fuel costs) just above 
the minimum wage, and anything else goes in rent to the owners, who pay for 
maintenance, insurance, and occasionally a new vehicle. So when you see protestors 
demanding higher taxi fares, most of them represent owners who 
collect that rent. The driver knows that as soon as the fare revenue goes up 
(either due to a fare increase or to higher demand) then so will the rent, 
because if he won't pay it, then another low-skilled person will. Basic 
economics.</p>
<p>We've even got to the stage where owners are using their taxis to store 
distinctive number plates that they have purchased:</p>
<img class="center" alt="Taxi" src="../images/taxi.jpg">
<p>The Government, whenever it talks about taxi licences, talks about balancing 
supply and demand - but if it had done that, then premiums would be zero, 
because you could just get a licence for a nominal administrative fee. Fares 
would be set by competing taxi operators using market forces and there 
would be as many taxis at any time as the market can support, taking into account the cost 
of fuel, drivers, insurance, maintenance, depreciation, tax, congestion pricing 
(see below) and so on. The fact that there is a premium at all shows that there 
is unmet demand for licences from those who want to operate taxis.</p>
<p>When the Government purports to measure demand, it looks at statistics such as 
waiting times, but this rather ignores the fact that when queues grow beyond a 
certain length, and are known to do so, the propensity of people not to join them and to find 
alternatives, including buying private cars or using "illegal" hire cars, increases.</p>
<p>If we had no cap on licences and competing operators were allowed to set 
their own fares, there would no longer be any sense in restricting taxis to 
geographic territories. The RGB (Red/Green/Blue) distinction would end, and taxi 
operators would be free to paint their fleets in any distinctive colour scheme 
they like. This is not really a question of "the knowledge" of the territory, 
given that any driver can find any place using a GPS system.</p>
<h3>Hire Cars</h3>
<p>Besides the taxi market, HK also has a very restricted hire car market. The 
main distinction is that you can hail a taxi in the street (if it is available), but not a hire car. There 
is a statutory cap on the number of hire cars, called the
<a href="http://www.hklii.hk/eng/hk/legis/reg/374L/s2.html" target="_blank">Hire 
Care Permits (Limitation on Numbers) Notice</a>. Under the
<a href="http://www.hklii.hk/eng/hk/legis/reg/374D/s15.html" target="_blank">
Road Traffic (Public Service Vehicle) Regulations</a>, there are 5 categories of 
permit, 
but two of these, for schools and airport, are extinct and no longer granted. That leaves 
Private Service permits (maximum 1500), Hotel Service permits (maximum 400) and 
Tour Service permits (maximum 400). The
<a href="http://www.td.gov.hk/en/public_services/frequently_asked_questions/hire_car_permits/index.html" target="_blank">
conditions</a> adopted by the Commissioner for Transport are strict:</p>
<ul>
	<li>Except for Hotel Service cars, hire cars shall "not be fitted with any equipment permitting the driver 
	to transmit and receive messages by radio", - clearly a policy written before non-fitted cellphones, which use radio 
	waves, were invented, but it is designed to stop trips being booked without 
	prior arrangements.</li>
	<li>Private Service permits shall only be issued "for the carriage of 
	residents in an area where there is no or inadequate public transport" 
	(prove that if you can), but 
	there are two sub-categories: Private Service (Limousine) for "guests or 
	clients of a contracted company, and for special occasions where personalised up-end transportation are required" - such as weddings; and 
	"Limousine (Cross-boundary)" which are only for getting to and from Mainland 
	China. According to the
	<a href="http://www.td.gov.hk/filemanager/en/content_2001/td259f_rev2010_ts.pdf" target="_blank">
	application form</a>, limousines must have a pre-tax value of at least 
	HK$300k, to stop you using mass-market cars.</li>
	<li>Hotel Service hire cars can only be used for guests of the hotel and 
	persons bona fide accompanying such guests. The Transport Commissioner even takes into 
	account the
	<a href="http://www.td.gov.hk/filemanager/en/content_2001/td259a_reqdoc_rev092015.pdf" target="_blank">
	room rates and number of bedrooms</a> of hotels - it only wants up-market 
	hotels to operate limousines.</li>
	<li>Tour Service hire cars can only be used by a designated travel agent for 
	tourists and persons bona fide accompanying them, and the journey must start 
	and end at the same point (such as a sight-seeing tour).</li>
</ul>
<p>All permits must be approved by a secretive body called the "Contract Hire 
Car Permits Selection Board", which comprises representatives from the Transport 
Department, the Transport and Housing Bureau, and the
<a href="../dbpub/officers.asp?p=27025&amp;hide=Y">Transport Advisory Committee</a> 
in unknown proportions. We cannot find the board's membership anywhere online, 
nor any reports of its activities. </p>
<p><em>Webb-site Reports</em> obtained the following data on request from the 
Transport Department, and as you can see, allowing for the occasional vehicle 
being off-road pending replacement, there was very little change in the last 3 
years, with all the figures kept well under the statutory limits. A net 2 
permits were issued in 2013 and just 1 in 2014, taking the total to 885. </p>
<p class="widthAlert2">Some data are hidden to fit your display.<span class="portrait"> Rotate?</span></p>
<table class="numtable center fcl" style="font-size:10pt">
	<caption><b>Number of Hire Car Permits in force</b></caption>
	<tr>
		<td><b>Type of Service</b></td>
		<td class="colHide2"><b>2007</b></td>
		<td class="colHide2"><b>2008</b></td>
		<td class="colHide3"><b>2009</b></td>
		<td class="colHide3"><b>2010</b></td>
		<td><b>2011</b></td>
		<td><b>2012</b></td>
		<td><b>2013</b></td>
		<td><b>2014</b></td>
		<td><b>Aug-2015</b></td>
		<td><strong>Limit</strong></td>
	</tr>
	<tr>
		<td>Hotel Service</td>
		<td class="colHide2">144</td>
		<td class="colHide2">145</td>
		<td class="colHide3">149</td>
		<td class="colHide3">151</td>
		<td>165</td>
		<td>160</td>
		<td>155</td>
		<td>155</td>
		<td>155</td>
		<td>400</td>
	</tr>
	<tr>
		<td>Tour Service</td>
		<td class="colHide2">108</td>
		<td class="colHide2">108</td>
		<td class="colHide3">102</td>
		<td class="colHide3">105</td>
		<td>113</td>
		<td>115</td>
		<td>113</td>
		<td>118</td>
		<td>107</td>
		<td>400</td>
	</tr>
	<tr>
		<td>Private Service</td>
		<td class="colHide2">403</td>
		<td class="colHide2">454</td>
		<td class="colHide3">504</td>
		<td class="colHide3">559</td>
		<td>567</td>
		<td>600</td>
		<td>609</td>
		<td>605</td>
		<td>623</td>
		<td>1500</td>
	</tr>
	<tr class="total">
		<td>Total</td>
		<td class="colHide2">655</td>
		<td class="colHide2">707</td>
		<td class="colHide3">755</td>
		<td class="colHide3">815</td>
		<td>845</td>
		<td>875</td>
		<td>877</td>
		<td>878</td>
		<td>885</td>
		<td>2300</td>
	</tr>
</table>

<p>It is clear that the Government sets the bar on 
applications so high that in practice the permits, which are reissued annually, 
are only given to existing holders. Even if they dropped all the criteria 
and issued licences to any applicant who wants to take the commercial risk of 
running a hire car service, we would quickly hit the statutory limit of 2300, and then priority 
would presumably be given to existing holders for renewals, and a licence premium 
would develop if it hasn't already.</p>
<h3>Uber et al</h3>
<p>Now that brings us on to the recent surge in private hire car booking 
services, including Uber and its local competitors. If there is unmet demand, 
then the black market tends to fill it. On 11-Aug-2015, the police
<a href="https://www.hongkongfp.com/2015/08/11/uber-hk-office-inspected-by-police-3-taken-away-amid-crackdown-on-illegal-taxis/" target="_blank">
raided</a> Uber's HK office, seizing computers, and arrested 5 (self-employed) 
drivers on suspicion of carrying passengers for hire or reward without a permit, 
which they probably were, prompting the withdrawal of the Uber "success story" 
on the web site of the Government investment promotion agency InvestHK (<a href="../codocs/UberInvest%20HKweb.pdf" target="_blank">archived 
here</a>). Awkward.</p>
<p>Ironically, HK's senior officials and civil servants, who make transport 
policy, are chauffeured around in Government limousines, so they never have to 
deal with the difficulty of getting a taxi (or a minibus seat) in the rush hour 
or when it is pouring with rain (or both). Many of the wealthier members of 
society have private drivers for their private cars, so they don't need to think 
about this either. That leaves the middle classes who can afford to pay for 
occasional on-demand hire car rides, but are currently inhibited from doing so.</p>
<p>To be clear, this is not really an insurance issue, despite government 
scaremongering to that effect. Insurers are more than happy to sell insurance 
for private hire cars to anyone who legally carries on such a business. Even 
under existing private car insurance, which usually excludes cover when the 
vehicle is driven for hire or reward, insurers are still required by section 10 
of the
<a href="http://www.hklii.hk/eng/hk/legis/ord/272/s10.html" target="_blank">
Motor Vehicles Insurance (Third Party Risks) Ordinance</a> to satisfy judgments 
for third party liability, but can then claim the money back from the insured 
person. If the insured person doesn't reimburse the insurer then that does not 
affect the third party.</p>
<p>As passengers, the general public should have no qualms about using services 
like Uber to help break the taxi and hire car cartel. If you haven't tried it 
yet, <a href="https://www.uber.com/invite/davidw19047ue" target="_blank">
<strong>click here</strong></a> to get a HK$50 discount on your first Uber ride, 
and we'll get one too. The driver may be breaking the anti-competitive law (if 
he doesn't have one of those rare hire car permits), but you aren't.</p>
<p>The Government's limp response to all this has been to suggest organising a 
"premium" taxi service, in which the Government would award franchises and 
decide how many franchises there should be, how many taxis each of them should 
have, and what the fare structure should be. The
<a href="http://www.legco.gov.hk/yr15-16/english/panels/tp/papers/tp20151106cb4-119-8-e.pdf" target="_blank">
paper submitted</a> to Legco for 6-Nov-2015 says that "we will have to carefully 
study the number of premium taxis to be introduced" and "take into account the 
operating situation of the taxi trade" - in other words, more anti-competitive 
protectionist policy-making, not a market-based approach.</p>
<h3>Public light buses</h3>
<p>The caps on taxis and hire cars are just one aspect of our anti-competitive 
road-transport sector. Another 
is in Public Light Buses (<strong>PLBs</strong>) - the green and red-top 
minibuses. Since May-1976 there has been a fixed number of 4,350 PLBs, now 
covered by
<a href="http://www.hklii.hk/eng/hk/legis/reg/374K/s2.html" target="_blank">the 
Public Light Buses (Limitation on Number) Notice</a>. HK's population in 
mid-1976 was 4.518m, and is now 61.5% higher. They did add 2 seats (14.3%) to 
each minibus starting in 1988, taking them up to 16 seats. Again, the quantity 
constraint has resulted in huge premiums for the right to operate them. The 
latest valuation is the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1124/LTN20151124316.pdf" target="_blank">
interim results</a> of <a href="../dbpub/orgdata.asp?p=20788">AMS Public Transport Holdings Ltd</a> (<strong>AMS</strong>, 0077), valuing each of their 
56 licences at HK$5.18m at 30-Sep-2015. That values the PLB cartel at <strong>
HK$22.53bn</strong>, or about HK$3,087 for each HK resident.</p>
<p>The green PLBs, of which there were 3,196 in Oct-2015, are franchised, 
operating on fixed routes with fixed fares approved by the Government. The 
remaining 1,154 red PLBs are free to set their fares and routes, but are 
restricted from certain roads. Over the years, the number of red minibuses has 
dwindled as the Government awarded green minibus franchises for which the 
licences were converted.</p>
<h3>Non-franchised buses</h3>
<p>Of course, if you restrict one kind of bus, then you get growth in 
alternatives. However, since 2005, there has also been a <em>de facto</em> cap 
on the number of non-franchised public buses (<strong>NFBs</strong>), of any 
size. A public bus is one that you can hire, for example, for tours, estate 
residents' service or regular school service. At the end of 2014, there were 
7,053 registered NFBs, including 11 single and 116 double-deckers operated by 
the MTR (formerly by the KCRC). The policy, since 2005, is not to grant new NFB licences unless you can 
prove that you cannot buy an existing bus for 6 months after the 
application.</p>
<p>Although
<a href="http://www.hklii.hk/eng/hk/legis/ord/374/s27.html" target="_blank">
passenger service licences</a> are not actually transferable, the Government 
will grant you one if you buy an existing bus and, as the
<a href="http://www.gov.hk/en/residents/transport/publictransport/fa_nfbinhk.htm" target="_blank">
Government web site puts it</a> "the existing owner of the bus concerned agrees 
not to purchase replacement vehicle" and thereby surrenders his licence.</p>
<p>Of course, at some price, it is always possible to buy an existing 
licensed bus, so the inability to buy one is almost impossible to prove. The result 
is that the number of NFBs peaked in 2004 at 7,212 (up from 1,609 in 1979) and 
after that declined slightly to 7,067 in 2007. It has practically flat-lined since then, 
constrained by policy. Even existing licence holders have to justify licence 
renewal when their hire contracts expire.</p>
<img class="center" alt="" src="../images/NFBgraph.gif">
<p>This
<a href="http://www.legco.gov.hk/yr04-05/english/panels/tp/papers/tp0202cb1-786-6e.pdf" target="_blank">
shameful paper</a> presented by the HK Government to LegCo in Jan-2005, 
outlining the policy, is 
riddled with 21 references to the "NFB trade" - for which, you should read "NFB 
cartel" - the existing owners of licences. There are also two references to 
"unhealthy competition" (an oxymoron) and a detailed explanation of the 
complicated "8 endorsements" system which restricts the use of specific NFBs to 
certain purposes.</p>
<p>Unsurprisingly, the cap has resulted in substantial premiums for the 
bus licences. An example can be found in a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/0427/LTN201104271053.pdf" target="_blank">
purchase</a> in 2011 by <a href="../dbpub/orgdata.asp?p=4894">Kwoon Chung&nbsp;Bus Holdings Ltd</a> (0306) 
from AMS, when the 
consideration for an 80% interest in a company which owned Public Service 
Licences was subject to adjustment based on HK$1.5m per licence ($1.2m for 80%) 
eventually acquired.</p>
<p>Another purchase by AMS in the 6-months to Sep-2014 of 2 public 
bus licences for HK$3.8m (<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1212/LTN20141212348.pdf" target="_blank">interim 
report here</a>) indicates a market price of $1.9m per bus licence, on top of 
the $0.5m typical bus price (including First Registration Tax of 3.7%). So the 
licences are already worth about 4 times the bus cost. That values the fleet of 
7,053 NFB licences at <strong>HK$13.4bn</strong>, or about HK$1,835 per HK 
resident.</p>
<p>Demand for NFBs has undoubtedly increased in the last few years due to 
inbound tourism as well as the opening of schools in more remote locations and a 
gradual increase in population. This has manifested itself in a rapid escalation 
of rentals charged to schools or parents for the use of NFBs as school buses. The result is that more parents opt out of the 
school bus system and instead get their children to and from school by other means, often 
involving private cars and thereby increasing road congestion at peak times, 
since taxis and seats on PLBs are hard to get in the morning rush hour due to 
the caps on those too.</p>
<h3>Private buses</h3>
<p>Apart from PLBs and Public NFBs, there are also Private Buses, but the use of 
these is highly restricted. You can buy a bus and operate it for your own private purposes 
without charging anyone (not for hire or reward) or you can use it exclusively 
(for hire or reward) for the students, teachers and employees of an educational 
institution, or for disabled persons and their assistants. This is hugely 
wasteful though, because for school buses you only need them twice a day, and the rest of the 
time, including weekends and school holidays, they have to be parked idle. </p>
<p>The result of these restrictions is of course that rentals of School Private 
Buses (if the school does not own them) are high because the owner only gets a 
return during narrow periods of operation.</p>
<p>School buses must be painted yellow with a purple stripe, the 
"nanny van" or "jam sandwich" bus, to deter them from "illegally" carrying out other 
services. For this colour scheme you can thank the
<a href="http://www.hklii.hk/eng/hk/legis/reg/374A/s51.html" target="_blank">
Road Traffic (Construction and Maintenance of Vehicles) Regulations</a>, which 
requires that the purple stripe shall be at least 200mm high and even specifies 
the exact colours to be used.</p>
<p>There were 2,995 licensed private light buses (including school ones) at the 
end of 2014, along with 522 single-decker private buses (with more than 16 
seats) and 60 double-deckers.</p>
<img class="center" alt="" src="../images/SchoolBus.jpg">
<h3>Opacity</h3>
<p>Unlike share registers, there are no public registers of taxi, PLB or NFB ownership. There 
should be. Many licences are held by companies, and many of those companies have common 
shareholders. It makes sense, at least for taxis, to put each vehicle in a separate company so that you 
can easily transfer the company rather than the licence when selling it, and if 
you hold it through a BVI company then there won't even be stamp duty and the HK 
Government won't know that you have sold it. So when you read the Government 
claim that there are 9000 taxi "licence holders", keep in mind that there are 
probably far fewer owners behind the corporate holders.</p>
<p>There is also no requirement for legislators or government officials to 
register their interests in taxi, NFB or PLB licences. It is a fair bet that at least one 
legislator has a personal or family interest in taxi licences (directly or via 
companies), but as far as we 
know, no legislator has declared any. At best, this will only come to light if 
they declare it in a relevant debate.</p>
<h3>Franchised buses</h3>
<p>Finally we must mention franchised buses, because they are part of the same 
road transport system, and passengers make choices between them, as well as the 
MTR. HK operates an archaic system of (mostly exclusive) 
franchises, where the Government decides who should operate the routes, what 
routes they should operate, and how much they should charge. This has to end.</p>
<p>If there are no franchises, if there are no caps on bus licences, and 
if there is market demand for a bus route, then one or more operators will step 
forward with appropriate offerings of equipment, schedules and prices.</p>
<p>All that should be required of operators is that they pay their way in terms 
of road usage (see below) and air pollution (diesel duty has been zero for 
years, and there is no duty on LPG), that they publish their schedules and 
prices, and that their vehicles and drivers are roadworthy. They should have no 
exclusive right to operate a route, and their schedule can be as frequent or as 
rare as the market justifies.</p>
<p>If this means that a few marginal places cannot even attract a minibus 
operator, let alone a bus operator, even at peak times, then so be it, although 
we suspect these would be literally few and far between.</p>
<h3>Licences should not be investments</h3>
<p>By its actions or inaction for 40 years (the last red taxi licence was issued in 1994, 
the last PLB licence in 1976), 
the Government has encouraged the misbelief that licences are a form of 
investment rather than a permission to operate a vehicle, and premiums have soared. 
Holders are betting that the policy will 
remain unchanged, but that bet should not itself be a factor in Government 
policy. When the Government talks about the "healthy development of the trade", 
what it really means is "sustaining the value of licences". The tail is wagging 
the dog.</p>
<p>The Competition Ordinance has been in the pipeline as a government policy for 
several years, and that in itself should have been a signal that the 
anti-competitive practices of capping licence numbers, centrally setting fares 
and restricting the services a bus-operator can provide would end. The ordinance 
contains no provision that would prevent the Government continuing with 
anti-competitive policies, but now that the ordinance has come into effect, 
this is the time to deal with the cartels that riddle our economy.</p>
<h3>Electronic Road pricing</h3>
<p>The two often-stated reasons for restricting the number of licences of taxis 
and PLBs have been to limit 
"unhealthy competition" within or between the taxi, PLB and NFB sectors, which 
of course is an anti-competitive objective, but also to limit road congestion. However, imposing caps does not 
reduce congestion when there is 
no cap on the number of private cars or other vehicles.</p>
<p>The correct free-market solution to 
road congestion, caused by excessive demand for a fixed amount of road space at 
certain times of day, is 
to increase the cost of road space through electronic road pricing, an issue 
which the Government has at last returned to with a
<a href="http://www.erphk.hk/en/home/" target="_blank">public engagement</a> 
exercise that started on Friday, 11-Dec-2015. We support this and will write more about that another day. In the meantime, 
we would just note that HK has been talking about this for 30 years. Here is a 
clip from the Government's 1985 Yearbook:</p>
<img class="center" alt="Yearbook 1985" src="../images/RoadPricingStudy1985b.png">
<p>Given that a 
taxi occupies the same road space as a car, the road pricing should be the same 
for both, each time they enter the designated congestion zone while pricing is 
in effect. Pricing should be dynamic, so that at off-peak times, when the road 
has spare capacity, the pricing would be lower or even zero, and during peak 
hours, it should rise high enough to maintain a targeted traffic speed. There 
should also be a ban on loading and unloading vehicles in the lanes of public 
roads during peak hours, as a single vehicle blocking one lane has an enormous 
impact on throughput. ERP charges would 
be added to taxi fares and baked into bus fares, as tunnel tolls already are.</p>
<p>The road pricing for a full-sized bus or heavy goods vehicle, using about 
twice the length of road, should be 2x that for a car or taxi. For medium goods 
vehicles and minibuses, about 1.5x a car, and for fire, ambulance and police, 
zero. There should be no other concessions. Costs per passenger on buses and 
minibuses would still be far lower than for private cars, and if the transport 
sector is liberalised as we advocate, then increased passenger capacity will 
incentivise people to leave their cars at home.</p>
<p>As a side-benefit, the introduction of ERP would allow every vehicle to carry 
a tag, and that would break the monopoly of Autopass in the tunnels and toll 
roads. The same tag could also be used to trigger parking meters, stopping 
chauffeurs and others from hogging them without paying, and avoiding the need to 
select the amount of meter time in advance. There would be no meter expiry, it 
would just stop charging when you drive away from the meter.</p>
<h3>What the Government should do</h3>
<p>The Government should completely overhaul its road transport policy to be 
consistent with the spirit of the Competition Ordinance, by removing 
anti-competitive legislation and policies. Statutory and <em>de facto</em> caps 
on the numbers of taxis, private hire cars and buses of all kinds should be 
removed. Restrictions on the territory of taxis, the routes of buses and the 
type of service a bus can provide should be removed, and all operators should be 
free to set routes, schedules and prices by open competition, not have them 
determined by Government. Bus franchises should be abolished altogether and the 
market opened to competition.</p>
<p>At the same time, congestion pricing should be introduced, and existing 
pricing on Government-owned tunnels and roads should be changed to dynamically 
increase during peak demand. Duty on diesel should be reinstated and raised to 
at least the level of petrol duty. Appropriate duty on LPG should also be 
imposed - it is not as dirty as diesel and has a lower energy density than 
petrol, but it does still produce emissions and contributes to both air 
pollution and greenhouse gas emissions.</p>
<p>If caps are removed then there will of course be howls of protest from a small number of people who 
thought they had a sure-thing bet on licences, but that is always the case when a 
government breaks a cartel, and the greater public good is served by opening the 
market. Let the competition begin.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=20788">AMS PUBLIC TRANSPORT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4894">KWOON CHUNG BUS HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2195">Leung, Antony Kam Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1680">Leung, Chun Ying</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2191">Tsang, Donald Yam Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1303">Tung, Chee Hwa</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
				<li><a href="/dbpub/subject.asp?c=180">Road transport</a></li>
				
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