
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

<script type="text/javascript">document.title="Intervention and opacity in land sales";</script>

	<div class="summary">The HK Government has begun micro-managing the terms of development, while shifting from open auctions to a less transparent sealed-bid tender process. The next Chief Executive should reverse this. We also renew our call to change the financial structure of new land leases away from high-premium-low-rent to lower-premium higher-rents.</div>

<h2 class="center">Intervention and opacity in land sales<br>
<span class="headlinedate">14 November 2011</span></h2>
<p>The HK Government's policy on land leases has become more 
interventionist in the last couple of years. It has begun specifying the minimum number of apartments 
and the maximum size of apartment that 
should be built on some residential sites, thereby restricting the choice of 
developers to optimise a project's value by supplying units that meet market demand, and hence reducing the proceeds of 
land sales. An example is
<a href="http://www.info.gov.hk/gia/general/201012/31/P201012310111.htm" target="_blank">
Yuen Long Town Lot 518</a>, and another is
<a href="http://www.info.gov.hk/gia/general/201104/29/P201104290258.htm" target="_blank">
Tung Chung Town Lot No. 36</a>.</p>
<p>This is part of a policy decreeing that the market should provide 
more small apartments (we are talking about 35-40 sq m (377-431 sq ft) of 
saleable area, including the area occupied by walls). That is in turn 
because the Government wants more people to own a home without reducing 
property prices per square foot, rather than admitting that we are in a 
bubble, and rather than dramatically increasing land supply and/or plot ratios to allow 
everyone more space for their dollars.</p>
<p>The Government's transparency on land sales is also decreasing, as it has 
adopted a sealed-bid tender approach (<a href="http://www.info.gov.hk/gia/general/201104/13/P201104130271.htm" target="_blank">example 
here</a>) rather than an open auction. The latter, 
dynamic process is less at risk of collusion between bidders. In an auction, the number of bids, 
and the prices of each bid, are disclosed. In a tender, only the number and 
names of bidders, and the winning bid, are disclosed (<a href="http://www.info.gov.hk/gia/general/201107/11/P201107110216.htm" target="_blank">example 
here</a>). The bidder names are usually newly-created companies, and the 
developers who own them are not named, so the disclosure is meaningless. Veteran Hong Kong property 
surveyor <a href="../dbpub/positions.asp?p=18672">Nick Brooke</a>, who chairs 
the Government's Harbourfront Commission and its Science and Technology Parks 
Corporation, told Webb-site:</p>
<blockquote>
	<p>&quot;On some occasions Government requests additional inputs such 
	as concept designs and only on those occasions is a tender justified as there is 
	the need to review those designs before making a final decision.</p>
	<p>All potential purchasers detest tender as there is no benchmark such as another bid 
	against which to measure and you can end up as a result offering far less than 
	the successful tender or worse still offering far more than the next highest 
	tender.&quot;</p>
</blockquote>
<p>The Government has not explained why it has switched to a tender approach or 
on what basis it decides which sites should be tendered and which should be 
auctioned. Perhaps the motivation for this move towards tenders is a &quot;fear of failure&quot; 
at auctions when reserve prices are not reached and lots are withdrawn - but we 
see no harm in that. Auction reserve prices, typically set at a 20% discount to 
what the Government thinks the land is worth, are there to prevent the risk of 
wholesale collusion amongst the couple of handfuls of developers who account for 
the bulk of the market, and the risk that they would get together and rig the 
auction for the site, as they once did in the pre-handover Patten era.</p>
<p>A rarer cause 
of auction failure is that occasionally, the Government's own surveyors misjudge 
the reserve price because they have not accounted for neighbouring cemeteries or other impacts on valuation, but that is not as big a risk. 
Only one lot has been withdrawn since 1994, which was a
<a href="http://mobile.bloomberg.com/news/2010-09-29/hong-kong-government-withdraws-site-from-auction-after-no-developers-bid" target="_blank">
site near a Chai Wan cemetery</a> in 2010.</p>
<p>So let us hope that the next Chief Executive of HK will return to a less 
interventionist and more transparent approach to land sales. It should be 
sufficient, for each site, to determine the maximum allowable floor area, 
coverage ratio, plot ratio and/or height limit, and then let the market decide 
the best way to use the site to be sold without the Government micro-managing 
it. At most, the Government should specify industrial or non-industrial use (due 
to concerns over air and noise pollution), and let the market figure out the 
rest (whether hotel, residential, office or retail). All sales should be by 
public auction.</p>
<p>The next Chief Executive should 
also review the financial structure of land leases and, as we have argued, shift 
away from the high-premium low-ground-rent approach (ground rent is set at 3% of 
rateable value) and instead start selling land with higher ground rents (perhaps 30% 
of rateable value) and consequently lower premiums. This would open up the market and 
reduce the capital cost of ownership. The Government would secure a future 
revenue stream to service its growing welfare obligations, and would be sharing 
the economic risks as its revenue from ground rents would fluctuate with the rental value of 
properties, which in turn are linked to economic acitivity. Meanwhile, property 
owners would put up less capital but still have security of tenure under the 
Government lease. For more on this, see our article on
<a href="leases2.asp">Land Lease Reform</a>.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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