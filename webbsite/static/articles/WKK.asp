
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

<script type="text/javascript">document.title="Webb blocks WKK privatisation";</script>

	<div class="summary">Webb-site.com confirms that its editor, David Webb, holds sufficient shares in Wong's Kong King (0532) to veto the backdoor privatisation offer from its Chairman and CEO Senta Wong, and will do so. We explain why.</div>

<h2 class="center">Webb blocks WKK privatisation<br>
<span class="headlinedate">5 June 2007</span></h2>
<p><i>Webb-site.com</i> notes the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070605/LTN20070605158.pdf">
announcement</a> this evening by <a target="_blank" href="http://www.wkkintl.com/">Wong's 
Kong King International Holdings Ltd</a> (<b>WKK</b>, 0532) and confirms that its editor, David Webb, holds sufficient shares in 
WKK to veto the proposed 
privatisation of the company by its Chairman and CEO, Senta Wong (<b>Mr Wong</b>), and will do so. 
We explain why.</p>
<h3>Background</h3>
<p>WKK is involved in two complementary businesses: the trading and distribution 
of materials and equipment used in electronics manufacture through
<a target="_blank" href="http://www.wkkdistribution.com/">WKK Distribution Ltd</a> 
and <a target="_blank" href="http://www.wkkes.com/">WKK Engineering Service Ltd</a>, 
and its own manufacturing of electronic products for customers through
<a target="_blank" href="http://wkktechnology.com/">WKK Technology Ltd</a> (nice 
video, by the way). It also owns a
<a target="_blank" href="http://www.wkktravel.com">travel agency</a>.</p>
<p>On 4-Aug-06, WKK
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060807/LTN20060807071.pdf">
announced</a> a proposed privatisation by its Chairman Senta Wong, at $1.38 per 
share, by way of a Scheme of Arrangement under the
<a target="_blank" href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H396">
Takeover Code</a>. This was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061018/LTN20061018113.pdf">
voted down</a> by independent shareholders on 18-Oct-06.</p>
<p>It is natural during privatisation attempts for the management of targets to 
downplay the prospects of the company they are trying to privatise. During the 
offer period, on 11-Sep-06, WKK
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060919/LTN20060919131.htm">
announced</a> its interim results for 30-Jun-06, which showed a 26% increase in 
turnover but almost no change in net profit at $85.5m. However, that was after 
a provision of $28.4m for impairment in the value of its PRC and 
overseas premises and also a then-unexplained increase in the provision for HK 
tax from $7.1m to $22.4m. </p>
<p>When the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070424/LTN20070424219.htm">
final results</a> for 2006 were announced on 17-Apr-07, the full year's HK tax 
charge included a provision of $8.1m for tax they should have charged in prior 
years - that is, it did not relate to 2006 profits. Also, the impairment on the 
properties was slashed by almost half to $15.7m. These two items still add up to 
non-recurrent items of $23.8m. The reported net profit was $250.1m, but adding 
back the non-recurrent items takes it to $273.9m, an increase of 52% on the 
previous year. This translates to basic EPS of about $0.392 per share, or diluted EPS (allowing for share options) of $0.379 per share.</p>
<p>Full-year turnover grew by a more modest 8%. Looking at the two main 
segments, external sales on the equipment and materials side grew by 18%, with 
operating profit up 20%, while the OEM side saw 2% growth but increased 
operating profit by 75% on higher margins. WKK has put together an impressive
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070424/00532/EWF105.pdf">
track record</a>. In the last 4 years, turnover has risen 108% from $2,405m to 
$5,012m, while net profit has surged from $22m to $250m, or $274m if you adjust 
for those non-recurrent items.</p>
<p>Year-end headcount has risen 45% from 4,284 (including 3,714 in the mainland) 
to 6,217 (including 5,674 in the PRC). The customer and supplier base is 
diversified, with 16% of turnover and 14% of purchases attributable to the 
largest customer and supplier respectively.</p>
<p>In the last quarter of 2002, WKK relocated all of its manufacturing 
facilities to the new WKK Technology Park in Changping, Dongguan, built at a 
cost of $400m. It has been paying down debt since then, reducing the net 
debt:equity ratio from 95% at the end of 2002 to a modest 28% at the end of 
2006, and at that rate it should be near debt-free by the end of 2007. Net 
tangible assets at 31-Dec-06 were $1,060m, or $1.50 per share.</p>
<h3>The Sunday Route - a backdoor privatisation</h3>
<p>Under Rule 31.1 of the Takeover Code, Mr Wong was prohibited from making 
another offer within the 12 months after 18-Oct-06 when the previous offer was 
rejected. 5 months later, on 19-Mar-07, the stock was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070319/LTN20070319081.HTM">
suspended</a> pending a &quot;very substantial disposal&quot;. You can't get more 
substantial then selling everything. After a month on ice, on 16-Apr-07, the day 
before the 2006 results were announced, the suspension was lifted and WKK
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070417/LTN20070417076.pdf">
announced</a> a back-door privatisation offer, in which WKK would sell all of 
its assets to Mr Wong and then distribute the proceeds to shareholders, leaving 
WKK as an empty, worthless shell which would be delisted and wound up. This 
structure has become known as the &quot;Sunday Route&quot; after PCCW Ltd (0008) first
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061003/LTN20061003192.pdf">
used</a> it to privatise Sunday Communications Ltd.</p>
<p>In our view (note: your editor is a member of the Takeover Panel), such 
transaction structures should be regarded by the SFC as &quot;Offers&quot; within the 
definitions of the Takeover Code, and hence the SFC should apply the Code to 
them. The Code defines an Offer as follows:</p>
<blockquote>
	<p>&quot;Offer includes takeover and merger transactions <u>however effected</u>, 
	including schemes of arrangement which have <u>similar commercial effect</u> 
	to takeovers and mergers..&quot; (emphasis added)</p>
</blockquote>
<p>Rule 2.10 also talks about alternative offer mechanisms, where it says:</p>
<blockquote>
	<p>&quot;where any person seeks to use a scheme of arrangement <u>or capital 
	reorganisation</u> to acquire or privatise a company....&quot;</p>
</blockquote>
<p>The Sunday Route and the current WKK privatisation involve a reduction 
of the share premium and share capital, which are a form of capital 
reorganisation, in order to distribute the proceeds of the disposal. But even if 
they didn't touch the capital, the transactions should still be captured within the meaning of 
&quot;Offer&quot; because they have a <u>similar commercial effect</u> to a takeover. WKK 
shareholders would end up with cash in exchange for their shares, and the 
offeror would end up with 100% of the business. If that isn't a takeover, then 
what is? The definition makes clear that it is the end result that matters, 
not how it is effected.</p>
<p>If the Takeover Code is not to become a document of purely historical 
interest, routinely avoided with the Sunday Route, then the SFC must interpret 
the Code to include it.</p>
<h3>The Second Offer</h3>
<p>Although there has 
been no change to the relevant Stock Exchange Listing Rules since the Sunday 
deal (and the SFC has not applied the Takeover Code), there <i>has</i> been a change to 
the way the Listing Rules are <i>applied</i>. In the Sunday deal, the company split the 
transaction into a sale and a distribution, so that after Sunday had sold all 
its assets to its parent on a simple majority vote, shareholders were forced to choose between 
holding a suspended cash shell, or approving the distribution and delisting, 
which is like asking a chicken whether it prefers to be roasted or fried. By 
contrast, in the WKK deal, the Exchange has required the whole thing to go to a 
single vote with the standard of approval that normally applies to 
privatisations under the Takeover Code.</p>
<p>The announcement states:</p>
<blockquote>
	<p>&quot;The Stock Exchange has requested the Company to apply the voting 
	standard imposed by Rule 6.12 of the Listing Rules to <u>all Proposals</u>. 
	To comply with Rule 6.12...the Board...will apply the Required Voting 
	Standard to such resolution.&quot; (emphasis added) </p>
</blockquote>
<p>This voting standard is the one adopted by Listing Rule amendments on 
31-Mar-04, which mirrored
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=02pr5">
amendments</a> to the Takeover Code on 17-Jan-02, which in turn followed our 
article <a target="_blank" href="hobsonschoice.asp">Hobson's Choice</a> when <i>
Webb-site.com</i> 
brought the issue to regulators' attention on 14-Jan-01. The Voting Standard applies 
the same threshold to delistings as is applied to compulsory purchases of shares 
after a general offer. That is, if 10% of the independent shareholders (to whom 
the offer applies) reject the proposal, then it fails. So investors at least have 
this protection, although they do not benefit from all the other rules of the 
Takeover Code that would normally apply.</p>
<p>According to the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070604/LTN20070604114.pdf">
privatisation circular</a> dated 4-Jun-07, as of 29-May-07, WKK had 708,795,964 shares in issue, 
of which 476,657,458 shares are held by the &quot;Interested Shareholders&quot;. Between 
the announcement of 16-Apr-07 and the circular, another shareholder, Shanghai 
Holdings Ltd, controlled by the Wong family's trust, has been unearthed, which 
holds (including a subsidiary) 7,950,628 shares. So in total, 484,608,086 shares 
will abstain from voting. There are a further 112,000 vested employee 
options which could be exercised before the vote and might be regarded as 
independent. That takes the total shares which could vote to 224,299,878 shares, 
or 31.64% of the enlarged share capital.</p>
<p>It therefore takes 10% 
of these, or 22,429,988 shares, to veto the privatisation. <b>David Webb holds more 
shares than this (but less than the 5% legal disclosure threshold), and will veto 
the bid.</b></p>
<p><i>Note: </i>in tonight's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070605/LTN20070605158.pdf">
announcement</a>, WKK noted that David Webb does not appear on the share 
register. That is true for nearly all public shareholders in HK-listed 
companies, because they hold their shares through banks, brokers and custodians, 
who in turn hold them through CCASS, the Central Clearing and Automated 
Settlement System. CCASS also allows investors to participate directly. CCASS 
then holds all these shares through HKSCC Nominees Limited, the <i>de facto</i> 
depository, so that is the name which appears on the share register of listed 
companies.</p>
<h3>Why we are blocking the offer</h3>
<p>The offer at $1.65 per share values WKK at a P/E of only 4.4 times its 
adjusted diluted 2006 EPS, and at only 1.1x its net asset value. Electronics 
manufacturing companies of comparable size trade on much higher valuations 
without any privatisation offer on the table. For example, Fujikon Industrial 
Holdings Ltd (0927), of which David Webb holds over 5%, trades on a P/E of 8.6x 
Sep-06 trailing earnings and 1.98x NAV. Its market capitalisation is $857m. Alco 
Holdings Ltd (0328), also in electronics manufacturing, of which David Webb 
holds under 5%, is on a P/E of 8.1x Sep-06 trailing earnings and 1.60x 
NAV.</p>
<p>It is true that WKK had a great year in 2006, and there may, depending on 
market conditions, be some pullback in 2007, but we are quite prepared to accept 
some earnings fluctuation in return for long-term growth, and so, obviously, is 
Mr Wong. With a second offer after 5 months, he is obviously in a hurry to 
privatise the company before its value becomes more apparent to the market.</p>
<p>We met with Mr Wong on Friday afternoon (1-Jun) at the offices of his adviser, 
Standard Chartered, and communicated our intentions to him. We can appreciate, 
from his perspective, that there are costs involved to remaining public, 
including retention of independent directors, listing fees, producing and 
printing interim and annual reports, and other disclosure costs. We also accept 
that the market has been slow to recognise the value being built in the business 
since its trough in 2002. Industrial stocks in general have been ignored in the 
last two years as the market focussed on hyping Chinese consumer stocks, 
gambling stocks, and natural resources plays.</p>
<p>He told us that although he had no plans to do so, one of his future options is to sell the business and, in his 
view, this would be easier if the company were private. We disagree. It would 
destroy the value of the listed status and hand to Mr Wong the upside on a sale 
of the business.</p>
<p>The offer at this level is nothing more than a cry for attention to this overlooked 
and undervalued stock, and as we told him, if he is just seeking attention, then 
he's got it. Mission accomplished. On the other hand, if he really wants to privatise WKK, then he 
should make a fair and reasonable offer that we and the other shareholders could support. 
Having two failed offers would stretch his credibility if he were to make a 
third offer in the future after investors had again been proven right to hold on. So 
if he really wants to privatise, we said, then now is the time to do it.</p>
<p>We note that Mr Wong has stated in tonight's announcement that he will not 
increase the offer. He also stated that he will not make another offer within 12 
months. Of course, if the Takeover Code applied to this offer, then that 
statement would be true anyway, because as noted above, the Code prohibits 
another offer within 12 months of a failed offer. However, this statement 
doesn't rule out a takeover by a third party, should one come along. A buyout 
led by a private equity firm would be one way for Mr Wong to manage his exit.</p>
<p>We estimate that 
fair value of this stock to be around 8x trailing earnings, or over $3 per 
share, although in these particular circumstances, we would be prepared to leave 
a modest discount on the table. Let's make that clear - based on all current 
information, we would reject an offer 
below $2.50, and even at that price, we would be surrendering some value. 
Whether other shareholders would accept that price we cannot say.</p>
<p>While we&nbsp; don't expect this stock to reach fair value overnight, if Mr 
Wong commits to keeping WKK public and improves investor relations, treating 
them as well as WKK treats its customers, suppliers and employees, then there is 
no reason why it should not do so in the medium term. In the short-term, the 
shares may come under selling pressure from hedge funds and others who had 
expected to exit at $1.65, but this is not a consideration in our decision. We 
are acting to preserve long-term value for all shareholders.</p>
<h3>The circular</h3>
<p>Not being a document under the Takeover Code, the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070604/LTN20070604114.pdf">
circular</a> dated 4-Jun-07 falls short of the disclosure that would be required 
by the code. It does, however, contain a letter from &quot;independent&quot; financial 
adviser DBS Asia Capital Ltd (<b>DBS</b>). This is the same firm which advised 
shareholders the last time to accept the offer at $1.38. Those who rejected that 
advice have been proven right. Parent DBS Bank Ltd, incidentally, is a banker to 
WKK group. You might think that constitutes a conflict of interest, but they 
don't.</p>
<p><i>Webb-site.com</i> warned DBS some weeks ago (without disclosing the amount 
of our then shareholding) that we would be opposed to the offer. Interestingly, 
last time around, DBS came up with 15 companies which they regarded as 
comparable, including 5 loss-makers. This time, there are only 7, of which 2 are 
loss-making. Vast chunks of the electronics manufacturing industry, including 
the companies we mentioned above, are omitted. None of the 7 is currently under 
privatisation offer, so their share prices do not reflect any bid premium which 
would be needed to secure a privatisation, and DBS does not analyse previous 
successful privatisations.</p>
<p>Even then, the mean P/E of the 5 profit-makers is 9.64, and the median 8.84. 
which justifies the comments we made above. Indeed, at 8.84-9.64x basic EPS (the 
measure they used), WKK would be at $3.16-$3.45 without a bid premium, so our 
valuation is conservative.</p>
<p>Even DBS grudgingly admits that it has a problem:</p>
<blockquote>
	<p>&quot;If solely based on the PER of the Comparable Companies, the Proposed 
	Distribution per Share may not be seen to be entirely fair and reasonable&quot;</p>
	<p>and</p>
	<p>&quot;it should be highlighted that the Proposed Distribution per Share does 
	not compare favourably to the prevailing valuations of the Comparable 
	Companies on a PER basis.&quot;</p>
</blockquote>
<p>In a comparison of price to Net Asset Value, DBS finds the mean of the 
comparable companies to be a rather inconvenient 1.58, compared with 1.10 in 
this offer. So instead, it takes the median of 0.87 and concludes that the P/NAV 
is fair and reasonable. We disagree, but in any event, we accord greater 
weighting to the earnings.</p>
<p>DBS also trots out the old chestnut about the <i>&quot;limited liquidity&quot;</i> in 
the shares, which has been in every privatisation document since paper was 
invented. We don't know of any company which has <u>unlimited</u> liquidity, do 
you?</p>
<p>On the specific issue, though, the circular (outside of the DBS letter) notes 
that in the 180 days prior to the offer, the average daily turnover was 798,388 
shares or <i>&quot;only 0.1%&quot;</i> of the total issued shares. In fact, that should be 
0.113%, or 13% more than they suggest, but in any event, there are about 240 
trading days per year, so that equates to 27.1% per year, or almost the entire 
free float. To put this 0.1% in perspective, Johnson Electric Holdings Ltd 
(0179), a company 15 times larger, had turnover of 0.205% per day in the same 
period. So yes, small caps are less liquid then blue chips, but WKK is not 
unusual in this respect.</p>
<p>After all that, DBS concludes that despite the P/E 
being far below all of the comparable companies, none of which is under offer, the 
proposals are fair and reasonable. What did you expect them to say?</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5017">WONG'S KONG KING INTERNATIONAL (HOLDINGS) LIMITED</a></li>
				
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