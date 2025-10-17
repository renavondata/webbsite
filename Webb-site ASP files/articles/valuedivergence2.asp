
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

<script type="text/javascript">document.title="Value Divergence, part 2";</script>

	<div class="summary">What's going on at Value Convergence (0821)? We list the placees in the 
convertible bond issue, which has been delayed, and analyse their connections to a network of other companies we have written about before. Is VC joining 
that network? We also look at the massive dilution that awaits shareholders of 
China Fortune (0290).</div>

<h2 class="center">Value Divergence, part 2<br>
<span class="headlinedate">10 December 2009</span></h2>
<p>The plot thickens at <a href="../dbpub/orgdata.asp?p=13553">Value 
Convergence Holdings Ltd</a> (<strong>VC</strong>, 0821). Readers will recall 
our <a href="valuedivergence.asp">article</a> of 21-Sep-09, in which 
we queried whether any of the subscribers to the highly dilutive HK$300m/$600m
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090908/LTN20090908667.pdf">
convertible bond issue</a> (with a conversion price of $1.00 per share) were 
also involved in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090920/LTN20090920021.pdf">
disposal</a> of the 43.24% controlling stake (160.9m shares) in VC by <a href="../dbpub/orgdata.asp?p=1019">Melco International 
Development Ltd</a> (<strong>Melco</strong>, 0200) at $1.92 per share on 
18-Sep-09.</p>
<p>When the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091014/LTN20091014317.pdf">
circular</a> to shareholders dated 15-Oct-09 came out, it was disclosed that one 
of the bond subscribers, for $50m, <a href="../dbpub/orgdata.asp?p=55418">Right Source Investment Ltd</a> (<strong>Right 
Source</strong>), owned 3.3m shares which it had bought in the Melco disposal. 
The circular also stated that another 
subscriber, for $10m, Highgrade Holding Ltd (<strong>Highgrade</strong>) was owned by 
<a href="../dbpub/positions.asp?p=36708">Raymond Ting Pang Wan</a> (<strong>Mr 
Ting</strong>), who also owned 22m shares, but he had not acquired the shares in 
the disposal. However, we note that he did
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33764&amp;lang=EN&amp;dia=Y">
acquire 20m shares</a> at $1.92 on the same day (Tue-22-Sep-09) and at the same price as the 
disposal, and he did not own any other shares on 18-Sep-09 when Highgrade 
subscribed for the bonds, so the other 2m must have been bought on 21-Sep-09. These two shareholders were excluded from voting at the EGM, which on 
2-Nov-09
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091102/LTN200911021103.pdf">
approved</a> the issue of the convertible bonds without objection.</p>
<p>The circular doesn't say who owns Right Source, but a
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33888&amp;lang=EN&amp;dia=Y">
disclosure filing</a> shows that it is ultimately owned by an individual named 
&quot;Long Ding Yun&quot;. The circular says (p23) that, apart from Right Source and Highgrade, there were 4 other subscribers which did not own any shares. Our 
analysis of disclosures suggests that this is incorrect and there were at least 
7 subscribers in total, as we show below.</p>
<p>As 
we mentioned in the previous article, one of the subscribers was
<a href="../dbpub/articles.asp?p=13901">China Fortune Group Ltd</a> (<strong>China 
Fortune</strong>, 0290) for $100m of the First Convertible Bonds. Since then, various disclosures of derivative interests in VC shares underlying 
the bonds, show that the bonds were subscribed as follows:</p>
<table class="optable center fcl c2l">
	<tr>
		<th>&nbsp;</th>
		<th>Subscriber</th>
		<th>First<br>Convertible<br>Bonds $m</th>
	</tr>
	<tr>
		<td>1</td>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=122486&amp;lang=EN&amp;dia=Y">China Fortune</a></td>
		<td>100</td>
	</tr>
	<tr>
		<td>2</td>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33631&amp;lang=EN&amp;dia=Y">Suen Siu Kwan</a></td>
		<td>70</td>
	</tr>
	<tr>
		<td>3</td>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33888&amp;lang=EN&amp;dia=Y">Long Ding Yun</a> (via Right Source)</td>
		<td>50</td>
	</tr>
	<tr>
		<td>4</td>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33958&amp;lang=EN&amp;dia=Y">Ni Rong Kun</a> 
		(via Perfect Max Holdings Ltd)</td>
		<td>25</td>
	</tr>
	<tr>
		<td>5</td>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33870&amp;lang=EN&amp;dia=Y">Terrence Chan Ming Leung</a></td>
		<td>20</td>
	</tr>
	<tr>
		<td>6</td>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33762&amp;lang=EN&amp;dia=Y">Mr Ting</a> (via Highgrade)</td>
		<td>10</td>
	</tr>
	<tr>
		<td>7+</td>
		<td>Remainder</td>
		<td>25</td>
	</tr>
	<tr class="total">
		<td>&nbsp;</td>
		<td>Total</td>
		<td>300</td>
	</tr>
</table>
<p>Note that the eventual amount of bonds per subscriber may double if the 
subscriber exercises his option to subscribe new bonds after converting the 
first bonds within the first year.</p>
<h3>About the subscribers</h3>
<p>We know nothing about Suen Siu Kwan or Terrence Chan Ming Leung - if you do, 
please <strong><a href="../contact/">tell us</a></strong> in confidence. But 
what we <u>can</u> tell you is that several of the 
subscribers have past dealings with one or more members of a network of 
companies, several of which featured in a series of 3 articles on Webb-site.com 
in June and July. The network includes (in order of stock code):</p>
<ul>
	<li><a href="../dbpub/articles.asp?p=1677">The Hong Kong Building and 
	Loan Agency Ltd</a> (<strong>HKBLA</strong>, 0145)</li>
	<li><a href="../dbpub/articles.asp?p=13901">China 
Fortune Group Ltd</a> (<strong>China Fortune</strong>, 0290)</li>
	<li><a href="../dbpub/articles.asp?p=4873">Asia Energy Logistics 
	Group Ltd</a> (<strong>AEL</strong>, 0351)</li>
	<li><a href="../dbpub/articles.asp?p=17410">PME Group Ltd</a> (<strong>PME</strong>, 
	0379)</li>
	<li><a href="../dbpub/articles.asp?p=16766">China Public Procurement Ltd</a> 
	(<strong>CPP</strong>, 1094)</li>
	<li><a href="../dbpub/articles.asp?p=23491">ZZNode Technologies Co Ltd</a> 
	(2371)</li>
	<li><a href="../dbpub/articles.asp?p=18154">Heng Xin China Holdings Ltd</a> 
	(<strong>HXC</strong>, 8046)</li>
	<li><a href="../dbpub/articles.asp?p=10787">China Railway Logistics Ltd</a> 
	(<strong>CRL</strong>, 8089)</li>
	<li><a href="../dbpub/articles.asp?p=13754">China Bio-Med 
	Regeneration Technology Ltd</a> (8158)</li>
	<li><a href="../dbpub/articles.asp?p=18177">Byford International 
	Ltd</a> (8272) </li>
</ul>
<h4>Long Ding Yun, Right Source and China Fortune</h4>
<p>Long Ding Yun was also once a subscriber of convertible 
bonds issued by China Fortune, which had a conversion price of $0.10 per share. 
He/she
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=29386&amp;lang=EN&amp;dia=Y">
subscribed</a> $12.5m of a $50m issue which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090219/LTN20090219318.pdf">
completed</a> on 19-Feb-09, the same issue in which
PME
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090225/LTN20090225002.pdf">
subscribed</a> $11.5m. PME also bought 53.738m shares in the market between 
$0.232 and $0.245 from 23-Feb-09 to 26-Mar-09.</p>
<p>On 6-May-09, China Fortune
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090506/LTN200905061035.pdf">
agreed</a> to issue $32m of convertible bonds to PME, convertible at $0.16 per 
share, then a 44.8% discount to market. This was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090601/LTN20090601014.pdf">
approved</a> in an EGM of China Fortune on 29-May-09.</p>
<p>On 27-May-09, China Fortune agreed to issue $128m of convertible bonds to 
Jadehero Ltd (BVI, <strong>Jadehero</strong>), which is 60% owned by
<a href="../dbpub/positions.asp?p=40553">Tony Wong Kam Fat</a> (<strong>Tony 
Wong</strong>) and 40% owned by either Ms Ha Ying Yim (if you believe note 2 on 
page 21 of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090527/LTN20090527579.pdf">
announcement</a>) or by Mr Xia Ying Yan (if you believe note 2 on page 16 of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090611/LTN20090611205.pdf">
circular</a>). Either way, we know nothing about her/him. The bonds are 
convertible at $0.16 per share, a 64.8% discount to market. Not only that, but 
Jadehero has an option to require China Fortune to issue another $128m of bonds 
on the same terms during the 12 months after the first issue, which completed on 
6-Sep-09.</p>
<p>On 4-Jun-09, Long Ding Yun
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=30883&amp;lang=EN&amp;dia=Y">
disposed</a> of his China Fortune CB for $20m, or $0.16 
per underlying share, a 66.7% discount to market. What a generous person he or 
she is. A filing
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=115810&amp;lang=EN&amp;dia=Y">
shows</a> that the bond was acquired by PME, which did not announce that deal.</p>
<p>Right Source was once owned by HXC, which used it on 29-Sep-08 to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081009/GLN20081009029.pdf">
subscribe</a> for $10m of convertible bonds of AEL (then China Sciences 
Conservational Power Ltd). On 21-Nov-08, HXC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081218/GLN20081218035.pdf">
agreed</a> to sell the bonds for 
$12.6m via Fortune Securities, which placed them in equal amounts with two 
&quot;independent third parties&quot;, Gold Max Asia Limited and First Champion Worldwide 
Limited, without naming their owners. In fact, Gold Max was owned by PME and, as 
at 31-Dec-08, First Champion Worldwide was owned by CRL. According to note 38(a) 
of its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090921/GLN20090921009.pdf">
annual accounts</a> for the year to 30-Jun-09, HXC sold Right Source during the 
year for $14.163m, presumably to Long Ding Yun, or an intermediate owner. </p>
<p>On 14-Aug-09, PME converted $21m of its bonds into 210m shares, increasing 
its holding to 27.02% of China Fortune. It still had bonds convertible into 230m 
shares.</p>
<p>On 11-Sep-09, Tony Wong was appointed Chairman of China Fortune. He was 
Chairman of CPP until 4-Sep-09. We <a href="cpp.asp">
warned readers</a> about that company on 3-Jul-09.</p>
<p>On 12-Nov-09, Jadehero converted $67.04m of bonds into 419m shares of China 
Fortune at $0.16, giving Tony Wong (via Jadehero) 29.95% of the company and 
diluting PME to 18.85%. Jadehero still has bonds convertible into another 381m 
shares, and an option to subscribe $128m convertible at $0.16 into another 800m 
shares. PME still has bonds convertible into 230m shares, of which 200m are at 
$0.16 and 30m at $0.10.</p>
<p>Altogether,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091201/LTN20091201877.pdf">
at the end of Nov-09</a>, there were 1,854.25m potential shares to be issued 
under convertible bonds and warrants of China Fortune (including the $128m of 
optional bonds), none of them above $0.16 per share. <strong>That would expand the 
issued share capital by 132.6%. It is mind-boggling that this stock still trades 
at $0.39 (9-Dec-09), despite the clear signal from the bond issue prices at $0.16.
</strong> </p>
<h4>Ni Rong Kun</h4>
<p>Ni Rong Kun also
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=35169&amp;lang=EN&amp;dia=Y">
owns</a> 9.71% of HKBLA, since increasing from 4.8% 
in an off-market transaction on 1-Dec-09. Apart from that, we know nothing about 
him/her. See our <a target="_blank" href="HKBLA.asp">separate 
story</a> on HKBLA today for a warning of possible value destruction in progress.</p>
<h4>Mr Ting</h4>
<p>Mr Ting is the Chairman of <a href="../dbpub/articles.asp?p=4810">China 
Motion Telecom International Ltd</a> (<strong>CMT</strong>, 0989) since 
14-Nov-06, and executive director since 23-Oct-06. For more on CMT's recent 
history, see our <a target="_blank" href="chinamotion.asp">separate story</a> 
today. The controlling shareholding in CMT is equally owned by Mr Ting and
<a href="../dbpub/natarts.asp?p=52015">Yam Tak Cheung</a> 
(<strong>Mr Yam</strong>). If that name seems familiar, Mr Yam was one of the 
subscribers of the convertible notes in our
<a href="chinastrategic.asp">China Strategic Bubble</a> story last 
month.</p>
<h3>New NED</h3>
<p>On 20-Nov-09, <a href="../dbpub/positions.asp?p=41683">Betty So Wai Yee</a> 
was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091120/LTN20091120263.pdf">
appointed</a> as NED of VC. She was an INED of CPP from 19-Nov-07 to 28-Sep-09.</p>
<h3>The Melco disposal</h3>
<p>Mr Yam was also one of the placees in the Melco disposal of VC,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33698&amp;lang=EN&amp;dia=Y">for 23m shares</a> (6.19%). He sold 9m shares in the market on 24-Sep-09, cutting his stake 
below the 5% disclosure threshold. Another buyer in Melco's sale was Viola Mak 
Siu Hang,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33731&amp;lang=EN&amp;dia=Y">
for 20m shares</a> (5.39%). Like Mr Yam, she was also one of the bond placees in 
the China Strategic fund-raising.</p>
<p>Interestingly, on 24-Sep-09, ASM Asia Recovery (Master) Fund, and its manager 
<a href="../dbpub/officers.asp?p=22984">Argyle Street Management Ltd</a>,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=122637&amp;lang=EN&amp;dia=Y">sold</a> 
their entire 27m shares (7.27%) holding in an off-market transaction at $1.92, the 
same price that Melco got. We wonder who bought it. ASM had
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=69829&amp;lang=EN&amp;dia=Y">
bought</a> 22m shares in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070710/LTN20070710413.pdf">
placing</a> at $2.20 on 10-Jul-07 and
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=74711&amp;lang=EN&amp;dia=Y">
the other 5m</a> shares in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070906/GLN20070906071.pdf">
placing</a> at $4.20 on 6-Sep-07.</p>
<h3>CB issue delayed - but why?</h3>
<p>The shareholders' approval of the VC bond issue was the last condition precedent, and completion 
should have occurred on the next business day (3-Nov-09). However, on 3-Nov-09 
VC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091103/LTN200911031014.pdf">
announced</a> that it had &quot;been approached by certain Subscribers which have 
requested that the Completion Date be extended to facilitate their arrangements 
for completion&quot;. Presumably, in other words, to come up with the cash. On 
30-Nov-09, VC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091130/LTN20091130613.pdf">
announced</a> that on that day, 1 of the subscribers, unnamed, had completed a 
subscription for $10m, but the remaining $290m was still not completed. </p>
<p>This was rather strange, given that all the conditions had been satisfied and 
that the shares closed at $1.97 yesterday (9-Dec-09), so the bond conversion price of $1 was 
deeply in-the-money. On the face of it, if they believe the share price is 
sustainable, then the bonds were highly attractive.</p>
<p>Last Friday (4-Dec-09), China Fortune put out an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091204/LTN200912041090.pdf">
announcement</a>, claiming that &quot;As additional time is required for the 
fulfilment of the conditions precedent&quot;, it had entered into a supplemental 
agreement with VC to extend the completion date to 31-Dec-09. This contradicts 
the 3-Nov-09 statement by VC which implied that the conditions had been 
satisfied and it was only the subscribers who were asking for more time. One of them is not telling the truth.</p>
<p><strong>The Stock Exchange should require China Fortune to state which 
of the conditions precedent has not been fulfilled, why it has not been 
fulfilled, and why they require more time</strong>.</p>
<p>On 8-Dec-09 VC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091208/LTN20091208374.pdf">announced</a> that it had agreed with the other bond 
subscribers to extend the completion dates to 31-Dec-09.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22984">ARGYLE STREET MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4873">ASIA ENERGY LOGISTICS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1677">CCIAM Future Energy Limited (b1964-11-28)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16766">Cherish Sunshine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17410">China Ever Grand Financial Leasing Group Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13754">China Regenerative Medicine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18177">Chinese Food and Beverage Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10787">Chinese Strategic Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23491">Chuanglian Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13901">GoFintech Quantum Innovation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18154">Heng Xin China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1019">MELCO INTERNATIONAL DEVELOPMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55418">RIGHT SOURCE INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13553">VALUE CONVERGENCE HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=66787">Mak, Viola Siu Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41683">So, Betty Wai Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=36708">Ting, Raymond Pang Wan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40553">Wong, Tony Kam Fat</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=52015">Yam, Tak Cheung</a></li>
				
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