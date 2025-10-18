
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

<script type="text/javascript">document.title="Hikari's Strange Exit";</script>

	<div class="summary">Our eyebrows were raised when all the representatives of PCCW resigned from the board of Hikari Tsushin International, of which PCCW owned 20%. All became clear a few days later as the Japanese parent sold a 51% controlling stake to a previously unknown investor whose intentions remain vague. The sale price was announced as $0.045, a 70% discount to NAV, triggering a general offer at that lowly price, but days later PCCW sold a 10% stake at $0.155 - what's going on?</div>

<h2 class="center">Hikari's Strange Exit<br>
<span class="headlinedate">30 December 2001</span></h2>
<p>Two years ago, on 28-Dec-99 at the height of the internet
bubble, <a href="http://www.hikari.co.jp/" target="_blank">Hikari Tsushin, Inc</a>
(<b>HT</b>) of Japan and <a href="../dbpub/articles.asp?p=2925" target="_blank">Pacific Century
Cyberworks Ltd</a> (<b>PCCW</b>) of HK <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991229/LTN19991229055.HTM" target="_blank">announced</a>
a joint subscription of shares in battery maker Golden Power International
Holdings Ltd, which was renamed <a href="http://www.hikari-intl.com/" target="_blank">Hikari
Tsushin International Ltd</a> (<b>HTI</b>). HT invested HK$535.6m for 51% and
PCCW invested $210.1m for 20% of the enlarged company, making a combined
injection of $745.7m. </p>

<p>HT also subscribed a $93.42m zero-coupon note
convertible at the same price as the share subscription and redeemable on
9-Mar-02. </p>

<p>After adjusting for a subsequent 4:1 stock split, the
subscription price was $0.225 per share, based on the net asset value at the
time, while the market price at the time was $1.006 per share, driven up by the
sheer excitement of having PCCW and Hikari as new shareholders - what greater
luck could a company wish for? </p>

<p>The change of control was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000313/LTN20000313047.HTM" target="_blank">completed</a>
on 10-Mar-00 and HTI <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000710/LTN20000710018.doc" target="_blank">changed</a>
its year-end from March to July, to match the year-end of HT. As a result, the
latest accounts are for 16 months to 31-Jul-01. At the beginning of the period,
before HT really got going, HTI had just $7.8m of investments. During the
period, HTI acquired 16 long term investments at a total cost of $462m, of which
6 internet stocks came from HT for $185m in a connected transaction approved by
shareholders. One short-term <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000612/LTN20000612030.doc" target="_blank">investment</a>
came on 9-Jun-00 from HT at a cost of $7.9m, being 0.36% of Korean Internet
Auction Co. Ltd, just before its IPO. Only a tiny portion of these investments
was sold, bringing in a small profit of $5.9m on a book cost of $7.5m. </p>

<p>However, by 31-Jul-01, the &quot;fair value&quot; of these investments was reduced by 57%
or $268m, of which only $150m was taken
as an &quot;impairment loss&quot; (i.e. recorded as a loss in the profit and
loss account) and the other $118m taken direct to the investment reserve,
by-passing the P&amp;L. </p>

<h4><i>Note to regulators</i> </h4>

<p>This highlights one of the farcical aspects of current
accounting standards - directors are required to record long-term investments at
fair value, but unless they think that an investment is &quot;impaired&quot; (in
other words, the reduction in fair value is permanent) then they don't have to
record a reduction in value as a loss - they can just hide it in the reserves.
So a director can have two simultaneous and conflicting opinions, the first
opinion being that an unlisted investment is worth &quot;X&quot; and the second
being that it will bounce back and be worth &quot;Y&quot; in the future (in
which case, it should be worth &quot;Y&quot; now). This allows directors to be
very subjective in the amount of losses they record, based on their own optimism
or clairvoyance of future prices. The concept of permanent or temporary losses
should be abolished, and all reductions of fair value should be recorded as
losses. </p>

<h3>What was it worth?</h3>

<p>OK, so we've got a battery business, a pile of internet
investments, and a somewhat reduced pile of cash, but let's look at where we
stand at 31-Jul-01, with investments stated at fair value: </p>

  <table class="numtable center">
    <tr>
      <th></th>
      <th>HK$m</th>
      <th>$/share</th>
    </tr>
    <tr>
      <td class="left">Long term investments</td>
      <td>202.2</td>
      <td>0.0434</td>
    </tr>
    <tr>
      <td class="left">Cash, net of debt</td>
      <td>234.7</td>
      <td>0.0503</td>
    </tr>
    <tr>
      <td class="left">Other net assets</td>
      <td>256.3</td>
      <td>0.0550</td>
    </tr>
    <tr>
      <td class="left">Total net assets</td>
      <td>693.2</td>
      <td><b>0.1486</b></td>
    </tr>
  </table>
<p>The bulk of &quot;other net assets&quot; represents the fixed
assets of the battery-making business.</p>
<h3>The Strangest Exit of 2001?</h3>
<p>Here's what happened next. On Mon-3-Dec-01, HTI released an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011203/LTN20011203074.doc" target="_blank">announcement</a>
dated Sat-3-Dec-01, stating that the 3 representatives of PCCW on the board of
HTI, being Mr Francis Yuen Tin Fan, Mr Mico Chung Cho Yee and&nbsp; his
alternate, Mr Hubert Chak, had resigned on Fri-30-Nov-01. The <i>Webb-site.com </i>eyebrows
were raised. Why would the directors representing a 20% shareholder resign
without replacements? Something was going on.</p>
<p>We didn't have to wait long to find out what. The day after the
announcement, on 4-Dec-01, HTI's stock was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011204/LTN20011204046.HTM" target="_blank">suspended</a>
pending a possible general offer for the company. Rule
7.1 of the 
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Code on Takeovers and Mergers</a> (<b>Code</b>) states that except
with the consent of the SFC Executive, the directors of an offeree company (in
this case, HTI) should not resign until the first closing date of an offer. By
resigning the day before the possible offer was announced, the PCCW guys avoided
being locked in during an offer period, or having to give a recommendation on
whether to accept the offer.</p>

<p>On 7-Dec-01 HTI <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011210/LTN20011210042.doc" target="_blank">announced</a>
that a company owned by Mr Daniel Wong King Shiu (<b>Mr Wong</b>) had bought
HT's 51.04% stake in HTI for <b>$0.045</b> per share, or about $107.2m in
total. He had then agreed to place 17.04% of this through Kingston Securities
and <a href="../dbpub/articles.asp?p=11839" target="_blank"> Kingsway Securities</a> at the same price (the <b>Placing</b>), leaving him with
a 34% stake in HTI for a net price of $71.4m. The Placing is conditional on the
consent of the SFC Executive under Rule
21.2 of the Code because it involves the offeror selling during an offer
period. </p>

<p>As this is more than the 30% threshold, it triggers a mandatory
cash general offer for HTI at $0.045 per share, apparently the highest price Mr
Wong (and any parties acting in concert with him) paid in the last 6 months. </p>

<h3>A discount for control?</h3>

<p>But wait! Look at that table above. Mr Wong has acquired control
of HTI for what is apparently less than its net cash per share, as of 31-Jul-01!
In other words, HTI could have distributed all its net cash to shareholders, and
HT would have received more money and still owned 51% of the remaining assets
and a listed vehicle. </p>

<p>Mr Wong has paid a&nbsp; discount of some 70% to net asset
value. Not only that, but the average market price in the ten market days prior
to suspension was $0.1336, so we are told that he has paid a&nbsp; 66% discount
to market price (which is the price of a minority share) for a controlling
stake. Normally, one would expect a premium for a controlling stake. </p>

<p>Now you might be wondering what happened to PCCW in all of this,
with its 20% stake, or 933.6m shares, unchanged since the original subscription.
Well, on Mon-17-Dec-01 there was a spike in the trading volume which forced HTI
to <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011218/LTN20011218031.doc" target="_blank">announce</a>
that PCCW told them it had disposed of exactly 500m shares (10.72% of HTI) at <b>$0.155
per share</b>, taking its remaining stake below the 10% legal disclosure threshold.&nbsp; </p>

<p>Note: However, during the offer period, PCCW will have to
disclose dealings under Rule
22 in HTI so long as they stay above 5%, as that makes them an &quot;Associate&quot;
under the Code. </p>

<p>The buyers of PCCW's stake were not disclosed and are presumably
independent. The sale price was a reasonable 8% discount to the previous
Friday's close of $0.169. On the Monday of the sale, market volume totalled
945.6m shares, and the price collapsed to $0.10, falling further to close on
28-Dec-01 (the last day before this article) at $0.081. </p>

<p>One cannot help but wonder if everything meets the eye here - a
substantial shareholder who recently had directors in the boardroom of HTI is
able to sell 10.72% at $0.155 per share but a controlling 51% stake passes hands
two weeks earlier for just $0.045? And if PCCW was able to sell its 10.72% stake
to independent investors at $0.155, then why is Mr Wong willing to sell 17.04%
in the Placing at only $0.045? </p>

<p>Was HT really so desperate that it was willing to sell control
of HTI for a 70% discount to net asset value? </p>

<h3>Who is Mr Wong?</h3>

<p>A search of the internet reveals nothing on Mr Wong. This is his
big break! The announcement says that he has <i>&quot;over 10 years of
experience in securities business as an investor and dealer&quot;</i>. So we
checked the SFC's registered person list - there is a <a href="http://pr.hksfc.org.hk/pr/lpdetail_in.jsp?ceref=ADX394" target="_blank">Wong
King Shiu</a> who was licensed as a Securities Dealer's Representative on
30-May-97, but he is not currently working for a dealer, and unfortunately the
register does not show historic changes so we don't know who he worked for. The
announcement says he is aged 42, was <i>&quot;engaged in the catering
industry&quot;</i> for over 7 years after graduating from <a href="http://www.vtc.edu.hk/ti/hwti/1-10.htm" target="_blank">Haking
Wong Technical Institute</a>, and thereafter <i>&quot;taught in a local
technical institution for 4 years before starting his own business as a
restauranteur&quot;</i>. So he sounds like a former chef. He is currently an
investor <i>&quot;focusing on listed securities in Hong Kong&quot;</i> - well
he's certainly focusing now! </p>

<p>There is a standard paragraph on the &quot;intentions of the
purchaser&quot;, variations of which we have seen in many other deals, which
basically tells you nothing about why they want the listed vehicle and rules
nothing in or out. </p>

<p>We're not gamblers, but we'd be happy to bet that you haven't
heard the last of this deal. At the very least, HT of Japan owes its shareholders
an explanation as to why it sold control at such a low price, and long suffering HTI minority shareholders in Hong Kong would like to know why the offer price is
so low.&nbsp; </p>

<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4465">China Oil And Gas Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
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