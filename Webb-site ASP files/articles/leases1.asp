
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

<script type="text/javascript">document.title="Hong Kong Land Lease Reform, Part 1";</script>

	<div class="summary">In the first of a two-part article, we examine the 169-year history of lease tenures in HK, which ended up with a high-premium low-rent land lease policy with relatively short leases. It wasn't always this way, but before making the case for change, we explain the historical context.</div>

<h2 class="center">Hong Kong Land Lease Reform, Part 1<br>
<span class="headlinedate">7 October 2010</span></h2>
<p>A few months back, in our article &quot;<a href="larvotto.asp">Larvotto 
- do you know the boatyard?</a>&quot;, we made a passing reference to the fact that, 
like many properties in the HKSAR, it stands on relatively short leasehold land - in Larvotto's case, 37 years remaining until what we call the &quot;Second Handover&quot; on 
30-Jun-2047. We also mentioned in our article
<a href="conduitroad.asp">Conduit Controversy</a> on 39 Conduit Road 
that the lease has 51 years remaining, until 19-Nov-2061.</p>
<p>We promised to return to the subject of HK's 
leaseholds in a future article, and this we now do. It is no exaggeration to say 
that the terms of sale of land leases are pivotal to the 
government's revenue and to the dominance of the property tycoons in the real 
estate market. Over the years since World War II, what started as a relatively 
balanced situation between ground rents and up-front premiums has morphed into a 
system of very low ground rents and massive up-front premiums for the right to 
develop or redevelop land. This has the following consequences:</p>
<ul>
	<li>only a handful of large developers have big enough balance sheets to 
	afford large-scale projects on their own, reducing competition;</li>
	<li>the Government receives lump-sum revenues in return for future land use, 
	rather than recurrent ground rents which would smooth out revenues and allow 
	it to match future expenditure with income;</li>
	<li>as a result, the Government piles up cash and then invests it in the 
	markets, creating conflicts of interests;</li>
	<li>the Government earmarks the land premiums in the Capital Works Reserve 
	Fund, and then feels obliged to spend it on infrastructure projects 
	regardless of their economic value; and</li>
	<li>businesses and individuals have excessive amounts of capital tied up in 
	properties, rather than paying less up-front and carrying obligations to pay 
	future ground rents.</li>
</ul>
<p>Current Government policy, but not law, is normally, in it sole discretion, 
to grant 50-year extensions of expiring leases without payment of premiums, but in return 
for an annual ground rent of just 3% of adjustable rateable value (the rent the 
property would fetch), leaving the other 97% for the leaseholder, a huge 
windfall. A future administration could and should change that policy, along 
with the high-premium low-rent policy on new land sales and lease conversions. 
For renewals, it would be unfair to shock the market with a change in policy 
near 2047, when many leases expire, but to change the policy now, with over 36 
years to go, would not have a major impact on values.</p>
<p>We will advocate a solution to these problems in more detail in Part 2 of 
this article next week, but first, it is important to set out the historical 
context and to explain the various tenures of existing land leases in HK, which 
evolved from the beginning of the colonial era.</p>
<h3>The beginning</h3>
<p>The British took possession of Hong Kong Island on 26-Jan-1841 (although 
<a href="http://en.wikipedia.org/wiki/Edward_Belcher" target="_blank">Captain Edward Belcher</a> of HMS Sulphur landed a day earlier), and 
<a href="http://en.wikipedia.org/wiki/Charles_Elliot" target="_blank">Captain 
Charles Elliot</a>, who was then in charge, had to organise a system 
for the allocation of land, although as you will see, it was flawed - he was a 
Navy man, not an economist. This was in the midst of a land grab by the opium 
traders such as Jardine Matheson, who had inspired the war in the first place. 
Waterfront land was particularly important, not for the views (as it is today) 
but for the ability to build wharves and godowns (warehouses) for shipping and 
the potential to expand it by private reclamation, as many early owners did. 
Captain Belcher's map of 1841 is below (click on it for a larger version):</p>
<a href="http://upload.wikimedia.org/wikipedia/commons/e/ee/Hong_Kong_Map_made_by_Edward_Belcher_in_1841.jpg" target="_blank">
<img class="center" alt="HK Map by Sir Edward Belcher, 1841" src="../images/HK1841.jpg"></a>
<p>On 1-May-1841, 
Elliot published a 
draft notice from Macau, with some blanks relating to the number and extent of 
allotments and period of sale, declaring that:</p>
<blockquote>
	<p>&quot;Arrangements having been made for the permanent occupation of 
	the Island of Hongkong it has become necessary to declare the principles and 
	conditions upon which allotments of land will be made, pending her Majesty's 
	further pleasure...</p>
	<p>Each allotment to be put up at public auction at a certain 
	upset rate of quit rent and to be disposed of to the highest bidder; but it is 
	engaged upon the part of Her Majesty's Government, that persons taking land upon 
	these terms shall have the privilege of purchasing in freehold (if that tenure 
	shall hereafter be offered by Her Majesty's Government), or of continuing to 
	hold upon the original quit rent, if that condition be better liked....</p>
	<p>In order to accelerate the establishment, notice is hereby 
	given that a sale of [BLANK] town allotments, having a water frontage of [BLANK] 
	yards, and running back [BLANK] yards, will take place at Macao on the [BLANK] 
	instant, by which time, it is hoped, plans, exhibiting the water front of the 
	town, will be prepared.</p>
	<p>Persons purchasing town lots will be entitled to purchase 
	suburban or country lots of [BLANK] square acres each, and will be permitted, 
	for the present, to choose their own sites, subject to the approval of the 
	Government of the Island...&quot;</p>
</blockquote>
<p>The &quot;<a href="http://en.wikipedia.org/wiki/Quit-rent" target="_blank">quit 
rent</a>&quot; means the annual rent for exclusive use of the land, and the &quot;upset 
rate&quot; was the reserve price or minimum acceptable bid. So people were bidding 
based only on the amount of rent they would pay, even though the intent of the 
land was long-term building use. The flaw in this policy is that if market rents go 
down, then the leaseholder has a net liability and might even default or hand 
the land back, although that would be short-sighted if you had a long tenure and 
could expect future inflation of market rents to put you back in the black - but 
no tenure was specified. You will note that Elliot planned to throw in some 
&quot;suburban&quot; or non-waterfront land (later known as &quot;Town Lots&quot; and now as &quot;Inland 
Lots&quot;), presumably so that the merchants could build their mansions and shops.</p>
<p>On 7-Jun-1841, Captain Elliot filled in the blanks as follows:</p>
<blockquote>&quot;Notice is hereby given, that a sale of the annual quit rent 
of 100 lots of land having water frontage will take place at Hongkong, on 
Saturday, the 12th instant, as also of 100 town or suburban lots...&quot;</blockquote>
<p>Note that the venue had moved from Macau to HK. It turned out that they didn't have enough land for 100 seafront lots (later 
known as &quot;Marine Lots&quot;) along 
the North side of the present Queen's Road, and they did not have time to mark 
out the suburban lots, so the sale was delayed two days, 
and restricted to Marine Lots with the following terms of sale on 14-Jun-1841:</p>
<ol>
	<li>Upon a careful examination of the ground, it has been 
	found impossible to put up the number of lots named in the Government 
	Advertisement of the 7th instant, and only 50 lots, having a sea frontage of 100 
	feet each, can at present be offered for sale. These lots will all be on the 
	seaward side of the road. Lots on the land side of it, and hill and suburban 
	lots in general, will yet require some time to mark out.</li>
	<li>Each lot will have a sea frontage of 100 feet, nearly. The 
	depth from the sea to the road will necessarily vary considerably. The 
	actual extent of each lot as nearly as it has been possible to ascertain it 
	will be declared on the ground. And parties will have the opportunity of 
	observing the extent for themselves.</li>
	<li>The biddings are to be for annual rate of quit rent, and 
	shall be made in pounds sterling, the dollar in all payments to be computed 
	at the rate of 4<em>s</em> 4<em>d</em>. The upset price will be &pound;10
	for each lot, the biddings to advance by 10<em>s</em>...&quot;</li>
</ol>
<p>Some translation is needed: in British currency up to
<a href="http://en.wikipedia.org/wiki/Decimal_Day" target="_blank">
decimalisation</a> in 1971, there were 20 shillings (<em>s</em>) in a pound and 
12 pence (<em>d</em>) in a shilling. If you are wondering, the &quot;d&quot; is for
<a href="http://en.wikipedia.org/wiki/Denarius" target="_blank">denarius</a> - a 
Roman coin worth 10
<a href="http://en.wikipedia.org/wiki/As_(coin)" target="_blank">asses</a>. So 
in decimal, the exchange rate the Captain refers to is 1 dollar to 21.67p, or 
about 4.62 dollars per pound. Incidentally, the &quot;dollars&quot; he refers to would be 
the Spanish/Mexican silver dollar which was the world's trade currency back then, and on 
which the US dollar was based.</p>
<p>All this was to some extent being made up by the Captain as he went along; keep in mind 
that telegraph cables did not reach HK until the 1870s. A New York Times
<a href="../codocs/NYTimes18710725.pdf">article</a> of 25-Jul-1871 records that 
the final splicing of the China Submarine Cable occurred on 11-Jun-1871, 
&quot;placing Hong Kong in communication with Singapore and other parts of the 
telegraphic world as far as San Francisco&quot;. A
<a href="../codocs/Gazette18710715.pdf">Gazette notice</a> of 10-Jul-1871 
advises mariners what to do if their anchors pick up the cable. So prior to that, all communications 
between HK and London travelled by ship, leaving remote military men 
with a lot of discretion. The Suez Canal did not open until November 1869, so 
shipping times were longer too, unless you went &quot;overland&quot; between the 
Red Sea and the Mediterranean.</p>
<p>China and Britain were technically still at war. 
Captain Elliot had proposed the
<a href="http://en.wikipedia.org/wiki/Convention_of_Chuenpee" target="_blank">
Convention of Chuanbi</a> with Governor Qishan of Guangdong on 20-Jan-1841, 
which included the cession of HK Island, but also allowed the Chinese to 
continue levying duties. Neither the British Government nor Chinese Emperor ratified it, and both Elliot and Qishan 
were dismissed. Foreign Secretary
<a href="http://en.wikipedia.org/wiki/Henry_John_Temple,_3rd_Viscount_Palmerston" target="_blank">Lord Palmerston</a>, dismissing Elliot by letter of 21-Apr-1841, 
famously called HK &quot;a barren island with hardly a house upon it.&quot;</p>
<p>So HK Island had been seized (six days after the Convention of Chuanbi), but 
it wasn't until 29-Aug-1842 (after the British attacked several more coastal cities) that the
<a href="http://en.wikipedia.org/wiki/Treaty_of_Nanking" target="_blank">Treaty 
of Nanking</a> (full text
<a href="http://en.wikisource.org/wiki/Treaty_of_Nanking" target="_blank">here</a>) was signed aboard HMS Cornwallis, ceding Hong Kong Island to 
Britain &quot;in perpetuity&quot;, without Chinese duties, and this was eventually 
ratified. So the initial HK land auction was held even before the colony legally 
existed. Elliot's replacement, and the British signatory to the treaty, was
<a href="http://en.wikipedia.org/wiki/Henry_Pottinger" target="_blank">Henry 
Pottinger</a>, who became the first Governor. HK Island and its 
dependencies formally became the &quot;Colony of Hongkong&quot; by Royal charter dated 
5-Apr-1843. The ratified treaties were exchanged in HK on 26-Jun-1843. This 
became the base date for the first land leases. On 21-Aug-1843 the HK Government announced extracts from 
instructions from
<a href="http://en.wikipedia.org/wiki/Edward_Smith-Stanley,_14th_Earl_of_Derby" target="_blank">
Lord Stanley</a>, Secretary of State for the Colonies, basically saying that 
there would be no automatic recognition of the previous allotments, but to avoid 
chaos on occupied sites, claims would be entertained:</p>
<blockquote>
	<p>&quot;Sir Henry Pottinger is to abstain from alienating any of the 
	land on the island, either in perpetuity or for any time of greater length than 
	be necessary to induce and enable the tenants to erect substantial buildings,...</p>
	<p>But with the general prohibition against the alienation of 
	Crown Lands, and with the general refusal to sanction any such grants as may 
	have already been made, Lord Stanley would connect a promise that immediately on 
	the establishment of a regular Government in the place an enquiry should be 
	instituted, by some competent and impartial authority, into the equitable claims 
	of all Holders of Land...&quot;</p>
</blockquote>
<h3>Introduction of 75-year tenures</h3>
<p>In the hurry to stake out land and make a start on buildings, no lease 
duration had been decided, and even the possibility of freehold had been left 
dangling &quot;if that tenure shall hereafter be offered&quot;. It wasn't, with 
the exception of
<a href="http://en.wikipedia.org/wiki/St._John's_Cathedral,_Hong_Kong" target="_blank">
St John's Cathedral</a>, but only
<a href="http://www.hklii.org/hk/legis/en/ord/1014/s6.html" target="_blank">so 
long as it is a church</a>. The Government committee 
ordered by Lord Stanley reported on 4-Jan-1844, recommending that all the 
pre-colony Marine Lots should be confirmed for 75 years, except those which had 
been abandoned or forfeited. On 28-Feb-1844, the Land Registration Ordinance was passed, requiring the registration of all 
leases and dealings.</p>
<h3>Extension to 999-year tenures</h3>
<p>Much of the above history and more can be found in the
<a href="../codocs/LandCom1887.pdf" target="_blank">Report from the Hongkong 
Land Commission of 1886-87</a>. Apparently with the economy not going 
so well, the landowners soon started complaining about the tenure and the &quot;high Crown 
Rents&quot;. Governors 
<a href="http://en.wikipedia.org/wiki/John_Francis_Davis" target="_blank">Sir John Davis</a> and later 
<a href="http://en.wikipedia.org/wiki/Sir_George_Bonham,_1st_Baronet" target="_blank">Sir George Bonham</a> made 
representations to London, pointing to the fact that Singapore had 999 year 
leases. 
<a href="http://en.wikipedia.org/wiki/Henry_Grey,_3rd_Earl_Grey" target="_blank">Earl Grey</a>, Secretary of State for the Colonies, gave approval, and on 
3-Mar-1849 it was announced that all Crown Leases previously granted for 75 
years could, on application, be extended by 924 years, making them 999 year 
leases. Of course, most 
leaseholders applied.</p>
<h3>Introduction of lease premiums</h3>
<p>Further discussion continued, and in despatch No. 222 from Earl Grey to Governor 
Bonham of 2-Jan-1851, he concluded that in future, Crown Land should be:</p>
<blockquote>&quot;offered for lease at a moderate rent to be determined 
by the Crown Surveyor and that the competition should be in the amount to be 
paid down as a premium for the lease at the rent so reserved by parties desiring 
to obtain it&quot;.</blockquote>
<p>That is basically the way land is still leased in HK, at a premium plus rent, 
rather than just rent, although the balance between these has radically changed 
as we will discuss below. For the rest of the 
19th century and at least up to the Japanese invasion in 1941, typical annual rents for leases sold by auction were 
several per cent of 
the minimum sale price. For example, if the fixed rent was 5% of the minimum sale 
price, taking a long-term discount rate of 5%, then this basically implied that 
half of the net present value would be received as future crown rents, and the 
other half as the up-front premium.</p>
<p>The crown rents on new leases were determined by a broad classification 
system, later known as &quot;zone crown rents&quot;, in terms of dollars per acre of land. 
This scale was revised from time to time. Most of the thought went into setting 
the reserve price for the auction, which would depend on finer details such as 
the position of the lot, elevation and accessibility. We've analysed all the 
advertised land sales in Gazettes between 1871 and 1900, and it is clear that 
sometimes the auctions failed to find buyers at the reserve price, as the 
allocated lot numbers were reused in another sale shortly thereafter. So it is a 
fair inference that the reserve prices were not generously low for the time.</p>
<h3>Kowloon and Stonecutter's Island</h3>
<p>Following the first part of the second opium war, there was the
Treaty 
of Tianjin (then &quot;Tien-tsin&quot;) signed on 28-Jun-1858 and amended 
and ratified as the <a href="../codocs/ConventionOfPeking.pdf">Convention of Peking</a> on 24-Oct-1860 at the end of the war. 
Between these two events,
<a href="http://en.wikipedia.org/wiki/Harry_Smith_Parkes" target="_blank">Harry 
Smith Parkes</a>, one of the &quot;Allied Commissioners for the Government of the 
City of Canton&quot;, which was under Anglo-French occupation from 1858-1861, had 
signed a lease dated 20-Mar-1860 with &quot;Lau Tsung Kwang, Governor General of the 
two Kwang&quot; (Kwang-tung and Kwang-se, now Guangdong and Guangxi provinces) for 
&quot;certain portions of the Township of Kowloong&quot;. Four days later, on 
24-Mar-1860, the Hongkong Gazette included a
<a href="../codocs/KowloonProclamation18600324.pdf">proclamation</a> of the 
lease, for &quot;that part of Kowloon peninsula lying South of a line drawn from a 
point near to but South of the Kowloon Fort to the Northern-most point of 
Stone-cutter's Island, together with that Island&quot;.</p>
<p>This lease was replaced by Article VI of the Convention 
of Peking, which ceded the same area to Britain in 
perpetuity. The map below is from the Convention (click on it for a larger 
version).</p>
<a href="http://upload.wikimedia.org/wikipedia/commons/b/be/Map_of_Hong_Kong_in_First_Convention_of_Peking_in_1860.jpg" target="_blank">
<img class="center" alt="Map in the Convention of Peking" src="../images/Kowloon1860.jpg"></a>
<p>By a
<a href="../codocs/KowloonProclamation18610328.pdf">proclamation</a> dated 
28-Mar-1861, the laws of HK were applied to Kowloon.</p>
<p>The stated reason for the cession of Kowloon in the Convention of Peking was 
&quot;the maintenance of law and order in and about the harbour of Hongkong&quot; - in 
other words, a buffer zone. Initially, the British did not do much with it. On 
18-Aug-1873, the Government <a href="../codocs/KowloonGardenLots18730819.pdf">
announced</a> that it would grant 14-year leases for garden purposes, terminable 
after 7 years at the option of the lessee. The earliest such land auction we can 
find is <a href="../codocs/GardenLots1873.pdf">Garden Lot No. 2</a>, an acre of 
land leased in 1873 for $20. Sales of sites for buildings got underway by 1876, 
when 75-year leases were offered in Yaumatei, so those started to expire in 
1951.</p>
<p>By the Land Commission's reference date of 25-Dec-1886, in Kowloon there were 
113 Inland Lots, 15 Marine (waterfront) Lots, 9 Farm Lots and 68 Garden Lots. 
The early Kowloon Marine Lots are the only lots in Kowloon which have 999 year 
leases - the last such auction we can find was KML 3 and KML 6 on 21-May-1889. 
After that, they were 75-year leases until the change of policy in 1899 (see 
below) when renewable leases of 75+75 years were introduced.</p>
<h3>Rural Building Lots</h3>
<p>Rural Buildings Lots (<strong>RBLs</strong>) hold residential property, 
mostly low-rise apartments and houses on The Peak and (more recently) the South 
side of HK Island. The 1887 
Land Commission report mentioned that at 25-Dec-1886, there were just 43 RBLs, 
each with a 75 year lease. Those original terms have of course expired. The 
first such 75-year lot, RBL 1, was <a href="../codocs/RBL1.pdf">auctioned</a> on 
30-Sep-1878, so that expired in 1953, and the last 75-year RBL, Number 97, was 
auction on 8-May-1899, so it would have expired in 1974. After 1899, RBLs were 
on renewable 75+75 year terms (see below), so they start expiring in 2049.</p>
<p>Searching through listed company documents, the 
earliest current RBLs in our survey are RBLs 522, 639 and 661, which are the 
land under Mountain Court, 11-13 Plantation Road, The Peak, each with a 150 year 
lease from 10-Dec-1877, so that term expires in 2027, without a right of 
renewal. On that day in 1877, there was an auction of Farm Lots at that 
location, so the leases were probably subsequently exchanged (upon payment of a 
conversion premium) and extended as RBLs.</p>
<h3>The New Territories</h3>
<p>The Second Convention of Peking was signed on 9-Jun-1898 in Peking (Beijing), 
leasing the New Territories (<strong>NT</strong>) for 99 years to 30-Jun-1997. 
Under <a href="../codocs/Gazette18990408NT.pdf">royal order and the Governor's 
proclamation</a>, the laws of HK were applied to the NT with effect from 
17-Apr-1899.</p>
<a href="http://upload.wikimedia.org/wikipedia/commons/2/20/Map_of_The_Convention_for_the_Extension_of_Hong_Kong_Territory_in_1898_-_1.jpg" target="_blank">
<img class="center" alt="Map of the extension of HK 1898" src="../images/NT1898.jpg"></a>
<p>NT land 
which was in private ownership when the lease began in 1898 was recorded in 
&quot;Block Crown Leases&quot; (<strong>BCLs</strong>), with one BCL for each of 477 
&quot;Demarcation Districts&quot; (<strong>DDs</strong>). Annexed to each BCL was a list of lots 
in the DD, with the crown 
rent, user and owner. These were known as &quot;Old Schedule Lots&quot;. All of these 
leases were for 75 years renewable for &quot;24 years less three days&quot;, so the first 
expiry was on 30-Jun-1973.</p>
<p>There were also &quot;New Grant Lots&quot; (<strong>NGLs</strong>) - leases granted 
in the NT after the start of the NT lease. Until Oct-1959, these were also granted for the 
same 75+24 year period starting 1-Jul-1898. From Oct-1959, this became simply 99 
years from 1-Jul-1898 &quot;less the last three days&quot;. We don't know what the 
Government was planning to do for the last three days before the head lease 
expired!</p>
<p>So for all the Block Crown Leases and any New Grant Lots granted before 
Oct-1959, the renewal date was 1-Jul-1973.</p>
<h3>No more 999 year leases, introducing 75+75 renewable leases</h3>
<p>On 23-May-1898, the Secretary of State for the Colonies,
<a href="http://en.wikipedia.org/wiki/Joseph_Chamberlain" target="_blank">Joseph 
Chamberlain</a>, gave instructions that, without further reference to him, no 
further 999 year leases were to be sold. He considered that the Crown was being 
deprived of any benefit of the increase in value of land with the passage of 
time, and wanted to reduce future leases to 75 years. or &quot;at the outside&quot; 99 
years. From contemporary Gazettes, we can see that auctions were held on a 
75-year basis from 20-Jun-1898 to 24-Jul-1899, with just two unusual 99-year 
leases.</p>
<p>The reduction prompted protests from 
the Chamber of Commerce and (according to a legislator in a debate on 
10-May-1972), the Colonial Secretary wrote to the Chamber with a compromise:</p>
<blockquote>
	&quot;Terms will be embodied in future leases that leases will be 
	renewed...upon such an advance in Crown rent as is justified by the then value 
	of the land and without fine for a further period of 75 or 99 years, and that in 
	the event of the land being resumed by the Government for public purposes 
	compensation will be given.&quot;
</blockquote>
<p>Translating to modern English, by &quot;advance&quot; he meant &quot;increase&quot; and by &quot;fine&quot; 
he meant &quot;premium&quot;. The question of how this rent would be assessed was left 
unaddressed. As a result, the Government introduced the &quot;75+75&quot; year leases, 
with a single right of renewal for a 75 year period, &quot;at a Crown Rent to be 
fixed by the Surveyor of Her Majesty&quot;. From contemporary Gazettes, we note that 
the first 75+75 land auction was held on 31-Jul-1899, for Inland Lot 1558 on 
Queen's Road East.</p>
<p>From Gazettes, we note that the last 999-year lease sold at auction was 
Inland Lot 1485 on Peak Road, on 31-May-1898. The 
last 999 year lease we can find in other records is Marine Lot 287, currently part of the site 
for Chater House, 9-25 Chater Road, Central, which runs from 24-Dec-1901. One 
possible exception is the USA Consulate on Garden Road, which is rumoured to have 
been granted a 999-year lease, although we have been unable to verify this.</p>
<p class="regbox">Update, 6-Aug-2018: we have now verified this, see our 
article: <a href="usconsulate.asp">
Revealed: the USA has the longest land lease in China</a> (6-Aug-2018).</p>
<h3>Regrants</h3>
<p>As noted above, 75-year Kowloon leases were auctioned from 1876 and 75-year 
RBLs were auctioned from 1878, so these started to expire in 1951 and 1953 
respectively, and thereafter in increasing numbers, without any legal right to a 
new lease. As early as 16-May-1946, in the first regular session of the 
Legislative Council after World War II, Governor
<a href="http://en.wikipedia.org/wiki/Mark_Aitchison_Young" target="_blank">Mark 
Young</a> <a href="http://legco.gov.hk/1946/h460501.pdf" target="_blank">said</a> 
(p22):</p>
<blockquote>
	&quot;I have already had under consideration the question of the 
	renewal of Crown Leases which are due to expire in the near future. The 
	committee has rightly asked that a speedy decision 'may be reached on this 
	important matter and I hope that a public announcement will be made in the very 
	near future.&quot;
</blockquote>
<p>A month later, on 16-Jun-1946, the Government announced its policy in regard 
to the renewal of 75-year leases. Unless the Government needed the land for 
public purposes, it offered new leases, or &quot;regrants&quot;, using the contemporary 
zone crown rental and assessing the full and fair market value of the land lease 
(excluding buildings). In a concession, for applications in the first year, the 
premium was reduced to the extent of one half of the cost of rebuilding premises 
which were damaged during the war, as many were.</p>
<p>In offering regrants after the war, due to the shortage of housing, the 
Government required an increase in the extent of developments on some of the 
RBLs, prompting complaints from Jardine Taipan David F Landale in LegCo on
<a href="http://legco.gov.hk/1947/h470703.pdf" target="_blank">3-Jul-1947</a> 
(p4 onwards) and <a href="http://legco.gov.hk/1947/h470710.pdf" target="_blank">
10-Jul-1947</a> (p7 onwards) that the policy was oppressive, due to construction 
costs! How times have changed, since for many decades developers have strained 
every sinew to maximise the size of the developments on their sites within legal 
limits.</p>
<p>In a concession introduced in 1960, the Government allowed the premium for 
regrants to be payable in up to 21 annual instalments with interest at 10% p.a.. 
In a later concession, it allowed holders to apply for a lease which contained a 
restriction on redevelopment by limiting the size of building to whatever was 
already on the lot, thereby reducing the value of the land and the premium 
payable.</p>
<p>In order to provide some certainty, it also allowed leaseholders to apply for 
regrants up to 20 years before expiry, so that the holder would not be left with 
a dwindling lease which would be less saleable due to the unknown cost of 
renewal, and might disincentivise building maintenance.</p>
<p>To deal with multi-owner lots, such as the land under many apartment blocks, 
where owners have &quot;undivided shares&quot; in the lot, the
<a href="http://www.hklii.org/hk/legis/en/ord/125/" target="_blank">Crown Rent 
and Premium (Apportionment) Ordinance</a> was passed on 6-May-1970, so that each 
owner was only liable for his share of the rent and premium rather than being 
jointly liable with all the other owners. At the same time, the
<a href="http://www.hklii.org/hk/legis/en/ord/126/" target="_blank">Crown Rights 
(Re-entry and Vesting Remedies) Ordinance</a> was passed, so that when a regrant 
was offered, the shares belonging to owners who did not participate would be 
transferred to the Government and eventually resold.</p>
<h3>The renewals begin early</h3>
<p>Although newly granted 75+75 leases, from 1899 onwards, would not start 
hitting their renewal dates 
until 1974, there were some other leases which hit the renewal date sooner. 
That's because some non-renewable 75-year leases such as RBLs and some old 
Kowloon leases had been granted before 1899 but modified after 1899 (for 
example, to subdivide the lot or change the type of lot). At least in some 
cases, when they were modified, they were offered either the previous lease 
term, or (for a modest premium) an additional right of renewal.</p>
<p>As we mentioned earlier, the right of renewal was without payment of premium, 
but the question of how the ground rent should be calculated was left dangling. An important test case of how the renewal clause in the lease should 
be interpreted, and hence what the new rent should be, was <em>Chang Lan Sheng v 
Attorney General</em>, which went all the way to the UK Privy Council, the 
highest court. The standard wording in the original lease for the annual amount of rent 
payable on 
the renewed lease was:</p>
<blockquote>
	&quot;such Rent as shall be fairly and impartially fixed...as the 
	fair and reasonable rental value of the ground at the date of such renewal&quot;
</blockquote>
<p>The Court of Appeal
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=12566&amp;currpage=T" target="_blank">
judgment</a> of 25-Sep-1968 (which was upheld by the privy council) explains the 
case. The original lease of Kowloon Inland Lot 539, was for 75 years from 
24-Jun-1888. It was subsequently split, and then in 1936, the lessees of the 
various sections agreed with Government to each obtain new leases. Some chose 
the original lease term, and other chose to buy a right of renewal, exercisable 
when the original lease expired in 1963. The holder of section Q chose a 
renewable lease, which was registered as KIL 3793. In 1963, the subsequent 
holder exercised the right of renewal. He had redeveloped twice, from a 
2-storey villa to a 5-storey building in 1952 and then a 10-storey building completed in 
1964. Looking on Google street view today, we see
<a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;sll=22.396428,114.109497&amp;sspn=1.439806,1.18103&amp;ie=UTF8&amp;ll=22.299745,114.1732&amp;spn=0.002077,0.00239&amp;t=h&amp;z=19&amp;layer=c&amp;cbll=22.299278,114.173564&amp;panoid=sWqXofe4cEIDfmY1eZ2R5w&amp;cbp=12,43.17,,0,-28.43" target="_blank">
Houng Sun Mansion</a>, at 45-47 Carnarvon Road,
<a href="https://bmis.buildingmgt.gov.hk/eng/showbuilding.php?id=51346" target="_blank">
still the 1964 version</a>. The judgment notes that the building cost $830,000.</p>
<p>The Government assessed the value of the land (what a willing buyer 
would pay in an auction) at $1,234,875, and using a discount rate of 5%, 
converted that into an annual rental value of $60,764, including the nominal 
&quot;zone crown rent&quot; that an auction buyer would have to pay anyway, and allowing 
for half-yearly payment in advance. Readers can think of this &quot;decapitalisation&quot; 
as a 75-year repayment mortgage with a 5% interest rate. By the 1960s, zone 
crown rents bore no resemblance to the economic rental value of the land, they 
were just there so that the lease involved some nominal payment, with virtually 
all the value of newly sold land being in the up-front premium.</p>
<p>The Court of Appeal ruled that the Government had fixed the rental value in 
accordance with the renewal clause in the lease. </p>
<p>In passing, one of the appeal judges in <em>Chan Lan Sheng </em>noted in 
1968, when comparing the renewal in this case with regrants of non-renewable 
leases nearby:</p>
<blockquote>
	<p>&quot;what is also very obvious from the plaintiff's schedule is 
	that during the last 10 years lessees have been getting most favourable terms on 
	certain regrants....</p>
	<p>What appears to emerge from the whole of the evidence is that 
	about the beginning of 1963, the Hong Kong Government realised that the public 
	(as represented by Government) was not getting its fair share of rising property 
	values...it was decided (probably for the first time in the history of Hong 
	Kong) that in future land values would be worked out strictly in accordance with 
	generally accepted land valuation principles. Naturally, Crown lessees, who had 
	been making fortunes out of land for years, did not like it.&quot;</p>
</blockquote>
<h3>Renewal in the New Territories, 1973</h3>
<p>Meanwhile, another issue was looming. According to the lease conditions for BCLs and NGLs, the leases were 
for 75 years renewable for 24 years, using the same language as the 75+75 leases 
discussed above. In early 1967, with the background of 
growing social tensions from the Cultural Revolution across the border and no 
doubt with pressure from indigenous villagers, the Executive Council decided, 
with the approval of the Secretary of State, that although this clause allowed a 
large increase in rent, it would not be exercised. Eventually the
<a href="http://www.hklii.org/hk/legis/en/ord/152/" target="_blank">New 
Territories (Renewable Crown Leases) Ordinance</a> (<strong>NTRCLO</strong>) was enacted on 9-May-1969, 
deeming all NT leases registered in district office land registries (except for 82 special lots) to be renewed at the same 
fixed rent as before. Explanation can be found in the LegCo
<a href="http://legco.gov.hk/1969/h690409.pdf" target="_blank">Hansard of 
9-Apr-1969</a> (PDF p11).</p>
<h3>Renewal of 75+75 leases</h3>
<p>The situation in HK Island and old Kowloon, however, was different. There was 
no good reason why someone who had purchased a lease with a right of renewal should 
not expect to have to pay up a fair rent to renew it, because that is what the 
lease said, and it had been tested in the highest court. The right of renewal did not 
mean the right of a gift.</p>
<p>On 10-May-1972, <a href="../dbpub/natperson.asp?p=2495">Oswald Cheung</a>, a barrister and legislator,
<a href="http://legco.gov.hk/yr71-72/h720510.pdf" target="_blank">raised objections</a> 
(p25 onwards) 
in LegCo 
to &quot;the present levels of re-assessed Crown rents on renewable leases&quot; and asked 
for them to be &quot;substantially less&quot;. He rather disingenuously argued that 
&quot;fair and reasonable&quot; should not mean full market rent (or rack rent) but 
&quot;somewhere about half or 40% of the rack rent&quot;. Wilfred Wong Sien Bing chimed in 
with &quot;for Government to charge what the market can bear is wrong in principle 
and practice&quot;.</p>
<p><a href="../dbpub/positions.asp?p=10">Chung Sze Yuen</a> argued that where premises have been mortgaged to banks, 
the borrowers may have trouble making payments if they have to pay higher crown 
rent - but that assumes banks were reckless enough to lend against a lease 
reaching its renewal date. He was speaking in the aftermath of the bank runs of 
1965, invoking fears of a repeat. Industrialist 
<a href="../dbpub/positions.asp?p=1130">Ann Tse Kai</a> complained that the 
revised Crown rents range from 0.8% to 3.9% of the turnover of factories, 
averaging 2.4%.</p>
<p>In response, Financial Secretary <a href="../dbpub/natperson.asp?p=38242">
Philip Haddon-Cave</a> claimed that the low assumed rate of interest (5%, versus 
borrowing rates over 10%) used in deriving renewal rents from capital values was 
a concession itself, resulting in the Government getting only about half of fair 
value. He also said that owners have been given the choice of renewing early and 
paying a lump sum, or paying over the term of the lease (75 years), or renewing 
on the basis of the existing development and paying a rent of about 30% of 
actual income from the property, or often less than that, by restricting the 
lease to redevelopment of the existing size of building. All of this was 
apparently set out in a &quot;Consolidated Statement&quot; in 1969, and was more generous 
than the terms of regrants noted above. He said:</p>
<blockquote>
	&quot;The fact is, however, that land owners generally form a 
	comparatively wealthy segment of the community and have, by and large, done very 
	well in Hong Kong in recent years. It is this segment of the community, which 
	includes the large property companies, which stands to gain most if the present 
	policy on renewal is changed in the way proposed by honourable Members. And it 
	is the public interest, the wider interest of the community as a whole, which 
	would be prejudiced by such a change.&quot;
</blockquote>
<p>You've got to hand it to Mr Haddon-Cave - he told it the way it was, 
and still is today. The Financial Secretary continued:</p>
<blockquote>
	&quot;Further concessions to this group of landowners would 
	inevitably lead to demands for similar concessions from other categories of 
	landowners - and the whole economic basis of our carefully thought out land 
	policy would be seriously undermined...&quot;
</blockquote>
<p>His robust defence of economic principles did not last long though. Two weeks 
later, on 24-May-1972, the Government
<a href="http://www.legco.gov.hk/yr71-72/h720524.pdf" target="_blank">announced</a> 
(p15 onwards) some concessions, saying it would now use a 4% interest rate to 
decapitalise the premiums, and also for those who renewed in the 5 years up to 
30-Jun-1973, they would phase in the rent payments, starting at 50% of the 
contractual rate and rising in 10% steps for the first 5 years of the new lease, 
but not backdated.</p>
<p>On 28-Mar-1973, the Government
<a href="http://www.legco.gov.hk/yr72-73/h730328.pdf" target="_blank">tabled</a> 
(p11 onwards) the Crown Leases Bill 1973, which proposed to automatically renew 
the approximately 5,000 renewable lots in the NT (mostly in
<a href="http://www.hklii.org/hk/legis/en/ord/1/sch5.html" target="_blank">New Kowloon</a>, 
i.e. north of Boundary Street) that 
were expiring on 30-Jun-1973 but were not covered by the NTRCLO. The 
terms were as announced on 24-May-1972. The Bill would also apply to 75+75 or 
the rare 99+99 renewable leases (on HK Island and old Kowloon) where the first 
term expired after 30-Jun-1973, and to a number of leases listed in a
<a href="http://www.hklii.hk/hk/legis/en/ord/40/sch.html" target="_blank">
schedule</a> for which the first term had expired in 1972 (plus 2 in 1959 and 3 
in 1968 - we don't know why). In a further concession, the rental value of new 
leases expiring on or after 30-Jun-1973 would be the lower of the value of the 
ground on the expiration date and the value one year before expiry.</p>
<p>What followed was a rebellion by the non-government or &quot;Unofficial&quot; members 
of LegCo (keep in mind, they were all appointed by Government) who represented 
the powerful business interests of HK. The Bill came up for debate on 
25-Apr-1973 (p22 onwards) and several members, including 
<a href="../dbpub/positions.asp?p=1584">Woo Pak Chuen</a>, Szeto 
Wai, Wilfred Wong Sien Bing and <a href="../dbpub/positions.asp?p=854">James Wu Man Hon</a> spoke against it. In 
the face of this onslaught, Colonial Secretary 
<a href="http://en.wikipedia.org/wiki/Hugh_Norman-Walker" target="_blank">Sir Hugh Norman-Walker</a> sought an 
adjournment.</p>
<p>Then, on 20-Jun-1973, with 10 days to go before the NT leases were to expire, 
the Government caved in and announced, through the acting Attorney-General, that 
the renewal rents would be 3% of rateable at the date of renewal, fixed 
throughout the lease period. Rateable value is basically an estimate of the 
annual rent achievable for the property (including the building). It was 
probably the biggest windfall the developers and landlords ever had. The result 
was the <a href="http://www.hklii.hk/hk/legis/en/ord/40/" target="_blank">Crown 
Leases Ordinance</a>, which applies to any lease which has a right of renewal 
built in. Apart from conversions of pre-1899 leases, all of these renewable leases were granted between 1899 and 1985, so they will be 
coming up for renewal until 2060 in the case of 75+75, or 2084 in the case of 
99+99 year leases (of which there are very few). Because the rents are fixed 
upon renewal, they decline in real terms due to inflation over the 75 or 95 year 
lease.</p>
<h3>Leases after the Joint Declaration</h3>
<p>On 19-Dec-1984, the UK and the PRC
<a href="http://news.bbc.co.uk/onthisday/hi/dates/stories/december/19/newsid_2538000/2538857.stm" target="_blank">
signed</a> the &quot;<a href="http://www.cmab.gov.hk/en/issues/joint3.htm" target="_blank">Joint 
Declaration on the Question of Hong Kong</a>&quot; (<strong>JD</strong>). After ratification, this came 
into effect on 27-May-1985. The JD had an
<a href="http://www.cmab.gov.hk/en/issues/jd5.htm" target="_blank">Annex on Land 
Leases</a>, stating that from the effective date of the JD until 30-Jun-1997, 
leases could be granted for terms expiring not later than 30-Jun-2047, at 
nominal rental until 30-Jun-1997 and thereafter at 3% of the rateable value of 
the property adjusted for any changes in rateable value from time to time. This 
also applied to leases expiring before 30-Jun-1997 without a right of renewal. The 
rent 
was eventually enshrined in
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html#section_2" target="_blank">
Article 121</a> of the Basic Law. </p>
<p>In practice, leases during the pre-handover period were granted for terms 
expiring on 
30-Jun-2047, so they started with 62 years and diminished to 50 years by the 
time of the handover. An interesting example is provided by 
<a href="http://www.pacificplace.com.hk/" target="_blank">Pacific Place</a>; part 
of the site (One Pacific Place and the Marriott Hotel) is on a pre-JD lease of 
75+75 years from 18-Apr-1985 (less than 6 weeks before the JD) to 2135, while 
the rest is on a lease from 27-May-1986 to 30-Jun-2047.</p>
<p>Since the handover, new 
leases have been routinely granted for 50 years without a right of renewal, with 
ground rent at 3% of rateable value adjusted in line with rateable values. The 
only exception we are aware of is Hong Kong Disneyland, 
<a href="http://www.info.gov.hk/gia/general/199911/04/1104149.htm" target="_blank">which has a right of 
renewal</a> for a second 50-year period. That's the magic of Disney,
<a href="disneylandfill.asp">where nothing is ever as it seems</a>.</p>
<h3>Renewals of leases expiring after 1997</h3>
<p>That still left the question of what would happen to leases granted 
before the JD but expiring after the handover, if they did not have a 
contractual right of renewal. So this was dealt with by Article 123 of the Basic 
Law
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html#section_2" target="_blank">
which says</a>:</p>
<blockquote>
	&quot;Where leases of land without a right of renewal expire after 
	the establishment of the Hong Kong Special Administrative Region, they shall be 
	dealt with in accordance with laws and policies formulated by the Region on its 
	own.&quot;
</blockquote>
<p>On 15-Jul-1997, the HKSAR Government
<a href="http://www.info.gov.hk/gia/general/dib/0715.htm" target="_blank">
announced</a> its current land policy for lease renewals. It said:</p>
<blockquote>
	&quot;Non-renewable leases will, upon expiry and at the 
	Government's sole discretion, be extended for a term of 50 years without payment 
	of an additional premium. However, an annual Government rent of three per cent 
	of the rateable value will be charged from the date of extension to be adjusted 
	in step with changes in the rateable value.&quot;
</blockquote>
<p>This is a policy, not a law, and it is open to future Chief Executives to 
change it. It is also open to future Chief Executives to propose amendments to 
local legislation, including the Government Leases Ordinance passed in 1973, 
which governs the terms of renewal of renewable leases. No Chief Executive can tie the hands of his or her successors, 
and there is no legitimate expectation that policies will not be changed in 
future if it is not unreasonable and is in the public interest to do so. In Part 
2 of this article, we will explain how the policy could change to establish a 
stable recurrent rental income stream from land sales, land-use conversions and 
lease renewals, at the same time as lowering the barriers to entry for 
development and lowering the capital required for property ownership.</p>
<p><strong><a href="leases2.asp">Now read Part 2</a></strong></p>
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