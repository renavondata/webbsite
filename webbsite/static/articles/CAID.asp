
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

<script type="text/javascript">document.title="CAID (0048) gains from umbrella bubble";</script>

	<div class="summary">Following a Webb-site complaint to regulators, CAID has revealed 3 holdings, including umbrella maker China Jicheng (1027), still trading at over 70x NAV. CAID expects the investments to contribute a positive return in the near future, but doesn't say why. Meanwhile Lerado (1225) hasn't said how it made similar gains. Is it also in the umbrella bubble?</div>

<h2 class="center">CAID (0048) gains from umbrella bubble<br>
<span class="headlinedate">10 October 2015</span></h2>
<p class="revisedate">(<a href="#update1">update</a> 27-Oct-2015)</p>
<p>In our article <a href="trouble2015.asp#CAIDconvoy">Bubbles and 
Troubles in Hong Kong</a> (24-Sep-2015) we noted that there were huge unrealised 
investment gains in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0831/LTN201508311368.pdf" target="_blank">
interim results</a> of <a href="../dbpub/articles.asp?p=60877">China Automotive 
Interior Decoration Holdings Ltd</a> (<strong>CAID</strong>, 0048) for the 6 
months to 30-Jun-2015 and that it had failed to disclose what these 
investments were, claiming:</p>
<blockquote>&nbsp;&quot;At 30 June 2015, there was no significant 
investment held by the Group&quot;</blockquote>
<p>Webb-site filed complaints with SEHK (under the Listing Rules) and 
the SFC (under the Securities and Futures Ordinance, that this was a false and 
misleading statement). Last night, CAID made an
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/1009/LTN20151009842.pdf" target="_blank">
announcement</a>, noting that &quot;errors have been found&quot; in this binary statement. 
So it was false. CAID now discloses 3 investments. The largest by far is about 227.3m shares (1.52%) of umbrella-maker
<a href="../dbpub/articles.asp?p=2350356">China Jicheng Holdings Ltd</a> (<strong>CJ</strong>, 
1027). As we <a href="trouble2015.asp#CJ">noted</a> in the article, 
this stock is in a huge bubble. CAID says these shares were purchased for about 
RMB 7.9m (HK$9.9m) which implies that they were allocated in the IPO at HK$0.044 
(split-adjusted).</p>
<p>At 30-Jun-2015, CAID's shares in CJ were valued at RMB 371.2m, or 48.7% of 
CAID's net tangible assets of RMB 761.9m. The other 2 holdings disclosed 
yesterday were 
0.7% of <a href="../dbpub/articles.asp?p=4858">Suncorp Technologies Ltd</a> 
(<strong>Suncorp</strong>, 1063, also mentioned in our article) and 0.8% of
<a href="../dbpub/articles.asp?p=4776">China Properties Investment Holdings Ltd</a> 
(<strong>CPI</strong>, 0736). CPI was also in a bubble and
<a href="../dbpub/ctr.asp?i1=965&amp;d2015-06-30">has dropped</a> 89.5% from 
$2.37 to $0.25 since 30-Jun-2015. Suncorp was a bubble but peaked at $1.51 on 
5-May-2015, and was already down to $0.52 by 30-Jun. It closed on Friday at 
$0.222, down 57.3% since the end of June. Meanwhile the umbrella bubble is staying up. 
By last night, CJ had only fallen 9.6% since 30-Jun-2015 and had a market value 
of HK$28.2bn, or 70.6x its net tangible assets of $399.6m.</p>
<p>In Chinglish, the CAID announcement says:</p>
<blockquote>&quot;Although the recent weakness in the stock market, the 
Board expects the performance of Significant Investments will still contribute 
positive return to the Group in the near future&quot;</blockquote>
<p>The Board does not give any reasons for that expectation. In our view, nobody 
could reasonably expect a bubble to grow larger or even to stay inflated, 
assuming that person did not know of any plan to make that happen. CJ accounted 
for 65.8% of the held-for-trading investments at 30-Jun-2015, and the other two 
holdings are down sharply, so it is hard to see how the overall portfolio 
returns &quot;in the near future&quot; could be expected to be positive. <strong>The Stock 
Exchange should require CAID to either justify that statement or withdraw it.</strong></p>
<p>As readers will recall, CAID also holds 75m shares (7.82%) of <a href="../dbpub/articles.asp?p=7889">Lerado Group (Holding) Co Ltd</a> (<strong>Lerado</strong>, 
1225) received at $0.60 each in exchange for a business sale. At the 30-Jun-2015 
closing bid price of $0.59, these were worth HK$44.25m, or RMB 35.4m. So the 4 
investments together amounted to RMB 514.6m, or 91.2% of CAID's investments. Lerado 
closed on Friday at $0.27, down 54.2% since the end of June.</p>
<h3>Lerado next?</h3>
<p>So now we have identified 2 shareholders of the umbrella bubble, namely CAID 
with 1.52% and
<a href="../dbpub/articles.asp?p=4923">China Environmental Energy Investment Ltd</a> 
(<strong>CEEI</strong>, 0986) with 2.11%, out of the 25% float. As we noted in 
the article, CEEI also bought into the Suncorp bubble. Given the other identified connection 
between CAID and <a href="../dbpub/articles.asp?p=7889">Lerado Group (Holding) Co Ltd</a> (1225), 
we suspect that Lerado's massive market gains for the first half of 2015 also 
involve a shareholding in CJ, but so far, they're not saying. The SFC probably 
knows who held the stock at 27-Apr-2015, because it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0514/LTN20150514327.PDF" target="_blank">
announced</a> that 16 shareholders then held 96.1% of the float.</p>
<h3 id="update1">Update, 27-Oct-2015</h3>
<p>Following our complaint about the statement above, CAID
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1023/LTN20151023662.pdf" target="_blank">
announced</a> on 23-Oct-2015 that its Board "would like to replace" that 
sentence.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=60877">CHINA AUTOMOTIVE INTERIOR DECORATION HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2350356">China Jicheng Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4776">China Properties Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4923">Dufu Liquor Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7889">Lerado Financial Group Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4858">SUNCORP TECHNOLOGIES LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=136">Enigma Network</a></li>
				
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