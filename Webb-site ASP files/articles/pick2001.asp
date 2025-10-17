
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

<script type="text/javascript">document.title="The 2001 Christmas Pick";</script>

	<div class="summary">Ho ho ho! No, that's not a list of Shun Tak directors - it's the sound of Santa Claus and time for Webb-site.com's annual gift to our readers, a small-cap delight to put in your stockings. Like Christmas, our stock tip comes just once a year. Last year's pick, Kingmaker, returned 53.2%, beating the HSI by 84.8%. Our 1999 pick returned 81.6% in two years. So what's in our sack for this year? Read on to find out.</div>

<h2 class="center">The 2001 Christmas Pick<br>
<span class="headlinedate">3 December 2001</span></h2>
<p><i>Webb-site.com</i> has been running three years now - in the
internet space, it helps to be not-for-profit from the outset! At Christmas 1999
we began a tradition of giving one positive recommendation from our portfolio
each year, something to brighten your festive season and a day off from bringing
you horror stories from Hong Kong's corporate governance crypt. </p>

<p>Before we tell you who we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our previous recommendations performed. </p>

<h3>2000's Pick</h3>

<p>Last year's pick on 4-Dec-00 was <a href="../dbpub/articles.asp?p=2288" target="_blank">Kingmaker
Footwear Holdings Ltd</a> (1170), which closed at $1.16 before our
recommendation. Well, a big round of <a href="../sounds/clap.wav"> applause</a> for the boys in boots! The shares
closed at $1.52 today, and during the year they made a 1:10 bonus issue, which
means for every 10 shares purchased then, you now hold 11.&nbsp; You also got
$0.105 of dividends during the year, for a total return of <b>53.2%</b>. Lovely jubbly.
If
you reinvested your dividends in the stock, you did even better, but let's not
be picky. All our calculations exclude dealing costs, by the way. </p>

<p>At roughly the same time, the Hang Seng Index, including reinvestment of
dividends, has lost 17.1% during the 12 months to 30-Nov-01 (we only have monthly
data). So if you put $1,000 in the HSI on 30-Nov-00, then a year later you had $829. Put $1,000 in
Kingmaker, and you'd have $1,532. So Kingmaker has out-performed the HSI by<b>
 84.8%</b>. </p>

<p>We still like Kingmaker. They grew turnover by 7.4% and earnings
per share by 15.6% in the year to 31-Mar-01, and were sitting on net cash of
around $376m or around $0.59 per share, more than enough to finance their
expansion which calls for a $250m factory in Zhongshan, PRC opening next year,
taking production up by 12 lines from the current 17, as well as continued
expansion from 5 to 8 lines in Vietnam. </p>

<h3>1999's pick</h3>

<p>On 5-Dec-99 we recommended Christmas tree maker <a href="../dbpub/articles.asp?p=4778" target="_blank">Boto
International Holdings</a> (0585), which showed a healthy first-year return of
23.3% compared with a 7% negative return in the HSI from 30-Nov-99 to 30-Nov-00
(dividends reinvested). </p>

<p>Last year we said we still liked the stock, despite reservations
about their internet strategy on <a href="http://www.drfestive.com" target="_blank">www.drfestive.com</a>.
If you held on to it (as we did), then you are a happy soul because since then
they have risen from $0.226 to $0.315 (as of tonight) and paid out $0.018 interim dividend
(the stock is still trading cum the final dividend of $0.007). That means
they've returned <b>47.3%</b> this year, and compounded with the previous year
they've returned <b>81.6%</b> in two years. Meanwhile the HSI, in the two
years to 30-Nov-01, has returned negative 22.9%. So Boto has out-performed the
HSI by 135.5%. </p>

<p>They've had a good run. The garden furniture business is
developing nicely - the latest interim report says that orders in hand are $157m
at 30-Sep-01, which compares with $65m at 15-Nov-00. However, they've also
diversified by investing in computer animated cartoons with <a href="http://www.imagi.com.hk" target="_blank">Imagi
Production Ltd</a> (now 82.5% owned) which makes <a href="http://www.zentrix.tv/" target="_blank">Zentrix</a>
(formerly Robotica). That's an unproven business and not within their core expertise of
manufacturing. </p>

<p>The stock still only trades on about 6.8x historic earnings
and we estimate 20% earnings growth to Mar-02 making the prospective p/e around
5.7x, but we've probably seen the best of the returns for now, and the
fiddling with technology investments necessitates a continuing discount for the
risk of &quot;accidents&quot;. </p>

<h3>This year's Pick</h3>

<p>Can we make it three in a row? Who knows? But let's give it a
try... </p>

<p>This year, our silky stocking-filler is <a href="http://www.irasia.com/listco/hk/tungtex/" target="_blank">Tungtex
(Holdings) Co Ltd</a> (0518). This company makes garments, traditionally in
silk, but has been diversifying into non-silk garments too as the quota
restrictions begin to drop away. They have factories in China, Malaysia,
Thailand and the Philippines. </p>

<p>The shares closed today at $1.43 with a market capitalisation
of $504m (US$64.6m). The directors hold 42.59% of the company, of which
Chairman and founder Benson Tung Wah Wing (<b>Mr Tung</b>) owns 36.93%. </p>

<p>Here's the track record: </p>

<img class="center" alt="" src="../images/tungtex1.gif">

<p>Fair warning: 91% of last year's sales were to North America.
Therefore, we can expect some drop in earnings in the current year to Mar-02,
perhaps as much as 25%. The Chairman warned as much, in the annual report dated
12-Jul-01 he said <i>&quot;The Group... foresees a fall in the sales turnover
and operating results for the first half of the coming year.&quot;</i> </p>

<p>We regard this as a temporary setback which the market has
probably discounted. The long-run outlook for Asian textile manufacturing as
positive, because of the vast supply of low-cost labour and the difficulty that
robots have handling anything soft. Trade globalisation under WTO means a
gradual dismantling of protective practices in developed countries such as the
quota system, which will tend to support the export flow from China and other
low-cost countries. </p>

<p>On the upside, Tungtex has been cautiously growing a retail
business in the PRC, with 25 stores opened by 31-Mar-00, 40 stores by 31-Mar-01,
44 at 12-Jul-01 and a target of 50 by 31-Mar-02. </p>

<p>The group pays out most of its earnings in dividends and for
good reason - take a look at this summary balance sheet: </p>

<img class="center" alt="" src="../images/tungtex2.gif">

<p>As you can see, over half the net assets, or $0.727 per share,
are in cash. In the past, management has shown a willingness to pay out some of
the surplus cash as special dividends, the last time being 1999. With interest
rates now at record lows, we hope that they will consider distributing surplus
cash this year rather than leave it sloshing around in the bank. Unless they
have some expansion plans to consume it, investors can make better use of it. </p>

<p>The operating properties are&nbsp; probably worth more than book
value because they are held at depreciated cost, including a 110,000 sq ft head
office <a href="http://www.centamap.com/scripts/esrimap.dll?name=cent&amp;lg=EN&amp;tp=1&amp;cx=840883.580671437&amp;cy=818995.850130943&amp;zm=1&amp;sx=&amp;sy=&amp;sl=&amp;ss=0&amp;mx=840883.580671437&amp;my=818995.850130943&amp;ms=2&amp;ly=&amp;lb=&amp;lp=&amp;vm=&amp;ck=1&amp;ca=1&amp;cb=0&amp;mt=&amp;ts=0&amp;za=0&amp;zb=0&amp;click.x=400&amp;click.y=299" target="_blank">building</a>
in <a href="http://www.centamap.com/scripts/esrimap.dll?name=cent&amp;lg=EN&amp;tp=1&amp;cx=840883.580671437&amp;cy=818996.070130942&amp;zm=3&amp;sx=&amp;sy=&amp;sl=&amp;ss=0&amp;mx=840883.580671437&amp;my=818996.070130942&amp;ms=2&amp;ly=&amp;lb=&amp;lp=&amp;vm=&amp;ck=1&amp;ca=11&amp;cb=4&amp;mt=&amp;ts=0&amp;za=0&amp;zb=0" target="_blank">Wai
Yip Street</a>, <a href="http://www.centamap.com/scripts/esrimap.dll?name=cent&amp;lg=EN&amp;tp=1&amp;cx=840883.580671437&amp;cy=818996.070130942&amp;zm=4&amp;sx=&amp;sy=&amp;sl=&amp;ss=0&amp;mx=840883.580671437&amp;my=818996.070130942&amp;ms=2&amp;ly=&amp;lb=&amp;lp=&amp;vm=&amp;ck=1&amp;ca=11&amp;cb=6&amp;mt=&amp;ts=0&amp;za=0&amp;zb=0" target="_blank">Kwun
Tong</a>, which was acquired many years ago. </p>

<h3>Corporate Governance</h3>

<p>The company was founded in 1977, has been listed since 1988 and
has kept its nose largely clean. It hasn't speculated in the property market,
stock market or technology sector. They seem dedicated to their core skills in
the textiles sector. In a stock market where fraudsters abound, it's nice to
find a solid track record where public shareholders have not been abused. </p>

<p>There are five executive directors: Mr Tung (aged 50), who was
the principal founder of the group, his brother Tung Siu Wing (52), a
co-founder, Cheung Kee Yuen (<b>Mr Cheung</b>, 54), who joined the company in
1982, Alan Lam Yiu On (39), who joined in 1988 and is now the deputy managing
director, and Raymond Tung Wai Man (36) who joined in 1988 and became a director
in 2000. The annual report does not mention any relationship to Mr Tung. </p>

<p>There are four non-executive directors. Two of the NEDs, Johnny
Chang Tak Cheung (appointed at listing in 1988) and Tony Chang Chung Kay (1994),
are each described as <i>&quot;director of a famous shirt making company&quot; </i>and
hold 1.54% and 1.36% of Tungtex respectively. We don't know whether that's the
same shirt making company or whether the two are related. Tony Chang is
described as independent, and although his shareholding exceeds the 1% guideline
in the listing rules, we see no problem with putting your money where your mouth
is. </p>

<p>The other declared independent NED is James Kwok Ho Kon,
appointed on 15-Jun-99 and who has no shareholding. He is the MD of a <i>&quot;European
trading company&quot;</i> with over 32 years in the garment industry. The other
NED is Kevin Lee Kwok Bun, a chartered accountant who has been on board since
1987 and owns 2.56% of Tungtex, having been an executive director until
1-Oct-95. </p>

<p>One piece of history; six years ago, in Apr-95 a BVI shell
company called Charter View proposed to buy a controlling shareholding in
Tungtex at $1.50 per share and make a general offer, but the deal was eventually
aborted. We don't know why the Tungs wanted to sell, but history shows that the
business has performed well since then. </p>

<p>The bidder's financial adviser, Goldwyn Capital Ltd, and its
directors <a href="http://www.ivey.uwo.ca/ami/Asian_Advisory_Board/John_Kao.htm" target="_blank">John
Kao Ying Lun</a>, and Joseph Wan Chuen Chung came in for some stick from the SFC for not taking adequate
steps to confirm that Charter View had the money for the bid. In Mar-98 Mr Wan's
registration was <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=090398" target="_blank">suspended</a>
for 12 months by the SFC after he withdrew his appeal against a Sep-96 decision
of the SFC. In Nov-98 Mr Kao's
registration was <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=8pr96" target="_blank">suspended</a>
for 4 months in 1998 by the SFC Appeals Tribunal. A few weeks later, the SFC
also <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=8pr117" target="_blank">suspended</a>
Goldwyn Capital's registration for the same length of time. Mr Kao is now a
director of HK-listed Yanion International Holdings Ltd, but that's another
story! </p>

<h3>Mr Tung increased his holding</h3>

<p>Until a restructuring in Oct-00, a company called Corona
Investments Ltd (<b>Corona</b>) held&nbsp; 146.35m shares (41.56%) of Tungtex.
Corona was owned by Mr Tung, his brothers Tung Gut Wing (a co-founder and former
Chairman) and Tung Siu Wing, and Mr Cheung. </p>

<p>The earlier percentage holdings in Corona are not known, but
just before the restructuring, Mr Tung had 56% of Corona, which held 146.35m
shares (41.56%). So his economic interest was 81.96m shares (23.27%). The other
three shareholders appear to have been bought out, with some of them taking
shares, because on Friday 27-Oct-00 Corona <a href="http://www.hkex.com.hk/listedco/sdi/20001031i.htm" target="_blank">reduced</a>
its stake to 130.05m shares (36.93%) and then the next Monday Mr Tung <a href="http://www.hkex.com.hk/listedco/sdi/20001103a.htm" target="_blank">increased</a>
his stake in Corona from 56% to 100%. So in effect, he increased his holding by
48.09m shares, and the disclosure says he paid $1.03 per share, which was the
closing market price on 27-Oct-00. </p>

<p>The full details of this transaction are private, but it is
likely that he was keen to remain above the voting takeover threshold (then 35%,
now 30%) under the arrangement. Assuming those details are correct, then he has
a strong incentive to increase the dividend payout in order to refinance the
roughly $50m he spent increasing his stake. </p>

<h3>Conclusion</h3>

<p>The earnings of Tungtex before interest, tax, depreciation and
amortisation (EBITDA) were about $120m in the year to Mar-00 and $166m last
year. The market cap of $504m, less net cash of $256m, leaves an enterprise
value (EV) of $248m. Assuming EBITDA falls back to the 2000 level in this year
to Mar-02, then that gives you EV/EBITDA ratio of just 2.1x. </p>

<p>Look at it another way. The historic p/e is about 4.2x, the
current-year p/e (assuming a 25% drop) is about 5.4x, but strip out the cash (and deduct interest on
that cash from the earnings) and you have a historic p/e of around 2.1x and a
prospective p/e of around 2.9x. That's so cheap that anyone would think clothes
are going out of fashion! </p>

<p>The dividend yield based on last year's payout is 14.3%. If
they keep that up, without any growth at all, you would get your money back in 7
years and still own the stock. </p>

<p>So there you go. We own the stock - in fact we've held it
several years. We are tipping a company which is almost certain to record a drop
in earnings this year, but has been a consistent earner with a favourable WTO
textiles regime ahead of it. But don't all rush in
at once, because it is not liquid. Always consult your broker or investment
adviser. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2288">KINGMAKER FOOTWEAR HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3529">TUNGTEX (HOLDINGS) COMPANY LIMITED</a></li>
				
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