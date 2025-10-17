
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

<script type="text/javascript">document.title="Revealed: the USA has the longest land lease in China";</script>

	<div class="summary">Breaking through false search results at the HK Land Registry, Webb-site finds that the USA in 1960 was granted a unique option to purchase the freehold of its HK Consulate site. In 1999, Tung Chee Hwa's government agreed to convert this to a 999-year lease and remove the restriction on sale for only HK$44m, granting the USA a potential windfall and the longest leasehold land in China.</div>

<h2 class="center">Revealed: the USA has the longest land lease in China<br>
<span class="headlinedate">6 August 2018</span></h2>

<p>In our 2-part series on <a href="leases1.asp">Hong Kong Land 
Lease Reform</a> (7-Oct-2010) we noted that no 999-year land leases had been 
granted in Hong Kong since 1901. The standard grant after that time and until 
the Sino-British Joint Declaration (<strong>JD</strong>) took effect on 
27-May-1985 was a 75-year lease with a single right of renewal for a further 75 
years (75+75). After the JD, the standard grant became 50 years plus the 
remaining period until the end of British rule on 30-Jun-1997. Since the 
Handover, the standard land lease has been a straight 50 years (with the exception of 
Disneyland, which has a 50+50 lease, thank first HK Chief Executive Tung Chee 
Hwa for that).</p>
<p>Our article included the throw-away remark that the USA Consulate
<a href="https://goo.gl/maps/Ppnxm1PXjLu" target="_blank">at 26 Garden Road</a> 
was "rumoured" to be sitting on an exceptional 999-year lease, but we had not 
verified that. A reader recently took up the baton and sent us the Land Register 
summary for the consulate, which sits on Inland Lot 6622. The "Property 
Particulars" section states that it has a lease term of 75 years, renewable for 
75 years, commencing 19-Apr-1950:</p>
<img class="center" alt="US consulate original lease term" src="../images/uscon1.png">
<p>So that's completely standard, you might think, "move along, nothing to see 
here". But we do love a challenge. As we will show, the registry entry is 
deceptive, false and misleading. Down in the list of "incumbrances" in the 
registry is an instrument, UB7899096, dated 21-Oct-1999 (again, during the Tung 
Chee Hwa administration) titled "Deed of variation of government lease", and in 
the Consideration (payment) column, a "-", indicating nil. You might think that 
this document is just some minor alteration to the lease, for which there was no 
consideration, and not bother to buy a copy of the deed at a further cost of 
HK$100 from the registry to find out what is inside. We did bother, and it was 
worth every cent.</p>
<p>What <a href="../codocs/USconsulate999OCR.pdf" target="_blank">the deed</a> 
shows is that there was in fact a modest payment, of only HK$44m, in exchange 
for which the HKSAR Government in 1999 extended the lease term to 999 years from 
19-Apr-1950, making it the longest lease in HK by a margin of about 49 years, 
ahead of the last 999-year lease granted in 1901. In the same deed of variation, 
a number of other provisions in the lease were relaxed. The most significant of 
these is that a restriction on sale was removed. The original lease 
included a provision that the USA may not dispose of the site (or underlet it) 
without the consent of the Governor of HK. This is not surprising, given that 
the site was provided without payment of any land premium and only a token rent. 
It was to be used only as a consulate, and implicitly, it would have to be 
returned to the Government if the consulate was ever re-located or closed. The 
Governor (now Chief Executive) would have been reckless if he had simply allowed 
the USA to sell the site in the open market without paying a land premium.</p>
<p>With the deed of variation, that restriction on sale has been removed, so the 
USA could, if it wanted, sell the entire site in the open market, and relocate 
to leased offices or simply close. Tung Chee Hwa's administration apparently 
gave up that restriction for almost nothing.</p>
<p>So, why did HK grant the USA an extension to 999 years and remove the sale 
restriction? To understand this, you need to look at the
<a href="../codocs/USconsulateLeaseOCR.pdf" target="_blank">original lease</a> 
and the circumstances of its grant. For some reason, the lease exceptionally 
included an option for the USA to purchase the freehold (also known as the "fee 
simple" of the site), which as far as we know was the only such option in any 
land lease in HK (if you know otherwise, please <a href="../contact">contact us</a>). 
St John's Cathedral (also on Garden Road) is a freehold site, but only so long 
as it is a church, under
<a href="http://www.hklii.org/eng/hk/legis/ord/1014/s6.html" target="_blank">
Section 6(1)(a) of the Church of England Trust Ordinance</a>.</p>
<p>The original consulate lease allowed for the USA to give 3 months' 
notice of its desire to purchase, upon which there would be a payment "mutually 
agreed to be the fair value of the freehold reversion". Presumably if agreement 
could not be reached then common law rights would allow the USA to seek judicial 
intervention.</p>
<img class="center" alt="US consulate lease extract" src="../images/uscon2.png">
<p>The lease was signed by then US Consul-General Julius Cecil Holmes and 
dated 14-Apr-1960, during the Presidency of Dwight Eisenhower and when Harold 
Macmillan was UK Prime Minister. However, that 
signing probably came some time after completion of the main building. The 
current
<a href="https://hk.usconsulate.gov/our-relationship/policy-history/past-consuls-general-hk/" target="_blank">
US Consulate web site</a> states that it has been at the site "since the late 
1950s". Records from the Colonial Office in the UK National Archives, relating 
to "<a href="http://discovery.nationalarchives.gov.uk/details/r/C2330724" target="_blank">New 
American Consulate Building: proposed site</a>" cover a period in 1947, just 2 
years after WWII, when discussions were underway, and there was clearly internal 
discussion documented in "<a href="http://discovery.nationalarchives.gov.uk/details/r/C2330725" target="_blank">New 
American Consulate building: lease for site</a>" in 1949, while the communist 
takeover of China was in progress. It is unclear why it took 11 years to sign 
the lease, but perhaps the exceptional terms were a matter of diplomatic 
negotiation between the UK and USA.</p>
<p>The records have not been digitised, so we will leave it to other journalists 
to visit Kew, London and inspect those records, or to try to obtain copies of 
them in Hong Kong from the Public Records Office. It would be fascinating to 
learn how that negotiation unfolded. It appears that HKPRO has a
<a href="http://search.grs.gov.hk/PRO/srch/english/show_detail.jsp?recordkey=1248075642&amp;srchscreen=sys_all&amp;source=Y&amp;version=internet" target="_blank">
microfilm</a> of the records.</p>
<p>While it is true that the USA had the option to acquire a freehold, such a 
purchase should 
have come at a price that reflected the removal of the restriction on assignment 
(sale) of the site, because until then, it was quite clearly a "use it or lose 
it" lease, while a freehold gives full right of disposal. The removal of that 
option in exchange for an assignable, 999-year lease, which is near-freehold, 
should have attracted a proper land premium that reflected the uplift in value.</p>
<p>The site has a land area of 61,719 sq. ft. Even at a low-rise plot ratio of 
say 5, that would provide 308,595 gross sq. ft. of floor area. At say HK$25,000 
per sq. ft., that would make it worth HK$7.71bn (US$989m) today, possibly more. 
The site is adjacent to the low-rise Central Government Offices East Wing and 
the Chief Executive's residence, Government House, and opposite the historic 
Helena May, so rezoning to a higher plot ratio (the maximum for offices being 
15) might be more difficult.</p>
<p>Anyway, the bottom line is this: the USA was given in 1960 a possibly unique 
option to purchase the freehold, and the HKSAR Government agreed in 1999 to 
convert that option into a 999-year lease and remove the sale restriction, giving 
the USA a 
potential windfall together with the longest land lease in Hong Kong. None of 
that was publicly announced, and the Land Registry to this day hides it to any 
searcher by stating only the original 75+75-year lease term and that there was no 
payment for the lease modification. You only find out the truth if you dig as 
deep as we did. The Land Registry is behind a paywall, so that deters public 
interest journalism.</p>
<p>Incidentally, we checked the Land Registry for the UK Consulate at 1 &amp; 3 Supreme 
Court Road (Inland Lot 8675), because you might think that the departing British 
Government would have given itself the same favour. The registry states a 
standard lease term from 23-Apr-1993 to 30-Jun-2047. Given the "One Country, Two 
Systems" model and the fact that mainland China only grants "Land Use Rights" up 
to 70 years, it is probably also true that the USA has the longest leasehold property in all of China.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1303">Tung, Chee Hwa</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=159">Land leases</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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