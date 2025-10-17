
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

<script type="text/javascript">document.title="Donald decrees: HKEx will move";</script>

	<div class="summary">A little-noticed paragraph of the recent Policy Address dictates that HKEx will move to the offices to be developed on the site of the West Wing of the Central Government Offices. What does this say about the Government's attitude to HKEx?</div>

<h2 class="center">Donald decrees: HKEx will move<br>
<span class="headlinedate">14 November 2011</span></h2>
<p>Buried in 
<a href="http://www.policyaddress.gov.hk/11-12/eng/p139.html" target="_blank">paragraph 141</a> of Donald Tsang's final
<a href="http://www.policyaddress.gov.hk/11-12/" target="_blank">policy address</a> is a 
confirmation of the hands-on, interventionist attitude that he has long held towards 
HK's financial markets, consistent with his approach to the economy as a whole. 
The paragraph caption is innocent enough: &quot;Conserving Central&quot;. It speaks to the 
debate about what to do with the site of the
<a href="http://www.pland.gov.hk/pland_en/misc/cgo/index_eng.htm" target="_blank">West Wing of the Central Government 
Offices</a>, which are being vacated as the bureaux move into the new 
<a href="http://en.wikipedia.org/wiki/Tamar_site" target="_blank">Tamar Palace</a>.</p>
<p>There is, dare we say it, consensus that the ugly late-1950s building 
sprawling across the site should be demolished. Beyond that, views range from 
creating a pure park in Central, to at least including some new office space to 
increase capacity in the CBD, and possibly yet another shopping arcade. The 
paragraph says:</p>
<blockquote>&quot;After taking into account public views, we have revised the 
plan for the redevelopment of West Wing of the Central Government Offices, 
expanding the public open space to be provided and significantly reducing the 
scale of the shopping arcade in the new development&quot;.</blockquote>
<p>This in itself is exemplary of the micro-management of Tsang's administration 
- the Government deciding on how much retail space we need, versus other 
potential uses. Why not just decide limits on plot ratio, site coverage and/or 
building height, and let the free market decide how to utilise the permitted 
space to maximise its value? The winning bidder would have its own plans for 
office/retail/residential/hotel usage. But then the Policy Address gets worse:</p>
<blockquote>&quot;Part of the new complex will be used to accommodate the 
Securities and Futures Commission and the Hong Kong Stock Exchange to enhance 
Central as a core financial district.&quot;</blockquote>
<p>Not &quot;could be&quot; but &quot;will be&quot;. By &quot;the Hong Kong Stock Exchange&quot; 
The Donald of course 
means the Stock Exchange of Hong Kong Ltd, operator of Hong Kong's 
<a href="hkexopoly.asp">statutory 
monopoly</a> on stock exchanges, and he probably really means 
<a href="../dbpub/articles.asp?p=9643">Hong Kong 
Exchanges and Clearing Ltd</a> (<strong>HKEx</strong>, 0388) which also owns 
the Futures Exchange and the associated clearing companies. The statement also 
ignores the fact that HKEx and the SFC are already located in Central - so how 
can moving them to another piece of Central &quot;enhance Central as a core financial 
district&quot;?</p>
<p>HKEx is a for-profit company owned by its shareholders. Decisions on where to 
locate its offices should be made by its board, not by the Government. Tsang's 
statement underlines that in reality HKEx is a 
government-controlled entity and will do as it is told.</p>
<p>Although the Government only owns 5.8% of HKEx, shareholders can only elect 6 of the 13 directors, 
the rest being appointed by Government (6 directly, while the Chief Executive of 
HKEx is approved by the SFC and is an ex-officio director). The Chairman of HKEx has to be approved 
by HK's Chief Executive, Tsang himself. The current Chairman,
<a href="../dbpub/positions.asp?p=675">Ronald Arculli</a>, is a member of HK's 
cabinet, the Executive Council, as was his predecessor. Mr Arculli was promoted to Convener of the 
non-official 
members of ExCo after Leung Chun Ying stepped down to 
campaign for Chief Executive. Mr Arculli reaches his 6-year term limit at HKEx in 
April 2012 and is tipped to be replaced by 
<a href="../dbpub/positions.asp?p=4285">Laura Cha Shih May Lun</a>, another ExCo 
member and Government-appointed director.</p>
<p>The Government's decision that HKEx will move to Government Hill also came as 
a surprise to HKEx management. Gerald Greiner, Chief Operations Officer, told
<em>Webb-site</em> by e-mail on 13-Oct:</p>
<blockquote>&quot;Both the boards of HKEx and the SFC are interested in the 
idea and will discuss further details with the Government, but both SFC and HKEx 
have not yet decided if they will move in the to-be-built office tower. If the 
two organisations agree to move in the new office tower, they will pay market 
rates. They will also take up majority of the space.&quot;</blockquote>
<p>If you are wondering why HKEx is speaking for the SFC, that is probably 
beause the line-to-take originated from the Government, not HKEx. It represents 
a step back from Tsang's policy statement. Mr Greiner also wrote:</p>
<blockquote>&quot;The government will decide on the developer of the West Wing 
redevelopment project through a public tender.&quot;</blockquote>
<p>So it appears that the Government intends to sell the development rights and 
include a condition in the land lease that the majority of the space should be 
sold or leased to HKEx and the SFC, or that they should have first refusal. It 
is heavily interventionist to tell developers whom they should deal with when 
they sell or rent the project, particularly when the counterparty (HKEx) is a 
private-sector entity, not a Government body. Should the Government earmark 
office space for other companies too when it sells land?</p>
<p>As for the SFC, Webb-site has <a href="SFCoutcast.asp">said before</a> that it would be better if 
the SFC was 
not a tenant of a listed company which it ultimately regulates. The news comes 
soon after the SFC agreed to move into the Cheung Kong Centre in mid-2013. So it 
is reasonable that, as a government agency, the SFC should reside in its own, or 
Government-owned premises.</p>
<p>In <a href="landsales.asp">today's other article</a>, we look at other shifts 
in the Government's land sale policy, towards intervention and away from 
transparency in land sales.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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