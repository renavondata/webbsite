
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

<script type="text/javascript">document.title="Truly pointless bonus issues and splits";</script>

	<div class="summary">Why do boards propose bonus issues and stock splits? We look at the drawbacks and the false and misleading reasons often advanced for such actions. If liquidity is really a concern, then a reduction in board lot size is the simplest and best way to go. Splits and bonuses are more a sign of desperation than of a sophisticated, value-focused board.</div>

<h2 class="center">Truly pointless bonus issues and splits<br>
<span class="headlinedate">27 December 2010</span></h2>
<p>Bonus issues involve the issue of new shares to existing shareholders without 
payment, in proportion to the number of existing shares held. They are utterly 
pointless exercises, but somehow, every year, a dozen or more companies come 
up with false and misleading reasons to do them. Here are the drawbacks:</p>
<ul>
	<li>Bonus issues cost money - the company need to produce an announcement, 
	produce and print a circular, hold a general meeting to approve them, and 
	then send out share certificates to registered shareholders.</li>
	<li>Bonus shares do not create any value for shareholders - they just 
	divide the same pie into more slices. In fact, because of the cost of making 
	the issue, the company and investors are slightly worse off.</li>
	<li>Unless the issue ratio is N new shares for each existing share (where N 
	is a whole number), bonus issues create &quot;odd lots&quot; of shares - that is, some 
	holders will end up with a number of shares which is not a whole multiple of 
	one &quot;board lot&quot; - the minimum transaction size on the stock exchange. Odd 
	lots are usually only saleable at a discount to the market price, so that's 
	another loss, particularly for smaller shareholders who may only hold 1 
	board lot or a few.</li>
	<li>When the existing shares begin trading &quot;ex&quot; the entitlement to the bonus 
	issue, a portion of the company becomes untradeable until the new shares are 
	issued, thereby reducing the liquidity and locking up people's investments. 
	For example, in a 1 for 1 bonus issue, half of the value of your holdings 
	becomes frozen during the ex-entitlement period, until the new shares are 
	received.</li>
	<li>Often, the adjustment to the stock price caused by the bonus issue 
	results in a larger minimum bid-offer percentage spread. For example, a 
	stock priced at HK$4 which does a 1 for 1 bonus issue will have a $2 share 
	price, and the $0.01 tick will not change, so the percentage gap doubles 
	from 0.25% to 0.50%. <a href="spreadout.asp">Wider spreads</a> reduce liquidity.</li>
	<li>The adjustment to the stock price makes it harder to compare dividends 
	and stock prices from year to year, because the history has to be adjusted 
	for a fair comparison.</li>
</ul>
<p>Most of the problems listed above also relate to stock splits - where 
existing shares are split into a number of new shares. On top of that, the par 
value of the share changes, so that usually involves the production of a new 
colour of share certificates, to distinguish them from the old ones. There is 
also a complicated and outdated system of &quot;parallel trading&quot; for the old and new 
certificates, which should have been
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080422news.htm" target="_blank">
abolished</a> on 3-Nov-2008 but was
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080723news.htm" target="_blank">
deferred</a> and has has since vanished into a regulatory black hole.</p>
<p>Against 
these drawbacks, the only credible benefit of a bonus issue or stock split is 
that, if the size of a board lot is not reduced, then the dilution reduces the value of one board lot. For example, a 2,000-share lot 
at $8 is worth $8,000, and after a 1 for 1 bonus issue, that becomes 2 lots, 
each worth $4,000. Theoretically, that makes the stock more accessible to 
smaller investors, but there are practical reasons why it usually doesn't. These 
are:</p>
<ul>
	<li>The limiting factor for many investors is the minimum commission (in 
	dollars) charged by their broker. Whatever the percentage commission, there 
	is usually a minimum, such as HK$100. With a commission rate of say 0.25%, that 
	translates to a deal size of HK$40,000 (about US$5141). Any deal smaller 
	than that involves a higher effective commission rate. Most board lots are worth a lot less 
	than that, so they are not the limiting factor. See 
	<a href="../dbpub/mcap.asp?exch=all&amp;sort=ltvdn">this page</a> for a list 
	sorted by board lot value.</li>
	<li>Despite the fact that most of the public float is immobilized in the 
	central clearing system, CCASS (operated by HKSCC, which is owned by HKEx) and therefore settlements are paperless, investors still get charged &quot;scrip 
	fees&quot; by HKEx, usually via their bank, broker or custodian, when the first 
	dividend or other distribution is made after their purchase. This is an 
	amount per board lot, which is $1.50 for CCASS participants, but often 
	marked up by intermediaries to
	<a href="http://www.hsbc.com.hk/1/2/hk/investments/stocks/detail#local_charges" target="_blank">
	as much as $5</a>, and sometimes they don't wait until a dividend date to 
	charge you. So smaller board lots increase transaction costs - a $5 fee on a 
	$2,000 lot is 0.25%.</li>
	<li>Despite this, the Stock Exchange normally allows a stock split without a 
	board lot change as long as the resulting board lot is worth at least 
	HK$2,000, and at the time of writing there are 
	<a href="../dbpub/mcap.asp?exch=all&amp;sort=ltvup">411 stocks</a> (out of 1413) with 
	board lots worth less than $2,000.</li>
</ul>
<h3>Board lot reduction</h3>
<p>If a high board lot value is really inhibiting liquidity in your company's 
stock, then it is easier and better to 
just reduce the number of shares in a board lot. This has the following 
benefits:</p>
<ul>
	<li>You don't need a circular or shareholders' meeting to do it - a simple 
	announcement will do.</li>
	<li>Shares in the clearing system will remain saleable throughout - none of the 
	value gets frozen while you wait for bonus shares to be issued.</li>
	<li>You don't even need the archaic &quot;parallel trading&quot; arrangement. When 
	HKEx
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080305/LTN20080305232.pdf" target="_blank">
	cut its own board lot</a> in 2008, it simply announced the change and 
	carried on with the same stock code.</li>
	<li>No odd lots are created, as long as the old lot is divisible by the the 
	new lot.</li>
	<li>There is no change in the share price or increase in the percentage 
	bid-offer spread.</li>
	<li>No adjustments are needed when comparing current prices and dividends 
	with historic ones.</li>
</ul>
<h3>Laughable reasons</h3>
<p>With a completely straight face, sometimes directors give false and 
misleading reasons 
for a bonus issue or stock split. These are usually along the lines of claiming 
that they are &quot;rewarding&quot; shareholders or &quot;returning&quot; something to them, when it 
is mathematically false that they are doing so. Sometimes they speak of 
&quot;strengthening the capital base&quot; when they are not raising a single dollar of 
equity capital. Sometimes they even dress up the bonus issue as a &quot;dividend&quot; 
when it does not involve any return of capital or income whatsoever. Here are a 
few recent examples:</p>
<table class="txtable" style="font-size:10pt">
	<tr>
		<th>Announced</th>
		<th>Name</th>
		<th>Code</th>
		<th>Action</th>
		<th>Reasons</th>
	</tr>
	<tr>
		<td>9-Dec-2010</td>
		<td><a href="../dbpub/orgdata.asp?p=49959">Chigo Holding Ltd</a></td>
		<td>0449</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101216/LTN20101216381.pdf" target="_blank">
		9 for 1 bonus issue</a></td>
		<td>&quot;As a gesture of gratitude to the Shareholders for their loyalty to 
		and support of the Company&quot;<br></td>
	</tr>
	<tr>
		<td>1-Dec-2010</td>
		<td><a href="../dbpub/articles.asp?p=12091">Cash Financial Services Group Ltd</a></td>
		<td>0510</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101206/LTN20101206474.pdf" target="_blank">
		5 for 1 split, board lot increase from 2,000 to 6,000 shares</a></td>
		<td>&quot;The Board believes that the Share Subdivision will decrease the 
		trading spread as well as the volatility of the trading price&quot; (false: 
		at announcement date, the price was $3.00 with a $0.01 tick, so a 5:1 
		split cuts that to $0.60 with a $0.01 tick, <u>
		increasing</u> the minimum spread from 0.33% to 1.67%).<br></td>
	</tr>
	<tr>
		<td>18-Nov-2010</td>
		<td><a href="../dbpub/articles.asp?p=2087">Sa Sa International Holdings Ltd</a></td>
		<td>0178</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101130/LTN20101130451.pdf" target="_blank">
		1 for 1 bonus issue</a></td>
		<td>&quot;In recognition of the continual support of the Shareholders, the 
		Board decides to propose the Bonus Issue.&quot;</td>
	</tr>
	<tr>
		<td>27-Oct-2010</td>
		<td><a href="../dbpub/articles.asp?p=4762">Asia Commercial Holdings Ltd</a></td>
		<td>0104</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101026/LTN20101026412.pdf" target="_blank">
		5 for 1 split, board lot increase from 1000 to 5000</a></td>
		<td>&quot;The Directors are of the view that the increase in number of the 
		shares...will improve the liquidity in the trading&quot; (false: the value of 
		a board lot remains unchanged, since the lot size increases by the same 
		factor as the stock split)<br></td>
	</tr>
	<tr>
		<td>27-Sep-2010</td>
		<td><a href="../dbpub/articles.asp?p=18154">Heng Xin China Holdings Ltd</a></td>
		<td>8046</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/gem/20101008/GLN20101008027.pdf" target="_blank">
		1 for 30 bonus issue</a></td>
		<td>&quot;The Directors believe that a dividend in the form of the Bonus 
		Issue is a reward to the continuing support of the Shareholders&quot;<br>
		</td>
	</tr>
	<tr>
		<td>26-Aug-2010</td>
		<td><a href="../dbpub/orgdata.asp?p=30350">Lonking Holdings Ltd</a></td>
		<td>3339</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100924/LTN20100924114.pdf" target="_blank">
		1 for 1 bonus issue</a></td>
		<td>&quot;The Board believes that the Bonus Issue is a return to the 
		continual support of the Shareholders.&quot;<br></td>
	</tr>
	<tr>
		<td>23-Aug-2010</td>
		<td><a href="../dbpub/orgdata.asp?p=20037">Weichai Power Co., Ltd.</a></td>
		<td>2338</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100909/LTN20100909360.pdf" target="_blank">
		10 for 10 bonus issue</a> (yes, 1 for 1 would be simpler, but this is 
		China)</td>
		<td>&quot;The Board believes that the proposed Bonus Shares Issue will allow 
		the Shareholders to participate in the growth of the Company&quot; (false: 
		that is what shareholders were doing already. The Bonus issue does not change 
		anyone's share of the business).</td>
	</tr>
</table>
<p>What some boards may really be thinking is that some investors are dumb 
enough to regard a low nominal share price as a signal of value, regardless of 
how many shares are outstanding. This is naive when you consider that blue chips 
trade in the tens of dollars and are still popular with the most ignorant of 
retail investors. Even if a few punters really do think that a 90 cent stock is 
more likely to double than a $9 stock, they are greatly outnumbered, at least in 
asset terms, by larger and more sophisticated investors who see these gimmicks 
as a sign of desperation and poor judgment by corporate boards.</p>
<h3>Truly confusing</h3>
<p>One company recently caught our eye for proposing a bonus issue
<u>and</u> a stock split at the same time:
LCD-maker <a href="../dbpub/articles.asp?p=4996">Truly International 
Holdings Ltd</a> (<strong>Truly</strong>, 0732) is
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101130/LTN20101130707.pdf" target="_blank">
proposing</a> a 1 for 10 bonus issue and a 5 for 1 stock split. They could have 
had the same effect with a 9 for 2 bonus issue - every 2 shares would become 11 
shares. Truly confusing and Truly pointless. Indeed, even the company had to 
stop and think about how on Earth the timetable would work - then they
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101206/LTN20101206927.pdf" target="_blank">
came up with one</a> which goes ex-bonus on 13-Jan-2011 (4 days before the 
meeting to approve it) and ex-split on 20-Jan, with certificates for the 
bonus shares being dispatched on 28-Jan.</p>
<p>The board lot remains at 2,000 shares. 
Unless you own an even number of board lots, you will end up with an odd lot, so 
about half of shareholders will get an odd lot. Based on the Christmas Eve price of $12.68, the adjusted price will be about 
$2.305. The minimum spread at that level is $0.01, or 0.43%, compared with the 
current spread of $0.02, which is only 0.16%.</p>
<p>We did try to engage Truly on this issue by writing to them on 1-Dec-2010, 
inviting <a href="../dbpub/officers.asp?p=4996&amp;hide=Y">the Directors</a> to withdraw their 
proposals and adjust the board lot size instead if they wanted to, with the 
&quot;bonus&quot; that they would avoid appearing in this article. If they really 
wanted to slash the board lot value (currently $25,360), they could have just 
reduced the lot size from 2000 shares to 400 shares instead.</p>
<p>The reason given for the bonus issue was the usual load of rubbish: &quot;As a gesture 
to thank the the Shareholders for their loyalty to and support of the Company, 
the Board has decided to propose the Bonus Issue...The Directors believe that 
the Bonus Issue will also increase the Company's capital base....&quot;. They should 
consider this article our gesture in return, and of course, no capital is being 
raised.</p>
<p>It's a shame - Truly is one of the few companies that actually produces some 
form of quarterly results on a voluntary basis, and they get our praise for 
that, but we can all do without gimmicks like splits and bonuses.</p>
<h3>Shareholders accept cash, not confetti</h3>
<p>So to all those boards out there who are thinking about screwing around 
with their share prices in 2011 with splits and bonus issues, save us the 
trouble, and save us the cost and inconvenience. If you want to &quot;reward&quot; your 
shareholders, then run a good business, maximise shareholder value, and return 
all your surplus capital to shareholders. It's theirs anyway. Sending them 
confetti is no substitute.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4762">ASIA COMMERCIAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12091">CASH FINANCIAL SERVICES GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49959">Chigo Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18154">Heng Xin China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30350">Lonking Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2087">SA SA INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4996">TRULY INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20037">WEICHAI POWER CO., LTD.</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=102">Bonus issues and stock splits</a></li>
				
				<li><a href="/dbpub/subject.asp?c=122">Dealing costs</a></li>
				
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