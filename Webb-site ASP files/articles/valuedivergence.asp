
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

<script type="text/javascript">document.title="Value Divergence";</script>

	<div class="summary">We look at the strange events at Value Convergence (0821) where Melco (0200) is selling its controlling stake at $1.92 before a massive dilutive CB issue at $1.00, a third of which is going to China Fortune (0290). Shareholders should vote against the bond issue, and bond subscribers and their associates should be prohibited from voting any shares they hold.</div>

<h2 class="center">Value Divergence<br>
<span class="headlinedate">21 September 2009</span></h2>
<p>What strange goings on at <a href="../dbpub/orgdata.asp?p=13553">Value 
Convergence Holdings Ltd</a> (<strong>VC</strong>, 0821) currently (but not for 
long) controlled by <a href="../dbpub/orgdata.asp?p=1019">Melco International 
Development Ltd</a> (<strong>Melco</strong>, 0200) which in turn is controlled 
by casino tycoonlet <a href="../dbpub/natperson.asp?p=7275">Lawrence Ho Yau Lung</a>.</p>
<p>First, on 8-Sep-09, VC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090908/LTN20090908667.pdf">
announced</a> that it had conditionally agreed to place HK$300m of 2-year 1% 
convertible bonds via <a href="../dbpub/orgdata.asp?p=5437">China Everbright 
Securities (HK) Ltd</a>. The bonds are convertible at $1.00 per share, and if 
converted in the first year, the converting holder gets an option to subscribe 
an equal amount of bonds to replace them. Consequently up to 600m new shares 
could be issued, equivalent to a whopping 161.65% of the existing issued share 
capital. The whole deal is conditional on shareholders' approval at a meeting 
yet to be convened. </p>
<p>At 30-Jun-09, VC had net tangible assets of HK$609.1m, or about $1.64 per 
share. So the bond conversions at $1 would be highly dilutive to NAV. 
Interestingly, although the placing commission on the initial $300m issue is 
only 1%, VC only expects net proceeds of $285m, so there are other fees and 
expenses of $12m or 4%, which seems excessive. The pro forma NTA of $1194m 
(assuming all 600m shares are issued) amounts to about $1.23 per share.</p>
<p>Despite that, on resumption of trading on 9-Sep-09, the stock jumped 91.8% from $0.98 to 
$1.88, and closed on Friday (18-Sep-09) at $2.05.</p>
<p>VC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090918/LTN20090918456.pdf">
announced</a> on Friday that it had &quot;no fewer than six&quot; subscribers for the 
first $300m of bonds. It didn't name the subscribers, but one of them is
<a href="../dbpub/articles.asp?p=13901">China Fortune Group Ltd</a> (0290) 
which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090918/ltn20090918577.pdf">
announced</a> that it is buying $100m, or one third of the issue. That company 
featured in a series of articles on Webb-site.com in June and July.</p>
<p>Also on Friday, Melco
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090920/LTN20090920021.pdf">
announced</a> that it had agreed with <a href="../dbpub/orgdata.asp?p=16066">Kim 
Eng Securities (Hong Kong) Ltd</a> as agent to place its entire 43.24% stake 
(160.9m shares) in VC into the market on a best efforts basis at $1.92 per 
share, starting today, 21-Sep-09. This is even before the shareholders' meeting 
to consider the proposed bond issue.</p>
<p>Now, think about it. Why would investors buy existing shares at $1.92 per 
share and then vote to approve a bond issue convertible at $1.00 per share? 
Surely it would make more sense for the new shareholders to vote against the 
bond issue. Unless, of course, the new owners had also been allocated a chunk of 
the bond issue, in which case they would be voting to approve their own deal. 
Under the Listing Rules, as long as a placee holds less than 10% of VC, it is 
not a connected person and can vote, unless the Stock Exchange says otherwise.</p>
<p>But then, what would be happening? If a purchaser in the share placing has 
also been allocated bonds which he/it converts, then the average purchase price 
per share will be lower. The weighted average of the 600m shares under the bond 
issue and the 160.9m shares in the placing is about $1.19 per share. Melco gets 
out at 
$1.92, a premium to NAV and a huge premium to the $0.98 price before the 
proposed bond issue was announced, but VC only gets $1 per share, diluting the 
NAV of other shareholders.</p>
<p><strong>It appears that the interests of Melco and VC may be diverging here. 
The Stock Exchange should, at the very least, require disclosure of whether any 
of the subscribers in the bond issue, or their respective associates, are buying 
shares in the sale by Melco, and if so, prohibit them from voting on the bond 
issue. Webb-site.com urges other shareholders to vote against the bond issue 
when the time comes.</strong></p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5437">CHINA EVERBRIGHT SECURITIES (HK) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13901">GoFintech Quantum Innovation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1019">MELCO INTERNATIONAL DEVELOPMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16066">MIB SECURITIES (HONG KONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13553">VALUE CONVERGENCE HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7275">Ho, Lawrence Yau Lung</a></li>
				
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