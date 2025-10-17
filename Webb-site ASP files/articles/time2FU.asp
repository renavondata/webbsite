
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

<script type="text/javascript">document.title="Time2U's time to FU";</script>

	<div class="summary">How much damage can a HK main board company do to its share price within the first year of listing? Try 79.6%, with two full-sized placings under the generous general mandate, one of them at a discount to net cash per share, neither of which was necessary. For Time2U (1327) one year was time enough.</div>

<h2 class="center">Time2U's time to FU<br>
<span class="headlinedate">25 January 2016</span></h2>

<p>Here's another perfect example of why investors should avoid IPOs. If 
a company is going to abuse minority shareholders then it usually doesn't take 
long to get started. <a href="../dbpub/articles.asp?p=2082584">Time2U 
International Holdings Ltd</a> (<strong>Time2U</strong>, 1327), a Zhangzhou, 
Fujian-based maker of cheap (sorry, "economical") quartz analogue watches, was 
listed on 30-Jan-2015, less than a year ago, after an IPO at $1.10 per share. 
The IPO was sponsored by <a href="../dbpub/adviserships.asp?p=9754">Cinda International Capital Ltd</a> and the "Joint Lead 
Manager" was <a href="../dbpub/articles.asp?p=48794">Convoy Investment Services 
Ltd</a>, whose name should now be familiar to our readers.</p>
<p>In the IPO, 104m shares were sold by existing shareholders (seldom a 
good sign) and 156m new shares were issued, although we should note that no 
dividends were paid during the 3-year track record period. The 
<a href="../ccass/choldings.asp?sort=holddn&amp;i=13446&amp;d=2015-01-30" target="_blank">initial CCASS 
positions</a> on the first day of trading show the largest brokers as
<a href="../dbpub/articles.asp?p=50836">Gransing Securities Co Ltd</a> (<strong>Gransing</strong>) 
and <a href="../dbpub/articles.asp?p=59554">Win Fung Securities Ltd</a> (<strong>Win 
Fung</strong>).</p>
<p>In the 30-Jun-2015
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0925/LTN20150925371.pdf" target="_blank">
interim balance sheet</a>, Time2U had net cash of CNY220.2m (HK$275.3m), or 
$0.344 per share, and net tangible assets (<strong>NTA</strong>) of CNY583.0m 
(HK$728.8m) or $0.911 per share.</p>
<p>The Webb-site CCASS Analysis
<a href="../ccass/chldchg.asp?i=13446&amp;d=2015-07-31" target="_blank">
shows</a> that on 31-Jul-2015, a block of 166,367,020 shares (20.80%) were 
deposited into CCASS via <a href="../dbpub/adviserships.asp?p=51150">Black 
Marble Securities Ltd</a> (<strong>Black Marble</strong>), which is owned by
<a href="../dbpub/articles.asp?p=7889">Lerado Group (Holding) Co Ltd</a> (1225). 
These could only have come from the controlling shareholder,
<a href="../dbpub/orgdata.asp?p=2470264">Visual Wise Ltd</a>, which is 62% owned 
by Time2U Chairman <a href="../dbpub/positions.asp?p=2372897">Lin Zhiqiang</a> 
and 38% by his wife, <a href="../dbpub/positions.asp?p=2372898">Yan Xiaotong</a> 
(<strong>Ms Yan</strong>).</p>
<p>On 5-Aug-2015, Time2U
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0805/LTN201508051231.pdf" target="_blank">
launched</a> a placing of 160m shares via Black Marble at $0.40 each (19.8% 
below the 5-day average closing price), raising $62.0m net. This 
was a "top-up" placing in which, for speed of placing settlement, the 
controlling shareholder sells existing shares and then subscribes the same 
number of new shares at the same price. Our system
<a href="../ccass/chldchg.asp?d1=2015-08-11&amp;d=2015-08-11&amp;sort=chngdn&amp;i=13446" target="_blank">
shows</a> that when the placing settled on 11-Aug-2015, about 108.8m of the shares 
went to clients of Emperor Securities Ltd, Win Fung and Gransing. That raised 
pro forma net cash at 30-Jun-2015 to $337.3m, or about $0.351 per share, but 
diluted NTA to about $0.824 per share.</p>
<p>Ms Yan
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0924/LTN20150924958.pdf" target="_blank">
resigned</a> as CEO on 24-Sep-2015 and her husband took over her role.</p>
<p>The placing completely exhausted the 20% "general mandate" allowed by HK 
Listing Rules, so on 30-Oct-2015 
Time2U
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1030/LTN20151030732.pdf" target="_blank">
called an EGM</a> and asked "independent" shareholders to approve a new issue 
mandate, accompanied by a letter from "Independent Financial Adviser"
<a href="../dbpub/SFClicensees.asp?p=17363&amp;s=namup&amp;d=&amp;a=0">Hercules 
Capital Ltd</a>, signed by its MD <a href="../dbpub/positions.asp?p=11358">Louis 
Koo Fook Sun</a> and director <a href="../dbpub/positions.asp?p=34103">Amilia 
Tsang Wing Yee</a>.</p>
<p>Of course, institutional shareholdings in such stocks are minimal, and retail 
investors don't normally vote because their banks and brokers don't have to seek 
voting instructions (read the small print of client agreements). So it is easy 
for friendly shareholders to sway the outcome. With a turnout of 9.43% of the 
issued shares (or 14.95% of the shares not held by the controlling shareholder), 
the mandate was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1116/LTN201511161005.pdf" target="_blank">
approved</a> on 16-Nov-2015.</p>
<p>On 4-Jan-2016, Time2U
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0104/LTN201601042561.pdf" target="_blank">
launched</a> another placing, blowing the new 20% mandate (192m shares), again 
via Black Marble Securities, at the lower price of $0.23 per share (18.8% below 
the 5-day average closing price), raising 
$43.06m net. That's 79.1% below the IPO price in less than a year. The placing
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0118/LTN20160118852.pdf" target="_blank">
completed</a> on 18-Jan-2016, and our system
<a href="../ccass/chldchg.asp?d1=2016-01-21&amp;d=2016-01-18&amp;sort=chngdn&amp;i=13446">
shows</a> that 37.5% of the stock was placed to clients of Luk Fook Securities 
(HK) Ltd, 26.25% Haitong International Securities Ltd, 21.25% Gransing and 15% 
Win Fung.</p>
<p>The second placing raised pro forma net cash to $380.4m but, as the shares 
were issued below the existing net cash per share, that was diluted to $0.330 per share. 
The placing also 
diluted net tangible assets to $0.724 per share. Time2U closed today at $0.225 
per share, 79.6% below its IPO price, but whether that huge discount both to net 
cash and NTA is 
sufficient to offset the risk of further abuses is debatable.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=51150">Black Marble Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59554">China Jianxin Financial Services Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48794">CIS SECURITIES ASSET MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50836">GRANSING SECURITIES CO., LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17363">HERCULES CAPITAL LIMITED (b2002-05-21)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7889">Lerado Financial Group Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2082584">Luxxu Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11358">Koo, Louis Fook Sun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2372897">Lin, Zhiqiang (1967)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=34103">Tsang, Amilia Wing Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2372898">Yan, Xiaotong</a></li>
				
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