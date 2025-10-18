
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

<script type="text/javascript">document.title="The national investment fund that isn't";</script>

	<div class="summary">A Friday night announcement illustrates all that is wrong with HK's Listing Rules for closed-end funds.</div>

<h2 class="center">The national investment fund that isn't<br>
<span class="headlinedate">23 March 2019</span></h2>
<p><a href="../dbpub/articles.asp?p=17131">National Investments Fund Ltd</a> (<strong>NIF</strong>, 
1227) exemplifies all that is wrong with the Hong Kong Listing Rules for 
closed-end investment funds, known as "Chapter 21" funds, after the
<a href="http://en-rules.hkex.com.hk/node/3361" target="_blank">relevant chapter</a> 
of the Listing Rules. Despite the name, it is neither national nor is it really 
a fund but rather, a tool for abuse of public capital.</p>
<p>A Friday night
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2019/0322/LTN20190322709.pdf" target="_blank">
announcement</a> states that NIF is selling various assets including 7 cars, a 
1.06-carat yellow diamond ring, a painting artwork and a membership debenture 
for <a href="../dbpub/orgdata.asp?p=154335">The American Club</a>, to
<a href="../dbpub/positions.asp?p=39699">Danny F Wong</a> (<strong>Mr Wong</strong>), 
who last week resigned as an executive director of NIF. The question you should 
ask is why did a fund own such assets in the first place?</p>
<p>The investment objectives of NIF, as stated in its
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2002/0917/LTN20020917068.htm" target="_blank">
2002 prospectus</a>, were to achieve "capital appreciation by investing in 
listed and unlisted companies mainly in Hong Kong and the PRC." Like most such 
listings, the fund started with no track record, an all-cash balance sheet, an 
appointed investment manager and a custodian.</p>
<p>There's no reason an investment fund should need any employees at all, let 
alone cars for them to drive (or be driven) around in or recreational clubs to 
go to. All the investment decisions should be made by an investment manager 
overseen by a non-executive board, and there should be no overlap between the 
two. Administrative tasks should be handled by a professional administration 
firm, often one which is a fellow subsidiary of the investment manager. A fund 
should not need office premises or other property, plant and equipment for its 
non-existent employees to work with, nor should it need a share option 
scheme to incentivise them. Chapter 21 doesn't prohibit any of 
this.</p>
<p>At 31-Dec-2017 NIF had 26 employees (including 6 directors) and racked up 
HK$20.813m paying them. Meanwhile, the appointed investment manager,
<a href="../dbpub/orgdata.asp?p=16258">Avia Asset Management Ltd</a>, was paid 
just HK$55k per month - a token fee to maintain the pretence that NIF is a fund 
at all.</p>
<p>The cars, diamond, artworks and club membership are clearly not listed 
or unlisted equities within the fund's stated objectives. The cars are 
depreciating assets with no prospect of "capital appreciation". This HK$5.838m 
sale of assets is not even the worst of it: the 2017
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2018/0430/LTN20180430181.pdf" target="_blank">
annual report</a> revealed the sale of a diamond on 5-Jan-2018 for HK$16m in 
cash. The fund acquired the rock along with unspecified art work and a diamond 
ring (the same, probably) in 2014. These and other assets in NIF's balance sheet 
have been circulating around what we call the "Chung Nam Network" for years. A 10-carat diamond was an asset in
<a href="../dbpub/artlinks.asp?s=3497">transactions</a> involving Mason Group Holdings Ltd (then Willie International 
Holdings Ltd, 0273) and <a href="../dbpub/natarts.asp?p=10035">Karen Lo Ki Yan</a> in 2007 and 2009.</p>
<p>The 2017 report also states that in March 2017, the fund donated HK$200k to 
the (fee-paying) <a href="../dbpub/articles.asp?p=190855">Hong Kong 
International School</a> "thereby benefitting the students". That may be so 
(although the school held HK$1.4bn of cash and investments at 31-Jul-2017), but 
we cannot conceive any way in which this donation benefits NIF or its owners, 
who have <a href="../dbpub/ctr.asp?i1=3280&amp;rel=0&amp;d1=2017-03-31">lost</a> 
81.8% of their investment since 31-Mar-2017.</p>
<p>NIF made an identical donation to the same school in 2015, stating in 
the
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2016/0428/ltn20160428907.pdf" target="_blank">
2015 annual report</a>: "We wish our humble effort today will reap a bumper 
harvest of great men for the future society." Maybe even women. And why did they 
pick HKIS? Who knows? We wonder whether any of the fund's directors' sons (or 
daughters) have attended this school, or its associated Church of All Nations 
run by the <a href="../dbpub/orgdata.asp?p=136662">Lutheran Church - Missouri 
Synod</a>.</p>
<p>Incidentally, shareholders would be forgiven for doubting the existence of Mr 
Wong (and we still don't know what the "F" stands for). As Chairman of NIF, he 
failed to attend the AGMs for 10 years running in 2008-2017. We don't yet know 
whether he attended the AGM in 2018 as the 2018 annual report is not yet out and 
we don't know anyone who was in the room. That's a gap in the Listing Rules that
<a href="GMattendance.asp">should be closed</a>. Each of the annual 
reports from 2008 to 2017 contained the same excuse that Mr Wong "was engaged in 
an important business meeting" - presumably more important than the AGM.</p>
<p>The Listing Rules for closed end-funds should not allow companies like NIF to 
exist. We need wholesale reform of those rules and until then, HKEX and the SFC 
should stop all further listings under this Chapter. The rules are simply not 
fit for purpose.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=154335">AMERICAN CLUB (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16258">GNAB Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=190855">HONG KONG INTERNATIONAL SCHOOL ASSOCIATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=136662">LUTHERAN CHURCH - MISSOURI SYNOD. (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17131">National Investments Fund Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10035">Lo, Karen Ki Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=39699">Wong, Danny F (1962)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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