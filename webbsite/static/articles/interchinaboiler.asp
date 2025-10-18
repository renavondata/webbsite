
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

<script type="text/javascript">document.title="MSCI Boils the Interchina Bubble";</script>

	<div class="summary">Oh dear - it seems like the index compilers in Geneva don't read Webb-site.com - they have just put Interchina Holdings into the MSCI Small-cap Index, despite the clear warning from SFC investigations and our previous article that the stock has been cornered and ramped. Now this property stock is trading at over 7.5x net tangible assets instead of the discount to NTA it deserves.</div>

<h2 class="center">MSCI Boils the Interchina Bubble<br>
<span class="headlinedate">16 May 2002</span></h2>
<p class="revisedate">updated 21-Jun-02</p>
<p>Remember our story <a href="interchinabubble.asp">Interchina
Bubble</a>, back on 23-Oct-01? We explained then how the stock of Interchina
Holdings Ltd (<b>Interchina, </b>0202) had been cornered
and ramped, and was trading at around 16.4x net assets, and this was primarily a
property company.</p>
<p>Well since that article, the stock fell from $1.62 to touch a
low of $0.63 on 7-Jan-02, and has since rebounded to $1.24, where it was
suspended on 14-May-02, after rising from $0.83 in just two trading days.</p>
<h3>Recent events</h3>
<p>Before the index problem, let's have an update on what this company has been doing
since our last coverage.</p>

<h4>Scrapped convertible note</h4>

<p>Readers may recall that Interchina had <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010917/LTN20010917033.doc" target="_blank">announced</a>
a placing of $100m convertible notes with Guotai Junan Securities (Hong Kong)
Ltd on 14-Sep-01, the day that the stock hit its record daily high of $1.67. The
notes were to be convertible at $2 per share or higher. That was also the day that the company put out a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010917/LTN20010917031.doc" target="_blank">concentration
warning</a> after an SFC investigation had concluded that the controlling
shareholder together with 15 &quot;major public shareholders&quot; held 90.2% of
the company and 13 of them had accounted for 40% of the volume between 31-Jul-01
and 6-Sep-01. That is the SFC's way of telling you that the stock has been
cornered.</p>

<p>On 14-Nov-01, the placing of convertible notes was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011115/LTN20011115025.doc" target="_blank">scrapped</a>,
due to &quot;unfavourable market sentiment&quot;. In the two months since the
placing was announced, the stock was down 24.0% to $1.27.</p>

<h4>Increased stake in brokerage</h4>

<p>On 23-Nov-01 Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011126/LTN20011126051.doc" target="_blank">agreed</a>
amongst other things to increase its stake in Interchina Securities Ltd (<b>ICS</b>)
from 70% to 85% by capitalising $50m of existing loans, partly to provide
capital to expand the margin financing business.</p>

<h4>Interim results</h4>

<p>On 19-Dec-01 Interchina announced its results for the 6 months
ended 30-Sep-01, with a net profit of HK$139.9m on turnover of just $35.5m.
However, the profit was due to a one-time gain of $149.2m on the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010911/LTN20010911026.doc" target="_blank">disposal</a>
of a property subsidiary, which was completed 1 day before the end of the
period. This property, Beijing Jingshan Interchina Commercial Building, was a
legacy from the days when Interchina was known as Burlingame, and it had
previously been held at a very low book cost, resulting in the gain on disposal.</p>

<p>Excluding the property disposal, the company made an interim net
loss of $9.3m. The <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020102/0202/f104.pdf" target="_blank">balance
sheet</a> in the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020102/LTN20020102046.htm" target="_blank">interim
report</a> shows net tangible assets of $555.9m or <b>$0.127</b> per share.</p>

<h4>New INED - Allen Lee&nbsp;</h4>

<p>On 1-Mar-02, Mr Allen Lee Peng Fei (<b>Mr Lee</b>) was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020305/LTN20020305044.doc" target="_blank">appointed</a>
as an independent non-executive director. Mr Lee is a deputy of the National
People's Congress and a former member of HK's Executive Council (1985-92) and
Legislative Council (1978-97).</p>

<p>His other positions include wet-market operator <a href="../dbpub/articles.asp?p=2475" target="_blank">Wang
On Group Ltd</a>, of which he has been an independent non-executive director
since Nov-93. The company listed on 28-Feb-95 with a first-day adjusted closing
price of $0.516, and now trades at $0.021, down <b>95.9%</b>. After the customary first
year of post-IPO profits up to 31-Mar-96, it plunged into loss, and has only had
one profitable year since then, in 2000.</p>

<p>Mr Lee has also been an independent non-executive director of
toy designer Playmates Interactive Entertainment Ltd, since Nov-93. The company
was listed on 6-Jan-94 with an adjusted first-day closing price of $2.403. Today
it trades at $0.255, down <b>89.4%</b>.</p>

<p>For many years (since at least 1996), Mr Lee was Independent
Non-executive Vice Chairman of retailer <a href="../dbpub/articles.asp?p=1721" target="_blank">Tse
Sui Luen Jewellery (International) Ltd</a>, resigning on 20-Aug-99 when the
share price was $0.225, having fallen <b>93.5%</b> from an adjusted high of
$3.463 on 1-Sep-97.</p>

<p>Mr Lee was appointed as an independent non-executive director of
Karrie International Holdings Limited on 30-Oct-96, prior to its IPO which
occurred on 16-Dec-96, when the stock closed at $1.02. The stock then was
quickly ramped by parties unknown, reaching $3.35 on 13-Mar-97. Mr Lee resigned
on&nbsp; 22-Jan-98, when the stock was $0.14, down <b>95.8%</b> on its high and
86.3% on its first-day close.</p>

<p>Now to be fair to Mr Lee, he has had a vast number of
directorships, and not all of those companies have lost money for investors. He
is an independent director of Giordano International Ltd, and Kingboard Chemical
Holdings Ltd, for example. But overall, we find the track record unimpressive.</p>

<h4>More new Directors</h4>

<p>On 13-Mar-02, Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020314/LTN20020314053.doc" target="_blank"> announced</a>
that a string of appointments of <i>&quot;reputable individuals&quot;</i> (what
does that imply?) had been made in the previous two weeks.</p>

<p>Mr Herbert Hui Ho Ming (<b>Mr Hui</b>) was appointed Deputy
Chairman on 8-Mar-02. He was formerly Head of the Listing Division of the Stock
Exchange, and since then has shown rather an affinity for bubbles (or perhaps,
the other way around). He became
Managing Director of red-chip Guangdong Investment Ltd on 1-May-97, when the
stock closed at $7.40. He arrived just in time to see the red-chip bubble burst,
and ended up working on restructuring the company. He resigned on 15-Jan-00 when
the stock price was $1.23, down <b>83.3%</b>.</p>

<p>Mr Hui then became Managing Director of GEM tech bubble stock
Sunevision Holdings Ltd on 29-Jan-00, and the company was listed on 17-Mar-00
when it closed at $15.10. He resigned on 14-Nov-00, when the stock was $3.75,
down <b>75.2%</b>. Today it trades at $1.78.</p>

<p>Mr Hubert Chan Wing Yuen was appointed as an executive director
of Interchina on 8-Mar-02. He spent 10 years at the Stock Exchange, eventually
become Director of the Mainland Affairs Department of the Listing Division under
Mr Hui. He joined Guangdong Investment Ltd as a director and Deputy General
Manager on 23-Aug-97, three months after Mr Hui, and left on 1-Feb-00, two weeks
after Mr Hui.</p>

<p>Mr Michael Wu Wai Chung (<b>Mr Wu</b>), was appointed as an
independent non-executive director of Interchina on 11-Mar-02. He was Deputy
Chairman of the Securities and Futures Commission (SFC) until 31-Dec-97 and is a
full-time adviser to the China Securities Regulatory Commission (CSRC). At the
SFC, he was executive director responsible for the Intermediaries Division
(which includes brokers).</p>

<p>The final appointment was Mr Jack Zhang Jiyei, as an executive
director from 8-Mar-02. Nothing is known about him.</p>

<p>Our key point in respect of all these appointments of <i>&quot;reputable
individuals&quot;</i> as Interchina put it, is that reputable individuals do not
imply any guarantee of financial or market performance.&nbsp;</p>

<h4>Loan to Changsha City Government</h4>

<p>On 21-Mar-02, Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020322/LTN20020322022.doc" target="_blank">announced</a>
that it had agreed to &quot;participate and invest&quot; in the Urban
Development Scheme of Changsha New Sports City in Hunan Province, PRC. In actual
fact, this deal was a loan of up to RMB480m (HK$453m) to a local
government-owned construction company, secured on property, and the commitment
amounts to <b>81.5%</b> of the unaudited net tangible assets at 30-Sep-01.
Surely, such a major disposal of the company's money should be treated as a
Major Transaction, requiring a circular, detailed information, and shareholders'
approval. But the SEHK responded to our complaint as follows:</p>
<blockquote>
  <p>&quot;The co-operation agreement as disclosed in the announcement is not a
  notifiable transaction under Chapter 14 of the Listing Rules as it does not
  involve any acquisition of assets.&quot;</p>
</blockquote>
<p>We believe that loans by any listed company (except for normal
loans by licensed banks) should be subject to the same classification rules as
any other notifiable transaction, as they represent a disposition of
shareholders' funds.</p>
<p>Ironically, if Interchina had been purchasing bonds which were
secured against the same property, then that might have&nbsp; been treated as a
Major Acquisition of assets (the bonds) rather than a loan, even though the end
result, namely a loan against property, is the same.</p>

<h4>Convertible bond amended</h4>

<p>On 23-Apr-02, Interchina announced that it had amended the
conversion terms of its outstanding HK$200m convertible note, the terms of which
were originally <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010806/LTN20010806029.doc" target="_blank">announced</a>
on 3-Aug-01. It was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010824/LTN20010824035.doc" target="_blank">issued</a>
on 23-Aug-01 to Capital Champion Ltd (<b>Subscriber</b>), a BVI company, the
owner of which has never been formally disclosed. The Subscriber nominated Mr
Yan Liyan (<b>Mr Yan</b>) as an executive director of Interchina, and he was
appointed upon the issuance of the note. He had a deemed interest in the note as
disclosed under the Securities (Disclosure of Interests) Ordinance, but it was
not clear whether or not he was the owner of the Subscriber.</p>

<p>Originally, the notes were convertible in the 12th, 24th, 30th and 36th
months after issue,
25% each time, with carry-forward of unused conversion rights. They were
convertible at the higher of (i) $1 per share and (ii) the 10-day
average price prior to conversion. Under the amended terms, Interchina and the
Subscriber agreed to convert the whole note by 30-Apr-02. As the shares were
trading below $1 at that point, this resulted in the issue of 200m new shares at
$1 each.</p>

<p>Mr Yan resigned as a director of Interchina on 8-Mar-02.
Consequently, his share dealings are no longer discloseable. The conversion has
the effect of increasing net tangible assets (<b>NTA</b>) (as of 30-Sep-01) to
$755.9m, there are 4,595m shares in issue, and net tangible assets per share are
<b>$0.165</b> per share.</p>

<h3>MSCI's Index Mistake</h3>

<p>As a property stock, Interchina should trade at a discount to
NTA, but at $1.24 (as suspended on 14-May-02), it was trading at <b>7.5x NTA </b>of
$0.165. The market cap of HK$5.70bn (US$730m) puts it in the top 70 HK-listed
stocks!</p>

<p>Now we come to the real meat in the sandwich. Fund managers in
Asia often &quot;benchmark&quot; their portfolios, that is, they compare their
performance to, a stock market index. A popular series of indexes is the MSCI,
produced by <a href="http://www.msci.com/" target="_blank">Morgan Stanley Capital International
Inc</a>.</p>

<p>On 7-May-02, MSCI announced that Interchina was to be admitted
to the MSCI Small Cap Index and its components, including the MSCI Hong Kong
Small Cap Index and the MSCI EAFE Small Cap Index (EAFE stands for Europe,
Australasia and Far East). The announcement is <a href="http://www.msci.com/pressreleases/archive/20020507_pr.pdf" target="_blank">here</a>
and the constituent changes are <a href="http://www.msci.com/smallcap/MSCI_Public_Constituents_SC.pdf" target="_blank">here</a>.</p>

<p>According to the <a href="http://www.msci.com/smallcap/smallcap_methodology.pdf" target="_blank">MSCI
Methodology Book</a>, which describes how the compiler selects companies for the
index, eligible small caps have a market capitalization of US$200-1,500m, and
the guiding principles for inclusion in the index include
&quot;investability&quot;. They look at the &quot;traded value ratio&quot; (a
measure of liquidity, where constituents must be amongst the top 80% of the
country's small cap universe) and the &quot;estimated free float&quot; which
should be a minimum of US$100m.</p>

<p>It seems that MSCI was oblivious to the previous <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010917/LTN20010917031.doc" target="_blank">concentration
warning</a> or our previous article regarding the free float and trading of
Interchina's shares. As a result, they have now created demand for the stock by
anyone who feels compelled to track the MSCI small-cap index. Fund managers
would do well to tilt their portfolios away from Interchina which should provide
out-performance of the MSCI index as and when the Interchina bubble bursts.</p>

<h3>Second bubble</h3>

<p>Mr Zhang Yang, the Chairman and controlling shareholder of
Interchina, also controls another listed company, <a href="../dbpub/articles.asp?p=5007" target="_blank">Guo
Xin Group Ltd</a> (1215), which is a smaller company but in an equally
spectacular bubble. We'll be writing more about that shortly.&nbsp;</p>
<hr>
<h3>Update, 21-Jun-02 </h3>
<p>The day after we published this article, MSCI <a href="http://www.msciinfo.com/smallcap/archive/SCAP20020517.201336.html" target="_blank">announced</a>
that: </p>
<blockquote>
<p>&quot;based on additional analysis of publicly available
information, MSCI is revising the free float estimate for [Interchina]. As the
free float of this company is now estimated to be below 15%, Interchina is not
eligible for inclusion in the MSCI Small Cap Index Series.&quot; </p>
</blockquote>
<p>So far, Interchina has not bothered to announce the reversal,
despite having <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020510/LTN20020510109.doc" target="_blank">announced</a>
the inclusion in the first place. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4780">EverChina Int'l Holdings Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1898747">MSCI HONG KONG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=145619">MSCI Inc.</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8851">Chan, Hubert Wing Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=4444">Hui, Herbert Ho Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1796">Lee, Allen Peng Fei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11848">Wu, Michael Wai Chung</a></li>
				
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