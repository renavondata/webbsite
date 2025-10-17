
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

<script type="text/javascript">document.title="The 2004 Christmas Pick";</script>

	<div class="summary">Season's greetings to all our readers - time for our annual stock pick, when we rummage in our sack of small-cap investments for the stock we think is most likely to perform over the next year. 2003's pick was our worst ever, up only 4.7%, but for the last 5 years, the compound return on our picks has been 339% while the Hang Seng Index made a net gain of only 7.3%. So what are we putting under the Christmas tree this year? Read on...</div>

<h2 class="center">The 2004 Christmas Pick<br>
<span class="headlinedate">5 December 2004</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p><i>Webb-site.com</i> is celebrating its 6th anniversary, and 
loyal readers will know that we only give one gratuitous stock pick per year - 
something nice to say in the season of goodwill to make up for the campaign 
against bad corporate and economic governance in the rest of the year. We 
rummage in our sack of investments and pick the stock from our portfolio that we 
think is most likely to perform over the next year.</p>

<p>Apart from devoting about half his time to the public good, your 
editor is also a private investor who specialises in smaller companies, panning 
the riverbed of some 900 smaller companies that make up 10% of the market value, 
and looking for specks of gold - undervalued stocks with above-average 
governance. He more often finds the opposite - over-valued and badly governed 
stocks, and these horror stories sometimes end up as case studies on <i>
Webb-site.com.</i></p>

<p>Before we tell you about this year's pick, a note of caution. 
Our annual pick also earns us annual criticism (usually from the same people) 
who say we have a conflict of interest. We look at it the other way: our money 
is where our mouth is, and if we are wrong, then we will lose money too, which 
is more than you can say for most analysts. Readers will also know that if there 
are any future corporate governance failures in the company we pick, then we 
have a strong financial interest in fighting for the interests of minority 
shareholders. That's not a conflict of interest, that's a common interest.&nbsp; 
Having said that, here are some ground rules:</p>

<ol>
  <li>We only make one pick a year, because
<i>Webb-site.com</i> is not a tip sheet, it is a corporate and economic governance site.
  </li>
  <li>We're not a licensed investment 
adviser, and you're not paying us for advice, so you have no right to rely on 
it. All we are doing is exercising our right of free speech, which is one of the 
few things the Government has not screwed up since the handover.
  </li>
  <li>For the rest of the year, we don't 
normally comment on our portfolio, nor do we comment on the stock we picked, 
until the next Christmas, when we review how it went. In the meantime, you are 
on your own, so don't write in asking us whether it is time to sell or buy some 
more. As long-term investors, the only time we would break this silence is if 
there was a major corporate event at the subject company.
  </li>
  <li>We reserve the right to increase and 
decrease our holdings according to market circumstances and our own capital 
needs.
  </li>
</ol>

<p>Before we tell you what we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our previous recommendations performed.</p>

<h3>2003's Pick</h3>

<p>Last year, on 3-Dec-03, we picked
<a target="_blank" href="../dbpub/articles.asp?p=2949">Allan International Holdings 
Ltd</a> (<b>Allan</b>, 0684), a maker of household electrical appliances and 
personal care products. This was our worst ever Christmas pick. It closed that 
day (before our pick) at $1.27. It reached a daily high of $1.71 on 8-Dec-03, 
and a low of $1.24 on 15-Nov-04. And on 3-Dec-04, when our year was up, it 
closed at $1.25. However, it paid dividends totalling $0.08, for a total return 
of $1.33, or a gain of <b>4.7%</b>. By comparison, the Hang Seng Index, with 
dividends reinvested on a monthly basis, gained 18.1% in the year to 30-Nov-04 
(we only have monthly figures). This is the lowest return 
of any of our 5 annual picks, and the first time that a pick has done worse than 
the Hang Seng Index.</p>

<p>For the year ended 31-Mar-04, Allan's turnover grew by 8% to 
HK$833.4m but net profit decreased by 18% to $45.89m. The board attributed the 
margin reduction to raw material prices and customer pricing pressure. The new 
factory block, which cost HK$30m, began operations as planned in the quarter to 
Dec-03. Staff headcount, which we use as a proxy for unit production, increased 
about 15% to 5,500.</p>

<p>Interim results for the half-year to 30-Sep-04 are expected to 
be announced on 15-Dec-04. We don't know any more than you do, but we would 
expect that turnover has continued to grow, due to the new factory and 
benefiting in part from the dollar weakness against the Euro (51% of last year's 
sales were to Europe). However, profit margins may still be affected by the 
volatile oil price which impacts on plastic prices, as well as higher metal 
prices.</p>

<p>It is worth noting that it is not so much the absolute price of 
raw materials which matters but the rate of increase that causes problems. If 
prices stabilise, even at high levels, then they can be passed on to customers 
more easily, but most manufacturers tend to fix sale prices for major customers 
several months ahead and cannot always lock in the cost of raw materials at the 
same time, although they should always try to do so.</p>

<p>One thing holding Allan back is its inefficient capital 
structure. It cannot be in the interests of shareholders to hoard so much cash. 
At 31-Mar-04, cash and securities net of debts amounted to $207.6m, or about 
$0.62 per share, before payment of the final dividend of $0.06 (which they 
should have earned back by now). This means that about half the share price is 
in unproductive cash, diluting the rate of return on capital. A one-time special 
dividend would resolve this and position the company for future growth. If they 
were to do this, then the price would almost certainly respond, because the core 
P/E, excluding the cash, is only about 5x.</p>

<p>Your editor still holds more than 5% of Allan.</p>

<h3>2002's Pick</h3>

<p>Two years ago, on 4-Dec-02, we picked
<a target="_blank" href="../dbpub/articles.asp?p=2666">Arts Optical International Holdings Ltd</a> (<b>Arts</b>, 
1120), which showed a healthy first-year return of 42.0% compared with a 27.9% 
return in the HSI from 30-Nov-02 to 30-Nov-03.</p>

<p>The stock closed at $2.425 on 3-Dec-03, and a year later it  closed 
at $2.625, having paid out $0.24 in dividends, for a second-year return of 
 
18.1%. Compound that with the previous year, and they've returned <b>67.7%</b> 
in two years. This year, despite difficult market conditions, the stock 
performance was helped by the board's decision to start paying out surplus cash.</p>

<p>Your editor still holds more than 5% of Arts.</p>

<h3>The five year history</h3>

<p>Despite this year's abysmal performance, our Christmas pick 
track record still stands up well over the long term. Compounding the picks over 
5 years, here it is:</p>

  <table class="numtable center">
    <tr>
      <th>Pick date</th>
      <th>Stock</th>
      <th>Stock<br>1-year return</th>
      <th>HSI<br>1-year return</th>
      <th>Stock<br>2-year return</th>
    </tr>
    <tr>
      <td>3-Dec-99</td>
      <td>Boto (0585)</td>
      <td>23.3%</td>
      <td>-7.0%</td>
      <td>81.6%</td>
    </tr>
    <tr>
      <td>4-Dec-00</td>
      <td>Kingmaker (1170)</td>
      <td>53.2%</td>
      <td>-17.1%</td>
      <td>113.7%</td>
    </tr>
    <tr>
      <td>3-Dec-01</td>
      <td>Tungtex (0518)</td>
      <td>56.3%</td>
      <td>-7.9%</td>
      <td>150.9%</td>
    </tr>
    <tr>
      <td>4-Dec-02</td>
      <td>Arts (1120)</td>
      <td>42.0%</td>
      <td>27.9%</td>
      <td>67.7%</td>
    </tr>
    <tr>
      <td>3-Dec-03</td>
      <td>Allan (0684)</td>
      <td>4.7%</td>
      <td>18.1%</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>5-year compound</td>
      <td><b>339.0%</b></td>
      <td><b>7.3%</b></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Compound average</td>
      <td>34.4%</td>
      <td>1.4%</td>
      <td>&nbsp;</td>
    </tr>
  </table>

<p>If you put <b>$1,000</b> into the first pick, and rotated into the next
one each year, you would have about <b>$4,390</b> by now. By comparison, if you invested
the same amount in the Hang Seng Index 5 years ago, you would now have about <b>$1,073</b> 
(which is less than you could have got in a bank). So our picks have
out-performed the index by <b>309% </b>over 5 years.</p>

<h3>This year's Pick</h3>

<p>Right then, let's see if we can do better this year. Our 2004 
Christmas pick is: <a target="_blank" href="http://www.karrie.com">Karrie 
International Holdings Ltd</a> (<b>Karrie</b>, 1050) which makes casings for 
servers and PCs and also manufactures on an OEM basis electronic items such as 
point of sale systems, tape drives, laser printers and multi-function fax 
machines. It has two factories in Dongguan, Guangdong province and has recently 
acquired land for expansion in the same region.</p>

<p>Customers include Konica Minolta, Canon, IBM and other 
well-known brands. The &quot;electronic manufacturing services&quot; or EMS business is 
high volume but low margin, and has been growing rapidly. The group is on track 
to have doubled annual turnover in the three years ending Mar-05, and in its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041202/01050/F101.pdf">
interim report</a>, management raised its target turnover growth for the year to 
Mar-06 from &quot;low double digits&quot; to 20%.</p>

<p>In the half-year to Sep-04, turnover grew 33% year-on-year while 
net profit rose 50% due to economies of scale. They wrote that <i>&quot;overall we 
should have a better second half year than the first half&quot;</i>. Earnings per 
share for the first quarter were $0.0744 and the first half were $0.1571 on a 
diluted basis, so we would expect them to report at least $0.32 for the year to 
Mar-05 in the absence of unforeseen circumstances.</p>

<p>Karrie was listed on 16-Dec-96, and got off to a rocky start 
during the Asian financial crisis, running into problems with bad debts and a 
cash flow crunch. Then they discovered concepts like shareholder value and 
corporate governance, and have recently taken innovative steps in this area. For 
example, apart from the usual meetings with analysts and institutional 
investors, they have also opened the doors to a &quot;tea break with management&quot; to 
allow retail investors a chance to meet them in addition to the annual general 
meeting. The next such event takes place on 18-Dec-04, for details see their
<a target="_blank" href="http://www.karrie.com">web site</a>. We also recommend you read the 
latest results
<a target="_blank" href="http://www.karrie.com/presentation/2004int_pre_e.pdf">
presentation</a> for an overview of the business, its history and strategy. They 
are refreshingly candid.</p>

<p>Karrie is one of the few HK-listed companies that voluntarily 
announces quarterly results, keeping investors more updated. This reduces the 
potential for insider dealing and we wish more companies would follow suit. Most 
of the quarterly results you see in HK (and there are not many) appear because 
the company is dual-listed or has a parent which is listed in another market 
where quarterly reporting is required (such as mainland China). There is more 
that Karrie can do in terms of corporate governance, such as cutting the general 
mandate for cash placings to protect pre-emptive rights, but they are moving 
strongly in the right direction and we are impressed by the professionalism and 
focus of the senior management team.</p>

<p>The Chairman and his wife have a combined 54.1% of the company, 
and the only institutional investor above the 5% threshold is Value Partners 
Ltd, with 9.9% at the last disclosure. Based on 405.146m shares in issue at 
31-Oct-04, the market cap is HK$1,033m (US$132.9m).</p>

<p>The shares closed on Friday (3-Dec-04) at $2.55, and go 
ex-dividend of $0.085 on Wednesday (8-Dec-04). So on that basis, the ex-dividend 
P/E for Mar-05 should be about <b>7.7x</b>. They have a current stated dividend 
policy of paying out at least 50% of earnings, and last year paid an interim of 
$0.08 and a final of $0.12. This year, they paid an interim of $0.085, so we 
expect that they will raise the final dividend to at least $0.125, making a 
total of $0.21, although this will depend on whether they need the money for 
further expansion of the business. The running yield would then be around <b>
8.5%</b> after it goes ex-dividend this week. </p>

<p>So there you have it, our 6th Christmas pick. Karrie on!</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2949">ALLAN INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2471">KARRIE INTERNATIONAL HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=110">Christmas picks</a></li>
				
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