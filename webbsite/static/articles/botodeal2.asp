
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

<script type="text/javascript">document.title="Boto's New Deal";</script>

	<div class="summary">Boto has at last announced amended terms for the proposed sale of its core businesses. We give our views.</div>

<h2 class="center">Boto's New Deal<br>
<span class="headlinedate">12 July 2002</span></h2>
<p class="revisedate">(revised 13-Jul-02)</p>
<p><a href="http://www.boto.com.hk/" target="_blank">Boto International Holdings Ltd</a> (<b>Boto, 0585</b>)
today <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020712/LTN20020712041.pdf" target="_blank">
announced</a> revised terms of the proposed sale of its core Christmas festive products and
leisure furniture businesses, which accounted for 99.9% of unaudited turnover
for the year ended 31-Mar-02. </p>

<p>Under the revised deal, partnerships <i> &quot;affiliated with&quot;
</i>
Carlyle would own 75% of the buy-out vehicle, Greenland Investment Holdings Ltd (<b>GIHL</b>),
while Boto would own 25%. The price on the sale has been increased by HK$70m to
$1,064m ($0.309 per share), while Boto would invest $88m for 25% of GIHL. </p>

<p>As in the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020403/LTN20020403015.doc" target="_blank">previous
proposal</a>, Boto would also sell premises for $13.5m and
receive a pre-completion dividend of $92.5m from the subsidiaries being sold.
The net proceeds of the sale, including the premises, would be $1,069m. Adding
the dividend and deducting the investment in GIHL, there should be net cash of
$1,074m or about $0.312 per share. </p>

<p>The undertaking to retain net assets against sale warranties has
been reduced to $170m from $200m. That would include the $88m invested in GIHL
and any net assets of Imagi, the animation business. We'll assume zero net
assets for Imagi, and that implies a minimum cash retention of $82m which can be
used as working capital. </p>

<p>Boto has stated an intention to distribute <i> &quot;a substantial
part&quot; </i> of the proceeds as a dividend, but has conspicuously failed to commit
to any figure, and suspicions remain that it will keep an excessive amount of
cash which inevitably will be discounted in value in the share price if the deal
proceeds. Precedent indicates a 50% market discount will be applied to cash in
the shell. </p>

<p>Boto will sign a 3-year consultancy agreement by which the
services of Chairman Michael Kao Cheung Chong (<b>Mr Kao</b>),&nbsp; Philip Lam Pak Kin, Vivian
Kao Wai Ming and Kui Yiu Ngok will be provided to GIHL in return for fees of
$11.2m p.a. plus, bizarrely, a <i> &quot;discretionary fee&quot;</i> based on the
financial performance of GIHL. As the announcement is silent on what the
company will do with these fees, we can only assume that they will be passed
through as salaries and bonuses to the four, so don't get excited, it's probably
not for shareholders. </p>

<h3>Option schemes</h3>

<p>These four and their associates will &quot;abstain&quot; from
voting a combined <b>60.6%</b>  of Boto on the transaction, although the announcement
describes this as a &quot;Major Transaction&quot; but no longer a &quot;Connected
Transaction&quot; as Mr Kao no longer has an initial stake in GIHL. </p>

<p>However, they do have a different interest to Boto shareholders:
all of the four would be eligible to participate in two new share options
schemes of GIHL over 10% and 5% of the fully diluted share&nbsp; capital. The
exercise price on the first scheme is the same as the investment price for Boto,
while the second scheme is at a generous 70% discount. Full exercise of these
options could dilute Boto to only 21.25% of GIHL. </p>

<h3>Listing Review Committee</h3>

<p>Although the announcement doesn't mention it, we have been
informed that the <a href="botoupdate2.asp" target="_blank">Listing Review
Committee</a>, when considering the original connected transaction, decided to
allow one executive director, Ms Liliana Tsen Yun Lei, to vote on the deal,
while barring another executive director, Mr Kui, from voting. </p>

<p>The Listing
Committee operates in a form of secrecy that makes the Vatican look transparent,
and unlike the SFC's Takeover Panel, it almost never announces its decisions or
the reasons for them. Ms Tsen holds 5.54% while Mr Kui holds 2.12% of Boto. The
committee also ruled that the trust established by a deceased co-founder and ultimately
controlled by HSBC group, the lender to the buy-out vehicle, could vote its
4.08% stake. </p>

<h3>Extracts of results</h3>

<p>The announcement contains some extracts of the unaudited results
for the year to 31-Mar-02, showing that turnover of festive products grew 7% for
the year - still a good cash cow, and we hear breaking news from the North Pole
that Christmas is coming again this year. </p>

<p>At same time, those leisure furniture sales for your patio grew a whopping 131%, even more
than we had expected, help by a strong second half. Clearly from a standing
start in 1998, this business is
beginning to motor, as the following table shows: </p>

<img class="center" src="../images/botode1.gif" alt="">

<p>The results also show an unaudited net profit for the year to
31-Mar-02 of $141.4m, down 9.6% on 2001, and significantly below Kim Eng's
research forecast of $179.6m and our own expectation. However, we take it with a
large pinch of sodium chloride, because it would be in the interests of
management to paint a gloomy picture, and there are&nbsp; plenty of legally
acceptable ways in which figures can, at least on a short-term basis, be
depressed. All we got were figures for turnover, pre-tax and net profit. The
board meeting for audited results has been set for 18-Jul-02 and the annual
report should be posted by 31-Jul-02 under Listing Rules. </p>

<h3>Held Hostage</h3>

<p>One of several &quot;events of default&quot; in the
shareholders' agreement is that if Mr Kao ceases to be a director of Boto, or if
he ceases to have majority control of Sunni International Ltd (which owns 52% of
Boto), or if he ceases to control Boto, then in any one of these cases, Carlyle
gets the right to buy back the 25% stake in GIHL at the $88m cost. </p>

<p>This looks
like a hostage to fortune - we are all mortal, and Mr Kao's death
or resignation, would result in Boto losing its
stake in GIHL for no return. This could result in substantial loss of value to Boto
shareholders, particularly if the former core businesses perform as well as we
expect, and would leave Boto as an animation start-up. </p>

<h3>Conclusions</h3>

<p>The increase in the proposed sale price is a paltry amount of
just $0.02 per Boto share and offers no premium over market price for majority
control of all the core business. Boto would at least get to keep 25% of the upside in
its core businesses (or 21.25% after being diluted by the option schemes) but only if Mr Kao stays on
board, failing which the upside could disappear. </p>

<p>We believe the US and European consumer is alive and well, and
recent booming export figures through southern China's container terminals
support this. One-time disruptions from the reorganisation of K-mart do not
affect consumer demand. We are delighted by the strong 131% growth of the
leisure furniture business which certainly does not look like having reached <i>&quot;a
relatively mature stage with low growth prospects&quot;</i>&nbsp; as Boto
claimed in April. </p>

<p>We and other investors remain opposed to this deal, which we
believe is not in the best interests of the company. We intend to vote against
it at the general meeting and urge others to do likewise. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
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