
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

<script type="text/javascript">document.title="The 2002 Christmas Pick";</script>

	<div class="summary">Season's greetings to all our readers - and that means it's time for our annual stock pick. Once a year, we rummage in our sack of small-cap investments for the stock we think is most likely to perform over the next year. For the last 3 years, the compound return on our picks has been 195.2% while the Hang Seng Index made a loss of 29.1%. So what's are we putting under the Christmas tree this year? Read on...</div>

<h2 class="center">The 2002 Christmas Pick<br>
<span class="headlinedate">4 December 2002</span></h2>
<div style="float:right"><img alt="" src="../images/hollywreath.gif"></div>
<p><i>Webb-site.com</i> has been running four years now, and loyal
readers will know that we only give one gratuitous stock pick per year -
something nice to say in the season of goodwill to make up for write-offs of
corporate malfeasance in the rest of the year. We rummage in our sack of
investments and pick the stock from our portfolio that we think is most likely
to perform over the next year - our money is where our mouth is. </p>

<p>Before we tell you what we've picked this year, first we'll do something you seldom see the professional analysts do - look back
at how our first three recommendations performed. Prepare to be amazed (well, we
were). Yes, it's true. Even in Hong Kong, you can make money in stocks. </p>

<h3>2001's Pick</h3>

<p>Last year's pick on 3-Dec-01 was <a href="../dbpub/articles.asp?p=3529" target="_blank">Tungtex
(Holdings) Co Ltd</a> (<b>Tungtex</b>, 0518), which closed that day (before
publication) at $1.43. Well, a big round of mince pies and sherry for Benson
Tung and his team - a year later, it closed at $2.05, having paid out $0.185 in
dividends, for a total return of <b>56.3%</b>. </p>

<p>At roughly the same time, the Hang Seng Index, including
reinvestment of dividends, lost 7.9% during the 12 months to 30-Nov-02 (we only
have monthly data). So if you put $1,000 in the HSI on 30-Nov-01, then a year
later you had $921. If you put $1,000 in Tungtex, then you'd have $1,563. So
Tungtex out-performed the HSI by <b>69.7%</b>. </p>

<p>During the spring and early summer, HK experienced something of
a renaissance in small-caps, cooling off as the summer wore on. The stock
reached a high of $2.50 on 17-May-02. </p>

<p>We still hold the stock, and have urged the board to distribute
some of the surplus cash, since they are making it faster than they can invest
it in new factories and shops. As of 31-Mar-02, the company had net cash of
HK$318.0m, or about $0.90 per share. Since then, they've paid dividends but
these are probably covered by cash earnings. They are now earning virtually no
interest on that money (call it $0.01 per annum), so distributing some of it
would barely effect earnings per share. The historic reported P/E (31-Mar-02) is
8.2x, but excluding the cash, the core P/E (on the core business) is only about <b>4.8x</b>. </p>

<p>Distributing surplus cash returns capital to investors who can
use it more efficiently, and boosts return on equity. Surplus cash in a
controlled company always receives a discount to its actual value, for
uncertainty over what management may do with it. </p>

<p>Tungtex is a play on the US consumer recovery. A London
marketing office was set up to help diversify revenues to Europe, and the
company is also developing its Chinese retail business which should bring
contributions in the long term. </p>

<h3>2000's Pick</h3>

<p>On 4-Dec-00 we picked <a href="../dbpub/articles.asp?p=2288" target="_blank">Kingmaker
Footwear Holdings Ltd</a> (1170), which showed a robust first-year return of
53.2% compared with a 17.1% negative return in the HSI from 30-Nov-00 to
30-Nov-01. </p>

<p>Last year we said we still liked the stock, flagging the strong
balance sheet and the factory expansion plan in China and Vietnam. The stock
closed at $1.52 on 3-Dec-01, and a year later stood at $1.99, having paid out
$0.13 in dividends, for a total return of 39.5%. Compound that with the previous
year, and they've returned <b>113.7%</b> in two years. </p>

<p>The stock reached a high of $2.70 on 4-Jul-02. We still hold the
stock, and while we can't expect the same kind of return in the next two years
as the last two, so long as people are walking, they will need shoes, and
Kingmaker is very focussed on making more of them. </p>

<h3>1999's pick</h3>

<p>Three years ago, <a href="../dbpub/articles.asp?p=4778" target="_blank">IMI Global
Holdings Ltd</a>&nbsp; (then Boto International Holdings Ltd, <b>Boto</b>, 0585)
was our first Christmas pick, and last year we wrote the following: </p>

<blockquote>

<p>&quot;The stock still only trades on about 6.8x historic earnings
and we estimate 20% earnings growth to Mar-02 making the prospective p/e around
5.7x, but we've probably seen the best of the returns for now, and the
fiddling with technology investments necessitates a continuing discount for the
risk of 'accidents'.&quot; </p>

</blockquote>

<p>That proved to be a prescient warning. As regular readers will
now know, in April Boto announced plans to sell its entire core festive products
and garden furniture business, accounting for 100% of its turnover, to a
management buy-out vehicle for no effective premium, leaving Boto with a
start-up animation business. </p>

<p>We fought against this proposal, which was eventually modified
to leave Boto with a 25% contingent stake in its former core business (subject
to dilution by management options). We still fought against the sale. We won't
repeat the long saga in this article - you can find it all in our <a href="../dbpub/articles.asp?p=4778" target="_blank">story
index</a>. The proposal was passed 53% to 47% in a shareholders' meeting, but
only after the Stock Exchange allowed various management-related shareholders to
stack the vote - the public shareholders were overwhelmingly against it. </p>

<p>Still, for the record, Boto returned our readers <b>81.6%</b> in
its first two years to 3-Dec-01, while the HSI returned a negative 22.9%. The
price on 3-Dec-01 was $0.315. Since then, the stock paid a dividend of $0.007
and a special dividend (of the sale proceeds) of $0.26 per share, and when the
deal which transformed the company was completed on 4-Sep-02, the shares closed
at $0.043, for a total take-away of $0.31. So we managed to preserve our
returns, even though the upside of the core business was stripped away. Boto is
now history. </p>

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
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>3-year compound</td>
      <td><b>195.2%</b></td>
      <td><b>-29.1%</b></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Compound average</td>
      <td>43.5%</td>
      <td>-10.8%</td>
      <td>&nbsp;</td>
    </tr>
  </table>

<p>If you put $1,000 into the first pick, and rotated into the next
one each year, you would have about $2,952 now. By comparison, if you invested
in the Hang Seng Index 3 years ago, you'd have about $709. So our picks have
out-performed the index by <b>316%</b>. </p>

<h3>This year's Pick</h3>

<p>OK, we seem to be getting the hang of this. So let's try and
make it four in a row... </p>

<p>This year, our far-sighted stocking-filler is <a href="http://www.artsgroup.com/" target="_blank">Arts
Optical International Holdings Ltd</a> (<b>Arts Optical</b>, 1120). The company
makes and sells spectacle frames. It has a well-balanced distribution, with
around 40% of its sales to Europe, 40% to the USA and the rest to Asia and other
regions. </p>

<h4>Share capital </h4>

<p>Arts Optical was listed on 8-Nov-96 and has 374.41m shares in
issue, with a market cap of HK$700.1m at yesterday's closing price of HK$1.87. </p>

<p>The Chairman, Michael Ng Hoi Ying, owns 40.55%, his wife owns
9.80%, and his brother, Ng Kim Ying, who is also on the board, owns 4.98%.
Including Finance Director Desmond Lee Wai Chung's 0.27%, the total insiders'
holding is about 55.60%. At 30-Jun-02, there were total options outstanding over
13.45m shares exercisable pursuant to an unpublished vesting scale between
7-Jul-00 and 23-Oct-06 at $0.88 per share. </p>

<p>On 12-Jan-02 Templeton Strategic Emerging Markets Fund LDC
(Templeton) <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020115/LTN20020115017.doc" target="_blank">agreed</a>
to purchase 28.5m shares from Ng Kim Ying, who in turn subscribed for 18.5m new
shares, making a net sale of 10m shares at $1.70 per share. As a result,
Templeton owned&nbsp; 29.39m shares or 7.90% of the enlarged issued share
capital. That's below the 10% disclosure threshold, so we don't know what their
holding is now. </p>

<h4>Track record </h4>

<p>As shown in the 5-year <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020423/1120/EWF115.pdf" target="_blank">track
record</a>, the company, which has a December year-end, showed steady growth
until 2000, but had a difficult year in 2001 with net profits down 15.8%, partly
due to the effects of the 9-11 events. In the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020924/1120/F101.pdf" target="_blank">first
half</a> of this year, sales grew 5.7%, gross profit increased, but higher
administrative costs reduced net profits 20.1%. A full enterprise resource
planning (ERP) system came on line in Jan-02. </p>

<p>Arts Optical operates a retail chain in China under two brands,
&quot;Arts 1000&quot; and &quot;Sunny Arts&quot;, with a total of 63 stores as
of 30-Jun-02, up from 42 stores at the year end. This had <i>&quot;not yet
generated any significant contribution&quot;</i> to the group, but with the
number of stores set to reach 100 in the next few months, breakeven is on the
horizon, and this represents a play on the increasingly affluent Chinese
consumer. </p>

<h4>Balance sheet </h4>

<p>Arts Optical has a strong balance sheet with net tangible assets
of $1.50 per share at 30-Jun-02, and net cash of about $0.56 per share. </p>

<h4>Corporate Governance</h4>

<p>Since its listing six years ago, the company has not had any
notable corporate governance problems. It has only 3 executive directors - the
Chairman, his brother, and the Finance Director. The board could do with more
breadth in this respect. </p>

<p>It also has two independent non-executive directors (the minimum
required by the Listing Rules). One, Frank Martin, has served since the IPO, has
been President of the American Chamber of Commerce in HK since 1990 and is a
former CEO of Security Pacific Asian Bank. The other is Alex Kwong Kam Kwan, a
qualified accountant, who joined Arts Optical in 2001 to replace a deceased INED
who had served since the IPO. </p>

<p>The company has largely kept its nose clean and did not get
sucked into the property or dot-com bubbles, but did show listed HK equity
holdings of HK$4.6m in its 2001 balance sheet, although these were sold by
30-Jun-02. We gave them a message at the AGM: let's stick to what we're good at:
we'll do the investing, and you make the spectacles. </p>

<h3>Outlook</h3>

<p>Arts Optical is expected to earn around $0.26 per share for
2002, putting the stock on an undemanding current-year P/E of 7.2x. However, if
you strip out the net cash then the core P/E for the underlying business is
about <b>5.1x</b>. </p>

<p>Despite the fall in interim profits, the company sent a positive
message by maintaining its interim dividend at the same level as last year, and
given the ample cash reserves, we expect this practice to continue. The historic
yield is now <b>8.6%</b>. Earnings growth in the next year or two should come
from a consumer recovery in the US and Europe, and expansion of the Chinese
retail operation. </p>

<p>So there you have it. If you put your specs on and look hard
enough in Hong Kong's minefield of fraud, rip-offs and bad governance, you can
find little nuggets of value with clean track records. Arts Optical is our 2002
Christmas pick.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2666">ARTS OPTICAL INTERNATIONAL HOLDINGS LIMITED</a></li>
				
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