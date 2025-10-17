
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

<script type="text/javascript">document.title="Midas the Soft Touch";</script>

	<div class="summary">We take a look at Midas Printing and its controlling shareholders China Cyberworld and Chuang's Consortium. Webb-site.com shows how another controlling shareholder is attempting to inject an over-valued investment to extract the cash raised during last year's dotmania surge. We urge minority shareholders to vote against this deal.</div>

<h2 class="center">Midas the Soft Touch<br>
<span class="headlinedate">19 January 2001</span></h2>
<p>Sometimes we can't help but chuckle at the way money moves
around this market. Take a look at <a href="http://www.midasprinting.com/" target="_blank">Midas
Printing Group Ltd</a>  (<b>Midas</b>) and you'll see what we mean. Their web site describes
them as <i>&quot;the most diversified printing group in Hong Kong&quot; </i>which
might explain why they are buying a stake in an online antique auction site. </p>

<p>Or perhaps it should be called an antique online auction site, because
we have seen this one before, a year and a bubble ago... </p>

<p>The larges shareholder of Midas was formerly a private company called
ERI Holdings Ltd (<b>ERI</b>), which in turn has been controlled by the managing
director of Midas, Mr Lau Chuk Kin since
the May-96 IPO. On 30-Jan-00 Midas <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000203/LTN20000203057.HTM" target="_blank">announced</a>
that ERI had sold 80m shares (<b>33.77%</b> of Midas) at $0.88 each, of which&nbsp; 60m
shares (then 25.33% of Midas) went to HK-listed <a href="http://www.china-cyberworld.com/" target="_blank">China
Cyberworld Ltd</a> for $52.8m. That left ERI with a 9.6% stake in Midas. </p>

<p>Incidentally, the $0.88 per share on this deal compared with the
market price of $0.31 on 21-Jan-00, the last day before news of the deal began
to leak, prompting a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000125/LTN20000125064.HTM" target="_blank">denial</a>
on the next day followed by a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000125/LTN20000125099.HTM" target="_blank">suspension</a>
the day after at $0.65. </p>

<p>China Cyberworld is controlled by HK-listed <a href="http://www.chuangs-consortium.com/" target="_blank"> Chuang's Consortium
International Ltd</a> which in turn is controlled by Alan Chuang Shaw-swee (<b>Mr
Chuang</b>) and his sister Alice Siu Chuang Siu-suen (<b>Ms Siu</b>). Mr Chuang and Ms Siu
(the <b>Chuangs</b>) own 66% and 34% of a company which
bought the other 20m shares (then 8.44% of Midas) sold by ERI for $17.6m. </p>

<p>The deal was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000308/LTN20000308040.HTM" target="_blank">completed</a>
on 7-Mar-00, whereupon the non-executive Chairman, two executive directors and
an independent director all resigned from Midas and four new executive directors were
appointed. Yes, another <a href="takeunder.asp" target="_blank">takeunder</a>
transaction was complete! By then, Midas was swept up in dotmania and it shares
had soared to $1.45. </p>

<h3>Placings</h3>

<p>Three days later, Midas <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000313/LTN20000313059.HTM" target="_blank">placed</a>
47m new shares at $0.88 each through Tai Fook Securities, raising $40.2m net of
expenses for use as <i>&quot;additional working capital&quot;</i>. The placing
was due to complete by 15-Apr-00. </p>

<p>After renewing the general mandate to issue new shares on
23-May-00 at the AGM, another <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000713/LTN20000713023.doc" target="_blank">placing</a>
through Tai Fook took place on&nbsp; 12-Jul-00 of 60m new shares at $0.35 per
share, raising $20.3m net of expenses for <i>&quot;additional working
capital&quot;</i>. The lower price was in the wake of the initial Nasdaq
correction. The new shares were equivalent to 19.87% of the existing
shares, almost exhausting the 20% allowed under the general mandate.&nbsp; </p>

<p>Combined, the two placings raised <b> $60.5m</b> net of expenses. </p>

<h3>Treasure Auctioneer</h3>

<p>At the same time as China Cyberworld was buying into Midas, it
was also working on another deal. On 10-Feb-00 it <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000211/LTN20000211080.HTM" target="_blank">announced</a>
the proposed purchase of 25% of <a href="http://www.treasure-auction.com/" target="_blank">Treasure
Auctioneer International Ltd</a> (<b>Treasure Auctioneer</b>) for HK$75m
satisfied by the issue of 50m shares at $1.50 each. As well as the
then-unlaunched website, the group <i>&quot;owned and operated an auction house
located in Central, Hong Kong&quot;</i>. In other words, a bricks-and-clicks
model. China Cyberworld closed that day at $1.42 and yesterday at $0.23. </p>

<p>Of the 25% stake, 15% was from aptly-named Impressive Profit
Investments Ltd (<b>Impressive Profit</b>), in turn owned 66% by Mr Chuang and
34% by Ms Siu. The other 10% came from a company owned equally by 3 independent
individuals. </p>

<p>The price was based on a 14.3% discount to a valuation by <a href="http://david/webbsite1/articles/softtouch.htm" target="_blank">
American Appraisal Hongkong Ltd</a>, at $87.5m as of 31-Jan-00, implying a
valuation on the whole company of <b>$350m</b>. The valuation report was not
published in the shareholders' circular, and the deal was approved by
shareholders on 20-Mar-00. </p>

<p>The independent financial adviser was Asia Financial Capital
Ltd, the same adviser that called Pacific Challenge's aborted acquisition of <a href="centsibility.asp" target="_blank">Cents.com</a>
fair and reasonable. </p>

<p>Treasure Auctioneer was incorporated in Nov-99 and up to
31-Dec-99, based on unaudited combined management accounts, had made profit
after tax of $2.1m and had net assets of $12.1m. That implies the initial net
assets of just <b>$10m, </b>or $2.5m for 25%. That sale was indeed an Impressive
Profit. </p>

<h3>Cashing out on Midas</h3>

<p>Now skip forward almost a year, and we see that Midas <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010115/LTN20010115025.doc" target="_blank">announced</a>
on 15-Jan-01 a proposal to buy (you guessed it) 20% of Treasure Auctioneer from
Impressive Profit (which is owned by the Chuangs), for a consideration of $68m,
of which <b>$52m</b> is in cash and the rest in shares. That cash is equivalent
to almost all the money raised by Midas in the two placings last year. </p>

<p>The other $16m will be satisfied by issuing 40m new Midas shares
at $0.40 per share. The combined stake of the Chuangs and China Cyberworld was
diluted to 21.81% by the placings, so this deal would raise their combined stake
in Midas back up to 29.60%. </p>

<p>So you thought that valuations have gone down since the bubble
burst? Not this one. Now the same valuer is valuing 20% of Treasure Auctioneer
at $72.6m as at 15-Dec-00, implying that Treasure Auctioneer is worth <b>$363m</b>,
up $13m on the figure of nearly a year ago </p>

<p>Now you might be wondering if there has been some improvement in
the financial performance of Treasure Auction which justifies such a high
valuation. On the contrary, the company is no longer profitable. The
announcement states that since the company was incorporated <i>&quot;in
Jul-99&quot; </i>(shouldn't that be Nov-99?) up to 30-Sep-00 it has made an
unaudited consolidated net loss before tax of HK$3.7m and the net assets were
down to <b>$6.7m</b>. </p>

<p>By subtracting the 1999 profits, we can see that in the first 3
quarters of 2000, Treasure Auctioneer made a net loss of $5.8m. The only
mitigating factor is a growth in the claimed customer base from 1,500 to 2,700
although it is not known how many of those are actively transacting through the
service. Total transaction volume (goods sold) in the 3 quarters was about $35m.
Auction commission revenue was not disclosed but was presumably much less. </p>

<h4>Option </h4>

<p>Midas will also be granted a two-year option to buy another 15%
of Treasure Auction from Impressive Profit for $51m, the same price per share as
the main transaction. We can only hope that the future exercise or non-exercise
of that option is treated as a connected transaction requiring shareholders'
approval. </p>

<h3>Conclusion</h3>

<p>Because the investment in Treasure Auction is a &quot;connected
transaction&quot; for Midas, it requires approval of minority shareholders.
China Cyberworld and the Chuangs own 21.91% of Midas, but the rest is public,
including the other directors. </p>

<p>Last year, ERI, controlled by the managing director of Midas, benefited
from the sale to China Cyberworld and the Chuangs of 80m Midas shares at $0.88
at a large premium to market price. The dotcom transformation didn't happen, and
now the price is only $0.27. We suggest that if ERI or Mr Lau has any Midas shares left,
they should not be permitted to vote on this transaction. </p>

<p>We recommend that independent Midas shareholders vote against
this transaction, which is vastly overvalued, results in $52m of cash
extraction, consolidates the level of the Chuang's control and has no connection
with its printing business. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4806">Chuang's China Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2452">CHUANG'S CONSORTIUM INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5605">Kroll (HK) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1711">Magnus Concordia Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20090">PIPER JAFFRAY ASIA LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8318">Chuang, Alan Shaw Swee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8319">Siu Chuang, Alice Siu Suen</a></li>
				
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