
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

<script type="text/javascript">document.title="The 2003 Christmas Pick";</script>

	<div class="summary">Season's greetings to all our readers - and that means it's time for our annual stock pick, when we rummage in our sack of small-cap investments for the stock we think is most likely to perform over the next year. For the last 4 years, the compound return on our picks has been 319.2% while the Hang Seng Index made a net loss of 9.2%. So what's are we putting under the Christmas tree this year? Read on...</div>

<h2 class="center">The 2003 Christmas Pick<br>
<span class="headlinedate">3 December 2003</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p><i>Webb-site.com</i> is celebrating its 5th anniversary, and 
loyal readers will know that we only give one gratuitous stock pick per year - 
something nice to say in the season of goodwill to make up for the campaign 
against bad governance in the rest of the year. We rummage in our sack of 
investments and pick the stock from our portfolio that we think is most likely 
to perform over the next year - our money is where our mouth is, and if we are 
wrong (which is not impossible), then we will lose money too.</p>

<p>Before we tell you what we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our first four recommendations performed.</p>

<h3>2002's Pick</h3>

<p>Last year's pick, on 4-Dec-02, was
<a target="_blank" href="../dbpub/articles.asp?p=2666">Arts Optical International Holdings Ltd</a> (<b>Arts</b>, 
1120), which closed the previous day at $1.87. Well, a big round of mince pies 
and sherry for the boys in spectacles. They closed today at $2.425, and paid out 
dividends of $0.23, for a total return of <b>42.0%</b>. You could even have 
bought them cheaper than when our recommendation was made - they closed at $1.77 
on 14-Apr-03 in the midst of the SARS outbreak, and reached a daily high of 
$2.55 on 17-Nov-03.</p>

<p>Arts also 
became the first company to comply with our
<a target="_blank" href="vampire1.asp">Project Vampire</a> recommendations on 
non-pre-emptive share issues, restricting their placing mandate to 5% of the 
issued shares and a maximum discount of 5%.</p>

<p>At roughly the same time, the Hang Seng Index, including
reinvestment of dividends, gained 27.9% during the 12 months to 30-Nov-03 (we only
have monthly data). So if you put $1,000 in the HSI on 30-Nov-02, then a year
later you had $1,279. Not bad, but if you put $1,000 in Arts, then you'd have $1,420. So 
Arts out-performed the HSI by <b>11.0%</b>.</p>

<p>The business, like many exporters, has actually had quite a 
difficult year, with sales in the six months to Jun-03 falling 17%, and net 
profits falling 28%, partly due to the reduced economies of scale. They have cut 
back on their mainland retail operation, closing unprofitable outlets, and 
consolidated two retail brands into one, so a lot of house-keeping was done in 
the first half. At least part of the slowdown was SARS related. The interim 
report said that orders rebounded in July and August compared with the previous 
year, which should affect sales in the last quarter of 2003, but we still expect 
them to record a reduction in profit for calendar 2003 and recover in 2004.</p>

<p>Arts has begun to respond to our calls to distribute its surplus 
cash rather than hoard it in their shop window, which inevitably encourages 
their customers to push for longer credit periods. For the first half, they 
repeated the 2002 interim dividend of $0.08 but added a special dividend of 
$0.07. That still leaves them with a large pot of cash around HK$150m, or $0.40 
per share, and no borrowing, despite the current low interest rate environment.</p>

<p>We urge them to pay out more of the cash pile. Assuming time 
deposit interest rates of 1% on $0.400 of cash, they will only earn about $0.004 
per share in interest this year, and at the historic P/E of about 8.5x, this 
would only be worth about $0.034 off the share price, so it is clear that a 
special dividend would boost total returns. The same theory applies to any 
cash-rich company - the market always discounts the value of the cash the 
company holds.</p>

<h3>2001's Pick</h3>

<p>Speaking of cash-rich companies, on 3-Dec-01 we picked <a href="../dbpub/articles.asp?p=3529" target="_blank">Tungtex
(Holdings) Co Ltd</a> (<b>Tungtex</b>, 0518), which showed a healthy first-year 
return of 56.3% compared with a negative 7.9% return in the HSI from 30-Nov-01 
to 30-Nov-02.</p>

<p>The stock closed at $2.05 on 3-Dec-02, and a year later it today closed 
at $3.075, having paid out $0.215 in dividends, for a second-year return of 
 
60.5%. Compound that with the previous year, and they've returned <b>150.9%</b> 
in two years. Ding dong merrily on high, in heaven the tills are ringing.</p>

<p>They still have about HK$300m of net cash, or about $0.85 per 
share (dividend, please) and they are on an undemanding P/E of about 10x 
current-year (Mar-04) earnings - the P/E is even lower if you exclude the cash. 
It's no longer a screaming bargain, but after a bull-run in small-caps, 
screaming bargains are hard to find.</p>

<h3>2000's Pick</h3>

<p>On 4-Dec-00 we picked <a href="../dbpub/articles.asp?p=2288" target="_blank">Kingmaker
Footwear Holdings Ltd</a> (1170), which showed a robust first-year return of
53.2% compared with a 17.1% negative return in the HSI from 30-Nov-00 to
30-Nov-01. In the second year, they made a total return of 39.5%, closing at 
$1.99. So how did they do in their third year? Well, the stock closed today 
at $3.60, having paid out $0.105 in dividends, for a total return of  86.2% - 
which was somewhat beyond our expectations. Compounded over 3 years, this stock 
has made a total return of  298% - or practically four-folded our money. Now 
trading on about 16x this year's earnings, we think the stock is fairly valued 
and while the business is still growing healthily, you cannot expect the same 
rate of return in future.</p>

<h3>1999's pick</h3>

<p>Four years ago, <a href="../dbpub/articles.asp?p=4778" target="_blank">IMI Global
Holdings Ltd</a>&nbsp; (then Boto International Holdings Ltd, <b>Boto</b>, 0585)
was our first Christmas pick. As readers will know, this company returned 81.6% 
in its first two years, but in 2002 sold its core Christmas Tree and Garden 
Furniture business to a management/private equity buy-out, so we cannot analyse 
the returns on the business since then.</p>

<h3>Summary of returns</h3>

<p>So how are we doing so far? Here's the track record of the <i>Webb-site.com</i>
Christmas Picks: </p>

  <table class="numtable center">
    <tr>
      <th>Pick date</th>
      <th>Stock</th>
      <th>Stock<br>
        1-year return</th>
      <th>HSI<br>
        1-year return</th>
      <th>Stock<br>
        2-year return</th>
    </tr>
    <tr>
      <td>3-Dec-99</td>
      <td>Boto</td>
      <td>23.3%</td>
      <td>-7.0%</td>
      <td>81.6%</td>
    </tr>
    <tr>
      <td>4-Dec-00</td>
      <td>Kingmaker</td>
      <td>53.2%</td>
      <td>-17.1%</td>
      <td>113.7%</td>
    </tr>
    <tr>
      <td>3-Dec-01</td>
      <td>Tungtex</td>
      <td>56.3%</td>
      <td>-7.9%</td>
      <td>150.9%</td>
    </tr>
    <tr>
      <td>4-Dec-02</td>
      <td>Arts</td>
      <td>42.0%</td>
      <td>27.9%</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>4-year compound</td>
      <td><b>319.2%</b></td>
      <td><b>- 9.2%</b></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Compound average</td>
      <td>43.1%</td>
      <td>-2.4%</td>
      <td>&nbsp;</td>
    </tr>
  </table>

<p>If you put <b>$1,000</b> into the first pick, and rotated into the next
one each year, you would have about <b>$4,192</b> by now. By comparison, if you invested
the same amount in the Hang Seng Index 4 years ago, you'd now have about <b>$908</b>. So our picks have
out-performed the index by <b>362% </b>over 4 years. </p>

<h3>This year's Pick</h3>

<p>This has been a bull-year for small cap stocks, and it has 
become increasingly difficult as the market rises to find deeply undervalued 
shares. But there are still some out there, little nuggets hidden away in the 
corporate governance graveyard of Hong Kong's smaller companies.</p>

<p>Alright, enough suspenders, this year, our stocking-filler is
<a target="_blank" href="http://www.allan.com.hk/">Allan International Holdings 
Ltd</a> (<b>Allan</b>, 0684), a maker of &quot;household electrical appliances and 
personal care products&quot; - think food processors, juicers, hair dryers and 
shavers. All the sort of things you would put under the Christmas tree if you 
couldn't buy the shares instead. Last year, 51% of sales went to Europe and 36% 
to America, with Asia and other markets accounting for the rest. Allan should 
benefit from a stronger Euro against the dollar.</p>

<p>Listed on 10-Nov-92, the small, family-run group, with a market 
cap of HK$426m (US$55m) recently celebrated its 40th anniversary, and the Cheung 
family owns about 55.26% of it between them. It's probably never going to be a 
large-cap - very few companies make the transition - but it has produced steady 
earnings.</p>

<p>Your editor, David Webb has, as required by law, a latest 
disclosed interest of 5.04% in the shares of Allan (all shareholdings of 5% or 
more must be disclosed, and any subsequent movement through a whole 1% 
boundary). The other disclosed non-management shareholder is asset manager J.P. 
Morgan Chase &amp; Co., which held 7.24% (excluding its lending pool) at 24-Nov-03.</p>

<p>In its Annual General Meeting this year, Allan complied with the 
recommendations of our
<a target="_blank" href="vampire1.asp">Project Vampire</a>, restricting its 
general issue mandate which reduces the risk of dilution for investors.</p>

<p>Allan reported EPS of $0.172 for the year to 31-Mar-03, and at 
today's closing price of $1.27, the historic P/E is 7.4x. Last year they paid 
regular dividends of $0.08 per share, or a yield of 6.3%.</p>

<p>But that's not all. Look beneath the kitchen counter, and you 
will find that at year-end, the group had net cash (including held-to-maturity 
securities, time deposits, money-market funds and bank balances), after paying 
the final dividend, of about HK$172m, or about $0.51 per share. We have urged 
them to pay  out the surplus as a special dividend, to improve the return on 
equity and the total return for investors, including the Cheung family.</p>

<p>As the annual report went to press, a new factory block in the 
PRC was in the final stage of completion with operation due to commence in the 
3rd quarter at a cost of about HK$30m, which can easily be funded from the 
year's operating cash flow. This should add to their capacity and sales next 
year.</p>

<p>Excluding the cash of $0.51 per share, which would only have 
earned interest of about $0.005 per share, what you have is a core EPS of about 
$0.167 and a <b>core P/E of about 4.6x</b>, so there's plenty of upside 
potential there, particularly if they release value through a one-off dividend.</p>

<p>Allan is due to report on 12-Dec-03 interim results for the six 
months to 30-Sep-03, and we have no idea whether the order flow in the first 
half of the year was impacted by SARS, but if it was, then consider it a buying 
opportunity.</p>

<p>So there you have it, our 5th Christmas pick. And if you decide 
not to buy the shares for Christmas, well at least buy someone a food processor 
- it might be one of Allan's!</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2949">ALLAN INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2666">ARTS OPTICAL INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2288">KINGMAKER FOOTWEAR HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3529">TUNGTEX (HOLDINGS) COMPANY LIMITED</a></li>
				
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