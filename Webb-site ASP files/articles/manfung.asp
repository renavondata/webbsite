
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

<script type="text/javascript">document.title="The Princeton economist and a plot in Sheung Wan";</script>

	<div class="summary">A tiny plot of prime HK land left behind in a company dissolved in 1972 is now a potential windfall in a redevelopment of its surroundings. For 54 years, Professor Gregory Chow never knew he had a stake in it.</div>

<h2 class="center">The Princeton economist and a plot in Sheung Wan<br>
<span class="headlinedate">8 October 2018</span></h2>

<p>Congratulations to Princeton University economist 
<a href="../dbpub/natperson.asp?p=22242064">Gregory Chow Chi Chong</a> (<strong>Prof 
Chow</strong>), whose extended family has just come into a surprise windfall. We 
see in a
<a href="https://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=117795&amp;currpage=T" target="_blank">
court judgment</a> dated 4-Oct-2018 that Prof Chow recently applied to 
resuscitate a HK company that was 
dissolved in 1972, <a href="../dbpub/orgdata.asp?p=162616">Man Fung Land 
Investment Co Ltd</a> (<strong>MFLI</strong>). His late father, Chow Ting Pong, 
was one of 3 subscribers when the company was incorporated on 19-Sep-1963. Four weeks later, on 17-Oct-1963, 
Prof Chow was allotted 100 shares (4%) of MFLI, but he was unaware of this until a buyer called him up enquiring 
about a piece of land in 2017. Prof Chow is now 87.</p>
<p>It transpired that on 30-Sep-1963, Marine Lot 479 was assigned to MFLI. 
Subsequently, for reasons that were not explained in the judgment, it was 
sub-divided into Section A (<strong>SA</strong>) and the Remaining Portion (<strong>RP</strong>). 
The RP and an adjacent lot were developed into Man Fung Building (<strong>MFB</strong>), at 
101-102 Connaught Road West. All of the units of MFB were eventually sold off, 
leaving MFLI with just SA, which - get this - measures only 7.25 feet by 15.75 
feet - just 114 square feet or 10.6 square metres of land - smaller than a 
standard 12.5 sq. m. car park space, but we suspect the founders were thinking 
ahead when they carved off SA and excluded it from the development.</p>
<p>MFLI was liquidated in 1972 without ever selling SA. The directors and 
liquidator are all dead, and nobody knows why the land was not transferred out 
before liquidation. The court has now granted Prof Chow's application to revive 
the company and put it back into liquidation so that the land can be sold.</p>
<p>According to the judgment, the unnamed "Interested Buyer", represented by Mr 
Amos Chan, "is desirous of buying SA of the Lot for HK$6.5m". We'll bet he is! Allowing for a 15x plot ratio, 
the site would generate a gross floor area of 1,713 sq. ft., so that would be a 
price of only <strong>HK$3,794</strong> per gross sq ft. We suggest that Prof Chow and his family might want to hold out for more - particularly if the scrap of land is essential 
to the redevelopment of the adjacent sites, because that is indeed what is about 
to happen.</p>
<p>Private developer
<a href="../dbpub/orgdata.asp?p=65391">Tai Hung Fai Enterprise Co Ltd</a> (<strong>THFE</strong>), 
controlled by <a href="../dbpub/natarts.asp?p=25734">Edwin Leong Siu Hung</a> (<strong>Mr 
Leong</strong>), between 2009 and 2014 bought up 97.6744% of the shares of 
MFB. There was only one remaining unit owned by the estate of a man who died 
in 1984 and whose widow died in 1985 without having proved his will. Also, the 
unit was said to be held in trust by the man's estate for certain beneficiaries 
and the executor had agreed in 2011 to sell it to THFE, once the will had been 
resolved. Proceeding on that basis, MFB was demolished by May-2013. On Google
<a href="https://goo.gl/maps/yXVETV84c7L2" target="_blank">satellite view</a> it 
now appears as an empty lot with a temporary car park. </p>
<p>THFE then
<a href="https://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=98349&amp;currpage=T" target="_blank">
applied to the Lands Tribunal</a> for an auction under the Land (Compulsory Sale for 
Redevelopment) Ordinance with a reserve price of HK$309m ($81,623 / sq. m. of 
floor area, or HK$7,583 / sq. ft.), based on a valuation by Savills of the 
redevelopment value of the site at 17-Feb-2015, and "in the absence of evidence 
to the contrary", the auction order was granted on 8-May-2015. An auction 
was held by Savills, and
<a href="https://ps.hket.com/article/639752/大鴻輝3.1億%20統一西營盤舊樓業權" target="_blank">
the only bidder</a> was THFE, which won at the reserve price. It's a notable 
feature of such auctions that developers almost never seem interested in 
treading on each others toes. They do not contest auctions triggered by the 
developer who has accumulated most of a site.</p>
<p>Slightly to the East along the same road, 3 years later, on 13-Apr-2018,
<a href="../dbpub/orgdata.asp?p=5007">Kai Yuan Holdings Ltd</a> (1215)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0419/LTN201804191503.pdf" target="_blank">
sold</a> the Butterfly on Waterfront Sheung Wan hotel (95 Connaught Road West) 
to THFE via a BVI shell for HK$810m, valuing the building at <strong>$21,300/</strong>sq. ft., a 
handy gain having
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/1216/LTN20131216023.pdf" target="_blank">
bought</a> it in Dec-2013 for HK$488m.
<a href="https://www.mingtiandi.com/real-estate/finance-real-estate/tai-hung-fai-buys-hong-kongs-butterfly-on-waterfront-hotel/" target="_blank">
Mingtiandi reports</a> that THFE has now acquired 6 adjacent sites including MFB 
and the hotel, and is looking to add a plot behind the MFB site on Des Voeux 
Road West. </p>
<p>On the basis of the hotel site (and remember, they still have to demolish 
that), SA would be worth more like HK$36.5m, even without any strategic premium 
if it is key to the site consolidation. So, Prof Chow, consider the economic 
value!</p>
<img alt="Man Fung Building" class="center" src="../images/ManFung.jpg">
<p></p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5007">Kai Yuan Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=162616">MAN FUNG LAND INVESTMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=65391">TAI HUNG FAI ENTERPRISE COMPANY LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=22242064">Chow, Gregory Chi Chong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=25734">Leong, Edwin Siu Hung</a></li>
				
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