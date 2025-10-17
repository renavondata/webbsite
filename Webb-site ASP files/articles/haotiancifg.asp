
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

<script type="text/javascript">document.title="China Innovative Finance (0412) bubble";</script>

	<div class="summary">Hao Tian Development (0474) has confirmed our view by dumping 9.06% of CIFG at a 61.9% discount, still well above the net tangible asset value of $0.099. CIFG should trade below NTAV due to its appalling governance and membership of what we call the "Chung Nam Network". The purported profits of its leasing division are largely illusory and depend heavily on 1 customer in which CIFG has invested. HTD has also been allowed by HKEX to skirt the Listing Rules on corporate transactions.</div>

<h2 class="center">China Innovative Finance (0412) bubble<br>
<span class="headlinedate">26 September 2016</span></h2>

<p><a href="../dbpub/articles.asp?p=4822">China Innovative Finance Group Ltd</a> 
(<strong>CIFG</strong>, 0412) is a bubble stock, not just in our view, but 
apparently in the view of its largest shareholder,
<a href="../dbpub/articles.asp?p=34306">Hao Tian Development Group Ltd</a> (<strong>HTD</strong>, 
0474). How do we know this? Well on Friday (23-Sep-2016), HTD sold 
1,737,940,350 shares (9.06%) of CIFG to an unnamed "independent third party" at 
HK$0.297 per share, or $516.2m in total. That's a 61.9% discount to the closing 
price of $0.78 per CIFG share, but even that discounted price looks generous 
when you consider that the net tangible assets of CIFG at 31-Mar-2016 were just 
$0.099 per share. In our view, CIFG shares should trade at a substantial 
governance discount to that NTA.</p>
<p>The brief "voluntary"
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0923/LTN20160923734.pdf" target="_blank">
announcement</a> makes no mention of the discount to market or the reasons for 
the sale, which cuts HTD's stake from 27.32% to 18.26% of CIFG, below the 20% 
level at which a company would normally account for its holding in another as an 
"associate", including its share of net assets in the holder's balance sheet 
rather than the market value of the shares.</p>
<p>HTD is not normal though. It first acquired a disclosable stake in CIFG in 
Jul-2014, and in its accounts
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1205/LTN20141205305.pdf" target="_blank">
since 30-Sep-2014</a>, it has made the somewhat ridiculous claim that although 
it held almost 29% of CIFG:</p>
<blockquote>"the Group has irrevocably undertaken to [CIFG] that the Group 
shall not participate or otherwise exercise any influence over the management or 
the operating and financial policy decisions of [CIFG] and shall not nominate 
any directors to or remove any directors from the board of directors of [CIFG]"</blockquote>
<p>We have not found any mention of this irrevocable undertaking in the 
announcements or annual reports of CIFG. Perhaps they are unaware of it. As a 
result, HTD has always held most of the investment in its balance sheet under 
"current assets - investments held for trading" at market value, rather than at 
the much lower value of the share of net assets.</p>
<p>At 31-Mar-2016, HTD held 5241.5m shares (then 27.14%) of CIFG, in the 
books at HK$4979.4m, or $0.95 per share, accounting for 74.8% of its net 
tangible assets. Of this stake, 2.33% (acquired in the year to 31-Mar-2014) was 
held as long-term "available-for-sale" assets and 24.81% acquired in Jul-2014 
was held as "investments held for trading". The latter stake, valued at 
$4550.5m, accounted for 93.6% of the "investments held for trading" at the 
year-end.</p>
<p>Despite having almost a single-stock portfolio, the Stock Exchange has 
allowed HTD to claim that it is "in the business" of investing since it made an
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0709/LTN20140709717.pdf" target="_blank">
announcement</a> to that effect on 9-Jul-2014, just 19 days before it bought 
26.2% of HTD in two off-market transactions for a total of HK$710m. 
Consequently, the acquisition of the stake in CIFG, and now its disposal, have 
not been treated as notifiable transactions under the Listing Rules, apparently 
because the Stock Exchange considers that it is in the "ordinary and usual 
course of business" of HTD under
<a href="http://en-rules.hkex.com.hk/net_file_store/new_rulebooks/h/k/HKEX4476_2655_VER10.pdf" target="_blank">
Listing Rule 14.04(1)(g)</a> to buy a 26.2% stake in another listed company.</p>
<p>As we said in our article <a href="CNN.asp"><em>The bubbles 
in CNN</em></a> on 8-Jan-2015, HTD's acquisition of 28.87% of CIFG should have 
been treated as a "Very Substantial Acquisition" under the Listing Rules. 
Similarly, Friday's disposal should have been a "Disclosable Transaction" under 
the Listing Rules and this is another good example of why the Stock Exchange, 
owned by <a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing 
Ltd</a> (0388), needs to be relieved of its regulatory function entirely.</p>
<p>On Friday's sale alone, HTD will book a loss of $0.653 per share, or $1135m 
relative to the price at 31-Mar-2016. The other shares, having declined in value 
since the year-end, will likely also result in a fair value loss, depending on 
where they end on 30-Sep-2016, the next accounting date of HTD.</p>
<h3>Acquisition of HK Leasing</h3>
<p>On 8-Apr-2015, CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0412/LTN20150412001.pdf" target="_blank">
agreed</a> to buy <a href="../dbpub/orgdata.asp?p=1501735">Hong Kong Leasing Ltd</a> 
(<strong>HKL</strong>) from <a href="../dbpub/orgdata.asp?p=2636459">China Hover 
Dragon Group Ltd</a> (<strong>CHD</strong>, 96.77%) and Mr Gao Chuanyi (<strong>Mr 
Gao</strong>, 3.23%) for a base consideration of HK$1558.334m payable in new 
CIFG shares at $0.66. Mr Gao had been allotted his HKL stake on 12-Feb-2015. CHD 
was 50% owned by <a href="../dbpub/natarts.asp?p=33441">Ji Kewei</a> (<strong>Mr 
Ji</strong>) and 50% by Ms Wang Zi Yi. We don't know whether this is the same 
Wang Ziyi who was
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2016/0517/GLN20160517061.pdf" target="_blank">
appointed</a> as an Executive Director of
<a href="../dbpub/articles.asp?p=14086">Hao Wen Holdings Ltd</a> (8019) on 
17-May-2016.</p>
<p>HKL had assembled a mainland financial leasing business starting in 
2013. According to the Accountant's Report in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0730/LTN20150730783.pdf" target="_blank">
circular</a> dated 30-Jul-2015, HKL made a net profit of just HK$6.96m in 2014 
and a loss of $8.91m in the first quarter of 2015. So the 2014 P/E on the deal 
was 224. The deal was also priced at 4.006x net asset value at the completion 
date.</p>
<p>The Accountant's Report also reveals that the 2014 profit was boosted 
by the following means. On 21-Nov-2014, HKL and China Hover Dragon Investment 
Ltd (a sister company of HKL) agreed to pay interest at 17% p.a. on amounts 
advanced by HKL from May-2013 to Nov-2014. In other words, interest of $6.69m 
was added in arrears and all of that was booked in 2014. Without that, HKL's 
profit for 2014 would have been only $0.27m. Furthermore, the 2014 profit 
includes a one-off gain on disposal of trading securities of $4.55m, so without 
those two effects, HKL would have been loss-making.</p>
<p>The rich valuation of 4x NAV was built on narrow foundations. Of the 
HK$856.0m of loans receivable at 31-Mar-2015, $600.5m or 70.1% was due from a 
single customer, 中國雲南路建集團股份公司 or "Yunnan Lu Jian". This also appears to 
translate as "China Yunnan Highway Construction Group Co Ltd" (<strong>Yunnan 
Highway</strong>). The same construction company also agreed on 23-Dec-2013 to 
take over debts of RMB41.8m due to HKL from various parties but on an 
interest-free basis.</p>
<p>The acquisition of HKL completed on 1-Sep-2016, and it can't be a 
coincidence that in note 22 of the CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0714/LTN20160714133.pdf" target="_blank">
annual accounts</a> at 31-Mar-2016, we see that during the second half of the 
financial year, CIFG subscribed 30m shares (8.33%) of an entity it calls 雲南路建集團 
or "Yunnan Highway Construction Group", for HK$39.604m. So apparently CIFG has 
been investing in its largest customer and debtor. For the year-end, CIFG 
has obtained, from an unnamed valuer, a valuation of $96.010m for this unlisted 
investment, booking a gain of $56.406m or 142% in 6 months or less.</p>
<p>During the period from the date of acquisition (1-Sep-2015) to 31-Mar-2016, 
HKL purportedly contributed a segment profit of $69.655m to CIFG, but this included a gain 
on investments of $56.709m, presumably including the gain on the Yunnan Highway 
stake, which in our view has nothing to do with the leasing business. Note 5 shows 
segment revenue of $88.8m, but note 6 shows that actual revenue from financial 
leasing was only $48.3m, while "consultancy services income" was $39.0m. It is 
unclear what the consultancy services are or how they relate to financial 
leasing.</p>
<p>Stripping out the gain on Yunnan Highway, the segment profit was not more 
than $12.95m, even including the consultancy services income. The Management 
Discussion and Analysis, in our view, contained a false and misleading 
statement:</p>
<blockquote>"The financial leasing business recorded a positive result of 
approximately HK$70 million for the year ended 31 March 2016".</blockquote>
<p>The true figure matters, because the acquisition agreement contains a clause 
that if the audited net profit for the 12 months after completion is less than 
HK$100m, then the vendors will return CIFG shares equal to 4.006 times the 
shortfall (at $0.66 per share) which will be cancelled. That period runs to 
31-Aug-2016 and has now ended, so CIFG should announce whether the net profit, 
excluding the investment gain, has reached that figure. Shareholders could not 
have expected to be paying 4 times the future gains on investments to buy HKL. There is a similar 
clawback if the second 12-month period (to 31-Aug-2017) produces a profit of 
less than HK$200m.</p>
<p>On 11-Sep-2015, Mr Ji was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0911/LTN20150911884.pdf" target="_blank">
appointed</a> Deputy Chairman and CEO of CIFG. He claims to hold an MBA and a 
"Doctor of Philosophy degree in Economics (Finance)", but he doesn't say where 
from, and we've been unable to find the degree-awarding institution(s) in 
earlier biographies. Mr Ji was first appointed to a HK-listed board on 
12-Apr-2006, when he became Deputy Chairman and CEO of what is now
<a href="../dbpub/orgdata.asp?p=6044">China Finance Investment Holdings Ltd</a> 
(0875) and became non-executive on 29-Dec-2011, leaving the board on 1-Apr-2012. 
In 2007, he and his private firms
<a href="../codocs/SFC070607.pdf" target="_blank">pleaded guilty</a> to 12 
disclosure of interest offences and were fined a total of HK$24,000.</p>
<h3>Concentrated ownership of CIFG</h3>
<p>The holders of CIFG that we know of are:</p>
<ul>
	<li>HTD, with its remaining 18.26% stake after Friday's sale, part of 
	which is pledged as explained below</li>
	<li>Friday's unnamed buyer of 9.06% from HTD</li>
	<li><a href="../dbpub/positions.asp?p=2309524">Yau Wai Lung</a> (<strong>Mr 
	Yau</strong>), an executive director of CIFG since 19-Aug-2014, owns 3721.7m 
	shares (19.40%) of CIFG, part of which is pledged as explained below</li>
	<li>
	<p>CHD, half-owned by Mr Ji, holds 2,172.7m shares (11.32%) of CIFG as a 
	result of the HKL acquisition, subject to clawback</p>
	</li>
	<li><a href="../dbpub/articles.asp?p=4813">NetMind Financial Holdings Ltd</a> 
	(<strong>NetMind</strong>, formerly "CST Mining Group Ltd", 0985) held 
	1662.3m shares (now 8.66%) of CIFG at 31-Mar-2016, booked at market value of 
	US$202.463m or HK$0.95 per share</li>
	<li>Mainland property developer <a href="../dbpub/natperson.asp?p=2359867">
	Huang Rulun</a> (<strong>Mr Huang</strong>) first became a disclosed 
	shareholder of CIFG via his 60%-owned
	<a href="../dbpub/orgdata.asp?p=2359866">Century Golden Resources Investment 
	Co Ltd</a> (<strong>CGRI</strong>) on 12-Dec-2014,
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=67290" target="_blank">
	increasing</a> the holding from 4.49% to 7.79% in an off-market purchase. 
	CGRI further increased its holding during March and April 2015,
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=69218" target="_blank">
	reaching</a> 13.69% on 1-Apr-2015. On 28-Apr-2015, CGRI
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0428/LTN201504281640.pdf" target="_blank">
	subscribed</a> HK$200m for a 16.53% stake in
	<a href="../dbpub/orgdata.asp?p=1834971">Hao Tian Finance Co Ltd</a> (<strong>HTF</strong>), 
	a money-lending subsidiary of HTD, which didn't say who owned the 
	subscriber. On 31-May-2016. CGRI
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=79451" target="_blank">
	cut its holding</a> in CIFG from 12.02% to 6.84% (now 6.88%) by selling 1bn 
	shares off-market at $0.50. We don't know who holds the other 40% of CGRI.</li>
	<li>According to the
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0829/LTN201608291094.pdf" target="_blank">
	interim results</a> of <a href="../dbpub/articles.asp?p=1365">GT Group 
	Holdings Ltd</a> (<strong>GT</strong>, 0263), it held shares of CIFG worth 
	$513.4m (now 3.34%) at 30-Jun-2016. Incidentally, it also owned 3.04% of 
	NetMind.</li>
	<li>According to the
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0920/LTN20160920311.pdf" target="_blank">
	interim report</a> of <a href="../dbpub/articles.asp?p=37610">Enterprise 
	Development Holdings Ltd</a> (<strong>Enterprise Dev</strong>, 1808) it held 
	0.8% of CIFG at 30-Jun-2016.</li>
	<li>According to the
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0819/LTN20160819959.pdf" target="_blank">
	interim results</a> of <a href="../dbpub/articles.asp?p=1843">Enerchina 
	Holdings Ltd</a> (<strong>Enerchina</strong>, 0622), it held shares of CIFG 
	worth HK$121.4m (now 0.79%) at 30-Jun-2016.</li>
	<li>According to the
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0718/LTN20160718195.pdf" target="_blank">
	annual report</a> of <a href="../dbpub/articles.asp?p=4788">China Soft Power 
	Technology Holdings Ltd</a> (<strong>CSPT</strong>, 0139), it held 0.49% of 
	CIFG worth HK$90.1m at 31-Mar-2016.</li>
	<li>According to an
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0628/LTN20160628654.pdf" target="_blank">
	announcement</a> by China Opto Holdings Ltd (<strong>China Opto</strong>, 
	1332) it held shares of CIFG worth HK$73.9m (now 0.41%) at 31-Mar-2016.</li>
</ul>
<p>Those 11 holdings add up to about 79.42% of CIFG, and there may be others 
that we have not found within the balance sheets of what we call the "Chung 
Nam Network", which includes HTD, CIFG, GT, Enterprise Dev, Enerchina, CSPT, China Opto and 
many more, as well as several unlisted hubs jointly owned by the network 
members. As of Friday night, 88.26% of CIFG was
<a href="../ccass/choldings.asp?sort=holddn&amp;i=1030&amp;sc=&amp;d=2016-09-23">
held in CCASS</a>, and the top 10 brokers/custodians
<a href="../ccass/cconchist.asp?i=1030">held 91.25%</a> of the shares that 
are in CCASS. </p>
<h3>The involvement of CCB</h3>
<p>For unknown reasons, HTD and CIFG seem to have developed a close relationship 
with <a href="../dbpub/articles.asp?p=1785">China Construction Bank Corp</a> (<strong>CCB</strong>, 
0939).</p>
<p>On 19-May-2015, HTD
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0519/LTN20150519751.pdf" target="_blank">
announced</a> a non-binding term sheet proposing that it would (i) borrow US$30m 
by issuing loan notes to <a href="../dbpub/orgdata.asp?p=2128604">CCBI 
Investments Limited</a> (<strong>CCBI</strong>), (ii) that its subsidiary, HTF 
would issue unlisted warrants to subscribe US$15m worth of shares in HTF at NAV, 
and (iii) that HTD would grant a call option over shares in CIFG with a value of 
US$15m based on an exercise price of $1.44 per share, being 115% of the 15-day 
average price. HTD failed to say who owned CCBI or where it was incorporated.</p>
<p>On 6-Jul-2015, this was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0707/LTN20150707015.pdf" target="_blank">
distilled</a> into a binding agreement between
<a href="../dbpub/orgdata.asp?p=2059133">Sea Venture Investments Ltd</a> (<strong>Sea 
Venture</strong>, BVI) and HTD, in which Sea Venture would subscribe US$30m of 
2-year 9% loan notes, secured by a pledge of 550m shares (then 3.25%) of CIFG. 
HTD also granted a 3-year call option over 80,729,170 shares (then 0.48%) of 
CIFG at $1.44 per share, a total exercise price of US$15m at an exchange rate of 
US$=HK$7.75. Sea Venture also received warrants to subscribe US$15m of shares in 
HTF, or about an 8.8% stake, which would dilute HTD from 75.2% to 68.6% of HTF. 
The notes subscription was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0716/LTN20150716688.pdf" target="_blank">
completed</a> on 16-Jul-2015.</p>
<p>The announcements failed to say who owned Sea Venture. A
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=274723" target="_blank">
disclosure of interest</a> by HTD on the same date hints that the actual size of 
the share pledge was 720m shares (then 4.25%) of CIFG, not 550m shares as 
announced. At the closing price that day of $1.15, the 720m pledged shares were 
worth HK$828m (US$106.8m), so HTD was getting a margin loan of about 28% of 
that. In the Webb-site CCASS Analysis System
<a href="../ccass/chldchg.asp?i=1030&amp;d=2015-07-15">we can see</a> the 
shares moving from Haitong International Securities Co Ltd (<strong>Haitong</strong>) 
to CCB International Securities Ltd (<strong>CCBIS</strong>) on 15-Jul-2015.</p>
<p>The ownership structure of Sea Venture only became clear because on 
19-Aug-2015, CCB acquired a "security interest" (normally a pledge of shares for 
a loan) of 440m shares (then 2.59%) of CIFG, increasing its overall security 
interest to 1160m shares (6.85%) of CIFG. Having risen above 5%, On 27-Aug-2015 
it made a disclosure of interest
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=278121" target="_blank">
filing</a> which showed that Sea Venture is owned by CCBI and that CCBI is 
incorporated in the Cayman Islands and is a 100% subsidiary of CCB. We can infer 
from the HTD
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1211/LTN20151211368.pdf" target="_blank">
interim report at 30-Sep-2015</a> that all of the 1160m pledged CIFG shares were 
owned by HTD, because at the market price of $0.67 on that date they were worth 
$777.2m in total, matching the figure for pledged investments. Again, we can see 
the 440m shares <a href="../ccass/chldchg.asp?i=1030&amp;d=2015-08-19">
moving</a> from Haitong to CCBIS on 19-Aug-2015. </p>
<p>On 16-Dec-2015, the pledge was
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=287631" target="_blank">
reduced</a> by 250m shares to 910m shares worth $728m at the closing price of 
$0.80. We can see the released shares
<a href="../ccass/chldchg.asp?i=1030&amp;d=2015-12-17">moving</a> from CCBIS 
to Haitong the next day.</p>
<p>On 24-Dec-2015, Sea Venture
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1224/LTN20151224484.pdf" target="_blank">
subscribed</a> US$40m of 2-year 7% bonds in CIFG, convertible at $0.72 per share 
into 433.3m shares (2.20%) of CIFG. The conversion price was a 14.29% discount 
to the closing price of $0.84. The bonds were secured not by assets of CIFG but 
by a pledge by Mr Yau's private company over 1.5bn shares (7.77%) of CIFG. CIFG 
also failed to say who owns Sea Venture, but as we already know, it was owned by 
CCB and this was confirmed by a subsequent
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=288720" target="_blank">
disclosure of interest filing</a>. The issue was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1231/LTN20151231954.pdf" target="_blank">
completed</a> on 31-Dec-2015. We can see Mr Yau's 1.5bn shares
<a href="../ccass/chldchg.asp?i=1030&amp;d=2015-12-30">moving</a> from HEC 
Securities Ltd (<strong>HECS</strong>) to CCBIS on 30-Dec-2015.</p>
<p>6 months later, on 30-Jun-2016, CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0630/LTN201606301417.pdf" target="_blank">
issued</a> a redemption notice to Sea Venture, and on 27-Jul-2016, CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0727/LTN20160727822.pdf" target="_blank">
agreed</a> to issue to Sea Venture US$40m of 2-year 8% bonds convertible at 
$0.72 per share, swapping the old bonds for the new bonds. This extended the 
maturity date by 6 months but increased the interest rate by 1%. The board of 
CIFG claimed that the new bonds were:</p>
<blockquote>"on more favourable terms to the Group as compared to the Previous 
Convertible Bonds in terms of maturity period and effective interest rate."</blockquote>
<p>How can 8% be more favourable than 7%? The redemption and new issue was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0816/LTN20160816157.pdf" target="_blank">
completed</a> on 16-Aug-2016. By this stage, CCB had a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=307355" target="_blank">
security interest</a> in 2710m shares (then 14.03%) of CIFG. This appears to be 
910m shares pledged by HTD and 1800m shares
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=194491" target="_blank">
pledged</a> by Mr Yau (up from 1500m) to meet the required 400% coverage of the 
bonds. At the closing price of $0.72, his pledged shares were worth HK$1296m 
(US$167.2m). We can see 300m shares
<a href="../ccass/chldchg.asp?i=1030&amp;d=2016-06-07">moving</a> from 
Haitong to CCBIS on 7-Jun-2016.</p>
<p>Meanwhile, on 13-Apr-2016, CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0413/LTN20160413847.pdf" target="_blank">
announced</a> that "the Company and its related companies" had received 
"approval of a comprehensive credit facilities" of up to RMB 1.1bn from the 
Shenzhen branch of CCB, although no actual facilities had yet been granted.</p>
<p>Apart from HTD's pledge of 910m CIFG shares to CCB, at 31-Mar-2016 it had 
also pledged shares worth $1422m to secure a bank loan facility of HK$450m. 
Since HTD holds little else, most of these shares must also be CIFG shares.</p>
<h3>Other convertibles</h3>
<p>CIFG has two other convertible bonds outstanding:</p>
<ul>
	<li>A US$50m 3-year 8% bond convertible at $0.68 was
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1013/LTN20151013719.pdf" target="_blank">
	subscribed</a> by <a href="../dbpub/orgdata.asp?p=970017">Taiping Trustees 
	Ltd</a> on 13-Oct-2015. We don't know whom they hold the bonds for. The 
	bonds are secured by a charge over the entire issued shares of HKL. The 
	issue
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1028/LTN20151028754.pdf" target="_blank">
	completed</a> on 28-Oct-2015.</li>
	<li>A US$40m 3-year 8% bond convertible at $0.72 was
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1215/LTN20151215772.pdf" target="_blank">
	subscribed</a> on 15-Dec-2015 by "Haitong International Investment Fund SPC 
	- Fund I SP" managed by Harveston Asset Management Pte Ltd of Singapore. 
	Interestingly, it is an event of default if Mr Yau no longer holds 10% of 
	CIFG. The issue
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1224/LTN20151224207.pdf" target="_blank">
	completed</a> on 24-Dec-2015. The bonds are unsecured.</li>
</ul>
<h3>Index inclusion</h3>
<p>Hilariously, CIFG, at its inflated market value, has recently been 
admitted as a member of the Hang Seng Composite LargeCap &amp; MidCap Index, 
effective 2-Sep-2016, as well as being in the MSCI Small Cap Index since 
31-May-2016. CIFG's board
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0818/LTN20160818451.pdf" target="_blank">
trumpeted</a> this in an announcement, opining that this:</p>
<blockquote>"represents capital markets’ recognition and confidence in the 
market capitalization and trading liquidity of the Company"</blockquote>
<p>We'll see about that.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=34306">Aceso Life Science Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2128604">CCBI Investments (Cayman) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1785">CHINA CONSTRUCTION BANK CORPORATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2636459">China Hover Dragon Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1501735">China Shandong Hi-Speed Hong Kong Leasing Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4813">CST Holding (HK) Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=37610">Enterprise Development Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1365">GT GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1834971">Hao Tian Finance Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1843">Oshidori International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2059133">SEA VENTURE INVESTMENTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4822">SHANDONG HI-SPEED HOLDINGS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4788">Smart Fish Wealthlink Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=970017">TAIPING TRUSTEES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1887051">Touyun Biotech Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2636462">Gao, Chuanyi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2359867">Huang, Rulun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=33441">Ji, Kewei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2309524">Yau, Wai Lung (1972)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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