
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

<script type="text/javascript">document.title="Hong Kong's not-so-free economy";</script>

	<div class="summary">The US-based Heritage Foundation has, as always, ranked HK as the freest economy in the World. For once, the Government doesn't accuse foreign forces of interfering in HK's internal affairs. But this rosy view is not held by those who take the time to study the domestic economy. Here are a few things that Heritage may have overlooked.</div>

<h2 class="center">Hong Kong's not-so-free economy<br>
<span class="headlinedate">4 February 2018</span></h2>

<p>In the wake of The Heritage Foundation declaring HK to be the
<a href="https://www.heritage.org/index/" target="_blank">World's Freest Economy</a> 
for the 24th year running, here is a list of just a few things that they may 
have overlooked, in no particular order:</p>
<h3>Transport</h3>
<ul>
	<li>The Government sets the fares of buses and green Public Light Buses 
	(<strong>PLBs</strong>, or minibuses) and decides who can run bus routes and which bus routes they 
	must run in exclusive franchises, cross-subsidising loss-making routes with 
	profitable ones.</li>
	<li>The Government sets taxi fares in each of 3 geographic territories 
	(Urban, New Territories and Lantau). Within each territory, the tariff must 
	be the same for all operators, eliminating any price competition between 
	them.</li>
	<li>To drive a taxi for a living, you must pay someone else not to, by 
	renting or buying their licence. There are only 18,163 licences. There have been no red (Urban) or green 
	(New Territories) licences issued since 1994, despite huge demand, resulting 
	in a current <a href="http://www.taxixchange.com" target="_blank">premium</a> 
	of around HK$6m per licence. When 25 blue (Lantau) taxi licences were 
	tendered in Apr-Aug-2016 (the first since early 1997),
	<a href="../codocs/LantauTaxiTenderResults2016.pdf" target="_blank">they 
	fetched</a> an average HK$5.64m each.</li>
	<li>There have been no new Public Light Bus licences issued since 1976. 
	There is so much excess demand that the 4,350 licences are currently worth 
	about HK$4.44m each, based on the 30-Sep-2017 
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/1215/LTN20171215181.pdf" target="_blank">interim report</a> of
	<a href="../dbpub/orgdata.asp?p=20788">AMS Public Transport Holdings Ltd</a> 
	(0077).</li>
	<li>There is a <em>de facto</em> cap of 7,000 Non-Franchised Buses (<strong>NFBs</strong>), which 
	are used for residents' shuttle-buses, school buses and tourism amongst 
	other things. The excess demand for these results in a premium of about 
	HK$2.5m per licence. That was the value attributed to each licence when the 
	largest operator, <a href="../dbpub/articles.asp?p=4894">Kwoon Chung Bus 
	Holdings Ltd</a> (0306)
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0901/LTN201609012235.pdf" target="_blank">
	bought companies</a> which owned 98 of them on 1-Sep-2016.</li>
	<li>No wonder then, that at peak times, many people can't get a seat on a 
	minibus or in a taxi, and resort to driving a private car to get kids to 
	school or go to work.</li>
	<li>What's holding back reform? Vested interests who elect the Chief 
	Executive. We also note that there is no public declaration of family 
	interests in taxi, PLB or NFB licences by members of the Government, 
	Executive Council or Legislative Council.</li>
	<li>There are statutory caps on the numbers of Private Hire Car licences 
	(400 for Hotel Service, 400 for Tour Service, 1500 for Private Service). In 
	practice, the Government has not even issued all of those (only 162, 116 and 
	648 respectively at Jul-2017), making it 
	practically illegal for anyone to drive a private hire car for Uber or its 
	competitors. The Government has reacted to Uber et al by proposing yet 
	another quota-based "franchised taxi" scheme for 600 fixed-term licences in 
	3 franchises of 200 cars each, a mere 3.3% increase in supply.</li>
	<li>Meanwhile, the Consumer Council has
	<a href="https://www.consumer.org.hk/ws_en/competition_issues/reports/2017/car-hailing.html" target="_blank">
	gently suggested</a> that if the franchised taxi scheme doesn't "deliver its 
	promise" (whatever that means), the Government should consider at least 
	issuing the remaining 852 Private Hire Car licences, which would barely make 
	a difference, and even then, they suggest vehicles should not be older than 
	7 years. Our Toyota Picnic is just fine and perfectly roadworthy at 12+ 
	years, so why can't we start driving it for hire?</li>
	<li>While you can't get a taxi, a minibus seat or rent a hire car with 
	driver, this is not a problem if you have a private driver for your own car, 
	or hold a senior government position which includes a chauffeured car, 
	leaving many of the elite clueless as to why the public are so unhappy with 
	the system.</li>
	<li>For more on the transport cartels, <a href="../dbpub/subject.asp?c=180">click here</a>.</li>
	<li>By the way, the Government unfairly competes with private parking operators by 
	charging only up to HK$2 per 15 minutes for metered parking spaces and even 
	then, only sporadically enforcing the charge.</li>
</ul>
<h3>Finance</h3>
<ul>
	<li>We have a statutory monopoly stock exchange. The law
	<a href="hkexopoly.asp">prohibits anyone</a> from operating a 
	stock market unless they are The Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>) 
	or its controller, <a href="../dbpub/articles.asp?p=9643">Hong Kong 
	Exchanges and Clearing Ltd</a> (<strong>HKEX</strong>, 0388). So we have no competition for exchanges. The 
	result is higher transaction costs, wider bid-offer spread tables and more 
	rigid practices than a competitive market would produce. It is no 
	coincidence that HKEX's future profits are valued at some 1% of the entire 
	market, making it the
	<a href="../dbpub/mcaphist.asp?e=a&amp;s=mcpdn&amp;t=s&amp;d=2018-01-31">
	15th largest HK-listed company</a> at the end of January.</li>
	<li>Despite only holding 6% of HKEX, the Government controls it by a 
	statutory scheme which only allows shareholders to elect 6 out of 13 seats.
	</li>
	<li>The Government has
	<a href="http://www.hklii.hk/eng/hk/legis/reg/619B/sch.html" target="_blank">
	exempted</a> HKEX and its subsidiaries, including SEHK, The Hong Kong 
	Futures Exchange Ltd and their respective clearing houses, from the
	<a href="http://www.hklii.hk/eng/hk/legis/ord/619/" target="_blank">
	Competition Ordinance</a>.</li>
	<li>Although hundreds of different bond issues are "listed" on the Stock 
	Exchange, they almost never trade there. The 
	<a href="../dbpub/articles.asp?p=3295">HK Monetary Authority</a> allows retail banks to 
	distribute new bonds to the public, but does not require the banks to obtain 
	"best execution" (the best available price) when customers want to sell or 
	buy existing bonds. That results in
	<a href="https://www.cmu.org.hk/" target="_blank">wide bid-offer spreads</a> 
	to captive bank customers, and deters the public from moving their cash out 
	of bank deposits, which protects the cheapest source of funding for banks. 
	This protectionism is why HK does not have a liquid retail bond market. The 
	HKMA is more interested in bank stability than in competition, when it has 
	to make a choice between these goals.</li>
</ul>
<h3>Commerce</h3>
<ul>
	<li>We have a gambling monopoly. Nobody can operate a bookmaker or lottery in Hong Kong unless they are the Hong Kong Jockey Club, 
	which takes bets on horse races, overseas soccer matches and runs the Mark 
	Six Lottery. There are no betting exchanges. It is also
	<a href="http://www.hklii.hk/eng/hk/legis/ord/148/s8.html" target="_blank">
	illegal for anyone</a> (including tourists) to place a bet from within HK 
	with a licensed overseas bookmaker. This is a protectionist measure to 
	bolster the Jockey Club's monopoly. The vast bulk of the profit goes 
	straight to the Government as betting duty, but to provide a fig leaf excuse 
	for the monopoly, some of the profit is washed through the Jockey Club 
	Charities Trust which does things the Government would do anyway like build 
	clinics or school buildings, or things the Government doesn't wish to 
	justify to the LegCo Finance Committee, such as the Central Police Station 
	project or the Palace Museum.</li>
	<li>Casinos are illegal (unless you count the stock exchange). That's part 
	of a national policy to protect the other Special Administrative Region, 
	Macau, which has no stock exchange. However, China is now
	<a href="https://www.bloomberg.com/news/articles/2018-02-02/china-is-said-to-mull-legal-gambling-on-hainan-in-landmark-shift" target="_blank">
	reportedly</a> considering allowing casinos in Hainan, so if Hainan, then 
	maybe HK too, but we wouldn't bet on either happening. The Hainan rumour 
	could just be a wish inspired by
	<a href="https://www.reuters.com/article/us-hna-group-debt/hnas-problems-mount-as-airlines-delay-payments-bank-sets-up-team-to-handle-debt-sources-idUSKBN1F40M5" target="_blank">
	HNA Group's reported problems</a>.</li>
	<li>It is <a href="tickets2.asp">illegal to resell</a> 
	entertainment tickets for more than their face value (except for events at 
	venues controlled by the Leisure and Cultural Services Department). As a 
	result, HK has no viable ticket agents or exchanges.</li>
	<li>The Government, via the <a href="../dbpub/orgdata.asp?p=1041">HK Trade 
	Development Council</a>, competes with private sector exhibition organisers.</li>
	<li>The Government, via <a href="../dbpub/orgdata.asp?p=13499">The Hong Kong 
	Mortgage Corporation Ltd</a> (with an implicit Government guarantee) 
	competes with private sector insurers, providers of reverse mortgages and 
	providers of "microfinance".</li>
	<li>The Government, via the <a href="../dbpub/orgdata.asp?p=16652">HK Export 
	Credit Insurance Corporation</a>, competes with private sector credit 
	insurers.</li>
	<li>The Government, via the <a href="../dbpub/articles.asp?p=17936">
	Cyberport</a> and the <a href="../dbpub/orgdata.asp?p=17972">Hong Kong 
	Science and Technology Parks Corporation</a> (which also operates the 
	less-sexy Industrial Estates), unfairly competes with private sector owners 
	of industrial, office, retail and hotel space.</li>
	<li>More generally, the Government distorts the efficient allocation of 
	scarce land resources by designating land for specific purposes such as 
	hotels or data centres rather than requiring those sectors to compete with 
	others in land sales. It also micro-manages land lease conditions, sometimes 
	specifying the minimum number of apartments that must be built on a 
	residential site, or that a specific
	<a href="https://www.legco.gov.hk/yr16-17/english/panels/itb/papers/itb20170410cb4-801-5-e.pdf" target="_blank">
	commercial development must include a cinema</a> (as proposed).</li>
	<li>The Government owns theme parks - 100% of
	<a href="../dbpub/orgdata.asp?p=479">Ocean Park Corporation</a> and the 
	majority of <a href="../dbpub/articles.asp?p=29477">Hongkong International 
	Theme Parks Ltd</a>, the owner of HK Disneyland, which was given 126ha of 
	land for only the cost of reclamation, accompanied by the usual claims of 
	"economic benefits" without looking at the economic opportunity cost. An 
	adjacent 60ha piece of reclaimed land sits vacant, under option to the 
	company.</li>
	<li>Information on companies is rationed behind the paywall of the
	<a href="../dbpub/articles.asp?p=2322557">Companies Registry</a>, reducing 
	transparency and facilitating fraud and corruption. The registry would make 
	a huge profit from filing fees alone, although it should be run on a cost 
	recovery basis, so it could easily afford to eliminate search fees, open up 
	the data and cut filing fees.</li>
	<li><a href="../dbpub/subject.asp?c=18">Electricity</a> is generated, 
	distributed and supplied by two de facto geographic monopolies, one for HK 
	Island and Lamma (where the power station is), and one for everywhere else. 
	Under the "Scheme of Control" since 1964, they are permitted a fixed 
	after-tax rate of return (now 8%, formerly even higher) on fixed assets, 
	after depreciation, fuel, labour and all other costs. Think of it as a 
	tax-free bond. The consumer tariff is <a href="electrictax.asp">
	tilted</a> for political reasons, charging large households more per 
	incremental unit than small households with lower consumption. Live alone, 
	or get your own meter. In 2015, both the Competition Commission and the 
	Consumer Council <a href="../codocs/CC150921.pdf" target="_blank">urged</a> 
	the introduction of competition in the sector, following the example of 
	Singapore. The HK Government responded by
	<a href="http://www.info.gov.hk/gia/general/201704/25/P2017042500763.htm" target="_blank">
	locking in</a> the Scheme of Control for another 15 years until 2034.</li>
</ul>
<h3>Access to Justice</h3>
<ul>
	<li>Lawyers are
	<a href="http://www.hklawsoc.org.hk/pub_e/professionalguide/volume1/default.asp?cap=4.1.17" target="_blank">
	prohibited</a> from charging on a contingency fee basis in contentious 
	proceedings.</li>
	<li>The law (with narrow exceptions) prohibits
	<a href="../dbpub/subject.asp?c=109">champerty and maintenance</a>, 
	effectively outlawing third-party litigation financing. These medieval 
	offences were abolished in the UK in 1967.</li>
	<li>There is no <a href="../dbpub/subject.asp?c=111">class action system</a> 
	in HK to provide access to justice in cases involving a dispersed group of 
	victims. In 2012 after 3 years of study and consultation, the Law Reform 
	Commission recommended the introduction of a limited system for consumer 
	actions relating to goods and services (but not investments). The Government 
	deferred this by forming another committee to study the proposals which, 
	over 5 years later, has yet to report back.</li>
</ul>
<h3>Professional services</h3>
<ul>
	<li>Barristers operate a semi-closed shop, resisting the inflow of 
	competition from other common-law jurisdictions by
	<a href="http://www.hklii.hk/eng/hk/legis/reg/159AC/s4.html" target="_blank">
	requiring them</a> to take a full examination and 6 months of pupillage even 
	if they only wish to practice in their own expert area. Ad hoc admissions to 
	work on specific cases are also routinely opposed in court by the Bar 
	Association.</li>
	<li>Doctors, via the Medical Council, also operate a semi-closed shop by 
	requiring anyone moving to HK to take a full general Licensing Examination 
	even if they only wish to practice in their specialist field. There is a 
	form of "<a href="http://www.mchk.org.hk/english/registration/limited_registration.html" target="_blank">Limited 
	Registration</a>" for only 12 months at a time without the exam, but
	<a href="http://www.info.gov.hk/gia/general/201801/12/P2018011200352.htm" target="_blank">
	at 12-Jan-2018</a> there were just 12 such doctors in the Hospital 
	Authority, despite the shortage of doctors in HK. The uncertainty of only a 
	12-month licence is obviously a deterrent to any professional who might move 
	to HK. The shortage has been exacerbated by the increasing demand for 
	medical services from mainland visitors, drawing talent from the public to 
	private sectors, and also by the aging population.</li>
</ul>
<h3>Real estate markets</h3>
<ul>
	<li>Companies and non-permanent residents (those who have lived less than 7 
	years in HK) are charged a prohibitive 30% stamp duty (including 15%
	<a href="../dbpub/subject.asp?c=107">Buyer's Stamp Duty</a> or <strong>BSD</strong>) 
	to buy staff quarters or a home in HK, forcing them to rent instead. At the 
	high end, a lot of residential properties were already owned by companies 
	before the relevant law took effect, so the companies are transferred 
	instead.</li>
	<li>If a person sells a home within 3 years of purchase, the transaction 
	incurs a punitive "<a href="../dbpub/subject.asp?c=187">Special Stamp Duty</a>" 
	(<strong>SSD</strong>) of up to 20% of value, regardless of whether they 
	have made a gain. This can catch out anyone who needs to relocate or 
	downsize, or simply wishes to reduce risk after a rise in value, forcing 
	them to wait until the 3 years are over, thereby keeping potential supply 
	off the market. This has also stifled the industry of small businesses who 
	would buy, renovate and sell old apartments.</li>
	<li>There is up to 8.5% "<a href="../dbpub/subject.asp?c=131">Double Stamp 
	Duty</a>" (<strong>DSD</strong>) on the transfer of non-residential 
	properties. This deters businesses from buying office or retail premises and 
	fitting them out for long-term use, and traps landlords. Both have to work 
	around it by transferring companies which own properties instead.</li>
	<li>Even permanent residents must pay 15% stamp duty on a residential 
	property unless it is or will be their only home. This also deters people 
	from buying to let.</li>
	<li>None of these higher rates of stamp duty were introduced for the purpose 
	of raising government revenue (which would be a legitimate, if inefficient, 
	form of taxation under
	<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
	Article 108</a> of the Basic Law). They were instead successively introduced 
	to deter "speculation" or as "cooling measures", in the mistaken belief that 
	reducing transaction volume by increasing transaction costs would affect the 
	value of properties. Value is in reality determined by the net present value 
	of expected future rentals, which incorporates assumptions about interest 
	rates, supply of properties and end-user demand.</li>
	<li>Basic Law
	<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
	Article 105</a> states that the HKSAR shall "protect the right of 
	individuals and legal persons to the acquisition, use, disposal and 
	inheritance of property". That includes real estate.
	<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">
	Article 25</a> states that "All Hong Kong residents shall be equal before 
	the law" and Article 24 defines "Hong Kong residents" to include 
	non-permanent residents. Since the various extra stamp duties are not for 
	the purpose of revenue raising, and since they lack any other legitimate 
	purpose and (unsurprisingly) have not had the intended effect, they should 
	be void for restricting rights promised by the Basic Law without 
	constitutional necessity. However, no affected person has yet filed a 
	judicial review of this, so the courts have not opined on it. In any event, 
	the punitive and prohibitive stamp duties are clearly inconsistent with economic freedom.</li>
	<li>The extra duties deter assembly of units in old buildings by the private 
	sector for redevelopment, because if a would-be developer reaches the 
	requisite 80% or 90% ownership threshold to trigger an auction of the whole 
	block under the
	<a href="http://www.hklii.hk/eng/hk/legis/ord/545/" target="_blank">Land 
	(Compulsory Sale for Redevelopment) Ordinance</a>, then the developer may 
	lose the auction and never recover the 30% stamp duty it has paid for 
	residential units (or 8.5% for non-residential). Only the person who wins 
	the auction, demolishes the acquired property and commences rebuilding can 
	recover excess stamp duty.</li>
	<li>This leaves the Government's <a href="../dbpub/articles.asp?p=16864">
	Urban Renewal Authority</a> with an unfair advantage in redevelopment.
	<a href="http://www.hklii.hk/eng/hk/legis/ord/563/s29.html" target="_blank">
	On request</a> from the URA, the Government can invoke powers under the
	<a href="http://www.hklii.hk/eng/hk/legis/ord/124/" target="_blank">Lands 
	Resumption Ordinance</a> to compulsorily acquire properties without having 
	voluntarily acquired 80% or 90% as the private sector must. To avoid 
	opposition, the URA pays above fair value to owner-occupiers of the 
	dilapidated properties by treating the flats as only 7 years old, handing 
	windfalls to owners, distorting the market and, as they put it in their 2017 
	annual report: "posing serious threat to our financial soundness". Of 
	course, any stamp duty that the URA pays loops back to the Government, 
	giving the URA another unfair advantage.</li>
</ul>
<p>We could continue, looking at cartels in various sectors, wasteful 
state-driven infrastructure projects which suck up taxpayers' resources, yet another 
Government-planned "innovation and technology" hub at the Lok Ma Chau Loop, or 
non-means-tested welfare spraying, but you get the picture. While HK scores high 
on freedom of international trade, it is domestically far from being a free 
economy and heading further away with every additional Government intervention.</p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=20788">AMS PUBLIC TRANSPORT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2322557">HKSAR Companies Registry</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17936">HONG KONG CYBERPORT MANAGEMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1415">HONG KONG JOCKEY CLUB (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13499">HONG KONG MORTGAGE CORPORATION LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17972">HONG KONG SCIENCE AND TECHNOLOGY PARKS CORPORATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=29477">HONGKONG INTERNATIONAL THEME PARKS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4894">KWOON CHUNG BUS HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=479">OCEAN PARK CORPORATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16864">URBAN RENEWAL AUTHORITY</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=107">Buyer's Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=109">Champerty & maintenance</a></li>
				
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
				<li><a href="/dbpub/subject.asp?c=131">Double Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=18">Electricity</a></li>
				
				<li><a href="/dbpub/subject.asp?c=55">Gambling</a></li>
				
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=180">Road transport</a></li>
				
				<li><a href="/dbpub/subject.asp?c=187">Special Stamp Duty</a></li>
				
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