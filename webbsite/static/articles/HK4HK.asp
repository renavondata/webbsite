
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

<script type="text/javascript">document.title="HK land for HK xenophobes";</script>

	<div class="summary">We explain why the proposed "HK land for HK people" scheme, while superficially appealing to voters, won't work, and we again propose measures to make the housing and tax system simpler and fairer, including elimination of stamp duty and mortgage interest deductions, and land lease reform to open the market and lower the premiums on new leases.</div>

<h2 class="center">HK land for HK xenophobes<br>
<span class="headlinedate">6 September 2012</span></h2>
<div class="rightpicbox" style="max-width:300px">
	<img alt="Bobs the builders" src="../images/BobsTheBuilders.jpg"> 
</div>
<p>There's been a lot of talk lately about the proposed &quot;Hong Kong land for 
Hong Kong people&quot; (<strong>HK4HK</strong>), and tonight as we complete 
this article comes
<a href="http://www.news.gov.hk/en/categories/infrastructure/html/2012/09/20120906_174654.shtml" target="_blank">
news</a> that Chief Executive <a href="../dbpub/positions.asp?p=1680">Leung 
Chun-ying</a> has said that flats to be built on two sites in the Kai Tak 
former-airport development will be restricted to purchase by
	<a href="http://www.gov.hk/en/residents/immigration/idcard/?/roa/" target="_blank">
	HK Permanent Residents</a> (<strong>PRs</strong>) for 30 years. </p>
<p>We'll tell you why HK4HK is a silly and ineffective proposal pandering to 
ill-informed xenophobic sentiments, and instead we will again propose measures 
to make the housing and tax system simpler and fairer. The HK4HK proposal derives from Chief Executive 
C Y Leung's 
<a href="http://www.ceo.gov.hk/eng/pdf/manifesto.pdf" target="_blank">manifesto</a>, page 20, in which he said:</p>
<blockquote>
	<p>&quot;We will study the introduction of a &quot;Hong Kong property for 
	Hong Kong residents&quot; policy to assist those home buyers whose income exceed the 
	limits prescribed by the Home Ownership Scheme. Under the proposed policy, new 
	sites<sup>1</sup> will be selected which are suitable for middle-class housing 
	and in the relevant land lease a restriction will be included to the effect that 
	the completed housing units can only be sold to Hong Kong residents<sup>2</sup>.</p>
	<p>1. The proposal only focuses on new land supply and does not 
	include redevelopment sites.</p><p>2. Hong Kong residents include non-permanent 
	residents, i.e. those who have not yet lived in HK for 7 years&quot;</p>
</blockquote>
<p>We'll come back to footnote 2 later. Note that this was only a commitment to &quot;study the introduction&quot; of HK4HK - 
not to actually introduce it. As recently as July, newly-appointed ExCo member
<a href="../dbpub/positions.asp?p=10909">Barry Cheung Chun-yuen</a>, a confidant 
of the CE and Chairman of the Urban Renewal Authority, was
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=124170&amp;con_type=1" target="_blank">
playing down</a> the proposal. And back on 19-Jun-2012, the CE-elect himself
<a href="http://www.info.gov.hk/gia/general/201206/19/P201206190646.htm" target="_blank">
said</a> that non-HK residents were not purchasing properties in numbers that 
affect resident HK buyers.</p>
<p>Let's start by assuming that the stated objective, to &quot;assist those home 
buyers...&quot; means to make home prices lower for them, rather than to help them 
with the paperwork or moving their furniture. The scheme's design implies that 
this can be achieved by creating a separate market in which overseas investors 
(non-residents) are excluded, and possibly excluding non-PR residents too. This carries the implicit and unproven assumption 
that overseas investors have caused prices in the unrestricted market to be 
higher than they would otherwise be, but we won't get into that debate now - it 
isn't necessary for the purpose of explaining why the scheme won't work.</p>
<p>We should note though that any estimates you read about the proportion 
of home sales to mainlanders are only based on looking at the names of buyers 
(if they are not companies) in land registry transactions and deciding whether 
they &quot;look like&quot; mainland names. There is no requirement to disclose the buyer's 
immigration status or nationality in a property transaction, and keep in mind 
that there are already many PRs who migrated from the mainland more than 7 years 
ago, who are being lumped in with the statistics.</p>
<h3>Why it won't work</h3>
<p>So here's why the HK4HK scheme won't work:</p>
<ol>
	<li>If a HK resident can buy a flat in the scheme and rent it out, then it 
	will be worth just as much as a physically-identical flat on an unrestricted 
	land lease. Imagine that a HK resident owns 2 physically-identical flats, 1 
	in the HK4HK scheme, and 1 not. He is willing to rent them both out. As a 
	tenant, which flat would you pay more rent for? Neither, of course - they 
	are the same. As a tenant, you don't care about the ownership restrictions. 
	Which one would give the owner a higher rental income? Neither, they are the 
	same. So which one is worth more to the owner? Neither, they are the same. </li>
	<li>The Government could abandon footnote number 2 in the manifesto 
	and restrict ownership and letting to PRs - it has apparently done this 
	tonight (at least for ownership if not letting), but PRs are such a large 
	subset of all residents that the restriction will not have any impact on capital value. 
	If there were any discrepancy between the market value of an unrestricted flat 
	and an otherwise-identical one in the scheme, then a PR who owned an 
	unrestricted flat would sell that and buy the restricted one. It's called 
	arbitrage, and it will keep prices in line.</li>
	<li>There are over 6.19 million adult PRs (we know this because of the 
	harebrained <a href="http://www.scheme6000.gov.hk" target="_blank">Scheme 
	$6000</a>), although that includes people who no 
	longer reside in HK - if you are also a Chinese national, then you keep your 
	PR status for life, otherwise you can keep it by &quot;touching base&quot; in HK every 3 years 
	(see
	<a href="http://www.hklii.hk/eng/hk/legis/ord/115/sch1.html" target="_blank">
	paragraph 7, Schedule 1 of the Immigration Ordinance</a>). There are 
	probably about 5 million PR adults in HK, so that is not a big restriction. 
	Non-permanent residents are a small minority in HK, basically comprising 
	people who have lived here less than 7 years and about 300,000 Foreign Domestic 
	Helpers who are not in the property market anyway.</li>
	<li>To reduce the value (slightly) below that of an identical flat on an 
	unrestricted land lease, the HK4HK lease might prohibit letting the property to a third party. 
	There are plenty of people willing to buy a home on 
	the condition that they live in it, so it would only generate a small 
	discount for loss of flexibility. The restriction would be worth 
	even less if it expired after a fixed period within the duration of the land 
	lease.</li>
	<li>Another possible restriction is limiting the scheme to first-time buyers 
	(as the HOS does). Given the large set of people who have never owned a home 
	(or are married to someone who hasn't), that would still leave a lot of 
	potential buyers. If the restriction applied to all future owners, then 
	there would have to be a bureaucratic verification process that subsequent 
	purchasers are indeed first-time buyers, and if it only applied to the first 
	buyer, then she could flip it.</li>
	<li>Another possible restriction is a lock-in, a prohibition on selling for 
	say 5 or 10 years. When people buy a home, they expect to live in it for 
	several years anyway (not least because of stamp duty and other transaction 
	costs), so a short restriction of 5 years would not generate much discount. 
	Besides, there is already a <em>de facto</em> lock-in on all residential 
	property (new or old) - it is called Special Stamp Duty, which penalises resale within 18 
	months of purchase by seizing up to 15% of the value. SSD is
	<a href="ssd2.asp">unconstitutional</a> because the Basic Law 
	promises the right (implicitly without penalty) to dispose of property, but 
	that hasn't stopped the Government from implementing it.</li>
	<li>Even if there is a lock-in, buyers of new flats in the HK4HK scheme 
	could enter forward contracts (or equivalently, put-and-call options) to 
	sell the property when the lock-in expires, thereby locking in any profit at 
	the outset if the flats are discounted. This, by the way, is how male 
	indigenous villagers in the New Territories lock in their profits on their 
	small-house rights, by
	<a href="http://www.onc.hk/pages/show_pub.asp?id=2054" target="_blank">
	pre-selling</a> to developers.</li>
	<li>With all that said, the Government could of course deliberately 
	under-price the flats below their fair value (taking account of any owner-occupier and first-time buyer 
	restriction). However, that would just result in massive over-subscription by qualifying 
	residents, and a lottery to decide who gets the windfalls. If the Government 
	wants to run a lottery for qualified entrants, then why not just offer cash 
	by random draw instead? We could invite any resident (or any PR) to apply, 
	allocate a pot of taxpayers' money, and conduct a lucky draw of say, 40 
	winners every Saturday on TV. Winners would get $500,000 to use as a 
	down-payment on a private-sector flat. We could call it the &quot;Billion-dollar 
	Giveaway&quot;, because that would be the annual cost. If this sounds like a 
	joke, that's because it is, and so is the notion that the Government should 
	create such a lottery by deliberately discounting flats in the HK4HK scheme.</li>
</ol>
<p>What the Government probably would like to do is go much further, and 
restrict anyone without PR status from buying property. They wouldn't be the 
first to do so - Australia has a
<a href="http://www.firb.gov.au/content/real_estate/residential.asp" target="_blank">
policy</a> that foreigners can only buy new properties, which are deemed to &quot;add 
to the existing housing stock&quot;. Of course this is just symbolic, because foreign 
purchases just displace (shift) demand from Australians into the existing stock, 
so the impact of overseas demand is no more and no less than it would be if 
foreigners could buy any Australian property. But it plays well at the ballot 
box. Oh yes - did we mention that there is a HK Legislative Council election on 
Sunday? Could it be that the CE rushed out the Kai Tak HK4HK announcement to 
please voters? It beats
<a href="http://www.info.gov.hk/gia/general/201209/05/P201209050358.htm" target="_blank">
going to Vladivostok</a>.</p>
<p>However, if HK were to adopt a wholesale ban on foreign ownership of HK 
residential property (or at least, on any future purchases) then it would trash 
its reputation as a free market, and it would have to prohibit corporate 
ownership of property too, because otherwise companies could just be established 
by PRs and then sold to foreign buyers. Not only that, but it would be 
unconstitutional because it would violate 
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">Article 105 of the Basic Law</a>, which 
says that it will &quot;protect the right of individuals and legal persons to the 
acquisition&quot; of property, which includes real estate. &quot;Individuals and legal 
persons&quot; - that covers anyone and any company, not just PRs. So the Government 
can put whatever conditions they like in new land leases, but they can't prevent 
foreign ownership of existing property and they know it.</p>
<h3>The bigger picture</h3>
<p>All of this micro-management of land lease conditions avoids a bigger discussion on 
principles. The role of Government should be to ensure that every resident (or 
at least, every PR) <u>has</u> a home, not 
that every resident <u>owns</u> a home. We must provide a 
social safety net, but it is not the role of governments to subsidise their people's 
investments in property or any other asset class. Ours seems hell-bent on doing 
so, on increasing home ownership, regardless of the costs or the impairment of 
economic efficiency. They seem to have learnt nothing from the housing crash in 
the USA which was partly the result of pushing home-ownership to unsustainable 
levels through various forms of intervention.</p>
<p>Never mind overseas, the Government has learnt nothing from mistakes of 
previous HK administrations. On 8-Oct-1997, in his first
<a href="http://www.info.gov.hk/gia/general/dib/1008.htm" target="_blank">policy 
address</a> (paragraph 52), Tung Chee-hwa set a goal of 70% home ownership 
within 10 years, up from the existing rate of 52%. On 13-Nov-2002, his 
administration made a
<a href="http://www.info.gov.hk/gia/general/200211/13/1113269.htm" target="_blank">
Statement on Housing Policy</a>, abandoning that target and instead stating that 
&quot;home ownership is essentially a matter of personal choice and affordability&quot;. 
This remained policy under the Tsang administration,
<a href="http://www.info.gov.hk/gia/general/201005/19/P201005190190.htm" target="_blank">
at least until 2010</a>. A
<a href="http://www.thb.gov.hk/eng/policy/housing/policy/consultation/consultation201001.htm" target="_blank">
consultation</a> was then launched, and policy thereafter began to morph, with 
Donald Tsang
<a href="http://www.policyaddress.gov.hk/10-11/eng/p25.html" target="_blank">
announcing</a> the My Home Purchase Plan in the policy address of 13-Oct-2010 
and <a href="http://www.policyaddress.gov.hk/11-12/eng/p22.html" target="_blank">
resumption</a> of the Home Ownership Scheme in his last policy address on 
11-Oct-2012.</p>
<p>In any market economy, there will always be some people who, despite their 
best efforts, are unable to earn and save enough to own a home. In HK, you never 
actually own a home outright anyway - at best, you own a (usually fractional) 
interest in leasehold land. If social harmony is about ensuring that people have 
the security of a home, then
<a href="http://www.housingauthority.gov.hk/en/public-housing/" target="_blank">
Public Rental Housing</a> (<strong>PRH</strong>) tenants are more secure than 
many HK residents, because as long as they need the flat and cannot afford to 
rent in the private sector, then the Government will let them keep it.</p>
<p>PRH, which provides accommodation at deeply-discounted rents, is where the 
Government should focus its efforts, and on increasing and sustaining land 
supply for the production of private-sector homes. There is no reason why 
eligible PRH applicants should have to wait 3 years before being offered a unit. 
The Government seems to treat the waiting period as some kind of additional 
test, hoping that some people will leave the queue and go private. There should 
be inventory ready to go, and no waiting list, just a processing time of a few 
weeks.</p>
<p>Many factors in housing prices (particularly the interest rate) are 
beyond the Government's control, but land supply is not one of them, and the 
fact remains that the median household in HK lives in about 500 sq ft gross (including 
their share of the lift lobby). Donald Tsang's stop-start policies on land 
supply are largely to blame for the slowdown in completed properties in recent 
years. What HK needs is a steady and predictable supply - a commitment to a 
5-year rolling schedule of land auctions that will not be subject to stop-start intervention.</p>
<p>It is only the fear of offending home-owners who have seen the value of 
their properties double in the last 5 years or so (and tycoons, and banks) that 
stops the Government from opening the supply taps wider. The Chief Executive 
wants homes to be more affordable but without decreasing prices of existing 
homes. Page 37, paragraph 7 of his manifesto repeats the HK4HK proposal but 
imposes a condition:</p>
<blockquote><strong>&quot;Subject to the overriding premise of maintaining stable 
property prices...&quot; </strong> </blockquote>
<p>Well, if you are not going to devalue existing properties, then you cannot 
increase supply faster than demand, so then there are only 2 options to make 
homes more affordable: either make homes smaller (and we submit that this has already 
reached its limits) or introduce various forms of subsidy, and that is indeed 
what they are pursuing.</p>
<h3>Mortgage interest deduction</h3>
<p>Apart from the largely-futile HK4HK, the Chief Executive wants to expand the 
already-unfair deduction for home loan interest. He says on page 36 of the 
manifesto:</p>
<blockquote>&quot;For middle-income families, we will extend the period for tax 
deduction of mortgage interest from the present 10 years to 20 years, and raise 
the maximum interest deductible from $100,000 to $150,000.&quot;</blockquote>
<p>After C Y Leung wrote that commitment (not just a &quot;study the introduction 
of&quot;), the Tsang Government expanded the timeframe from 10 to 15 years
<a href="http://www.budget.gov.hk/2012/eng/budget08.html" target="_blank">in the 
budget</a> (paragraph 60(6)) announced on 1-Feb-2012, at a stated cost of 
HK$540m per year over the next 5 years. This is presumably only the incremental 
cost for those who have already used their 10-year allowance. It is unfair 
because it represents a subsidy for investment in property, and that subsidy is 
not available if you rent a home rather than buy one, or if you don't take out a 
loan to buy one. It distorts the choice between renting and buying.</p>
<p>As then-Financial Secretary Donald Tsang
<a href="http://www.budget.gov.hk/1997/speech/eng/speech.htm#REVENUE" target="_blank">
said</a> to LegCo in his budget speech of 1997:</p>
<blockquote>&quot;Some Members have again called for a tax allowance to cover 
spending on mortgage interest or even rental payments...it would be wrong in 
principle to create a general tax concession, regardless of the individual 
family's needs, to cover investment in housing&quot;</blockquote>
<p>Demonstrating his renowned ability to flip-flop his principles, he then 
introduced the deduction in the 1998 budget. Not only is it unfair in principle, 
but because of the non-flat salaries tax rate, the more you earn, the more the 
subsidy is worth. Also, the larger your mortgage loan, the more the subsidy is 
worth. That subsidy flows through to the banks, because it encourages people to 
gear up as much as possible, rather than minimise their borrowings.</p>
<p>The
<a href="http://www.gov.hk/en/residents/taxes/taxfiling/taxrates/salariesrates.htm" target="_blank">
rate of salaries tax</a> ranges from 2% to 17%. You get a tax-free allowance of 
$120k each ($240k per couple) to cover a reasonable cost of living, and pay an 
average of 7% on the next $120k of income (in 3 equal bands at 2%, 7% and 12%), 
and 17% above that. So a couple can earn a combined $480k before paying the top 
rate. At current low interest rates of say 2.5%, a loan with $4m outstanding 
would maximise the deduction. Already, the 15-year $100k p.a. deduction at the 
top rate of 17% is worth $255k, and if expanded to 20-years at $150k, then the 
subsidy will double in value to $510k. If say 250,000 home-owners (in a private 
housing stock of about 1m homes) are able to take full advantage of it, then it 
will have cost a massive HK$128bn.</p>
<p>If the intention is to raise tax allowances, then do it across the board, 
regardless of whether you rent or buy your home. In Feb-2011 Webb-site proposed 
a &quot;Fair and Flat&quot; <a href="salariestax.asp">reform of salaries tax</a> 
to raise allowances and introduce a single flat rate, removing various unfair 
aspects of the system, including mortgage interest and the housing-benefit 
loophole. The new Government should take this forward.</p>
<h3>Stamp duty</h3>
<p>The ironic thing about the mortgage interest deduction is that the $4m loan 
that gets you that $255k tax break is enough (at a 70% loan-to-value) to buy a 
$5.7m flat, and the
<a href="http://www.gov.hk/en/residents/taxes/stamp/stamp_duty_rates.htm" target="_blank">stamp 
duty on that</a> is 3%, or about $171k. So the Government takes $171k out of your 
pockets up front, and then gives it back as a tax break over 15 years (you will 
probably change homes during that period, paying more stamp duty). Why not just 
abolish the stamp duty <u>and</u> the mortgage deduction?</p>
<p>If it is the Government's goal to make housing affordable up front, then why 
do they charge 
buyers a hefty mark-up in the form of stamp duty? Above about HK$4.4m, the rate 
is 3%, rising to 4.25%. That 3% is equivalent to about 1 year's rent on the 
property, maybe a bit longer at current yields. As
<a href="stampout.asp">we have said before</a>, the Government 
should abolish stamp duty because it is a frictional tax on the movement of 
assets regardless of whether the transaction generates a taxable profit. If they 
are not willing to scrap stamp duty, then why not at least exempt stamp duty for 
first-time buyers? That would cut their costs by about 3% immediately, 
equivalent to one tenth of the 30% down-payment they need on a flat.</p>
<h3>More subsidy</h3>
<p>There is more intervention on page 37 of the manifesto, which says</p>
<blockquote>&quot;Subject to adequate supply in the private housing market, we 
will consider introducing low interest or interest-free loans to assist 
middle-class families, subject to certain specified criteria, to purchase their 
homes in the private properties market&quot;</blockquote>
<p>Interest rates are of course already at record lows, and actually the 
criteria are not &quot;certain&quot; because he hasn't &quot;specified&quot; them. It is also 
unclear whether these loans would be made by Government, or just subsidised with 
interest payments to banks, but either way, it is a subsidy on people's purchase 
of property, and distorts the choice between renting and buying. Perhaps they 
would like to subsidise people's rents too? The proposal also begs the question: 
what is the point of offering a tax deduction for mortgage interest if you are 
going to make the loans interest-free?</p>
<h3>Reforming land leases</h3>
<p>Another thing that is not beyond Government control is the financial 
structure of land leases, particularly the trade-off between land premiums and 
future ground rents. In 2010 <a href="leases2.asp">we explained in 
detail</a> how the development market could be opened up to greater competition, 
and capital costs reduced, by raising ground rents on new leases from 3% of 
rateable value to a more substantial figure of say 30%, thereby lowering 
premiums. The proposal has a number of other benefits detailed in the article. 
For homebuyers, the key point is that they get security of tenure, as holders of 
a Government lease, without having to pay so much up front.</p>
<p>There is also the possibility of extending existing leases beyond their 
expiry date, offering increased certainty, in exchange for a commitment to pay 
higher ground rent after the original expiry date - and that would affect the CE 
sooner than most, because the land lease under his houses at 4 Peel Rise, 
complete with illegal structures,
<a href="http://www.info.gov.hk/gia/general/201207/04/P201207040360.htm" target="_blank">
expires</a> in 2038. That's 9 years before the mass expiry of leases in the New 
Territories granted before 1997. And another thing - that desirable property at
<a href="http://www.devb.gov.hk/en/publications_and_press_releases/gallery/photo/index_id_163.html" target="_blank">
Hotung Gardens</a> that the Government wanted to buy: its land lease expires on 
27-May-2033.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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