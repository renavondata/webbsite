
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

<script type="text/javascript">document.title="Nam Tai's Bids and Bounty";</script>

	<div class="summary">We look at the attempt by Nam Tai Electronics (NYSE:NTE) to privatise its HK-listed subsidiaries NTEEP (2633) at a 54% discount to the price at which it floated it last year, and J.I.C. Technology (0987). We also look at NTE's offer of a 1% "commission" to brokers who solicit their clients to accept the offer, conditional on the offer succeeding. By permitting this bounty, the SFC has at a stroke removed the possibility of brokers giving untainted independent advice to clients. That is not in the best interests of the market.</div>

<h2 class="center">Nam Tai's Bids and Bounty<br>
<span class="headlinedate">19 November 2005</span></h2>
<h3>NTEEP's brief history</h3>
<p><a target="_blank" href="http://www.namtaieep.com/">Nam Tai Electronic &amp; 
Electrical Products Limited</a> (<b>NTEEP</b>, 2633) was listed on 28-Apr-04 
after an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040416/LTN20040416000.htm">
IPO</a> sponsored by HSBC. 
In the IPO, no new shares were issued and the parent,
<a target="_blank" href="http://www.namtai.com/">Nam Tai Electronics, Inc.</a> (<b>NTE</b>, 
NYSE:NTE, incorporated in the BVI, with investor relations out of Vancouver, 
Canada) sold 200m existing NTEEP shares, being 25% of the issued shares, at 
HK$3.88 per share, raising <b>HK$776m</b> before expenses. NTE booked a gain of 
US$71.1m (HK$555m) on the sale in 2004, which helped offset an investment loss 
of US$58.3m on its then 9% stake in mobile handset maker
<a target="_blank" href="http://www.tclcom.com">TCL Communication Technology 
Holdings Ltd</a> (<b>TCLCT</b>, 2618).</p>
<p>Incidentally, TCLCT is a disaster zone - it was listed on 27-Sep-04 in an 
introduction sponsored by Morgan Stanley and CICC and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041029/LTN20041029035.pdf">plunged</a> into 
loss in the third quarter results published on 28-Oct-04. From a first-day price 
of $1.16, the shares have fallen 77.2% to $0.265 at the time of writing.</p>
<p>NTEEP owns 95.52m promoters' shares representing about 3.69%, of TCL 
Corporation (<b>TCLC</b>), acquired in Jan-02 for US$11.968m. TCLC owns 57.4% of 
TCLCT and 54.81% of TV maker <a target="_blank" href="http://www.tclhk.com">
TCL Multimedia Technology Holdings Ltd</a> (<b>TCLMT</b>, 1070). TCLC has A-shares
<a target="_blank" href="http://www.hkex.com.hk/csm/company.asp?LangCode=en&mkt=sz&StockCode=100">
listed</a> on the Shenzhen Stock Exchange (SZ:100), which currently trade at 
RMB2.00 each, off a 1-year low of RMB1.72, compared with net assets of RMB1.78 
per share. In NTEEP's 3rd quarter results, published after the privatisation bid 
was announced, it said it will consider making a provision for impairment of the 
investment in the 4th quarter. NTEEP shareholders should not be too worried about this - 
because it is a non-core asset and because the market price of TCLC values the promoter's shares at RMB191m 
(US$23.6m), well above the book value. China is in the process of converting the multiple classes of shares 
in mainland-listed companies into a single listed class, so the promoters' shares 
are likely to become transferable in the end.</p>
<p>On 9-Mar-05, in its first sale after the IPO, NTE
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050309/LTN20050309083.pdf">
sold</a> 20m NTEEP shares at $2.55 each to funds managed by Value Partners 
Ltd, raising <b>$51m</b>. The stock closed the previous day at $2.625. On 14-Mar-05 it
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=28247&lang=EN&dia=Y">
sold</a> a further 10m shares in the market at $2.60 each, raising <b>$26m</b>. 
NTE booked a gain of US$5.87m on the sale in its Q1
<a target="_blank" href="http://www.namtai.com/quarterly/05_05_03.pdf">results</a>.</p>
<p>On 8-Apr-05, NTEEP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050408/LTN20050408179.pdf">
announced</a> that it would buy Namtek Software Development Co Ltd (<b>Namtek</b>), 
80% owned by NTE and 20% by its management, for US$26.7m in exchange for new 
shares in NTEEP valued at HK$2.55 each. NTE received 65.34m NTEEP shares, 
increasing its stake from 71.25% to 72.06%.</p>
<p>On 8-Aug-05, NTE began 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050811/LTN20050811032.pdf">selling</a> NTEEP shares in the market, over 4 days, as 
follows</p>
<table class="numtable center">
	<tr>
		<td>Date</td>
		<td>Number</td>
		<td>Aver. price $</td>
		<td>Proceeds $m</td>
	</tr>
	<tr>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=33680&lang=EN&dia=Y">
		8-Aug-05</a></td>
		<td>1,437,000</td>
		<td>1.943</td>
		<td>2.79</td>
	</tr>
	<tr>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=33721&lang=EN&dia=Y">
		9-Aug-05</a></td>
		<td>6,024,000</td>
		<td>1.858</td>
		<td>11.19</td>
	</tr>
	<tr>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=33766&lang=EN&dia=Y">
		10-Aug-05</a></td>
		<td>14,585,000</td>
		<td>1.754</td>
		<td>25.58</td>
	</tr>
	<tr>
		<td>
		<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=33757&lang=EN&dia=Y">
		11-Aug-05</a></td>
		<td>528,000</td>
		<td>1.625</td>
		<td>0.86</td>
	</tr>
	<tr>
		<td><b>Total</b></td>
		<td><b>22,574,000</b></td>
		<td><b>1.791</b></td>
		<td><b>40.42</b></td>
	</tr>
</table>
<p>There's nothing more likely to shake investor confidence in a stock than the 
sight of the majority shareholder dumping shares for no apparent reason, and so it 
was that the stock slumped from $2.025 on 7-Aug-05 to a daily low of $1.14 on 
14-Oct-05. NTE booked a US$2.295m gain on the sale in its Q3
<a target="_blank" href="http://www.namtai.com/quarterly/05_10_31.pdf">results</a>, 
which helped keep its EPS flat for the quarter. NTE also sold 6.006m shares in 
TCLCT on 11-Aug-05 at HK$0.389, and unloaded 150m shares at $0.38 on 31-Aug-05, 
cutting its stake to 3.32%. NTE booked a loss on those sales of US$1.421m.</p>
<p>NTE has not sold any NTEEP shares since then, leaving its current holding at 612.76m 
shares, or 69.50% of NTEEP. Overall, the gross proceeds of NTE's sales of 
252.574m NTEEP shares from the IPO until now is <b>$893.4m, </b>or about <b>
$3.537 per share</b>. </p>
<h3>The NTEEP Offer</h3>
<p>On 23-Oct-05, 16 months after selling NTEEP to the public at $3.88 per share, 
and with the shares having slid to $1.22, NTE
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051024/LTN20051024031.pdf">
offered</a> to buy it all back at $1.80 per share, a 54% discount to the IPO 
price. The total cost of buying back the 252.574m shares it sold (excluding 
shares issued to the Namtek management for their 20% of Namtek) would be <b>
$454.6m</b>, resulting in a <b>net cash windfall of $438.8m</b> before the expenses of the 
IPO and privatisation.</p>
<p>It is noteworthy that the average price of NTE's August sales of NTEEP was 
$1.791 per share, just a smidgeon below $1.80. So the privatisation bid is 
basically at the lowest price at which NTE has ever sold NTEEP shares, and about 
half the average price at which it sold them since and including the IPO.</p>
<p>Despite the difficult market for manufacturers in general, who are challenged 
by elevated plastic prices, other raw material cost increases, rising labour 
costs, the appreciation of the RMB and electricity shortages, NTEEP has 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051101/LTN20051101035.pdf">increased</a> turnover by 4.3% in the first 9 months of this year, with operating 
profit up 6.5% and EPS up 2.8%. This is not a distressed company. The Offer 
values the stock at just 8.85 times 2004 earnings, and meanwhile NTE is trading 
on a P/E of about 16x, almost double the rating. Furthermore, NTEEP had net cash 
at 30-Jun-05 of HK$0.236 per share, so excluding that, NTEEP's core P/E is even 
lower.</p>
<p>You can see why NTE would make 
such an offer, but that is no reason to accept it. The shares traded above the 
Offer Price as recently as 9-Aug-05 without any privatisation bid on the table, 
and there has been no major change in the prospects of NTEEP since then.</p>
<p>NTEEP has 3 &quot;independent non-executive directors&quot;, but 1 of them, Warren Lee 
Wa Lun, is a director of Yu Ming Investment Management Ltd (<b>Yu Ming</b>), 
which by an amazing coincidence has the job of advising NTE on this offer, so he 
is conflicted out of serving on the independent board committee which advises 
minority shareholders. However, that didn't prevent him from giving an opinion in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051114/LTN20051114076.pdf">
offer document</a>, on behalf of Yu Ming, recommending shareholders to 
accept the offer. The other two INEDs are Thaddeus Beczak, former Chairman of 
the Stock Exchange Listing Committee and a member of the Advisory Committee of 
the SFC, who has been on NTEEP's board since the IPO, and Charles Chan Tit-hee, 
an accountant, who joined the board on 1-Nov-04. They have called the offer 
&quot;fair and reasonable&quot; and recommended investors 
to accept it.</p>
<p>The actual independent financial adviser is Platinum Securities Co Ltd (<b>Platinum</b>), 
which also considers the offer fair and reasonable. This is the same adviser which in 
2002&nbsp;said that a privatisation bid for Paul Y.-ITC Construction Holdings Ltd 
(now PYI Corp Ltd, 0498) at a 90% discount to net asset value was &quot;fair and 
reasonable&quot; (the privatisation failed) and in the same year <a target="_blank" href="hitimetovote.asp">said</a> 
that the privatisation bid for Henderson Investment Ltd was fair and reasonable. 
Shareholders rejected it. Platinum's Managing Director Liu Chee Ming is a member 
of the SFC's Takeovers and Mergers Panel.</p>
<h3>J.I.C. Technology Offer</h3>
<p>On 23-Oct-05, the same day as the NTEEP offer,&nbsp; NTE also 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051024/LTN20051024032.pdf">announced</a> an offer to privatise its 
much smaller HK-listed subsidiary,
<a target="_blank" href="http://www.jic-group.com">J.I.C. Technology Co Ltd</a> 
(<b>JICT</b>, 0987) at <b>$0.55</b> per share. The offer for the 28.4% NTE doesn't own 
will cost $119.2m.</p>
<p>JICT was first listed under separate ownership in 1994 as Albatronics (Far 
East) Co Ltd (<b>Albatronics</b>) and was almost bust in 1998, when NTE first 
came onto the scene. They injected capital but not enough to prevent Albatronics 
from going into liquidation, and finally it was resurrected in 2002 when the 
current business was injected and shareholders of Albatronics got 1 share in 
JICT for every 90 Albatronics shares they held. Since then, it has been 
successfully growing its business in monochrome LCD displays for calculators, 
clocks, phones and the like. Customers include
<a target="_blank" href="http://www.uniden.com/">Uniden Hong Kong Ltd</a>. JICT 
produces about 10 million LCD panels per month.</p>
<p>Value Partners has also been involved in JICT, and on 25-Nov-04, their funds
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041126/LTN20041126023.pdf">
purchased</a> 28m shares from NTE at <b>$0.75</b>, raising their stake  
to 32.168m shares, or 9.12% of JICT. Then on 29-Dec-04 NTE
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041230/LTN20041230010.pdf">
sold</a> 100m shares in the market at <b>$0.80</b> per share, which made room for them 
to convert the remaining preference shares they had held since the 
restructuring, without reducing the free float below 25%. As a result, they held 
71.63% of JICT, and Value Partners was diluted to 4.21%. NTE booked a gain of 
US$6.25m on the sales in Q4 of 2004. </p>
<p>For the 9 months ended 30-Sep-05, JICT's turnover
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051101/LTN20051101033.pdf">
gained</a> 17.8%, net profit gained 22.9% and EPS was 4.21 cents. Extrapolate 
that for the full year, assuming no major seasonality, and you get EPS of 5.6 
cents. That puts the offer on a prospective 2005 P/E of 9.8x. The shares last closed 
above the offer price on 15-Aug-05, just 3 months ago.</p>
<h3>Recommendations</h3>
<h4>NTEEP</h4>
<p>Having played a large part in the collapse of NTEEP's share price, NTE's 
Offer is cheeky and opportunistic. It puts NTEEP to the unnecessary expense of 
paying advisers and documenting a response to an offer which should not have 
been made. Ultimately it is the shareholders of NTEEP, including the minority 
shareholders, who bear this expense. <b>We recommend that shareholders do NOT 
accept the offer</b>. We think NTE's offer should be viewed more as a cry for 
attention - by making the offer after trashing NTEEP's share price through its 
own sales, it has brought attention to the stock, but in the process, brought 
its treatment of minority shareholders into question.</p>
<p>Shareholders should ignore 
the possibility of future sales of NTEEP by NTE, which would dilute NTE's 
earnings, and instead focus on the valuation of the stock. Unless there is 
something they are not telling us about the business or an urgent need for cash, 
it makes no sense for NTE to continue selling shares. On the face of it, NTE 
does not need the money - it had group cash of US$155m at 30-Jun-05, including 
NTEEP (US$26.8m) and JICT (US$3.4m). The only bank debts were a modest US$11.3m, 
almost all within JICT. And since 30-Jun-05, NTE's own cash has been boosted 
further by its sales of NTEEP and TCLCT.</p>
<p>The market appears to agree that this offer is likely to fail. The shares are 
trading at $1.55, 13.9% below the $1.80 offer price. NTE has said that the offer 
is final, and that means under the Takeover Code it cannot be increased. In 
order to succeed, NTE needs acceptances in respect of 90% of the shares held by 
independent minority shareholders, which means that if holders of just 2.87% do 
not accept, than the offer will fail.</p>
<h4>JICT</h4>
<p>Given the good growth exhibited by JICT, the relatively low prospective P/E 
being offered, and the fact that the shares traded above the offer price only 3 
months ago, <b>we recommend shareholders do NOT accept the offer</b>. Our 
recommendation is strengthened by the fact that NTE is making such a low bid for 
NTEEP - this should give investors the confidence to believe that the same 
approach is being employed with JICT. In the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051114/LTN20051114075.pdf">
Offer Document</a>, Asian Capital (Corporate Finance) Ltd (<b>ACCF</b>), the 
independent financial adviser, wrote:</p>
<blockquote>
	<p>&quot;any enhancement in future profitability of JIC could lead to an increase 
	in JIC's share price, and may even lead to a revaluation of JIC in terms of 
	a higher price earnings multiple. In that respect, if the privatization is 
	successful, Disinterested Shareholders will not be able to enjoy the benefit 
	of such revaluation.&quot;</p>
	<p>and</p>
	<p>&quot;the Industry and JIC's prospects 
appear to be positive&quot;</p>
</blockquote>
<p>Despite saying this, ACCF advised shareholders to accept the offer.</p>
<h3>Bounty for Brokers</h3>
<p>The story gets worse, though. On 14-Nov-05, the day the Offer Documents were 
posted, NTE
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051115/LTN20051115089.pdf">
announced</a> that it would offer to pay a bounty of 1% &quot;brokerage commission&quot; to any 
dealers who tender valid acceptances on behalf of their clients, on condition 
that the offer succeeds. As far as we know, this is the first time this has 
happened in Hong Kong. The SFC has approved it, but we think that they were 
wrong to do so and have set a dangerous precedent by allowing this. Your humble 
editor is a member of the SFC's
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=04PR61">
Takeovers and Mergers Panel</a> and has conveyed this opinion to the SFC.</p>
<p>At one stroke, the SFC has removed the possibility of any brokers giving 
their clients independent advice 
on the privatisation which is untainted by the offeror's financial incentive, 
unless of course the broker is so noble as to decline the commission. How many 
brokers do you know who would do that? It's one thing for an offeror's 
contracted adviser to solicit acceptances, or to contract another firm to 
conduct a lobbying campaign, but that is something which is a limited 
contractual arrangement rather than a general bounty offer which conflicts the 
entire brokerage community. Now apart from this web site and the media, where 
are investors supposed to get unconflicted advice on these privatisation bids? 
The wholesale elimination of unbiased advisers is is not in the best interests 
of the market.</p>
<p>To see how bad this is, consider a scenario in which the privatisation were 
conducted by way of a &quot;scheme of arrangement&quot; (in which the proposal goes to a 
vote and is binding on all holders) rather than a &quot;general offer&quot;. Would it then be acceptable for the bidder to pay 1% to brokers whose clients vote in favour of the scheme, 
but nothing to those whose clients vote against? Surely this would 
corrupt the vote, and yet the end result is no different - if a scheme of 
arrangement were approved, then all the shares would be sold. And if the current 
offers are successful, then NTE will be able to compulsorily acquire the 
remaining shares. The end result of 100% ownership is the same in either type of 
privatisation.</p>
<p>If the arrangement was intended to compensate brokers for the cost of 
contacting clients and explaining the offer to them, without bias, then a fee should have been 
paid to all brokers who hold the shares for clients in CCASS accounts, regardless of whether their 
clients accept the offer, and regardless of whether the offer succeeds, so that the fee does not influence the decision. That is not the case - the 
bounty is only payable to those brokers who tender shares and only if the offer succeeds.</p>
<p>The terms of the 
commission payment also prohibit the broker from rebating any of this commission 
to the client, because this would result in the client receiving a net higher 
price for his shares than other NTEEP shareholders in breach of the Takeover 
Code, but in practice this will be 
very difficult to police.</p>
<p>So if your broker calls you up and tries to get you to accept the offer, bear 
in mind that he has a financial incentive to do so - a bounty <b>at least 4 
times as large</b> as the typical 0.25% (or less) brokerage rate you might pay if you 
just sell your shares in the market at some future date. Indeed, if he doesn't 
disclose this commission, then as your agent, he is receiving a commission 
without your permission, 
which is against
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&Start=201&Count=30&Expand=201.1#201.1">
Section 9 of the Prevention of Bribery Ordinance</a> (titled &quot;corrupt 
transactions with agents&quot;), so report your broker to the ICAC. This is no 
different in principle to a
supplier 
who pays a secret commission to supermarket staff (who are agents of the 
supermarket) for persuading the supermarket to buy the goods. However, before 
you call the ICAC, look at the small print of your client agreement, and you may 
find that you have already consented to the broker taking commissions in this 
way.</p>
<p>In allowing this arrangement, the SFC did not impose any 
requirement that brokers must inform their clients that the broker will receive a 
1% commission from NTE. So not only is the arrangement wrong in principle, but 
it also lacks transparency. You have been warned.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4656">China Renewable Energy Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20902">NAM TAI ELECTRONIC & ELECTRICAL PRODUCTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5801">Nam Tai Property Inc. (VG)</a></li>
				
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