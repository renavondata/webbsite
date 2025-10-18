
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

<script type="text/javascript">document.title="Harbin Secrets";</script>

	<div class="summary">In all the froth surrounding SABMiller's unsolicited bid for Harbin Brewery, media have overlooked the management's possible HK$110m payout under put-options from SABMiller triggered by the offer, and the $131m profit by the unknown parties who have flipped an option to Anheuser-Busch.</div>

<h2 class="center">Harbin Secrets<br>
<span class="headlinedate">6 May 2004</span></h2>
<p>Hong Kong may or may not be on the brink of its first major 
contested takeover in years - the last one we can recall was a brief tussle in 
2000 between Singapore Telecom and PCCW over Hong Kong Telecom, but that doesn't 
really count given that Cable &amp; Wireless had majority control of HKT.</p>

<p>Yesterday <a target="_blank" href="http://www.sabmiller.com/">
SABMiller plc</a> (<b>SABMiller</b>), which controls 295m shares (29.42%) of 
Harbin Brewery Group Ltd (<b>HB</b>),
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/LTN20040505019.pdf">
announced</a> a $4.30 per share bid for the company, or 36.7x last year's EPS. 
We haven't seen such a generous offer since DBS Bank forked out for Dao Heng. 
Yesterday's bid was a swift reaction to an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/LTN20040505000.pdf">
announcement</a> that <a target="_blank" href="http://www.anheuser-busch.com/">
Anheuser-Busch Companies, Inc.</a> (<b>A-B</b>) had conditionally acquired 
291.5m shares (29.07%) stake at $3.70 per share. </p>

<h3>The Real Deal</h3>

<p>In fact, it's not that simple. That's just the version you read 
in the press, so let's dig a little deeper. Back on 22-Mar-04, HB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040322/LTN20040322111.pdf">
announced</a> that a BVI company called Global Conduit Holdings Ltd (<b>Global 
Conduit</b>) had conditionally agreed to buy the same block of 291.5m shares at 
$3.25 per share from another BVI company controlled by the Harbin Municipal 
Government. The owners of Global Conduit were not disclosed, but it said that 
nobody owned more than a 20% voting interest in the shell.</p>

<p>It turns out that all the shares of Global Conduit were held by 
another BVI company, Capital Select Enterprises Ltd (<b>Capital Select</b>), the 
owners of which are unknown. This manoeuvre avoided disclosing the beneficial 
owners of Global Conduit when it was sold. Then on or before 2-May-04, without 
ever putting up the money to actually complete the purchase of the HB stake, 
Global Conduit was conditionally sold by Capital Select to A-B. The HB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/LTN20040505000.pdf">
announcement</a> of 4-May-04 says that the &quot;effective transfer price&quot; is $3.70 
per HB share. But, you will note that A-B has not actually acquired the HB 
shares, just <i>&quot;<b>the right of Global Conduit to complete the purchase&quot;</b></i>.</p>

<p>It appears that whoever owns Capital Select have managed to make 
a profit of $0.45 per share, or a total of <b>$131.2m</b>, without ever putting 
up the purchase money. That's not small beer! The purchase by Global Conduit 
from the Harbin Government remains subject to approval by <i>&quot;the relevant PRC 
authorities&quot; </i>and the issue of a legal opinion by the Government-owned vendor 
of the validity of the transfer. It is not known whether A-B's purchase of 
Global Conduit was conditional on these same approvals, or whether A-B has taken 
over the risk of the deal failing.</p>

<p>It remains to be seen whether the Government will grant all the 
necessary approvals, given that SABMiller now has an offer on the table at $4.30 
per share, a 32.3% premium to the conditional sale price of $3.25 to Global 
Conduit. If Harbin Government can find a way to get out of the sale to Global 
Conduit, then they would be crazy not to use it and collect $4.30 instead, an 
extra $306m.</p>

<p><b>We call on HB to disclose full details of the beneficial 
owners of Capital Select and Global Conduit and the conditions of the purchase 
of Global Conduit by A-B. </b>The only things that we know so far are based on 
filings under the SFO, which
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=4006&lang=EN&dia=Y">
show</a> that Philip Kan Sung Chee (<b>Mr Kan</b>) owned 20% of Global Conduit. 
Mr Kan is a
<a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/member.asp?id=257502">
partner</a> of law firms <a target="_blank" href="http://www.loandlo.com">Lo &amp; 
Lo</a> and its joint venture with UK firm
<a target="_blank" href="http://www.shlegal.com/">Stephenson Harwood</a>,
<a target="_blank" href="http://www.shl.com.hk/">Stephenson Harwood &amp; Lo</a>. 
The filings also
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=15141&lang=EN&dia=Y">
show</a> that a Mr David Lee Sun (<b>Mr Sun</b>) is a director of Capital Select 
and that both Mr Sun and Mr Kan are directors of Global Conduit. We know nothing 
else about Mr Sun.</p>

<h3>Management's Pay-out</h3>

<p>Back on 27-Jun-03, when SABMiller
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030630/LTN20030630029.pdf">
agreed</a> to invest in HB, it set up a 95% subsidiary, Gardwell Ltd (<b>Gardwell</b>) 
to hold the shares. The purchase price was $2.29 per HB share, for a total of 
$675.6m. The vendor was an obscure Dublin-listed fund called China Enterprise 
Development Fund Ltd, major shareholders of which at the time of the HB IPO were
<a target="_blank" href="http://www.richmond.edu/">University of Richmond</a>,
<a target="_blank" href="https://www.fidelity.com/">Fidelity</a> and the manager 
of the fund. We could not find any trace of the fund last night on the 
Irish Stock Exchange web site - apparently it has been delisted.</p>

<p>Gardwell was structured like a leveraged Management Buy-Out 
(MBO) vehicle, with just $100m of equity, of which SABMiller put in $95m and $5m 
was subscribed by Advent Strategic Ltd (<b>Advent</b>), another BVI company 
owned by 5 directors and the CFO of HB. Presumably the remaining $575.6m was 
debt finance, perhaps funded by SABMiller.</p>

<p>As a performance incentive for management, SABMiller granted 
Advent put options, that is, the right to sell the 5% Gardwell stake back to 
SABMiller in tranches of 2.28% and 2.72% between the 1st and 3rd anniversary of 
the deal, for a total of $55m<i>, </i>&quot;<i>subject to certain performance 
criteria (i.e. the share price performance of [HB]&quot;. </i>It is not known what 
share price targets were set. Now here's the punch:</p>

<blockquote>

<p><b>&quot;The exercise of the Put Options will be accelerated and, in 
certain circumstances, the consideration increased by 100% if: (i) 
SABMiller...announces a firm intention to make a general offer for the shares in 
[HB]...&quot;</b></p>

</blockquote>

<p>We don't know what the <i>&quot;certain circumstances&quot;</i> are, but 
now that SABMiller has indeed announced a general offer for the shares in HB, it 
appears that the Put Option has become exercisable, and management gets a 
pay-out of up to <b>$110m</b> (being a 100% increase over the $55m). That's a 
pretty decent return on their $5m investment less than a year ago, which itself 
was funded by the exercise of pre-IPO options.</p>

<p>But strangely enough, in
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/LTN20040505177.PDF">
protesting</a> that the offer by SABMiller was <i>&quot;wholly unsolicited and was 
made without any prior discussions with the Board&quot;</i>, the board omitted to 
mention that the offer had just triggered a potential windfall from SABMiller 
for 5 of the directors and the CFO of HB. If the put price is $110m, then the 
payouts are:</p>

  <table class="numtable center">
    <tr>
      <td></td>
      <td>Advent stake</td>
      <td>Maximum<br>
      put value $m</td>
    </tr>
    <tr>
      <td class="left">Peter Lo</td>
      <td>27%</td>
      <td>29.7</td>
    </tr>
    <tr>
      <td class="left">Li Wentao</td>
      <td>23%</td>
      <td>25.3</td>
    </tr>
    <tr>
      <td class="left">Fu Hui</td>
      <td>19%</td>
      <td>20.9</td>
    </tr>
    <tr>
      <td class="left">Peter Jeva Au</td>
      <td>18%</td>
      <td>19.8</td>
    </tr>
    <tr>
      <td class="left">Bao Liusuo</td>
      <td>10%</td>
      <td>11.0</td>
    </tr>
    <tr>
      <td class="left">Lam Pong Sui</td>
      <td>3%</td>
      <td>3.3</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>100%</td>
      <td>110.0</td>
    </tr>
  </table>

<p>A pay-out of $110m would imply a value per HB share of about 
$9.41, which is extremely unlikely to be achieved in the current market, so they 
would almost certainly exercise the put if they can. Even if the payout is $55m, 
that would imply an HB price of $5.68, again far more than the already frothy 
bid.</p>

<p><b>We call on HB to disclose full details of the put options, to 
confirm whether or not they have become exercisable, as the wording of last 
year's announcement suggests, at what exercise price, whether they have been 
exercised by management, and whether the exercise is in any way subject to the 
successful outcome of SABMiller's bid.</b></p>

<p>This story clearly isn't over, but we would not bet on a higher 
offer from A-B, given the frothy price already on offer from SABMiller. 
Depending on the detailed terms, management may also find it harder to collect 
on their put option if they spurn SABMiller's offer. Even if Global Conduit 
manages to complete the purchase from the Harbin Government, on balance we think 
A-B's most likely move would be to accept the $4.30 on offer, which is about 4 
times the book value of HB's net assets.</p>

<p>For once, the clear winners in all of this are the public 
investors, who have seen a healthy return on the IPO price of $1.56. If you hold 
the stock, with the market now at $4.90 (lunchtime 6-May-04) and a 2003 P/E of 
41.8x, you would be well-advised to take your profits. Don't depend on the big 
boys fighting it out.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=21058">ABI SAB GROUP HOLDING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21059">Anheuser-Busch Companies, Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17383">HARBIN BREWERY GROUP LIMITED (c2007-08-01)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2931">Kan, Philip Sung Chee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=25756">Sun, David Lee</a></li>
				
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