
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

<script type="text/javascript">document.title="Thinsoft's thin ice";</script>

	<div class="summary">There's a bubble in Thinsoft (8096), suspended with a market value of HK$1,604m and net assets of $33m. Over 95% of the company is in the custody of 2 brokers. We also discuss the archaic practice of parallel trading, which was to have been abolished in 2008. HKEx appears to have given up on that.</div>

<h2 class="center">Thinsoft's thin ice<br>
<span class="headlinedate">11 December 2009</span></h2>
<p>There's a remarkable bubble in shares of software firm
<a href="../dbpub/orgdata.asp?p=15207">Thinsoft (Holdings) Inc</a> (<strong>Thinsoft</strong>, 
8096), so lets remark on it. Thinsoft was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20091210/GLN20091210006.PDF">
suspended</a> at $0.64 at 11:44 yesterday (after rising 25.49% on the day), pending an 
announcement of an MoU for a possible acquisition. Even before that, it was a 
bubble stock. Thinsoft's stock may be temporarily frozen, but it is skating on 
thin ice.</p>
<p>The latest
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20091112/GLN20091112032.pdf">
report</a> for the quarter ended 30-Sep-09 shows net assets of just HK$33.64m 
(about $0.0134 per share, split-adjusted). It booked a loss of $1.4m on turnover 
of $2.3m. Despite this, at the suspended price of $0.64, it has a market 
value of $1,604m (US$205m), or about 48 times net assets. Is a back-door listing 
opportunity really worth that much?</p>
<p>Thinsoft was listed on 27-Feb-02 after a placing of 25% of the company at a 
split-adjusted $0.08 per share. The joint lead manager was 
<a href="../dbpub/articles.asp?p=1470">Luen Fat Securities 
Co Ltd</a> (<strong>Luen Fat</strong>).</p>
<p>On 7-Mar-07, the software company
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070308/GLN20070308007.pdf">
invested</a> US$1m of its cash into shares of Vietnam Emerging Market Fund Ltd 
(Cayman) managed by <a href="../dbpub/orgdata.asp?p=55539">Vietnam Asset 
Management Ltd</a>, because that's what HK-listed companies with too much cash 
on their hands do, rather than return it to investors and let them make their 
own investment decisions.</p>
<p>On 20-May-08, Inno Smart Group Ltd (<strong>Inno Smart</strong>)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080604/GLN20080604067.pdf">
agreed</a> to buy 74.81% of Thinsoft for HK$86.25m or $0.046 per share 
(split-adjusted) from <a href="../dbpub/orgdata.asp?p=20206">IPC Corporation Ltd</a>, listed in Singapore. Inno Smart is 
owned as to 50% by <a href="../dbpub/positions.asp?p=11630">Dennis Yu Won Kong</a> (<strong>Mr Yu</strong>) and 50% by 
<a href="../dbpub/positions.asp?p=1439">Yue 
Wai Keung</a> (<strong>Mr Yue</strong>). Mr Yue is Chairman of Luen Fat. </p>
<p>Inno Smart's purchase triggered a general offer via
<a href="../dbpub/articles.asp?p=16123">Kingson Securities Ltd</a> (<strong>Kingston</strong>), 
which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080811/GLN20080811069.pdf">
closed</a> on 11-Aug-08 with no acceptances. Before the offer, Mr Yu owned 2.88% 
and Mr Yue's mother and sister owned 3.61% between them, taking the total 
concert party to 81.30%, so in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081119/GLN20081119002.pdf">
placing</a> on 19-Nov-08 at $0.10 (split-adjusted), Mr Yu sold 2.75% and Mr 
Yue's mother and sister sold all their shares via Luen Fat to restore the public 
float to 25.06%. Our CCASS Analysis shows that on
<a href="../ccass/chldchg.asp?i=3346&amp;d=2008-11-21">
settlement day</a>, about 1.2% moved to Kingston, but the rest remained in 
custody of Luen Fat.</p>
<p>On 21-Aug-08, Mr Yu was appointed as Chairman and Mr Yue as Executive 
Director of Thinsoft.</p>
<p>On 1-Dec-08, Thinsoft
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081202/GLN20081202020.pdf">
lent</a> HK$5.5m to toymaker-turned-coal-play
<a href="../dbpub/articles.asp?p=12684">Kiu Hung Energy Holdings Ltd</a> (<strong>Kiu 
Hung</strong>, 0381) for a year at 11%. Mr Yu owned 11.96% of Kiu Hung and had 
an interest in convertible bonds of Kiu Hung. He became an ED of Kiu Hung on 
22-Oct-09. Mr Yue also owned 4.49% of Kiu Hung. Mr Lam Kit Sun, an NED of 
Thinsoft since 11-Aug-08, was appointed as ED of Kiu Hung on 27-Oct-09.</p>
<p>Mr Yu has appeared in our stories before - he was a director and Chief 
Operations Officer of NASDAQ-traded 
China Energy Savings Technology Inc., which we wrote about in our article
<a href="starway.asp">Golden Resorts and CESV</a> on 8-May-05. He 
resigned on 1-Jul-05. On 4-Dec-06 the US SEC filed fraud charges against CESV 
and others (but not Mr Yu), alleging that they orchestrated an elaborate stock 
manipulation scheme.</p>
<p>There are no other shareholders over 5%, but CCASS records
<a href="../ccass/choldings.asp?i=3346&amp;d=2009-12-09&amp;hide=&amp;sort=chngdn">
show</a> that <strong>95.22% of the company is in the custody of just two 
brokers</strong>: Kingston (76.20%) and Luen Fat (19.02%). The SFC should 
investigate the concentration of ownership in this stock.</p>
<p>Note that a 5:1 stock 
split took effect on 5-Nov-09 and there was parallel trading (under two different 
stock codes) from 5-Nov-09 to 19-Nov-09, which explains the gap in our history. 
Which reminds us of an outstanding problem at HKEx:</p>
<div class="regbox">Policy issue: parallel trading is an archaic practice which 
dates back to the days of physical delivery in the years B.C. (Before CCASS). 
CCASS was born in 1993. Since then, in the years A.D. (After Dematerialisation), we all settle electronically by book-entry 
in the CCASS system, where nearly all publicly-held shares are deposited. On 
22-Apr-08 HKEx
	<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080422news.htm" target="_blank">announced</a> that it would abolish parallel trading on 3-Nov-08. On 23-Jul-08 HKEx
	<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080723news.htm" target="_blank">said</a> there was &quot;market-wide support&quot; for the abolition, but some brokers 
needed more time to make the necessary operational and system changes. HKEx said 
it would publish a document later in 2008 and announce a revised implementation 
timetable in early 2009, but did neither. Parallel trading continues to create 
confusion and fragment liquidity: for several days, you can trade the same stock 
on two different counters (CCASS allows fungibility for settlement) and there is 
no definitive market price. Why are we still waiting for this simple 
	modernisation?</div>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=25518">China Energy Savings Technology, Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20206">IPC Corporation Ltd</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1470">LUEN FAT SECURITIES COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15207">Ruifeng Petroleum Chemical Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55539">Vietnam Asset Management Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=46221">Lam, Kit Sun (1977)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11630">Yu, Dennis Won Kong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1439">Yue, Wai Keung (1952)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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