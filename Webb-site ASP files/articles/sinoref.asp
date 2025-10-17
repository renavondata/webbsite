
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

<script type="text/javascript">document.title="Blowing the whistle on Sinoref (1020)";</script>

	<div class="summary">The latest deal deserves attention from the SFC's corporate misconduct team. We also find improbably high profit margins which have now collapsed, a big receivables problem, and two changes of board, the latest after a character from our 2012 "Raking Muck" series reappears.</div>

<h2 class="center">Blowing the whistle on Sinoref (1020)<br>
<span class="headlinedate">12 November 2014</span></h2>
<p>Sometimes it is just really obvious that a company is up to no good. This is 
one of those times. On 3-Nov-2014, after a recent board change,
<a href="../dbpub/orgdata.asp?p=58834">Sinoref Holdings Ltd</a> (<strong>Sinoref</strong>, 
1020)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1103/LTN201411032162.pdf" target="_blank">
announced</a> the conditional acquisition of 90% of
<a href="../dbpub/orgdata.asp?p=1841056">Time Credit Ltd</a> (<strong>Time 
Credit</strong>), a HK-based money-lender, from one Ms Lam Wai Ha, about whom we know nothing. The company 
claims that she is an independent third party.</p>
<p>The purchase price is HK$140m, valuing the whole of Time Credit at 
$155.6m, which compares with warranted net assets of HK$4m (or $3.6m for Sinoref's 
share), so the deal is 
priced at a ridiculous <strong>38.9 times net asset value</strong>. Time Credit was incorporated 
on 30-Dec-2011 and made a net profit of $0.71m for the year to 30-Jun-2014, so 
the deal values it at a <strong>P/E of 219 times</strong>. The barriers to entry into this 
industry are
<a href="http://www.cr.gov.hk/en/publications/docs/16-e.pdf" target="_blank">
almost zero</a>, as the entity is lending money, not taking deposits from the 
public. Time Credit is one of hundreds of HK-licensed money lenders, and is 
currently awaiting the annual renewal of its license, which expired on 
27-Aug-2014, according to
<a href="http://www.cr.gov.hk/en/public/docs/ml_licensees1.pdf" target="_blank">
this list</a>.</p>
<p><strong>The price of this transaction relative to both NAV and earnings is so 
ridiculous that it cries out for scrutiny from the </strong>
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=13PR121" target="_blank">
<strong>SFC's nearly-new corporate misconduct team</strong></a><strong>. 
Webb-site calls on them to investigate.</strong></p>
<p>Licence renewal is a condition of the acquisition, but Sinoref has already 
paid out a HK$70m refundable deposit to Ms Lam, equal to half the purchase 
price. The rest is payable on completion, $37m in cash and $33m in a 2-year 
3% promissory note. The other condition is that she grants a credit facility of 
up to $100m to Time Credit for at least 2 years, with repayment to be 
guaranteed by Sinoref. Both conditions must be fulfilled by 31-Mar-2015.</p>
<p>Sinoref has managed to obtain a valuation of HK$159m for Time Credit, based 
on unpublished cash flow projections, from a valuer incorporated last year, called
<a href="../dbpub/adviserships.asp?p=1847187">International Valuation Ltd</a>, 
but even if you could see the report, it would be meaningless, because the 
valuation <u>assumes</u> that "the financial 
projections provided by the Target Company are reasonable, reflecting market 
conditions and economic fundamentals". In other words, the valuer is not saying 
that the projections are reasonable. Indeed, nobody is. They just assume that 
they are.</p>
<p>Now we will recount the history of Sinoref, and how it has undergone two de 
facto changes of control, leading to the most recent board.</p>
<h3>A brief history</h3>
<p>Sinoref, by the way, is not in the business of money-lending. It is engaged 
in the manufacture and sale of "advanced steel flow control products" which are 
consumables (lasting a few hours) in the steel-making process. More recently it 
is also engaged in the manufacture and sale of paper converting equipment via an
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0307/LTN20140307922.pdf" target="_blank">
acquisition</a> in early 2014, of which more below. Sinoref listed on 7-Jul-2010 
after an IPO of 390m shares (32.5%), including 90m existing shares, priced at 
$0.76. The IPO raised HK$195.3m for Sinoref. The stock has a
<a href="../dbpub/ctr.asp?i1=6053&amp;rel=0&amp;d1=7/7/2010" target="_blank">
Webb-site Total Return</a> of -40.97% from the first day of trading up to 
11-Nov-2014.</p>
<h3>Suspiciously-high profit margins collapse</h3>
<p>Prior to its IPO, Sinoref recorded extremely high gross profit margins which 
peaked at 68.4% in 2010, the year of the IPO, and proved to be unsustainable. 
The margin declined to 55.9% in 2011, 47.4% in 2012 and then collapsed to 13.2% 
in 2013 and when negative to -10.8% in the first half of 2014. This was almost 
entirely due to a collapse in average selling prices, which peaked at about 
CNY41,900 per tonne in 2010, dropping to CNY20,900 per tonne in 2013 and 
CNY17,200 per tonne in 2014. Cost of sales per tonne rose gradually from 
CNY13,300 per tonne sold in 2010 to CNY19,100 per tonne in the first half of 
2014.</p>
<p>It is questionable whether the high profit margins were ever real or were 
engineered, but they no longer exist - it is one reason that your editor doesn't buy IPOs, 
because if a company has been manipulating its margins to juice up its 
valuation, then it will not be able to maintain that for long without running 
into cash flow issues. If there is a money-go-round, then the music tends to 
stop quite soon after IPOs.</p>
<h3>Trade receivables - another red flag</h3>
<p>Sinoref's trade receivables have ballooned since IPO. At 31-Dec-2009, the 
last full year before listing, trade receivables were CNY46.5m on turnover of 
CNY156.9m. Nearly all of it was less than 90 days old based on the "goods 
delivery date". Four years later at 31-Dec-2013, it had trade receivables of 
CNY172.4m on turnover of CNY186.4m. In other words, it had not been paid for 
most of what it sold that year. Of the total due, CNY78.0m was more than 180 
days old. At 30-Jun-2014, it had trade receivables of CNY 208.0m, after making 
an impairment charge of CNY25.9m on doubtful debts during the half-year. Of the 
total receivables, CNY96.0m was more than 180 days old.</p>
<h3>First change of control</h3>
<p>Only one of the original executive directors (the Chairman and CEO 
<a href="../dbpub/positions.asp?p=58835">Xu 
Yejun</a> (<strong>Mr Xu</strong>)) and one 82-year-old INED have remained at 
Sinoref since the IPO. The founding shareholders, including Mr Xu, have sold 
their holdings starting in Sep-2013. Based on the large discounts to market 
prices at which they sold, they seemed to be in a remarkable hurry to get out. 
But then, 2013 was the year in which the profit margins were collapsing. Here's 
how the first change of control panned out:</p>
<ul>
	<li>On 24-Jun-2013, Zhang Lanyin (<strong>Dr Zhang</strong>), co-founder of 
	Sinoref, stepped down from ED to NED.</li>
	<li>On 4 dates from 10-27-Sep-2013, Gao Zhilong (<strong>Mr Gao</strong>), 
	an NED of Sinoref, <a href="../dbpub/sdidirco.asp?p=58840&amp;i=6053">sold 
	his entire holding</a> of 171m shares (14.25%) at prices ranging from $0.41 
	to $0.223.</li>
	<li>On 24-Sep-2013, Gu Aoxing (<strong>Mr Gu</strong>), an ED of Sinoref, 
	<a href="../dbpub/sdicap.asp?r=143312">sold</a> 31m shares (2.58%) at $0.223, a 31% discount to the $0.325 closing 
	price.</li>
	<li>On 27-Sep-2013, one Mr Chen Hong (<strong>Mr Chen</strong>)
	<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=59300" target="_blank">
	bought</a> 193m shares (16.08%) at $0.223, a 54% discount the the $0.48 
	closing price, of which 121m shares were the final part of Mr Gao's holding, 
	and the other 72m shares were from Dr Zhang. This raised Mr Chen's holding 
	to 17.73%. Mr Chen has not been a director of Sinoref.</li>
	<li>On 30-Sep-2013, Sinoref
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0930/LTN20130930865.pdf" target="_blank">
	announced</a> a summary of the recent shareholding changes.</li>
	<li>On 10-Oct-2013, Mr Xu, who owned 360m shares (then 30%) 
	<a href="../dbpub/sdicap.asp?r=144147">sold</a> 30m at $0.22, his first 
	sale since the IPO, at a 63% discount to the closing price of $0.60.</li>
	<li>On 30-Oct-2013, the board members began to change.
	<a href="../dbpub/positions.asp?p=2154217">Patrick Ho Yuk Hay</a> (<strong>Mr 
	Ho</strong>) and Mr Zhao Ping were
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/1030/LTN20131030232.pdf" target="_blank">
	appointed</a> as EDs. Mr Ho was and is also the CFO of
	<a href="../dbpub/orgdata.asp?p=10220">Sino Splendid Holdings Ltd</a> (<strong>Sino 
	Splendid</strong>, 8006)</li>
	<li>On 27-Nov-2013, there was a further
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/1127/LTN20131127439.pdf" target="_blank">
	large change in the board</a>. Dr Zhang and Mr Gao both resigned as NEDs, Mr 
	Gu resigned as ED, and an INED resigned. Simultaneously
	<a href="../dbpub/positions.asp?p=59643">Chow Chi Wa</a> (<strong>Mr Chow</strong>) 
	was appointed as NED and <a href="../dbpub/positions.asp?p=3429">Simon Wong 
	Kwong Chi</a> (<strong>Mr Wong</strong>) was appointed as INED. Mr Chow and 
	Mr Wong are the current and former CEOs of Sino Splendid, where Mr Ho is 
	CFO.</li>
</ul>
<p>As a result, there were 4 new directors in a 7-man board that looked
<a href="../dbpub/officers.asp?p=58834&amp;d=2013-11-27&amp;hide=Y">like this</a>, and 
control had effectively changed. Now you must be wondering, what's the 
connection between Sinoref and Sino Splendid (apart from the "Sino" bit), that 
resulted in them having 3 senior people in common? Left unsaid was that Sino 
Splendid is controlled by one <a href="../dbpub/natperson.asp?p=2190449">Mr Chen 
Ying Zhen</a>, who bought the controlling holding on 13-Jan-2013 at the tender 
age of 24. His father, who guaranteed that transaction, is one Mr Chen Hong, 
presumably the same man who bought the stake in Sinoref. As you will see though, 
he didn't hold Sinoref for long. But first, let's talk about the fund-raising.</p>
<h3>Placings</h3>
<p>Since the IPO of Sinoref, there were no changes in
<a href="../dbpub/outstanding.asp?i=6053">outstanding shares</a> until this 
year, when Sinoref has issued shares for cash twice. On 10-Jan-2014, it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0110/LTN20140110545.pdf" target="_blank">
launched</a> a placing of 200m shares (16.67% enlargement, 14.29% of enlarged 
shares) at HK$0.38, an 18.5% discount to the 5-day average price, raising $75m 
net. The subscription
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0120/LTN20140120423.pdf" target="_blank">
completed</a> on 20-Jan-2014. On 25-June-2014, Sinoref
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0625/LTN20140625751.pdf" target="_blank">launched</a> another placing 
of 110m shares (7.36% enlargement, 6.86% of enlarged shares) at HK$0.57, a 19.7% 
discount to market, raising $61m net. The subscription
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0707/LTN20140707765.pdf" target="_blank">
completed</a> on 7-Jul-2014. Both placings were via
<a href="../dbpub/adviserships.asp?p=136220">China Investment Securities 
International Brokerage Ltd</a>. The combined net proceeds were HK$136m.</p>
<p>On 24-Jul-2014, Sinoref
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0724/LTN20140724971.pdf" target="_blank">
signed</a> a 60-day MoU for a possible acquisition from Mr Chen, at a price to 
be determined, of Brilliant King Global Ltd, which held a 65% interest in a 
company which "supplies and installs parapets" along the roads of Chongqing. 
With its history, crash barriers are something Sinoref could definitely use.</p>
<p>On 13-Aug-2014, Mr Chen
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=64955" target="_blank">
opened a short position</a> in 205.012m shares, and it appears that China 
Construction Bank was on the other end of that, perhaps holding a call option. 
It
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=243046" target="_blank">
claimed</a> an interest of 410.024m shares but that was 205.012m beneficial and 
205.012m security interest, so they were probably double-counting the same 
shares. As you will see below, this eventually resulted in Mr Chen selling out.</p>
<p>On 22-Sep-2014, the MoU with Mr Chen was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0922/LTN20140922810.pdf" target="_blank">
extended</a> to 150 days of signing, or 21-Dec-2014.</p>
<p>On 29-Sep-2014, Mr Xu <a href="../dbpub/sdicap.asp?r=158911">sold</a> 130m 
shares (8.10%) at $0.51, close to the closing price of $0.50, to a company held 
by one <a href="../dbpub/natperson.asp?p=2343352">Calvin Ng Hang Fai</a> (<strong>Mr 
Ng</strong>). We 
know nothing about him.</p>
<h3>Hello again, Mr Jiang</h3>
<p>Ten days later, on 9-Oct-2014, <a href="../dbpub/natarts.asp?p=67648">Howard 
Jiang Qi Hang</a> (<strong>Mr Jiang</strong>) bought 205.012m shares (then 
12.78%) at $0.30 off-market, just 25 days before the announcement of the 
acquisition of Time Credit by Sinoref. Mr Jiang bought his shares in Sinoref 
either from Mr Chen or via CCB, both of which ceased to be interested in the 
same number of shares. In the Webb-site CCASS Analysis system
<a href="../ccass/chldchg.asp?i=6053&amp;d=2014-10-13">we can see</a> the 
shares moving from CCB International Securities Ltd to Tanrich Securities Ltd on 
13-Oct-2014.</p>
<p>Mr Jiang has featured in <em>Webb-site Reports</em> before on 11-Mar-2012,
<a href="muck2012p6.asp">in Part 6</a> of our epic "Raking muck" 
series. Then, he was involved with a company called China Outdoor Media Group 
Ltd (<strong>COMG</strong>, now <a href="../dbpub/orgdata.asp?p=4905">National 
United Resources Holdings Ltd</a>, 0254). On 28-Dec-2009 Mr Jiang sold to COMG 
an almost empty company for HK$1242m in shares and convertible bonds. The total 
goodwill in the acquisition was $1247m, and COMG wrote it all off by 
30-Jun-2013. As we said in our article, based on average market prices over the 
period of his sales of shares and bonds up to that point, Mr Jiang had raised 
about HK$1.812bn, retaining a 27.67% stake at the time. On 18-Sep-2013, Mr Jiang
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0922/LTN20130922027.pdf" target="_blank">
sold</a> his remaining 27.12% holding in COMG to
<a href="../dbpub/positions.asp?p=2137815">Mr Yang Fan</a> for HK$150m, taking 
the total estimated proceeds to about HK$1.96bn. Meanwhile COMG is left with a 
worthless business.</p>
<p>On 10-Oct-2014, the day after Mr Jiang's purchase of Sinoref shares, there 
was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1010/LTN20141010503.pdf" target="_blank">
another big board change</a> at Sinoref.
<a href="../dbpub/positions.asp?p=63272">Ronald Sin Kwok Wai</a> (<strong>Mr Sin</strong>) 
was appointed as ED, and <a href="../dbpub/positions.asp?p=56171">Sam Li Yik 
Sang</a> and <a href="../dbpub/positions.asp?p=17482">Tong Yiu On</a> were 
appointed as INEDs, while <a href="../dbpub/positions.asp?p=62329">Steve Tsui 
Siu Hang</a> (an INED since the IPO) and Mr Wong both resigned as INEDs. Mr Sin 
Was Financial Controller and Company Secretary of
<a href="../dbpub/articles.asp?p=23261">China National Culture Group Ltd</a> 
(0745) from 24-Dec-2010 until 7-Aug-2013. While he was there, that company, then 
called "China Railsmedia Corp Ltd", also featured in our "Raking Muck" 
series in 2012, along with COMG.</p>
<p>On 22-Oct-2014 Mr Zhao
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1022/LTN20141022336.pdf" target="_blank">
resigned</a>, and on 28-Oct-2014 Mr Ho
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1028/LTN20141028766.pdf" target="_blank">
resigned</a>, completing the exit of 3 of the 4 directors appointed when Mr Chen 
was a shareholder. That just leaves Mr Chow.</p>
<p>On 24-Oct-2014, Mr Xu <a href="../dbpub/sdicap.asp?r=160149">sold</a> his 
remaining 200m shares (12.77%) off-market at $0.27, a 38% discount to the 
closing price of $0.435 and far less than he had accepted less than a month 
earlier. No buyers have disclosed interests, but the same number of shares was
<a href="../ccass/chldchg.asp?i=6053&amp;d=2014-10-29">deposited into CCASS</a> 
on 29-Oct-2014 with 3 brokers.</p>
<p>Then on 3-Nov-2014, the acquisition of Time Credit was announced, which as we 
said above, extracts $140m for $3.6m of net assets in return.</p>
<p>On 10-Nov-2014, Sinoref
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1110/LTN20141110415.pdf" target="_blank">
appointed</a> Ms Yip Sum Yu, aged 24, as NED, saying that she is "a consultant 
of an investment company". We know nothing about her.</p>
<p>The net result is that currently the only two disclosed shareholders of 
Sinoref are now Mr Jiang, with 13.09%, and the mysterious Mr Ng, with 8.10%, while 
the 7-person board includes 2 original directors, one person (Mr Chow) appointed 
during Mr Chen's shareholding period, and 4 people appointed since Mr Jiang 
bought in.</p>
<h3>An excellent opportunity to miss a profit guarantee</h3>
<p>There's one more aspect of Sinoref worth mentioning, from Mr Chen's era. On 
7-Mar-2014, Sinoref
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0307/LTN20140307922.pdf" target="_blank">
announced</a> the acquisition of Accurate Trade International Ltd (BVI) from 
Rainbow Phoenix Holdings Ltd (BVI) for CNY55m, payable in new Sinoref shares at 
HK$0.62 each. The deal completed on 16-Apr-2014. The vendor was owned by one 
Evelyn Chua Go. She and her spouse, Mr Hu Jianzhong, also known as Eduardo V. 
Go, were the guarantors. The underlying subsidiary is Accura Machinery &amp; 
Manufacturing (Taicang) Co. Ltd (<strong>Accura Machinery</strong>, PRC), a 
loss-making company which makes "paper converting equipment and other relating 
equipment". Prior to the acquisition it was held by Great Wall Machinery &amp; 
Manufacturing (Philippines) Inc, which has an outdated
<a href="http://www.greatwallmachinery.com/" target="_blank">web site here</a> 
still showing the Accura name, and
<a href="http://www.greatwallmachinery.com.cn/" target="_blank">another site 
here</a>.</p>
<p>Accura Machinery made net losses of CNY1.93m for 2012 and CNY1.89m in the 
first half of 2013.</p>
<p>In the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0912/LTN20140912039.pdf" target="_blank">
interim report</a> for the 6 months to 30-Jun-2014 issued on 12-Sep-2014, 
Sinoref said (p8):</p>
<blockquote>"<strong>In view of the profit guarantee</strong> (the "Profit Guarantee") of the Accura Group of not less than RMB10 million for the 
year ending 31 December 2014 pursuant to the sale and purchase agreement in 
relation to the acquisition of Accurate Trade by the Company, <strong>the 
Directors consider that the acquisition will provide an excellent opportunity</strong> 
for the development of future business of the Group and broaden its revenue 
base.</blockquote>
<p>However, CNY10m of the acquisition price is subject to the Profit Guarantee, 
and in Note 22 on page 45 of the same report, you will see that the directors 
contradict their rosy outlook with the following:</p>
<blockquote>"As at the acquisition date, the directors were of the 
opinion that the profit guarantee would be met and that 20,456,000 shares would 
be issuable under the contingent consideration share arrangement. However, as at 
30 June 2014, <strong>based on the latest forecast, the directors are of the 
opinion that profit guarantee will not be met</strong> and adjustment to the 
contingent consideration is considered necessary. It is estimated that the 
Company will be required to issue 17,392,000 new shares as the Tranche B 
Consideration Shares."</blockquote>
<p>In other words, they already expected it to miss the profit forecast, making 
around CNY8.5m for the year. The Stock Exchange should require the company to 
explain the contradiction and whether they still expect that many shares to be 
issued or whether the outlook has deteriorated further.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=58834">Cybernaut International Holdings Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1847187">International Valuation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10220">Sino Splendid Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=136220">Soochow Securities International Brokerage Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1841056">TIME CREDIT LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2190449">Chen, Ying Zhen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=59643">Chow, Chi Wa (1967)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2154217">Ho, Patrick Yuk Hay</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=67648">Jiang, Howard Qi Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2343352">Ng, Calvin Hang Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=63272">Sin, Ronald Kwok Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3429">Wong, Simon Kwong Chi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=58835">Xu, Yejun</a></li>
				
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