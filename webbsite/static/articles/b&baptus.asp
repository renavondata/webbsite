
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

<script type="text/javascript">document.title="B&B and Aptus";</script>

	<div class="summary">We issue a Webb-site.com "bubble rap" warning on Aptus (8212) and its parent B&B (8156). Aptus claims to have a deal with an arm of CNPC, parent of PetroChina, which apparently needs tiny GEM companies to help finance its mainland oilfields, while B&B, a honey trader, has bought a ticket in the mainland lottery which we expect will give you a worse return than the Mark Six if you buy the stock. We also take a close look at the financial engineering behind all this.</div>

<h2 class="center">B&B and Aptus<br>
<span class="headlinedate">22 May 2006</span></h2>
<p>A month ago, we warned you about the
<a target="_blank" href="stirfriedlobster.asp">stir-frying</a> of Hon Po Group 
(Lobster King) (0228), which was then at $3.325. That little bubble has since 
begun to burst, closing on 19-May-06 at $1.46, down 56% so far.</p>
<p>Continuing on the theme, we turn our attention to GEM-listed Aptus Holdings 
Ltd (<b>Aptus</b>, 8212) and its current parent, GEM-listed B &amp; B Group Holdings 
Ltd (<b>B&amp;B</b>, 8156). At 30-Apr-06, they were the 4th and 15th
<a target="_blank" href="http://www.hkgem.com/statistics/ms1/e_Top50MC.html">
largest</a> companies on the GEM respectively.</p>
<h3>Aptus history</h3>
<p>Aptus was listed on 14-May-02 and sponsored by Kingston Corporate Finance 
Ltd. The Joint Lead Manager was Pacific Foundation Securities Ltd (<b>Pacific 
Foundation</b>). The placing involved 121.76m shares at $0.50 each, of which 77.76m were new 
and 44m were existing shares. The placing was later
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020527/00000MC20020527232251A.pdf">
expanded</a> by 18.26m new shares in an over-allotment option. Aptus was 
described in the prospectus as:</p>
<blockquote>
	<p>&quot;a total solutions provider to international and PRC pharmaceutical and 
	healthcare companies by providing them with sound and integrated product 
	commercialisation services as a [Contract Selling Organisation] in the PRC&quot;</p>
</blockquote>
<p>The accounts in prospectus, which were 7 months old by the time it was 
published, showed a net profit of just HK$209k on turnover of $10.60m for the 
year ended 30-Sep-01. Aptus had commenced operations just 2 years earlier. 
Despite that, the IPO valued the firm at $300m. Since then, it has not recorded 
a full-year profit or paid a dividend.</p>
<p>For the year ended 30-Sep-02, Aptus reported a net loss of $3.19m on sales of 
$20.5m. This was followed by a whopping loss of $53.3m for the year to 30-Sep-03 on 
turnover of $17.2m. That year, the auditors, Ernst &amp; Young (<b>E&amp;Y</b>), disclaimed their 
opinion, referring, amongst other things, to insufficient books and records in 
relation to purchases of $15.96m of 
inventories in mainland China which were written off.</p>
<h3>B&amp;B history</h3>
<p>B&amp;B was listed on 12-Nov-02 in an IPO sponsored by Guotai Junan Capital Ltd. 
It was then a distributor of <i>&quot;natural supplementary food products&quot;</i> 
including bird's nest, honey and mead (a wine made from fermenting honey). The 
IPO comprised 112m shares at $0.45 each, of which 96m were new shares and 16m 
were existing shares. Out of this, 30m shares (7.5% of B&amp;B) was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021107/GLN20021107004.pdf">allotted</a> to COFCO (Hong Kong) Limited, a subsidiary of state-owned China 
National Cereals, Oils and Foodstuffs Import and Export Corporation. They sold 
their entire stake on 29-Oct-03 at $0.575 per share. In Aug-05, Mr Ma Lishan, 
former MD of COFCO International Ltd (0506) was appointed as CEO of B&amp;B but not 
as a director.</p>
<p>B&amp;B was founded in Jun-99 by its current Chairman, Ms Cheung Kwai Lan (<b>Ms 
Cheung</b>, now 67), and 
her husband, Mr Chan Tung Mei (69). Up to 30-Jun-01, they were the only staff, but by 
the time of the IPO 16 months later, there were 81.</p>
<p>One of the pre-IPO shareholders was a BVI company called Bright Smile Ltd, 
which was 70.4% owned by Ho Yiu Ming, 11.2% by Chan Siu Man, 9.7% by Chu 
Wai Pang and 8.7% by Lee Chiu Kang. 
Bright Smile invested 5 months earlier at just $0.082 per share, an 81% discount 
to the IPO price.</p>
<p>Our database reveals that the same 4 people owned another company, Outshine 
Co., Ltd., in the same proportions as Bright Smile Ltd. Outshine was a 
consultant involved in the pre-IPO &quot;packaging&quot; of Grandy Corporation (<b>Grandy</b>, 
8143) and received shares in Grandy for its work. Grandy was listed on 
10-May-02, 6 months before B&amp;B and, coincidentally, 4 days before Aptus.</p>
<div class="regbox" id="Update">
	<b>Update: 2-Jun-06</b><p>The 70.4% shareholder of both Bright Smile and 
Outshine, Ho Yiu Ming, is not the same person as Mr Billy Ho Yiu Ming, who runs his own accountancy and is an INED of 
<a target="_blank" href="../dbpub/articles.asp?p=12383">Digitalhongkong.com</a> (8007), 
<a target="_blank" href="../dbpub/articles.asp?p=839">Kantone Holdings Ltd</a> (1059), Jade Dynasty Group Ltd (0970), and Sau 
San Tong Holdings Ltd (8200). In the original version of this article, we 
	mistakenly assumed them to be the same person.</p></div>
<h3>B&amp;B takes control of Aptus</h3>
<p>On 23-Mar-04, Aptus
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040426/GLN20040426003.pdf">
agreed</a> to issue 928,571,428 shares to B&amp;B (which held no shares at that 
time) at $0.021 each in exchange for $15.5m in cash plus a 75% stake (valued at 
$4m) of Top Entrepreneur 
Profits Ltd, which in turn owned a 93.75% interest in Hsing Long Trading Co., Pte Ltd (<b>Hsing 
Long</b>), which was incorporated in Singapore in 1996 and traded edible oil 
by-products. A 75% stake in Hsing Long was acquired by B&amp;B on 1-Jan-03 for 
$0.6m, far less than the sale price to Aptus.</p>
<p>The deal gave B&amp;B 60.02% of the enlarged Aptus. Initially, the Stock 
Exchange ruled that the transaction constituted a reverse takeover of Aptus 
under rules in effect prior to 31-Mar-04, and also constituted a spin-off of 
Hsing Long by B&amp;B, but the companies appealed and the Stock Exchange
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040511/GLN20040511044.pdf">changed its mind</a>. The deal was eventually completed on 26-Aug-04 and the 
corresponding
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040827/GLN20040827009.pdf">
announcement</a> also detailed what had gone wrong in the previous year's inventory 
write-off at Aptus.</p>
<p>On 3-Sep-04, 8 days after completion of the takeover, E&amp;Y
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040906/GLN20040906021.pdf">
resigned</a> as auditors, citing the hackneyed lack of consensus over fees, and were 
replaced by <a target="_blank" href="http://www.e-accountants.com.hk/">W.H. Tang &amp; Partners CPA Ltd</a>, the auditors of B&amp;B. 
It is indeed normal for a listed subsidiary to have the same auditors as the 
parent, so they could have just used that&nbsp; fact rather than cite a fee 
disagreement. The only other listed client of this audit firm is GEM-listed
<a target="_blank" href="../dbpub/articles.asp?p=12659">Soluteck Holdings Ltd</a> (8111), since 
7-Mar-06.</p>
<h3>Aptus option blow-out</h3>
<p>On 10-Sep-04, Aptus granted 40.75m options to &quot;eligible participants&quot; of 
the share option scheme at $0.08 per share and on 30-Sep-04, another 19.25m 
options at $0.147 per share, making a total of 60m options, the limit of the 
option scheme established at the time of the IPO. At 30-Sep-04, there were only 
20 full-time employees.</p>
<p>According to p.192 of the IPO 
<a target="_blank" href="http://www.hkgem.com/newlistings/prospectuses/e_8212pro-20020430app04.pdf">prospectus</a>, the option scheme is only open to full-time employees (including 
directors) of Aptus or its subsidiaries. However, we note that the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060215/GLN20060215023.pdf">
interim report</a> for 31-Dec-05 refers to the issue of shares under the option 
scheme as incentives to <i>&quot;the consultants&quot;</i>. If this has actually happened, 
then it appears to have breached the option scheme, since consultants are not 
employees.</p>
<p>Having exhausted the original limit, Aptus refreshed the share option scheme 
at an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041007/GLN20041007008.pdf">
EGM</a> on 1-Nov-04, giving the board 
authority to issue options over 10% of the existing issued share capital. They 
wasted no time in using this; on the same day, they granted share options to 
&quot;eligible participants&quot; to subscribe 154.68m shares at $0.1006 each (the 5-day average 
closing price), maxing out the 10% limit of issued share capital. Almost 
immediately, the market price took off, tripling by the end of the month to 
$0.31, and closing 2004 at $0.44, valuing Aptus at $680.6m. This is pretty 
impressive when you consider that at 30-Sep-04, Aptus had net tangible assets of 
just $13.8m. Aptus' stock price was already showing all the classic signs of 
being manipulated, by unknown persons.</p>
<p>Aptus only had 13 full-time employees at 30-Jun-05, but there were 211.355m 
options outstanding. That's an average of 16.26m options per employee, with an 
average exercise price of $0.101. At the current share price of $2.50 on 
19-May-06, those options would be worth $507.0m, or $39.00m per employee. Is it 
really likely that the employees are worth that much?</p>
<p>Since then, Aptus has refreshed its option limit again, most recently on 
31-Oct-05, so they could issue options over another 10% of the company. As if 
that wasn't enough, on 13-Oct-04 Aptus adopted, without shareholder approval, a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041014/GLN20041014007.pdf">
Share Award Scheme</a> similar to the one which we
<a href="#B&BshareAwardScheme">criticise</a> later in this article for B&amp;B. Up 
to 31-Dec-05, Aptus had not used its Share Award Scheme.</p>
<h3>Sale of original business</h3>
<p>On 4-Mar-05, Aptus
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050304/GLN20050304020.pdf">
agreed</a> to sell Aptus Medical Group Ltd, which held the remains of the core 
business it listed with, for just HK$50k, to Mr Lo Wing Hong, an independent 
third party.</p>
<h3>The oil project</h3>
<p>On 17-Jun-05, Aptus
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050623/GLN20050623005.pdf">
agreed</a> to buy 70% of CNPC Huayou CU Energy Investment Co. Ltd. (<b>CNPC 
Investment</b>), a Sino-foreign co-operative joint venture, for HK$15m, 
of which $5m was in cash and $10m by the issue of 20m shares at $0.50 each, 
representing 1.28% of the enlarged capital. The 
vendor was the generically-named China United (International) Investment Development Ltd 
(<b>China United</b>), a company incorporated in HK, with undisclosed ownership.</p>
<p><i>Webb-site.com</i> did a company search in HK on China United, and found 
that it was incorporated on 18-Feb-04 and as of 18-Feb-06, it has 50m issued 
shares, of which 80% are held by a person named Liu Zichen, with an address in 
Changchun City, China, while 20% are held by a person named Cheung Hing Wah, of 
Kowloon. They are the only directors of China United, and we know nothing else 
about them.</p>
<p>CNPC Investment was established in the PRC on 30-Apr-04 for an operating term 
of 20 years, between China United and China Hua You Group Corporation (<b>Hua 
You</b>). The venture <i>&quot;is principally engaging the business (sic) of 
development and operation of crude oil, natural gas and other related projects&quot;</i>. 
China United holds 100% of the equity interest and the right to the entire 
profit of CNPC Investment, while Hua You is responsible for managing and operating the oilfields. 
For Xin Jiang Fong Cheng Oilfield (<b>Xin Jiang Oilfield</b>), Hua You gets an 
annual management fee of just RMB200k. However, &quot;mining&quot; had not commenced, so no fee 
had yet been paid. <i>&quot;To the understanding of the Directors&quot;</i> of Aptus, Hua 
You is a wholly-owned subsidiary of China National Petroleum Corporation (<b>CNPC</b>), 
the state-owned parent of PetroChina Co Ltd (0857).</p>
<p>CNPC Investment had registered capital of RMB100m of which HK$15m had been 
paid up and the rest was due by 30-Apr-07. CNPC Investment has a &quot;mining right&quot; 
in Xin Jiang Oilfield jointly owned with China National Petroleum Corporation 
Xin Jiang Petroleum Management Bureau (<b>CPG</b>), a wholly-owned subsidiary of 
CNPC, in the ratio of 80% CNPC Investment and 20% CPG. Xin Jiang Oilfield 
comprises three mining zones with a total mining area of 10.9 sq km and a total 
estimated reserve of approximately 31m tonnes of crude oil, of which 6.1m-7.7m 
tonnes is recoverable, so we are told. The mining right expires in December 
2016.</p>
<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051114/GLN20051114004.pdf">
circular</a> for the acquisition was finally published on 11-Nov-05, and the 
acquisition was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051205/GLN20051205019.pdf">
approved</a> on a show of hands on 5-Dec-05, and was completed on 11-Jan-06. 
According to the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060516/GLN20060516050.pdf">
quarterly report</a> for 31-Mar-06, production is due to commence in the second 
half of 2006.</p>
<h3>New INED</h3>
<p>As a side-note, on 11-Jan-06, Mr Tsui Wing Tak, one of the INEDs of B&amp;B and 
Aptus, resigned from both in order to become the qualified accountant of Aptus. He was 
replaced with Mr Edmond To Yan Ming, who was an INED of
<a target="_blank" href="../dbpub/articles.asp?p=16655">Rontex International Holdings Ltd</a> (1142) 
from 19-Dec-02 to 13-May-05. That's a stock we
<a target="_blank" href="toxicIPOs.asp#WWrontex">criticised</a> on 21-Mar-05 
when it was at $0.135. It is down 76% since then.</p>
<h3 id="cashingIn">B&amp;B begins cashing in</h3>
<p>On 20-Mar-06, B&amp;B sold 10m shares in Aptus at $2.50 per share. A week later, 
they sold another 3m shares at $2.65, or about 126x their entry price of $0.021 
per share. The two sales raised $32.95m for B&amp;B, more than they ever invested in 
Aptus. The sales took place just before the end of the quarter to 31-Mar-06, and 
as a result B&amp;B booked &quot;other revenue&quot; of HK$33.04m in its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060516/GLN20060516049.pdf">
quarterly report</a>, which just squeezed them into a small profit of $0.17m for 
the quarter.</p>
<h3>Aptus reality check</h3>
<p>At 31-Dec-05, Aptus had unaudited shareholders' funds of <b>$25.2m</b>, including 
the $15m &quot;deposit&quot; made for the investment in CNPC Investment. After further 
exercises of share options, Aptus now has about 1.668bn shares in issue 
(30-Apr-06) and at the closing price of $2.50 on 19-May-06, it was valued at 
<b>HK$4,170m</b>. So ask yourself this:</p>
<ul>
	<li>Who were the owners of China United, the vendor of 70% of CNPC 
	Investment, which in turn has an 80% interest in Xin Jiang Oilfield?</li>
	<li>The current market value of Aptus is nearly all attributable to its 
	effective 56% interest in Xin Jiang Oilfield, ignoring the loss-making 
	edible oil trading business. But if Xin Jiang Oilfield is worth that much, 
	then why did China United sell the stake to Aptus for just $15m? </li>
	<li>Why would CNPC, one of the largest oil companies on the planet and with 
	access to the capital markets through PetroChina, feel the need for a tiny 
	GEM-listed company, or an anonymous HK firm like China United, to finance 
	the development of an oilfield?</li>
	<li>If the oil deal is for real, then how did China United (and the people 
	behind it) get into this deal for 
	virtually nothing in the first place?</li>
</ul>
<p>If it sounds too good to be true, then it probably is. As you will see below, 
B&amp;B's management, which also runs Aptus, has a history with an aborted 
too-good-to-be-true deal in the lottery space.</p><hr>
<p>So, let's get back to the B&amp;B story.</p>
<h3>Shaw, Kwei &amp; Partners</h3>
<p>On 12-May-03, Kyle Arnold Shaw Jr. (<b>Mr Shaw</b>) was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030513/GLN20030513012.pdf">
appointed</a> as a non-executive director of B&amp;B. He owns
<a target="_blank" href="http://www.shawkwei.com/">Shaw, Kwei &amp; Partners (Asia) 
Ltd</a> (<b>SKP</b>), which manages the Asian Value Investment Fund L.P. (<b>AIVF1</b>) 
and the Asian Value Investment Fund II L.P. (<b>AVIF2</b>). At the time of his 
appointment, Mr Shaw and the funds he managed did not own any shares in B&amp;B. 
AVIF1 began buying into B&amp;B on 16-Feb-04,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040216/GLN20040216048.PDF">
buying</a> 6m shares when the market average was about $1.098, and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040217/GLN20040217017.PDF">
another</a> 8m the next day at about $1.095. On 18-May-04, AVIF1
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040521/GLN20040521019.pdf">
bought</a> another 10.62m off-market at $0.662, a premium of 20.4% to the 
closing price. On 8-Jul-04, SKP began buying for its own account in modest 
amounts. On 19-Oct-04, Mr Shaw was granted options by B&amp;B to subscribe 1.2m 
shares at $0.65 each.</p>
<h3>Your-Mart, their mart</h3>
<p>On 26-Nov-03, B&amp;B
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20031201/GLN20031201000.pdf">
launched</a> a top-up placing of 46m shares at $0.96 through Pacific Foundation, in order to finance a RMB45m investment in 20.83% of a retailing 
joint venture in Hunan later named Your-Mart Co. Limited (<b>Your-Mart</b>), which would include 
11 retail shopping centres and stores with a total area of not less than 270,000 sq.m.. </p>
<p>On 13-Apr-06, B&amp;B conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060413/GLN20060413037.pdf">
agreed</a> to sell its entire stake in Your-Mart to the majority shareholder for 
RMB56.446m, based on an exit P/E of only 4 times 2005 earnings. That's a premium 
of RMB11.446m ($11.006m) or 25.4% over the purchase cost, but B&amp;B has already 
booked $15.933m in its share of profits of Your-Mart from 7-Jun-04 to 31-Dec-05, 
which were retained in Your-Mart, so we expect that overall, the sale will lead 
to a negative contribution from the associate of about $5m in the half-year 
results to 30-Jun-06. The sale is subject to shareholders' approval and at the 
time of writing, the circular has not yet been dispatched.</p>
<h3>The first lottery ticket</h3>
<p>On 11-Aug-05, B&amp;B
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050812/GLN20050812010.pdf">
announced</a> that it would acquire 75% of Skilltime Management Ltd (<b>Skilltime</b>) 
for <b>HK$330m</b> in shares and convertible notes. Skilltime was a BVI shell which 
owned 75% of Dongfeng Limin Technology Ltd (<b>DLT</b>), a Sino-foreign equity 
joint venture established only 2 months' earlier on 6-Jun-05.</p>
<p>The vendor to B&amp;B was another BVI shell owned 60% by Ms Cheung, the 
Chairman of B&amp;B, and 40% by her son Chan Ting, an executive director. It was 
claimed that DLT will be engaged in the provision of technical support and 
maintenance services to Beijing Zhongmin Dongfeng Welfare Business Development 
Company (<b>BZD</b>), described as a subsidiary of the Ministry of Civil Affairs, pursuant to 
a 30-year exclusive co-operation agreement dated 19-Jul-05. BZD would receive 6% 
of the total income from welfare lottery shops, and DLT would get 75% of that. The vendor of Skilltime claimed that 
it had received 3 offers from 
independent third parties, of $330m for 75%, $480m for 100% and RMB250m for 51% 
of Skilltime. The announcement did not state how much, if anything, Madam Cheung 
and son had paid for the 75% stake in DLT. Skilltime had a net asset value of 
just HK$3,000 at 20-Jul-05.</p>
<p>Strangely, the announcement repetitively defined &quot;The Board&quot; to comprise only 
1 Executive Director and 2 of the INEDs, and omitted any reference to the views 
of Mr Shaw and another INED, Mr Tian He Nian. Presumably they were not present 
when it was discussed, but the responsibility statement at the end of it relates 
to each and all of them.</p>
<p>The day after the announcement, the stock shot up 103% to $1.48 on volume of 
66.6m shares. The next market day, 15-Aug-05, it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050815/GLN20050815046.HTM">
suspended</a> pending a placing of new shares. However, on 26-Aug-05, the 
Skilltime deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050930/GLN20050930010.pdf">
scrapped</a>. B&amp;B said that certain information disclosed in the first 
announcement had been <i>&quot;misconstrued&quot;</i> and that the reputation of B&amp;B and 
BZD had been adversely affected. B&amp;B also terminated the placing agreement with 
Shenyin Wanguo Capital (H.K.) Ltd under which they had intended to issue 30m new 
shares and Ms Cheung had planned to sell 6m shares, at $1.4356 per share.</p>
<p>The stock remained suspended until 23-Nov-05, when B&amp;B came up with a more 
detailed
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051124/GLN20051124004.pdf">
explanation</a> of the failure of the Skilltime deal, saying that the Chairman 
and her son had relied on the interpretation of the President of DLT, Mr Liu 
Huanlin, who had set up the co-operation agreement between DLT and BZD, and that 
he had <i>&quot;misconstrued the business scope&quot;</i> of BZD. After further review 
with legal advisers, they had determined that BZD did not have a licence to 
manage or operate lottery sales and was not engaged in doing so. Pretty 
fundamental point, you would think.</p>
<p>The announcement also revealed that the &quot;first approach&quot; to B&amp;B by the vendor 
(owned by B&amp;B's Chairman and son) was on 19-Jul-05. That's the same day that the 
co-operation agreement was signed! Despite this, the argument that Ms Cheung and 
her son gave for entering into the deal on their own and then trying to flip it 
into B&amp;B for $330m was that <i>&quot;at the time of negotiating and exploring the 
business opportunity, [B&amp;B] could not engage in other business different from 
its then principal business.&quot;</i></p>
<p>But now it could.</p>
<h3>The second lottery ticket</h3>
<p>Like bees to a honey pot, B&amp;B wasn't going to let one little fiasco, with an 
ongoing SEHK investigation over the <i>&quot;inaccurate information&quot;</i> in its 
announcement, deter its ambitions to get into the lottery space. Just a day 
after the clarification announcement on the Skilltime deal, with the shares 
having dropped 15.4% upon release from suspension, they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051124/GLN20051124019.pdf">
announced</a> on 24-Nov-05 that they were negotiating another acquisition of a 
company involved in &quot;information technology in the lottery field&quot; and that 
negotiations were at a &quot;later stage&quot;. The next day,
<a target="_blank" href="http://www.hku.hk/medicine/medical_staff.htm">Peter 
Fung Chin Wan</a>, Chair Professor and Chief of Medical Physics at Hong Kong 
University,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051129/GLN20051129010.pdf">
resigned</a> as an INED <i>&quot;due to his health condition&quot;</i>.</p>
<p>On 28-Nov-05, B&amp;B conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051202/GLN20051202007.pdf">
agreed</a> to buy 51% of <a target="_blank" href="http://www.bozoneit.com/">
Shenzhen Bozone IT Co., Limited</a> (<b>Bozone</b>) from 7 individuals for 
RMB55.88m, of which RMB33m was in cash and the rest in 24,122,807 new shares at 
$0.912. According to B&amp;B, Bozone is:</p>
<blockquote>
	<p>&quot;principally engaged in the research and development and application of 
	information
	technology in the lottery field. This include application software 
	development and production of
	large online lottery systems and multi-platform wagering systems, 
	integration of online lottery
	networks, network security system solutions, wagering terminals, operational 
	solutions and
	operational consultation services.&quot;</p>
</blockquote>
<p>Bozone's 2003 and 2004 net profits were just RMB172k and RMB110k, but on 
1-Jan-05 they began providing technical support for a lottery hotline sales 
system for the Heilongjiang Province Welfare Lottery Issue Centre, and had 
unaudited net profit of RMB2.911m up to 31-Aug-05. They also had contracts with 
Shenzhen Welfare Lottery Issue Centre (since 2002), Zhejiang Province Welfare 
Lottery Issue Centre (since 1-Apr-04) and with an IT company in Fujian province 
(since 22-Jun-05). The vendors guaranteed a profit for Bozone of RMB8.2m for 
2005. The 
acquisition was eventually
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060323/GLN20060323020.pdf">
completed</a> on 22-Mar-06, at which time it was announced that Bozone had a net 
profit of RMB8.276m for 2005.</p>
<p>Given that Bozone has been in this game over 3 years, and has never made much 
of a profit until the year they sold, readers should be sceptical about the 
sustainability of Bozone's sudden earnings surge. After all, what they are doing 
is providing software and services - they don't have a licence to run a lottery.&nbsp;If Bozone 
couldn't make much money at it before, and if its owners were willing to sell 
51% for &quot;only&quot; RMB55.88m, then we're not prepared to believe that it is worth 
more than that now.</p>
<h3>INEDs quit</h3>
<p>On 30-Dec-05, while the Bozone deal was pending, B&amp;B lost its second INED in 
7 weeks, when Mr Du Ying Min
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20051230/GLN20051230007.pdf">
resigned</a>. He was replaced by Mr Zhao Zhi Ming, who had been an INED of Aptus 
since 20-Jan-05. Then on 11-Jan-06, a third INED, Mr Tsui Wing Tak,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060111/GLN20060111014.pdf">
resigned</a> in order to become qualified accountant of Aptus.</p>
<h3>Shaw, Kwei doubles its bet</h3>
<p>On 31-Dec-05, another of Mr Shaw's funds, AVIF2, purchased 20.95m shares in 
B&amp;B on-market at $1.249, or $26.2m in total. That takes the combined holdings of 
SKP, AVIF1 and AVIF2 to 46.6m shares (about <b>7.6%</b> of B&amp;B at 30-Apr-06) at 
a cost of about $49.8m with an average purchase price of about $1.07 
(ex-dividends).</p>
<h3>2nd Placing</h3>
<p>On 12-Jan-06, B&amp;B launched a top-up
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060113/GLN20060113004.pdf">
placing</a>, again through Pacific Foundation, of 68m shares at $2.15 which, 
unusually, was a premium of 9.7% to the previous day's closing price, and a 
36.9% premium to the 10-day average, raising net proceeds of $140m, of which 
$90m was intended for business expansion of Bozone. The placing agent received 
an unusually high commission of 4%; the norm is 1-2%. The subscription was 
completed on 26-Jan-06.</p>
<h3>OppenheimerFunds</h3>
<p>US mutual fund manager
<a target="_blank" href="http://www.oppenheimerfunds.com">OppenheimerFunds Inc.</a> 
also has a sweet tooth for the honey trader, breaking above the 5% disclosure 
threshold with a purchase of 10m shares on 21-Jan-04. It then paused, but on 
25-Nov-05, right after the announcement of the Bozone deal, it bought another 
29m shares and the next market day 3.5m. On all 3 occasions, it failed to 
disclose its purchase price or its registered office in the filings. </p>
<p>On 13-Jan-06, although they didn't take part in the second placing which was 
effected that day, they purchased 51.5m shares in the market at an average 
$1.721, taking their holding to 110m shares, which at 30-Apr-06 was about <b>
18.0%</b> of B&amp;B. The stake is held by the
<a target="_blank" href="https://www.oppenheimerfunds.com/commonJhtml/fund_info/profile_base.jhtml?fundcode=815&catId=2&view=facts">
Oppenheimer International Small Company Fund</a>, where it comprised 1.7% of the 
US$2.1bn portfolio at 30-Apr-06 and was the 12th largest holding. 18% is a 
pretty hefty stake for a mutual fund to hold in any listed company - in fact, it 
was 22.8% when they bought it. They must love B&amp;B.</p>
<h3>Name of the Game</h3>
<p>On 12-Apr-06, shareholders of B&amp;B
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060412/GLN20060412025.pdf">
approved</a> a change of name to &quot;International Lottery Services Group Holdings 
Ltd&quot; - the 3rd name change in 3 years. The name change is pending.</p>
<h3>B&amp;B options</h3>
<p>In a pre-IPO option scheme, B&amp;B granted options to subscribe 40m shares at a 
50% discount to the IPO price to various employees and consultants. That was 
equivalent to 10% of the 400m shares in issue after the IPO. Since then, 37m 
have been exercised and 3m lapsed.</p>
<p>Also at the IPO, another option scheme was adopted to allow up to 40m 
options. B&amp;B didn't use this until 18-Aug-04, when it granted 38.8m options to 
18 &quot;eligible participants&quot; (which could include customers, suppliers or 
consultants) and another 1.2m on 19-Oct-04 to Mr Shaw. That exhausted the scheme 
limit, so they obtain a new 10% mandate at the AGM on 1-Nov-04 and have 
regularly refreshed it since then to maintain the 10% limit as the share capital 
enlarged, the most recent mandate being approved at the EGM on 12-Apr-06.</p>
<h3 id="B&amp;BshareAwardScheme">B&amp;B Share Award Scheme</h3>
<p>On 24-Jan-05, B&amp;B adopted something they called a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050124/GLN20050124018.pdf">
Share Award Scheme</a>, like the one which Aptus had put in place 3 months earlier. The scheme involves the potential issuance of shares to 
employees or consultants (excluding executive directors and chief executives) 
under the general mandate, subscribed for with cash paid by the company, so the 
cash goes around in a loop. In other words, the employees and consultants would 
get shares in return for their services. Alternatively, the shares may be 
purchased in the market with cash from the company.</p>
<p>A notable feature is that there is no separate trustee for this scheme - the 
&quot;Committee&quot; which administers the scheme is the board of directors, unless they delegate it to a 
sub-committee. The Committee can set such conditions and timetable on vesting of 
the Award to the participant as they see fit, and in the meantime between the 
grant and the vesting dates, the Committee presumably holds any actual shares 
issued under the Scheme, which can be up to a whopping 20% of the issued share 
capital.</p>
<p>This raises interesting questions - the Committee could be holding 
substantial numbers of shares at any time, and control voting rights over 
those shares. Those voting rights could be used in concert with the controlling 
shareholder's votes. 
This could lead to an increase of more than 2% in the controlling shareholder's 
concert party stake, which is less than 50% but more than 30% of the company, 
triggering a mandatory bid under the &quot;creeper&quot; rule.</p>
<p>There will be no immediate disclosure when the Committee buys shares in the 
market using cash from the company or receives new shares from the company. These 
items will only be disclosed in the annual report, up to 16 months after the 
actual event. This is an appalling level of disclosure.</p>
<p>By contrast, HKEx (0388) of which your editor is an elected INED, has a
<a target="_blank" href="http://www.hkex.com.hk/exchange/asso/awardscheme.htm">
Share Award Scheme</a> which he helped design, but this involves an independent 
trustee, HSBC, which is prohibited from voting the shares (so it cannot be 
influenced by management) and the scheme does not involve the issue of new 
shares, only the purchase of shares from the market, which is
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2005/051219news.htm">
announced</a> in advance. The scheme is also capped at 3% of the issued shares 
at the adoption date of 14-Sep-05.</p>
<p>The B&amp;B EGM
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060322/GLN20060322011.pdf">
circular</a> dated 21-Mar-06 states (p.6) that 39.8m of the 40m options remained 
outstanding at 17-Mar-06, and only 200k had been exercised. It also states that 
the issued share capital was 585.75m shares at the same date. By painstaking 
analysis of disclosures, we have deduced that, if both these statements are 
true, then the only way the number of shares in issue stacks up is if 34.55m 
shares have been issued under the Share Award Scheme since 31-Dec-05 up to 
17-Mar-06. That's about 5.67% of the current issued share capital. But if that 
is the case, then the allotment of 34.55m shares under the Share Award Scheme, 
together with the second placing of 68m shares, totals 102.55m shares, which is more than the 
96.426m allowed under the general mandate approved at the AGM on 31-Oct-05. 
Perhaps our maths is wrong, but we doubt it.</p>
<div class="regbox">
	Regulatory note: as we've pointed out many times before, the Listing Rules 
	do not require disclosure when share options are granted, creating potential 
	dilution, nor do they require disclosure when options are exercised, or 
	shares are allotted for other reasons, causing actual dilution to the share 
	base. This must change. Companies disclose share buy-backs by 9am the next 
	morning under Rule 10.03(4)(a), so they should have no problem disclosing 
	grants of options or allotments of shares on the same timetable.</div>
<p>In its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20060516/GLN20060516049.pdf">
quarterly report</a> to 31-Mar-06, B&amp;B mentioned <i>&quot;share award expenses and 
employee share-based compensation benefits amounting to approximately $34m&quot;. </i>
They managed to offset that expense by selling Aptus shares in the market and 
recording <i>&quot;other revenue&quot;</i> of $33.0m, as <a href="#cashingIn">noted above</a>.</p>
<h3>B&amp;B Conclusion</h3>
<p>B&amp;B has a current market capitalisation, at $2.40 per share, of HK$1,464m. On 
the other hand, even after raising $140m in the second placing, its 
shareholders' funds are only about $306m. If B&amp;B is fast and lucky, it could 
keep selling Aptus shares in the market to cash in on what we think is a bubble 
in Aptus stock, but the nature of such bubbles usually depends on the market 
having been cornered and they would have to sell a large stake to justify the 
current market value of B&amp;B, probably bursting the Aptus bubble in the process. Don't bet on B&amp;B. 
If you really want an investment with an almost-certain negative return, then put the money in the
<a target="_blank" href="http://bet.hkjc.com/marksix/">Mark Six</a> instead.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15917">Celebrate International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=33649">GAOYU SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16957">Sinopharm Tech Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10717">Shaw, Kyle Arnold Jr</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16662">To, Edmond Yan Ming</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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