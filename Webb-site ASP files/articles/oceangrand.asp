
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

<script type="text/javascript">document.title="Ocean Grand's Shipwreck";</script>

	<div class="summary">By popular request, we give our comments on the Ocean Grand debacle. The warning signs of bad governance or worse were there for years, but few picked up on them. We conduct a detailed autopsy, and find plenty of material for regulators and police investigators to get their teeth into. We also look at the characters involved with the companies and what this says about the state of battle for shareholder rights in HK.</div>

<h2 class="center">Ocean Grand's Shipwreck<br>
<span class="headlinedate">31 July 2006</span></h2>
<table class="txtable center">
	<tr>
		<th colspan="2" class="center">Contents</th>
	</tr>
	<tr>
		<td>
			<a href="#1997">1997 report</a><br>
			<a href="#1998">1998 report</a><br>
			<a href="#options">Bonus issue &amp; option excess</a><br>
			<a href="#BLT">Beijing Linefan Technology</a><br>
			<a href="#linefan">Linefan IPO</a><br>
			<a href="#evolution">Evolution of OGC</a><br>
			<a href="#margins">Incredible margins</a><br>
		
		</td>
		<td>
			<a href="#yearend">Change of year end</a><br>
			<a href="#auditors">Change of auditors</a><br>
			<a href="#INEDs">The INEDs</a><br>
			<a href="#reasons">Personal reasons disease</a><br>
			<a href="#hui">Herbert Hui</a><br>
			<a href="#lipservice">Lip service to CG</a><br>
		</td>
	</tr>
</table>
<p>Another summer, and another small-cap implosion in HK. Last year, it was the 
spectacular demise of spectacle-maker (in both senses) 
<a target="_blank" href="../dbpub/articles.asp?p=4920">Moulin Global Eyecare 
Holdings </a>Ltd (0389), which shredded HK$2.80bn of market capitalisation.</p>
<p>This year, we get two for the price of one -
<a target="_blank" href="http://www.ogholdings.com/">Ocean Grand Holdings Ltd</a> 
(<b>OG</b>, 1220) and its 73% subsidiary,
<a target="_blank" href="http://www.ogchemicals.com/">Ocean Grand Chemicals 
Holdings Ltd</a> (<b>OGC</b>, 2882). In this article, we'll take you back 
through some of the history of this group and the people who have been involved 
with it. You'll learn about contradictory disclosures by OG and one of its 
listed spin-offs, incredible profit margins in another spin-off, option grants 
which breached limits, and lots more 
besides. Buckle up, keep your hands inside the carriage and enjoy the ride.</p>
<h3 id="beginning">OG - the beginning</h3>
<p>OG, an aluminium extruder, was listed on 23-Sep-97 in an IPO sponsored by Citicorp International Ltd, 
with an issue price of $3.33 per share (scrip-adjusted). OG is chaired and controlled by Michael Yip 
Kim Po (<b>Mr Yip</b>) who co-founded the group with his father Yip Lap Chi in 
1990. The IPO took place during one of HK's frequent bubbles, and the 90% public 
tranche was 40.8 times subscribed. However, by year-end, the stock was down 
55.5% as the market slumped.</p>
<p>Ernst &amp; Young, the reporting accountants in the IPO, resigned before 
the year was out, and were replaced by Arthur Andersen &amp; Co, who audited the 
1997-1999 accounts. They in turn resigned in 2000 and were replaced by Moores Rowland.</p>
<p>One of the IPO underwriters was Kenlap Securities Ltd, now known as
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_RO.jsp?charset=ISO8859_1&ceref=ABF006&applNo=0002">
Global Credit Securities Ltd</a> and then owned by Mr Yip and his dad. OG was 
part of a larger group which included Ocean Grand (Holdings) Ltd, now known as 
Kenlap Investment Holdings Ltd. The MD of that firm from Jun-94 to Jul-96 was Mr 
Alex Chung Yuk Lun, who is now Chairman and MD of
<a target="_blank" href="../dbpub/articles.asp?p=14910">Radford Capital Investment Ltd</a> (0901) and 
an ED of <a target="_blank" href="../dbpub/articles.asp?p=16489">Ming Fung Jewellery Group Ltd</a> 
(0860), as well as an INED of <a target="_blank" href="../dbpub/articles.asp?p=4822">Heritage 
International Holdings Ltd</a> (0412), all of which are worthy of our attention, 
but that will have to wait.</p>
<p>In a curious game of musical chairs, soon after OG's IPO, on 9-Jan-98, one of 
the INEDs, Mr Choy Tak Ho (<b>Mr Choy</b>), became an Executive Director before 
becoming an INED again on 30-Apr-98, when Mr Yip's dad also stepped down from ED 
to NED, and Paulus Lo Wai Ming, an NED, became MD. He stayed until 31-Dec-99 and 
is now an INED of <a target="_blank" href="../dbpub/articles.asp?p=3251">Solartech International 
Holdings Ltd</a> (1166) and Syscan Technology Holdings Ltd (8083).</p>
<p>Another interesting character is Mr Wong Yat Fai, who was appointed Finance 
Director of OG on 11-May-98 and left on 31-Mar-00. He then became an ED of
<a target="_blank" href="../dbpub/articles.asp?p=4788">139 Holdings Ltd</a> (0139), and also serves 
as an INED of the 3-in-a-chain Yugang International Ltd (0613), Y.T. Realty 
Group Ltd (0075) and Cross-Harbour (Holdings) Ltd (0032), which we really should 
write about some time.</p>
<h3 id="1997">1997 report</h3>
<p>Looking at OG's first annual report after listing, for the year to 31-Dec-97, 
we see some interesting items. There are &quot;prepaid advertising expenses&quot; of 
$17.40m (1996: nil). That's a huge amount given that they only spent $1.87m on 
advertising in 1997. Why did they increase advertising expenditure so much, why 
was it necessary to prepay it, and who was on the other end of this expenditure?</p>
<p>There are also &quot;loans receivable&quot; of $23.93m (1996: nil). They're not a bank, 
so why were they lending money to anyone? The accounts said that $13.15m of 
these loans arose from <i>&quot;arrangements to purchase raw materials on behalf of a 
third party by utilising the Group's banking facilities&quot;.</i> The balance of 
$10.78m represented <i>&quot;temporary advances to a third party&quot;</i> which was 
unsecured, interest-free and with no repayment terms. Who was this third party 
and why was OG lending him/her/it money on such uncommercial terms? All the 
loans were repaid in 1998, according to the 1998 accounts.</p>
<p>These two items, totalling $41.33m, were equivalent to about 1/3 of the IPO 
proceeds of $122.4m.</p>
<h3 id="1998">1998 report</h3>
<p>In 1998, the report showed advances to Mr Yip's private company Kenlap 
(Holding) Ltd of $3.77m, interest-free and unsecured, and at the same time, they 
had interest-free unsecured borrowings from Global Credit Securities Ltd and 
another of his companies totalling $1.73m and borrowings from directors of 
$3.69m. What these dealings show is an inability to keep the finances of the 
listed company and the private companies separate, and also, perhaps, some 
financial stress if the company found it necessary to borrow from directors.</p>
<p>On 27-Mar-98, OG granted options over new shares equivalent to 9.76% of the 
existing shares at a 63% discount to the IPO price, almost exhausting the 10% 
limit in one go. 96% of the options were granted to directors, including 24% 
each to Mr Yip and his sister, who became an executive director on 1-Mar-99. 
It's funny how in listed companies, the people who least need motivating, 
because they already have large family shareholdings, have often been recipients of the largest 
option grants.</p>
<p>Mr Choy's brief job as an ED also allowed him to receive 10% of the options, 
because at the time, listed company option schemes were limited to EDs and 
staff. He became an INED again a month later.</p>
<h3 id="options">Bonus issue and option excess</h3>
<p>Under the rules at the time, the number of options granted under the option 
scheme was limited to 10% of the issued shares from time to time, excluding 
shares issued on the exercise of options. In 1998, OG had already granted 55m 
options relative to 563.2m shares in issue. In 1999, two placings and the 
acquisition of KPGC (see below) resulted in the issue of 260m shares, and there 
were some warrants exercised to issue 2.312m shares. Also, 4.5m options lapsed 
when a director resigned. By our calculations, at that point they could issue up 
to 32,051,200 more options, but they actually issued 36,320,000 options, 
exceeding the limit:</p>
<table class="optable center fcl">
	<tr>
		<td>Shares in issue, 31-Dec-98</td>
		<td>563,200,000</td>
	</tr>
	<tr><td>Placings &amp; acquisition</td>
		<td>260,000,000</td>
	</tr>
	<tr>
		<td>Warrants exercised, 15-Oct-99 to 25-Nov-99</td>
		<td>2,312,000</td>
	</tr>
	<tr class="total">
		<td>Total issued shares for option purposes</td>
		<td>825,512,000</td>
	</tr>
	<tr>
		<td></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Option limit @10% of issued shares</td>
		<td> 82,551,200</td>
	</tr>
	<tr>
		<td>Options granted in 1998</td>
		<td>(55,000,000)</td>
	</tr>
	<tr>
		<td>Lapsed on resignation of Cheung Sze Hoo</td>
		<td>4,500,000</td>
	</tr>
	<tr class="total">
		<td>Further options allowed</td>
		<td>32,051,200</td>
	</tr>
	<tr>
		<td></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Options granted 14-Jul-99</td>
		<td>9,820,000</td>
	</tr>
	<tr>
		<td>Options granted 26-Oct-99</td>
		<td>26,500,000</td>
	</tr>
	<tr class="total">
		<td></td>
		<td>36,320,000</td>
	</tr>
	<tr>
		<td></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Excess grant:</td>
		<td><b>4,268,800</b></td>
	</tr>
</table>
<p>Then, in Nov-99, the company made a bonus issue of 2 new shares for every 
existing share held - in effect, a 3:1 stock split. The options granted in 
Jul-99 and Oct-99 were all exercised before the bonus issue.</p>
<p>The bonus issue should have had no effect on the remaining capacity of the 
option scheme, which was already exhausted, because each share issued under 
previous options would have become 3 shares, and each remaining unexercised 
option from the 1998 grant should have become an option to subscribe 3 shares at 
1/3 of the price.</p>
<p><b>However, OG's 1999 annual report shows that after the bonus issue of 
1,796m shares they granted 182m new options at $0.10 each on 14-Dec-99, when in 
fact the headroom had already been more than used up. This, in our view, was 
against the Listing Rules and the terms of the scheme.</b></p>
<p>If you could simply generate capacity in option schemes by declaring bonus 
issues or stock splits, then it would evade the 10% limit. The larger the bonus 
issue, the greater the option scheme capacity. Clearly that is not how the rule 
was supposed to work.</p>
<p>Of those 182m ill-gotten options, 50m went to Mr Yip, 50m to his sister, and 
50m to Mr Wong Yat Fai, then Finance Director. The holders wasted no time in 
exercising the 7-year options. Of the 182m total, 86m were exercised within the 
last 17 days of 1999 (including 70m by directors), and the remainder in 2000. 
Since then, there has been a 10:1 consolidation of the shares, so 18.2m of 
today's shares, or 4.3% of OG, resulted from this episode.</p>
<h3 id="BLT">Beijing Linefan Technology</h3>
<p>Now we move on to one of OG's acquisitions which later led to an IPO.</p>
<p>OG's principal PRC operating subsidiary was 93.75%-owned Nanhai Xingye Shaped 
Bronze &amp; Aluminium Products Co., Ltd. (<b>Nanhai Xingye</b>). The other 6.25% 
was owned by Nanhai Xingye Shaped Products Industry Ltd (<b>Xingye Industry</b>), 
which was 75% owned by Mr Yip Lai Po, an ED of OG, and 25% by his brother, Yip 
Xin Po. Neither is related to Mr Yip. </p>
<p>It's worth pausing to note that in Jan-00, OG's shares rose 173% from $1.21 
to $3.30 (scrip-adjusted). On 12-Jan-00 OG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000113/LTN20000113033.HTM">
announced</a> that they had been approached regarding <i>&quot;investment 
opportunities in certain internet related businesses&quot;</i>. Forget aluminium 
extrusion, dotcom was the future.</p>
<p>On 18-Feb-00, OG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000221/LTN20000221080.HTM">
announced</a> that Nanhai Xingye would acquire 1.6m shares (then 40%) in Beijing 
Linefan Technology Company (<b>BLT</b>) from Mr Hong Ying Bin (<b>Mr Hong</b>), an independent 
third party, for HK$148m (or $92.5 per share), of which $114m was 32.5m new OG 
shares at $3.51 each (scrip-adjusted), and the rest in cash. The new shares 
represented 9.03% of the enlarged share capital. Mr Hong also held an option to 
subscribe 3.36m shares in BLT at US$1.5 (HK$11.63) per share in the first half 
of 2000 or US$2 (HK$15.50) per share in the second half of 2000, which would 
dilute Nanhai Xingye to 21.74% if it were exercised.</p>
<p>BLT had an 84.44% interest in a now-defunct search site called search263.net. 
The deal constituted a Major Transaction under the Listing Rules and an OG
<a target="_blank" href="../codocs/1220_000320c.pdf">circular</a> dated 20-Mar-00 included an entertaining valuation of RMB1,231m for 
seach263.net, signed by Brett Shadbolt as MD of 
<a href="../dbpub/articles.asp?p=5577">Sallmanns (Far East) Limited</a>. Mr Shadbolt and his firm also featured in our story on
<a target="_blank" href="yaniononion.asp">Yanion's Rotten Onion</a> in 2003 for 
a similar piece of valuation work in Jul-00.</p>
<p>OG's acquisition was approved at an EGM on 5-Apr-00 and completed on 
10-Apr-00, according to the 1999 annual report. As you've guessed by now, BLT had very little in the way of 
net assets. In its 31-Dec-00 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010502/LTN20010502089.htm">annual report</a>, OG recorded a share of net 
assets of BLT of just $0.948m compared with the purchase price of $148m, and a consequent write-off of goodwill of 
$147.047m directly against reserves. By then, OG's interest in BLT had been 
diluted to 23.81% and transferred from Nanhai Xingye to a wholly-owned 
subsidiary of OG, Ocean Grand Technology Co Ltd (<b>OGTCL</b>).</p>
<h3 id="linefan">Linefan IPO</h3>
<p>In 2002, BLT was injected into <a target="_blank" href="../dbpub/articles.asp?p=15208">Linefan 
Technology Holdings Ltd</a> (<b>Linefan</b>, 8166) and listed on GEM on 
5-Feb-02.</p>
<p>Now, remember that OG claimed to have spent $148m in shares and cash on its 
stake in BLT? Here's where things get murky. According to page 8 of the Linefan
<a target="_blank" href="http://www.hkgem.com/newlistings/prospectuses/e_8166pro-20020128-revised.pdf">prospectus</a> 
dated 28-Jan-02, OGTCL's entry cost to Linefan was only $3.96m, not $148m. </p>
<p>Digging deeper, on page 176, paragraph 13 states that pursuant to an 
agreement dated 25-Feb-00, Nanhai Xingye acquired RMB861,800 of registered 
capital in BLT from Mr Zhu Zhaofa (<b>Mr Zhu</b>), the founder and Chairman of 
Linefan, and the consideration was par value. Paragraph 18 states that on 
2-Mar-00 Nanhai Xingye contributed RMB738,200 in fresh capital to BLT, taking 
its holding up to RMB1.6m out of RMB4m of capital, or 40%.</p>
<h4>Contradictions</h4>
<p>Now we have several contradictions. OG said on 18-Feb-00 that Nanhai Xingye 
was buying the 40% stake in BLT from Mr Hong for $148m, and repeated the claim in a 
circular dated 10-Mar-00, but 2 years later, in its prospectus, Linefan says 
that the deal was dated 25-Feb-00, 7 days <u>after</u> it was announced, didn't 
involve Mr Hong at all, and cost RMB1.6m, nothing like HK$148m. <b>So what really 
went on here? Who's telling the truth? If it is Linefan, then who received the rest 
of the $148m payment by OG, in the form of shares and cash?</b></p>
<p>According to the prospectus, in a restructuring, on 20-Mar-00, Chineseroad Inc (<b>Chineseroad</b>) was incorporated in the 
BVI, and on 1-Apr-00 and 1-Aug-00 it issued a total of 40,000 shares of US$1 
each, of which OGTCL was beneficially allotted 15,000 shares (37.5%) at an 
undisclosed price. On 
25-Sep-00, Chineseroad acquired 100% of BLT for US$500k. On 30-Nov-00, Mr Hong 
exchanged his option to subscribe 3.36m shares of BLT (at US$2 each) for options 
to subscribe 33,600 shares in Chineseroad at an undisclosed price. As far as we 
can tell, these options were assigned to various parties and on 31-Dec-00 12,195 
options were exercised by 4 individuals at HK$220 per share and the rest lapsed. 
The same day, two individuals sold 1,000 shares (2.5%) of Chineseroad to OGTCL 
for US$1,000 (HK$7.8 per share), and Chineseroad bought a 55% interest in Karson 
Consultants Ltd in return for 15,005 new shares.</p>
<p>As a result, on 31-Dec-00, OGTCL owned 16,000 out of 67,200 shares in 
Chineseroad, or 23.81%, which is the figure you'll see in OG's 2000
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010502/LTN20010502089.htm">
annual report</a>. At least they agree on something.</p>
<p>On 24-Jan-02, in preparation for the IPO, all the 67,200 shares of 
Chineseroad were exchanged for 709,090,000 shares of Linefan. The listing was 
done by placing, and the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020201/00000MC20020131225805F.pdf">
allotment results</a> including a concentration warning because the top 10 
placees took 80% of the offering, and the top 25 took 97.43%. The shares were 
listed at a scrip-adjusted $2.10 and closed Friday at $0.06, down 97.1% since 
IPO.</p>
<h4>Board dispute</h4>
<p>All was not well between Mr Yip and Linefan, of which he was Non-executive 
Director and Honorary Chairman. On 5-Jun-02, Linefan
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020605/00000MC20020605223805E.pdf">
called</a> an EGM for 28-Jun-02, purportedly in response to a requisition by 
unnamed shareholders, trying to confirm the appointment of Mr Zhu as Chairman of Linefan 
since his re-election as a director at the AGM on 26-Apr-02. This is odd, because normally the board 
elects the Chairman, not the shareholders, and Mr Zhu had been Chairman in the 
prospectus and since the IPO. We can infer a power struggle within the board.</p>
<p>The EGM notice also proposed to 
&quot;consider&quot; the appointment of an ED and an INED, which the board could 
have appointed on its own, if they weren't in dispute. The EGM was held and the 
resolutions passed, but on the same day, two <i>ex parte</i> injunctions 
obtained by Mr Yip from Mr Justice Michael Hartmann were served on Linefan, as
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020704/00000MC20020704063955A.pdf">
announced</a> on 3-Jul-02, the essence of which was that Mr Zhu should not act 
as Chairman and the two candidates should not act as directors until a full court 
hearing. Then on 12-Jul-02, at the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020716/00000MC20020715230219H.pdf">
return hearing</a>, a settlement was reached, in which OGTCL agreed to 
requisition, and Linefan agreed to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020730/00000MC20020730004803S.pdf">
call,</a> another EGM held on 13-Aug-02, when the appointments and Mr Zhu's 
Chairmanship were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020813/00000MC20020813212644O.pdf">
confirmed</a>.</p>
<p>Apart from Linefan, the injunctions were also against several Linefan 
directors, including Godfrey Hung Kwok Wa (<b>Mr Hung</b>). A former banker, he 
joined OG in 1998 and was an ED of OG from 30-Jun-00 to 18-Mar-02 (just after 
Linefan's IPO). He became an ED of Linefan on 4-Dec-00, long before the IPO, so 
in effect he was overseeing the investment for OG. If Mr Yip found it necessary 
to include Mr Hung in the injunction, then this was no longer a happy 
relationship. Eventually, Mr Hung left Linefan on 23-Apr-03 and meanwhile, on 
18-Apr-02, he became finance director of home appliance-maker
<a target="_blank" href="http://www.warderly.com/">Warderly International 
Holdings Ltd</a> (0607), which listed on 18-Dec-02.</p>
<p>One of the INEDs of Linefan appointed 15-Sep-01 (before the IPO) was Vincent 
Lee (<a href="#INEDs">see below</a>). The injunctions were not aimed at the INEDs. Linefan's board 
tensions culminated in a mass resignation effective 16-Oct-02 (not
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021107/GLN20021107029.pdf">
announced</a> until 7-Nov-02), when Mr Yip and Mr Lee resigned, along with 
another ED and an INED. On 4-Dec-03, Mr Lee was appointed as an INED of OG.</p>
<p>OG's holding in Linefan was diluted from 23.81% to 18.17% in the IPO. OG
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=4333">
began</a> selling its stake on 19-Jun-03, and by 25-Aug-03, they had reduced to 
4.74%, below the disclosure threshold, and completed the disposal by year-end. 
Based on transaction disclosures, we estimate they only got back about $6m from the 
$148m investment, but in any event it was not more than the $10.45m figure in 
the 2003
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040504/LTN20040504126.htm">
cash flow statement</a> for &quot;sale of investments&quot;.</p>
<h3 id="evolution">Evolution of OGC</h3>
<p>So much for the mystery of Linefan and the $148m payment. Now we move on to 
another episode, the creation of OGC.</p>
<p>On 21-Jul-99, OG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19990722/LTN19990722024.HTM">
agreed</a> to buy Kenlap P.G.C. Manufacturer Co Ltd (<b>KPGC</b>), which was 
then owned 90% by Mr Yip and 10% by his sister Christie Yip Wan Fung (<b>Ms Yip</b>), 
an executive director of OG, for HK$47.25m, of which $42m was paid in shares at 
$0.30 each, and the rest in cash. KPGC was established in 1991 for the 
production of electroplating chemicals. In another warning sign of financial 
pressure, The Hong Kong Chinese Bank Ltd had 
issued a writ against KPGC on 18-Mar-99, in connection with &quot;certain banking 
facilities&quot; extended to KPGC, which was settled on 6-Aug-99.</p>
<p>Interestingly, the announcement said that Mr Yip had warranted that the net 
tangible assets of KPGC at 31-Mar-99 would be not less than $22.35m, as shown in 
the management accounts for that period. However, the 1999 annual report of OG 
shows that the net tangible assets at completion were only $9.31m. <b>Did Mr Yip 
make good on his guarantee? Or did they just quietly forget about it?</b></p>
<h4><b>IPO planning</b></h4>
<p>Skipping forward 2 years, on 9-May-01, Herbert Hui Ho Ming (<b>Mr Hui</b>) was appointed as 
non-executive Vice Chairman of OG. To this he added the title of Deputy Chairman 
on 18-May-02 (is there a difference?) and then became Executive Deputy and Vice 
Chairman on 8-Aug-02.</p>
<p>On 30-Apr-02, OG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020502/LTN20020502019.doc">
announced</a> that 12 investors had subscribed new shares in KPGC equivalent to 
15.12% of the enlarged capital for HK$55m. OG granted each investor a put option 
to sell the shares back to OG at a 20% profit in the event that KPGC was not 
listed within 12 months of completion, or if the market capitalisation at IPO 
was less than an agreed (but undisclosed) amount. However, on 17-May-02, 4 of 
the subscribers for half the original issue dropped out, and 5 new subscribers 
for $7.5m came in,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020521/LTN20020521015.doc">
reducing</a> the total to $35m for 10.18% of KPGC.</p>
<p>On 26-Nov-02, OG formally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021126/LTN20021126094.doc">
applied</a> to the Stock Exchange to spin off KPGC in a separate listing, under 
OGC. The listing sponsor would be Kingsway Capital Ltd (<b>Kingsway</b>). 
However, on Christmas Eve 2002, OG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021224/LTN20021224077.doc">
announced</a>, without naming them, that a director of OGC and a director of 
Kingsway were married to each other, so Kingsway would not be the sponsor after 
all, but would be co-sponsor, and OGC would have to apply again. It's funny how 
these things slip the mind.</p>
<p>The happy couple were not named at the time, but they are Mr Hui and 
<a target="_blank" href="http://www.pcwoo.com/partners-a1.htm">Ms Angela Ho Man Kay</a> 
(<b>Ms Ho</b>), who was then an executive director of Kingsway, having 
previously been a partner of law firm Siao, Wen and Leung. In 2005, she joined law 
firm P.C.Woo &amp; Co as a partner. In OG's Dec-04 and OGC's Mar-05 annual reports, 
both added P.C. Woo &amp; Co to their list of solicitors.</p>
<p>The Senior Partner of P.C. Woo &amp; Co is Moses Cheng Mo Chi (<b>Mr Cheng</b>), former Chairman of 
the Listing Committee and Hong Kong Institute of Directors, where he was 
succeeded by Mr Hui. Mr Cheng is now a Government-appointed director of Hong Kong 
Exchanges and Clearing Ltd (<b>HKEx</b>, 0388).</p>
<p>On 15-May-03, OG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030515/LTN20030515089.pdf">
announced</a> that it had extended the 1-year deadline for the listing of OGC to 
15-Jul-03, but one of the 13 subscribers of KPGC had exercised its put option. 
In return for the extension, the put option price was increased to 23.33% over 
the subscription price, maintaining the effective yield-to-put at 20% p.a.. In 
the end, the 12 remaining subscribers sold their resultant OGC shares in the IPO 
at just a 1.1% profit on their investment cost.</p>
<h3 id="margins">Incredible margins</h3>
<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030617/LTN20030617065.htm">
prospectus</a> of OGC dated 17-Jun-03 makes interesting reading. During the 
track record period of 3 years to 31-Mar-02 and 9 months to 31-Dec-02, in each 
period over 81% of the gross profit came from one activity, namely the 
processing of Palladium powder into Palladium salt. OGC outsourced all of this 
work to a mainland firm called <a target="_blank" href="http://www.crichem.com/">
Changzhou Chemical Research Institute Co Ltd</a> (<b>CCRI</b>), founded in 1976, 
owned by its employees and located in Changzhou, Jiangsu province. CCRI also 
helped with technology transfer to OGC's own Palladium processing plant in Zuhai, 
but this did not commence operations until Jan-03, after the track record 
period.</p>
<p>On this subcontracted activity, OGC made a gross profit margin of between 
85.8% and 89.6% in each of the 4 periods, an amazingly high figure in any 
circumstances, but particularly given that OGC was just the middle-man between its customers and CCRI. All of this business 
came from just 3 customers in the first year and 4 customers in each of the 
other periods. OGC charged its customers 15% of the sub-contracting fee on 
delivery of the product (which, during the track record period, was paid 
directly to CCRI), and the remaining 85% (similar to its profit margin) 
within 12 months. Under normal accounting, the revenue and profit 
were recognised on delivery, and the second instalment booked as a 
trade receivable. The customers were never named.</p>
<p>After the IPO, and the transition of the sub-contracting business to OGC's 
new plant in Zuhai, OGC's profit margins continued in this incredible fashion.
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050725/2882/f113.pdf">
Note 28</a> of the latest
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050725/LTN20050725121.htm">
annual report</a> for 31-Mar-05 shows that the sub-contracting segment made a 
segment profit of $72.20m on sales of $73.07m, or a 98.8% profit margin. The 
margin was 95.3% in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051222/2882/EWF101.pdf">
interim report</a> to 30-Sep-05. By then, trade receivables had ballooned to 
$343.0m, of which $152.5m was between 3 and 12 months old.</p>
<p><b>Two things should strike you between the eyes here. First, how many 
businesses do you know that can book profit margins of over 85% and up to 98.8% 
for year after year? Surely competition would drive that down, whatever the 
barriers to entry. Nothing in the prospectus explained those margins to our 
satisfaction. Second, why were the credit periods so long?</b></p>
<p>The listing rules required that the company must have made a net profit of at 
least $20m in the last year before listing; OGC made $23.19m in the year to 
31-Mar-02, so it only just qualified.</p>
<p>Despite the fact that OG had a year-end of 31-Dec, KPGC did not change its 
own year-end of 31-Mar after it was acquired by OG in 1999. The accountants' 
report by Moores Rowland in the OGC prospectus revealed 
that the accounts of KPGC, the principal subsidiary, were audited by Chow &amp; Lee 
C.P.A. Ltd for Mar-00 and Victor Ling, Tang &amp; Partners, CPA, for Mar-01. This 
seems odd given that KPGC was a subsidiary of OG, which was audited by larger 
firms. Victor Ling, Tang &amp; Partners was also the joint reporting accountant in 
the IPO of Linefan.</p>
<div class="regbox">
	Regulatory note: We wonder how common amongst listed companies is the 
	practice of using different auditors for subsidiaries and for the parent's 
	consolidated accounts. There is no requirement to disclose this in the 
	listed parent's accounts. We think there should be. The potential for fraud 
	is greater if the parent's auditor is relying on work done by other firms 
	who do not see the whole group picture.</div>
<p>On 12-Jul-06, OGC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060713/LTN20060713026.pdf">
announced</a> that the auditors have <i>&quot;highlighted certain potential 
accounting irregularities...concerning the recoverability, validity and 
genuineness of certain accounts receivable, accounts payable and sales and 
purchases&quot;</i> of a subsidiary of OGC.</p>
<h3 id="yearend">Change of year end</h3>
<p>It wasn't until 26-Jul-05, 6 years after the acquisition of KPGC, that OG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050727/LTN20050727168.pdf">
decided</a> to bring the year-ends of the two companies into alignment, but 
rather unconventionally, they moved the parent's year-end rather than the 
subsidiary's. This resulted in OG's year being extended to the 15 months ended 
31-Mar-06, in line with OGC's year-end, and consequently the auditors would not 
be around for an extra 3 months.</p>
<h3 id="auditors">Change of auditors</h3>
<p>Then on 17-Jan-06, Moores Rowland Mazars (<b>MRM</b>)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060123/LTN20060123061.pdf">
resigned</a> as auditors and were replaced with PricewaterhouseCoopers (<b>PwC</b>). The 
announcement was self-contradictory, stating first that OG was changing auditors 
because it was <i>&quot;good governance and practice&quot;</i> to change auditors now and 
then, and MRM had been auditors for the last 5 years, but then saying that MRM 
was unable to reach agreement on the audit fee and so had resigned. <b>But why 
would OG even be discussing an audit fee with MRM if they had already decided to 
change auditors on governance grounds? Which was it, the fees or the governance?</b></p>
<p>As we now know, when PwC did go in, they found
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060712/LTN20060712046.pdf">
potential accounting irregularities</a> galore.</p>
<h3 id="INEDs">The INEDs</h3>
<h4>OG</h4>
<p>The original two INEDs of OG since listing were 77 year-old Mr Choy, 
mentioned above, and 83 year-old Mr Chau Po Fan (<b>Mr Chau</b>). Mr Choy is 
currently an INED of 6 other companies including
<a target="_blank" href="../dbpub/articles.asp?p=3771">Yanion International Holdings Ltd</a> (0082) 
which we wrote about in 2003. Mr Chau is a director of CITIC and, like Mr Choy, 
a member of the CPPCC National Committee.</p>
<p>The third INED, since 4-Dec-03, was the relatively young
<a target="_blank" href="http://etungtai.com/vincentmlee.html">Vincent Marshall 
Lee Kwan Ho</a> (<b>Mr 
Vincent Lee</b>), Managing Director of
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_RO.jsp?charset=ISO8859_1&ceref=AAU638&applNo=0002">
Tung Tai Securities Co Ltd</a> (<b>Tung Tai</b>), part of the 
<a target="_blank" href="http://www.etungtai.com/">Tung Tai Group</a> founded by 
his father, 85 year-old
<a target="_blank" href="http://etungtai.com/leothlee.html">Leo Lee 
Tung Hai</a>, who was a Standing Committee member of the CPPCC and collects 
gongs in his dotage, having just traded in his rather common GBS for a sexier
<a target="_blank" href="http://www.info.gov.hk/gia/general/200607/01/P200606300226.htm">
GBM</a>. Personally, we'd rather have an
<a target="_blank" href="http://en.wikipedia.org/wiki/MG_B">MGB</a>.</p>
<p>Mr Vincent Lee is also Chairman of the <a target="_blank" href="http://www.isd.org.hk/">Institute of Securities Dealers Ltd</a>, and an elected INED of 
HKEx, of which your editor is also an elected INED. Tung Tai was an underwriter 
in the IPOs of both OG in 1997 and OGC in 2003.</p>
<p>The OG board held only 2 meetings in 2004 - presumably for the 2 sets of 
results, and all 3 INEDs attended. There were also 2 audit committee meetings 
with full attendance. The INEDs received total fees of $820,000 for the year.</p>
<h4>OGC</h4>
<p>The original two INEDs of OGC were William Lo Wing Yan (<b>Dr Lo</b>) and 
V-Nee Yeh (<b>Mr Yeh</b>).</p>
<p>Dr Lo is Vice Chairman and Managing Director of 
fashion shop I.T Ltd (0999). He is also an INED of
<a target="_blank" href="../dbpub/articles.asp?p=4789">Softbank Investment International (Strategic) 
Ltd</a> (0648), Varitronix International Ltd (0710), Capital Publications Ltd 
(8155) and Nam Tai Electronics, Inc (NYSE:NTE) and NED of Panorama International Holdings Ltd (8173).</p>
<p>Mr Yeh is Chairman 
of Hsin Chong Construction Group Ltd (0404), founded by his granddad. On 8-Sep-04, 
he was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040909/LTN20040909107.pdf">
redesignated</a> as NED of OGC in view of the fact that funds managed by Value Partners 
Ltd, of which he is a co-founder, director, and shareholder, held over 9% of OG. 
They still held over 7% when the stock was suspended last week. Mr Yeh is also 
an INED of Kingway Brewery Holdings Ltd (0124), where he overlapped with Mr Hui 
for a year, and Next Media Ltd (0282). He is an alternate to his dad as INED of 
Hysan Development Co Ltd (0014) and China Travel International Investment Hong 
Kong Ltd (0308).</p>
<p>Also on 8-Sep-04, two new INEDs were appointed by OGC: Liberal Party 
legislator for catering and smoking
<a target="_blank" href="http://www.tommycheung.com/">Tommy Cheung Yu-yan</a> (<b>Mr 
Cheung</b>), and David Wan Ngar Yin (<b>Mr Wan</b>). Mr Cheung is also an INED 
of snack-food maker Wah Yuen Holdings Ltd (2349). Mr Wan is also an INED of
<a target="_blank" href="../dbpub/articles.asp?p=4788">139 Holdings Ltd</a> (<a href="#beginning">see above</a>),
<a target="_blank" href="../dbpub/articles.asp?p=14072">Mandarin Entertainment (Holdings) Ltd</a> 
(0009) and, since 3-Jan-06, <a target="_blank" href="../dbpub/articles.asp?p=16655">Rontex 
International Holdings Ltd</a> (1142). He is a director of Yuanta Core Pacific 
Securities (Hong Kong) Co Ltd. Core Pacific-Yamaichi Securities (H.K.) Ltd was 
an underwriter in the OGC IPO, while Core Pacific - Yamaichi International (H.K.) 
Ltd was an underwriter in the OG IPO.</p>
<p>The OGC board held only 2 meetings in the year to Mar-05, and Dr Lo and Mr 
Yeh each missed one of them. There were 3 audit committee meetings with full 
attendance. The INEDs were paid $605k during the year. Mr Cheung's annual fee 
was $240k, while Mr Wan and Mr Yeh were on $180k each, all effective 8-Sep-04.</p>
<h3 id="reasons">Personal reasons disease</h3>
<p>A sudden outbreak of personal reasons infected the boards of both companies 
last week, and it appears to be highly contagious. Dr Lo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060720/LTN20060720067.pdf">
resigned</a> from OGC for &quot;personal reasons&quot; on 18-Jul-06. Mr Vincent Lee
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060725/LTN20060725046.pdf">
resigned</a> from OG for &quot;personal reasons&quot; effective 21-Jul-06, Mr Choy
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060727/LTN20060727054.pdf">
caught</a> &quot;personal reasons&quot; on 25-Jul-06, and Mr Chau was infected on 
26-Jul-06, the same day Mr Wan caught the bug at OGC. Only Mr Cheung and Mr Yeh 
had the decency to admit that they were resigning on 26-Jul-06 because 
provisional liquidators had been appointed.</p>
<p>But we have identified patient zero in this epidemic. The boards of both 
companies received a letter on 25-Jul-06 from ED Mr Kwan Yan dated 15-Jun-06, 
resigning with immediate effect. Another symptom of the disease appears to be 
amnesia, because Mr Kwan managed to sign off on several announcements in the 40 
days after he had supposedly already resigned.</p>
<div class="regbox">
	Regulatory note: the &quot;personal reasons&quot; euphemism is used far too widely. It 
	is acceptable if someone is resigning due to reasons of illness, bereavement 
	or other genuine personal difficulties, but we propose that anyone who uses 
	the &quot;personal reasons&quot; excuse should, if they have other listed 
	directorships, be required to explain in the same announcement why these 
	&quot;personal reasons&quot; do not make it necessary to resign from those positions 
	too.</div>
<h3 id="hui">Herbert Hui</h3>
<p>Mr Hui's choices of employment, since he stepped down as Head of the Listing 
Division of the Stock Exchange, are negatively correlated with subsequent returns on his 
employer's shares. On 1-May-97, he joined Guangdong Investment Ltd (<b>GDI</b>, 
0270) as Managing Director. The shares closed that day at $7.40 with a market 
cap of about $17.3bn. He resigned on 
15-Jan-00 when the stock price was $1.23, down <b>83.3%</b>.</p>

<p>Mr Hui then became Managing Director of SHKP's spin-off Sunevision Holdings Ltd 
(<b>Sunevision</b>, 8008) on 29-Jan-00, and the company was listed on 17-Mar-00
when it closed at $15.10 with a market cap of $30.2bn. He resigned on 14-Nov-00, when the stock was $3.75,
down <b>75.2%</b>.</p>

<p>On 8-Mar-02, he joined <a target="_blank" href="../dbpub/articles.asp?p=4780">Interchina Holdings 
Ltd</a> as Executive Deputy Chairman, when the shares were $0.89 and the market 
cap about $3.9bn, and became 
non-executive director on 7-Aug-02, where he remains and is chairman of its 
Corporate Governance Committee. The shares closed yesterday at $0.025, down <b>
97.2%</b>. Interchina was 
a company we <a target="_blank" href="interchinabubble.asp">criticised</a> as a 
bubble stock on 23-Oct-01, when it was $1.62.</p>
<p>It's unlikely that shareholders will get any money back on OG 
or OGC, so we can count that as a net loss of<b> 100%</b> during Mr Hui's tenure 
as Executive Deputy and Vice Chairman of both.</p>
<p>Now don't get us wrong, we are not saying anything about cause and effect 
here, just correlation. These companies would probably have wiped out without Mr 
Hui's presence. However, people who have risen (sometimes by default) to 
high-status positions have a CV that brings credibility to companies they 
associate with. They must pick their associations with good judgement and due 
diligence, because of the implicit endorsement the association carries. You can 
only use your credibility so many times before it starts to devalue.</p>
<p>Mr Hui is also an INED of <a target="_blank" href="../dbpub/articles.asp?p=777">CITIC 21CN Co 
Ltd</a> (0241) since 16-Nov-05. We <a target="_blank" href="kamboat.asp">warned</a> 
readers about that stock on 23-Mar-05 when it was $3.175. So far, it is down 
67.2% to $1.04, although up from $0.88 when Mr Hui joined it, but we still think 
it is in a bubble. He's also an INED of Bank of Communications Co., Ltd (3328) 
and Dynasty Fine Wines Group Ltd (0828) since their IPOs.</p>
<p>Incidentally, Hubert Chan Wing Yuen, Mr Hui's 
sidekick who followed him from the Listing Division of the Stock Exchange to GDI, Sunevision and then 
Interchina, is still there at Interchina as an executive director. He and Mr 
Hui's wife, Ms Ho, also sit as INEDs on the board of fur-trader-cum-bond-fund
<a target="_blank" href="../dbpub/articles.asp?p=3017">Rising 
Development Holdings Ltd</a> (1004).</p>
<p>Mr Hui has also been an INED of Hsin Chong Construction Group Ltd (0404) 
since 16-Jun-97. Since Mr Yeh was an INED and NED of OGC, there was a 
cross-directorship established, which we consider to be a conflict of interest. 
Just ask Ken Langone and Dick Grasso.</p>
<h3 id="lipservice">Lip service to Corporate Governance</h3>
<p>Mr Hui, as Chairman (until he quit last week) of the Hong Kong Institute of 
Directors, has, in our view, long been one of Hong Kong's leading foot-draggers 
on corporate governance reform. In an opinion piece for Company Secretary 
magazine in Aug-05, he argued that <i>&quot;Hong Kong needs to step back from its 
rapid corporate governance reforms and look at the issues from the point of view 
of directors&quot;</i>. He has also said <i>&quot;the benefits of [good] corporate 
governance are not immediately apparent&quot;</i> (SCMP, 21-Jul-03).</p>
<p>He also spoke out in 2003 against quarterly reporting, 
complaining about the <i>&quot;overwhelming amount of work and costs this entails for 
most companies, especially during these difficult times&quot;.</i> Why is it then, 
that almost every little company on the GEM complies with the requirement to 
report quarterly within 45 days? Thanks to the lobbying of Mr Hui and others, Hong Kong is the last significant market in Asia that 
doesn't require its main-board companies to report quarterly. He also opposed 
disclosure of individual directors' remuneration - something which is now 
mandatory.</p>
<p>His predecessor as Chairman of HKIoD, and now Ms Ho's Senior Partner at P.C. 
Woo &amp; Co, Mr Cheng, is also a big fan of Status Quo. His brief stint 
as Chairman of the Listing Committee will not be remembered for reforms but for 
presiding over roll-backs like the <a target="_blank" href="receivables.asp">
exemption</a> on disclosure of large accounts receivable. Mr Cheng still sits on 
the board of 12 listed companies, mostly as an independent director, including 
HKEx where the Government appointed him as a director in April, not to mention 
umpteen government committees. His past independent directorships famously 
include <a target="_blank" href="../dbpub/articles.asp?p=7078">Pacific Challenge Holdings Ltd</a>, 
now New Times Group Holdings Ltd (0166).</p>
<p>The Chief Executive of the HKIoD is
<a target="_blank" href="http://www.dab.org.hk/en/main.jsp?content=category-content.jsp&categoryId=1083">
Carlye Tsui Wai Ling</a>, a Government-appointed member of Wan Chai District 
Council and member of the long-winded Democratic Alliance for the Betterment and 
Progress of Hong Kong, which should actually be renamed the Alliance for the Delay 
of Democratic Progress in Hong Kong. It's kind of fitting that she should be CEO 
of the HKIoD, which has perfected the art of appearing to be in favour of good 
corporate governance while opposing most regulations that would bring more 
transparency and accountability to listed companies and their boards.</p>
<p>Instead, they hand out mutual admiration
<a target="_blank" href="http://www.hkiod.com/eng/dya_rollofawardees.asp">
directorship awards</a> and advocate training for directors. That's all well and 
good, and we can think of plenty of directors in the &quot;honest but ignorant&quot; 
category who could benefit from a greater knowledge of regulations. However, it doesn't address the need for better disclosure 
requirements and deterrents 
against abuse.</p>
<p>Most, if not all, directors know right from wrong. Those who choose the 
latter know when they are lying or stealing, cooking the books or abusing minority shareholders' 
money, and they do so with full knowledge of the low probability of being caught 
and convicted. You don't find many instances of accidental theft. But the HKIoD would 
be opposed to class action rights for minority shareholders, or giving them the 
right to elect independent directors without allowing the majority shareholders 
who run the company to decide the outcome, or the right to approve pay-rises for directors who are also controlling shareholders.</p>
<p>The HKIoD, under Mr Hui's chairmanship, also
<a target="_blank" href="http://www.hkiod.com/eng/about_position_consultation.pdf">
opposed</a> the transfer of listing functions to the SFC, whinging that the 
rules would <i>&quot;lose their vibrance, flexibility and marketing dynamics&quot;</i> - 
in other words, they say, rules are only OK if you can bend them to win 
business.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17952">3DG HOLDINGS (INTERNATIONAL) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=777">Alibaba Health Information Technology Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15208">China Eco-Farming Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4780">EverChina Int'l Holdings Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6386">GLOBAL CREDIT SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11109">HONG KONG INSTITUTE OF DIRECTORS LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=35709">KENLAP INVESTMENT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5728">Moores Rowland</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5825">P.C. Woo & Co.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5577">PURVIEW (FAR EAST) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4929">ZHIDAO INTERNATIONAL (HOLDINGS) LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8851">Chan, Hubert Wing Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=35469">Chau, Po Fan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1053">Cheng, Moses Mo Chi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17494">Cheung, Tommy Yu Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6384">Choy, Milano Tak Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3025">Ho, Angela Man Kay</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=4444">Hui, Herbert Ho Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10848">Hung, Godfrey Kwok Wa</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10814">Lee, Vincent Marshall Kwan Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9837">Lo, Paulus Wai Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6301">Lo, William Wing Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=44809">Shadbolt, Brett Arthur</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14941">Tsui, Carlye Wai Ling</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15008">Wan, David Ngar Yin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10152">Wong, Desmond Yat Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=962">Yeh, V Nee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8035">Yip, Christie Wan Fung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6382">Yip, Michael Kim Po</a></li>
				
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