
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

<script type="text/javascript">document.title="Questions on Teamway (1239) and a bit of soccer";</script>

	<div class="summary">An HKEX decision last week led us to discover an inflated acquisition that looks like a cash extraction exercise, possibly to cover an earlier outlay of "earnest money". A sudden surge in profits of the acquired consultancy coincides with a Chinese takeover of troubled soccer team A.C. Milan, or Rossonori, which prints more red ink than black, and a deeply-subordinated loan to its Chairman.</div>

<h2 class="center">Questions on Teamway (1239) and a bit of soccer<br>
<span class="headlinedate">22 October 2017</span></h2>

<p>A recently-published <a href="../codocs/HKEXLD112-2017.pdf" target="_blank">HKEX Listing Decision</a> (<strong>LD</strong>) 
caught our eye last week. As usual, the exchange anonymised it, but we've 
decoded most of it, so now we're going to take you on a journey through some 
rather dubious transactions, and just like any news media, there's a bit of 
sport at the end.</p>
<p>The LD case concerns an unsuccessful attempt by <a href="../dbpub/orgdata.asp?p=133524">
Teamway International Group Holdings Ltd</a> (<strong>Teamway</strong>, 1239, 
formerly Jin Bao Bao Holdings Ltd) to dispose of its original packaging business 
and embark on a flimsy new consulting business while retaining its listing. However, the LD is more 
notable for what it missed, as we reveal below. Teamway is known as 
"Company A" in the LD.</p>
<p>Teamway was listed on 18-Nov-2011 as a packaging products business. 
On 10-Nov-2016, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/1110/LTN20161110704.pdf" target="_blank">
announced</a> the acquisition of <a href="../dbpub/orgdata.asp?p=12110687">Treasure Found Investments Ltd</a> (<strong>TFI</strong>, 
BVI) for HK$250m in cash. TFI owns
<a href="../dbpub/orgdata.asp?p=1791808">PV Advisory Services Ltd</a> (<strong>PVAS</strong>). The deal
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/1114/LTN20161114833.pdf" target="_blank">
completed</a> 4 days later. In the LD, TFI is known as "Subsidiary B". The 
announcement named the vendor as Shining Praise Ltd (BVI), the owner of which 
was not disclosed. However, the LD is more direct, stating that Subsidiary B was acquired from "Mr C", who is a director of Subsidiary B. HKEX 
says that Subsidiary B "relies heavily on Mr C to source its clients and business". 
If you know who Mr C is, <a href="../contact">please tell us</a>. Teamway's 2016 
annual report does not name any senior management.</p>
<p>According to the annual return at the HK Companies Registry, PVAS had only 1 director at 28-Jul-2017, 
Mr <a href="../dbpub/positions.asp?p=11796604">Chan Ka Wing</a>. Incidentally, he became an ED 
of <a href="../dbpub/orgdata.asp?p=1859028">Dongwu Cement International Ltd</a> 
(0695) on 1-Sep-2017.</p>
<p>According to the acquisition announcement, TFI/PVAS was involved in 
"provision of consultancy and strategic services in relation to financial 
planning, accounting, valuation and company secretarial". It had a net loss 
before and after tax of HK$2.7m in 2014 and HK$1.3m in 2015. No figures for 
turnover were given. Miraculously, it's net profit for the 10 months to 
31-Oct-2016 had improved to HK$14.4m while the unaudited net assets were said to 
be HK$115.2m at 31-Oct-2016.</p>
<p>This net asset figure is hard to believe when you look at the position 2 
weeks later, on completion of the acquistion. In note 30 of the 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0426/LTN20170426491.pdf" target="_blank">
annual accounts</a> at 
31-Dec-2016, Teamway shows that it acquired net assets (mostly bank balances) of 
just CNY14.05m (HK$15.92m), or about HK$100m less than Teamway claimed existed 
at the end of October. <strong>In short, it appears that the announcement was 
false and misleading. We call on the SFC to investigate that.</strong></p>
<p>The deal was purportedly protected by a profit guarantee of HK$30m for 2017, 
with the vendor promising to repay 8.3333 times any shortfall (up to the full 
HK$250m), but the vendor is just a BVI company, so if it had already disbursed 
the proceeds, the guarantee would be worthless, as there was no escrow or 
security disclosed.</p>
<p>The acquisition of TFI was treated by Teamway as a "Discloseable Transaction" 
under the Listing Rules, so no accountants' report was provided and no 
shareholders' approval was needed. However, the consideration of HK$250m was 
47.0% of Teamway's total assets of CNY456.6m (HK$532.1m) at 30-Jun-2016, or 
97.7% of its net assets of CNY219.6m (HK$255.9m).</p>
<div class="regbox">
<p>This highlights a huge gap in the Listing Rules: there is no test of the 
amount paid relative to the buyer's assets or net assets. Instead, under Listing 
Rule 14.09, when buying "equity capital" (shares in another company) the 
"assets test" looks at the total assets attributable to the equity. In this 
case, that was the total assets of PVAS, which were minimal. The rule should be amended to use as 
the numerator the greater of the price paid and the attributable assets, because 
implicitly, the price paid shouldn't be more than the assets are worth to the buyer.</p>
</div>
<h3>What the regulators missed</h3>
<p>Here's what the regulators missed. The announcement didn't mention that the key 
subsidiary, PVAS, is a HK company which changed its name on 18-Oct-2016, just 3 
weeks before the deal. Prior to that, it was named "Pacific Vision Advisory 
Services Limited". PVAS was a 100% subsidiary of <a href="../dbpub/articles.asp?p=3473">Pacific Plywood Holdings Ltd</a> (<strong>PP</strong>, 0767) until some time 
after 30-Jun-2016. In its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0915/LTN20160915234.pdf" target="_blank">
2016 interim report</a>, PP stated that PVAS recorded revenue of just HK$350k 
and a loss of HK$1.353m in the half year, and:</p>
<blockquote>&nbsp;"As this business has underperformed and recorded continuous 
losses for the past years, the Group realised this business by selling [PVAS] 
subsequently after 30 June 2016".</blockquote>
<p>That sale was too small to be announced, but we can tell you what PP got 
for it. Look at note 28 of the 2016
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0427/LTN201704272550.pdf" target="_blank">
annual accounts</a> of PP, on disposal of subsidiaries. They do not state the 
names of subsidiaries sold, but during the year, based on the subsidiary list in 
note 1, we can see that they sold only 2 subsidiaries - a forestry business, and PVAS. The 
combined proceeds were HK$24.5m, generating a gain of HK$16.201m.</p>
<p>Note 18 of the PP interim report states that during the first half, they sold 
the forestry business for HK$10m, that it had net liabilities of $1.425m, and 
therefore the gain on that was $11.425m. So we can subtract that from the 
full-year figures. So we infer that PVAS was sold for HK$14.5m, and 
generated a gain of $4.776m, implying net assets of $9.724m. PP did not 
book any revenue from PVAS in the second half of the year before selling it.</p>
<p><strong>So PP apparently received HK$14.5m for a loss-making secretarial firm with 
year-to-date revenue of $0.35m and net assets of $9.724m, and less than 
5 months later, it was sold to Teamway for $250m in cash.</strong></p>
<p>The LD states that from July 2016 to April 2017, the revenue of Subsidary 
B (PVAS) shot up to HK$230m. However, only 2% was from recurring corporate 
secretarial services, with the remaining 98% generated from mostly non-recurring 
business. Of the $230m, 70% was derived from just 1 transaction with 1 client, 
whilst 10% came from the second-largest client. The 2016 annual accounts of 
Teamway, note 5, shows that in the final 47 days of 
2016 since the deal completed, PVAS generated revenue of CNY145.449m 
(HK$164.8m), of which CNY140.024m (96.3%) came from a single 
customer.</p>
<h3>For SFC investigation</h3>
<p>Given the lack of substance and poor prospects of PVAS right up until it was 
sold by PP, it seems highly likely that Teamway paid a deliberately-inflated 
price for TFI and PVAS so that it could extract value from the 
company. <strong>The SFC should investigate this transaction.</strong></p>
<p>The story goes back further than that though. On 21-Jan-2015, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0121/LTN20150121800.pdf" target="_blank">
announced</a> that <a href="../dbpub/natperson.asp?p=2388452">Liu Liangjian</a> 
(<strong>Mr Liu</strong>), via his wholly-owned company, had bought 
75% of Teamway from its founders for HK$560m. That triggered a general offer 
backed by <a href="../dbpub/articles.asp?p=16123">Kingston Securities Ltd</a> (<strong>Kingston</strong>), but the stock was in a bubble, so the 
offer price was a 60.69% discount to the previous closing price and there were 
almost no acceptances when the offer
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0304/LTN201503041437.pdf" target="_blank">
closed</a> on 4-Mar-2015. As usual, all the "independent" directors were 
immediately replaced along with the new executive directors, including Mr Liu. 
The offer valued Teamway at a shell premium of about HK$479m above net assets, 
not unusual in HK.</p>
<p>Just 27 days later, on 31-Mar-2015, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0331/LTN201503311529.pdf" target="_blank">
announced</a> that it had paid out HK$200m of cash as refundable "earnest money" 
for a possible acquisition of an enormous property project on 1.75 sq. km. of 
land in Anhui Province. The advance was secured on shares of the BVI target,
<a href="../dbpub/orgdata.asp?p=12112987">Golden Phone Investments Ltd</a> (<strong>GP</strong>). 
At that point, the target company apparently didn't own the project company - 
all that was said was that GP "will be interested" in it, so that was somewhat 
shakey collateral. There was also a guarantee from a private PRC company, GooCoo 
Investment Ltd, said to be owned by <a href="../dbpub/natperson.asp?p=12112983">Yuan Qihong</a> 
(<strong>Mr Yuan</strong>) 
and his spouse. The ultimate vendors of GP would be Mr Yuan (45%) and Ms
<a href="../dbpub/natperson.asp?p=12112985">Hu Yulan</a> (55%). It is unclear 
whether she was his spouse. Teamway's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0923/LTN20150923368.pdf" target="_blank">
2015 interim report</a> shows that it had borrowed HK$200m (then CNY158.7m) at 
10% p.a. from a non-bank entity in the same period, secured on the shares of an 
unspecified subsidiary, presumably to fund the earnest money.</p>
<p>On 31-Mar-2016, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0401/LTN20160401121.pdf" target="_blank">
announced</a> that the MoU signed a year earlier to buy GP had lapsed and that 
the HK$200m of earnest money (minus expenses) was repayable within 1 month. 
However, the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0907/LTN20160907220.pdf" target="_blank">
interim report</a> at 30-Jun-2016 shows that "Prepayments, deposits and other 
receivables", which at the prior year-end included the earnest money, had not 
declined but had increased from CNY175.1m to CNY187.5m. It appears that the 
earnest money had not been refunded on schedule.</p>
<p>It was perhaps only because of the acquisition of TFI at an inflated price of 
HK$250m on 14-Nov-2016 that Teamway was able to get the HK$200m receivable earnest money off its 
balance sheet. The 2016 annual accounts state that it was full refunded during 
the year.</p>
<h3>Mr Liu exits</h3>
<p>Between Dec-2015 and Jun-2016, Mr Liu sold all his Teamway shares as follows:</p>
<ul>
	<li>On 18-Dec-2015, Teamway
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1218/LTN20151218717.pdf" target="_blank">
	announced</a> that Mr Liu had sold 1.4bn shares (14%) at $0.26 each, or
	<strong>$364m</strong> in total, cutting his stake to 61%. He sold 9.3% to 
	Mr Ling Zheng (<strong>Mr Ling</strong>) and 4.7% to Mr Fang Haibo, both said to be reputable 
	businesmen in Anhui. We can see the shares
	<a href="../ccass/chldchg.asp?i=7173&amp;d=2015-12-17">moving in CCASS</a> 
	from Kingston to <a href="../dbpub/orgdata.asp?p=11249">Huarong International Securities Ltd</a> (<strong>Huarong</strong>) 
	the previous day.</li>
	<li>
	<p>On 14-Jan-2016, a block of 1.1bn shares (11%)
	<a href="../ccass/chldchg.asp?i=7173&amp;d=2016-01-14">moved</a> from 
	Kingston to Huarong, and on 19-Jan-2016, a block of 2.9bn shares
	<a href="../ccass/chldchg.asp?i=7173&amp;d=2016-01-19">moved</a> from 
	Kingston to Roofer Securities Ltd (<strong>Roofer</strong>).</p>
	</li>
	<li>On 19-Jan-2016, Teamway
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0119/LTN20160119518.pdf" target="_blank">
	announced</a> that Mr Liu had sold 1.9bn shares (19%) "on open market" at 
	$0.30 each, or <strong>$570m</strong> in total, cutting his stake to 42%. In 
	fact, these shares
	<a href="http://di.hkex.com.hk/filing/di/NSForm2.aspx?fn=290904" target="_blank">
	went to</a> <a href="../dbpub/advisers.asp?p=12112994">Riverwood China Growth Fund</a>, managed by Ms 
	<a href="../dbpub/natperson.asp?p=69138">Liu Yang</a> via 
	Riverwood Asset Management (Cayman) Ltd and Atlantis Capital Holdings Ltd, 
	which she owns. The transaction was settled by Roofer
	<a href="../ccass/chldchg.asp?i=7173&amp;d=2016-01-21">delivering</a> 
	the shares to Standard Chartered Bank (HK) Ltd 2 days later.</li>
	<li>On 22-Jan-2016, 1.1bn shares
	<a href="../ccass/chldchg.asp?i=7173&amp;d=2016-01-22">moved</a> from 
	Huarong to Roofer. The same day, Teamway
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0122/LTN20160122857.pdf" target="_blank">
	announced</a> that Mr Liu had sold 2.1bn shares at $0.30 each or <strong>
	$630m</strong> in total, in an off-market transaction, halving his stake to 
	21%. At this point, he resigned as Chairman and director, and 33-year-old 
	<a href="../dbpub/positions.asp?p=2530477">Xie Yan</a> (<strong>Ms Xie</strong>) was appointed as director and Chairman. She was said to have no 
	connection to any substantial shareholder.</li>
	<li>
	<p>On 17-Jun-2016, Teamway announced that Mr Liu had sold his remaining 
	2.1bn shares (20.59%) to <a href="../dbpub/positions.asp?p=2497012">Huang 
	Youlong</a> (<strong>Mr Huang</strong>) at HK$0.30 each or <strong>$620m</strong> 
	in total, a 49.2% premium to the market price of $0.201. Altogether then, it 
	appears that Mr Liu paid HK$560m for 75% of Teamway, and received $2184m for 
	selling it, a 290% gain before costs. Why the buyers were willing to pay 
	bubble prices for a company which made a loss in 2015 of CNY2.6m on revenue 
	of CNY189m we do not know.</p>
	</li>
</ul>
<p>Mr Ling became Chairman of Teamway on 27-Sep-2016, replacing Ms Xie.</p>
<h3>The Listing Decision</h3>
<p>On 19-Apr-2017, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0419/LTN201704191343.pdf" target="_blank">
announced</a> the proposed sale of its original packaging business for HK$250m. The purchaser was Billion Grand Investments Ltd (BVI), owned by 
one Mr Li Zhi, said to be an independent third party. In the LD, HKEX concluded 
that under Listing Rule 13.24, this transaction would leave Teamway with 
insufficient operations or assets (PVAS) to warrant the continued listing of 
Teamway. That decision was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0609/LTN20170609922.pdf" target="_blank">
announced</a> by Teamway on 9-Jun-2017. On 16-Jun-2017, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0616/LTN20170616684.pdf" target="_blank">
filed an appeal</a> to the Listing Committee, but on 28-Jun-2017, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0628/LTN20170628968.pdf" target="_blank">
decided</a> to withdraw its appeal.</p>
<p>On 7-Jul-2017, Mr Huang
<a href="http://di.hkex.com.hk/filing/di/NSForm1.aspx?fn=87838" target="_blank">
sold his stake</a> for HK$0.067 per share to one
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=IS20170710E00040" target="_blank">
Cao Longbing</a>, apparently having lost 77.7% of his investment.</p>
<p>On 31-Jul-2017, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0731/LTN20170731948.pdf" target="_blank">
announced</a> that the "conditions precedent" for the disposal had not been 
fulfilled and the disposal would lapse.</p>
<p>On 11-Aug-2017, there was a mass
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0811/LTN201708111163.pdf" target="_blank">
board change</a> in which Ms Xie resigned as ED, two so-called INEDs resigned 
"due to their other business commitments", and 2 more were appointed. Don't 
worry about Ms Xie though: on 10-Oct-2017 she was appointed as Chairman and CEO 
of <a href="../dbpub/orgdata.asp?p=4923">China Environmental Energy Investment 
Ltd</a> (<strong>CEEI</strong>, 0986), a member of the
<a href="enigma.asp">Enigma Network</a>, apparently without needing 
to agree on any salary. CEEI says she has no shareholding or relationship with 
any shareholders or directors in that company. She replaces Ms
<a href="../dbpub/positions.asp?p=4923">Chen Tong</a>, who resigned following 
the Listing Committee's "<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2017/0929/LTN20170929391.PDF" target="_blank">criticism</a>" 
of her on 29-Sep-2017.&nbsp;</p>
<h3>Investment property</h3>
<p>Incidentally, on 13-May-2016, Teamway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0513/LTN201605131015.pdf" target="_blank">
announced</a> the acquisition of <a href="../dbpub/orgdata.asp?p=12112996">Gorgeous Assets Ltd</a> (<strong>GA</strong>, BVI), 
the only asset of which was a residential flat of 1568 gross sq. ft. at One 
Silversea, Kowloon. The exact address of the flat was not disclosed, nor is it 
included in the 2016 annual report, when it was held as an investment property. 
That's a breach of the Listing Rules,
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=3830" target="_blank">
Appendix 16 paragraph 23(2)(a)</a>, which was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/1020/LTN20171020739.pdf" target="_blank">
remedied on Friday</a> (20-Oct-2017) following a complaint by Webb-site to HKEX. 
It is Flat A on 21/F of Tower 1, and was still vacant at the end of 2016.</p>
<p>GA had only been incorporated on 1-Dec-2015, so it must have acquired 
the flat since then, which suggests that 15% <a href="../dbpub/subject.asp?c=107">Buyer's Stamp Duty</a> and 8.5% 
<a href="../dbpub/subject.asp?c=131">Double Stamp Duty</a> was payable, as a 
company is not a permanent resident of HK. According to Centadata, 
the flat was bought on 20-Apr-2016 for HK$45m, 23 days before GA was sold to 
Teamway. It would be interesting to know whether the $10.575m of stamp duty was 
paid before Teamway bought GA, or whether Teamway had to fund it. Teamway paid for GA by 
issuing 200m shares, purportedly at $0.30 each, although the market price was 
$0.223, so they were only worth HK$44.6m at market price. The vendor was Winning 
Global Holdings Ltd (BVI), the owner of which was not disclosed. The shares were 
issued on 20-May-2016. On 9-Mar-2017, they were
<a href="../ccass/chldchg.asp?i=7173&amp;d=2017-03-09">deposited into CCASS</a>  
via Huarong.</p>
<p class="regbox">Update: from the 2015
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0425/LTN201604251063.pdf" target="_blank">accounts</a> of 
<a href="../dbpub/articles.asp?p=63638">China Healthcare Enterprise Group Ltd</a> (<strong>CHE</strong>, 
1143) we see that GA was an inactive 100% subsidiary at 31-Dec-2015. The 2016 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0427/LTN201704272614.pdf">accounts</a> show that during the year, the group acquired a property for HK$55.575m 
including transaction cost. That must be the apartment for $45m+23.5% stamp duty. It recognised a 
"fair value loss" of $18.345m on the property and then booked a gain on disposal 
of the subsidiary of $6.356m, for an overall loss of $11.989m. At 31-Dec-2016, CHE still held the 200m shares of 
Teamway it received as consideration, which by then had dropped in value from 
$43.6m to $18.0m.</p>
<h3>AC Milan</h3>
<p>And now, something for our soccer fans, or people who take vicarious 
enjoyment in watching others kick a ball around.</p>
<p>Teamway's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0927/LTN20170927293.pdf" target="_blank">
interim report</a> at 30-Jun-2017 shows a spike in cash accompanied in note 16 
by a new unsecured US$20m (CNY169.308m) loan from a non-bank lender at 10% p.a. 
due in 2020.</p>
<p>On or before 28-Aug-2017 Teamway started money-lending. It
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0829/LTN20170829031.pdf" target="_blank">
announced</a> a US$8.3m loan facility at 14% p.a. to
<a href="../dbpub/orgdata.asp?p=2597891">Rossoneri Sport Investment Co., Ltd</a> 
(<strong>RSI</strong>, HK), which was said to be "principally engaged in 
investment in sports related business". RSI is owned by
<a href="../dbpub/orgdata.asp?p=12113000">Rossoneri Advance Co., Ltd</a> (<strong>RAC</strong>, 
BVI), which is owned by <a href="../dbpub/natperson.asp?p=12113001">Li Yong Hong</a> 
(<strong>Mr Li</strong>). He has pledged the shares of RAC (but not RSI) as 
security for the loan. </p>
<p>What the announcement didn't say: Rossoneri is Italian for "red black", after 
the colours of loss-making soccer team
<a href="https://en.wikipedia.org/wiki/A.C._Milan" target="_blank">A.C. Milan</a>, 
owned by Associazione Calcio Milan S.p.A., 99.93% of which was acquired by
<a href="../dbpub/orgdata.asp?p=12113028">Rossoneri Sport Investment Luxembourg 
S.a.r.l.</a> (<strong>RSIL</strong>) for EUR740m (including debt of EUR220m) on 
13-Apr-2017, from Silvio Berlusconni's Fininvest. The deal was originally
<a href="http://www.fininvest.it/assets/press/en/Press%20release_Fininvest-Milan_5.08.16.pdf" target="_blank">
announced</a> back on 5-Aug-2016 and later restructured after China tightened 
outbound capital controls, preventing the original mainland company from 
participating. Hedge fund billionaire and soccer fan
<a href="../dbpub/natperson.asp?p=2384358">Paul Elliott Singer</a>'s Elliott 
Management reportedly helped bridge the gap with loans to the buyer and subscriptions of bonds 
in A.C. Milan itself. Let's hope he hasn't let love of the game distort 
rational investing, because he may be about to own a team that prints more red 
than black ink.</p>
<p>Luxembourg filings (which <a href="tangwingkei.asp">unlike HK's</a>, are available for free online) 
show that RSIL has 2 classes of shares. 11,999 A-shares, giving essentially all 
the equity rights, are held by Rossoneri Champion Investment Luxembourg S.a.r.l. 
(<strong>RCIL</strong>), which in turn is 100% owned by RSI. A single B-share is 
held by Project Redblack S.a.r.l. (<strong>PB</strong>), which in turn has 3 
classes of shares and appears to be the debt-financing vehicle. 2 of these 
classes are held by <a href="../dbpub/orgdata.asp?p=12113040">Blue Skye 
Financial Partners S.a.r.l.</a>, which is equally owned by the 2 co-founders of
<a href="http://www.blueskyeinv.com/" target="_blank">Blue Skye Investments</a>. 
The other 2 are owned by Delaware LLCs which may be related to Mr Singer.</p>
<p>PB 
nominates 2 of the 5 <a href="../dbpub/positions.asp?p=12113028">directors of 
RSIL</a> and certain decisions require the B-directors' 
approval, such as selling any shares in A.C. Milan or pledging them. New A-shares 
can be created without the B-directors' approval, provided they are 
pledged to PB, suggesting that the existing A-shares are already pledged by RCIL 
to PB. Teamway is a very subordinated creditor lending 3 layers behind AC Milan 
and secured on the 4th layer - so it will probably get nothing if the buyout 
defaults, and the fact that Mr Li is borrowing at this level should be reason 
enough for alarm.</p>
<p>Mr Li is now Chairman of A.C. Milan. We can't help wondering whether the 
sudden surge in revenues and profits of PVAS is in any way related to the A.C. 
Milan acquisition.&nbsp;The amount of the loan facility is similar to the entire profits 
from PVAS so far. </p>
<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=134142">Atlantis Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12113040">Blue Skye Financial Partners S.a.r.l.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1859028">Dongwu Cement International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4923">Dufu Liquor Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12112987">Golden Phone Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12112981">Goocoo Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1791808">PV ADVISORY SERVICES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6724305">Riverwood Asset Management (Cayman) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12112994">Riverwood China Growth Fund</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12113000">Rossoneri Advance Co., Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12113033">Rossoneri Champion Investment Luxembourg S.a.r.l.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2597891">Rossoneri Sport Investment Co., Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12113028">Rossoneri Sport Investment Luxembourg S.a.r.l.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=133524">Teamway International Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12110687">Treasure Found Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11249">XinKong International Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3473">Zhong Ji Longevity Science Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=12113006">Cao, Longbing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11796604">Chan, Ka Wing (1982)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=63004">Chen, Tong (1963)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12112985">Hu, Yulan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2497012">Huang, Youlong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12113001">Li, Yong Hong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2388452">Liu, Liangjian</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=69138">Liu, Yang (SFC:AGK177)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2384358">Singer, Paul Elliott</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2530477">Xie, Yan (1982)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12112983">Yuan, Qihong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=107">Buyer's Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=131">Double Stamp Duty</a></li>
				
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