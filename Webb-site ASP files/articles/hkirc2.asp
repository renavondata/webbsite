
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	font-size: 1em;
}
.auto-style2 {
	margin-left: 40px;
}
.auto-style3 {
	text-decoration: underline;
}
</style>
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

<script type="text/javascript">document.title="Putting the dot back in HK";</script>

	<div class="summary">A deep dive into HK's "not-for-profit" internet domain registry reveals appalling governance, over-charging, continuing conflicts of interests and a severe case of corporate obesity. In late 2015, having hoarded enough cash to run the registry for 9 years, the Government-controlled board reversed a fee cut, losing a quarter of registered domains over the next 3 years, while seeking ways to squander the surpluses on mission-creep rather than return the cash to users. There is a better way.</div>

<h2 class="center">Putting the dot back in HK<br>
<span class="headlinedate">25 April 2019</span></h2>
<p>There is some appalling corporate governance amongst Hong Kong's 
not-for-profit sector, but you would struggle to find a worse example 
than <a href="../dbpub/articles.asp?p=22624">Hong Kong Internet Registration 
Corp Ltd</a> (<strong>HKIRC</strong>), which operates the registry for any 
domain ending in ".HK" or its lesser-spotted Chinese equivalent ".香港".</p>
<p>HKIRC is supposed to be a not-for-profit company, limited by guarantee. It 
has no shareholders and cannot distribute profits to its members, who are 
currently (in general terms) 3,201 domain users in a "Demand Class" and 254 
domain suppliers in a "Supply Class" of members. As a not-for-profit company 
running a registry function
<a href="https://www.hkirc.hk/pdf/DA20100317.pdf" target="_blank">delegated to 
it</a> in 2002 by the HKSAR Government, HKIRC is exempt from taxation, but as we will show, 
HKIRC has been collecting and hoarding profits for years, overcharging users and 
engaging in mission-creep as its directors seek ways to squander the money 
rather than return it to users through lower fees. After cutting prices in 2012-13, it even raised them again in 2015, driving away business 
and reducing 
HK's status on the global cyber-map.</p>
<p>Running the HK domain registry is no different in principle to running the 
Companies Registry or the Land Registry, except that the Government has 
delegated this function to HKIRC. As we noted in our article on 19-Nov-2018 (<a href="cr.asp">Companies 
Registry illegally overcharged users HK$3.6bn</a>), the Court of Final Appeal 
has ruled that "Trading Funds" (which include the Companies Registry and Land 
Registry) perform a public service and should not be budgeting profits beyond a 
reasonable rate of return to cover necessary investments, otherwise it amounts 
to unlawful taxation of users.</p>
<h3>The Government takeover</h3>
<p>We last <a href="hkirc.asp">wrote about</a> HKIRC in 2008, when 
it was in the middle of a HKSAR Government takeover. Until then, the 
Government had 1 seat on the board out of 13, and afterwards 4 out of 8, with a 
casting vote for the Chairman, who has since then always been a 
Government-appointed director, giving the Government de facto control. In fact 
the
<a href="https://www.hkirc.hk/pdf/general_meetings/egm/2008/Additional/2008-06-13%2050th%20HKIRC%20Board%20Meeting%20Minutes%20Extract.pdf" target="_blank">
original plan</a> was a simple 4 out of 7 majority of government appointees. </p>
<p>The vote 
that changed HK's internet history
<a href="https://www.hkirc.hk/content.jsp?id=55#!/&amp;in=/webcontent/eng/hkirc/egm2008.html" target="_blank">
was a farce</a>. No postal, electronic or 
proxy votes were allowed, only in-person votes. Ballot papers were handed out at 
the entrance without members' names on them, and only 48 members (including our 
editor and his company) attended and voted, out of a total of 1,278 members, 
just hours after a full-blown number-9 typhoon had ended, on a very wet Saturday 
evening.</p>
<h3>The R-R Model</h3>
<p>HKIRC has a single for-profit subsidiary, Hong Kong Domain Name Registration 
Co Ltd (<strong>HKDNR</strong>), which formerly carried out all of the 
registration activities, but in July 2011, the Registry-Registrar (<strong>R-R</strong>) model was 
<a href="https://www.hkirc.hk/content.jsp?id=63#!/&amp;in=/company_info/pressrelease.jsp?item=436" target="_blank">introduced</a>, splitting the functions to create a wholesale-retail system in which 
competing registrars (including HKDNR) are accredited by HKIRC to sell and administer domains, 
while HKIRC maintains the central register and deals with the registrars on theoretically equal wholesale terms. 
This is the common model adopted worldwide to stimulate competition as far as 
possible while maintaining a central registry. The costs of selling, billing, reminding and collecting from end-users or 
resellers are dealt with by the registrars, who often also provide the same 
customers with other services such as web-hosting, e-mail servers and SSL 
security certificates. Registrars pay to HKIRC per-domain fees, an annual 
accreditation fee of HK$10,000, as well as a 1-time application fee of HK$10,000.</p>
<p>Despite the purported separation of roles, to this day the boards of HKIRC and HKDNR
<a href="https://www.hkirc.hk/content.jsp?id=63#!/52&amp;in=/webcontent/eng/hkirc/Board&amp;CommitteesMeeting17-18.html" target="_blank">
hold their meetings together</a> and are presumably identical. That means that 
HKDNR's directors have information about the inner workings and plans of HKIRC 
that the other registrars do not have. The two companies share an office at the 
government-owned <a href="../dbpub/articles.asp?p=17936">Cyberport</a> and share some staff and all overheads. 
Various
<a href="https://www.hkirc.hk/pdf/board_meeting/HKIRCBoardMinutesSummary20180822.pdf" target="_blank">
summaries</a> of board meetings refer to cost allocation ratios between 
the two.</p>
<p>At the end of 2011, 6 months after the R-R Model was introduced, there were 
15 registrars of which 6 (including HKDNR) were based in HK. At the end of 2018, there 
were 34 accredited 
registrars, of which 9 are based in HK, 5 in mainland China 
and 20 elsewhere. The top 3 have 64.9% of the market, the next 2 have 7.6% and 
the next 5 have 13.2%, taking the total for the top 10 to 85.7%. That's not 
unreasonable, as economies of scale are important in this industry, and the 
smaller players are probably just offering .HK domains as a small part of a much 
larger business.</p>
<p>HKDNR was initally kept by HKIRC as a "back-up" registrar in case the R-R 
Model failed where other markets have succeeded, but that is clearly no longer 
an issue - if any registrar goes out of business, the domain registrations it 
administered will still be valid (having been pre-paid) and there are 33 other 
registrars (including 9 in HK) to which the domains can be transferred. HKDNR is 
long past its use-by date and it (or its book of business) should be sold off to 
the highest bidder, leaving HKIRC as a pure registry without the conflicts of 
interest.</p>
<p>Think about the conflicts here: the Land Registry doesn't own an estate agent 
and doesn't provide conveyancing services, the Companies Registry doesn't 
provide company secretarial services, HKEX doesn't own a stockbroker, the Civil 
Aviation Department doesn't own an airline, and the Communications Authority 
doesn't provide telephone services. HKIRC should not be running HKDNR. </p>
<h3>Fees</h3>
<p>Now we get to the heart of the issue. As the number of domains (net of 
deletions) grew over time, economies of scale were kicking in, and HKIRC was 
piling up cash even before the R-R model was introduced. At the end of 2008, 
just after the Government takeover, HKIRC Group had 162,405 English domains and 
a cash pile of HK$50.86m, but it is fair to note that domain registries always 
have an amount of pre-paid fees on hand which have not yet been "earned" over 
the period of the registration. These are recorded as a liability known as 
"deferred income". In the case of HKIRC, at the end of 2008, they had deferred income of $30.43m, so 
deducting that, the net cash was $20.43m.</p>
<p>In the 2008 annual report, newly-appointed then-Chairman 
<a href="../dbpub/positions.asp?p=132">John Strickland</a> 
wrote:</p>
<blockquote>"The Board will also be considering the appropriate use of the 
company’s growing financial surplus. Reducing charges to domain name holders 
will be an obvious candidate."</blockquote>
<p>Very well said, but nothing was done for another 4 years. Meanwhile in Jul-2011, 
the R-R Model took effect. In a somewhat arbitrary approach, HKIRC set its 
initial wholesale registry fee at HK$125 per domain, exactly half what HKDNR had 
been charging for the retail product. We doubt that there was any science to 
that. $125 was too high, and HKIRC continued to pile up cash. Running the master 
register is actually a very simple, low-cost exercise, unless you choose to make 
it otherwise by indulging in publicity stunts and projects beyond your core 
remit. As Mr Strickland put it in the 2008 report:</p>
<blockquote>"It is our aim to educate stakeholders in the actually very simple 
and non controversial work that the company performs while seeking a lower 
profile through impeccable but unnoticable good service."</blockquote>
<p>That should be even more so for the registry, which does not deal with the 
public or resellers, leaving all that to registrars. Finally, exactly 1 year 
after rolling out the R-R Model, on 18-Jul-2012 HKIRC
<a href="https://www.hkirc.hk/content.jsp?id=63#!/&amp;in=/company_info/pressrelease.jsp?item=457" target="_blank">
cut the main registry fee</a> by 20% from HK$125 to $100. This was followed on 
1-Aug-2013 by
<a href="https://www.hkirc.hk/content.jsp?id=50#!/64&amp;in=/company_info/pressrelease.jsp?item=476" target="_blank">
another cut</a>, from $100 to $80 (US$10.26), making an overall reduction of 36% 
in just over 1 year. They were now getting closer to the registry pricing for 
the most popular global domains such as .com. The second price cut had a 
noticeable impact, with a 52% net increase in .HK domains from the end of 2013 
to the end of 2015.</p>
<p>We pause to note that even the US$7.85 registry fee then 
charged by Verisign for .com was hugely lucrative - the U.S. government has
<a href="https://www.theregister.co.uk/2018/11/02/dotcom_domains_pricing/" target="_blank">
completely mismanaged</a> that relationship and continues to allow Verisign to 
milk a government-delegated cash cow rather than retendering the contract to 
whomever will charge the lowest registry fees. </p>
<p>So here's the .HK domain picture over time. We are only counting the English 
domains, because the Chinese domains are a very small element and are usually 
bundled for free with a corresponding English domain, although 91% of 
registrants don't take up that option.</p>
<img class="center" alt="HKIRC domains" src="../images/HKIRCdomains2.png">
<p>The growth from 2013 to 2015 is unsurprising: when you cut the price, demand increases and you sell 
more, offsetting part or all of the fee cut. Registrars are then more likely 
to recommend .HK to customers than alternative domains. The registry costs are 
fairly constant: HKIRC (parent) had costs of $13.3m in 2012 (the first full year 
of the R-R Model) and $14.1m in 2015, barely changed after inflation. The 
revenue from registry fees decreased from $21.9m in 2012 to $19.2m in 2014, 
a 12% reduction despite the 36% fee cuts.</p>
<p>Keep in mind that there's a lag in these numbers. When a domain is 
registered, the first year's fee is paid, and sometimes longer if 
the holder expects fees to rise or if the registrar offers discounts for multi-year 
payments (as they rationally would). So a fee-cut attracts new registrations 
but doesn't affect deferred 
income from existing domains. Similarly, a fee-hike deters new domains but won't 
affect an existing domain until it comes up for renewal, at which point the user 
is more likely than before to allow it to expire. HKIRC doesn't publish the 
numbers of new additions or deletions from the register, only the net change.</p>
<p>You might think that HKIRC would be happy that its core mission was 
succeeding, that the number of .HK domains had surged in response to the fee 
cuts, and that Asia's World City was more prominent on the global cyber-map. 
They were still making enormous profit margins. In 2014, the registry made a 
profit of $10.37m (excluding dividends from HKDNR), or 48% of revenues of 
$21.64m, so they could and should have cut fees further. The following chart 
shows the registry's profits (remember, it's not-for-profit) and as a percentage 
of its revenues. We should mention that the profits would have been $1.87m higher 
in 2018 if they hadn't started racking up unnecessary expenses on mission-creep which we'll 
discuss later in this article. So the adjusted 2018 profit was $12.74m, or 47% 
of revenue.</p>
<img class="center" alt="HKIRC profit" src="../images/HKIRCprofit2.png">
<p>At the end of 2014, HKIRC (parent) had cash of HK$122.3m and deferred income 
of $22.6m, leaving net cash of $99.7m. It's operating costs in 2014 were just 
$13m, so it could have continued in operation for another 9 years without a 
single penny of cash income.</p>
<p>The 2014 annual report published in Apr-2015 stated:</p>
<blockquote>"The percentage growth of the number of registrations in 2014 is 
more than that in 2013. This may be due to the price reductions in 2012 and 2013 
and more effort on the part of our registrars to sell .hk. We hope that the 
growth rate will increase further in 2015."</blockquote>
<h3>Too much money and too successful? Raise your fees!</h3>
<p>So, faced with a growth in domains and a huge pile of cash, what did the 
directors of HKIRC do? You guessed it, they raised fees. Mr Strickland no longer 
had a say - his 6-year term expired on 16-Dec-2014. The Government appointed 2 
new directors that day: <a href="../dbpub/positions.asp?p=13589&amp;hide=N">Leo 
Kan Kin Leung</a> (<strong>Leo Kan</strong>) and <a href="../dbpub/positions.asp?p=26229&amp;hide=N">
Francis Chin Yuk Lun</a> (<strong>Francis Chin</strong>), while
<a href="../dbpub/positions.asp?p=7079&amp;hide=N">Joseph Yu Shin Gay</a> (<strong>Joseph 
Yu</strong>), who 
was appointed by the Government in Feb-2009, took over as Chairman for 1 year. 
He had served the board twice before that, including from its incorporation in 
2002-2004.</p>
<p>Effective 1-Dec-2015, registry fees were increased by 56.25% from $80 to $125 
per domain. Earlier than this, on 29-Aug-2015, HKDNR
<a href="https://www.hkirc.hk/content.jsp?id=63#!/&amp;in=/company_info/pressrelease.jsp?item=503" target="_blank">
announced</a> that it would increase its retail prices from $200 to $250 
effective 26-Oct-2015. Why on earth did the board of HKIRC raise its fees? It 
comes back to the conflict of interest of still owning HKDNR. According to the 
<a href="https://www.hkirc.hk/content.jsp?id=50#!/&amp;in=/webcontent/eng/hkirc/annual_report_2016.html" target="_blank">2015 annual report</a>, 
that year external registrars represented 89.3% of all new 
registrations and managed 57.3% of the registration base, surpassing 50% for the 
first time and reducing HKDNR's market share to 42.7% of all domains and only 
10.7% of new domains. The report states:</p>
<blockquote>"In 2015, we have restored the HKIRC wholesale prices and the HKDNR 
retail prices to their pre-2012 levels with effect from 26 October 2015. This 
adjustment was necessary to maintain the financial healthiness of the 
registry..."</blockquote>
<p>This is a complete and utter falsity. The financial health of HKIRC was never 
an issue given its excessive profit margins and its huge stash of cash, unless 
that is a reference to corporate obesity. However, HKDNR was 
a different matter. It had not innovated, did not offer other services as its 
competitors did, and deliberately kept its fees high, enjoying the inertia of 
those registrants who couldn't be bothered to move, but losing out to 
competitors on new registrations. As Mr Strickland put it in the
<a href="https://www.hkirc.hk/pdf/general_meetings/agm/2012/Annual_Report/E105.pdf" target="_blank">2011 
report</a>: "HKDNR will 
not compete with them on price and will pay the same fees to HKIRC as other 
registrars."</p>
<p>HKDNR, being a private for-profit company, does not have to publish its 
accounts, but as it is the only subsidiary of HKIRC, we can calculate its bottom 
line by subtracting the parent company profit from the group profit. This tells 
us that HKDNR's profit after tax declined from $3.79m in 2012 (the first full 
year of the R-R Model) to HK$1.32m in 2014. Monthly management accounts would 
have shown a worsening picture. It made a small profit of $57k in 2015 and a 
loss of $937k in 2016, before returning to modest profit in 2017 and 2018:</p>
<img class="center" alt="HKDNR profit" src="../images/HKDNRprofit2.png">
<p>The summary of minutes of the "Consultative and Advisory Panel" (<strong>CAP</strong>) 
on 
<a href="https://www.hkirc.hk/pdf/board_meeting/HKIRCCAPMinutesSummary20150603.pdf" target="_blank">3-Jun-2015</a> reveal the thinking behind the fee rise:</p>
<blockquote><span class="auto-style1">"</span>The Chairman [presumably, Joseph Yu] pointed out that although external registrars 
take up 68% of new domain registrations and manage 42% of all .hk domain names, 
they only provide 28% of the Group's total revenue versus HKDNR which 
contributes 72% of the total revenue of the Group. CAP members expressed their 
concern about and support of this point. It is crucial that HKDNR maintains its 
financial and operational viability." </blockquote>
<p>Er, no, it isn't crucial, or even necessary. Did you spot the sleight of hand in that statement? The 
Chairman included all of the fees attributable to domains managed by HKDNR, but 
of course, the part which is the registry fee for each domain is paid in 
advance by whichever registrar manages the domain, even if the registrar 
subsequently goes bust. There was no mention of HKIRC's vast profitability, and no 
mention of the fact that HKDNR is not a systemic risk because there are plenty 
of other registrars who could service the domains. Besides, there's no obvious reason why the CAP 
should be advising HKDNR at all. The CAP doesn't advise the other registrars, 
and it should be focussing on HKIRC as a stand-alone entity.</p>
<h3>Property</h3>
<p>The CAP minutes of the same meeting contain another gem:</p>
<p class="auto-style2">"CAP members noted that the Company is looking for office 
to purchase, as this will help reduce the expenditure and the uncertainty 
brought about by the fluctuation in the local property market in the long run."</p>
<p>Think about that carefully. For 13 years, HKIRC/HKDNR had rented premises 
without difficulty - you see, HK has a thing called an office rental market. 
When the economy is booming, rents may rise, but domain registrations and 
renewals are correlated with that, and when the economy sags, rents tend to 
fall, and demand for domains drops. If HKIRC owned its office, all it would be 
doing is increasing its exposure to an economic downturn as it would not benefit 
from falling rents and it would likely lose value on the property too. It 
wouldn't "reduce expenditure" unless you ignore the huge capital expenditure for 
the property, and it wouldn't "reduce uncertainty", it would increase exposure 
to a downturn. 
Also, HKDNR now has very little cash of its own. Its historic hoard of profits 
was paid out to HKIRC in dividends by 2014, so it would have to rent its share 
of the property from HKIRC.</p>
<p>The property purchase plan was never mentioned in the annual reports. The
<a href="https://www.hkirc.hk/pdf/board_meeting/HKIRCBoardMinutesSummary20140911.pdf" target="_blank">
board minute summary</a> of 11-Sep-2014 (item 5) affirmed a plan to continue 
renting premises, but the <a href="https://www.hkirc.hk/pdf/board_meeting/HKIRCBoardMinutesSummary20150324.pdf" target="_blank">
board meeting summary</a> of 24-Mar-2015 (item 8), under new Chairman Joseph Yu, 
states that the board had appointed
<a href="../dbpub/positions.asp?p=63310">Felix See Chi Kwok</a>, Leo Kan and 
Francis Chin (all of whom were Government-appointed directors) to sit on the 
"Office Purchase Committee". Thankfully, this real estate frolic seems to have 
come to an end (for now at least) by Feb-2017 when HKIRC/HKDNR became a 
Government tenant at the Cyberport.</p>
<p>When Mr Yu's term expired on 16-Dec-2015, he was replaced as Chairman by
<a href="../dbpub/positions.asp?p=135214">Simon Chan Sai Ming</a>, Deputy CEO of 
state-controlled <a href="../dbpub/orgdata.asp?x=y&amp;p=2206">Nanyang 
Commercial Bank</a>.</p>
<h3>The cash pile</h3>
<p>Every directors' report since 2007 to 2018 inclusive has contained the following 
wording:</p>
<blockquote>"In relation to the [apparent substantial] increase[s] in the 
[surplus and the] bank balance in financial year [N] compared with financial 
year [N-1], the directors are obliged to draw readers’ attention to the fact 
that [a major portion/part] of the bank balance is actually deferred 
registration income which can only be realized in the future according to a 
clearly defined time schedule (see Note [X] on page [X] of the financial 
statements). Also, such increases do not indicate a trend for the coming years. 
The Management and Board of the Group and the Company will continue to manage 
the Group’s and the Company’s finances with due regard to its public mission, 
planned institutional changes, and stakeholder expectations. These include, for 
example, the financial implications arising from the [proposed] 
Registry/Registrar model, and the need for investments in the Group’s and the 
Company’s technology and support infrastructure in order to provide 
business-friendly, secure and robust domain name registration services."</blockquote>
<p>It wasn't until 2016 that they changed "major portion" to "part", even though in 2015, only 14.4% of the cash pile was 
covered by deferred income. And they had to delete "apparent substantial" before 
"increase in the bank balance" because the cash pile is now so huge that its 
year-on-year growth rate has slowed. And there is of course a "trend for the 
coming years" when you are running such a predictable cash surplus. Do you see a 
trend in the picture below? You'll notice a jump in 2014 because $34.5m of 
historic profits were distributed by HKDNR to HKIRC. There has only been 1 
dividend since then, of $1.3m in 2015.</p>
<img class="center" src="../images/HKIRCcash2.png" alt="HKIRC cash">
<p>HKIRC at the end of 2018 had $180.3m of cash, deferred income of $31.9m, and 
net cash of $148.4m. The cash pile is <strong>$714</strong> for each of the 
252,378 domains in existence at the end of the year, of which $126 is 
pre-payment and $588 is the hoarded surplus. Operating costs (excluding mission 
creep) were $18.65m, or $72 per average domain during the year, so it could run 
the registry for over 9 years with the cash on hand, or 18 years if revenue were reduced so as to 
cover half of the expenses. And of course, if you cut 
prices, then the number of registrations (demand) would increase again, so you 
would need to cut fees by more than half to reduce revenue by half.</p>
<p><strong>And that is what it 
should do. If new and existing domains were charged at HK$30 per year 
rather than $125, then the existing domains would still bring in $7.57m per 
year, not allowing for the increase in demand at the lower price, and the rest 
would be financed from reserves.</strong> Try it and see. If it turns out that 
the laws of economics have been repealed, then you can always raise fees again 
later.</p>
<h3>Mission creep</h3>
<p>OK, so there's one more problem. HKIRC may have abandoned plans to convert the cash 
into concrete, but the 
<a href="/dbpub/officers.asp?p=22624&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0" target="_blank">current board</a> is 
now itching to give away the cash, as if it was the Social Welfare Department 
or Education Department. That's what taxation is for, but HKIRC was not 
established as some sort of fund-raising vehicle for charity, over-charging for 
domains so that the board could give away the money. The board minutes 
<a href="https://www.hkirc.hk/pdf/board_meeting/HKIRCBoardMinutesSummary20180822.pdf" target="_blank">summary for 
22-Aug-2018</a> states:</p>
<blockquote>"The Board approved to set up a Foundation of charitable nature".</blockquote>
<p>We only discovered this by wading through the 
<a href="https://www.hkirc.hk/content.jsp?id=51#!/52" target="_blank">board minute summaries</a>. 
It has apparently been replaced on
<a href="https://www.hkirc.hk/pdf/board_meeting/HKIRCBoardMinutesSummary20190108.pdf" target="_blank">
8-Jan-2019</a> (item 15) by a thing called "i.hk Fund" which will not be 
incorporated, with an approved but secret budget. The 
glossy 
<a href="https://www.hkirc.hk/content.jsp?id=50#!/&amp;in=/webcontent/eng/hkirc/annual_report_2019.html" target="_blank">
2018 annual report</a> doesn't mention a foundation or i.hk Fund, but it does blather on about 
how HKIRC has been spending users' money on things which bear almost no connection to the 
.HK domain, since web developers can use any domain they want, and mobile app 
developers don't even need domains for their apps. Just read this:</p>
<blockquote>"With the aim to assist the disadvantaged local communities and to 
promote the adoption of .hk among the youth, HKIRC has been involved in a wide 
range of public mission activities. HKIRC has been organizing the 2018/2019 “<a href="https://web-accessibility.hk/" target="_blank">Web 
Accessibility Recognition Scheme</a>” [<strong>WARS</strong>]. The Scheme was organized by the Office of 
Government Chief Information Officer (“<strong>OGCIO</strong>”) and the Equal Opportunities 
Commission [<strong>EOC</strong>] before. The number of applicants this time has hit record high since 
it was launched in 2014. To further promote the enrollment of enterprises and 
organisations of all sizes, “Friendly Website” and “Friendly Mobile App” are 
newly added, which serve as entry-level recognitions for enterprises and 
organisations that do not have many resources allocating to upgrade their 
websites. We consider that a little move on their websites/mobile Apps can bring 
some help to the people in need."<br></blockquote>
<p>In other words, spotting a pile of cash, the Government via the OGCIO and EOC 
has shifted the costs of this project onto HKIRC. What next? Buying laptops for 
schools, perhaps? Funding scholarships? And there's more in the report:</p>
<blockquote>"Partnering with secondary schools and 
service providers in Hong Kong, HKIRC has launched ‘iStudent Programme’ with an 
aim to provide a platform for students to develop their own website and build 
web presence in the Internet world. HKIRC has also sponsored various industry 
programmes, such as the incubator programmes, university social enterprise 
challenges programme, underwater robot contest, etc."</blockquote>
<p>Look closely at the annual reports and you will see a subtle change in the 
"mission" statement of HKIRC. The first such statement we can find, 
<a href="https://www.hkirc.hk/pdf/general_meetings/agm/2008/Annual%20Report/Mission.pdf" target="_blank">
in the 
2007 report</a>, is straight forward:</p>
<blockquote>"[HKIRC] is a <span class="auto-style3">non-profit-making</span> 
organisation that is committed to providing '.hk' Internet domain registration 
and related services in an effective, customer-centric and sustainable manner."</blockquote>
<p>But oops, they were making a profit. So 
<a href="https://www.hkirc.hk/pdf/general_meetings/agm/2009/Annual_Report/Mission.pdf" target="_blank">in 
the 2008 report</a> that was changed to:</p>
<blockquote>"[HKIRC] is a <span class="auto-style3">not-for-profit</span> 
organisation committed to providing ‘.hk’ Internet domain name registration and 
related services in an effective, customer-centric and sustainable manner.</blockquote>
<p>Then 
<a href="https://www.hkirc.hk/pdf/general_meetings/agm/2011/Annual_Report/110421%20HKIRC_annual%20report%202011_Content_mission.pdf" target="_blank">in 
the 2010 report</a>, they dropped the pretence that they were not trying to make a 
profit, but acknowledged that they couldn't pay it out. Also, Chinese domains 
had started and the R-R Model was coming, so they refined what they do:</p>
<blockquote>"[HKIRC] is a <span class="auto-style3">non-profit-distributing</span> 
organisation that is committed to providing <span class="auto-style3">and 
supervising the provision by others of</span> .hk <span class="auto-style3">and .香港</span> Internet domain name 
registration, <span class="auto-style3">resolution</span> and related services 
in an <span class="auto-style3">uninterrupted</span>, effective, 
customer-centric and sustainable manner"</blockquote>
<p>Then 
<a href="https://www.hkirc.hk/pdf/general_meetings/agm/2019/Annual_Report/i_Mission.pdf" target="_blank">in 
the 2018 report</a>, they tacked on this sentence:</p>
<blockquote>"In addition, HKIRC promotes Hong Kong as an inclusive, secure, 
innovative and international city for the Internet and encourages the use of 
Internet and the related technologies."</blockquote>
<p>At the same time, HKIRC identified the expenses for what it now calls its 
"public mission" at HK$1.87m, including $1.2m of "professional fees". The
<a href="https://www.hkirc.hk/pdf/board_meeting/HKIRCBoardMinutesSummary20180423.pdf" target="_blank">
board minute summary</a> (item 7) of 23-Apr-2018 suggests that most or all of 
this was payable to <a href="../dbpub/orgdata.asp?p=839424">Kanhan Technologies 
Ltd</a>, the "main 
assessing vendor" for the WARS.</p>
<h3>HKIRC is taking .HK off the map</h3>
<p>The problem with hiking your fees and then spending the profits on property 
or "assisting the 
disadvantaged" is that it makes you uncompetitive with other, global domains and 
customers walk away. As the chart above shows, after raising its fees 
in 2015, <strong>the .HK register lost 24.4% of its domains</strong> in the following 3 years (and 
probably more than that on a monthly-high basis). So the core "mission" of HKIRC 
is failing, and HK is becoming less visible on the global cyber-map. Meanwhile, 
the global .com and .net domains run by Verisign registered a <a href="https://www.verisign.com/en_US/domain-names/dnib/index.xhtml" target="_blank">
net increase</a> of 4.5% in 2018.</p>
<p>And that's a shame. HK should be at pains to establish its proud cyber-image, 
counter-acting the surely-incorrect notion that the PRC Government is crawling 
HK web sites looking for <a href="anthem2019.asp">parodies of the 
national anthem</a>, aspirations of independence or pages referring to Taiwan as 
a country. Our editor owns several .HK domains, but we're not going to use a .HK 
as our primary domain, because that would open up the possibility of future 
censorship at the domain level rather than just blocking our site to users 
within HK. Our server is located in the land of the free, or at least, the land 
of the First Amendment. Start-up businesses, individuals and other non-media 
entities who are not worried about censorship will more likely base their choice 
on cost. A 1-year fee may not seem like much, but you start with the assumption 
that your site will be up for years if not decades, and the reaction of the 
market to HKIRC's fee cuts and subsequent fee rise proves the point.</p>
<p>Ironically, on the creaky HKIRC web site you will find an <a href="https://www.hkirc.hk/content.jsp?id=43">About Us page</a> (<a href="http://archive.is/AOH3Y" target="_blank">snapshot 
here</a>)) with a list of "Promotion Partners/Supporting Organisations" which are 
held out as examples of how the .hk domain "helped us unite our caring spirit on 
the net", whatever that means. Among them, we note that 
<a href="http://www.cathaypacific.com.hk" target="_blank">CathayPacific.com.hk</a> 
forwards to the airline's global .com domain, state-owned
<a href="https://www.boci.com.hk/" target="_blank">BOCI.com.hk</a> since 2017 
forwards to bochk.com (Bank of China, HK), and PCCW.net.hk is dead, but the company uses pccw.com. 
So that page is not so much a promotion of .HK as a promotion of the alternatives.</p>
<h3>The AGM</h3>
<p>The 
<a href="https://www.hkirc.hk/content.jsp?id=55#!/&amp;in=/webcontent/eng/hkirc/agm2019.html" target="_blank">next AGM of HKIRC</a> will be held on 16-May-2019. You would think with all 
this talk about "web accessibility" that HKIRC would at least put its own house 
in order and produce a secure online voting system for its members - after all, 
they do have an <a href="https://members.hkirc.hk/MRS/" target="_blank">online 
account system</a>  for members. But no, they haven't. They are still voting by 
e-mail or post, and not only that, but the member has to attach a copy of her ID 
card, or for companies, a copy of their business registration certificate, to 
"prove" that the e-mail is from the member.</p>
<p>If the member wants to appoint a 
proxy, then she has to login and download a personalised, serial-numbered proxy 
form, not just a standard form that could have been emailed to her, and attach 
the same ID proof.</p>
<p>It is a quite ridiculous procedure, and the inconvenience is bound to limit turnout, as usual. When we submit proxy forms to vote in 
listed companies, all that is required is a manual signature on a standard form, 
or in the case of a corporate shareholder, an authorised signature and company 
seal. So voting in HKIRC is much harder.</p>
<p>Not that there is much to vote for. It is a Government-controlled board, 
after all, and its policies are mimicking the Government, hoarding cash like 
there is no (Lantau) tomorrow and then frittering it away on projects beyond its 
remit, rather than cutting revenues to balance its budget. <strong>Members who 
are frustrated by the board's behaviour could at least vote against the adoption 
of the financial statements, as a rejection of the status quo</strong>.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=56823">HONG KONG DOMAIN NAME REGISTRATION COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22624">HONG KONG INTERNET REGISTRATION CORPORATION LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=135214">Chan, Simon Sai Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=26229">Chin, Francis Yuk Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13589">Kan, Leo Kin Leung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=63310">See, Felix Chi Kwok</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=132">Strickland, John Estmond</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7079">Yu, Joseph Shin Gay</a></li>
				
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