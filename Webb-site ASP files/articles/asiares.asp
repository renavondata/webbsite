
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

<script type="text/javascript">document.title="Joining the dots on the ICAC case against Chim Pui Chung and others";</script>

	<div class="summary">The ex-legislator is once again facing criminal charges, this time with his son and others. We examine the past connections between the defendants and the connection between an alleged co-conspirator and one of the subscribers of convertible notes, who has not been charged.</div>

<h2 class="center">Joining the dots on the ICAC case against Chim Pui Chung and others<br>
<span class="headlinedate">21 November 2021</span></h2>
<p>On Friday (19-Nov-2021), the ICAC
<a href="../codocs/ICAC211119.pdf" target="_blank">announced</a> that former 
legislator <a href="../dbpub/natarts.asp?p=10434">Chim Pui Chung</a> (<strong>PC 
Chim</strong>), his son <a href="../dbpub/positions.asp?p=8308">Ricky Chim Kim 
Lun</a> (<strong>Ricky Chim</strong>),
<a href="../dbpub/positions.asp?p=2088458">Ma Zhonghong</a> (<strong>Mr Ma</strong>) 
and one Wong Poe Lai (<strong>Ms Wong</strong>) had been charged with various 
offences in relation to placings in 2013-2015 of new shares and convertible 
notes (<strong>CN</strong>) of <a href="../dbpub/articles.asp?p=5014">Asia 
Resources Holdings Ltd</a> (<strong>AR</strong>, 0899).</p>
<p>Two of the charges, against PC Chim, Ricky Chim and Mr Ma, relate to a period 
between 1-Jul-2013 and 15-Nov-2015 and involve a huge CN, convertible into 
566.67% of the existing issued share capital of AR. It is alleged that they 
conspired "together and with other persons" to defraud AR, its board of 
directors and shareholders by failing to disclose an agreement in which Ma would 
pay a total of about HK$210m to PC Chim in order to control 70-75% of AR 
following the placings.</p>
<p>The third charge alleges that between 24-Oct-2013 and 24-Jan-2014, Mr Ma and 
Ms Wong dealt with CN in the amount of HK$42m, knowing or having reasonable 
grounds to believe that they were linked to the proceeds of an indictable 
offence.</p>
<p>So, looking at the filings, we find that a HK$535.5m CN issue via 
placing agent <a href="../dbpub/articles.asp?p=16123">Kingston Securities Ltd</a> 
(<strong>Kingston</strong>) was
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2013/0815/ltn201308151254.pdf" target="_blank">
announced</a> on 15-Aug-2013, convertible into 566.67% of the existing issued 
shares at $0.35 per share. A
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2013/0916/ltn20130916184.pdf" target="_blank">
circular</a> was issued on 16-Sep-2013 and the placing was
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2013/1003/ltn20131003859.pdf" target="_blank">
approved</a> at the SGM on 13-Oct-2013 with a voting turnout of only 24.05% of 
the issued shares.</p>
<p>On 24-Oct-2013, Tranche 1 of the CN amounting to HK$185.5m was
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2013/1024/ltn20131024762.pdf" target="_blank">
completed</a>, and as there were only 3 subscribers, they had to be named:
<a href="../dbpub/positions.asp?p=6197">Chau Ngai Ming</a> (<strong>Mr Chau</strong>, 
$91m), <a href="../dbpub/positions.asp?p=37018">Char On Man</a> ($52.5m) and
<a href="../dbpub/positions.asp?p=7330">Ng Leung Ho</a> ($42m). Disclosure of interest 
filings show that the next day, 25-Oct-2013, Mr Chau
<a href="https://di.hkex.com.hk/filing/di/NSForm1.aspx?fn=59717" target="_blank">
disposed</a> of HK$42m of CN, reducing his underlying interest by 120m shares, 
and on the same day, Ms Wong
<a href="https://di.hkex.com.hk/filing/di/NSForm1.aspx?fn=59718" target="_blank">
acquired</a> an underlying interest in the same number of shares. The filing 
numbers are consecutive, and as there were no other disclosures in AR that day, 
the transfer was presumably from him to her. Mr Chau is not the subject of any 
charges, despite having apparently dealt in the same notes to which the third 
charge relates.</p>
<h3>Past involvements</h3>
<p>We note that Mr Ma and Mr Chau are associated as follows: both were once 
directors of an H-share issuer, <a href="../dbpub/orgdata.asp?p=9726">Shenyang 
Public Utility Holdings Co Ltd</a> (<strong>SPU</strong>, 0747), both elected on 
21-Jun-2013, and from the biographies in the
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2013/0528/ltn20130528595.pdf" target="_blank">
election circular</a> (28-May-2013), Mr Ma was Chairman of
<a href="../dbpub/positions.asp?p=2088459">Shenzhen Jinma Holdings Co Ltd</a> 
and Mr Chau was Assistant President. Mr Ma also owned 90% of
<a href="../dbpub/orgdata.asp?p=2621148">Shenzhen Jinma Asset Management Co Ltd</a> 
(<strong>SJAM</strong>) and his nephew owned the other 10%.</p>
<p>Mr Ma and Ricky Chim are also associated as follows: in Sep-2012, SJAM 
conditionally agreed to acquire all the domestic shares of SPU, representing 
58.8% of the issued shares, as
<a href="https://www1.hkexnews.hk/listedco/listconews/sehk/2012/1002/ltn20121002026.pdf" target="_blank">
announced</a> on 28-Sep-2012. That
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2012/1214/ltn20121214609.pdf" target="_blank">
completed</a> on 14-Dec-2012, thereby triggering a general offer for the 
H-shares. As SJAM was a PRC company and prohibited from buying overseas shares, 
it formed a consortium with a BVI company wholly-owned by Ricky Chim, and that 
company made the general offer via Kingston. The purported acquisition price of 
CNY105m for the domestic shares was just CNY0.175 per share, which translated to 
HK$0.214 per H-share in the general offer, a 58.04% discount to the closing 
price of HK$0.51 before the announcement of the offer, so there were only minor 
acceptances. The purported acquisition price was also a 57.7% discount to the 
net tangible asset value of CNY0.414 per share at 30-Jun-2012, based on the
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2012/0926/ltn20120926254.pdf" target="_blank">
interim report</a>.</p>
<p>The vendor had acquired the 600m-share block in a
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2009/0324/ltn20090324626.pdf" target="_blank">
creditor auction</a> on 13-Feb-2009 for CNY102.52m or about CNY0.17 per domestic share. Trading in 
the H-shares of SPU was suspended from 15-Dec-2004 to 1-Apr-2010, when
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2010/0331/ltn20100331865.pdf" target="_blank">
conditions for resumption</a> were satisfied after almost being delisted. On the 
face of it, after the acquisition of control, financial restructuring and 
resumption of trading, the vendor exited with a gain of only CNY2.48m, before costs.</p>
<p>In 2018, SJAM
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2018/0625/ltn20180625562.pdf" target="_blank">
sold out</a> of SPU in two tranches: on 17-Apr-2018,
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2018/0417/ltn201804171314.pdf" target="_blank">
28.58% for CNY189m</a> (CNY0.45 per domestic share); and on 25-Jun-2018, 12.25% 
for CNY45m (CNY0.25 per domestic share). As neither tranche exceded 30%, no 
general offer was required. The combined exit price of CNY234m represented a 
gain of CNY129m for SJAM.</p>
<p>PC Chim served twice as the legislator for Financial Services, from 1991-1998 
and 2004-2012. The name of that seat is misleading because it is elected by 
brokerage firms, the majority of which hold a small combined share of stock 
market volume. Other members of the broader financial services sector, including 
asset managers, have no say. In between LegCo tenures, PC Chim served jail time 
for a conviction for conspiracy to forge share transfers, for which he was 
originally sentenced to 3 years,
<a href="https://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=3934" target="_blank">
reduced to 1 year on appeal</a>. In 1999, he was
<a href="https://www.scmp.com/article/291337/chim-guilty-election-graft-charges" target="_blank">
fined the maximum</a> HK$100k for treating electors in the Financial Services 
Subsector of the Election Committee to a dinner on 27-Mar-1998 in which lists of 
recommended candidates were distributed. He
<a href="https://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=34425" target="_blank">
unsuccessfully appealed</a>. The dinner was held under the name of the 
now-defunct <a href="../dbpub/orgdata.asp?p=454942">Financial Services 
Association Ltd</a>, of which Ricky Chim was a director, but PC Chim was the 
sole signatory on the company's bank account. The appeal judgment noted that the 
company had nothing to do with organising the dinner.</p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=66420">HKSAR Independent Commission Against Corruption</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9726">Shenyang Public Utility Holdings Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2088459">Shenzhen Jinma Holdings Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5014">Zhong Jia Guo Xin Holdings Company Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=37018">Char, On Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6197">Chau, Alex Ngai Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10434">Chim, Pui Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8308">Chim, Ricky Kim Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2088458">Ma, Zhonghong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7330">Ng, Leung Ho (1949)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=27520176">Wong, Poe Lai</a></li>
				
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