
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

<script type="text/javascript">document.title="China Public Procurement";</script>

	<div class="summary">In part 4 of our series on a network of companies, we cover China Public Procurement (1094) which has a long string of over-priced acquisitions from often-anonymous vendors, "earnest money" deposits for deals which don't happen, issues of unlisted warrants and shares for no obvious reason, and gaps in disclsoure. If you own this stock, get out while you can.</div>

<h2 class="center">China Public Procurement<br>
<span class="headlinedate">3 July 2009</span></h2>
<div style="background-color:lightgray;text-align:center;border:1px solid">
This is Part 4 in our current series on a network of companies.
<a href="byfordbubble.asp">Part 1</a> (Byford bubble), <a href="traingames.asp">
Part 2</a> (China Railway Games) and <a href="CBRT.asp">Part 3</a> (Skin in the 
Game) are good reads too!</div>
<p>You've had 10 days to study the <a href="CBRT.asp">previous piece</a> of this 
multidimensional jigsaw, and we've had 10 days to produce the next one. Today 
the spotlight is on <a href="../dbpub/orgdata.asp?p=16766">China Public Procurement Ltd</a> (<strong>CPP</strong>, 1094), 
which has made a long series of disastrous acquisitions, pumping out cash and 
shares to often-anonymous vendors at excessive prices in return for flimsy 
businesses that don't last more than a year or two, making deposits of earnest 
money for deals which don't happen, placing unlisted warrants and shares for no 
obvious reason, and paying a huge deal commission to an anonymous party. You can 
read this article two ways - either from top to bottom, if you enjoy a good 
yarn, or start with the <a href="#Questions">questions</a> at the bottom.</p>
<h3>Early history</h3>
<p>CPP was listed on 3-Jul-02 as &quot;Sunny Global Holdings Ltd&quot;, then a maker of leisure 
and athletic footwear in Fujian, following an IPO in which 60m new shares were 
issued and 40m old shares were sold at $0.50, leaving Founder and Chairman
<a href="../dbpub/natperson.asp?p=16768">Lee Man Fa</a> (<strong>Mr Lee</strong>) 
with 75% of the company.</p>
<p>The two INEDs at listing were <a href="../dbpub/positions.asp?p=12511">Philip 
Kan Siu Lun</a> (<strong>Philip Kan</strong>) and <a href="../dbpub/positions.asp?p=16772">Mr Chan Kin Kee</a> 
(<strong>K K Chan</strong>). 
Mr Kan was CEO of business broker <a href="../dbpub/orgdata.asp?p=12509">L.P. 
Lammas International Ltd</a> (now Sun International Group Ltd, 8029) from its 
IPO until 14-Aug-06. We criticised that company in our article
<a href="woodenlammas.asp">Wooden Lammas</a> (19-Feb-01). K K Chan 
was head of the IT department at <a href="../dbpub/orgdata.asp?p=12996">EVI 
Education Asia Ltd</a> (<strong>EVI</strong>, now Midland IC&amp;I Ltd, 0459). EVI 
was criticised in our article <a href="evi1.asp">EVI for Beginners</a> 
(15-Mar-01). It was controlled by Wilson Pong Wai San, who also controlled <a href="../dbpub/orgdata.asp?p=11749">I-Wood International 
Ltd</a> (<strong>I-Wood</strong>, now &quot;China Golden Development Holdings Ltd&quot; 
0162), which was featured in the Wooden Lammas story. Another character in both those stories was
<a href="../dbpub/positions.asp?p=10844">Wilfred Hung Fan Wai</a> (<strong>Wilfred 
Hung</strong>). He was Deputy Chairman of I-Wood and an INED of EVI. His 
involvement with CPP is discussed below. </p>
<p>On 5-May-03, CPP issued its first options under share option scheme, granting 
3-year options to subscribe 12m shares at $0.435. The grantees presumably saw no 
time value in the options, as all were exercised between 30-May-03 and 
23-Jun-03. This turned out to be a significant event.</p>
<p>In Aug-2003, Mr Lee slashed his stake through on-market transactions from 
60.19% to 29.37% as follows:</p>
<img class="center" alt="" src="../images/SunnyGlobal.gif">
<p>Despite this, no other substantial (5%) shareholders emerged. </p>
<h3>The Market Misconduct Tribunal report</h3>
<p>Dealings in CPP shares between June and August 2003 and related announcements by CPP became the subject of a 
Market Misconduct Tribunal (<strong>MMT</strong>) hearing. The 
<a target="_blank" href="http://www.mmt.gov.hk/eng/reports/Sunny.Global.Holdings.Limited.PartI.Report.pdf">MMT report</a> states that Wilfred Hung was a &quot;Business Development Manager&quot; employed by a 
subsidiary of CPP. A friend of his, Mr Joe Chan Cheung (<strong>Joe Chan</strong>), 
was employed as &quot;Assistant Business Development Manager&quot;.</p>
<p>Wilfred Hung told the MMT that he and
<a href="../dbpub/positions.asp?p=16770">Katherine Yu Kin Ling</a> (<strong>Katherine 
Yu</strong>), then Finance Director of CPP, had been colleagues at former 
accounting firm Kwan Wong Tan &amp; Fong (which merged into Deloitte Touche 
Tohmatsu), and that when CPP was listed, he had introduced Philip Kan and K K 
Chan as INEDs at her request.</p>
<p>Mr Lee's secretary, Ms <a href="../dbpub/natperson.asp?p=46497">Tsoi Yung 
Yung</a> (<strong>Ms Tsoi</strong>) was the daughter of Mr
<a href="../dbpub/positions.asp?p=10414">Tsai Hung Ching</a>, the former Deputy 
Chairman and co-founder of <a href="../dbpub/orgdata.asp?p=7089">Wah Yik 
Holdings Co Ltd</a> (now &quot;New World Mobile Holdings Ltd&quot;), who was a former 
schoolmate of Mr Lee. Wilfred Hung was a director of that company from 14-Jul-98 
(before it listed on 14-Oct-98) to 15-May-01.</p>
<p>The MMT report revealed that the 12m options CPP granted on 5-May-03 
comprised 4m to each of Wilfred Hung, Ms Tsoi and Joe Chan. 4m was equivalent to 
1% of the issued shares, the maximum allowed under the Listing Rules. They had, 
as we noted above, exercised all the options between 30-May-03 and 23-Jun-03. 
The MMT report also revealed that before the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030623/LTN20030623087.pdf">
interim results</a> for the six months to 31-Mar-03 were released on 23-Jun-03, 
Wilfred Hung and Joe Chan had each sold all their 4m shares, while Ms Tsoi had 
sold 3.6m shares. The interim results were bad, with turnover down 15% and net 
profit down 72%. The MMT found Wilfred Hung, Ms Tsoi and Joe Chan were culpable 
of insider dealing by selling shares before the results.</p>
<p>The MMT report also examined a series of announcements made between 21-Jul-03 
and 22-Aug-03 at the same time as Mr Lee was unloading shares. On 21-Jul-03, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030721/LTN20030721113.pdf">
said</a> that &quot;[CPP] and its controlling shareholder... have been approached by 
various investors for placing of shares in the company&quot;. This statement was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030801/LTN20030801149.pdf">
repeated</a> on 1-Aug-03, after 1 (singular) potential investor had been 
introduced at a meeting on 31-Jul-03. On 5-Aug-03, an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030805/LTN20030805100.pdf">
announcement</a> referred to &quot;proposals which may result in a change of control 
of the Company and/or injection of assets&quot; into CPP. On 19-Aug-03, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030819/LTN20030819090.pdf">
said</a> that the negotiations by Mr Lee to sell his remaining 50.49% stake 
&quot;have reached an advanced stage&quot;.</p>
<p>The announcements were all signed by Katherine Yu by order of the Board. The 
MMT found that she knew that the announcements were false or misleading, and 
that Mr Lee either knew or was reckless as to whether the announcements were 
false and misleading. The MMT also found that these statements helped prop up 
the share price at the same time as Mr Lee was selling.</p>
<p>Finally on 22-Aug-03, after Mr Lee's stake had been cut to 40.49%, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030822/LTN20030822115.pdf">
said</a> that the proposal could not proceed further because he no longer held a 
50.49% stake.</p>
<h4>Sanctions</h4>
<p>On 29-Aug-08 the MMT
<a target="_blank" href="http://www.mmt.gov.hk/eng/reports/Sunny.Global.Holdings.Limited.PartII.Report.pdf">
banned</a> Wilfred Hung and Joe Chan from being &quot;a director, liquidator, or 
receiver or manager of the property or business of a listed corporation&quot; for 1 
year and likewise banned Katherine Yu and Mr Lee for 4 years. Wilfred Hung, Joe Chan, Ms Tsoi 
and Mr Lee were also ordered to disgorge the profits they had made from the 
misconduct, calculated as $7.39m in Mr Lee's case, and all of them had to pay 
the expenses of the Department of Justice, Tribunal and SFC with interest. 
Wilfred Hung, Joe Chan and Katherine Yu, all being accountants, were referred to 
the HKICPA for &quot;such disciplinary action as they deem appropriate&quot;. We are not 
aware of any so far.</p>
<p>By the time of the report, Katherine Yu was a full time mother and housewife 
living in Canada. In Jan-2008, Joe Chan became the qualified accountant and 
joint company secretary of <a href="../dbpub/orgdata.asp?p=34308">Jilin Qifeng 
Chemical Fiber Co., Ltd.</a> (0549). He was still listed as such in the 2008 
annual report dated 22-Apr-09 - so his ban apparently doesn't include being a 
senior manager of a listed company. Wilfred Hung still has his own firm.</p>
<h3 id="Chinaway">Chinaway Technology</h3>
<p>On 24-Sep-03, less than a month after Mr Lee had sold down to 29.37%, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030930/LTN20030930167.pdf">
agreed</a> to buy Chinaway Network Technology Ltd (HK, <strong>Chinaway</strong>) 
from companies owned by &quot;<strong>Lau Yim</strong>&quot; for <strong>HK$35m in cash</strong>, or about 46.4% of CPP's 
net tangible assets. The deal was completed on 30-Sep-03, the last day of CPP's 
financial year. Chinaway commenced business in early 2002 and was &quot;principally 
engaged in system integration services and the development of information 
technology infrastructure network for school projects in the PRC&quot;. In other 
words, it sold PCs and LANs. Chinaway was a 2-man firm (one management and one 
engineer) and all its services were subcontracted to other firms. We know 
nothing about Lau Yim. He/she was described as an &quot;independent third party&quot;.</p>
<p>Chinaway had turnover of $1.36m in 2002 and $3.97m in the 7 months to 31-Jul-03, 
with pro forma net assets of $4.1m at 31-Jul-03. 
Despite that, Lau Yim guaranteed a profit of $10m in 2004, and had undertaken to 
repay 3.5x any shortfall. It is unclear whether Chinaway achieved the target 
profit. In the 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050131/LTN20050131105.htm">year to 30-Sep-04</a> (which includes 9 months of the target year), 
the IT segment which was solely Chinaway, booked a loss of $1.54m. In the 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050630/01094/EWF101.pdf">6 
months to 31-Mar-05</a> (which includes the final 3 months of the target year), the 
IT segment, which included 2 more acquisitions, booked a loss of $8.33m. <strong>CPP should disclose whether Chinaway achieved its profit target and 
if not, whether Lau Yim paid up, and if s/he didn't, then what steps were taken 
to pursue him/her</strong>.</p>
<p>Note 25(a) of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040121/LTN20040121056.htm">accounts</a> for the year ended 30-Sep-03 shows that when the deal completed 
that day, Chinaway had net assets of $2.12m and hence goodwill of $32.9m was 
booked.</p>
<h3 id="RightsIssue">Rights issue and new shareholders</h3>
<p>On 29-Jan-04, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040130/LTN20040130022.pdf">
launched</a> a rights issue of 3 new shares at $0.10 (par value) for every 2 
shares held, raising $61.8m gross ($60m net) of which $40m was earmarked for IT 
acquisitions. The issue
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040413/LTN20040413079.pdf">
flopped</a> when it closed on 8-Apr-04 with only 33.3% taken up (including Mr Lee's 29.37%), and the 
underwriters were left with 40.02% of the company.</p>
<p>Where did the underwriting rump go? On 14-Apr-04 three new substantial 
shareholders emerged. Win Power Ltd (Samoa, <strong>Win Power</strong>)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=15932&amp;lang=EN&amp;dia=Y">
acquired</a> a shareholding of 14.67%. The filing stated the owner of Win Power 
to be &quot;Kitty Lam Kit Ping&quot;, although she did not file a disclosure herself. She 
is a partner of law firm Michael Cheuk, Wong &amp; Kee. Grandtech Management Ltd 
(BVI, <strong>Grandtech</strong>)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=15928&amp;lang=EN&amp;dia=Y">
acquired</a> 15.59%. The filing stated the owner of Grandtech to be &quot;Zhuo Gui 
Fang&quot; although again, he/she did not file a disclosure. We know nothing about 
him/her. Chorale Investments Ltd (Samoa, <strong>Chorale</strong>)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=15930&amp;lang=EN&amp;dia=Y">
acquired</a> 9.76%. That was owned by &quot;Connie So Choi Ying&quot;, who again did not 
file a disclosure. A person called <a href="../dbpub/positions.asp?p=49860">
Connie So Choi Ying</a> is now a partner of law firm
<a href="../dbpub/orgdata.asp?p=5704">K.C. Ho &amp; Fong</a>. She may or may not be 
the same person as the owner of Chorale. The three holdings add up to the 40.02% 
which the underwriters were left with.</p>
<p>On 20-Apr-04, Katherine Yu
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040421/LTN20040421053.pdf">
resigned</a> for &quot;personal reason&quot;.</p>
<p>On 22-Apr-04, Chorale
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=16111&amp;lang=EN&amp;dia=Y">
disposed</a> of 100m shares (9.70%) off-market at $0.10, cutting its holding to 
0.06%. The initial holding and number of issued shares is misstated in this 
filing, which does not appear in a search by stock code, only by substantial 
shareholder - another bug in the Stock Exchange's filing system.</p>
<h3 id="ExcelStar">Excel Star</h3>
<p>On 2-Jun-04, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040603/LTN20040603016.pdf">
signed</a> an MOU for the possible purchase of Excel Star Technology Ltd (BVI,
<strong>Excel Star</strong>) from Silky Ltd (<strong>Silky</strong>, Samoa) for 
up to HK$15m. Excel Star's sole asset was 51% of a Sino-foreign equity joint 
venture &quot;principally engaged in the provision of system integration, 
telecommunication and software development services in the PRC&quot; which began 
operations in Oct-2003. On 24-Sep-04, this became an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040927/LTN20040927048.pdf">
agreement</a> and the price was set at $13m, subject to adjustment if the JV 
Company's NAV was less than RMB1.961m. The owner of Silky was not disclosed.</p>
<p>Excel Star had consolidated revenue of just $747k from 13-Aug-02 to 
31-Jul-04, and a net loss of $173k, with net tangible assets of $838k at 
31-Jul-04. The 51% interest in the JV was valued by <a href="../dbpub/orgdata.asp?p=16536">Grant Sherman 
Appraisal Ltd</a> (<strong>Grant Sherman</strong>) at $13m on a discounted cash 
flow basis. As you will recall from Parts 2 and 3, Grant Sherman also did 
valuations of the cargo leasing project acquired by 
<a href="../dbpub/orgdata.asp?p=10787">China Railway Logistics Ltd</a> (8089,
<strong>CRL</strong>) and the Aierfu tissue engineering company acquired by 
<a href="../dbpub/orgdata.asp?p=13754">China Bio-med Regeneration Technology Ltd</a> (<strong>CBRT</strong>, 8158). 
The JV Company had been established with a total investment of just HK$2m in 
October 2003, but was now apparently worth $25.5m. The deal was completed on 
7-Oct-04.</p>
<h3 id="RainbowLee">Rainbow Bridge - Mr Lee divides his holding</h3>
<p>Also on 7-Oct-04, and for no obvious reason, Mr Lee 
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=5772&amp;lang=EN&amp;dia=Y">split</a> 
his shareholding by transferring 10.26% of CPP to Rainbow Bridge Group Ltd (BVI, <strong>Rainbow Bridge</strong>) 
from Info Fortune Holdings Ltd (BVI) , which retained 19.11%. 
He owned 100% of both holders. Perhaps he was pledging one of the holdings. As 
you will <a href="#LukKamRainbow">see later</a>, Rainbow Bridge was eventually 
acquired by a person called &quot;Luk Kam&quot;.</p>
<h3 id="PopularAsset">Popular Asset</h3>
<p>On 7-Jan-05, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050107/LTN20050107123.pdf">
agreed</a> to buy Popular Asset Ltd (HK, <strong>Popular Asset</strong>) for 
$15m from Fortis Development Ltd (HK, <strong>Fortis Development</strong>), the 
owner of which was not 
disclosed. We pulled Fortis Development's Annual Return as at 6-Aug-04 from the Companies Registry, and it had 2 issued shares held by two Samoan companies, Min Wah 
Ltd and Chung Chiu Development Ltd, so that's an investigative dead-end, because 
like the BVI, Samoan share registers are secret. The two directors were Min Wah 
Ltd and &quot;Joe Cheuk Ho Yin&quot;, who gave his residential address as an office 
building - 10/F, Wing On Cheong Building, 5 Wing Lok Street, Central. <strong>We wonder 
why the vendor's ultimate owner(s) went to such lengths to hide their identity</strong>.</p>
<p>Popular Asset was &quot;principally engaged in...the provision of information 
technology and telecommunication facility management services&quot; and operated a 
data centre in HK, the location of which was not disclosed. We cannot find any 
reference to the company online - it must have been a very low profile data 
centre. Popular Asset was only 
incorporated on 8-Aug-03 and had a net loss of $107k up to 31-Oct-04 and had 
&quot;total assets&quot; of $2.4m at that date. That figure is meaningless without knowing 
its liabilities. Net assets were not disclosed.
<a href="../dbpub/orgdata.asp?p=18859">Castores Magi Asia Ltd</a> (<strong>Castores 
Magi</strong>) valued Popular Asset at $15.5m on a discounted cash flow basis. 
The deal was completed on 11-Jan-05.</p>
<p>As you will <a href="#2006results">later discover</a>, Popular Asset was sold in 2006 for just $650k.</p>
<h3 id="SaleShoe">Sale of shoe business</h3>
<p>On 31-Mar-05, in what you might call a &quot;clearance sale&quot;, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050331/LTN20050331201.pdf">
agreed</a> to sell its loss-making shoe-making business in the form of Kaitai 
United Co Ltd (BVI) to Jade Paradise Ltd (BVI) for $12.9m. The owner of the 
purchaser was not disclosed.</p>
<h3>2005 results: goodwill impairment</h3>
<p>Note 26.2 of the CPP accounts for the year to 30-Sep-05 shows that Excel Star 
and Popular Asset, which together cost $28m in cash, had combined net assets of 
just $2.5m and so generated goodwill of $25.5m. The two businesses had 
contributed revenue of only $1.62m and a net loss of $1.01m from the dates of 
acquisition up to 30-Sep-05 - that's for over 11 months of Excel Star and over 8 
months of Popular Asset.</p>
<p>The accumulated goodwill on acquisitions of Chinaway, Excel Star and Popular 
Asset amounting to $51.76m (plus the $6.58m amortised in 2004) was fully 
impaired by 30-Sep-05 based on the &quot;recoverable amount of the relevant cash 
generating units&quot;, resulting in a net loss of $58.2m for the year.</p>
<h3 id="GoldenPortal">Golden Portal</h3>
<p>On 26-Aug-05, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050829/LTN20050829050.pdf">
agreed</a> to buy Golden Portal Holdings Ltd (BVI, <strong>Golden Portal</strong>) 
from Jet Palace Development Ltd (<strong>Jet Palace</strong>, BVI) for HK$16m, 
of which $4m was in cash and $12m as 120m shares (10% of enlarged) at $0.10. The owner(s) of Jet 
Palace were not disclosed. Golden Portal owned 100% of Capital Access Ltd (BVI,
<strong>Capital Access</strong>) which owned 70% of Bartech (International) 
Information Network Ltd (HK, <strong>Bartech</strong>), the operator of
<a target="_blank" href="http://www.stockonline.com">www.stockonline.com</a>. 
Bartech had an operating loss of $1.64m in the year to 30-Sep-04. It had 
unaudited net liabilities of $3.1m at 31-Jul-05. Bartech was incorporated on 
18-Jul-95, but Golden Portal was only incorporated on 20-Oct-04 and Capital 
Access on 18-Mar-05, so the group structure must post-date that. The 
announcement stated that Jet Palace had only acquired the Golden Portal Group in 
Jul-2005 (at an unknown price), just a month before it was sold to CPP. <strong>You 
might wonder what profit they made on flipping it and who owned Jet Palace</strong>.</p>
<p>Golden Portal was valued by Castores Magi at $23.5m as at 31-Jul-05. The deal 
was completed on 1-Oct-05. When the shares were issued on 30-Sep-05, they had a 
market value of $0.15 each, valuing them at $18m and increasing the total 
consideration to $22m for accounting purposes. As you will 
<a href="#SaleBartech">see later</a>, in 
Jul-2008 CPP sold its stake in Bartech for just $1.295m.</p>
<p>Jet Palace started selling its CPP shares on 14-Nov-06 and cut below 5% on 29-Nov-06. 
None of its shareholders ever disclosed an interest in the shares it held.</p>
<h3 id="SLS">SLS Investments</h3>
<p>On 20-Feb-06, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060221/LTN20060221085.pdf">
agreed</a> to buy SLS Investments Ltd (<strong>SLS</strong>, BVI) from Goldlite 
International Ltd (Samoa, <strong>Goldlite</strong>) as to 50%, Wyndham Profit 
International Ltd (BVI, <strong>Wyndham Profit</strong>) as to 25%, and Hikari 
International Ltd (BVI, <strong>Hikari</strong>) as to 25%, for a total of $54m, 
of which $12m was in cash and $42m as 300m shares (20.7% of enlarged capital) at 
$0.14. Simon Lum Lap Kwan (<strong>Simon Lum</strong>) owned Goldlite and 45% of 
Hikari, giving him a 61.25% economic interest in SLS, while Stephanie Wong Wai 
Wing (<strong>Stephanie Wong</strong>) owned Wyndham Profit and the other 55% of 
Hikari, giving her a 38.75% economic interest.</p>
<p>SLS owned Gala Success (Asia) Ltd (HK, <strong>Gala Success</strong>), 
incorporated on 13-Jun-05, which owned 89% of a Sino-foreign equity joint 
venture called Beijing Woda Taifeng Consultation Co Ltd (<strong>Woda Taifeng</strong>), 
which owned 70% of Beijing Tianxun Shitong Technology Development Co Ltd (PRC,
<strong>Tianxun</strong>), which owned 40% of, and was the largest shareholder 
in, Beijing Haidian District Cable Television Broadcasting and Network 
Information Ltd (PRC, <strong>Haidian</strong>). Haidian was a &quot;broadband 
internet service provider in Beijing&quot;. Another 30% of Haidian was owned by 
Beijing Tianshi Lingyun Technology Development Co Ltd (PRC, <strong>Tianshi</strong>). 
SLS was structured as follows:</p>
<ul>
	<li>On 1-Jul-05, SLS acquired Gala Success, newly incorporated, for HK$10k</li>
	<li>On 29-Jul-05, Tianxun acquired its 40% of Haidian from Tianshi for 
	RMB7m, borrowed from Simon Lum.</li>
	<li>On 9-Aug-05 Woda Taifeng and Haidian entered into a 9-year service 
	agreement under which Woda Taifeng would get 70% of fees paid by new 
	customers after 1-Jan-06.</li>
	<li>On 12-Aug-05 Woda Taifeng acquried 70% of Tianxun from Mr Liu 
	Ligang for a nominal RMB140k.</li>
	<li>On 19-Aug-05, Gala Success acquired its 89% stake in Woda Taifeng 
	for HK$1.17m from an unnamed party.</li>
</ul>
<p>Woda Taifeng held its investment in Tianxun through a PRC nominee arrangement 
to avoid the foreign ownership regulations in the PRC telecom sector. SLS had 
net assets of just $1.33m at 31-Dec-05. Haidian, in which SLS had a 24.92% 
interest, made a net profit of RMB1.13m in 2005. Simon Lum agreed to assign the 
RMB7m due from Tianxun to CPP, so the effective cost of assembling this deal was 
about HK$8m, and it was being flipped into CPP for $54m. As you will
<a href="#SaleHaidian">see later</a>, CPP eventually disposed of Tianxun in 2008 
for only $6.23m.</p>
<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060703/LTN20060703098.pdf">
circular</a> finally went out on 30-Jun-06 containing a report by Grant Sherman 
(yes, them again) valuing SLS at RMB75.1m at 31-Mar-06. The deal completed on 
27-Jul-06, on which day the share price was $0.10, valuing the 300m shares at 
$30m and the total deal at $42m for accounting purposes.</p>
<p>When the shares were issued, Simon Lum should have had a discloseable 
interest in 150m shares (10.34%) held by Goldlite and 75m shares (5.17%) held by 
Hikari, a total of 15.5% of CPP. Similarly, Stephanie Wong should have had an 
interest in the shares held by Wyndham Profit and Hikari, a total of 10.34% of 
CPP. <strong>No disclosures of these interests, each over 5%, were filed by 
Simon Lum, Stephanie Wong, Goldlite, Wyndham Profit or Hikari.</strong></p>
<h3>China Rainbow Technology</h3>
<p>On 8-May-06, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060508/LTN20060508144.pdf">
agreed</a> to buy China Rainbow Technology Ltd (BVI, <strong>China Rainbow</strong>) 
from Ms <strong>Sun Xiang Ning</strong> for $6.5m in cash. China Rainbow was &quot;principally engaged 
in...technical support and management consultancy services to telecommunication 
and internet services providers&quot; in the PRC. The Board of CPP believed it would 
enable the company to &quot;enjoy synergy effect by providing Internet Protocol 
Television...service to potential clients in Beijing&quot;. The deal was 
completed on 9-Nov-06. In the next annual report at 31-Dec-07, China Rainbow 
appeared in the list of subsidiaries as &quot;inactive&quot;. You might wonder how active it 
was to start with. In 2008, it was sold for just $400k, without announcement. This is 
disclosed in note 30(a) of the 2008 report, which we'll get too later.</p>
<h3>Overlaps with HXC</h3>
<p>On 6-Jul-06, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060706/LTN20060706103.pdf">
appointed</a> Mr <a href="../dbpub/positions.asp?p=31603">Too Shu Wing</a> as an 
ED. He was already an ED of <a href="../dbpub/orgdata.asp?p=18154">Heng Xin 
China Holdings Ltd</a> (<strong>HXC</strong>, 8046) since 1-Jan-06.
<a href="../dbpub/positions.asp?p=17963">Allan Kwok Ming Fai</a>, an INED of HXC 
from 30-Sep-02 to 10-Mar-06, was also an ED of CPP from 14-Oct-03 to 14-Aug-06. 
Also on 14-Aug-06, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060815/LTN20060815125.pdf">
appointed</a> <a href="../dbpub/positions.asp?p=49877">Nelson Chiu Yu Choi</a> 
was as Company Secretary. He was already Company Secretary of HXC. You'll see 
two more personnel connections with HXC later in this article.</p>
<p>We're not sure why CPP showed such an affinity to people from HXC at this 
point. On the face of it, in the summer of HXC was a struggling GEM shell with 
net assets at 30-Jun-06 of just $4.8m and was 41.04% owned by
<a href="../dbpub/positions.asp?p=19147">Tony Hoo</a>, its MD and co-founder. 
But perhaps plans were already being made for its activation. On 13-Mar-07, <a href="../dbpub/positions.asp?p=20434">Mr Lam Shu Chung</a> 
(<strong>S C Lam</strong>) bought Tony Hoo's stake and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070313/GLN20070313038.pdf">
triggered</a> a general offer. S C Lam <a href="#Digisat">features later</a> in 
this article as the vendor of a company to CPP. He is or was the Marketing Director of <a href="../dbpub/orgdata.asp?p=25386">Success Securities Ltd</a>, owned by
<a href="../dbpub/natperson.asp?p=1847">Sonny Yeung Hoi Sing</a>.</p>
<p>We'll deal with the full saga of HXC in a later article, but for now we note 
that the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080929/GLN20080929025.pdf">
annual report</a> of HXC for the year to 30-Jun-08 shows that at that date, it 
owned 13.38m shares (0.67%) of CPP. The share price was $0.76 so they were worth 
$10.17m or about 15.3% of net assets. During the year, HXC spent $20.015m on 
equities. It booked a revaluation surplus to reserves of $5.834m, but took an 
impairment loss in the income statement of $10.35m, leaving book value of 
$15.499m.</p>
<h3 id="RainbowBridge">Luk Kam buys Rainbow Bridge</h3>
<p>On 9-Aug-06, Mr Lee
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=13237&amp;lang=EN&amp;dia=Y">
sold</a> Rainbow Bridge, which owned 7.29% of CPP, to <strong>Luk Kam</strong>, 
for a price equivalent to $0.085 per CPP share. We know nothing about Luk Kam.</p>
<p>On 11-Aug-06, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060811/LTN20060811132.pdf">
appointed</a> two new INEDs: Mr <a href="../dbpub/positions.asp?p=35898">Chan 
Wai Ming</a>, a telecom engineer, and Mr
<a href="../dbpub/positions.asp?p=35899">Deso Tsui Pak Hung</a>.</p>
<h3 id="WarrantsPun">Warrants for Mr Pun</h3>
<p>Just a week after Mr Lee's sale, on 16-Aug-06, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060823/LTN20060823035.pdf">
agreed</a> to issue 18-month warrants to subscribe 230m shares (13.69% of 
enlarged) at $0.10 (2.0% premium to market) for an issue price of $0.01 per 
warrant, raising just $2.1m gross, to Wellington International Invest Ltd (BVI,
<strong>Wellington</strong>), wholly-owned by a Mr Pun Yan Chak (<strong>Mr Pun</strong>). 
We'll tell you who he is later. The warrants were issued on 5-Sep-06. <strong>Mr 
Pun has never made any disclosures of interest in the shares of CPP or anything 
else</strong>.</p>
<p class="regbox"><strong>Regulatory note</strong>: when a company issues unlisted warrants to a single investor for no apparent reason, raising very little in 
the way of certain proceeds and offering only the prospect of funding if the 
share price goes up, then it is usually part of some plan to 
position the beneficial owner of the warrants (who is often not who the company 
says) for the upside on some planned but unannounced corporate action.</p>
<h3 id="2006results">2006 results: goodwill impairment</h3>
<p>The CPP accounts for the year ended 30-Sep-06 show that Golden Portal 
contributed net liabilities of $3.14m when it was acquired on 1-Oct-05, and 
hence generated goodwill of $25.14m. Golden Portal contributed revenue of $5.93m 
and net profit of $262k for the full year.</p>
<p>Meanwhile SLS contributed net assets of $4.91m and goodwill of $37.09m on 
acquisition on 27-Jul-06. In the 2 months up to the year-end, SLS had 
contributed revenue of $321k and a net loss of $151k.</p>
<p>Once again, as in 2005, CPP had paid too much for its acquisitions and wrote 
off $9m of goodwill on Golden Portal and $15m on SLS, a total of $24m, 
increasing CPP's net loss for the year to $36.3m.</p>
<p>The accounts also revealed that during the year it had quietly sold a 
subsidiary, namely Popular Asset, for just just $650k (its net asset value), 
which compares rather unfavourably with its <a href="#PopularAsset">purchase</a> price of $15m on 11-Jan-05. 
The buyer was not disclosed. The Companies Registry records that Popular Asset 
was dissolved by deregistration on 10-Aug-07.</p>
<p>Meanwhile, Chinaway had gone sour and was engaged in litigation with its 
former employees.</p>
<h3 id="Digisat">DigiSat</h3>
<p>On 22-Dec-06, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070108/LTN20070108058.pdf">
agreed</a> to buy 80% of
<a href="../dbpub/orgdata.asp?p=49613">DigiSat Network Ltd</a> (HK, <strong>
DigiSat</strong>, now DigiWorld Network Ltd and previously Digiphone Network 
Ltd) from S 
C Lam for HK$35.8m, to be satisfied by the issue of 358m CPP shares 
(19.80% of enlarged) at $0.10 each. DigiSat was:</p>
<blockquote>&quot;principally engaged in the operation of internet 
protocol television platform which provides to its customers an interactive, 
high quality, reliable video delivery and multimedia entertainment via the 
internet using state of the art digital broadcasting technology&quot;.</blockquote>
<p>There is still has a <a target="_blank" href="http://www.digisat.com/">half-finished web 
site</a> where most of the links don't work. Through the internet archive, on 
the date of the announcement, it
<a target="_blank" href="http://web.archive.org/web/20061222213121/http:/www.digisat.com/">
looked like this</a>. Note that the archived site is in the name of DigiSat 
Network Limited whereas the current one is in the name of Digisat Technology 
Limited. DigiSat was 
preliminarily valued by <a href="../dbpub/orgdata.asp?p=16425">B.I. Appraisals Ltd</a> 
(<strong>B I Appraisals</strong>) at HK$47m on a discounted cash flow 
basis.</p>
<p>DigiSat was 90% owned by S C Lam and 10% owned by Albert Lui Chun Shuen (<strong>Albert 
Lui</strong>). The digisat.com domain is currently
<a target="_blank" href="../codocs/whois.digisat.com090701.pdf">registered</a> 
to Albert Lui. According to
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1097885/000113705005000260/golden8kaddir2.htm">
an SEC Filing</a>, Albert Lui was appointed as a director of
<a href="../dbpub/officers.asp?p=49610">China Sports &amp; Entertainment, Ltd</a> 
(incorporated in Nevada) on 8-Aug-05. It was what Americans call a &quot;blank check&quot; 
company, or a shell, with no commercial operations, and known as Goldeneye 
Capital Group, Inc until 28-Jun-05. Two days after that, three new directors 
joined the board, including <a href="../dbpub/positions.asp?p=8308">Ricky Chim 
Kim Lun</a>, son of the infamous legislator, and lawyer
<a href="../dbpub/positions.asp?p=14973">Richard Tsun Kok Chung</a>. The 
company's last filing was on 18-Sep-06 when it fired its auditors. It appears 
that no capital was raised. The name change gives some hint of what they hoped 
to do with the shell, but nothing seems to have happened.</p>
<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070212/LTN20070212101.pdf">
circular</a> on the DigiSat acquisition was dated 12-Feb-07. The accountants' 
report by <a href="../dbpub/orgdata.asp?p=22452">Cachet Certified Public 
Accountants Ltd</a> (<strong>Cachet</strong>) shows that DigiSat, incorporated on 18-Aug-03, had not 
commenced business until Oct-2005. In the year to 30-Sep-06, it had turnover of 
$1.46m and a net loss of $2.69m. We note that Mr
<a href="../dbpub/positions.asp?p=22517">Chan Chi Yuen</a>, the director of 
Cachet who signed the Cachet report, is an INED of several listed companies 
including <a href="../dbpub/orgdata.asp?p=4873">China Sciences Conservational 
Power Ltd</a> (<strong>CSCP</strong>, 0351) which featured in our previous 
story.</p>
<p>The valuation report was signed for B I 
Appraisals by William C K Sham - the same man and firm which did the valuation 
featured in our <a href="grandfield1.asp">Cooking with Gas</a> story 
on <a href="../dbpub/articles.asp?p=4802">Grand Field Group Holdings Ltd</a> 
(0115) of 4-Mar-04.</p>
<p>The 358m CPP shares were issued to S C Lam on 14-Mar-07 and the deal was 
completed by 31-Mar-07 (if you believe the interim report) or on 23-Apr-07 (if 
you believe the 2007 annual report). The annual report shows that on 
acquisition, Digisat had net assets of $1.26m and the CPP shares issued as 
payment were valued at $37.59m (market price of $0.105), so there was goodwill 
paid of $36.3m.</p>
<p>As you will <a href="#DigiSatSold">see later</a>, DigiSat was eventually sold on 8-Jun-09 for just 
HK$10k.</p>
<h3 id="LukShares">Placing to Rainbow Bridge (Luk Kam)</h3>
<p>On 13-Mar-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070315/LTN20070315019.pdf">
agreed</a> to issue 50m shares (3.29% of enlarged) at $0.10, raising $5m gross 
($4.85m net) to Rainbow Bridge, without mentioning who owned it. After the subscription agreement, Rainbow Bridge sold 
100m shares in the market from 16-Mar-07 to 21-Mar-07 at an average $0.1279. The 
subscription was completed on 26-Mar-07.</p>
<p>Meanwhile Wellington (owned by Mr Pun) exercised 12m warrants on 4-Jan-07 and 
8m warrants on 6-Feb-07, and sold 20m shares on 15-Mar-07 at an average $0.125.</p>
<h3 id="LuckyRider">Placing to Lucky Rider</h3>
<p>On 19-Mar-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070321/LTN20070321045.pdf">
agreed</a> to issue 70m shares (4.54% of enlarged) at $0.14, raising $9.8m gross 
($9.65m net) to Lucky Rider Investment Ltd (Samoa, <strong>Lucky Rider</strong>), the owner of which was not 
disclosed. <a href="../contact/">If you know, tell us</a>. The subscription was completed on 28-Mar-07.</p>
<h3 id="WarrantsLuk">Warrants for Luk Kam &amp; Mr Pun (again)</h3>
<p>On 3-Apr-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070411/LTN20070411071.pdf">
agreed</a> to issue 1-year warrants to subscribe 48m shares (2.26% of enlarged) 
at $0.134 (market price) for $0.016 per warrant, raising just $768k gross ($600k 
net), to Rainbow Bridge. This time the owner, Mr Luk Kam, was disclosed. He was 
simply described as &quot;a private investor who has been investing in the securities 
market in Hong Kong for over ten years.&quot; The warrants were all exercised by 
26-Jun-07, the date of the interim report.</p>
<p>Also on 3-Apr-07, CPP agreed to issue 2-year warrants to subscribe 130m 
shares (6.11% of enlarged) at $0.156 for $0.016 per warrant, raising $2.08m 
gross ($1.9m net), again to Wellington, still owned by Mr Pun. It now described Mr Pun 
as&nbsp; &quot;a private investor who has worked as a professional engineer in 
telecommunication industry in both private practice and government sector for 
over 20 years.&quot; A web search shows that in 2002 he
<a target="_blank" href="http://www.itu.int/ITU-D/treg/Events/Seminars/GSR/GSR02/Documents/List%20of%20participants.pdf">
worked as a Telecommunications Engineer </a>at the regulator, OFTA. The warrants 
were issued on 30-Apr-07.</p>
<p>Keep in mind that Mr Pun's Wellington still held 210m warrants from the 
previous year's deal. So at the time of the second issue, he now had warrants 
over 340m shares, equal to 17.45% of existing share capital. He never disclosed 
any interest in the underlying shares, although Wellington did.</p>
<p class="regbox"><strong>Regulatory note</strong>: under HK's archaic Listing Rules, you are 
only a connected person if you own 10% of the issued shares, not warrants, 
convertible notes, share pledges or other derivatives, even if these might give 
you heavy influence over the company. The definition of connected person, which 
was conceived before derivative interests were discloseable, should be updated 
to include derivative interests.</p>
<h3>Envision Link and Global Great</h3>
<p>On 30-Apr-07, CPP acquired Envision Link Ltd (BVI, <strong>Envision Link</strong>) 
from an unnamed vendor for HK$2.7m. Being small, this deal was not disclosed 
until the 2007 accounts. Envision Link was incorporated on 3-Jan-06 and 
&quot;principally engaged in the trading of mobile phones and other 
telecommunications equipment&quot;.</p>
<p>For some reason we cannot fathom, the acquisitions of Envision Link and China 
Rainbow were bundled together in the accounting disclosure in the 2007 annual 
report. They showed that, on acquisition, there were combined net liabilities of 
$36k, and hence goodwill of $9.24m was generated from the $9.2m purchase price. 
The businesses contributed turnover of $5.2m and a net profit of $0.13m from the 
dates of acquisition until the year end.</p>
<p>On 30-May-07, CPP acquired <a href="../dbpub/orgdata.asp?p=49880">Global 
Great Development Ltd</a> (HK, <strong>Global Great</strong>) from an unnamed 
vendor for $12.024m. This deal was first disclosed in the 2007 results. Global 
Great was incorporated on 10-Jan-05 and according to page 6 of the 2007 annual 
report it was &quot;principally engaged in the operation of the VoIP services and 
trading of mobile phones&quot; although the list of subsidiaries described it as 
&quot;trading of computer components and the operation of the VoIP services&quot;. It had 
only recently changed its name. It is
<a target="_blank" href="http://www.ofta.gov.hk/en/tele-lic/operator-licensees/pnets-ets.html">
listed</a> on the OFTA web site as an IDD vendor. On acquisition, Global Great 
had net liabilities of $716k and hence generated goodwill of $12.74m. From 
acquisition until year-end, it contributed turnover of $5.69m and a net loss of 
$1.90m. Another great deal by CPP!</p>
<h3 id="IBBS">IBBS</h3>
<p>On 10-May-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070515/LTN20070515049.pdf">
agreed</a> to purchase <a href="../dbpub/orgdata.asp?p=49614">Interactive Broadband Services Ltd</a> 
(HK, <strong>IBBS</strong>) from Mr Ngai Tin Yee (<strong>T Y Ngai</strong>) for $32.8m, to be satisfied by 
the issue of 200m shares (9.31% of enlarged) at $0.164. IBBS was founded in 1998 
and has a <a href="http://www.ibbs.com.hk/">web site</a> which was last updated 
on 12-Jun-04, so we wonder how active the business was even at the time of 
acquisition.</p>
<p>The announcement said that IBBS is &quot;principally engaged in the 
provision of IP-based managed services, including VoIP telephony, video and data 
collaboration to broadband internet users&quot;. In the year to 30-Apr-07, according to 
unaudited management accounts, it made a loss of $102k on turnover of $1.43m and 
had net liabilities of $208k. Despite this, it had a preliminary discounted cash 
flow valuation from Grant Sherman (yes, them again) of $35m.</p>
<p>The deal completed on 2-Jun-07, when the share price was $0.227, valuing the 
deal at $45.4m for accounting purposes. The valuation report 
was contained in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070605/LTN20070605095.pdf">
circular</a> dated 5-Jun-07. On the same day, auditors Grant Thornton
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070606/LTN20070606133.pdf">
resigned</a> as auditors and were replaced by <a href="../dbpub/adviserships.asp?p=3807">
Morison Heng</a>, a firm with just <a href="../dbpub/adviserships.asp?p=3807">4 
HK-listed audit clients</a>, including CPP and HXC.</p>
<p>On 21-Jun-07, T Y Ngai
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=18623&amp;lang=EN&amp;dia=Y">
sold</a> 100m shares at $0.25 in an off-market transaction, cutting his stake 
from 8.77% to 4.38%, below the disclosure threshold. On 11-Jul-07, a block of 
100m shares
<a href="../ccass/chldchg.asp?i=3261&amp;d=2007-07-11">
entered CCASS</a> through Fortune Securities. This could be the remainder of his 
stake. The bulk of that block was
<a href="../ccass/chistory.asp?i=3261&amp;part=357&amp;s=dateup">disposed of</a> 
by the end of the month.</p>
<p>The 2007 annual report shows that on acquisition, IBBS had net liabilities of 
$510k, so there was goodwill of $46.0m.</p>
<p>We should note that T Y Ngai has sold a tropical igloo to a listed company 
once before - on 23-Feb-00, he was one of two vendors in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000225/LTN20000225040.HTM">
sale</a> of 60% of Cyberoffice Ltd (HK, <strong>Cyberoffice</strong>), 
incorporated 4 months earlier, of which he was CEO, to
<a href="../dbpub/orgdata.asp?p=4765">401 Holdings Ltd</a> (now delisted) in 
exchange for shares valued at $21m, which completed on 3-May-00. 14 months 
later, on 6-Jul-01, Cyberoffice went into creditors' voluntary liquidation with 
net liabilities of $16.3m having lost $14.9m from acquisition up to 31-Mar-01. 
The other vendor in that deal was Mr Or Yee Fung (<strong>Y F Or</strong>). Now 
guess what we found - Mr Pun and Y F Or were classmates,
<a target="_blank" href="http://www.ee.cuhk.edu.hk/a_alumnus.php?year=1981">
graduating in 1981</a> from the Department of Electronic Engineering at CUHK. 
And just a year behind them was T Y Ngai, who
<a target="_blank" href="http://www.ee.cuhk.edu.hk/a_alumnus.php?year=1982">
graduated in 1982</a>.</p>
<p>So could it be that Mr Pun introduced the IBBS deal to CPP?</p>
<h3 id="TonyWong">Tony Wong</h3>
<p>On 11-May-07, the day after the IBBS acquisition,
<a href="../dbpub/positions.asp?p=40553">Tony Wong Kam Fat</a> (<strong>Tony 
Wong</strong>)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=17383&amp;lang=EN&amp;dia=Y">
acquired</a> 225m shares (11.55%) of CPP at $0.10 in an off-market transaction, 
of which 150m (7.70%)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=63886&amp;lang=EN&amp;dia=Y">
came from</a> Goldlite and the other 75m (3.85%)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=63887&amp;lang=EN&amp;dia=Y">
from Wyndham Profit</a> (another HKEx bug - this filing doesn't show up on the 
search by stock code, only by holder). Once again, the owner of Goldlite 
(presumably still Simon Lum) did not make any disclosure of interest reduction. 
The stock closed the day before at $0.161. We don't know why the vendors were 
willing to sell him their stake at such a big discount, and at the same price 
($0.10) at which they had received them on 27-Jul-06 when they completed the 
sale of SLS to CPP.</p>
<p>On 12-Jul-07, CPP 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070712/LTN20070712214.pdf">appointed</a> 
Tony Wong as Vice-Chairman.</p>
<h3>Placing and board changes</h3>
<p>On 16-Jul-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070718/LTN20070718263.pdf">
launched</a> a placing via <a href="../dbpub/orgdata.asp?p=20650">Grand Vinco Capital Ltd</a> 
(<strong>Grand Vinco</strong>) of 469m shares (16.67% of enlarged) at $0.235 
per share raising $110.2m gross (<strong>$109m</strong> net). The placing was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070731/LTN20070731307.pdf">
completed</a> on 31-Jul-07.</p>
<p>On 23-Jul-07, Wellington (Mr Pun's company)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=71023&amp;lang=EN&amp;dia=Y">
sold</a> 260m warrants off-market for $0.015 per warrant, cutting its holding to 
80m warrants. There was no disclosure by anyone who bought them, although they 
amounted to an 11% interest in the existing issued shares. Subsequently, and by 
30-Sep-07, the remaining 210m warrants of the first series and all 130m warrants 
of the second series were exercised.</p>
<p>Also on 23-Jul-07, CPP 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070723/LTN20070723311.pdf">appointed</a> S C Lam, the vendor of Digisat, as Chairman. He was 
also an ED of HXC from 1-Jun-07 to 29-Oct-07. </p>
<p>On 27-Aug-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070827/LTN20070827401.pdf">
appointed</a> Mr <a href="../dbpub/positions.asp?p=31597">Au Tin Fung </a>and Mr
<a href="../dbpub/positions.asp?p=24799">Chan Chun Wai</a> as INEDs. Mr Au was 
an INED of <a href="../dbpub/orgdata.asp?p=13901">China Fortune Group Ltd</a> (<strong>China 
Fortune</strong>, 0290) from 23-Dec-05 to 10-May-06. He is now the MD of
<a href="../dbpub/orgdata.asp?p=49924">Fortune Wealth Management Ltd</a>, an
<a target="_blank" href="http://www2.piba.org.hk/pn01_2.php?srhtyp=M&amp;regno=0424">
insurance broker</a> owned by China Fortune. Mr Chan was an INED of
<a href="../dbpub/orgdata.asp?p=4874">Jia Sheng Holdings Ltd</a> (0729) from 
22-Mar-05 to 29-May-07.</p>
<h3 id="Liu">Mr Liu Yi Dong</h3>
<p>On 31-Oct-07, Mr Liu Yi Dong (<strong>Mr Liu</strong>)
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=21657&amp;lang=EN&amp;dia=Y">
acquired</a> 453m shares (14.11%) of CPP at $0.275 off-market, of which 225m
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=56581&amp;lang=EN&amp;dia=Y">
came from Tony Wong</a> (his entire holding) and the other 228m
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=21607&amp;lang=EN&amp;dia=Y">
came from S C Lam</a> (leaving him with 100m shares). As you will recall, Tony 
Wong had purchased his shares at $0.10 from the vendors of SLS to CPP, while S C 
Lam had received his shares at $0.10 when he sold Digisat to CPP. Now how good is your memory? Does Mr Liu's name ring a bell? In our story
<a href="traingames.asp">China Railway Games</a> (Part 2 of this 
series), Mr Liu was the guy who bought 22.6% of
CRL back on 27-Nov-06, before the stock went into a ballistic 
trajectory over the purported cargo-leasing project.</p>
<p>Also on 31-Oct-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071031/LTN20071031334.pdf">
appointed</a> 28 year-old Mr <a href="../dbpub/positions.asp?p=41540">Li Chun 
Tak</a> (<strong>C T Li</strong>) as ED. He went on to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071107/LTN20071107209.pdf">
become CEO</a> a week later, in place of Tony Wong, who became Chairman. Is this 
timing a complete coincidence, or was C T Li in some way representing Mr Liu? C 
T Li was so good that, as you will <a href="#OptionsLi">see later</a>, the board 
granted him a wad of options over 6.9% of the company.</p>
<h3 id="WarrantPlacing">Warrant placing</h3>
<p>On 7-Nov-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071112/LTN20071112408.pdf">
launched</a> a placing of non-listed 18-month warrants to subscribe 636m shares 
(16.5% of enlarged) at $0.20 (51.8% discount to market) for $0.04 per warrant, 
raising $25.4m gross ($24.5m net) via <a href="../dbpub/orgdata.asp?p=49327">Excalibur Securities Ltd</a> 
(which is now controlled by China Fortune). The financial 
adviser was <a href="../dbpub/orgdata.asp?p=32441">Veda Capital Ltd</a> (<strong>Veda 
Capital</strong>). You will notice that the all-in price per share from an 
exercised warrant is $0.24, which was a <strong>42% discount</strong> to the market price, neatly 
getting around the 20% discount limit normally applicable to share placings 
under the Listing Rules. This placing took a long time to complete - due to 
non-fulfillment of conditions, it was extended on
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080117/LTN20080117233.pdf">
17-Jan-08</a>,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080229/LTN20080229204.pdf">
29-Feb-08</a> and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080530/LTN20080530298.pdf">
30-May-08</a>, and finally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080619/LTN20080619175.pdf">
completed</a> on 26-Jun-08. They never said which condition(s) took so long to 
fulfill, but we suspect it was the listing approval for the 
underlying shares.</p>
<p>On 19-Nov-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071119/LTN20071119368.pdf">
appointed</a> <a href="../dbpub/positions.asp?p=15827">Hans Wong Hin Shek</a> (<strong>Hans 
Wong</strong>) as an ED. It didn't mention that he is a 
responsible officer of Veda Capital, which advised CPP on the warrant issue, nor 
did the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071203/LTN20071203009.pdf">
circular</a> dated 3-Dec-07 disclose this when asking for shareholders' approval. 
You might also recall from our story <a href="byfordbubble.asp">
Byford Bubble</a> (Part 1 of this series) that the other responsible officer of 
Veda is <a href="../dbpub/positions.asp?p=32442">Julisa Fong Man</a>, who was 
Chairman of Byford. She was once also a representative of Grand Vinco, until 
20-Apr-05.</p>
<p>On 21-Nov-07 CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071121/LTN20071121285.pdf">
announced</a> a 2:1 consolidation of its shares which took effect on 8-Jan-08. 
So the 636m warrants at $0.20 became 318m warrants at $0.40 with a price of 
$0.08 each. The share price was $0.77 on the day the warrant placing completed, 
holders were looking at a paper gain of $0.29 per underlying share, or 60% on 
purchase cost, plus time value. We wonder who got the warrants.</p>
<h3 id="SaleHaidian">Sale of Haidian</h3>
<p>Do you remember the <a href="#SLS">acquisition of SLS</a> which completed on 27-Jul-06? On 
3-Dec-07, its indirect subsidiary Tianxun conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071204/LTN20071204380.pdf">
agreed</a> to sell its 40% stake in Haidian (the Beijing-based district 
broadband internet operator) to Chengdo Pengboshi Technology 
Joint Stock Co Ltd for RMB18m. Net of tax and costs, CPP as a group expected to book 
proceeds of HK$10.6m and a loss of $5.8m on the sale. However, you will recall 
that CPP owned 89% of Woda Taifeng which owned 70% of Tianxun which held the 
40% stake in Haidian, so there were minority interests. The 2008 annual accounts 
showed that CPP received only <strong>$6.23m</strong> for its stake in Tianxun - 
a far cry from the <strong>$54m</strong> acquisition price. Woda Taifeng (with 
no other assets than the stake in Tianxun) was no longer listed as a subsidiary, 
so they probably sold that at the same time or dissolved it.</p>
<h3 id="Welford">Welford</h3>
<p>On 6-Dec-07, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071206/LTN20071206369.pdf">
signed</a> an MOU and agreed to pay a refundable deposit of HK$35m to Wisdom 
First Ltd (BVI, <strong>Wisdom First</strong>) for the possible acquisition or 
investment in Welford International Industrial Ltd (HK, <strong>Welford</strong>), 
incorporated on 3-Oct-06. The owner of Wisdom First was not disclosed at this 
point. The deposit was paid on 19-Dec-07. The MOU 
had a 180-day exclusivity period.</p>
<p>Earlier, on 20-Nov-07, Welford had agreed with 
<a target="_blank" href="http://zhenrong.net.8hy.cn">Guangdong Zhenrong Energy Co. Ltd</a> (<strong>Guangdong 
ZhenRong</strong>), a state-owned enterprise, and Yan Lung International Ltd 
(PRC, <strong>Yan Lung</strong>), to 
set up a Sino-foreign joint venture &quot;to engage in the crude oil, fuel oil and 
natural gas related business including but not limited to exploitation, 
production, storage, logistic and sales&quot; and &quot;exploration activity, the 
operation of oil refinery plant and storehouse&quot;. Guangdong Zhenrong would 
&quot;procure the granting of the necessary licenses&quot;. Guangdong Zhenrong 
was a subsidiary of <a target="_blank" href="http://www.zhzrgs.com.cn">Zhuhai ZhenRong 
Co Ltd</a> (<strong>Zhuhai ZhenRong</strong>). They were &quot;established upon the 
approval of the State Council in 1994, aiming at carrying out special tasks of 
the nation.&quot; They were &quot;mainly engaged in the business of import of crude oil 
mainly from Middle East&quot;. The owner of Yan Lung was not disclosed.</p>
<p>On 30-Jan-08, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080205/LTN20080205334.pdf">
agreed</a> to buy 75% of Great Hill Trading Ltd (BVI, <strong>Great Hill</strong>), 
which then owned Welford, from Wisdom First for (on the face of it) $45m, to be 
satisfied by the issue of 400m CPP shares (19.94% of enlarged) at $0.072 and $16.2m of 3-year 0% 
bonds convertible into 200m shares at $0.081. However, the market price of the 
CPP shares was $0.61, so the 600m underlying shares were actually worth <strong>$366m</strong> 
at market value. Of the $35m cash deposit, $20m would be refunded on completion, 
and $15m was retained as a deposit for a potential exclusivity agreement (which 
had not yet been agreed) for negotiations to buy the remaining 25% of Great 
Hill.</p>
<p>One of the more hilarious excuses for this 88% issue discount was &quot;the low 
liquidity and trading volume of the Shares, as the Shares were traded in the 
previous year with an average daily trading volume of less than 4.6% of the 
issued share capital&quot;. Yes, they said 4.6% <em>daily. </em>That's incredibly 
high volume, not low. In our view, the statement was misleading. The average 
daily turnover of the entire market in 2007, a hyperactive year, was $88.1bn, 
with an average market cap (taking the mid-point from the year-ends) of 
$17.02trn, so the market average was about 0.5% of issued shares per day. 
Implicitly admitting that the stock was in a bubble, CPP pointed to its net 
asset value of $0.044 per share as justification for the discounted issue price.</p>
<p>The owners of Wisdom First were disclosed as Ms <strong>Wong Sau Lan</strong> and Mr 
<strong>Gao 
Yuanxing</strong>, half each. We know nothing about them. The joint venture company to be 
established now had a name: Guangdong ZhenRong Petroleum Chemical Co Ltd (<strong>Zhenrong 
Petrochemical</strong>), to be owned by Welford, Guangdong ZhenRong and Yan Lung 
in the proportions 46%:51%:3% with registered capital of RMB50m, under the terms 
of a new joint venture agreement, dated 10-Jan-08, presumably replacing the one 
dated 20-Nov-07. So Welford's commitment to the joint venture was RMB23m.</p>
<p>On 12-Feb-08, Zhuhai ZhenRong (via Zhen Rong International Petroleum Co Ltd 
(HK))
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=86938&amp;lang=EN&amp;dia=Y">
became</a> a disclosed shareholder of CPP, raising its stake from 4.40% to 5.57% 
(89.47m shares) with on-market purchases at an average $0.664. It was
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=110972&amp;lang=EN&amp;dia=Y">
diluted</a> back below the disclosure threshold to 4.04% on 2-Mar-09. We note 
that, at the market price of $0.664, the stake was worth about <strong>HK$60m</strong>.</p>
<p>On 13-Mar-08, CPP 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080313/LTN20080313256.pdf">appointed</a> Mr <a href="../dbpub/positions.asp?p=15277">Dai 
Zhongcheng</a> as ED.</p>
<p>The announcement of the deal noted that Great Hill had net liabilities of 
$122k at 25-Jan-08, and its only liability was a loan from Wisdom First of 
$60.212m (a proportionate 75% of which was to be included in the acquisition). 
This implied that Great Hill had assets of $60.090m. But nothing was disclosed 
about what those assets were, until...</p>
<p>...the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080325/LTN20080325298.pdf">
circular</a> dated 26-Mar-08 revealed that at 31-Jan-08, Welford had &quot;other 
receivables&quot; of <strong>HK$60m</strong>. Welford had paid this in 
2007 as a deposit to Guangdong ZhenRong &quot;originally for the acquisition of the 
equity interests in Sichuan ShuaiHua Toll Road Co., Ltd. Such acquisition was 
subsequently terminated and the deposit is to be refunded...by 31 December 
2008&quot;. <strong>So in fact, CPP was taking over a 75% interest in a deposit for an 
aborted toll road investment</strong>, as well as the rights to invest in an oil start-up 
with the same partner. You might wonder why Welford didn't try to offset part of 
the $60m toll road deposit for its RMB23m commitment to Zhenrong Petrochemical, 
if Guangdong ZhenRong still held the cash.</p>
<p>CPP completed the acquisition on 15-May-08. It didn't hold Great Hill for long, as 
you will <a href="#SaleGreatHill">discover later</a> in this article. Meanwhile, the next day, Wisdom First 
began selling its shares in the market. On 17-Nov-08, it converted all of the 
bonds into 200m shares of CPP. It continued selling and cut below the 5% 
disclosure threshold on 24-May-09 at 1.60%.</p>
<h3 id="RichWinner">Rich Winner and Rose Bay</h3>
<p>Don't you just love these BVI shell names? On 31-Mar-08, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080331/LTN20080331551.pdf">
agreed</a> with Rose Bay Group Ltd (BVI, <strong>Rose Bay</strong>) and paid it 
<strong>$60m</strong> as &quot;earnest money&quot; for the right to negotiate until 15-Sep-08 on the 
possible acquisition of Rich Winner Global Ltd (BVI, <strong>Rich Winner</strong>). 
On 17-Mar-08 Rich Winner had entered into a framework agreement with East Bay 
Trading Pte Ltd (Singapore, <strong>East Bay</strong>) for a 6-month exclusivity 
to negotiate an investment in 60% of East Bay and then to &quot;jointly develop the 
business in trading or merchandising of crude oil and petroleum products in the 
Middle East&quot;. The owner(s) of Rose Bay were not disclosed. The owner(s) of East 
Bay were not disclosed and there was no explanation of why it would be a good 
partner.</p>
<p>We pulled the business profile of East Bay from the Singapore
<a target="_blank" href="http://www.acra.gov.sg/">ACRA</a>. It showed the owners 
as Madam Thai Hui Choo (80%), who is also the Managing Director, and Thai Hwee 
Thong (20%), who is the other director. We cannot find any trace of them on the 
web. The company
<a target="_blank" href="http://siva-sg.jobstreet.com/_profile/previewProfile.asp?advertiser_id=35988">
appears</a> in a directory to be involved in textiles and garment trading.</p>
<p>On 26-Aug-08, CPP entered into a supplemental agreement (disclosed only in 
the 2008 annual report) to extend the negotiations until 14-Mar-09. However, 
Rose Bay does <a href="#RoseBayFee">come up again</a> before that - so bear the name in mind. 
It could be a key to this puzzle.</p>
<h3 id="2007results">2007 results: goodwill write-off</h3>
<p>CPP changed its year-end from 30-Sep to 31-Dec, resulting in a 15-month 
period to 31-Dec-07. As we mentioned above, acquisitions during the period 
generated goodwill of $36.3m from Digisat, $9.2m from China Rainbow and Envision 
Link, $12.7m from Global Great, 46.0m from IBBS making a total of $104.3m for 
the period. There was also $38.2m carried forward from the previous year.</p>
<p>In the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080427/LTN20080427138.pdf">
annual report</a>, CPP recorded a total impairment loss of $128m for the period, increasing its 
net loss for the year to $148.6m. This was the third year in a row in which CPP 
had over-paid for acquisitions and impaired goodwill, a total of $204m over 3 
years.</p>
<p>The accounts also contained another item which, if you have been following 
our series of articles, you won't be surprised by: at 31-Dec-07, CPP owned 
HK-listed equities of $27.6m, including 1.53% of
<a href="../dbpub/orgdata.asp?p=17410">PME Group Ltd</a> (0379). That's about 
24.5m shares then worth $1.13 per share at market price, so it was the only 
listed investment and accounted for 12.8% of CPP's shareholders' funds. The cost 
of investment was $29.4m, or about $1.20 per share.</p>
<p>And one other amusing item: the principal activity of Chinaway in the list 
of subsidiaries changed to &quot;trading of construction materials&quot;. They 
had gone from clicks to bricks.</p>
<h3>Placing</h3>
<p>On 24-Apr-08 CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080424/LTN20080424787.pdf">
launched</a> a best-efforts placing of 321m shares (16.67% of enlarged) at $0.56 
(15.2% discount to market), raising $179.8m gross ($177.7m net) via
<a href="../dbpub/orgdata.asp?p=18892">Fortune (HK) Securities Ltd</a> (<strong>Fortune 
Securities</strong>). It was conditional only on listing approval by 30-Sep-08. 
On 26-Sep-08, this condition was still not fulfilled, and the placing agreement 
was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080926/LTN20080926560.pdf">
extended</a> until 31-Dec-08, when it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090102/LTN20090102360.pdf">
lapsed</a>. On 6-Jan-09 CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090106/LTN20090106145.pdf">
clarified</a> that &quot;due to the market condition&quot; it had not applied for listing 
approval.</p>
<h3 id="OptionsLi">Options for Li Chun Tak</h3>
<p>On 9-May-08, the board of CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080521/LTN20080521200.pdf">
granted</a>, subject to shareholders approval, 10-year options to C T Li to 
subscribe 140m shares at $0.82, equivalent to 6.9% of the issued share capital. 
As this was beyond the 1% limit in the Listing Rules, it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080613/LTN20080613318.pdf">
approved</a> by shareholders at the AGM on 22-May-08.</p>
<p>On 10-Jul-08, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080710/LTN20080710137.pdf">
appointed</a> Mr <a href="../dbpub/positions.asp?p=46054">Zhao Peilai</a> as ED. 
He was a former vice president of two Beijing branches of China Construction 
Bank.</p>
<h3 id="SaleBartech">Sale of Bartech</h3>
<p>Remember the $22m <a href="#GoldenPortal">acquisition of Golden Portal</a>, which owned 70% of Bartech 
and completed on 1-Oct-05? On 18-Jul-08, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080722/LTN20080722381.pdf">
agreed</a> to sell its 70% stake in Bartech to Huge Summit Enterprises Ltd (<strong>Huge 
Summit</strong>) for $1.295m. As you recall, Bartech is the operator of
<a href="http://www.stockonline">www.stockonline</a>, a vendor of HKEx real-time 
data. The announcement spoke about Bartech in glowing terms: &quot;most of the 
hardware, such as data processor and servers, are outdated....there is a 
possible risk that the system will collapse at any time&quot;. Incidentally, CPP 
stated that Huge Summit was incorporated in Hong Kong. No such company has ever 
been incorporated here.</p>
<h3>Hero Joy</h3>
<p>On 31-Aug-08, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081006/LTN20081006469.pdf">
agreed</a> to buy Hero Joy International Ltd (BVI, <strong>Hero Joy</strong>) 
from 5 people via 5 BVI companies for up to $6,000m. </p>
<p>The &quot;Basic Consideration&quot; was such number of CPP shares as equated to 29.9% 
of the enlarged issued share capital, keeping the vendors under the takeover 
threshold. The vendors would also get earn-out consideration in the form of CPP 
convertible preferred shares which would bring the total price to 30 times 
either the 2009 or 2010 net profit of the target group, at the election of the 
vendors, subject to a maximum total consideration (at $0.6667 per CPP share, a 
19.7% discount to market) of $6,000m.</p>
<p>Hero Joy owned Public Procurement Ltd (HK), a shelf 
company which was renamed to that on 30-Apr-08. PPHK in turn would own 90% of a 
proposed Sino-foreign equity joint venture called Guocai (Bejing) Technology Co 
Ltd (<strong>Guocai Beijing</strong>), while 10% would be owned by Guocai 
Technology Joint Stock Co Ltd (PRC, <strong>Guocai</strong>), which was &quot;engaged 
in the development of computer technology, networking technology, electronic 
information technology, sale of computer networking equipments and investment 
and investment management.&quot;</p>
<p>Guocai Beijing was intended to &quot;develop a nationwide online public 
procurement platform for suppliers and public procurers in the PRC including 
central and local government and public authorities&quot;. It was intended (but 
see below) to charge 
1% of the invoice amount of each transaction, plus registration and membership 
renewal fees for suppliers, and to earn advertising income and fees for 
logistics and insurance services. The announcement listed out 5 proposed 
shareholders of Guocai (the 10% partner), looking rather desperate to 
demonstrate how well-connected this scheme was, including
<a target="_blank" href="http://www.c-vc.com.cn">China Venture Capital Co Ltd</a> 
and <a target="_blank" href="http://www.cecc.org.cn/">China Electronic Chamber 
of Commerce</a>.</p>
<p>It was left unsaid as to exactly how CPP expects to persuade the central and 
local governments and public authorities to use its procurement platform rather 
than their own or anyone else's. It also was not stated at which point the 
vendors would have to elect to use the 2009 or 2010 results for the earn out. 
Perhaps they have to wait until the results for 2010 are in, and then pick the 
highest number.</p>
<p>Remarkably, although Guocai Beijing did not yet exist, it had already entered 
into two framework agreements with Guocai on 22-Aug-08. Never let the facts get 
in the way of a good story. Under the &quot;Promotion Agreement&quot;, Guocai Beijing 
would be the exclusive agent of Guocai to recruit suppliers to the &quot;China Public 
Procurement Platform&quot; and would pay Guocai RMB8m within 60 days, and would 
receive 40% of the revenue received by Guocai from its business. Under the 
&quot;Service Agreement&quot; Beijing Guocai would provide all the money and know-how to 
set up the platform, and would pay RMB7m to Guocai within 60 days, and would 
receive 60% of the revenue received by Guocai from its business. So add these 
together and it amounts to Guocai Beijing paying Guocai RMB15m and receiving 
100% of the revenue from Guocai's business. However, this revenue &quot;should not be 
significant&quot;.</p>
<p>A condition of the deal was the entering into of a know-how 
agreement between Beijing Guocai and &quot;Tsinghua University (or its related 
entities)&quot; to enable it to provide the requisite services. Apparently the 
software was being designed at Tsinghua University.</p>
<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090115/LTN20090115184.pdf">
circular</a> on this deal was dated 16-Jan-09. A side-by-side reading of the 
announcement and the circular (page 23) brings up some interesting differences on the 
expected revenue stream of Guocai Beijing:</p>
<table class="txtable center">
	<tr>
		<th>Announcement</th>
		<td>Circular</td>
	</tr>
	<tr>
		<td>(a) commission fee received from each transaction conducted through 
		the Platform, which (as currently
		intended) will be charged at 1% of the invoiced amount for each 
		transaction;<br>
		<br>
		(b) registration and membership renewal fee charged to each registered 
		supplier; and<br>
		<br>
		(c) other income including online advertisements and showrooms, 
		arrangement fees for fund raising, logistics
		and insurance services.</td>
		<td>(a) service fee received pursuant to the Promotion Agreement and the 
		Service Agreement; and<br>
		<br>
		(b) registration and membership (renewal) fee charged to each member 
		supplier.</td>
	</tr>
</table>
<p>Oops - what happened to the 1% commissions and the other income?</p>
<h4 id="RoseBayFee">$142.5m payment to Rose Bay</h4>
<p>Speaking of commissions, do you remember Rose Bay, which <a href="#RichWinner">had received</a> $60m in &quot;earnest money&quot; back on 
31-Mar-08, to negotiate the possible purchase of Rich Winner? Well the 
announcement of the Hero Joy acquisition contained a sting in its tail. CPP 
agreed to pay Rose Bay a cash commission, based on 2.5% of the purchase price, 
to Rose Bay (the owner(s) of which were still not disclosed) &quot;for the 
procurement and assistance offered&quot; by Rose Bay in relation to the acquisition 
of Hero Joy. It stated that Rose Bay's assistance included &quot;introducing the 
Vendors to the Company&quot;. No mention was made of the possible Rich Winner deal or 
the $60m still held by Rose Bay. On 20-Mar-09, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090320/LTN20090320240.pdf">
announced</a> that Rose Bay had agreed to discount the commission by 5%, payable 
within 6 months of completion. Wow, we should be so grateful! BUT the commission 
was based on the maximum amount of consideration, i.e. 2.375% of $6,000m, or 
$142.5m, subject to refund if there is any profit shortfall on the earn-out. 
Remember we are dealing with an anonymous BVI company here, and there was 
apparently no security for the refund.</p>
<p>The acquisition
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090415/LTN20090415698.pdf">
completed</a> on 15-Apr-09 when 945,635,485 shares were issued in payment. The 
5 vendors of Hero Joy to CPP were:</p>
<table class="txtable center">
	<tr>
		<th>Name</th>
		<th>BVI co</th>
		<th class="right"><strong>Share %</strong></th>
	</tr>
	<tr>
		<td>Ho Wai Kwong</td>
		<td>Master Top Investments Ltd</td>
		<td class="right">48.53</td>
	</tr>
	<tr>
		<td>Lu Xing</td>
		<td>Mega Step Investments Ltd</td>
		<td class="right">14.71</td>
	</tr>
	<tr>
		<td>Wang Dingbo</td>
		<td>Favor Mind Holdings Ltd</td>
		<td class="right">19.88</td>
	</tr>
	<tr>
		<td>Zheng Zhi</td>
		<td>Magical Power Investments Ltd</td>
		<td class="right">13.94</td>
	</tr>
	<tr>
		<td>Herman Fong Yat Wo</td>
		<td>Huge Ally Group Ltd</td>
		<td class="right">2.94</td>
	</tr>
</table>
<p>Now one of those names is quite distinctive - it matches a
<a href="../dbpub/positions.asp?p=49895">Herman Fong Yat Wo</a> who is, since 
14-May-09, an SFC-licensed representative of
<a href="../dbpub/orgdata.asp?p=49896">Pacific Alliance Investment Management 
(HK) Ltd</a> and was, at the time of this deal, a Responsible Officer of
<a href="../dbpub/officers.asp?p=49897">D.B. Zwirn Asia Partners Ltd</a>, the 
local arm of New York-based distressed debt fund manager
<a target="_blank" href="http://www.dbzco.com/">D.B. Zwirn &amp; Co LP</a> founded 
by Daniel Zwirn which closed up shop in 2008.</p>
<p>We can also tell you something about two other names: Mr <strong>Ho Wai Kwong</strong> 
and Mr <strong>Lu Xing</strong>, who together have 63.24% of this deal, were the 
only vendors in a proposed massive $2,928m acquisition
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080514/LTN20080514112.pdf">
agreed</a> on 27-Apr-08 by <a href="../dbpub/orgdata.asp?p=23491">ZZNode 
Technologies Co Ltd</a> (2371, <strong>ZZNode</strong>), another company in the 
network in which PME is the largest shareholder. That deal has been
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090521/LTN20090521404.pdf">
restructured</a> and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090611/LTN20090611459.pdf">
delayed numerous times</a> and has not yet completed. We'll write more about 
ZZNode in a future instalment. So Ho Wai Kwong and Lu Xing have sold not 
one but two fantastic deals! We can't wait to what deal they 
come up with next time. Lu Xing has already been involved in an acquisition by 
HXC, by the way - but we'll save that for another time.</p>
<p>A person called <a href="../dbpub/positions.asp?p=37339">Lu Xing</a> was the 
Finance Director of <a href="../dbpub/orgdata.asp?p=3771">VODone Ltd</a> (<strong>VODone</strong>, 
0082) from 1-Dec-06 to 31-Jan-08. It probably isn't a coincidence, because on 
26-Jun-09, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090626/LTN20090626469.pdf">
appointed</a> <a href="../dbpub/positions.asp?p=11866">Fred Wu Fong</a> as INED. 
He was an ED of VODone from 29-Nov-00 to 31-Jan-08. He is also the CFO of HXC - 
yet another connection with HXC! According to the VODone 2006 annual report, Lu 
Xing &quot;worked for China Construction Bank in Beijing for 19 years, progressing to 
the rank of Branch Vice-President&quot;. That's an interesting coincidence - 
CPP's ED Mr Zhao Peilai was also a Beijing branch Vice-President of China 
Construction Bank.</p>
<p>Both Ho Wai Kwong and Lu Xing became employees of CPP, as stated in this
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090529/LTN20090529015.pdf">
circular</a> dated 29-May-09 pursuant to which they were granted share options.</p>
<p>Apart from that, we know nothing about the vendors.</p>
<h3 id="CRL1">CRL buys the other 25% of Great Hill</h3>
<p>On 23-Jan-09, CRL
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090130/GLN20090130003.pdf">
agreed</a> to buy 25% of Great Hill from Wisdom First (presumably still owned by 
the same people) for $13.6m, of which $3m was in cash and $10.6m as 26.5m shares 
(4.7% of enlarged) at $0.40, an 18.4% discount to market.</p>
<p>Interestingly, the business scope of Zhenrong Petrochemical had changed since 
CPP bought in. It 
was now engaged in the &quot;import and merchandising of minerals (excluding iron, 
aluminium oxide and coal), the import and export of electronic and electrical 
equipment and devices, as well as the domestic purchase and merchandising of 
petroleum products in the PRC (excluding refined oil).&quot;</p>
<p>Now as you might recall, before CPP <a href="#Welford">agreed to buy</a> 75% of Great Hill, it had 
already paid a $35m deposit, but in the end paid for it entirely in shares, and 
received $20m back on completion, with $15m being kept by Wisdom First, as the 
deposit pursuant to an &quot;Exclusivity Agreement&quot;, the terms of which had not yet 
been agreed. &quot;Further announcement in relation to the Exclusivity Agreement will 
be made as and when appropriate&quot;, CPP said in the circular dated 26-Mar-08. 
Well, as far as we can tell, it never was. At 31-Dec-08, CPP had &quot;prepayments 
and deposits&quot; of $15.540m, and we suspect that includes the $15m held by Wisdom 
First.</p>
<p>But if that is the case, then was the Exclusivity Agreement ever signed? And 
if it was, then in what sense was this arrangement &quot;exclusive&quot; given that CRL 
has now bought the 25% stake? Does that mean CPP gets its $15m back now? CPP 
should inform shareholders.</p>
<h3 id="SaleGreatHill">Sale of Great Hill (Welford) stake to CRL, with put option</h3>
<p>On 22-Apr-09, just before its 2008 results were due out, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090422/LTN20090422824.pdf">
agreed</a> to sell its 75% stake in Great Hill to CRL for $34m in cash. The 
announcement disclosed that Great Hill's subsidiary Welford was still owed the 
$60m deposit held by Guangdong ZhenRong which was due on 31-Dec-08. If the 
deposit was not refunded to at least the extent of $34m within 90 days (i.e. by 
21-Jul-09) then CRL has the right to sell the stake in Great Hill back to CPP at 
the price it paid. This deal was the subject of a matching
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090422/GLN20090422034.pdf">
announcement</a> by CRL and was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090508/LTN20090508424.pdf">
completed</a> on 8-May-09.</p>
<h3 id="2008results">2008 results</h3>
<p>In the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090503/LTN20090503007.pdf">
2008 annual report</a>, on the acquisition of 75% of Great Hill (note 30(b)(i)), 
CPP booked net liabilities of $172k and hence goodwill of $351m. All of this was 
written off in the results, 
together with $14.5m carried forward from the previous year, making a total 
impairment of $366m and taking the total to $570m of goodwill impairments in 4 
years. As a result CPP booked its 6th successive annual loss, of 
$507m.</p>
<p>CPP also made a provision for impairment of $60.9m of trade and other receivables, 
presumably including the $60m due to Welford from Guangdong ZhenRong.&nbsp; </p>
<p>Note 37(f) revealed that on 26-Aug-08, CPP had extended the negotiation with 
Rose Bay regarding Rich Winner to &quot;on or before 14-Mar-08&quot;. They should have 
announced that at the time. On 30-Apr-09 CPP and Rose Bay agreed to terminate 
the discussions.</p>
<p>Note 32(b) of the 2008 accounts states that on 29-Apr-09, Rose Bay agreed 
that the commission of $142.5m payable on the Hero Joy acquisition could be set 
off against the $60m of earnest money which CPP had paid on the Rich Winner 
proposal, and the remaining $82.5m could be extended to 31-May-2010 without 
interest. How generous of them. Now CPP is only $60m out of pocket.</p>
<h4 id="2008investments">Investments</h4>
<p>The accounts also showed that CPP had purchased another $20.7m of shares and 
unlisted convertible bonds and had incurred mark-to-market losses (directly to 
reserves) of $32.5m. This time the investees were not disclosed, but you recall 
that a year earlier it was shares in PME. Although it had not sold any of the 
equities since then, note 36(e) claims that &quot;The Group's listed investments 
are...included in the Hang Seng Index.&quot; Can that really be true? PME is not in 
the HSI, and in our view, never will be.</p>
<h4 id="BoardMeetings">Weekly board meetings?</h4>
<p>The Corporate Governance report claims that the company held an incredible 51 
board meetings in 2008 and that the INEDs attended 49 or 50 of them. We wouldn't 
mind betting that some of those were just circulated resolutions rather than 
actual board meetings.</p>
<h4 id="Coal">Questionable turnover</h4>
<p>On the face of it, CPP booked a big increase in turnover in 2008, to $209m, 
but $170.234m of that was in &quot;coal trading&quot; and note 33(b) shows that 
every single lump of coal was sold to Guangdong Zhenrong (the PRC partner in the JV with Great 
Hill/Welford) and CPP collected a margin of about HK$1.50 per tonne, and the 
&quot;gross profit margin note for such sales was approximately 1.95%&quot;. 
We're not sure what they mean by &quot;note&quot;, but the cost of coal sold was 
$166.913m, giving a gross profit of $3.321m, less expenses, and then there was a $60m 
provision on Welford's deposit with Guangdong Zhenrong, so the net segment loss 
on coal trading was $57.5m.</p>
<p>There was zero inventory in the balance sheet at 31-Dec-08 and at 30-Jun-08. 
Similarly, there were only $4.974m of trade receivables due from Guangdong 
Zhenrong, and $0.3m of trade payables to others. This hardly seems likely for a 
business with such high turnover, unless in reality they were only charging 
commissions as agents of Guangdong Zhenrong, in which case they should not be 
booking the value of coal through turnover, only the commissions. Then the zero 
inventory and small receivables would make sense.</p>
<p>Incidentally, none of this coal trading was done via Welford - it was all 
done at the parent-company CPP level. Great Hill and Welford, its subsidiary, 
contributed zero revenue and a net loss of $190k from acquisition to year-end.</p>
<h3 id="DigiSatSold">Digisat sold for $10k</h3>
<p>On 8-Jun-09, CPP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090608/LTN20090608396.pdf">
sold</a> Joy Century Holdings Ltd (BVI), the holding vehicle of its 80% stake in 
Digisat, to Winner Best International Invest Ltd (BVI) for $10,000. The owner of 
the purchaser was not disclosed. The 80% stake in Digisat contributed losses to 
CPP of $955k in 2008 and $6.06m in the 15 months to 31-Dec-07. As you 
<a href="#Digisat">may 
recall</a>, CPP paid $37.6m for this wondrous acquisition in 2007.</p>
<h3 id="Questions">Questions</h3>
<p>In the 6-year recent history we have found a vast number of questionable items, and shareholders deserve 
answers. In rough chronological order, with links back to the various sections 
of this epic, they are:</p>
<ol>
	<li>CPP never disclosed whether <a href="#Chinaway">Chinaway</a> met its profit target (although the 
	CPP IT segment results suggest that it did not), and if it missed the 
	target, whether the vendor Mr/Ms Lau Yim paid 3.5x the shortfall as promised 
	- there's no sign of it in the accounts. Who was Lau Yim anyway?</li>
	<li>After the <a href="#RightsIssue">rights issue</a>, why didn't the owners of Win Power, Grandtech 
	and Chorale each file disclosures of their interests holding more than 5% 
	each?</li>
	<li>Who was the owner of Silky, which sold <a href="#ExcelStar">Excel Star</a> to CPP for $13m cash?</li>
	<li>Why did Mr Lee <a href="#RainbowLee">divide his shareholding</a> into a second BVI company, 
	Rainbow Bridge, in 
	Oct-2004?</li>
	<li>Who owned the two Samoan companies which owned Fortis Development, which 
	sold <a href="#PopularAsset">Popular Asset</a> to CPP for $15m cash?</li>
	<li>Who owned Jade Paradise, which bought the original <a href="#SaleShoe">shoe business</a> of CPP 
	in Mar-2005?</li>
	<li>Who owned Jet Palace, which sold <a href="#GoldenPortal">Golden Portal</a> to CPP for $16m in cash 
	and shares, only a month after Jet Palace had acquired it, and how much did 
	Jet Palace pay for it? Why didn't the owners disclose any interest in the 
	shares held by Jet Palace?</li>
	<li>Why didn't Goldlite, Wyndham Profit, Hikari and their two owners Simon 
	Lum and Stephanie Wong file disclosures of interests in shares when they 
	<a href="#SLS">sold SLS to CPP</a> for $54m, including $12m in cash and 300m shares (20.7%) of 
	CPP? Were they beneficial owners or not?</li>
	<li>Why was CPP so keen on placing <a href="#WarrantsPun">warrants with Mr Pun</a> (via Wellington), 
	over 13% of the enlarged capital, and <a href="#WarrantsLuk">again</a> for another 6% of the enlarged 
	capital? Why didn't Mr Pun make any disclosures of his interests in shares 
	via Wellington? Was he the beneficial owner or not?</li>
	<li>Who is Luk Kam, and why was CPP so keen on <a href="#LukShares">placing shares</a> and 
	<a href="#WarrantsLuk">warrants</a> 
	with him/her, via Rainbow Bridge?</li>
	<li>Who owned <a href="#LuckyRider">Lucky Rider</a>, to which CPP placed just under 5% of 
	its shares in March 
	2007?</li>
	<li>Was <a href="#IBBS">IBBS</a> a real business, and was it really worth 
	the agreed price of $32.8m, given that its web site looks like it froze in a 
	primeval state in 2004? Was Mr Pun involved in introducing T Y Ngai to CPP?</li>
	<li>Why did the vendors of SLS sell their CPP shares <a href="#TonyWong">to Tony Wong</a>, and at 
	such a big discount to market?</li>
	<li>Was it just a coincidence that 28 year-old C T Li became ED on the day 
	Mr Liu <a href="#Liu">bought</a> 14.1% of CPP, and CEO a week later?</li>
	<li>Why did the <a href="#WarrantPlacing">warrant placing</a> take so long, 
	and why didn't the circular mention that Hans Wong, the new ED, was also the 
	Responsible Officer of Veda Capital, which was advising on the warrant 
	placing? Who got the non-listed warrants anyway?</li>
	<li>In the acquisition of 75% of Great Hill which owned <a href="#Welford">
	Welford</a>, who were the vendors, Wong Sau Lan and Gao Yuanxing? We could 
	not find any trace of them. Where did Guangdong ZhenRong get the $60m to 
	purchase 5.57% of CPP in the market, and is it a coincidence that this is 
	the same amount deposited with it by Welford for a purported aborted toll 
	road investment? Did Welford, and hence CPP, ever have a hope of getting 
	that $60m back?</li>
	<li>Who owns <a href="#RichWinner">Rose Bay</a>, to which CPP gave $60m of 
	&quot;earnest money&quot; for the right to negotiate a possible purchase of Rich 
	Winner, which never happened, and which is now keeping that as part of its 
	$142.5m &quot;<a href="#RoseBayFee">commission</a>&quot; on the Hero Joy public 
	procurement deal? Why was East Bay, apparently a Singapore textile/garment 
	trader, a viable partner for Middle East oil trading? Why didn't CPP 
	disclose that negotiations with Rose Bay had been extended in Aug-2008?</li>
	<li>Why did CPP <a href="#2007results">buy shares in PME</a> in 2007?</li>
	<li>Did CPP and Wisdom First ever sign an exclusivity agreement for the 
	remaining 25% of Great Hill which they used to justify Wisdom First 
	retaining $15m of deposit? (i) if so, then why wasn't the agreement 
	announced? (ii) if not, then has the $15m deposit been refunded and if so 
	then when, if not why not, given that CRL has now <a href="#CRL1">bought</a> 
	the 25% stake?</li>
	<li>Is it really true that CPP only held stocks in the Hang Seng Index at 
	the <a href="#2008investments">end of 2008</a>?</li>
	<li>Was the turnover in 2008 for &quot;<a href="#Coal">coal trading</a>&quot; properly 
	accounted for, and if so then why is there no inventory and why are 
	receivables and payables so low? Or was CPP just receiving agency 
	commissions, given that all of the &quot;coal sales&quot; were to Guangdong ZhenRong?</li>
	<li>Did they really have 51 <a href="#BoardMeetings">board meetings</a> in 
	2008, or were some of these &quot;paper&quot; board meetings? Did the INEDs really 
	attend 49 or 50 of them? And if so, were they actually awake in these 
	meetings?</li>
</ol>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22452">Ascenda Cachet CPA Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16425">B.I. APPRAISALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18859">CASTORES MAGI ASIA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16766">Cherish Sunshine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17410">China Ever Grand Financial Leasing Group Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10787">Chinese Strategic Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23491">Chuanglian Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49897">D. B. ZWIRN ASIA PARTNERS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18892">FORTUNE (HK) SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13901">GoFintech Quantum Innovation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16536">GRANT SHERMAN APPRAISAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49327">SINO CAPITAL SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32441">VEDA CAPITAL LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20650">Zijing Capital Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=31597">Au, Edmund Tin Fung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=24799">Chan, Chun Wai (1969)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46496">Chan, Joe Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16772">Chan, Kin Kee (1969)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=35898">Chan, Wai Ming (1959)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49877">Chiu, Nelson Yu Choi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49895">Fong, Herman Yat Wo</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13800">Ho, Wai Kong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10844">Hung, Wilfred Fan Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12511">Kan, Philip Siu Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49868">Lam, Kitty Kit Ping</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20434">Lam, Shu Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16768">Lee, Man Fa</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41540">Li, Adam Chun Tak</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49968">Liu, Yi Dong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=37339">Lu, Xing (1967)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49609">Lui, Albert Chun Shuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49969">Sham, William Chi Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49860">So, Connie Choi Ying</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=31603">Too, Shu Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46497">Tsoi, Yung Yung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=35899">Tsui, Deso Pak Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15827">Wong, Hans Hin Shek</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40553">Wong, Tony Kam Fat</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11866">Wu, Fred Fong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16770">Yu, Katherine Kin Ling</a></li>
				
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