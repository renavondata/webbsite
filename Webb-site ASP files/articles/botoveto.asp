
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

<script type="text/javascript">document.title="Time to Vote Against Boto Sale";</script>

	<div class="summary">Boto's circular is finally out, and in a move unique in recent history, the Independent Financial Adviser advises shareholders to vote AGAINST the sale! It underlines how unfair the proposal is. The circular also reveals evidence that contrary to the 9.6% reported earnings drop, Boto's core business actually increased profits 12.5% last year, as we will show. We tell you how and why you should vote against the sale.</div>

<h2 class="center">Time to Vote Against Boto Sale<br>
<span class="headlinedate">4 August 2002</span></h2>
<p>It's been four months since <a href="http://www.boto.com.hk/" target="_blank">Boto
International Holdings Ltd</a> (<b>Boto, 0585</b>) <a href="notomboto.asp" target="_blank">announced</a>
it was proposing to sell all of its core businesses of Christmas trees,
accessories and leisure furniture (<b>Businesses</b>), comprising 99.9% of its
turnover, to a management buy-out vehicle owned 70% by <a href="http://www.thecarlylegroup.com/" target="_blank">Carlyle</a>
funds and 30% by Boto's Chairman Michael Kao Cheung Chong (<b>Mr Kao</b>). In early July, the
proposal was <a href="botodeal2.asp" target="_blank">restructured</a> (the <b>Revised
Transactions</b>) to make it 75% owned by Carlyle and 25% by Boto.&nbsp; </p>

<p>The Revised Transactions include 2 share option schemes in which
Mr Kao and other management would be entitled to participate, giving them 15% of
the vehicle, diluting Boto to 21.25% and Carlyle to 63.75%. </p>

<p>Of the 15% options, 10% would be exercisable at the same entry
price as Carlyle and Boto, granted within one year and exercisable within one
year. So they are in effect a direct stake in the vehicle. The other 5% is to be
granted within 18 months, then exercisable within 10 years at a 70% discount to the buy-out, subject to financial performance targets. </p>

<p>The price on the sale was increased by HK$70m, or about 7%, but
that increase basically just covers the earnings which the Businesses have made
during the delay to the transaction, as last year Boto made $160.7m in the 6
months to Sep-01. The transaction was originally due to complete by 31-May-01,
but is now targeted to complete three months later, at the end of August. So in
effect, there was no increase at all. </p>

<h3>Anglo Chinese advises shareholders to vote AGAINST</h3>

<p>On Friday 2-Aug-02, the circular to Boto shareholders (<b>Circular</b>)
was posted. <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020802/LTN20020802082.pdf" target="_blank">Click
here</a> to download it. The circular contains something which is unique in
recent Hong Kong history. The independent financial adviser, <a href="http://www.anglochinesegroup.com/" target="_blank">Anglo
Chinese Corporate Finance Ltd</a> (<b>Anglo Chinese</b>), has recommended that
shareholders vote <b>against</b> the sale. It has been many years since an
independent financial adviser has not called an acquisition or disposal
&quot;fair and reasonable&quot;. Director Dennis Cassidy wrote in their advisory
letter in the Circular (p54): </p>

<blockquote>
  <p>&quot;we consider that the terms of the Revised Transactions do not
  adequately reflect the value of the Businesses to be sold and we therefore <b> do
  not consider the terms to be fair and reasonable. Accordingly we advise the
  Shareholders to vote against the resolution</b> to approve the Revised
  Transactions set out in the ordinary resolution to be considered at the First
  Special General Meeting.&quot;</p>
</blockquote>

  <p>This advice, and the rarity of such a recommendation to vote against
  management, to us underlines how bad the terms of this deal are.</p>

<h3>How Boto depressed its 2002 profits</h3>

<p>You may recall that on 18-Jul-02 Boto's <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020719/LTN20020719024.pdf" target="_blank">annual
results</a> showed a surprising drop in profits in the second half of the year
ended 31-Mar-02, with net profit falling 9.6% from HK$156.4m to $141.4m. This of
course was in the middle of the proposal to sell the Businesses, and we <a href="botodeal2.asp" target="_blank">commented</a>
at the time: </p>

<blockquote>

<p>&quot;we take it with a
large pinch of sodium chloride, because it would be in the interests of
management to paint a gloomy picture, and there are&nbsp; plenty of legally
acceptable ways in which figures can, at least on a short-term basis, be
depressed.&quot; </p>

</blockquote>

<p>We were right. Anglo Chinese revealed in the Circular (p39) that
as part of Carlyle's initial negotiations, Carlyle had <i>&quot;required&quot;</i>
$12.4m of provisions in respect of slow-moving stocks in respect of the closing
stock position at 31-Mar-01. However, the 2001 accounts had already been
published. In the Mar-02 accounts, rather than restate, or adjust, the Mar-01
results to include the required provision, Boto included this provision in the
Mar-02 results instead. We think that was misleading. </p>

<p>In addition, the Mar-02 results included <i>&quot;transaction
costs&quot; </i>of $1.6m relating to the current proposals for the sale of the
Businesses, which obviously is not part of Boto's core profits. We guess that
includes things like legal and advisory fees. </p>

<p>Finally, Boto has estimated (p60) that the net loss
contributed by the animation business of Imagi (the only business of Boto group if the deal proceeds) was $8.0m in the year
ended 31-Mar-02. No figure was given for 31-Mar-01 but it is probably negligible
as Boto did not invest until Oct-00 in its first 65% of Imagi (now 82.5%). The animation
firm was in development for most of the year to Mar-02 and only booked its
first sale near the year-end. </p>

<p>So adjusting for the stock, the transaction costs, and Imagi, we
see that the core Businesses looked like this: </p>

  <table class="numtable center">
    <tr>
      <td class="left"><b>HK$m</b></td>
      <td><i>31-Mar-01</i></td>
      <td><i>31-Mar-02</i></td>
      <td><i>&nbsp;Change</i></td>
    </tr>
    <tr>
      <td class="left">Net profit, as announced</td>
      <td>156.4</td>
      <td>141.4</td>
      <td>-9.6%</td>
    </tr>
    <tr>
      <td class="left">Shift Mar-01 stock adjustment to 2001:</td>
      <td>-12.4</td>
      <td>12.4</td>
      <td></td>
    </tr>
    <tr>
      <td class="left">Remove transaction costs</td>
      <td></td>
      <td>1.6</td>
      <td></td>
    </tr>
    <tr>
      <td class="left">Remove Imagi net loss</td>
      <td></td>
      <td>8.0</td>
      <td></td>
    </tr>
    <tr>
      <td class="left">Tax adjustment</td>
      <td>0.4</td>
      <td>-1.0</td>
      <td></td>
    </tr>
    <tr>
      <td class="left">Net profit of Businesses</td>
      <td><b>144.4</b></td>
      <td><b>162.8</b></td>
      <td><b>+12.7%</b></td>
    </tr>
    <tr class="total">
      <td class="left">Adjusted earnings per share (basic):</td>
      <td>4.27c</td>
      <td>4.77c</td>
      <td>+11.7%</td>
    </tr>
  </table>

<p><b>So in fact, rather than a reported drop of 9.6% in net profit
for Boto as a whole, the Businesses grew core earnings by 12.7%.</b> </p>

<p>The stock adjustment and the other adjustments were not visible
in the annual report, and are only publicly known thanks to the letter of Anglo
Chinese. We don't know whether Boto made any other adjustments which may
have&nbsp; depressed its earnings. </p>

<p>Anglo Chinese also pointed out that although Boto's gross profit
margin originally appeared to have fallen from 37.7% in 2001 to 33.9% in 2002,
if you adjust for the 2001 stock provision in 2001, then gross profits would
have grown from $330.5m to $375.9m, up 13.7%, while the gross margin only fell from
36.3% to 35.0%. </p>

<p>This much smaller margin drop is probably accounted for by the
increase in contributions from leisure furniture, which is lower margin than
festive products. Sales of leisure furniture grew 131% in the year to Mar-02,
and even by the Directors' projections, which may be conservative, they expect
furniture sales to grow 23% in the current year and 21% in the year to Mar-04. </p>

<h3>Strong market position</h3>

<p>Anglo Chinese also reported (p39) that the Directors estimate
Boto's market share of artificial Christmas trees is over 40% in the USA, about
60% in the UK and some 25% in continental Europe. Clearly Europe offers
long-term growth potential and the USA and UK are strong market positions. Boto
is the World's largest manufacturer of Christmas trees which brings great
economies of scale. </p>

<p>Anglo Chinese wrote (p45), in relation to net assets: </p>

<blockquote>

<p>&quot;Given the performance of the Company, its reputation and
position in the market and prospects, we consider...the consideration of the
disposal to be inadequate&quot; </p>

</blockquote>
<p>In relation to the p/e based on the sale price of the
businesses, the adviser wrote </p>

<blockquote>
  <p>&quot;If the adjustments to the results for the year ended
  31st March 2002 referred to on page 39 of our letter... are eliminated, <b>the
  price earnings multiple based on a consideration of $1,064 million would be
  6.55 times</b>&quot; (emphasis added) </p>

</blockquote>
<p>With the festive products expected to be flat, but with leisure
furniture growing, this would be an even lower p/e for the current year. </p>

<p>Don't be misled by the &quot;effective consideration&quot; of
$0.34 per share which appears in the Circular, because that includes
pre-completion dividends which are money already earned by the Businesses since
30-Sep-01, which you haven't received. Due to the current proposals, Boto did
not pay a dividend for its 31-Mar-02 results, but we expect them to pay a higher
interim dividend for the 6 months to 30-Sep-02 if the deal does not proceed. </p>

<h3>Management's position</h3>

<p>Mr Kao, in his &quot;Letter from the Board&quot; writes (p32): </p>

<blockquote>

<p>&quot;The original structure of the Disposal Agreement did, on
the face of it, put me in a position of a perceived conflict of interest.....The
Revised Transactions place my interest on the same footing as all
Shareholders&quot; </p>

</blockquote>

<p>We disagree with the second part of that statement. Independent
shareholders are not being offered share options over a direct stake in the
Businesses, while Mr Kao and his management will receive up to 15% options, of
which 10% would be granted within one year and exercisable within a year after
grant without any financial targets. </p>

<p>Mr Kao's economic interest in Boto is about 31.0%, including a
53% controlling block owned by Sunni International Ltd (<b>Sunni</b>) of which
Mr Kao owns 51%. So after all the options are exercised, his interest in the
Businesses via Boto will be about <b>6.6%</b> (31% of 21.25%). While we haven't
been told how the options will be allocated, the size of his option stake, as
the most senior of management, could easily be comparable to this. </p>

<p>Furthermore, Independent Shareholders would have only an
indirect 21.25% stake in the Businesses via Boto, and there are a number of
&quot;events of default&quot; in which Boto could be forced to sell that stake
at the price it paid for it, to other shareholders of the buy-out vehicle,
including Carlyle, Mr Kao and management after the exercise of their options. </p>

<p>These events of default have been clarified in the Circular
(p23) since the announcement of revised terms, but an event of default would
still be triggered in several circumstances, including if: </p>

<ul>
  <li>
    <p>Mr Kao resigned from Boto or was declared bankrupt, forcing
    his resignation; or</li>
  <li>
    <p>Mr Kao sold 1% of Sunni; or</li>
  <li>
    <p>Sunni&nbsp; was dissolved or distributed its Boto shares to
    its shareholders; or</li>
  <li>
    <p>Mr Kao ceased to control more than 50% of Boto. Currently,
    he has 56.9%.</li>
</ul>

<p>If for example, Boto were to issue 20% new shares&nbsp; for
funding requirements in the future, that could trigger a loss of control by Mr
Kao as his stake would be diluted to 47.4%. Meanwhile, management's direct stake
in the Businesses might even be enhanced if they take up their share of the
stake which Boto was forced to sell. </p>

<p>We note that the views of the Independent Non-executive
Director(s) are not stated in the circular. </p>

<h3>Selling in a down market</h3>

<p>Let's be clear. We would not object to selling the Businesses
for a fair price. This is not a fair price, and Anglo Chinese agrees that it is
not &quot;fair and reasonable&quot;. Mr Kao writes: </p>

<blockquote>

<p>&quot;The global equity market is experiencing another period of
turmoil&quot; </p>

</blockquote>

<p>He is quite right about that. Now is not the time to be selling
a prime business with a leading market share. If he really wants to sell, then
we would get a much better price when the economy stabilises and the market
confidence returns. Mr Kao also writes: </p>

<blockquote>

<p>&quot;after 33 years' experience in the industry, I believe I am
best placed to understand the future needs and prospects of the Businesses&quot; </p>

</blockquote>

<p>Mr Kao, we certainly respect your expertise in building and
running the Businesses - that is why we own a piece of Boto. You are a great
industrialist and Boto is a great business. But in return, please respect the
fact that we are experts at investing and the stock markets, and have more
experience in financial valuation than you do. Expertise in manufacturing does
not equate to expertise in financial valuation, or in cartoon animation for that
matter. </p>

<h3>Pro forma net assets</h3>

<p>Boto has included in the Circular a pro forma balance sheet at
31-Mar-02 (p15) and calculation of net assets per share (p14). This shows that
if the deal proceeds, net tangible assets (<b>NTA</b>) would be $191.1m or <b>$0.056</b>
per share, after payment of a dividend of <b>$0.26</b> per share. Included in
the NTA, there would be cash (net of borrowings) of about $152.7m, or around
$0.044 per share. There would also be intangible assets comprising Imagi
animations in production and goodwill, totalling $0.007 per share. </p>

<p>The 25% initial stake in the buy-out vehicle, after deducting
the goodwill (premium over net assets) which it is paying for the Businesses,
would be carried at just $6m, but the investment cost is $88m. If you add back
the goodwill in the venture, then NTA rises to <b>$0.079</b> per share. </p>

<h3>If the deal proceeds</h3>

<p>Historically, HK-listed companies which have sold their core
businesses and whose balance sheets consist of a large proportion of cash, tend
to trade at a discount to the value of that cash, because minority shareholders
have no control over what the management might do with it.&nbsp; </p>

<p>For example, consider <a href="../dbpub/articles.asp?p=702" target="_blank">City
e-Solutions Ltd</a> (<b>0557</b>) which sold its core hotel businesses to its
parent in 2000 and was left with a small hotel reservations business. It had NTA
per share of $1.396 at 31-Dec-01, including cash of $1.310 per share. It paid no
final dividend, and now trades at $0.53 per share, a <b>62%</b> discount to NTA. </p>

<p>Another example is&nbsp; <a href="../dbpub/articles.asp?p=1673" target="_blank">Hongkong
Chinese Ltd</a> (<b>0655</b>) which sold Hongkong Chinese Bank just after the
end of 2001 and was left with a small brokerage. It had pro forma NTA at
31-Dec-01 of $2.24 per share (after payment of a special dividend of $1.45 and
final dividend of $0.03). That includes cash of about&nbsp; $1.29 per share and
a lot of other liquid assets. It now trades at $0.46 per share, a <b>79%</b>
discount to pro forma NTA. </p>

<p>If the Revised Transactions proceed, Boto will consist of a
loss-making start-up animation business, a 21.25% stake in its old business
(after dilution by the options) and a dwindling pile of cash. It therefore seems
quite reasonable to estimate that if the deal proceeds, Boto shares will trade
around 50% discount to NTA, or around $0.04 per share at best. In that case, the
dividend of $0.26 only brings total value to <b>$0.30</b> per share. And that's
being optimistic. </p>

<p>The day before the sale was announced, Boto was trading at $0.34
per share, and on Friday 2-Aug-02 it closed at $0.31 per share. </p>

<h3>How to Vote Against the Sale</h3>

<p>The Revised Transactions and the dividend are subject to two
shareholder meetings. The first one, to consider the Revised Transaction, is on
Monday 19-Aug-02. Mr Kao and certain of his management colleagues, who together
control 60.6% of Boto, are required to abstain, leaving 39.4% who can vote. </p>

<p>Despite our <a href="botoupdate2.asp" target="_blank">appeals</a>,
the Listing Committee of the Stock Exchange ruled that the shares which can be
voted include shares held by an executive director of Boto, Liliana Tsen, with
5.5%, and shares held by a deceased co-founder's trust held by HSBC as trustee,
with 4.1%. HSBC is a lender to the buy-out vehicle, and the widow of the
co-founder is a non-executive director of two Boto subsidiaries. </p>

<p>Other minorities include Shanghai Industrial Investment
Corporation (parent of HK-listed Shanghai Industrial Holdings Ltd), with 5.8%. </p>

<p>The voting intentions of these 3 shareholders are unknown, but
we hope that they will listen carefully to the advice of Anglo Chinese and vote
against the sale or at least abstain. If they vote in favour, then this could be
a close vote. <i>Webb-site.com</i> has been contacted by holders of over 13% who
intend to vote against the sale, including <a href="bototemp.asp" target="_blank">Templeton</a>
and ourselves, so that leaves another 11% whom we have been unable to contact. </p>

<p>The second meeting, to facilitate the dividend, is on Friday
30-Aug-02. It is a special resolution requiring 75% approval of those who vote.
Everyone can vote on this, including Mr Kao. Obviously if the sale is voted down
at the first meeting, then there is no need for the second meeting. However,
shareholders should note that even if the sale is approved in the first meeting,
there is no guarantee that Mr Kao and his colleagues will vote in favour of the
dividend, although they have <i>&quot;indicated&quot;</i> that they will vote in
favour. Even if they do, the resolution could still fail to pass. So you could
end up with no dividend. </p>

<p>To keep things simple, we recommend that investors vote <b> AGAINST</b>
the resolution to be considered at the first meeting on <b>19-Aug-02</b>. Don't worry
about the second meeting unless the sale is approved at the first meeting, in
which case there will still be time to send in votes for the second
meeting.&nbsp;Do not confuse this meeting with the Annual General Meeting, which
is on 16-Aug-02. </p>

<p><i>Webb-site.com</i> has today launched a new step-by-step guide
called <a href="../pages/howtovote.asp" target="_blank">How to Vote</a> for all your
shares in HK-listed companies. Most investors are &quot;non-registered
shareholders&quot;, and the process is explained in the guide. In the case of
Boto, if you are a registered shareholder (which is unlikely), you should use
the PINK proxy form to vote AGAINST the resolution, then follow the procedure in
the guide. </p>

<p>Do not delay voting. Banks, brokers and custodians impose
cut-off deadlines several days before the meeting, and CCASS imposes a deadline
too. So this cannot wait. We need your votes. </p>

<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
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