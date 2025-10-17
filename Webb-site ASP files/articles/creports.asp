
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

<script type="text/javascript">document.title="CRE: more needed on the port flip";</script>

	<div class="summary">CRE (0291) has issued a bland denial that its parent owes it anything under the profit-share for the on-sale of its stake in Hutchison's ports. The calculation under that agreement in itself amounts to a connected transaction. We call for full disclosure of the apportionment of proceeds received by CRH, backed up by independent valuation of the other assets CRH bundled in. Without better information, we conservatively estimate a gain of $1,927m. The interests of CRE independent shareholders have not yet been protected.</div>

<h2 class="center">CRE: more needed on the port flip<br>
<span class="headlinedate">28 January 2011</span></h2>
<p>In yesterday's <a href="../news/news110127.htm">newsletter</a>, we said that 
&quot;there's still no disclosure from China Resources 
Enterprise (291) on what, if anything, its 50% profit-share is on its former 
stake in Hutchison's ports, which its parent China Resources Holdings flipped to 
HPH&quot;. That wasn't quite accurate. In an
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110124/LTN20110124537.pdf" target="_blank">
announcement</a> on the evening of 24-Jan-2011 which was clarifying press 
coverage about the new beverage joint venture with Kirin Holdings Co Ltd, <a href="../dbpub/orgdata.asp?p=1108">China Resources 
Enterprise, Ltd</a> (<strong>CRE</strong>) also included this paragraph:</p>
<blockquote>
&quot;Reference is also made to the Company's announcement dated 29 
October 2009 and the press coverage regarding the disposal by China Resources 
(Holdings) Company Limited ("CRH") of certain assets, including (but not limited 
to) its interests in container terminal operations. The board of directors of 
the Company wishes to clarify that the Company has obtained the relevant 
particulars from CRH on its recent disposal and the Company confirmed that it is 
not entitled to receive any payments pursuant to the terms of the asset swap 
agreement dated 29 October 2009 referred to in the said announcement as a result 
of CRH's disposal of the minority investments in container terminal operations 
that it acquired from the Company under the asset swap agreement.&quot;
</blockquote>
<p>This minimalist form of disclosure does not go far enough. The sale of its 
port assets by CRE to its parent CRH was a connected transaction for which there 
was an independent financial adviser's report and independent shareholders' 
approval was required. It is not enough for CRE, still controlled by CRH, to 
simply tell the market that &quot;our parent doesn't owe us anything&quot;.</p>
<p>On the face of it, we have the sale of port assets by CRE to CRH for HK$3.3bn, 
and the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110103/LTN20110103023.pdf" target="_blank">
onward sale</a> of the port assets plus some other assets by CRH to either <a href="../dbpub/orgdata.asp?p=366">Hutchison Whampoa Ltd</a> 
(<strong>HWL</strong>, 0013) or its 80% subsidiary
<a href="../dbpub/orgdata.asp?p=45376">Hutchison Port Holdings Ltd</a> (<strong>HPH</strong>, 
BVI) for $5.7bn. CRE was entitled to a 50% share of any excess over $3.3bn 
received by CRH in selling the port assets.</p>
<p><strong>The calculation of this amount in itself amounts to a connected 
transaction between CRE and CRH. There should be full disclosure of the 
apportionment</strong> of the $5.7bn proceeds received by CRH for its sale 
between the assets it acquired from CRE and any other assets bundled into the 
sale to HWL/HPH. 
This should be <strong>backed up by independent valuations and a fairness opinion from an 
independent financial adviser</strong>. As a reminder, the assets CRH sold were:</p>
<ol>
	<li>10% of <a href="../dbpub/orgdata.asp?p=3996">HIT Investments Ltd</a> (<strong>HITIL</strong>, 
	BVI) with shareholder loan</li>
	<li>10% of <a href="../dbpub/orgdata.asp?p=63724">Hutchison Ports Yantian 
Investments Ltd</a> (<strong>HPYIL</strong>, BVI) with shareholder loan</li>
	<li>12% of
<a href="../dbpub/orgdata.asp?p=3992">Omaha Investments Ltd</a> (<strong>Omaha</strong>, 
	HK): this had an audited net asset value at 31-Dec-2009 of $1,784m, so 12% 
	of its NAV was <strong>$214.1m</strong>. According to HWL's annual report, 
	the business of Omaha is &quot;property owning&quot;</li>
	<li>110/242 (45.45%) of the 
<a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=9+chong+yip+street&amp;aq=&amp;sll=22.396428,114.109497&amp;sspn=1.392823,1.101379&amp;ie=UTF8&amp;hq=&amp;hnear=9+Chong+Yip+St,+Hong+Kong&amp;ll=22.313659,114.220417&amp;spn=0.001228,0.002151&amp;t=h&amp;z=19&amp;layer=c&amp;cbll=22.313656,114.220423&amp;panoid=9H9BkOHS_l3KEE8CLhlz8Q&amp;cbp=12,249.01,,0,-35.29" target="_blank">property at 9 Chong Yip Street</a>, 
	Kwun Tong, Kowloon: the book value of this property at 31-Dec-2009 was 
	HK$390m. 45.45% of that is <strong>$177.3m</strong>. It is listed in HWL's 
	2009 annual report as a commercial investment property, so that was valued 
	at market value. It has a floor area of 124,724 sq ft, so that is a 
	valuation of $3,127 per sq ft, which we consider reasonable for that area of 
	Kowloon at the end of 2009.</li>
	<li>10% of Splendid Century Ltd (<strong>Splendid</strong>, BVI): this had an 
	audited net asset value at 31-Dec-2009 of HK$1m, so 10% of its NAV was
	<strong>$0.1m</strong></li>
	<li>10% of Eckstein Resources Ltd (<strong>Eckstein</strong>, BVI): this had 
	audited net asset value at 31-Dec-2009 of HK$28m, so 10% of its NAV was
	<strong>$2.8m</strong></li>
</ol>
<p>Now, the net asset value or book value of assets (3) to (6) above adds up to 
$394.3m. Let's be generous and say that they all increased in value by 20% 
between 31-Dec-2009 and the transaction date of 31-Dec-2010. That would make 
$473.2m. Let's also be generous in assuming that none of these assets was 
included in the connected transaction sale by CRE to CRH. So we'll deduct that 
amount from the proceeds of $5.7bn. <strong>That still leaves HK$5,227m of 
proceeds</strong> apportioned to the port stakes, assets (1) and (2) above. So 
without any better information, it appears that CRH did indeed make a 
substantial profit above the $3,300m it paid CRE for these assets, <strong>a 
gain which we conservatively estimate to be $1,927m. CRE is entitled to half of 
any such gain. To simply dismiss that with a one paragraph announcement is 
unacceptable.</strong></p>
<p>There may be a genuine explanation for CRE's claim that there was no gain - 
for example, CRH may have increased the amount of shareholders' loans to HITIL 
and HPYIL since it bought them from CRE, but until we see the full calculation 
and valuations, confirmed by an independent financial adviser, we are entitled 
to be sceptical.</p>
<p>The IFA in the original connected transaction was
<a href="../dbpub/adviserships.asp?p=5778">Platinum Securities Co Ltd</a> (<strong>Platinum</strong>), 
which noted on page 49 of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091111/LTN20091111172.pdf" target="_blank">
circular</a> that the Price/Earnings Ratio (<strong>PER</strong>) for the CRE port disposal was only
<strong>5.3. </strong>That is very low by any measure, but particularly for what 
amount to cash-cow utility companies. It was also very low compared with an 
average of 19.5 for comparable port companies, but Platinum drew comfort from 
the fact that CRE would be entitled to 50% of any dividends and interest on the 
port stakes exceeding $220m per year, and 50% of any profit if CRH sold the 
stakes for more than $3,300m. Platinum wrote:</p>
<blockquote>&quot;Having considered the above, we are of the view that 
although the Port Disposal has a lower PER as compared to the Comparable Port 
Companies...the income and profit sharing mechanisms with CRH Group which 
entitle the Company to share in any future income and capital gain from the Port 
Interests ensure that the interests of the Shareholders will be protected&quot;</blockquote>
<p>That's all well in theory, but have CRE shareholders interests really been 
protected? Not yet. For that profit-sharing entitlement to be worth any more 
than the paper it was written on, it has to be backed up with independent 
verification to protect the interests of independent shareholders.</p>
<p>We note that Platinum has been wheeled out as IFA to CRE on two more 
occasions since then, including the <a href="chinares.asp">proposal
</a>in Dec-2010 for loans to CRH and to sister companies, which Platinum 
recommended shareholders to support. Independent shareholders
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101222/LTN20101222184.pdf" target="_blank">
voted</a> 49.2% against that advice.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1108">China Resources Beer (Holdings) Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=45376">HUTCHISON PORT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5778">PLATINUM SECURITIES COMPANY LIMITED</a></li>
				
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