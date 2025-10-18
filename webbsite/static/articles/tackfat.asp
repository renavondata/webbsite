
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

<script type="text/javascript">document.title="Tack Fat: as clear as Mudd";</script>

	<div class="summary">Webb-site.com takes a close look at the latest accounts of garment maker Tack Fat (0928), and finds plenty to worry about. Amongst other issues, Tack Fat is fast approaching a 30-Sep expiry of an option to increase its stake in Mudd or lose the premium, and investors and the auditors do not have enough information on Mudd to reach a view. Meanwhile there was a previously undisclosed deposit at least 2 months before the latest $330m acquisition of XXESS.</div>

<h2 class="center">Tack Fat: as clear as Mudd<br>
<span class="headlinedate">6 August 2007</span></h2>
<p>On Sunday evening, garment maker Tack Fat Group International Limited (<b>Tack 
Fat</b>, 0928) finally released its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070805/LTN20070805002.pdf">
annual report</a> for the year ended 31-Mar-07, 5 days after the deadline. The 
accounts 
are not a pretty picture. Readers may recall that we last
<a target="_blank" href="toxicon.asp#TackFat">criticised</a> Tack Fat, amongst 
others, in relation to its issuance of toxic convertibles. </p>
<p>In the new annual report, the auditors KPMG qualified their opinion, something which was not mentioned 
when the results were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070726/LTN20070726120.pdf">
announced</a> on 26-Jul-07, and only came to light in an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801260.pdf">
announcement</a> on 1-Aug-07. The qualification relates to Tack Fat's stake 
in 50% associate Sino Legend Ltd (<b>Sino Legend</b>). Sino 
Legend's accounts are audited by a different firm, which was not named, which 
gave an unqualified audit opinion under US GAAP, but KPMG said <i>&quot;we have yet 
to receive sufficient information from this firm as we consider necessary...to 
form a conclusion as to the adequacy of their work for our purposes...&quot;</i></p>
<p>As we will show, that is not the only reason that investors should be 
concerned about Tack Fat.</p>
<h3>History</h3>
<p>On 24-May-04, Tack Fat
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040524/LTN20040524104.pdf">
agreed</a> to subscribe US$3.33m (HK$26.0m), or US$40 per share, for 83,333 
preferred shares in Sino Legend, representing 6.94% of the voting rights. Sino 
Legend owned 72% of the membership units of Mudd (USA) LLC (<b>Mudd USA</b>). The preferred shares 
in Sino Legend are entitled to a dividend of 8% per year
<i>&quot;when declared by the board of directors of Sino Legend&quot;,</i> are convertible 
into ordinary shares 1:1, and each has the same vote as an ordinary share. From 
its cash flow statements, Tack Fat does not appear to have received any dividend 
or distribution from Sino Legend so far.</p>
<p>Mudd USA in turn was a company newly formed to acquire the Mudd business from 
Mudd LLC (renamed Paper Denim and Cloth, LLC). The net 
profit after tax of Mudd USA was about US$27.8m in calendar 2002 and US$19.7m in 
2003. Tack Fat entered into a manufacturing agreement with Mudd USA, which Tack 
Fat gave as a reason for the investment.
<a target="_blank" href="http://www.poppyfields.net/poppy/songs/hippopotamus.html">
Mudd, Mudd, glorious Mudd</a>.</p>
<h3>A deposit</h3>
<p>What Tack Fat didn't mention in the announcement or
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040614/LTN20040614058.pdf">
circular</a> regarding that investment was that by the year-end of 31-Mar-04, 
almost 2 months before the investment was announced, Tack Fat had already made a 
<i>&quot;refundable deposit&quot;</i> of HK$58.8m for the $26m investment. The excess was 
subsequently refunded. This deposit was revealed in
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040802/0928/EWF116.pdf">
note 19</a> of its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040802/LTN20040802179.htm">
annual report for 31-Mar-04</a>. As you will see, this was the first of several 
such <i>&quot;refundable deposits&quot;</i> for acquisitions.</p>
<p>On 26-Jul-04, Tack Fat
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040802/LTN20040802016.pdf">
agreed</a> to buy a further 516,667 preferred shares in Sino Legend, 
representing 43.06% of Sino Legend's voting rights, for US$53.0m (HK$413.4m) from Lung 
Investment Holding, LLC (<b>Lung Investment</b>). As a result, Sino Legend was 
50.0% owned by Tack Fat, 47.19% by Lung Investment and 2.81% by Grandwell 
Investment Ltd.</p>
<p>The price is equivalent to US$102.58 per share, more than 2.5 times the price 
paid 2 months earlier. Tack Fat also agreed to pay Lung Investment US$10.0m 
(HK$78m) for an option to buy 250,000 preferred shares for US$15.65m, or a total 
of US$25.65m, equivalent to the same price per share as the main stake. The 
option is exercisable between 1-Apr-07 and 30-Sep-07, so there are less than 2 
months left, and if the option is not exercised, then the HK$78m premium will 
have to be written off in this year's income statement.</p>
<h3>Circular</h3>
<p>This was a &quot;Very Substantial Acquisition&quot; under the Listing Rules, and it 
took them almost 8 months to produce the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050321/LTN20050321104.pdf">
circular</a> dated 18-Mar-05. The delay was due to the time taken to extract the 
results of Mudd USA from the accounts of Mudd LLC, which retained some non-Mudd 
business when it sold Mudd to Mudd USA.</p>
<p>The circular contained accountants' reports on Mudd LLC and Sino Legend Group 
produced by HLB Hodgson Impey Cheng, a name which loyal readers of <i>
Webb-site.com</i> will recognise from <a target="_blank" href="toxicIPOs.asp">
this article</a>. The Sino Legend report reveals that it has 200,000 ordinary 
shares issued for $0.01 each (total $2,000), and 1,000,000 preferred shares 
issued for US$40 each (total US$40m). So the ordinary shares get a free carry. 
There is no report on Mudd USA, so it is not possible to tell how much it paid 
for the business acquired from Mudd LLC.</p>
<p>At 21-May-04 (the date it acquired the Mudd business), Mudd USA had 
intangible assets of US$100.35m, comprising US$85m of trademarks and US$15.35m 
of <i>&quot;customers relationship&quot;</i>. It had long-term debt of US$40m. Net assets 
were US$63.55m and net tangible liabilities were US$36.8m.</p>
<p>Sino Legend subscribed US$40m for the 72,000 Class A units of Mudd USA, plus expenses of $1.52m, 
total US$41.52m. Mudd USA also has 20,000 Class B units, and 8,000 nil-paid 
Class C units, which we suspect represent some kind of management incentive 
which only pay out in certain circumstances. At acquisition, Sino Legend's 
interest in Mudd USA's net assets was US$49.73m, or 78.26% of the total, which 
is 72/92, supporting our thesis that the C-units are not deemed part of the 
minority. As a result, Sino Legend booked negative goodwill of US$8.22m.</p>
<p>The consolidated balance sheet of Sino Legend at 30-Sep-04 (including Mudd 
USA) shows intangible assets of US$91.73m and net assets (before deducting 
minority interests in Mudd USA) of US$63.44m, so it had net tangible liabilities 
(before minorities) of US$28.3m. That is the last balance sheet we have seen for 
Sino Legend, and it will have changed substantially since then.</p>
<h3>Profit guarantee</h3>
<p>Lung Investment guaranteed that the audited consolidated/combined net profits 
before tax, charges for goodwill, minority interests and any extraordinary or 
exceptional items of the Sino Legend Group for the period from 21-May-04 (when 
it acquired Mudd) to 31-Mar-07 would be not less than US$108m. Lung Investment 
would pay Tack Fat 2.95 times the amount of any annualised shortfall in the 
profit attributable to the stake, within 7 days after delivery of the audited 
accounts of Sino Legend for the year to 31-Mar-07, which accounts were expected 
by 30-Jun-07. In other words, Tack Fat was purportedly buying the stake on a P/E 
of 2.95 times annualised guaranteed pre-tax profit of US$18m (HK$140m) 
attributable to the stake. Assuming a 30% tax charge, that is equivalent to 
about HK$98m after tax.</p>
<p>In the latest annual report, Tack Fat said that it was <i>&quot;in the process of 
completing the finalisation of the above compensation, if any&quot;.</i></p>
<h3>Sale of Mudd brand</h3>
<p>On 31-Mar-06 (US time), Mudd USA conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060407/LTN20060407081.pdf">
agreed</a> to sell the global rights to the Mudd brand outside of Greater China 
to <a target="_blank" href="http://www.iconixbrand.com/">Iconix Brand Group Inc.</a> 
(<b>Iconix</b>, <a target="_blank" href="http://www.cnbc.com/id/15837290?q=icon">
NASDAQ: ICON</a>), for US$88m (HK$686.4m). According to Iconix, when the deal
<a target="_blank" href="http://www.corporate-ir.net/ireye/ir_site.zhtml?ticker=icon&amp;script=410&amp;layout=11&amp;item_id=841970">
closed</a> on 12-Apr-06, the final purchase price was US$45m in cash and 
3,269,231 shares of Iconix. Details of the deal are included in this
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/857737/000095011706001669/0000950117-06-001669-index.htm">
8-K filing</a> by Iconix, including a copy of
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/857737/000095011706001669/ex2-1.htm">
the agreement</a>. Iconix also licensed the Mudd brand back to Mudd USA for the 
core jean and denim products for 2 years, with an option to renew for 5 years 
and a guarantee to pay Iconix certain (undisclosed) royalty levels.</p>
<h3>Clear as Mudd</h3>
<p>For the year to 31-Mar-06, Tack Fat booked a share of loss of Sino Legend of 
HK$35.8m, and for the year to 31-Mar-07, a profit of HK$114.1m. However, this 
would be <u>after</u> goodwill adjustments within Mudd USA and Sino Legend, so 
it is impossible to tell from this limited disclosure whether Mudd USA or Sino 
Legend were profitable at their core. The disclosure on Sino Legend is in note 
15 of the latest Tack Fat accounts. It tells us that Sino Legend's 
consolidated revenue in the latest year was HK$1,003m, compared with HK$621.5m 
in the previous year. Figures for Sino Legend's assets, liabilities and equity 
(the difference between the two) are disclosed, but there is no income statement 
or balance sheet. Assets undoubtedly include intangible assets, and liabilities 
include amounts due to Tack Fat as a supplier, and minority interests in Mudd 
USA.</p>
<p>It is unclear whether the brand sale of HK$686.4m is included in the revenues 
of Mudd USA (and hence Sino Legend) for the year to 31-Mar-07, or booked as 
other income, or what profit or loss Mudd USA booked on the transaction. It 
would be subject to some deduction for the book cost of the brands. Tack Fat 
does not provide any breakdown of Sino Legend's profit or loss between Mudd's 
core business and the sale of the brands. We also don't know whether Mudd USA 
has sold any or all of the shares it received in Iconix, and to what extent this 
contributed to Sino Legend's profit or loss.</p>
<p>Tack Fat now claims a 40% interest in Mudd USA, up from 36% the year before, 
which implies that Sino Legend now holds a 80% interest in Mudd USA, up from 72% 
a year earlier. This might be because the C-units have ceased to have a claim to 
equity, but we cannot tell.</p>
<p>Tack Fat's balance sheet at 31-Mar-07 includes an interest in associate (Sino 
Legend) of HK$546.5m. This comprises HK$261.1m (US$33.47m) of goodwill that Tack 
Fat paid Lung Investments when it bought 43.06% of Sino Legend, and HK$285.4m 
for Tack Fat's share of net assets of Sino Legend. We don't know to what extent 
those net assets are tangible.</p>
<p>In short, we&nbsp; consider Tack Fat's disclosure of the financial results 
and balance sheet of Sino Legend and its subsidiary Mudd USA to be grossly 
inadequate. If Tack Fat does not publish the relevant information then we are 
entitled to assume they have something to hide.</p>
<h3>Sales to Mudd USA</h3>
<p>Tack Fat's largest customer in the two years to 31-Mar-07 was Mudd USA, which 
bought garments worth HK$535.8m (2006: $412.0m) or 27.5% (2006: 24.9%) of Tack 
Fat's sales. At year-end, Mudd USA owed Tack Fat $205.5m (2006: $294.2m), 
equivalent to 4.6 months (2006: 8.6 months) of the year's sales.</p>
<h3>An XXESS deposit</h3>
<p>On 25-May-07, Tack Fat
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070529/LTN20070529160.pdf">
agreed</a> to buy, for HK$330m in cash, 90% of Best Favour Ltd (<b>Best Favour</b>), 
from Xbert Investments Ltd (<b>Xbert</b>), which is guaranteed by Mr Zhang Wen 
Kai, about whom we know nothing. The owner(s) of Xbert were not disclosed. Best Favour, through its 
subsidiaries, is <i>&quot;principally engaged in the fashion design and management of 
its XXESS brand of smart casual wear... through a chain of over 200 
self-operated and franchised retail apparel stores...across the north-eastern 
region of the PRC...&quot;.</i></p>
<p>The announcement says XXESS is <i>&quot;one of the leading apparel brands in the 
PRC.&quot;</i> We cannot find any web site for XXESS, or any mention of the products 
on the web. Such is the reach of the web, that when something is missing from 
Google, one begins to wonder whether it exists. On further inspection we see 
that the latest annual report now refers to it as XXEZZ, and there is indeed a 
brand of that name, and here is its
<a target="_blank" href="http://www.xxezz.com.cn/index_2.htm">web site</a>. But 
why didn't Tack Fat even get the name right in its acquisition circular?</p>
<p>The purchase price was supported by a valuation of 100% of Best Favour at 
$384m by BMI Appraisals Ltd at 30-Apr-07, although their report was not 
published. Readers may recall that name from
<a target="_blank" href="kunfair.asp">this article</a>.</p>
<p>Best Favour made unaudited net profit of HK$31.7m for the year to 30-Jun-06. 
The unaudited net assets of Best Favour at 30-Jun-06 were $87.6m. As this was 
only a Discloseable Transaction, not a Major Transaction under the Listing 
Rules, no accounts were published, and we don't know whether the net assets 
include intangible assets such as goodwill.</p>
<p>What the announcement and the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070618/LTN20070618105.pdf">
circular</a> dated 18-Jun-07 didn't mention, and what the annual report now 
reveals in note 18, is that by 31-Mar-07, two months before the agreement, Tack 
Fat had already placed a <i>&quot;refundable deposit&quot;</i> of HK$281.8m with Xbert. 
This shows a great degree of trust, given that there was no acquisition 
agreement at the time. A pattern of such trusting behaviour is emerging, because 
there was a deposit for the Mudd investment on or prior to the 31-Mar-04 
year-end. We don't know whether Best Favour group has been a customer of Tack 
Fat.</p>
<h3>Unlisted equity investment</h3>
<p>In the year ending 31-Mar-04,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040802/0928/EWF116.pdf">
note 17</a> reveals an investment of $15m in unlisted equity shares. We could 
not find any explanation of this investment. In
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060731/00928/EWF116.pdf">
note 16(b)</a> of the accounts for 31-Mar-06, the Chairman Mr Kwok Wing 
underwrote the carrying value by offering to buy it for $15m. The offer was made 
on 29-Jun-06, good for 4 months, and the Group was <i>&quot;in the process of 
evaluating the offer&quot;</i> when the accounts were finalised. According to note 
34(f) of the 31-Mar-07 report, the investment was disposed of to an <i>
&quot;independent third party&quot;</i> on 1-Jun-07. We'll probably never know what the 
investment was or why it was made.</p>
<h3>Another deposit</h3>
<p>The <i>&quot;other prepayments and receivables&quot;</i> as at 31-Mar-05 (see
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050729/0928/EWF116.pdf">
note 16(b)</a>) included a prepayment of HK$30m for an <i>&quot;investment in 
unlisted equity shares in a joint stock company in the PRC&quot; </i>which was 
awaiting a reorganisation of the investee and supposedly repayable within 1 year 
of the prepayment if the reorganisation did not complete. Two years later, this 
amount was still outstanding at 31-Mar-07 (note 18(c)), and is <i>&quot;refundable in 
cash in the event that such reorganisation is not complete within certain 
specific date.&quot; </i>Well it may be &quot;certain and specific&quot; to Tack Fat, but it 
isn't to us - greater disclosure should be made on this. What is this investee? 
What does it do? Has this investee also 
been a customer at any time?</p>
<h3>Conclusions</h3>
<p>Tack Fat's accounts are, quite literally, as clear as Mudd. Far greater 
disclosure is needed on the financial results and balance sheet of Mudd and Sino 
Legend, so that investors can understand whether Mudd is actually making a 
profit on its core business, whether it is able to service its accounts payable 
to Tack Fat, and what its net tangible assets are.</p>
<p>Investors also need to know whether Tack Fat will exercise its option to 
acquire 20.8% of Sino Legend before it expires on 30-Sep-07, and if not, why 
not. If the option is exercised, then Sino Legend and Mudd USA will become 
subsidiaries, and any accounts receivable will be eliminated on consolidation. 
If the option is not exercised, then Tack Fat will have to write off the $78m 
option premium and explain why it didn't want to take control of Mudd.</p>
<p>Explanation is also needed for why Tack Fat failed to mention, at the time of 
its initial investment in Mudd, and at the time of its recent investment in Best 
Favour, that it had already made substantial deposits for the deals prior to its 
previous year end and before any agreement on the investment and acquisitions 
had been reached. Explanation is also needed for the $15m unlisted equity 
investment (now sold) and the outstanding $30m prepayment for another investment 
which has been in limbo for over 2 years.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16315">BMI APPRAISALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15854">King International Investment Limited (KY)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=92">Accounting problems</a></li>
				
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