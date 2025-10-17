
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

<script type="text/javascript">document.title="Tom Lee Music practices not fair play";</script>

	<div class="summary">We look behind an ICAC prosecution of music teachers and find bad practices at the tax-exempt Tom Lee Music Foundation, which requires its teachers to exclusively push products for Tom Lee Music Company.</div>

<h2 class="center">Tom Lee Music practices not fair play<br>
<span class="headlinedate">28 February 2016</span></h2>

<p>On Friday, 26-Feb-2016 the ICAC
<a href="../codocs/ICAC160226.pdf" target="_blank">announced</a> that two music teachers 
have been charged with 
allegedly accepting commissions for referring students to buy musical 
instruments from a supplier. At the time of the alleged offences, Lai Kam Kit, 
aged 37, and Tse On Kei, aged 30, worked for
<a href="../dbpub/orgdata.asp?p=209284">Tom Lee Music Foundation Ltd</a> (<strong>TLMF</strong>). Lai taught harp and 
violin, while Tse taught violin.</p>
<p>The ICAC says:</p>
<blockquote>"Apart from teaching music courses, teachers of TLMF were required 
to work as consultants to promote, market and sell to their students musical 
instruments and related products of Tom Lee Music Co. Ltd., an affiliated 
company of TLMF. Teachers were not allowed to promote or sell musical 
instruments to students of TLMF and their parents for other suppliers."</blockquote>
<p>The two allegedly accepted commissions from 
another supplier, <a href="../dbpub/orgdata.asp?p=1181334">Chairman Instruments 
Trading Ltd</a>. Lai allegedly accepted $7,663 for a harp sale, and Tse 
allegedly accepted $1,637 for a violin sale. It is unclear whether they would 
have received a commission if they had sold instruments for
<a href="../dbpub/orgdata.asp?p=168713">Tom Lee Music Co Ltd</a> (<strong>TLMC</strong>) 
as required.</p>
<p>Now, what the ICAC media release does not mention is that TLMF is a company 
"limited by guarantee". It is supposedly run for charitable purposes and since 
19-Jan-1978 it has an <a href="http://www.ird.gov.hk/cgi-bin/irdnew/ach/search.cgi?lang=e&amp;id=91/01422," target="_blank">
exemption from profits tax</a>  under Section 88 of the Inland Revenue Ordinance. 
It has 18 music centers across the HKSAR. Yet now it appears that the music 
school works to promote the commercial interests of
<a href="../dbpub/orgdata.asp?p=168713">Tom Lee Music Co. Ltd</a>, which is a 
for-profit company, on an exclusive basis.</p>
<p>As TLMF is limited by guarantee (without share capital), its accounts are 
available at the Companies Registry. To save you the expense of the pay-wall, 
we've put a copy of their
<a href="../codocs/TomLeeFoundation1412fs.pdf" target="_blank">latest accounts</a>, 
for 2014, online. TLMF had revenue of HK$71.2m in 2014, down from $78.9m a year 
earlier, and booked a small loss in both years. In note 17 we see that TLMF 
received a commission of just $69,648 in 2014 "from a member of the Company" 
(presumably TLMC) for selling music books, but apparently no commission for 
selling instruments. </p>
<p>TLMF paid $1,014,688 for "goods" from a member of the Company "on a cost plus 
basis", but in the revenue in note 4, sales of music books were only $791,497. 
TLMF also paid advertising expenses of $911,034 to a member of the Company "on a 
cost basis". If these were stand-alone adverts for the school, then it could 
have contracted directly with the publications, so it seems possible that these 
adverts were also promoting TLMC. Unfortunately, the accounts of for-profit 
companies like TLMC are not required to be filed, so unless they publish them 
voluntarily, we won't know how lucrative that business is or isn't.</p>
<p>The ICAC case raises three questions:</p>
<ol>
	<li>Should employees or contractors of 
a tax-exempt charitable foundation be required to exclusively promote the 
commercial interests of a related for-profit company? We think not.</li>
	<li><p>Under the Competition Ordinance, is it appropriate that what is one of 
the largest music schools in HK should be "requiring" its teachers to "promote, 
market and sell to their students" the instruments and brands sold by a related 
entity which is also one of the largest musical instrument retailers? This 
"bundling" may be an abuse of their "substantial degree of market power" under 
the <a href="https://www.compcomm.hk/en/practices/what_is_comp/overview.html" target="_blank">
Second Conduct Rule</a> of the new Competition Ordinance.</p>
<p>It is true that the parents and students are always free to buy their 
instruments elsewhere, but teachers are obviously under contract to push TLMC's 
products, even if they secretly think that other products and brands available 
from other retailers are better, or even if a child doesn't actually need a new 
instrument to play better. We urge the Competition 
	Commission to investigate.</p></li>
	<li>Are parents and students made aware of this lock-in when teachers give their recommendations for 
	new instruments? So 
beware, parents and students - your Tom Lee teacher is "not allowed" to promote 
instruments from other suppliers and is "required" to "promote, market and sell" 
	instruments of TLMC.&nbsp; </li>
</ol>
<p>In Webb-site's view, that's not fair play. Tom Lee Music, which has a 63-year 
history in HK, should review its practices.</p>
<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1181334">Chairman Instruments Trading Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2062513">COMPETITION COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=66420">HKSAR Independent Commission Against Corruption</a></li>
				
				<li><a href="/dbpub/articles.asp?p=168713">TOM LEE MUSIC COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=209284">TOM LEE MUSIC FOUNDATION LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2540216">Lai, Kam Kit</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2540217">Tse, On Kei</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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