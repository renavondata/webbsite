
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
		<a href="../index.html" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
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
		<li><a href="/dbpub/">Database</a></li>
		<li><a href="/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="/webbmail/login.asp">Log in</a></li>
				
				<li><a href="/webbmail/join.asp">Sign up</a></li>
				<li><a href="/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
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
				<li><a href="PECSregister.asp">PECS register</a></li>
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

<script type="text/javascript">document.title="Preventing cash shells";</script>

	<div class="summary">Webb-site proposes a new Listing Rule to prevent cash shells. The Cash Shell Test introduces equity discipline for existing companies and provides clarity for those proposing transactions and fund-raising. It should be welcomed by investors, regulators, issuers and their advisers. HKEx needs to build a proper sanitation system for this village rather than dig a new cesspit.</div>

<h2 class="center">Preventing cash shells<br>
<span class="headlinedate">3 March 2016</span></h2>

<p>There were, once again, a number of abusive transactions in HK last year, including wholesale 
disposals by listed companies of their core businesses without distributing the 
proceeds, and cases in which companies take the proceeds and deploy them into a 
completely new line of business without minority shareholders having any say in 
the matter. This is a huge deviation from the founding principles of the
<a href="https://en.wikipedia.org/wiki/Joint-stock_company" target="_blank">joint-stock 
company</a>, in which investors pooled their capital in "association", usually with limited 
liability and with a particular set of "objects" to pursue a joint enterprise.</p>
<p>There are also some companies that squat on vast amounts of surplus capital 
not needed in their core business, often accumulated from retained earnings 
(having paid no dividends or insufficient dividends), asset disposals, or from raising excessive 
amounts of cash in placements, open offers or rights issues for vague purposes 
such as "general working capital" when the real purpose is to position votes or 
discounted shares in friendly hands or to dilute other shareholders who have 
started to exercise their ownership rights. In HK, boards choose shareholders, 
not the other way around.</p>
<p>Unfortunately, there is nothing in the Listing Rules which will prevent a 
company from behaving this way. The risk that they will do so, particularly 
after management changes, results in even good companies being discounted for 
the risk of going bad, increasing the cost of capital for the economy, because 
their share prices are lower than they would be in a more trustworthy market.</p>
<p>Rather than address these problems, which occur on both the Main Board and 
GEM and at all size levels, the for-profit regulator, 
<a href="/dbpub/orgdata.asp?p=9643">Hong Kong Exchanges and 
Clearing Ltd</a> (<strong>HKEx</strong>, 0388), is now
<a href="https://www.hkex.com.hk/eng/newsconsul/blog/160302blog.htm" target="_blank">
proposing</a> a "Third Board". HKEx is rather like a village that refuses to 
build a proper sewerage system and instead digs another cesspit to accommodate a 
larger population, ignoring the fact that eventually nobody wants to live in a 
disease-ridden village. We'd rather build a proper sanitation system.</p>
<p>In a market where the vast majority of companies have a controlling 
shareholder, investors invest in a company in order to participate in its stated 
business. They accept that they will not have much influence over <em>how</em> 
that business is pursued, but they do at least expect that the company <em>will</em> 
pursue it, and will distribute any profits or excess capital that it does not 
need for that business rather than launch into something else, speculate in the 
markets, or simply hoard it in the bank.</p>
<p>So here's what we propose, to build the sanitation system:</p>
<ol>
	<li>At each Annual General Meeting, any company whose net cash exceeds 50% of its net tangible assets 
	(the "<strong>Cash Shell Limit</strong>"), must propose an ordinary 
	resolution to distribute at least the excess amount, and controlling 
	shareholders, directors and their associates shall be prohibited from voting 
	on that resolution.</li>
	<li>"net cash" means cash, deposits, bonds and financial assets (including 
	listed investments) minus interest-bearing obligations after deducting net 
	cash attributable to minority interests in subsidiaries.</li>
	<li>"net tangible assets" are those attributable to shareholders after 
	deducting minority interests in subsidiaries.</li>
	<li>Any Notifiable Transaction or Share Transaction which would result in a company breaching the Cash Shell Limit must be made 
	conditional on shareholders' approval of a distribution to bring it below the 
	limit. All shareholders would be permitted to vote on that distribution, so 
	that controlling shareholders can still direct strategy if they approve the 
	distribution.</li>
	<li>In each case, the distribution must be paid in cash within 60 days after 
	the AGM/EGM or completion of the transaction which triggers the breach, 
	whichever is later.</li>
	<li>No issue of equity for cash will be permitted if it will result in a 
	company breaching the Cash Shell Limit. To prevent avoidance, this 
	prohibition will also apply to convertible bonds, subscription warrants, 
	options or other instruments carrying equity rights, whether or not they are 
	listed.</li>
	<li>Banks, licensed deposit-taking companies, insurers and securities and 
	futures brokers (and their holding companies) would have a qualified 
	exemption if they can show that a statutory regulation requires them to keep 
	or achieve a level of capital that exceeds the Cash Shell Limit.</li>
	<li>Chapter 21 "investment companies" would be exempt from the AGM vote 
	until the first AGM that falls at least 12 months after listing, to give 
	them time to invest their initial fund-raising. </li>
</ol>
<p>Now, before anyone cries that this will make their shell-peddling business 
harder, let's be clear that it won't cure all ills. It will still allow creative 
acquisitions that do not trigger the reverse takeover rules because they don't 
produce a new controlling shareholder. However, the Cash Shell Limit will at 
least fix one major problem, and introduce a new level of equity discipline to 
the market. The Cash Shell Limit is expressed in terms of attributable net cash 
and attributable net tangible assets, not gross assets, because it aligns with 
the equity owned by shareholders.</p>
<p>The Cash Shell Limit is a bright-line test that everyone, including listed 
companies and their advisers, can understand. It removes some of the fog from 
the Listing Rules and reduces the need for subjective judgment by the Stock 
Exchange and Listing Committee which opens it to allegations of favouritism or 
negative bias when reviewing proposed transactions. It should also accelerate 
the transaction process. We would expect regulators, the Listing Committee, 
issuers and their advisers to be in favour of that.</p>
<p>The AGM vote will allow companies and boards with good reasons for cash 
retention to make their case to minority shareholders that they should leave the 
cash in the company by voting against the distribution.</p>
<p>There is ample precedent in our Listing Rules for giving minority 
shareholders a say over equity structure. Under existing rules, no company can 
conduct a rights issue or open offer larger than 1 for 2 without minority 
shareholders' approval. Refreshments of the 20% general mandate to issue new 
shares, other than the AGM approval, also require minority shareholders' approval.</p>
<p>This generous limit will also not impede the healthy development of 
businesses, some of which need to retain all their profits in order to expand, 
building new factories, investing in research and development, or making 
acquisitions. It will simply stop mature companies from hoarding cash that could 
be more usefully deployed by investors elsewhere in the economy.</p>
<p>To have any substantive impact, the Cash Shell Limit must apply to the whole 
market, not just to new companies or on a new board. You cannot fix the sewerage 
problem that way.&nbsp;</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14388">GEM Listing Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
		</ul>
	<hr>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="shells.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>