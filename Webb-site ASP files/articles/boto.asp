
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

<script type="text/javascript">document.title="Deck the Halls with Boto";</script>

	<div class="summary">Christmas is coming, and with only 19 shopping days left (and even fewer market days) we're getting into the festive spirit. So for once, we'll write something positive about an overlooked HK company that makes a large portion of North America's artificial Christmas trees.</div>

<h2 class="center">Deck the Halls with Boto<br>
<span class="headlinedate">5 December 1999</span></h2>
<div class="rightpicbox" style="max-width:249px">
	<img alt="Christmas tree" src="../images/boto.jpg">
</div>
<p>With only 19 shopping days left before Christmas (in Hong Kong, every day is a
shopping day) we're beginning to get festive here at <i>Webb-site.com</i>. </p>

<p>It's not often we have anything positive to say about Hong Kong
stocks - regular readers will know us as critics of corporate governance and we
do our best to bring the worst examples to your attention. But this is the
season of goodwill, so we thought it would be nice to say something positive for
a change.</p>

<p>If you don't know what to get the one you love for Christmas,
then why not give her or him a few shares in <a href="http://www.boto.com.hk/" target="_blank">Boto
International Holdings</a> (stock code: 585). This small company makes a large
share of all the plastic (sorry, artificial) Christmas trees sold in America.
There's a rather fine example on the right. Boto is highly &quot;vertically
integrated&quot;, which means that its raw materials come in very basic forms,
particularly polymers and metal. It makes its own PVC rigid film, which is then
cut up and eventually becomes the leaves on the trees. </p>

<p>Last year 78% of Boto's turnover was from Christmas trees and
about 20% from other festive decorations. Just over 2% of turnover came from the
new product line of garden furniture. Using much of the same skills and
materials, the group is making a logical move to reduce the seasonality of its
business by using the slack winter months to make garden furniture, while the
months of April to September (particularly Jul-Sep) are the main shipping months
for Christmas trees. This should add to profitability in the long run. Sales of furniture
in the year to 31-Mar-99 were only HK$16.3m, but that is expected to increase as
they get past the pilot stage.</p>

<p>Last year 74% of sales were to North America and 22% were to
Europe, so they have expansion potential there. Asia-Pacific accounted for just
3.3%.</p>

<h3>Flotation</h3>

<p>Boto, founded in 1983, was floated on the Hong Kong Stock
Exchange on 10-Mar-97 with an offer price of $1.28 per share, issuing 125.4m
shares to raise $160.5m gross ($145m net). The new issue represented 25% of the
share capital, the minimum allowed. </p>

<p>Prior to going public, in the three years and seven months of
the track record they paid out dividends of $20m, $40m, $45m and $35m
respectively. The total of $140m represents in aggregate about 55% of the
profits for the period, not excessive. </p>

<h3>Track record</h3>

<p>Turnover and profits have increased every year of the 6-year
track record. EBITDA (earnings before interest, tax, depreciation and
amortisation) has been increasing at a rate of more than 20% per annum for the
last 3 years: </p>

<img class="center" alt="results" src="/images/boto.h1.gif">

<p>By the <a href="http://www.boto.com.hk/pdf/b585a99h.pdf" target="_blank">annual
report</a> on 14-Jul-99, the group claimed sales orders for the current year to
31-Mar-00 amounted to HK$665m. Gearing is relatively low. Debt net of cash at
31-Mar-99 was about $46m or about 10% of shareholders' funds of $465m (about
$0.86 per share). We have excluded $53.4m of convertible notes (including
accrued interest) from the debt figure (see below). The group probably has
swings in its working capital position due to the seasonality of the business. </p>

<p>The depreciation charge has been rising due to the recent
investments in plant and machinery to increase vertical integration as well
as&nbsp; the factory for the furniture business. That should be money well
spent. The EBITDA margin has increased partly because the group now makes all
its own PVC films (which end up as leaves on the trees). </p>

<h3>Corporate Governance</h3>

<p>In its first 2 years as a listed company, Boto has behaved well.
Accounts have been out on time, and the company has not indulged in property or
stock market speculation, nor has it tried to &quot;dot-com&quot; itself.
Indeed, it seems very focused on its core businesses. All the subsidiaries are
wholly-owned, so there are no difficult PRC joint venture parties to deal with.
There are no associate companies, and Boto's only equity investment is a 10%
holding in Bo Cheong Manufacturing Company Ltd, an unlisted company which makes
Christmas tree accessories. This investment is held in the books at a carrying
value of just HK$10,000. </p>

<p>The independent non-executive directors are Mr Alexander Reid
Hamilton, a former partner of Price Waterhouse, and Mr Oh Kok Chi, who is also
an accountant. </p>

<h3>Issue to SIIC</h3>

<p>On 13-Sep-97, which was the first possible day after the 6-month
lock-up following the flotation, Boto agreed to issue 40,128,000 new shares at
$1.53 per share to Shanghai Industrial Investment (Holdings) Company Ltd (<b>SIIC</b>),
which is the private Hong Kong window company of the Shanghai Government and
also controls Shanghai Industrial Holdings. The placing raised $61.4m gross
($60m net). </p>

<p>In retrospect the issue was good timing as it was settled on
30-Sep-97, days before the stock market crashed. The deal was managed by
Seapower Corporate Finance, who had also sponsored the flotation. The shares
then represented 7.4% of the enlarged issued share capital. As this is below the
disclosure threshold we don't know whether SIIC still holds the stock. However,
SIIC director Mr Zhuo Fu Min is still on the Boto board which would normally
indicate that the shareholding remains. The stated motive at the time was to
develop the PRC market, but sales there have been flat recently. </p>

<h3>Share Options</h3>

<p>Under Boto's share option scheme, on 3-Nov-97 (just after the
market crash) Boto issued 27.3m share options (equivalent to about 5% of the
issued shares) exercisable at $0.7936 per share between 7-May-98 and 6-May-00.
Of these, 21.5m options were issued to directors. As the share price continued
to fall, during the year ended 31-Mar-99 Boto granted a further 11.3m options
exercisable at $0.4688 per share between 24-Apr-99 and 23-Apr-01. Of these, 7.2m
went to directors. Exercise of all the options would raise $27.0m gross. </p>

<h3>Bonus Warrants</h3>

<p>Following approval at a Special General Meeting on 23-Jan-98,
Boto issued 1 warrant for every 10 shares held. The warrants are exercisable
between 4-Feb-98 and 3-Feb-00 at $1.05 per share. At the time of writing, they
therefore have 2 months left to run and are almost &quot;at-the-money&quot; with
the share price of $1.03. If they are exercised, the company will receive about
$56.9m gross. </p>

<h3>Issue of Convertible Notes to Walden</h3>

<p>On 5-May-98, Boto agreed to issue US$6.5m (HK$50.6m) of
convertible notes to 3 funds managed by <a href="http://www.wiig.com/" target="_blank">Walden
International Investment Group</a> (WIIG). Net proceeds were US$6.3m (HK$48.8m),
of which about US$3m was to be used for the construction of a new factory
complex for outdoor furniture (next to the existing factory in Shenzhen) and the
rest to repay bank borrowings and for working capital. </p>

<p>WIIG's founder and Chairman, <a href="http://www.wiig.com/team/team_intro.html#lip" target="_blank">Mr
Tan Lip-Bu</a>, has a master's degree in nuclear engineering from MIT, an MBA
from the University of San Francisco and has joined the board of Boto as a
non-executive director. </p>

<p>The notes are convertible into new shares at US$0.129 each (or
about HK$1.00) which represents a 14.6% premium to the average market price for
10 days prior to the agreement. The coupon is 3% per annum and maturity is
1-May-01. If the notes are not converted, then the note holders are guaranteed a
&quot;yield to put&quot; of 12% per annum. That means Boto would have to redeem
them at a premium to their nominal value so that the interest rate plus the
premium gives the holder an effective 12% annual return. </p>

<p>As Boto is still trading close to the conversion price, it has
been providing for the potential cost of the put premium in its results. This
provision would be reversed if the notes are subsequently converted. </p>

<h3>Market rating</h3>

<p>The current share price of $1.03 puts the company on a P/E of
just <b>4.6x</b> its basic EPS for the year-ended 31-Mar-99, or 4.8x
fully-diluted EPS. Results for the first half of this year (which, due to
seasonality, is the most profitable half) are due to be released before
Christmas. Last year Boto paid dividends of 11 cents (including a special
dividend of 2.2 cents) putting it on a historic yield of <b>10.7%</b>. </p>

<p>There are undoubtedly challenges in broadening its business to
outdoor furniture, but this should be well within their capability. The recent
increase in oil price will also affect their polymer raw material costs if it
holds up to next year, but as this affects all manufacturers in the sector, it
will probably get passed on to the customers. Boto is estimated to have a 40-45%
share of the US artificial tree market so it is in a strong position. </p>

<p>In Hong Kong, over 550 small companies like Boto make up just
10% of the market by value, while the largest 100 companies make up 90% of the
market value. So small-caps are under-researched and the good ones often get
overlooked amongst all the rubbish in the sector, until someone picks them up
and shines a light on them. </p>

<p>We think Boto deserves a chance. Why not put a few under the
Christmas tree? </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=110">Christmas picks</a></li>
				
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