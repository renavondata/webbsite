
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

<script type="text/javascript">document.title="Cheung Kong's Drilling for Oil Street";</script>

	<div class="summary">With the controversy over the award of the Cyber-port project still echoing, the Government has backed away from plans to award a cruise terminal project to Cheung Kong. But the company is still pressing the Government for the same piece of land and claiming that it is for the benefit of struggling artists. Pass the hat round while we explain the real strategy behind the Oil Street project.</div>

<h2 class="center">Cheung Kong's Drilling for Oil Street<br>
<span class="headlinedate">12 January 2000</span></h2>
<p>In his Mar-99 budget speech, Financial Secretary Sir Donald Tsang announced two
projects which were to be awarded to companies respectively controlled by Mr Li Ka Shing and
his son, Richard Li, in both cases without tender. You all know about the <a href="cybervillas.asp" target="_blank">Cyber-port</a>
residential-cum-office development, being developed by Pacific Century Group,
and we won't repeat the details here. Announcing the second project, Sir Donald
said: </p>

<blockquote>

<p>&quot;the Town Planning Board has given in-principle approval to
a cruise terminal development at North Point proposed by a private sector
developer.&quot; </p>

</blockquote>

<p>This followed the Town Planning Board's draft outline zoning of
the site and its surroundings to &quot;Comprehensive Development Area&quot; in 
<a href="http://www.info.gov.hk/gia/general/199901/13/0113234.htm" target="_blank">Feb-99</a> to facilitate the plan. The cruise ship terminal was to be built by Mr Li senior's
<a href="http://www.ckh.com.hk/" target="_blank">Cheung Kong (Holdings)</a>. While a small portion of the land which was needed is
already owned by the company and/or its partners, the bulk of the land is owned by
the Government. This piece of waterfront land, currently used to land
containers, was probably originally reclaimed when the Island Eastern Corridor
expressway was built, as the road runs on stilts across the
middle of the plot.&nbsp; So we'll call it the &quot;Corridor Land&quot;. The pier was to extend out from the waterfront North edge.&nbsp; </p>

<p>After the controversy over awarding the vast tract of land
needed for the Cyber-port property without tender, the Government has backed
away from the cruise terminal project. 17 objections to the zoning plan were
recorded, and the Town Planning Board in Nov-99 amended the plans reportedly
to remove the pier. </p>

<h3>What they really want</h3>

<p>Stripped of the pier, the real motive for proposing the project
is now transparent. Cheung Kong's land of some 30,000 sq ft (which involves a 
godown site reportedly owned by the private Fook Lee Group) was to be combined
with the 90,000 sq ft of Corridor Land. Then the combined
120,000 sq ft of land, at a plot ratio of 15 times, would allow a vast <b> 1.8m sq ft</b> of
development including a 79-storey hotel tower, the tallest in Hong Kong. Without
the Government land, Cheung Kong's site only permits 450,000 sq ft of
development, not enough for a mega-tower. </p>

<p>To be practical, tall towers must have a big enough
&quot;footprint&quot; to leave a decent amount of floor space on each level
after taking out the core for the larger number of elevators and ducting needed
to service the building. The higher you go, the more inefficient the buildings
become. </p>

<h3>Bring on the artists</h3>

<p>To the East of the proposed hotel site, on the other side of Oil Street,
stands the old Government Supply Depot which in the last year or two has been granted on a peppercorn rent to
a community of artists. They are now having to move out as the Government plans
to sell that site soon (by way of tender, thank goodness). Of course, the
artists are not happy about having to move, but then that was
the deal, temporary accommodation for heavily-subsidised rent. </p>

<p>In what we must commend as a masterpiece of cynical PR, Cheung
Kong is proposing to build some facility (or perhaps just open space) for the
artists on the Corridor Land, and claims that is why it wants the land. Never mind the fact that 90,000 sq ft of land brings with it the right to
add <b> 1.35m sq ft</b> (15x the land area) to the hotel project. Victor Li, Deputy Chairman of Cheung Kong
was quoted in the <i>Hong Kong Standard </i>on 10-Jan-00: </p>

<blockquote>
  <p>&quot;That [corridor] piece of land is not for building the
  hotel. The land that we intend to build the hotel on is our own piece of land.&quot; </p>

</blockquote>
<p>He said that if Cheung Kong was given the Corridor Land then it would be
preserved for use of local artists and would not be a profit-making venture: </p>

<blockquote>
  <p>&quot;We don't want to waste that [Government] piece of
  land... we hope that there will be a place for local artists to work beside
  the harbour.&quot; </p>

</blockquote>

<p>So long as it's on <i>our</i> land... </p>

  <h3>The Bigger Picture</h3>

<p>If Cheung Kong is able to buy the Corridor Land for its hotel
  project, then it becomes the prime candidate to win the tender for the Supply
  Depot site on the other side of Oil Street. This vast site will allow another <b>1.32m
sq ft</b> of gross floor area. On the eastern
  side of the Supply Depot stands the Electric Centre, owned by Hongkong
  Electric which is also controlled by Hutchison, in turn controlled by Cheung
Kong. So the Supply Depot would have Cheung Kong-related sites on two sides and
harbourfront on another. The whole area could become a Cheung Kong project.
Nothing wrong with that, but they should compete for it and pay a fair price. Mega-projects
which bring sites together also bring synergies such as
  air-bridges, road planning and shared car parks between the towers. Take a
  look at what we mean in
<a target="_blank" href="http://www.centamap.com/scripts/esrimap.dll?name=cent&lg=EN&tp=1&cx=837906&cy=816763&zm=2&sx=&sy=&sl=&ss=0&mx=837801&my=816684&ms=2&ly=&lb=&lp=&vm=&ck=1&ca=10&cb=1&cb2=&mt=&ts=0&co=&za=0&zb=0">this
  map</a>. The depot site is also close enough to Fortress Hill MTR for direct
  connection to the station. </p>

  <p>Therefore the strategic nature of the Corridor Land makes it
  even more important that the enlarged hotel site should fetch an open market
  price, otherwise the Government may find itself with reduced proceeds when it
  eventually tenders the Supply Depot site. </p>

<h3>We propose a fair solution</h3>

<p>Cheung Kong's request is not like buying a small piece of land to add on to an
existing site, perhaps to assist traffic planning. There <i> are </i> precedents for the
Government selling an old lane or a nullah to a developer to allow for more rational
development in the public interest. But in nearly every case the additional land
is equal to a small fraction of the land already held by the developer. In this case it
is just the opposite - Cheung Kong and partners apparently only have a <u> quarter</u> of the land
they need. </p>

<p>It is not valid to argue that with a dual carriageway slicing
through it, the Corridor Land on its own is of much less use than a vacant site.
That's like arguing that the wheels on a bicycle are of no value. We are talking
about putting the wheels on Cheung Kong's bicycle here. </p>

<p>The fairest way to resolve the matter would be for Cheung Kong
and the Government to pool the godown site with the Corridor Land and then the whole,
enlarged site would be auctioned or tendered to the highest bidder, with the
proceeds split according to land area. Cheung Kong would be free to
bid, but at least this way the Government would get the full accommodation value of its share
of the land from the open market. That is transparency, and that is what Hong Kong needs if
it is to repair the damage caused by the Cyber-port award. </p>

<h3>Not again!</h3>

<p>This would not be the first time that the Government has struck
a private deal with the Cheung Kong group in order to allow a mega-tower to be
built. On the site of the old Hilton Hotel in Central now stands the <a href="http://www.cheungkongcenter.com/virtual_tour/pictures/building/bigpic_building_1.jpg" target="_blank">Cheung
Kong Center</a>, better known as &quot;The Box the Bank of China Came In&quot;
for its imaginative architectural features. </p>

<p>This monolith was only made possible
because the site area was expanded when the Government sold the adjacent
Beaconsfield House (one one side) and a car park on another side to Hutchison in 1996.
The car park, old
government offices and post office on the site were demolished, creating the
empty space you see on <a href="http://www.centamap.com/scripts/esrimap.dll?name=cent&amp;lg=EN&amp;tp=1&amp;cx=834547.761090852&amp;cy=815608.554535701&amp;zm=3&amp;sx=&amp;sy=&amp;sl=&amp;ss=0&amp;mx=834547.761090852&amp;my=815608.554535701&amp;ms=2&amp;ly=&amp;lb=&amp;lp=&amp;vm=&amp;ck=1&amp;ca=1&amp;cb=0&amp;mt=&amp;ts=0&amp;za=0&amp;zb=0&amp;click.x=381&amp;click.y=276" target="_blank">this
map</a>, (soon to be landscaped) and the 15x plot
ratio allowed the 62-storey tower of 1.26m sq ft to be built. </p>

<p>If Hong Kong is to regain its image as a free and fair economy
then it needs to get away from sweetheart deals with major developers. Tell
Cheung Kong it's no-go unless they agree to put the enlarged site (the godown
plus the Corridor Land) out to tender. And as for the artists, we are sure the
Government will find them some other unused space (perhaps at Kai Tak) but they
should not be abused as emotive pawns in the land game. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=488">CK Hutchison Holdings Limited</a></li>
				
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