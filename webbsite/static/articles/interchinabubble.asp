
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

<script type="text/javascript">document.title="Interchina Bubble";</script>

	<div class="summary">Pop quiz: what's the largest stock in the Hang Seng Small-cap Index? It's mainland property investor Interchina Holdings Ltd - at HK$7.11bn (US$912m). But not for long, we think. At 16.4x net asset value, this stock shows classic signs of being manipulated, and the SFC has investigated twice - you have been warned.</div>

<h2 class="center">Interchina Bubble<br>
<span class="headlinedate">23 October 2001</span></h2>
<p>What's the biggest stock in the new Hang Seng Small-cap Index? Interchina Holdings Ltd (<b>Interchina</b>)
with a 6.69% weighting. We are talking about a $7.11bn bubble fit to burst.
After you've read this article, you'll understand why. </p>

<p>Interchina is the second incarnation of Burlingame
International Co Ltd (<b>Burlingame</b>), a property investor which got into
deep financial difficulties. At 31-Mar-00, Burlingame had a negative net worth of HK$437m
(US$56m) and total indebtedness of $1.23bn. Here's the history, for all you
lovers of value destruction. </p>

<h3>The Downfall of Burlingame</h3>

<p>Burlingame had bet heavily on mainland property projects in the
mid-1990s. On 3-Mar-98, it agreed to sell off some HK properties to a company
called Garsan Investment Ltd (<b>Garsan</b>) for HK$238m, to repay bank debt. We
don't know who owns Garsan, but the deal basically became a call option, because
completion was scheduled for 1 year later, and only $38.8m was paid up front in
Mar-98. All but $1m was refundable if the purchaser failed to complete. Sure
enough, the property market headed on down, and on 23-Oct-98&nbsp; Burlingame
announced that it had in fact already refunded $11m of the deposit, and had been
sued for the balance. The deal was off, and the purchaser wanted its money back. </p>

<p>Meanwhile, in Jun-98, with the Garsan deal still open, Burlingame agreed to&nbsp;buy a company called
Go Gold Ltd (<b>GGL</b>) from Wealth Land Development Corp (<b>WLDC</b>) for
HK$352.8m in cash instalments. WLDC was wholly owned by Mr Zhang Yang (<b>Mr Zhang</b>).
You'll read more on him later. </p>

<p>GGL was set up as part of a pre-acquisition restructuring to own
parts of <a href="http://www.sh.com/district/yangpu/highness.htm" target="_blank">Highness
Garden</a> in Shanghai (the <b>Properties</b>). Along with the Properties, GGL also had 85% of
the estate management company and 100% of the operator of the clubhouse in the
development. </p>

<p>Originally, Mr Zhang founded a company called Winton Bright
(Groups) Ltd (<b>WBL</b>) in HK in 1993. Mr Zhang owned 80% of WBL while two
individuals named Zhang Chen and Tong Wan Ching owned 10% each. WBL owned 85% of
Shanghai Winton-Bright Real Estate Co Ltd which developed the Properties, the
remaining 15% being owned by a PRC third party. Development commenced in Aug-93
and finished in Jan-98. </p>

<p>By the time of the interim results announcement on 29-Dec-98,
Burlingame had paid $90.6m in deposits for the acquisition of GGL, but reported
that: </p>

<blockquote>

<p>&quot;Due to the continuing weakness of the property market in
China and certain questionable representations made by the seller,&nbsp; an
outright acquisition of the property would now seem a lot less attractive.&quot; </p>

</blockquote>

<p>Burlingame was looking for a way out of the deal, and expressed
uncertainty that they could recover any deposit paid, so they made a provision
for loss of the whole amount. Meanwhile, on 23-Oct-98 Daiwa Bank had filed a
writ seeking repayment of $31m. The creditors were closing in.&nbsp; </p>

<p>On 19-Mar-99, bankers HSBC petitioned the court to wind up
Burlingame on the grounds of insolvency, with $390m owing to HSBC and $970m to
all banks. The company also said it had written to WLDC rescinding the agreement
to purchase the Properties on the basis that the vendor had failed to deliver
vacant possession and clean title. </p>

<h3>Restructuring</h3>

<p>On 15-Jun-99, Burlingame <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990616/LTN19990616028.HTM" target="_blank">announced</a>
it was in negotiations with an unnamed potential investor for a possible
restructuring, and on 19-Jul-99 <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990720/LTN19990720024.HTM" target="_blank">announced</a>
that the investor was a company owned by Mr He
Xue Chu (<b>Mr He</b>), and gave outline details of the proposal, which also involved
the revision of the Properties transaction, so that Mr Zhang and Mr He would
become the largest shareholders of the new company. </p>

<p>The restructuring negotiations carried on until 29-Nov-99 when a
full proposal was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991130/LTN19991130050.HTM" target="_blank">announced</a>,
in which each of the existing 425m shares of Burlingame was swapped for a&nbsp;
new share in Interchina. The bank creditors were essentially in two classes:
secured creditors, who were to get their money back by a programme of property
disposals, and unsecured creditors, who suffered a sharper haircut than Tung
Chee Hwa's famous stubble, losing 80% of their loans, getting 10% in cash and
the rest in Interchina shares. As a result, in the year to Mar-01 Interchina
recorded a gain of $401.95m on &quot;liabilities waived by bank creditors&quot;. </p>

<p>In the restructuring, the deal to buy GGL was scrapped. It now
turned out that the $90.6m deposit for the acquisition comprised HK$22.6m in
cash up to 27-Aug-98 along with 42 apartments in Beijing which had been valued
at US$8.77m (HK$68m) in a deal on 21-Sep-98. All of this was forfeited by
Burlingame. Meanwhile, GGL had managed to sell off part of the Properties
(except for the clubhouse) for RMB218m (HK$205m). </p>

<p>That gave Mr Zhang the money to subscribe <b> $200m</b> for
2,000m new shares in Interchina, of which 1,300m were to be subscribed on
completion of the restructuring, and 700m within one year afterwards, all at
HK$0.10 per share. Mr He agreed to subscribe <b> $100m</b> for 1,000m shares at HK$0.10
per share. </p>

<p>After much ado and 9 months of gestation, the restructuring was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000830/LTN20000830021.doc" target="_blank">completed</a>
on 30-Aug-00 and the next day Burlingame was replaced by Interchina on the Stock
Exchange. The original public shareholders of Burlingame had been diluted from
63% to 9% of the new company. According to dealing disclosures, Mr Zhang
subscribed the additional 700m shares 2 days later on 1-Sep-00, not waiting a
whole year to put the money in. Mr Zhang and Mr He now had a total of 79.57% of
Interchina. </p>

<h3>Interchina is born</h3>

<p>On 28-Sep-00, Mr Zhang <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000929/LTN20000929053.doc" target="_blank">placed</a>
175.595m Interchina shares through Shenyin Wanguo Capital (Hong Kong) Ltd at $0.35 per
share to increase the public float back to 25%. The next day, Mr He <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001005/LTN20001005031.doc" target="_blank">resigned</a>
as Chairman but remained as an Executive Director, while Mr Zhang became
Chairman, and a new executive director, Anthony Tsang Hin Fun (<b>Mr Tsang</b>) was appointed. </p>

<p>At the same time, Mr Billy Kan Che Kin, who had been inherited
from Burlingame and put on the board of Interchina, also resigned, and under his
3-year contract signed with Burlingame in Dec-98, he got a $5.2m pay-off equal
to one year's salary. </p>

<h3>Price takes off</h3>

<p>Next, the price began to take off, rising from $0.31 on
13-Oct-00 to $0.91 on 14-Nov-00. The SFC began investigating, and on 19-Jan-01
Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010122/LTN20010122016.doc" target="_blank">announced</a>
their findings (passed through the SEHK) that as of 9-Nov-00, 16.56% of the
company was in the hands of 6 &quot;major public shareholders&quot;, leaving just 8.53% in
the hands of other public shareholders. This is known as a &quot;concentration
warning&quot;. </p>

<div class="regbox">
<h4>Regulatory note</h4>
<p>Several months ago, we asked the SFC and SEHK to establish a
page on their web site where all such concentration warnings could be gathered
in one place, so that investors might have fair warning by checking that page.
No action yet.</p>
</div>

<p>By the time of the concentration warning, the price had begun to
slide, and was down to $0.28 on 1-Mar-01 when the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010302/LTN20010302020.doc" target="_blank">announced</a>
a placing of 614m new shares at $0.26 each on 1-Mar-01, through Makindo
Securities (Hong Kong) Ltd (<b>Makindo</b>), raising net proceeds of $157m for debt reduction and
working capital and diluting Mr Zhang to 41.61%. On the same day, Mr He sold 44m
shares at the placing price. </p>

<p>On 22-Mar-01 Mr Zhang <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010323/LTN20010323027.doc" target="_blank">disposed</a>
of another 224.28m shares (5.11% of Interchina) at between $0.192 and $0.212
each, reducing his holding to 36.50%. Five days later, Mr He followed suit by <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010329/LTN20010329022.doc" target="_blank">selling</a>
950m shares (21.67% of Interchina) at $0.19 each to &quot;five independent third
parties&quot;, leaving him with just 0.14% of Interchina. That deal must have
been done &quot;off-market&quot; because volume that day was only 12.2m shares. </p>

<p>In summary, Mr He had invested $100m in Aug-00 and come away
with $192m and 6m shares in Interchina. </p>

<h3>Options granted - spectacular timing</h3>

<p>In what proved to be an amazingly inspired piece of timing,
around the end of Mar-01 the board <a href="http://www.hkex.com.hk/listedco/sdi/20010404b.htm" target="_blank">granted</a>
to three directors options to subscribe 139m shares at $0.16 exercisable between
1-Apr-01 and 31-Mar-05, of which 109m went to Mr Zhang, 15m to Mr&nbsp; He and
15m to Mr Tsang. Like most listed companies, the options can be granted at up to
a 20% discount to the 5-day average price, so that implies a benchmark of 20
cents. Looking at the price chart of Interchina, the lowest 5-day average before
1-Apr-01 was on 22-Mar to 28-Mar, at $0.2008. They got the exact bottom of the
chart, the lowest point that Interchina has reached since it was, well, since it
was Interchina. </p>

<p>Today, with the shares trading at $1.62, those options are worth
a cool <b>$189.8m</b>. </p>

<div class="regbox">
<h4>Regulatory note</h4>
	<p>It is impossible to tell from the SDI disclosures the date on
	which options were granted. The SFC/ SEHK should remedy this. We first raised
	this point some years ago.</p>
</div>
<h3>Interchina Securities</h3>

<p>On 11-Apr-01 Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010412/LTN20010412015.doc" target="_blank">announced</a>
that it had on 30-Mar-01 acquired 70% of Makindo for an undisclosed sum. It had
bought its own broker, later renamed Interchina Securities Ltd. The company also
announced <i>&quot;a possible joint venture in the area of environmental
protection business in China&quot; </i>which would <i>&quot;offer a total
solution for water treatment&quot;</i>. Nothing firm has yet been announced on
this. </p>

<p>The price closed on 10-Apr-01 at $0.245, and immediately began
its run up to the current price of $1.62, up 561% in six months. </p>

<p>On 2-Aug-01 Mr Liu Shunxin and Mr Richard Lam Cheung Shing were
appointed as executive directors. Mr Lam had been a director of Burlingame from
5-Aug-98 to 28-Apr-99. We don't know anything about Mr Liu </p>

<div class="regbox">
<h4>Regulatory note</h4>
<p>Listed companies should be required to give the same
biographical information in announcements of board appointments as they do in
the annual report. Otherwise investors don't know who is running their company,
and may never see a biography if the director resigns before the next annual
report is published.</p>
</div>

<h3>Convertible Notes</h3>

<p>On 3-Aug-01 Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010806/LTN20010806029.doc" target="_blank">announced</a>
a proposed issue of a $200m convertible note to a BVI company called Capital
Champion Ltd, whose owner was not disclosed.&nbsp; </p>

<p>The notes bear interest at 3% per year and have an unusual
structure; they convert at the higher of (i) $1 per share and (ii) the 10-day
average price prior to conversion. In practice, that means the latter, because
no sane holder would convert if the market price were less than the conversion
price, unless the company was in severe financial difficulty with no hope of
repayment. Conversion can take place in the 12th, 24th, 30th and 36th months,
25% each time, with carry-forward of unused conversion rights. </p>

<p>If the share price in the last 20 days of the first year
averages less than $0.80, then the noteholder can redeem the note at 106% of
par. At the end of the second year, if the average is less than $0.90, the
noteholder can redeem at 112%. Finally, at the end of the third year, if the
average is less than $1, then the noteholder can redeem at 118%. This basically
ensures that, if the company is solvent, after 3 years the subscriber will
either get shares near market price (with a 3% yield until conversion) or about
a 9% yield on his note until redemption. </p>

<p>Half of the proceeds were for use in expanding Interchina
Securities, and the rest for funding potential investment projects. </p>

<p>When the deal was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010824/LTN20010824035.doc" target="_blank">completed</a>
on 23-Aug-01, the subscriber nominated Yan Liyan (<b>Mr Yan</b>) to join the
board of Interchina that day. As a director, Mr Yan's holdings had to be
disclosed, and it then emerged that he owned 295.705m shares, or around <b> 6.74%</b> of
Interchina. We don't know anything about Mr Yan's background. </p>

<h3>Stock Borrowed</h3>

<p>According to a <a href="http://www.hkex.com.hk/listedco/sdi/20010831a.htm" target="_blank">dealing
disclosure</a>, on 24-Aug-01, the day after he joined the board, Mr Yan lent
290m shares to Mr Wang Changda (<b>Mr Wang</b>). Under the agreement, the
borrowed securities shall be returned at any time by Mr Wang or upon the lender
giving notice to Mr Wang. <b>Why would Mr Wang want to borrow stock, do you
think?</b> We don't know, but one common reason for borrowing shares is in order
to sell them, creating a short position. We don't know anything about Mr Wang or
what he's doing with the stock. </p>

<h3>New Investor</h3>

<p>On 8-Aug-01, at the AGM, Mr He and Mr Tsang did not offer
themselves for re-election, contrary to the statement in the directors' report
of 11-Jul-01 that they would do so. For whatever &quot;<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010813/LTN20010813036.doc" target="_blank">personal
reasons</a>&quot;, they had changed their minds. </p>

<p>On 9-Aug-01, Mr Zhang <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010810/LTN20010810025.doc" target="_blank">sold</a>
a 15% interest in WLDC (which holds his shares in Interchina) to a company
called A-Jex Investment Ltd for an undisclosed price. No word on who owns that. </p>

<p>Mr He and Mr Zhang both had service contracts for a fixed term
of 3 years from 1-Jun-00. It is not known whether Mr He received any
compensation for the early departure. </p>

<h3>Property Sale </h3>

<p>On 10-Sep-01, Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010911/LTN20010911026.doc" target="_blank">announced</a>
the sale of one of the old Burlingame mainland property projects for $151m to a
company owned by Zhang Jin Shui, an &quot;independent third party&quot;, with
completion due by 29-Sep-01. </p>

<h3>Second Concentration Warning</h3>

<p>On 14-Sep-01, the results of another SFC investigation were <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010917/LTN20010917031.doc" target="_blank">announced</a>
(again, via the circuitous route of the SFC telling the SEHK, and the SEHK
telling the company, and the company telling the market). This time, with Mr
Zhang holding 36.46%, another 53.77% was held by &quot;15 major public
shareholders&quot;, leaving 9.8% in other public hands at 10-Aug-01. </p>

<p>In addition, the company said that the SFC is conducting an
enquiry into the dealings in the shares from 31-Jul-01 to 6-Sep-01 (during
which, the price doubled from $0.65 to $1.30), and based on information provided
to the SFC, 13 of the 15 holders had been involved in active buying and selling
and their trades accounted for approximately 40% of the total market turnover
during the period. </p>

<h3>Second Convertible</h3>

<p>The same day, Interchina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010917/LTN20010917033.doc" target="_blank">announced</a>
another convertible bond issue, this time for $100m, to be placed on a best
endeavour basis (i.e. not underwritten) by Guotai Junan Securities (Hong Kong)
Ltd, a subsidiary of a mainland brokerage. </p>

<p>The terms are almost the same as the first convertible, except
that the minimum conversion price has been raised to $2 per share, with
correspondingly higher target prices, below which the holders can redeem. </p>

<p>On 15-Oct-01, the deadline for completing the placing was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011016/LTN20011016015.doc" target="_blank">extended</a>
to 13-Nov-01. </p>

<h3>What's Really Going On?</h3>

<p>At 31-Mar-01, Interchina had net assets of $435m (or about
$0.099 per share) , but at $1.62 per share, it now has a market capitalisation
of $7,114m. Yes folks, this is an asset based company trading at 16.4x net
assets. Normally, mainland property stocks trade at a discount to net asset
value. </p>

<p>Many of these &quot;major public shareholders&quot; as the SFC
euphemistically puts it, are likely participants in a syndicate aimed at sucking
in either ignorant investors, or simply knowledgeable investors who know that
the stock is massively over-valued but like to gamble on someone else paying
more for it. </p>

<p>If you hold this stock, ask your broker or investment adviser
about getting out. </p>

<p>Soon. </p>

<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4780">EverChina Int'l Holdings Company Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11544">He, Xuechu (1962)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11546">Tsang, Anthony Hin Fun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11545">Zhang, Yang (Interchina)</a></li>
				
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