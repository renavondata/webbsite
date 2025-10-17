
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

<script type="text/javascript">document.title="A secret mile-high stake in Pico (0752)";</script>

	<div class="summary">We name and shame Denver Investments, a US-based fund manager, for failing to disclose its stake in Pico for 13 months. We explain why they are unlikely to face prosecution.</div>

<h2 class="center">A secret mile-high stake in Pico (0752)<br>
<span class="headlinedate">28 February 2013</span></h2>
<p>The folks at US fund manager <a href="http://www.denvest.com/" target="_blank">Denver 
Investment Advisors LLC</a> (<strong>Denver Investments</strong>) appear to have 
been merrily piling into HK-listed shares without a care in the world for our 
legal disclosure requirements. On 6-Feb-2013, they filed a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=204054&amp;lang=EN&amp;dia=Y" target="_blank">
very late disclosure</a> that they had increased their stake in
<a href="../dbpub/orgdata.asp?p=4945">Pico Far East Holdings Ltd</a> (<strong>Pico</strong>, 
0752) through the 5% disclosure threshold over 13 months earlier, on 
16-Dec-2011, at $1.30 per share. Part XV of the
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/" target="_blank">Securities 
and Futures Ordinance</a> requires that disclosures be made within 3 business 
days of passing through 5% or through any higher 1% boundary above that.</p>
<p>But it was worse than that, because last night another bunch of disclosures 
was published, filed on 25-Feb-2013, which showed the following increases in 
their holding after 15-Dec-2011:</p>
<table class="numtable center">
	<tr>
		<td><strong>Date</strong></td>
		<td><strong>Shares<br>held</strong></td>
		<td><strong>Stake<br>%</strong></td>
		<td style="width: 95px"><strong>Average paid that day $</strong></td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=204054&amp;lang=EN&amp;dia=Y" target="_blank">
		15-Dec-2011</a></td>
		<td>61,695,000</td>
		<td>5.09</td>
		<td style="width: 95px">1.30</td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=205072&amp;lang=EN&amp;dia=Y" target="_blank">
		31-Jan-2012</a></td>
		<td>73,419,000</td>
		<td>6.05</td>
		<td style="width: 95px">1.61</td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=205073&amp;lang=EN&amp;dia=Y" target="_blank">
		3-Aug-2012</a></td>
		<td>87,172,000</td>
		<td>7.18</td>
		<td style="width: 95px">1.70</td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=205074&amp;lang=EN&amp;dia=Y" target="_blank">
		12-Sep-2012</a></td>
		<td>97,410,000</td>
		<td>8.01</td>
		<td style="width: 95px">1.79</td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=205075&amp;lang=EN&amp;dia=Y" target="_blank">
		31-Oct-2012</a></td>
		<td>109,285,688</td>
		<td>9.00</td>
		<td style="width: 95px">1.88</td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=205076&amp;lang=EN&amp;dia=Y" target="_blank">
		11-Jan-2013</a></td>
		<td>122,304,000</td>
		<td>10.07</td>
		<td style="width: 95px">2.22</td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=205077&amp;lang=EN&amp;dia=Y" target="_blank">
		31-Jan-2013</a></td>
		<td>137,006,000</td>
		<td>11.28</td>
		<td style="width: 95px">2.16</td>
	</tr>
	<tr>
		<td>
		<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=205078&amp;lang=EN&amp;dia=Y" target="_blank">
		22-Feb-2013</a></td>
		<td>146,424,000</td>
		<td>12.05</td>
		<td style="width: 95px">2.45</td>
	</tr>
</table>
<p>So they had secretly built up a holding of 11.28% before making any 
disclosure, depriving the market of that knowledge, then botched that disclosure 
by only stating a 5.09% interest, when in fact they were already at 11.28%. If 
you look at box 20 on the
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=204054&amp;lang=EN&amp;dia=Y" target="_blank">
first form</a>, you will see the actual shareholding of 137,006,000, but the 
percentage figure of 5.09% was based on the figure in box 19 from 13 months 
earlier. All the subsequent forms except the last one have the wrong figure in 
box 20 too, and all of the forms use the denominator of 1,214,470,104 
outstanding shares, but that is incorrect except in the case of the position on 
31-Jan-2013. The outstanding shares are regularly disclosed by filings at HKEx, 
and can also be tracked in the <a href="../dbpub/outstanding.asp?i=1193">
Webb-site database here</a>. In Pico's case, there hasn't been much increase 
during the period, just a few options exercised.</p>
<p>So Denver Investments has broken HK law. Will they be prosecuted? Almost 
certainly not, because this once again highlights that foreign shareholders 
cannot in practice be prosecuted for late disclosure unless they have a presence 
in Hong Kong, because a summons cannot be served against them outside HK without 
special permission from the HK courts, which is not lightly granted. See
<a href="http://www.hklii.hk/eng/hk/legis/reg/4A/s11.html" target="_blank">Order 
11 of the Rules of the High Court</a>. But Webb-site can name and shame them, 
and this we now do. A professional fund manager such as Denver Investments 
should know better and should check and comply with disclosure requirements when 
investing in overseas markets.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2025514">Denver Investment Advisors LLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4945">PICO FAR EAST HOLDINGS LIMITED</a></li>
				
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