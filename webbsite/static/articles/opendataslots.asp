
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

<script type="text/javascript">document.title="Webb-site opens airport slot data";</script>

	<div class="summary">HK needs a full debate about how we optimally allocate scarce resources, whether it is radio spectrum for mobile phones and broadcasting, or in this case, for takeoff and landing slots at HK's airport. To facilitate that debate, Webb-site is today decrypting the Civil Aviation Department's slot data and calling for it to be added to the Data.One government portal in a machine-readable format.</div>

<h2 class="center">Webb-site opens airport slot data<br>
<span class="headlinedate">9 September 2013</span></h2>
<p>With a little help from our friends at the NSA (or possibly from a single 
desktop PC), Webb-site is pleased to bring you greater transparency over the 
slot system for takeoffs and landings at Hong Kong's Airport. The Civil Aviation 
Department (<strong>CAD</strong>) publishes slot data on
<a href="http://www.hkgslot.gov.hk/Slot_Listing.html" target="_blank"><strong>
this page</strong></a>, but in a rather feeble attempt to limit access to the 
airlines of the world and not the general public, it has put passwords on all 
the PDF files. It can hardly be a secret if all the air transport operators can 
see it, but there you go.</p>
<p>So, without further ado, let's liberate the data. The passwords for files in the columns headed 
&quot;Scheduled&quot;, &quot;Adhoc&quot; and &quot;Initial Submission&quot; is: <strong>hkg135</strong>. 
Presumably &quot;Initial submission&quot; is what the operators ask for, and &quot;Scheduled&quot; is what 
they actually get. Private planes, known by the industry euphemism of &quot;GA&quot; 
(General Aviation) have their own password to keep them apart from the rif-raff 
of scheduled services. So the password for the GA files&nbsp; is: <strong>hkg246 </strong>
(yes, they just incremented the numerals).</p>
<p>In the spirit of the Government's own
<a href="http://www.gov.hk/en/theme/psi/freqaskedquestions/" target="_blank">
Data.One project</a> to disseminate Public Sector Information (<strong>PSI</strong>), 
we call on the CAD to remove all the passwords. In the meantime, since this is 
PSI, we have kept a copy of the files, and if they change the passwords, then we 
will make the data available on this Webb-site page instead, so what would be 
the point?</p>
<p>Having removed the passwords, the CAD should then go further and make this 
data available to the public as a machine-readable database rather than scanned 
prinouts. This would then allow analysts, economists and other academic 
researchers to drill down into the distribution of seats in airlines serving 
Hong Kong - how many are narrow-bodied, how many wide-bodied, the frequency 
distribution of flights and routes, actual slot utilisation at different times 
of day/week, slots per airline and so on. For example, by aggregating the data we could find out 
how many seats, rather than planes, actually take off in any hour of the day.</p>
<p>Slots at the airport are a precious public asset, but there is no 
market-based system for allocating them - it is first-come first-served, and 
once held, you can keep them as long as you use them. There should be an open 
debate about whether this produces the optimal outcome for the public interest, 
in terms of competition for passengers and cargo customers, and in terms of the 
return to the taxpayer who subsidises airport construction and expansion.</p>
<p>The data in some of the recent files is a bit hard to read, being a scanned 
printout rather than original file, and lacking column headings. However, by 
looking at a digital file which does have column headings (<a href="http://www.hkgslot.gov.hk/Slot_listing_details/w09unconstrained.pdf" target="_blank">Winter 
2009 Submissions</a>, password hkg135), we can deduce what they mean 
(corrections welcome):</p>
<table class="txtable">
	<tr>
		<td>arropr</td>
		<td>Arrival air operator code (e.g. BA=British 
		Airways).
		<a href="http://www.iata.org/publications/Pages/code-search.aspx" target="_blank">
		Decode these at IATA</a></td>
	</tr>
	<tr>
		<td>arrflt</td>
		<td>Arrival flight number</td>
	</tr>
	<tr>
		<td>depopr</td>
		<td>Departure air operator code</td>
	</tr>
	<tr>
		<td>depflt</td>
		<td>Departure flight number</td>
	</tr>
	<tr>
		<td>frdate</td>
		<td>the starting date of the schedule</td>
	</tr>
	<tr>
		<td>todate</td>
		<td>the ending date of the schedule</td>
	</tr>
	<tr>
		<td>dop</td>
		<td>Days in the week operating (1=monday). So 
		0200007 is a flight which departs on Tuesdays and Sundays</td>
	</tr>
	<tr>
		<td>seatnbr</td>
		<td>Number of passenger seats (0 for freighters)</td>
	</tr>
	<tr>
		<td>acft</td>
		<td>Aircraft type</td>
	</tr>
	<tr>
		<td>orgstn</td>
		<td>Originating airport</td>
	</tr>
	<tr>
		<td>prvstn</td>
		<td>Previous airport</td>
	</tr>
	<tr>
		<td style="height: 20px">arrtime</td>
		<td style="height: 20px">arrival time</td>
	</tr>
	<tr>
		<td>deptime</td>
		<td>departure time</td>
	</tr>
	<tr>
		<td>overngt</td>
		<td>number of nights the plane is in HK at midnight?</td>
	</tr>
	<tr>
		<td>nxtstn</td>
		<td>next destination airport</td>
	</tr>
	<tr>
		<td>dststn</td>
		<td>final destination airport</td>
	</tr>
	<tr>
		<td>arrvsvc</td>
		<td>arrival service type (<a href="http://www.hkgslot.gov.hk/others/SCR%20Guide.pdf" target="_blank">guide 
		on page 15</a>)</td>
	</tr>
	<tr>
		<td>depsvc</td>
		<td>departure service type</td>
	</tr>
</table>
<p>In Scheduled and Submission files with no column headings, the columns appear 
in the same order, but:</p>
<ul>
	<li>the 2-character airline code and the flight number are joined 
	together and the arrival flight is prefixed with an &quot;H&quot;</li>
	<li>the seatnbr and acft columns are joined (e.g. 164320 is a 164-seat 
	Airbus A320)</li>
	<li>the orgstn and prvstn columns are joined</li>
	<li>the nxtstn and dstsstn columns are joined</li>
</ul>
<p>In the GA (mostly private jets) files, the first column is 
the tail number of the aircraft - you can look them up on
<a href="http://www.airframes.org/" target="_blank">Airframes.org</a> and see 
tracks and photos on <a href="http://www.flightaware.com" target="_blank">
FlightAware</a>. The notable thing about this is just how much of these slots 
are taken up with low capacity jets, typically between 10 and 20 seats. See the 
latest
<a href="../codocs/slots/s13ga.pdf" target="_blank">summer 2013</a> GA file (<del>password: hkg246</del>) for example 
(update, 10-Dec-2013: they changed the passwords - so we are republishing the 
data ourselves).</p>
<p><strong>Update</strong>, 16-Jul-2014: A group concerned with the airport 
development proposals recently analysed the slot data we opened last year to 
show the usage patterns. The Government has changed the passwords on all the 
online files, even though many airports publish this data openly. In the 
interests of transparency and accountability, you can download the entire set of 
files as of 9-Sep-2013 (the original publication date of this article) at
<strong><a href="../codocs/slots/SlotListing130909.pdf">this link</a></strong>.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2123">AIRPORT AUTHORITY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=46253">HKSAR Committee on Slot Complaints</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=13">Aviation</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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