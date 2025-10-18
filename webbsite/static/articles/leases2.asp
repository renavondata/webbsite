
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

<script type="text/javascript">document.title="Hong Kong Land Lease Reform, Part 2";</script>

	<div class="summary">We advocate a rebalancing of HK's land lease system, reducing up-front premiums in exchange for a perpetual stream of future ground rents and addressing a number of festering problems simultaneously. We also suggest a Premium Release Scheme to return hoarded capital to the market, and PRS Bonds or HIPS (HK Income Protected Securities) to help finance it, providing a new long-term investment option for retirement funds.</div>

<h2 class="center">Hong Kong Land Lease Reform, Part 2<br>
<span class="headlinedate">1 November 2010</span></h2>
<p>In <a href="leases1.asp">Part 1</a> of this 2-part series, we 
explained the historic background to the development of land lease terms in Hong 
Kong, from 1841 to the present day. That was three weeks ago, so to 
refresh your memory, here are the main types of lease tenures still in existence: </p>
<p class="widthAlert3">Some data are hidden to fit your display.<span class="portrait"> Rotate?</span></p>
<table class="numtable center" style="font-size:10pt">
	<tr>
		<td><strong>Lease term</strong></td>
		<td><strong>Sold from</strong></td>
		<td class="colHide3"><strong>Ending in</strong></td>
		<td><strong>Ground rent</strong></td>
		<td><strong>Location</strong></td>
	</tr>
	<tr>
		<td>999 years</td>
		<td>1843-1898</td>
		<td class="colHide3">2842-2897</td>
		<td>Fixed at start</td>
		<td>HK Island and a few former 
		wharves in Old Kowloon</td>
	</tr>
	<tr>
		<td>75+75 years</td>
		<td rowspan="2">1899-1985</td>
		<td class="colHide3">2049-2134 (renewable once in 1974-2060)</td>
		<td rowspan="2">Fixed at start and re-fixed on renewal 
		date to 3% of then rateable value</td>
		<td rowspan="2">HK Island and Old Kowloon</td>
	</tr>
	<tr>
		<td>99+99 years (rare)</td>
		<td class="colHide3">2097-2183 (renewable once in 1998-2084)</td>
	</tr>
	<tr>
		<td>50 years or until 30-Jun-2047 (whichever is later)</td>
		<td>27-May-1985 onwards</td>
		<td class="colHide3">30-Jun-2047 onwards</td>
		<td>Fixed until 30-Jun-1997 then 3% of adjustable rateable value</td>
		<td>New Territories (including New Kowloon) for leases 
			granted before 27-May-1985, and everywhere after that.</td>
	</tr>
	<tr>
		<td>50+50 years</td>
		<td>2000&nbsp;</td>
		<td class="colHide3">2100&nbsp;(renewable in 2050)</td>
		<td>3% of adjustable rateable value&nbsp;</td>
		<td>Hong Kong Disneyland&nbsp;</td>
	</tr>
</table>
<p>There are also 21-year leases granted on petrol filling stations, which 
generally get re-tendered on expiry for a premium, and 15-year leases granted to recreational 
clubs, which generally get renewed at 3% of rateable value unless the Government needs the site.</p>
<h3>The balance between land premiums and ground rent</h3>
<p>At least until World War II, ground rents were usually a significant part 
of the deal for new leases, typically around 5% of the premium. For example, Rural Building Lot 441 on Island Road, near Stanley, 
was <a href="../codocs/LandSale19410203.pdf">auctioned</a> on 3-Feb-1941 with an 
annual rent of $180 and a reserve price of $3925. Assuming a long-term discount 
rate of 5% (that is, $1.05 payable in a year's time is worth $1 today), then the 
fixed ground rents over 75 years had an initial net present value (<strong>NPV</strong>) 
of about 20.5x the ground rent, or about the same as the premium. In other 
words, about half of the land value was payable up front, and the rest over 75 
years in fixed instalments. If we take a 
higher discount rate of 8% (anticipating higher inflation) then the NPV of the 
ground rents was still about 13.5x the annual ground rent.</p>
<p>However, after World War II, through inflation and the real appreciation of 
land values from a booming economy, ground rents gradually diminished in 
significance, and eventually they were just set at token levels, even for large 
sites. For example, part of Pacific Place, Inland Lot 8571, which was one of the 
last pieces of land to be leased before the Sino-British Joint Declaration took effect on 
27-May-1985, has an annual ground rent of only $1,000 per annum until its first 75 years 
expire in 2060.</p>
<p>The 50-year leases granted today pay 3% of adjustable rateable value in 
ground rent, so in effect about 97% of the land value is the up-front premium and 3% 
is collected over the life of the lease. They have no right of renewal, but the current
<a href="http://www.info.gov.hk/gia/general/dib/0715.htm" target="_blank">policy</a>, 
which may change in future, is that unless &quot;circumstances require in the public 
interest&quot;, the Government will normally grant a new lease upon expiry, at a 
ground rent of 3% of rateable value, with no premium. Therefore the working but uncertain assumption by many 
owners is that they have a perpetual lease on those terms, subject only to 
the usual <a href="http://en.wikipedia.org/wiki/Eminent_domain" target="_blank">
eminent domain</a> - the right of the state at any time to resume the land for 
roads, railways and so on upon payment of compensation, which right is contained 
in the lease and in law.</p>
<p>This high-premium-low-rent structure has the following consequences:</p>
<ul>
	<li>only a handful of large developers have big enough balance sheets to 
	afford large-scale projects on their own, reducing competition;</li>
	<li>the Government receives lump-sum revenues in return for future land use, 
	rather than recurrent ground rents which would smooth out revenues and allow 
	it to match future expenditure with income;</li>
	<li>as a result, the Government piles up cash and then invests it in the 
	markets, creating conflicts of interests;</li>
	<li>the Government earmarks the land premiums in a separate account called the 
	&quot;Capital Works Reserve 
	Fund&quot;, and then feels obliged to spend it on infrastructure projects 
	regardless of their economic value, rather than booking ground rents to 
	general revenue and spending it on recurrent items such as education, 
	welfare and healthcare; and</li>
	<li>businesses and individuals have excessive amounts of capital tied up in 
	properties, rather than paying less up-front and carrying obligations to pay 
	future ground rents.</li>
	<li>because getting onto the property ladder is so capital-expensive, many residents and business settle for renting property on 
	short-term leases from landlords rather than having the security of tenure 
	provided by a government lease, and suffer disruption every time they have 
	to relocate.</li>
</ul>
<h3>The solution</h3>
<p>From the foregoing, the solution should be obvious. HK 
should shift the balance back towards ground rents, so that:</p>
<ul>
	<li>the up-front premiums to develop properties are reduced, lowering the 
	barriers to entry and increasing competition;</li>
	<li>the Government would receive smaller premiums, but would build up a 
	recurrent revenue stream of ground rents which would smooth out revenues and 
	match future expenditure with income</li>
	<li>less money would pile up in the reserves, so the Government would not 
	have to invest it in the markets, and might even draw down on the reserves 
	to fund a planned cash deficit due to lower premium income until the stream 
	of ground rents had built up.</li>
	<li>higher ground rents would go to the General Revenue account rather than 
	the Capital Works Reserve Fund, reducing wasteful infrastructure projects</li>
	<li>businesses and individuals who own the leases would have less capital tied up in 
	properties, and instead would pay higher ground rents to the Government</li>
	<li>more people and businesses would be able to owner-occupy government 
	leaseholds rather than rent properties from landlords</li>
</ul>
<p>In order to eliminate inflation from the equation, the ground rent should be 
expressed as a percentage of adjustable rateable value, as it already is for 
leases granted since 1985. This means that in times of economic slowdown, when rents 
fall, ground rents would fall in line, as rateable values are reduced.</p>
<p>How far can we shift the balance without risking the land having negative 
value? Keep in mind 
that the Government only sells land, not the buildings, so the buyer still has 
to pay for the building. 
However, construction costs are only a small fraction of the average property 
value, perhaps as low as 10% in luxury houses or grade-A office districts, 
and up to 30% for apartments in distant parts of the New Territories.</p>
<p>As we will show below, ground rents could be set at 30% of rateable value without any 
material risk that owners would default and hand the land back, because it would 
always be worth someone's while to buy the property, even if they have to redevelop 
the building, and collect the rest of the rent as their gross return on 
investment (before expenses and tax). We propose a name for these new leases, 
the <strong>Ground Rent 30 </strong>or <strong>GR30</strong> lease. In order to ensure that 
potential buyers of properties developed on such land are aware of their 
obligations, the law could be changed to require the type of land lease to be 
disclosed in all marketing material, including estate agents' adverts in the 
secondary market. Leases currently carrying a ground rent at 3% of rateable 
value could be called <strong>GR3</strong> leases, and those older sites with 
fixed rents could be called <strong>GRF</strong> leases.</p>
<h3>Tenure</h3>
<p>There is no reason to limit the terms of leases to 50 
years if in practice the land will only be taken back for public interest reasons. 
We already have compulsory purchase systems for that, so the Government could 
start granting much longer or perpetual leases. Of course, there is the risk 
that the entire &quot;capitalist system and way of life&quot; will be scrapped by the 
Central Government after 2047 (<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_1.html">Article 
5</a> of the Basic Law only promises 50 years from 1997), but we are all in this 
together and proceeding on the basis that it won't. So the GR30 leases could be 
granted either for 999 years or in perpetuity - take your pick, because it makes 
almost no difference to theoretical value for the first 900 years or so.</p>
<p>The beauty of reforming the land revenue system through lease reforms rather 
than say, imposing a development tax, is that once signed, the terms of leases 
cannot be touched by future SAR governments, because they are binding contracts, 
whereas taxes could change by legislation or policy at any time. So as long as 
the new lease policy was in place, it would build up a stream of revenue, and a 
market of lower-premium properties, which would exist after any future policy 
change, and leaseholders would have certainty.</p>
<h3>Effect on values and land premiums</h3>
<p>So what would be the effect GR30 leases on the value of developed properties 
and on current land premiums? Well, the easiest way to prove 
that in a pilot phase would be to take a pair of sites in say Kai Tak, West 
Kowloon, Aberdeen or Tseung Kwan O, of equal size and development potential (but not 
immediately adjacent, so there is no combination value), and give one a GR3 
lease and the other a GR30 lease, then put them up for auction at the same time. The pilot phase should do that a few times, to eliminate other 
factors, so that people have confidence 
that this is not just a one-off result. No legislation would be needed to do 
this - the Government could start tomorrow. However, we can tell you now what this pilot 
phase would probably show, with some simple desktop analysis.</p>
<p>Theoretically, the value of any developed property is equal to the net 
present value of the future after-tax income the owner can earn from it. If &quot;R&quot; 
is the gross market rent per year, then the rateable value is typically about 
80% of R, because the Rating &amp; Valuation Department routinely underestimates 
market rentals when assessing rates, to avoid challenges. Based on the rateable 
value, the owner of a GR3 lease pays 3% in ground rent and 5% in government 
rates. So that 8% cost is equal to 6.4% of the gross market rent. Next, keep in 
mind that a property owner does not in reality receive 100% of the gross rent, 
because there will be periods when the property is vacant, between tenants or 
while being renovated, and every 30-50 years or so, while the building is being 
redeveloped. So let's deduct 10% from the gross rent for that, and another 10% 
for the cost of repairs and maintenance (including saving up for rebuilding). 
That leaves the owner with a pre-tax income of about 73.6% of R. Next, deduct 
profits tax at an assumed rate of 16.5%, then we have post-tax income of about 
61.5% of R. Of course, there may be ways to enhance the return with tax 
structuring including bank loans and interest deduction, but you get the general 
idea.</p>
<p>Now, if we increase ground rents by 1% of Rateable Value, this will reduce 
post-tax income by (1-0.165)*0.01*0.8*R = 0.00668*R. That is a decrease by 
0.00668/0.615, or about 1.09%. Since this affects all future net income by the 
same factor, the value of the developed property would come down by the same 
factor. So in summary, a <strong>1% increment in ground rent equates to about a 
1.09% decrease in property value</strong>.</p>
<p>However, remember that the value of the property comprises the value of the 
land plus the value of the building. The building value includes construction 
costs, plus a profit for the developer, plus financing costs during the 
construction period. Looking at the residential sector, we'll take the 
mid-points in the
<a href="http://www.dlsqs.com/ice/index.jsp?mod=newsview&amp;showmodonly=newsview&amp;op=showimgs&amp;nresponse=true&amp;ctid=515&amp;showimgs=1&amp;imgname=515_20100909-SL1.pdf" target="_blank">
2010 Q2 report</a> by Davis Langdon &amp; Seah for construction costs. We'll allow 
6% for professional fees and add financing costs at say 5% p.a. for an average 
of 1.5 years (in a 3-year construction period). Let's assume selling prices 3 
years from now of $5,000/gsf in outlying areas, $12,000/gsf for mid-range apartments in 
urban areas and $18,000/gsf for luxury apartments. Keeping it simple, we'll 
estimate $24,000/gsf for luxury terraced houses and $30,000/gsf for detached 
houses in luxury areas. Allow a profit margin of 20% for the developer, then discount the residue by 3 years at 5% p.a. to estimate the 
original land premium. These are consistent with the auction prices in 2010:</p>
<img class="center" alt="GR3 premiums" src="../images/GR3premiums.gif">
<p>Now, based on our estimate of 1.09% reduction in developed property value for 
every 1% additional ground rent (as a percentage of rateable value), <strong>a 
GR30 lease, involving a 27% increment in ground rents compared with a GR3 lease,&nbsp; 
would involve a 29.4% reduction in sale prices</strong> for new property. 
Backing that out into land premiums, here is what would happen:</p>
<img class="center" alt="GR30 premiums" src="../images/GR30premiums.gif">
<p>As the table shows, we estimate that <strong>land premiums in current auctions 
would be between 32% and 40% lower for GR30 leases</strong> than for the current 
GR3 leases, depending on the type of property.&nbsp;Note that because of lower 
premiums, the developer's dollar profit per square foot would be reduced, 
without any change in the percentage profit margin. This is because part of the 
land value would go directly to government as ground rents, by-passing the 
developer's mark-up. Furthermore, one of the effects of lower premiums ought to 
be a bit more competition as the barrier to entry will be lower, so margins 
should decline somewhat. While our example has focused on the residential 
sector, the office and retail (commercial) sector would work in the same way.</p>
<p>Of course, there is nothing magical about the 30% ground rent figure; the 
Government could easily opt for a higher number. New GR40 properties (with 
ground rent at 40% of Rateable Value) would sell for about 40.3% less than GR3 
properties, and here is what the premiums would look like:</p>
<img class="center" alt="GR40premiums" src="../images/GR40premiums.gif">
<p>The land value is still substantial, even for apartments in outlying areas, 
so there would still be a very low probability of owners handing back their land 
or any of the units in a multi-owner building. In the event that an individual 
owner, for whatever reason, defaults on his ground rent, there is an
<a href="http://www.landsd.gov.hk/en/gov_rent/rent1.htm" target="_blank">
existing process</a> for dealing with that breach of the lease. In practice, the 
assets of a bankrupt property owner are sold off and the new owner still has the 
obligation to settle the overdue rent and remedy the breach.</p>
<p>Note that we are not expressing any view on future property prices in the 
above assumptions. For what it is worth, Webb-site has been 
<a href="larvotto.asp">saying</a> for some time 
that we are in a bubble which will eventually burst, but that is a different 
story. All that matters for this article is that, in the event of a major 
correction, the GR30 model would still be robust.</p>
<h3>Vacant properties</h3>
<p>One good thing about higher ground rents is that owners would have a stronger 
incentive to rent the units out rather than just hold them empty in the hope of 
capital gain, because they would still have to pay the ground rent. This would 
reduce complaints (justified or not) that speculators are &quot;hoarding property&quot;, 
although we think that is their right to do so.</p>
<h3>Application to new leases, modifications, regrants and renewals</h3>
<p>It is important to underline that <u>no existing lease terms would be violated</u>. 
All existing leases would be honoured. However, that still allows the Government 
to make the following changes to policy:</p>
<ol>
	<li>For all future land auctions, the leases would be GR30, and preferably 
	perpetual or 999 years. As noted above, there is no need to have shorter 
	terms if you are not going to charge premiums or raise ground rents on 
	renewal.</li>
	<li>For all modifications of existing leases, such as conversion from 
	farmland to residential or commercial use, or for surrender and regrant when 
	the boundaries of the lot are changed, the amended or new lease would be a 
	GR30 lease, with the premium calculated as the difference between the 
	valuation in existing use and the valuation in modified use, allowing for 
	the higher ground rents that the owner would have to pay.</li>
</ol>
<p>On 30-Jun-2047, all leases granted in the New Territories (including New 
Kowloon) before 1-Jul-1997 will expire. So will any lease in HK and old Kowloon 
granted between 27-May-1985 and the Handover. So this key date represents a mass 
expiry of 50-year leases, and after that date, some more 50-year leases (granted 
since the Handover) will expire each year. Most leaseholders are working on the 
assumption that their lease will be regranted on some unknown terms, possibly 
even the extremely generous GR3 terms without a premium, but there is no legal 
certainty of this - it is a policy at the whim of future HKSAR governments. As 
we get closer to 2047, for many leaseholders this uncertainty could otherwise 
become a major issue, particularly if a more socialist government was minded to 
exercise its right to resume the land or to levy a premium or higher rent for 
regrant. Remember that in 1982-3, 15 years before the expiry of the British 
lease on the New Territories, that there was a crisis in HK due to the 
uncertainty over what would happen, including for property lease terms. We 
should take early steps to avoid such uncertainty.</p>
<p>There is also the issue of existing 75+75 year leases. They fall into two 
categories - those which are in their first term, and those which are in their 
second term. For those which are already in their second term (call them <strong>
75-T2</strong> leases), they have no right of renewal when their lease expires. 
Again, they are at the whim of policy, which is currently the extremely generous 
GR3 regrant without premium. As almost all such leases were granted after 1899, 
there are very few which expire before 2049, so this isn't such a big problem, 
but our research has uncovered a few 75-year leases on Rural Building Lots on 
the Peak and South side of HK Island which do expire sooner, probably because 
they were granted in exchange for surrender of older leases.</p>
<p>For those who are in their first term, the <strong>75-T1</strong> 
leases, they have a right of renewal for another 75 years at <em>&quot;such rent as shall be fairly and impartially fixed...as the 
fair and reasonable rental value of the ground at the date of such renewal&quot;</em>, 
according to their standard lease terms. The legislation on what those words 
should mean, now known as the
<a href="http://www.hklii.hk/hk/legis/en/ord/40/" target="_blank">Government 
Leases Ordinance</a>, was passed in 1973, and as we explained in Part 1, there was heated 
debate resulting in something far more generous to landlords than the natural 
meaning of the lease wording, namely that leases would 
be renewed at a ground rent of just
<a href="http://www.hklii.hk/hk/legis/en/ord/40/s9.html" target="_blank">3% of rateable value</a> at the time, 
<u>fixed</u> for 
the duration of the second term. There is nothing to prevent the Legislative 
Council from passing an amendment to this law. However, holders of renewable 
leases may raise questions of legitimate expectation if this legislative 
windfall is undone without reasonable notice, so it would be wise not to make 
dramatic changes.</p>
<p>To sweep all this up, <strong>we propose that the GR30 policy for renewals 
and regrants be phased in over 27 years at an increment of 1% p.a., both for 
non-renewable leases, and for those renewable leases which have not yet arrived 
at their single renewal date.</strong> This would be done by amending the 
Government Leases Ordinance to cover all the types of leases discussed above. If 
the amended law was enacted in 2012, this would mean that leases expiring in 
2013 would get a GR4 lease, those expiring in 2014 would get a GR5 lease, and so 
on until those expiring in or after 2039 would get a GR30 lease. The law would 
provide certainty of renewal terms, and it would be open to leaseholders to make 
an early exchange of their lease (without accelerating the ground rent) so that 
they could lock in the new terms and remove any risk of future changes to the 
law. As noted above, one of the incentives for this early exchange could be that 
the GR30 lease would have either a 999-year or perpetual tenure, removing any 
renewal risk.</p>
<p>Because 2047 is still over 36 years away, switching from GR3 to GR30 in 2047 
would not have a large impact on current valuations, if any. We are talking 
about around 30% of what the property will be worth in 2047, discounted back to 
the present day. Given a risk premium of say 4% above the risk-free rate 
(because returns on property are volatile), this computes to around 1/(1.04)^36 
* 0.3 or around 7.3% of current value, but keep in mind that this could be 
offset by the removal of uncertainty by locking in the terms beyond 2047 now, 
for 999 years or in perpetuity.</p>
<h3>Premium Release Scheme</h3>
<p>Another option the Government could allow is what we will call the <strong>
Premium Release Scheme</strong>, or<strong> PRS</strong>. Upon tender from an 
owner of a GR3 lease, the Government could pay a premium to convert the lease 
from GR3 to GR30. This would, as indicated above, allow the release of 30% or 
more of the value to the owner, while still giving her full leasehold tenure. 
The Government might want to limit the amount of capital made available for 
this, perhaps on a quarterly basis. Adopting a fair and market-driven approach, 
each quarter, the Government would announce how much it was willing to spend, 
and invite applications from owners stating how much, per dollar of rateable 
value, they would accept to exchange their GR3 lease for a GR30 lease. The 
Government would then accept the bids in order of ascending price until it had 
filled the quota.</p>
<p>For example, let's suppose that a unit in a building on GR3 land has a market rental of 
$30,000 per month ($360k p.a.), a rateable value of $288k p.a., and an $8m 
market value (implying a gross yield of 4.5% p.a.). Then the owner might be 
willing to switch from a GR3 lease to a GR30 lease, in exchange for (using the 
estimate above) about 29.4% of $8m, or about $2.4m. If her tender is successful, 
then in exchange for $2.4m, her ground rent will increase by 27% of $288,000, or 
$77,760 p.a., or $6,480 per month, adjustable in line with rateable value. The 
Government has swapped $2.4m of capital for an income of $77,760 p.a., or an 
initial rate of return of 3.24%. This may seem low, but keep in mind that the 
income is linked to rateable value, which should rise in line with inflation, so 
it is more like investing in a perpetual inflation-linked bond.</p>
<p>At 30-Sep-2010, the Government had about HK$1,113bn of liquid reserves - the 
fiscal reserves and the accumulated surplus 
<a href="http://www.info.gov.hk/hkma/eng/press/2010/attach/20101029e3a1.xls" target="_blank">in the Exchange Fund</a>, 
HK's own quasi-sovereign wealth fund. To be clear, that is the amount in excess 
of what is needed in the Exchange Fund to back the HK$ peg. It also excludes the 
money sloshing around in various Government funds and statutory bodies such as 
the SFC, <a href="MPFAbloat.asp">MPFA</a>, URA,
<a href="hkpost.asp">Post Office</a>, Housing Authority, Innovation 
and Technology Fund and so on. Some of them place their funds with the Exchange 
Fund, currently at $68bn, while others place their funds without external 
managers under an investment committee.</p>
<p>The Premium Release Scheme could also apply to those who hold leases which 
are currently on fixed ground rents, including even 999-year leases. Again on a 
voluntary basis, these GRF leases could be exchanged for GR30 leases. The tender for these 
would be on the basis of 30% of adjustable rateable value, with a tabulated 
schedule provided by Government to deduct the net present value of the fixed 
rent stream (plus any renewal obligation). So the GRF leaseholder would be 
swapping his obligation to pay fixed ground rent for an obligation to pay GR30 
rent plus receipt of a premium.</p>
<h3>Securitisation as PRS Bonds, or HIPS</h3>
<p>Apart from returning hoarded capital to the market in the Premium Release 
Scheme, the Government could also finance the scheme by issuing inflation 
index-linked bonds, or by securitising the ground rents (wrapping them into a 
bond) and selling the bonds back to the market as <strong>PRS Bonds</strong>. 
The ground rents, being linked to rateable value, are a natural hedge against 
inflation. For long-term investors, such as retirement funds, there is latent 
demand for a product which will provide inflation-linked income.</p>
<p>So at the same time as releasing equity to property owners, those who 
needed to plan for the cost of living could buy the PRS Bonds or alternatively 
just bonds with income linked to the Consumer Price Index. The US already 
has such index-linked products, known as
<a href="http://www.treasurydirect.gov/indiv/products/prod_tips_glance.htm" target="_blank">
Treasury Inflation-Protected Securities</a>, or TIPS. The Hong Kong version 
could, of course, be called <strong>HIPS</strong>. Importantly, those who are 
retiring and will need an income stream to pay future ground rents on their GR30 
lease could invest in PRS Bonds or HIPS as a hedge, perhaps using some of their MPF 
money, if there is <a href="mpfcost.asp">anything left of it</a>.</p>
<h3>Effect on Government Revenues</h3>
<p>Government revenues have fluctuated wildly over the years, partly because of 
land premiums, and partly because of the increasing fiscal
<a href="stampout.asp">addiction to stamp duty</a>, a frictional tax 
which puts sand in the wheels of the economy and should be abolished. However, 
the overall result has been a structural cash surplus at the expense of future 
income from ground rents. By shifting the balance towards ground rents, the 
Government would defer income and build a more stable revenue base to match its 
future expenditure. It would be less tempted to blow lump sums on wasteful 
projects.</p>
<p>The latest available
<a href="http://www.rvd.gov.hk/en/doc/annualsummary/as00_09_table.pdf" target="_blank">
figures</a> from the Ratings and Valuation Department show that HK rateable 
premises had a rateable value of HK$368.7bn at 1-Apr-2009:</p>
<img class="center" alt="Rateable values" src="../images/RV09.gif">
<p>That's probably up about 10% by now, so call it $400bn.&nbsp;If just 10% of that 
could be converted into GR30 leases, it would bring in an extra 27% of $40bn, or 
$10.8bn p.a., adjustable with rateable values. As a rough estimate, the gross 
rental yield on this property might average 4.5%, so if rateable value is about 
80% of gross rent, then the market value of the properties would be about 
$1,111bn in GR3 lease form. At an estimated cost of about 30%, conversion to 
GR30 leases would cost about $333bn.</p>
<p>Even if none of the existing base was touched, there are new land sales 
and lease modifications every year, including vast tracts of former farm land in 
the New Territories still to be developed. In the first 7 months of fiscal 
2010-11, the Government has already
raked in $37.9bn in 
<a href="http://www.landsd.gov.hk/en/landsale/records/2010-2011.pdf" target="_blank">land sales</a> (excluding petrol stations), $11.7bn in
<a href="http://www.landsd.gov.hk/en/exc_mod/ptg/ptg2010e.pdf" target="_blank">
private treaty grants</a> to the MTRC and several billion in other
<a href="http://www.landsd.gov.hk/en/exc_mod/exc/exc2010e.pdf" target="_blank">
land exchanges</a> and
<a href="http://www.landsd.gov.hk/en/exc_mod/mod/mod2010e.pdf" target="_blank">
lease modifications</a>.</p>
<p>Just taking the first two of those categories, the premiums are 
$49.6bn. If the leases had been on GR30 rather than GR3 terms, then we estimate 
the premiums would have been lower by about one third, or about $16bn. Instead, 
the Government would have received additional ground rents on about 6m gross sq 
ft of property. Assume an average gross rent of $35/gsf per month. Taking a 
rateable value per square foot of about $35*0.8*12=$336/gsf, that's a ground 
rent increment of about 27%*$336*6m=$544m. The year still has 5 months to run, 
but it's been a good one, so let's just call it a year and assume that $50bn (in 
current dollars) would be the average in land premiums for the next 10 years under GR3 terms. By 
shifting to GR30, instead of $160bn of land premiums that it doesn't need, the 
Government would build up (in 2010 terms) an incremental ground rent of about 
$5.5bn per year, indexed to rateable values forever.</p>
<p>When the current bubble bursts, yields will go up and premiums will come 
down. Then the trade-off between land premiums and ground rents will look even 
more attractive from the Government's point of view, as there has not been as 
large an increase in rents as there has been in valuations. So they will forego 
less premium for each recurrent dollar of ground rents.</p>
<h3>The opportunity</h3>
<p>Hong Kong's high-premium low-rent land lease policy, which has evolved since World War 
II, and the developer cartel it has fostered, is at the root of so many economic 
and even social problems. Disregarding the current bubble, the system is still structurally crying out for reform. By 1-Jul-2012 (if not 
before), Hong Kong will have a new Chief Executive. The candidates are already 
emerging. Whoever wins may lead HK until 2022, just 25 years before the mass 
lease expiry in 2047. If any substantial change is to be made to the renewal and 
regrant policy for leases, it must be done during the next few years to have 
negligible impact on valuations. So candidates for 2012 should focus on this 
issue seriously and consider the many merits of rebalancing the land revenue 
system in their first term, particularly given the possibility that they will 
face a re-election contest by universal suffrage in 2017 rather than a 
1200-member committee. The concerns of property tycoons must give way to the 
greater good of Hong Kong.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=159">Land leases</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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