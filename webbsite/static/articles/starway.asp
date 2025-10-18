
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

<script type="text/javascript">document.title="Golden Resorts and CESV";</script>

	<div class="summary">M-chip Golden Resorts (1031) is seeking shareholders' approval on 17-May-05 to sell a stake in an associate to a BVI company for HK$52m, or a P/E of 0.63. Meanwhile across the ocean, Nasdaq-traded China Energy Savings Technology (CESV) says that on 1-Feb-05 it completed the purchase of the same stake, in exchange for shares worth HK$731m, from the same BVI company. Who's telling the truth, and why is Golden Resorts selling for so little?</div>

<h2 class="center">Golden Resorts and CESV<br>
<span class="headlinedate">8 May 2005</span></h2>
<p>It's not often we write about stocks on Nasdaq, but here's a story which 
straddles the Pacific Ocean.</p>
<p>On 19-Jan-05, HK-listed 
<a target="_blank" href="http://www.goldenresortsgroup.com/">Golden Resorts Group Ltd</a> (<b>GRG</b>, 1031), then known as 
Medtech Group Co Ltd,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050120/LTN20050120028.pdf">
announced</a> that it was jumping onto the Macau bandwagon. 
At the same time, it said it had conditionally agreed to sell a 35% stake in Starway Management Ltd (<b>Starway</b>) to a BVI company called Sky Beyond 
Investments Ltd (<b>Sky Beyond</b>), owned by a Mr Li Hing Sing, for 
<b>HK$52m (US$6.67m)</b> in cash, or HK$2m more than they had paid for it. Does that sound alright so far?</p>
<p>Wait till you see what's really going 
on...</p>
<h3>Background</h3>
<p>GRG had not held this stake for long. On 9-Jun-04, GRG conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040616/LTN20040616011.pdf">
agreed</a> to buy 35% of Starway for HK$50m (US$6.41m) in cash from Eurofaith Holdings Inc. 
(<b>Eurofaith</b>), 
of which 50% was owned by Mr Cheng Ming and 50% by Mr Sun Li. Starway owns 
Shenzhen Dicken Industrial Development Ltd (<b>SDID</b>), a PRC company &quot;which is a 
manufacturer of energy saving products&quot;. The price was approximately equal to 35% of 
the audited net asset value of Starway of HK$142.4m at 31-Mar-04. The deal was 
documented in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040813/LTN20040813063.pdf">
circular</a> dated 13-Aug-04. Shareholders
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040830/LTN20040830148.pdf">
approved</a> it in EGM on 30-Aug-04 and it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040916/LTN20040916031.pdf">
completed</a> on 14-Sep-04. Shareholders seemed to like the deal - the stock 
went up 80.8% on the news. Based on 2003 earnings of Starway, the P/E was just 
2.0.</p>
<p>What GRG didn't mention when it bought into Starway was that on 9-Mar-04 a 
tiny US Over-The-Counter company then called Rim Holdings Inc (<b>Rim</b>) executed a 
non-binding letter of intent to buy 100% of Starway in a reverse takeover, as
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000050/p0323-8k.txt">
announced</a> on 23-Mar-04. Further details were given in a
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000086/p0512-14c.txt">
filing</a> on 12-May-04. The vendor was named as Eurofaith. A definitive 
agreement was executed on 3-Apr-04, according to the quarterly results
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000106/0001076542-04-000106-index.htm">
filed</a> on 19-May-04. However, in a
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000137/p0610-8k.txt">
filing</a> dated 7-Jun-04, two days before the GRG announcement, Rim said the 
reverse takeover had been scrapped on 29-May-04.</p>
<p>However, as of 16-Jun-04, the existing controllers of Rim
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000157/p0630_ex10-1.txt">
agreed</a> to sell 8,888,224 shares of Rim to a BVI company called Best 
Development Co Ltd (<b>BD</b>) for US$225,000 in cash.&nbsp; In fact half of the 
shares went to BD and half to a Mr Zhu Jie. The beneficial owner of BD was Mr Li 
Shilong. Rim agreed to sell its existing business to the departing chairman in 
exchange for cancellation of some shares, and as a result the shares acquired by 
BD and Mr Zhu Jie amounted to 50.1% of the outstanding shares of Rim, giving 
them majority control.</p>
<p>Then as of 29-Jun-04 Rim
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000157/p0630_ex10-2.txt">
agreed</a> to buy 50% of Starway from Eurofaith for US$120m (HK$936m), payable 
in convertible notes. Of course, you can put any nominal price you like on it 
when you are swapping paper for paper in an empty shell. The price was based on 
a P/E of 10 times a forecast profit of US$24m in 2004. </p>
<p>A 20:1 stock consolidation effective 25-Aug-04 reduced the outstanding shares 
to 887,048. The next day, Eurofaith converted the note and received 11,153,669 
shares in Rim, which the board renamed 
<a target="_blank" href="http://www.cesv-inc.com">China Energy Savings Technology, Inc</a> (<b>CESV</b>). 
Of these shares, 6,900,000 (55.9% of the enlarged capital) were
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000245/p1020-13d.txt">
transferred</a> to a BVI company called New Solomon Consultants Ltd (<b>New 
Solomon</b>), which at 9-Jan-05 was 55% owned by Mr Sun Li, who you will recall 
owned 50% of Eurofaith. Mr Sun is the Chairman and CEO of CESV.</p>
<p>On 17-Nov-04, CESV
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000269/0001076542-04-000269-index.htm">
acquired</a> an additional 15% of Starway from Eurofaith in exchange for 
3,346,100 new shares, or the same exchange ratio as it had paid for the first 
50% of Starway. As a result, Starway was 65% owned by CESV and 35% owned by GRG. 
Up to this point, things look relatively normal.</p>
<h3>The independent accountant</h3>
<p>The GRG shareholders' circular to approve the purchase of 35% of Starway 
included an accountant's report by K.W. Poon &amp; Co. Guess what - Mr Poon Kam Wah 
(<b>Mr Poon</b>), presumably the proprietor of that firm, was
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000228/p0921-8k.txt">
appointed</a> as CFO of CESV on 17-Sep-04. So barely a month after his firm had 
signed an accountants' report on Starway, he became CFO of its parent.</p>
<h3>The Starway accounts</h3>
<p>The Starway accounts appear on their face to show a remarkably successful 
business. The company makes and sells energy-saving electrical equipment, 
including a microprocessor-controlled transformer, which adjusts the voltage to 
fluorescent lighting, dropping it down from mains voltage after the tubes are 
fired-up. They also make a product for sewing machines to save power while the 
motors are idling. You can get a better explanation of the principles by looking 
at the web site of another provider,
<a target="_blank" href="http://www.ilumalite.com">Ilumalite</a>, or this one at
<a target="_blank" href="http://www.globalight.ca/">Globalight</a>. A detailed 
description of Starway's business is also contained in a
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654204000205/0001076542-04-000205-index.htm">
document</a> filed by CESV on 20-Aug-04. That also contains an independent 
auditor's report, not by Mr Poon's firm&nbsp; but by a Florida firm called Webb 
&amp; Company (no relation to your editor!).</p>
<p>There are a few things in the Starway accounts which give us pause. The US 
filing says that Starway makes its own products, and the 2003 results in the HK 
filing showed that they had a cost of sales of HK$137.2m, but inventories at the 
year end were only $4.9m, or about 13 days cost of sales including only $3.6m of 
finished goods, and zero work in progress. That's remarkably low for a 
manufacturer, even bearing in mind that the cost of sales includes other items 
such as labour and depreciation.</p>
<p>In the annual
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654205000015/0001076542-05-000015-index.htm">
10-K filing</a> for the period to 30-Sep-04, CESV discloses that the products 
are sold under two types of contract - an up-front purchase by the customer, or 
a &quot;Savings Sharing contract&quot;, where the customer is not required to pay anything 
up front but enters into a 5 to 7 year contract whereby it pays 70% of the total 
savings from the reduced electricity bill. The US filing (but not the HK 
accountant's report) include a table which shows the estimated value of these 
contracts stretching out to 2008. These amounts are of course booked as current 
revenue when the products are accepted by the customer. Having said that, cash 
collection has picked up strongly since the end of 2003, when they had just 
HK$164k in the bank, and by 30-Sep-04 they had a (US-audited) US$18.4m in cash, 
and at 31-Dec-04 an unaudited US$26.8m. Assuming that these are the genuine 
proceeds of genuine sales, and that customers will keep honouring their accounts 
for 5-7 years after installation, and that the future energy savings booked as 
current revenue have been correctly estimated, then business is going 
splendidly.</p>
<h3>One Stake, Two Deals</h3>
<p>Now here's the weird thing. On 1-Feb-05, CESV
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654205000023/p0227_ex10-1.txt">
agreed</a> to buy 35% of Starway from Sky Beyond in exchange for 7,807,569 new 
shares of CESV, at the same exchange ratio as the other 65%. In a
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/1119601/000107654205000023/p0227-8k.txt">
filing</a> dated 4-Feb-05, CESV said the deal had been completed on the day it 
was signed. Based on the closing price of US$12.00 per CESV share on 1-Feb-05, the 
35% of Starway was worth <b>US$93.7m (HK$731m)</b>. The deal was signed on 
behalf of Sky Beyond by a &quot;Mr Li Qing Xing&quot;, whom we assume is the same as Mr Li 
Hing Sing, just a different English spelling. He gives the same address as Mr 
Sun Li's New 
Solomon.</p>
<p>But hold on a minute, how can this be? Shareholders of GRG have yet to 
approve the disposal of that 35% stake in Starway to Sky Beyond, and yet CESV 
says it has already completed the purchase of the same stake from Sky Beyond on 
1-Feb-05. A GRG
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050504/LTN20050504076.pdf">
circular</a> dated 29-Apr-05 convenes a shareholders meeting to approve the sale for 17-May-05.</p>
<p>It 
cannot have escaped your notice that GRG is selling the stake for HK$52m which 
CESV has agreed to acquire for HK$731m in stock, or about 14 times the price, 
handing an instant paper profit to Sky Beyond of HK$679m. 
Or to put it another way, Sky Beyond ends up with shares in CESV at an effective 
price of US$0.85 per share, a 93% discount. The GRG circular states that Mr Sun 
Li and Mr Cheng Ming, the owners of Eurofaith, are not connected with Mr Li Hing 
Sing, the owner of Sky Beyond.</p>
<p>According to a CESV
<a target="_blank" href="http://app.quotemedia.com/quotetools/newsItem.htm?storyId=1863153&amp;topic=CESV">
announcement</a> dated 5-Apr-05, Starway made net income of US$6.15m in the 
second quarter ended 31-Mar-05, and shareholder equity was US$50m (HK$390m). 
That implies that the net assets attributable to 35% would be HK$136.5m. So GRG 
is selling its stake for just <b>0.38x NAV</b>. According to the circular, for 
the year ended 31-Dec-04, Starway made net profit of HK$236.4m. This means that 
GRG is selling in on a <b>P/E of just 0.63</b>. Yes, that is not a typo. It 
starts with a zero, as in less than one year's earnings.</p>
<p>On 21-Apr-05, CESV graduated to trading on the Nasdaq National Market System.</p>
<p>Now ask yourself this:</p>
<ul>
  <li>If CESV says it already owns 100% of Skyway, but GRG says that the sale of 
  its 35% stake is pending its shareholders' approval, then how can both 
  statements be true?</li>
  <li>Why did Eurofaith sell 35% to GRG for such a low P/E in the first place?</li>
  <li>Why is GRG selling it to Sky Beyond (which it claims is independent of 
  Eurofaith) on a P/E of 0.63, assuming the earnings are real?</li>
  <li>Why didn't GRG sell the stake directly to CESV for HK$731m in stock, 
  rather than selling it to Sky Beyond for HK$52m in cash?</li>
</ul>
<h3>Familiar names</h3>
<p>Some of the names at CESV are found in our database. Mr 
<a href="../dbpub/positions.asp?p=11630">Dennis Yu Won Kong</a>, 
the COO of CESV, was an executive director of <a target="_blank" href="../dbpub/articles.asp?p=3855">
China Nan Feng Group Ltd</a> (<b>CNF</b>, 0979) from 11-Oct-00 to 27-May-03, 
back when it was known as &quot;Prosper eVision Ltd&quot;. Mr Lee Kam Man, now a 
non-executive director and previously CEO of CESV, was also an executive 
director of CNF from 7-Nov-98 to 7-Dec-01. Ms Sim Lai Fun, an Executive Director 
of CESV, served as assistant to the Chairman of CNF from 1999 to 2001. From 2002 
to 2003, she served as assistant to the Chairman of OTC-traded
<a target="_blank" href="http://www.chinacable.us">China Cable and 
Communications, Inc</a> (<b>CCCI</b>). Gareth Tang Yau Sing, former Chairman and 
now President and CFO of CCCI, was an Executive Director of CNF from 29-Apr-99 
to 11-Oct-00. The same people were involved in the Australian-listed parent of 
CNF called China Convergent Corp Ltd, which in Feb-03
<a target="_blank" href="http://www.sec.gov/Archives/edgar/data/773394/000101054903000112/0001010549-03-000112-index.htm">
sold</a> a 49% stake in a Chinese Cable TV business called &quot;Baoding Pascali 
Multimedia Transmission Networking Co Ltd&quot; to Nova International Films, Inc in a 
reverse takeover, and that company was then renamed CCCI. China Convergent was
<a target="_blank" href="http://www.delisted.com.au/CompanyDisplay.aspx?id=1914">
delisted</a> in Australia in 31-Aug-04 after it failed to pay its annual fees. 
CNF, which reached a scrip-adjusted HK$40 in Feb-00, now trades at $0.09.</p>
<p>This brings us to an amazing coincidence - it turns out that Starway, which 
now is the BVI holding vehicle for SDID, is a recycled company - it was once a 
wholly-owned subsidiary of CNF, and was used in Oct-98, just after 
incorporation, to buy a 95% interest in a power station in Heilongjiang for 
HK$190m, which it sold in Feb-00 for $200m in order to focus on its Cable TV 
investment. At some point after that, CNF presumably disposed of the then-empty 
Starway, because it ended up being reused on 15-Feb-03 by Eurofaith when it 
injected SDID into the shell.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=25518">China Energy Savings Technology, Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4977">Kingston Financial Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2021104">SKY BEYOND INVESTMENTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1861251">Starway Management Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=25522">Sim, Stella Lai Fun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8175">Tang, Gareth Yau Sing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11630">Yu, Dennis Won Kong</a></li>
				
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