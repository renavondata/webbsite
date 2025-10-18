
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

<script type="text/javascript">document.title="The Huarong-CMB network: 26 stocks not to own";</script>

	<div class="summary">In our first circuit diagram since the infamous Enigma Network, we examine the overlapping networks, bubbles and funding surrounding 26 HK-listed companies that your portfolio would probably do better without.</div>

<h2 class="center">The Huarong-CMB network: 26 stocks not to own<br>
<span class="headlinedate">19 October 2018</span></h2>

<p>Back on 15-May-2017, we published <a href="enigma.asp">The Enigma 
Network: 50 Stocks not to own</a>, leading to a historic meltdown of much of 
that network on 27-Jun-2017 and subsequently the first ever joint ICAC-SFC raid 
and investigation, which is ongoing - so far, nobody has been charged with any 
offence, and no winding-up proceedings or other legal action has been taken 
against any of the listed companies involved.</p>
<p>Drawing that picture was really the only way to illustrate such a 
complex web of dealings, and once again we find ourselves resorting to the 
circuit board to show the network of relationships surrounding China Huarong 
Asset Management Co Ltd (<strong>Huarong</strong>, 2799) and another large 
financial player, China Minsheng Banking Corp Ltd (<strong>CMB</strong>, 
1988.HK, 600016.SH).</p>
<p>At the foot of this article, you will find a list of entities and people 
mentioned in the diagram. Click on the links to find a trail of past 
announcements and filings in our archive which explain the transactions. And 
this year's diagram comes with a new feature: colours - or at least, two of 
them, in addition to black and white. Green indicates loans or convertible 
bonds, with amounts labelled where known.</p>
<p>Red indicates a family relationship - the Yao brothers, in this case. 
Yao Zhenhua runs Shenzhen Baoneng group which controls Foresea Life Insurance. 
In 2017, he was
<a href="https://www.scmp.com/business/companies/article/2073818/shenzhen-tycoon-yao-zhenhua-barred-insurance-industry-10-years" target="_blank">
banned</a> from the insurance industry for 10 years for abuse of the insurance 
fund. His brother Yao Jianhui controls China Goldjoy Group Ltd (1282) which has 
a bunch of SFC licences in HK under Golden Affluent Limited (BVI). Yao Jianhui's 
investments have been partly funded by an HK$800m loan from Huarong 
International Financial Holdings Ltd (<strong>HIF</strong>, 0993) and a US$62.3m 
loan from Huarong Investment Stock Corp Ltd (<strong>HIS</strong>, 2277). HIF 
and HIS are both 51% owned by Huarong.</p>
<p>As if 3 entities for lending and investing are not enough, Huarong has two 
more unlisted 51% subsidiaries of note: China Huarong Overseas Investment 
Holdings Co Ltd (<strong>Huarong Overseas</strong>), which is 40% by a Mr Sun 
Siu Kit, and Huarong (Macau) International Co Ltd (<strong>Huarong Macau</strong>), 
the other owners of which we were unable to identify beyond their corporate 
names.</p>
<p>Both HIF and HIS, and probably Huarong Overseas and Huarong Macau, are highly 
dependent on financial support from Huarong. For example, HIF owed its parent 
group HK$18.92bn at 30-Jun-2018. The story is similar with CMB's listed 
subsidiary CMBC Capital Holdings Ltd (<strong>CMBC</strong>, 1141). In our view, 
this stock is a bubble, with a market value last night of HK$16.94bn 
($0.355/share), but net tangible assets at 30-Jun-2018 of just HK$1074m 
($0.023/share). The balance sheet is highly geared with loans from CMB and its 
subsidiaries totalling HK$6.34bn. </p>
<p>As you can see, CMBCC is where Huarong and CMBC connect, because buying into 
this bubble has been China Soft Power Technology Holdings Ltd (0139), partly 
funded by loans from Huarong Overseas, which also owns 4.09% of CMBCC and 
therefore has an interest in keeping the share price high. Other bubbles in the 
diagram include SuperRobotics Ltd (8176) with a HK$3.544bn market cap 
($7.00/share) but net tangible assets at 30-Jun-2018 of HK$187.4m ($0.37/share).</p>
<p>Another bubble is China First Capital Group Ltd (<strong>CFC</strong>, 1269) 
which has a market cap of HK$17.74bn, but net tangible assets at 30-Jun-2018 of 
RMB2518m (HK$2983m). Included in that NTAV is a 12.4% stake in Virscend 
Education Co Ltd (1565) then valued at RMB1776m, and that stock is also trading 
at a rich valuation several times its NTAV, so CFC's attributable NTAV is even 
smaller than it looks. CFC has issued an HK$800m convertible bond to HIF as well 
as borrowed against its Virscend stake from CMB.</p>
<p>To be clear, this is only a partial view of the network, just as much as we 
can fit on one screen, and doesn't begin to touch what has been going on in the 
mainland or in other countries. For example, the connection between the Shanghai 
Government, its media arm Shanghai United Media, and Shanghai-listed Greenland 
Holdings Corp Ltd and their Huarong-assisted funding of various HK-listed 
companies all bear further scrutiny. But we've said enough - a picture is worth more than a kiloword, we think.</p>
<p>&nbsp;</p>
<a href="../images/huarongCMB.png"><img alt="Huarong-CMB Network" class="center" src="../images/huarongCMB.png"></a>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4997">Arta TechFin Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2417308">China CITIC Financial Asset Management Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=133667">China First Capital Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2332221">China Hongbao Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9318">China Minsheng Banking Corp., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=47433">China Shuifa Singyes Energy Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55439">China Wood International Holding Co., Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2564077">China XinZhi Overseas Investment Holdings Co., Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=62118">Chong Sing Holdings FinTech Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5047">CMBC Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22243359">Foresea Life Insurance Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16953">Fullshare Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17463">Future World Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20930">Glory Sun Land Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55658">Greenland Holdings Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36360">Greenland Hong Kong Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9220925">Hero Link Enterprises Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=152644">Hin Sang Group (International) Holding Co. Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22324889">King Focus International Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2420668">Madison Holdings Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22250599">New China OCT Fund SPC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9227500">Ningxia Tianyuan Manganese Industry Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14417">PAK TAK INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=532">Ping An Securities Group (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16165">Renco Holdings Group Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58558">Renze Harvest International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2675342">Shanghai CEFC International Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1316052">SHANGHAI HUAXIN GROUP (HONGKONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22301841">Shanghai United Media Group</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6722984">Shanghai Xinhua Distribution Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22243532">Shenzhen Baoneng Investment Group Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22243361">Shenzhen Jushenhua Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16166">Shin Hwa World Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4788">Smart Fish Wealthlink Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14901">SuperRobotics Holdings Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2478835">Virscend Education Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3449">XinKong International Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2319938">XinKong Investment Stock Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=67254">Zall Smart Commerce Group Ltd.</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2632802">Cui, Amanda Xintong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2178715">Ji, Changqun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9220004">Jia, Tianjiang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=36361">Wang, David Weixian</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2102280">Yang, Zhihui (1972)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2458432">Yao, Jianhui (1972)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22243352">Yao, Zhenhua</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9348508">Zhang, Weijie (1989)</a></li>
				
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