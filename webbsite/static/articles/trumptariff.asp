
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://webb-site.com/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="../index.html" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="https://webb-site.com/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="https://webb-site.com/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="https://webb-site.com/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
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
			<form class="box4b" method="post" action="https://webb-site.com/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="https://webb-site.com/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="https://webb-site.com/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="https://webb-site.com/dbpub/orgdata.asp" method="get" name="f1">
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
		<li><a href="../index.html">Home</a></li>
		<li><a href="https://webb-site.com/dbpub/">Database</a></li>
		<li><a href="https://webb-site.com/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="https://webb-site.com/webbmail/login.asp">Log in</a></li>
				
				<li><a href="https://webb-site.com/webbmail/join.asp">Sign up</a></li>
				<li><a href="https://webb-site.com/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
		<li><a href="https://webb-site.com/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="https://webb-site.com/pages/howtovote.asp">How to vote</a></li>
				<li><a href="https://webb-site.com/library/">Reference library</a></li>
				<li><a href="https://webb-site.com/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/vote/">Polls</a></li>
		<li><a href="https://webb-site.com/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="https://webb-site.com/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="https://webb-site.com/HAMS/">HAMS proposal</a></li>
				<li><a href="https://webb-site.com/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="PECSregister.asp">PECS register</a></li>
				<li><a href="https://webb-site.com/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="https://webb-site.com/books/">Webb-Books</a></li>
				<li><a href="https://webb-site.com/news/">Old newsletters</a></li>
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="https://webb-site.com/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="https://webb-site.com/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/pages/about.asp">About</a>
			<ul>
				<li><a href="https://webb-site.com/pages/aboutus.asp">About us</a></li>
				<li><a href="https://webb-site.com/photos/">Webb-Photos</a></li>
				<li><a href="https://webb-site.com/pages/mediaroom.asp">Media room</a></li>
				<li><a href="https://webb-site.com/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/contact/">Contact</a></li>
		<li><a href="https://webb-site.com/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="https://webb-site.com/pages/hkradio.asp">Radio</a>
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
		<li><a href="https://webb-site.com/pages/TV.asp">TV</a>
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

<script type="text/javascript">document.title="Trump's tariff own-goal";</script>

	<div class="summary">He apparently has no idea how much this will hurt US consumers and how little it will affect the trade deficit. Asian manufacturers and their investors can, to a large extent, sleep easy tonight.</div>

<h2 class="center">Trump's tariff own-goal<br>
<span class="headlinedate">3 April 2025</span></h2>
<p>US President Donald Trump has made so many fundamental errors with his so-called "Reciprocal Tariffs" announced 
yesterday (2-Apr-2025) that it is almost comical. One could forgive a President for being ignorant of economics, but any 
of the sycophants around him who were trained in economic theory appear too timid to stand up to him, and he's just 
imposed a giant own-goal on US consumers, including manufacturing workers. Here's why.</p>
<p>The formula adopted for determining the "worst offenders",
<a href="https://ustr.gov/issue-areas/reciprocal-tariff-calculations" target="_blank">as published</a> on the US Trade 
Representative's website, is incredibly crude. It takes the trade imbalance in goods with each country or territory 
(Exports minus Imports) and divides that by Imports, that is (E-I)/I, to determine the "effective tariff" rate charged 
by that country. So if the country buys almost no US goods (typically because it is poor) then that formula produces 
almost a 100% figure (I/I). Therefore, some of the poorest countries in the world, which are the providers of the 
lowest-cost labour for the most labour-intensive goods, are deemed to be the "worst offenders" on that measure. Items 
like toys, shoes, garments and finished electronics are among those products.</p>
<p>Trump's
<a href="https://www.whitehouse.gov/presidential-actions/2025/04/regulating-imports-with-a-reciprocal-tariff-to-rectify-trade-practices-that-contribute-to-large-and-persistent-annual-united-states-goods-trade-deficits/" target="_blank">
Executive Order</a> starts with a 10% additional tariff on all imports (except those already covered in certain other 
orders), but then there is an "<a href="https://www.whitehouse.gov/wp-content/uploads/2025/04/Annex-I.pdf" target="_blank">Annex 
1</a>" list of 57 offending territories which will be tariffed at higher rates. Many of those will be barely affected 
because their exports to the USA comprise mainly products which are exempt in "<a href="https://www.whitehouse.gov/wp-content/uploads/2025/04/Annex-II.pdf" target="_blank">Annex 
2</a>", for example, petroleum from Brunei, phosphate from Nauru (population about 12,000) or silicon chips from Taiwan.</p>
<p>But the largest tariff impact will be on imports from labour-intensive manufacturing countries including China, Vietnam, 
Cambodia, Thailand, Malaysia, Indonesia, India, Pakistan and Bangladesh. And since the tariffs on those countries are 
all comparable around the 50% level, US importers will have nowhere else to go, or at least nowhere that can quickly 
replace those manufacturing bases. So importers will not have much leverage against the suppliers, and will simply have 
to pay the tariffs and mark up the price they charge to US consumers.</p>
<p>But wait, you think, isn't this all about bringing manufacturing jobs back to the USA? No, because even at a 50% 
tariff, it will not become economic to set up factories in the USA to make sneakers, shirts, baseball caps or soft toys. It 
will still be cheaper to import them. Even smartphones use too much labour to make them in the USA. So US consumers will 
have to pay the price.</p>
<p>The higher prices will of course impact US consumer demand for those products, particularly items which are more 
discretionary, such as replacing a smartphone or buying a new laptop when the old one still works. But a 
lot of consumer goods are not that durable - how many people will darn a hole in a sock rather than buy a new pair? And 
will US sock makers come roaring back? Make American Socks Again? No, imported, high-tariff socks will still be cheaper.</p>
<p>So the reduced US demand will affect overall imports from the affected countries, but it will not even come close to 
rectifying the trade deficit. It isn't going to make poor countries rich, so that they can buy much more of US products, even if they take all 
of their actual (not fictional) import tariffs to zero.</p>
<p>So Asian manufacturing companies can, to a large extent, hold the line against US importers' requests for better 
pricing, except for the effects of reduced demand on discretionary items leaving excess capacity in some sectors. The 
likely currency impact of reduced exports will have some benefit to pricing as it reduces the labour cost in US dollar 
terms, but that's about all.</p>
<p>There are some other interesting effects for larger ticket purchases. It will become more attractive for US citizens 
to visit other countries (particularly those with zero or low sales taxes) and buy anything that they can carry/wear 
home, claiming that they left the USA with it and it isn't an import. So HK tourism should benefit from US tourists 
looking for their next iPhone or sneakers, as should British Columbia in Canada. Similarly, if you are in the market for 
a Swiss watch, a trip to Switzerland or (again) HK beckons!</p>
<p><em>&copy; Webb-site.com, 2025</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/natarts.asp?p=2467013">Trump, Donald John</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=32">Economics</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=142">Free trade</a></li>
				
		</ul>
	<hr>
<p><a href="https://webb-site.com/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="https://webb-site.com/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="https://webb-site.com/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="trumptariff.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>