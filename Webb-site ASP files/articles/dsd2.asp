
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

<script type="text/javascript">document.title="Avoiding double stamp duty";</script>

	<div class="summary">A HK$1.6bn deal announced yesterday neatly demonstrates how the proposed Double Stamp Duty will drive higher-end transactions into the corporate transfer market, while freezing up the low end with prohibitive taxation. We'll be speaking against DSD in LegCo tomorrow.</div>

<h2 class="center">Avoiding double stamp duty<br>
<span class="headlinedate">12 June 2013</span></h2>
<p>Reading this morning's <em><a href="../dbpub/articles.asp?p=641">Suspended 
China Morning Post</a></em>, we saw a headline &quot;Emperor buys Wan Chai office 
block for HK$1.6b&quot; (Emperor being a company, not a Japanese monarch). The 
article goes on to describe the purchase by
<a href="../dbpub/orgdata.asp?p=1863">Emperor International Holdings Ltd</a> (<strong>EIH</strong>, 
0163) of the office building currently known as Wing Hang Finance Centre, at 60 
Gloucester Road, Wanchai, from <a href="../dbpub/orgdata.asp?p=443">Wing Hang 
Bank, Ltd</a> (<strong>WHB</strong>, 0302). But that isn't what happened. The 
property wasn't bought or sold at all.</p>
<p>Although WHB
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0308/LTN20130308404.pdf" target="_blank">
announced</a> on 8-Mar-2013 that its 100% subsidiary,
<a href="../dbpub/orgdata.asp?p=198755">Honfirst Land Ltd</a> (<strong>Honfirst</strong>), 
had appointed an agent to tender the sale of the property, what actually 
happened is that WHB sold Honfirst to EIH. By selling the company for $1.588bn 
(everyone loves an 8), the parties legally avoided the proposed 8.5%
<a href="stamp101.asp">double stamp duty</a> (<strong>DSD</strong>) 
on real estate which is currently on the table in LegCo, and will pay 0.2% on 
the shares instead. Your editor 
will be speaking to LegCo against DSD tomorrow morning, 13-Jun-2013. Many other 
delegations are attending -
<a href="http://www.legco.gov.hk/yr12-13/english/bc/bc05/agenda/bc0520130613.htm" target="_blank">
the list is here</a> along with submissions.</p>
<p>DSD on this property would have been a whopping $134.98m, if the parties had 
been willing to deal on that basis at all. Instead, the transfer of Honfirst will incur stamp duty of 0.2% ($3.18m), which is the rate of stamp duty on 
the transfer of HK-registered shares. Honfirst is incorporated in HK, but if it 
had been incorporated in the British Virgin Islands (and the register kept 
offshore) or held by a BVI company which was transferred instead, then there 
would have been no stamp duty at all.</p>
<p>According to the EIH
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2013/0611/ltn20130611697.pdf" target="_blank">
announcement</a>, Honfirst had turnover of $33.77m in 2012. That is presumably 
the rental income, possibly including management fees. It may include income 
from other properties too. The WHB
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2013/0611/ltn20130611602.pdf" target="_blank">
announcement</a> says that on 30-Apr-2013 Honfirst &quot;sold all other commercial 
properties owned by it to the Bank&quot;. That left Honfirst as a single-asset 
vehicle, ready for sale. The intra-group transfer of the other properties would 
be exempt from stamp duty.</p>
<p>So we'll estimate that the gross yield on the property at the transaction 
value is about 2% ($32m). That means that paying 8.5% stamp duty would have been 
equivalent to 4.25 years' rent, a huge penalty for a transaction. Even if you 
share that equally between the parties, it means each side giving up over 2 
years' rent, and that would have made it substantially less attractive to deal 
at all.</p>
<p>In future, more transactions will be done by company transfer than in the 
past. There is always a risk that the company has hidden liabilities, but when 
the tax savings are so great, that will often outweigh the risk. If the vendor 
is reputable (a licensed bank in this case), then lawyers can reduce that risk 
with warranties, and insurers may offer guarantees. That really leaves stamp 
duty as an optional tax on properties held by companies, but a punitive tax on 
individuals and small businesses who cannot find suitable single-asset vehicles 
to buy in the lower end of the market.</p>
<h3>The corporate market</h3>
<p>In a LegCo answer on 8-May-2013, the Government
<a href="http://gia.info.gov.hk/general/201305/08/P201305080343_0343_110734.pdf" target="_blank">
gave data</a> on the number of residential transactions in various price bands 
involving corporate buyers in the last 4 years. We will ignore 2012, because on 
26-Oct-2012, the Government proposed a 15% &quot;<a href="bsd.asp">Buyer's 
Stamp Duty</a>&quot; (<strong>BSD</strong>, which should really be called 
&quot;Foreigner's Stamp Duty&quot;) which applies to any buyer other than a permanent 
resident. Companies buying residential property after that will (if the BSD law 
is passed) have to pay 15%, so very few such deals are done. By the way, the BSD 
law is still not passed - so there is a chance that LegCo will come to its 
senses and stop it. The Bills Committee
<a href="http://www.legco.gov.hk/yr12-13/english/bc/bc01/general/bc01.htm" target="_blank">
is here</a>.</p>
<p>However, what the LegCo answer shows is that above HK$20m, in 2011 (the 
last full year before BSD), 60.5% of transactions by value involved a corporate 
buyer. The figure in 2010 was 67.3% and in 2009 was 66.4%. This is not a new 
phenomenon. <strong>Basically about two-thirds of homes above $20m by value are 
already owned by companies</strong>. Even between $8m and $20m, 30.1% of 
transactions by value in 2011 involved a corporate buyer. And those were just 
the transactions you could see, not the transfers of companies which own 
property.</p>
<p>So, although it is now prohibitive for companies to buy residential property 
(they would have to pay BSD+DSD=23.5% if both laws are passed), there is already 
a large stock of higher-value properties held by single-asset companies. Those 
companies can be transferred, paying either 0.2% or zero stamp duty, depending on whether 
they are incorporated in HK or overseas. Not only that, but buying a company 
gives you the flexibility to sell it later, should the need arise, without the 
punitive <a href="../dbpub/subject.asp?c=187">Special Stamp Duty</a> on resale of 
residential properties within 3 years. The situation is similar for commercial 
properties, but without SSD and without any DSD exemption for first-time buyers 
who are permanent residents.</p>
<p>As a result of Double Stamp Duty, a large portion of the middle and high-end 
market will simply move off the Land Registry's radar and be carried out through company 
transfers, and if they are non-HK companies, then they won't even show up on the 
Inland Revenue's stamp duty radar. Meanwhile, owners and potential buyers of properties not already 
wrapped up in a corporate shell will be frozen out of the market by the 
deterrent taxes. DSD was never a demand-side measure, as the government claims, 
but a volume-suppressing measure. It is just the latest example in a series of 
interventionist measures (not just in property) from a Government which is 
hell-bent on destroying our free market economy.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1863">Emperor International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=198755">HONFIRST LAND LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=443">OCBC Bank (Hong Kong) Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=131">Double Stamp Duty</a></li>
				
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