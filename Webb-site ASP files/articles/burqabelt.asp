
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

<script type="text/javascript">document.title="Belts and Burqas";</script>

	<div class="summary">Shortly before Christmas, the HK Financial Secretary announced the birth of the first Belt and Road bond in HK, the latest in a line of financial gimmicks designed to avoid meaningful regulatory reforms.</div>

<h2 class="center">Belts and Burqas<br>
<span class="headlinedate">10 January 2018</span></h2>

<p>Scrolling through Government press releases at the end of December we came 
across the latest puff piece for "Belt and Road". On 20-Dec-2017, News.gov.hk
<a href="http://www.news.gov.hk/en/categories/finance/html/2017/12/20171220_183138.shtml" target="_blank">
said</a> that Financial Secretary <a href="../dbpub/natarts.asp?p=7491">Paul Chan Mo Po</a> 
(<strong>Paul</strong>) "welcomed the issuance of the 
first Belt &amp; Road bond by the China Development Bank in Hong Kong". On the same 
day, the HK Monetary Authority
<a href="http://www.hkma.gov.hk/eng/key-information/press-releases/2017/20171220-4.shtml" target="_blank">
announced</a> that its Chief Executive <a href="../dbpub/positions.asp?p=21205">Norman Chan 
Tak Lam</a> (<strong>Norman</strong>) had visited CDB (where? we 
are not told) and met with its President Mr Zheng Zhijie. Norman "welcomed 
CDB's issuance of its first Belt and Road bond in Hong Kong to finance projects 
across Belt and Road countries."</p>
<p>Neither Paul nor Norman said exactly when the bond was issued, how much it 
raised, or what currency or maturity the bond had. So excited were we to find 
out what a Belt and Road Bond (or perhaps "BAR Bond") looks like, that we 
searched the stock exchange announcements. For days. Eventually, after a lot of 
Christmas pudding, on 28-Dec up pops
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/1228/LTN20171228518.PDF" target="_blank">
this listing announcement</a>, of a US$350m 5-year bond by CDB's HK Branch. This bond is 
indistinguishable from any other CDB bond - they've been issuing bonds in HK 
since at least 2012, and
<a href="https://webb-site.com/dbpub/orgdata.asp?p=11716" target="_blank">by our 
count</a> this is the 30th bond they've listed on the Stock Exchange of Hong 
Kong since then.</p>
<p>The CDB BAR-Bond is denominated in US dollars (not politically correct 
to mention that in a Government press release). The small issue is only enough 
to finance about 600 metres of say, the HK-Zhuhai Macau Bridge, and with a 
5-year maturity, it isn't long enough for any Belt-and-Road infrastructure 
project to pay it back. It's just another piece of regular fund-raising by CDB. 
Labelling it as the first BAR Bond was just a publicity stunt. The money raised 
is fungible with all of CDB's other money and the bond is not secured against 
any particuar project.</p>
<p>The only surprise is that they didn't also try to tag a "Green" label on the 
bond too. That's another gimmick that the HK Government and its 
<a href="../dbpub/articles.asp?p=2012498">Financial 
Services Development Council</a> has been
<a href="http://www.info.gov.hk/gia/general/201607/15/P2016071500722.htm" target="_blank">
keen to promote</a>, even announcing
<a href="https://www.policyaddress.gov.hk/2017/eng/policy_ch03.html" target="_blank">
in Carrie Lam's 2017 policy address</a> (para 98) that the <a href="../dbpub/articles.asp?p=1070">Airport Authority</a> would issue a green 
bond. Try not to laugh: raising money to reclaim land from the sea and build a 
third runway to increase local air pollution is "green" finance. The 
government-controlled <a href="../dbpub/articles.asp?p=11569">MTR Corp Ltd</a> (0066) has also issued "green" bonds to 
finance its "low-carbon transportation" systems - or what we call "trains". The 
greening process involves paying for a "Second Party Opinion" from the 
consultancy gravy train.</p>
<p>Before HK was declared to be a "belt and road" hub and a "green finance" hub, 
it was an "Islamic finance" hub, issuing bonds under the euphemism of "sukuks" 
or "trust certificates" - which walk and talk in every way like regular bonds 
but involve
<a href="https://en.wikipedia.org/wiki/Shariah_Board" target="_blank">greasing 
the palms</a> of religious scholars to bless them as "Shariah-compliant". Your 
tax dollars at work. If the HK Government actually needed to borrow money (which 
it doesn't), then it could do so without the expense of dressing up bonds in a 
burqa.</p>
<p>It is surely now just a matter of time before a government-backed issuer 
combines these themes and issues its first green Belt And Road Burqa bond or 
"Green BARBie Bond".</p>
<p>Incidentally, pratically all bond-listings on SEHK are 
fake listings designed to qualify for certain investor portfolios by claiming to 
be "listed", carrying the implication that there is a centralised marketplace 
for the instrument. For structural and anti-competitive reasons, there is no material 
bond-trading on the Stock Exchange, but that's a topic for another day. Such 
important topics are avoided by policy-makers by deflecting attention with 
financial gimmickry. </p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2123">AIRPORT AUTHORITY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11716">China Development Bank</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2012498">HKSAR Financial Services Development Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=21205">Chan, Norman Tak Lam</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7491">Chan, Paul Mo Po</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=100">Belt and Road</a></li>
				
				<li><a href="/dbpub/subject.asp?c=146">Green finance</a></li>
				
				<li><a href="/dbpub/subject.asp?c=157">Islamic finance</a></li>
				
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