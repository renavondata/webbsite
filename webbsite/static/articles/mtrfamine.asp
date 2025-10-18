
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

<script type="text/javascript">document.title="MTRC (0066) and the FAM";</script>

	<div class="summary">We remind the board of MTRC that although they hold a blanket waiver of the Listing Rules on connected transactions, they cannot agree to amend the Fare Adjustment Mechanism if they expect it to reduce profits, because it would breach their fiduciary duty to minority shareholders. If the Government really wants to run the transport system and set fares, then they should nationalise it.</div>

<h2 class="center">MTRC (0066) and the FAM<br>
<span class="headlinedate">27 March 2013</span></h2>
<p>Back in 2007, the <a href="../dbpub/articles.asp?p=11569">MTR Corporation Ltd</a> 
(<strong>MTRC</strong>, 0066) surrendered its fare autonomy, a key selling point 
in the 2000 IPO prospectus, and hand-cuffed itself to a &quot;Fare Adjustment 
Mechanism&quot; (<strong>FAM</strong>) linked to inflation in transport wages and the 
Composite Consumer Price Index. This was bundled into a set of &quot;Transaction 
Agreements&quot; relating to a so-called &quot;Rail Merger&quot; with the
<a href="../dbpub/orgdata.asp?p=396">Kowloon-Canton Railway Corporation</a> (<strong>KCRC</strong>), 
although in reality, it was a 50-year lease arrangement with a badly-designed 
rental formula, not a corporate merger. The KCRC continues to exist.</p>
<p>The details of this were <a href="../dbpub/articles.asp?p=11569">
well-documented</a> on Webb-site at the time, and you can also find them in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2007/0903/LTN20070903337.pdf" target="_blank">
circular</a> dated 3-Sep-2007. Prior to that deal, as the circular notes on page 
17:</p>
<blockquote>&quot;both the Company and KCRC have fare autonomy, and they set 
their fares in accordance with prudent commercial principles having regard, 
amongst other things, to prevailing market conditions, competition from other 
transport modes and their respective financial objectives&quot;</blockquote>
<p>In getting minority shareholders to swallow the FAM, one of the selling 
points, on page 17 of the circular, was that it would address:</p>
<blockquote>&quot;the common concern of public transport operators and the 
Government that fare adjustments should not be politicised as it is not 
conducive to efficiency and social harmony&quot;</blockquote>
<p>This was either naive or disingenuous. The more power a government holds to 
intervene in the process, including any scheme of control, the more politicised 
it becomes. If transport fares, whether on trains, buses or ferries, were a 
purely commercial and competitive decision, like the price of rice or 
vegetables, then the Government could validly say that it was not within their 
control, and consumers should shop around. Nobody really expects the Government 
to set the price of rice.</p>
<p>Page 161 (PDF) of the circular, which summarises the &quot;Operating Agreement&quot; 
between MTRC and the Government, states:</p>
<blockquote>&nbsp;&quot;The FAM shall be subject to review every five years 
upon request by either the Company or the Government.&quot;</blockquote>
<p>&nbsp;The Government has now requested such a review. Importantly, however, 
the circular continues:</p>
<blockquote><strong>&quot;If the Company and the Government do not reach 
agreement on amendments to the FAM within a specified period after commencement 
of the review, the prevailing FAM shall continue to apply.&quot;</strong></blockquote>
<p>The circular does not disclose what the &quot;specified period&quot; is. Under the 
terms of a disgraceful
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2005/0112/LTN20050112095.pdf" target="_blank">
announcement</a> on 13-Jan-2005, the Stock Exchange granted a blanket waiver of 
the connected transaction rules set out in Chapter 14A of the Listing Rules, so 
that MTRC would not need minority shareholders' approval to vary the terms on 
which it does business with its majority shareholder, the Government. This was 
done on the specious grounds that MTRC &quot;has been a public sector transport 
provider&quot;. Its past status as a public-sector entity (like the Airport 
Authority) is of course irrelevant; by listing MTRC and selling shares to 
minority shareholders, it became a private-sector entity.</p>
<p>The Stock Exchange is of course owned by
<a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388), the only other listed company controlled by the 
HK Government (shareholders can only elect 6 of its 13 directors). Indeed, the 
former CEO of MTRC is now the Government-appointed Chairman of HKEx.</p>
<p>However, this wholesale waiver of the Listing Rules does not remove the 
fiduciary duty that the directors of MTRC owe to all shareholders of MTRC, 
including the minority shareholders. <strong>It would be a breach of that duty 
to deliberately amend an agreement if they expect that it will reduce the future 
profits of MTRC, as that would reduce shareholder value, and would open the 
directors to potential law suits and their decision to judicial review on the 
grounds of unreasonableness</strong>.</p>
<p>
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=132416&amp;con_type=1" target="_blank">
A report today</a> quotes Michael Tien Puk-sun, a former Chairman of the KCRC, 
as saying that &quot;he believes the government is looking for a formula that will 
halve the fair increases produced by the current system&quot;. If nothing else is on 
the table to offset that reduction in revenue, then the board would be unable to 
approve it without breaching their fiduciary duty. They would be like turkeys 
voting for Christmas.</p>
<p>The Government and politicians keep 
<a href="http://www.info.gov.hk/gia/general/201303/26/P201303260466.htm" target="_blank">bleating</a> about their perceived need to 
introduce some kind of &quot;affordability&quot; factor into prices - but that is exactly 
what fare autonomy produced, because the MTRC would only be able to charge what 
the market could afford, given the alternative modes of transport and the costs 
of travel. Charge too much, and revenue drops as customers shift away; charge 
too little, and your revenue and profit drops. Besides, the Government is 
already engaging in massive subsidies to anyone over 65 (<a href="http://www.lwb.gov.hk/fare_concession/index_e.html" target="_blank">reducing 
fares to $2</a>, regardless of wealth) and provides a
<a href="http://www.labour.gov.hk/eng/service/witss.htm" target="_blank">
Work-Incentive Transport Subsidy</a> of $600 per month for those on lower 
incomes, regardless of what it costs them to get to work.</p>
<p>Incidentally, the Government has recently
<a href="http://www.info.gov.hk/gia/general/201303/20/P201303200417.htm" target="_blank">
announced</a> that the median monthly wage in Hong Kong in Q2 of 2012 was 
$13,400, a 1-year increase of 4.3%. That is more than the 3.7% 1-year
<a href="http://www.censtatd.gov.hk/press_release/pressReleaseDetail.jsp?charsetID=1&amp;pressRID=2986" target="_blank">
increase in the CPI</a> for Jun-2012, so real wages increased by about 0.6%. So 
don't believe everything you read about real wages going down.</p>
<h3>Liberalisation</h3>
<p>Rather than continuing to intervene and therefore politicise and distort the 
transport sector, the Government should conduct a root-and-branch liberalisation 
of the transport sector.</p>
<ul>
	<li>Return fare autonomy to the MTR.</li>
	<li>Abolish bus franchises. The franchised bus companies currently have to 
	run loss-making routes cross-subsidised by profitable routes; fares are set 
	by the Chief Executive of HK, making them highly politicised, and competing 
	bus operators are not allowed to enter. Instead allow any company to run a 
	bus service on whatever route and at whatever fares it chooses, as long as it conforms to safety requirements, 
	has enough landing slots (see below), and publishes its 
	routes and fares in advance.</li>
	<li>Auction blocks of landing slots at urban bus stops on say 3-year terms; these have a finite 
	capacity, so if you want to run a bus on that route, then you will need 
	adequate landing slots.</li>
	<li>Abolish the
	<a href="http://gia.info.gov.hk/general/201205/23/P201205230220_0220_94292.pdf" target="_blank">
	unofficial cap of 7071</a> on the number of non-franchised buses (NFBs), 
	which inhibits the growth of residential shuttle buses which could feed 
	traffic to the railways and increases the cost of school buses. A premium 
	for NFB licenses has already begun to develop, and we do not want them to 
	end up like taxi licenses.</li>
	<li>Introduce electronic road pricing, with variable charges based on the 
	amount of demand at different times of day, in order to fairly price the 
	roads and reduce congestion.</li>
	<li>Grant taxi licenses to anyone with a clean driving license and a 
	roadworthy taxi.</li>
	<li>Make sure that all vehicles pay the fair cost of polluting the air 
	through fuel duty, including reinstating diesel duty (currently zero) and 
	raising it to at least the level of petrol duty, and introducing a duty on 
	LPG.</li>
</ul>
<p>The alternative to liberalisation is, of course, nationalisation. If the HK 
Government wants to plan everything, and either subsidise even lower fares with 
taxpayers money or degrade the service through under-investment, then they 
should buy out the minority shareholders of MTRC at a fair price, buy out the 
bus and ferry operators, and show what a grand job they can do by following the 
&quot;big government, small market&quot; approach.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=396">KOWLOON-CANTON RAILWAY CORPORATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=29">Transport</a></li>
				
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