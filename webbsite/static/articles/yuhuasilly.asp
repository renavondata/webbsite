
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

<script type="text/javascript">document.title="You are silly, Yuhua";</script>

	<div class="summary">Yuhua Energy (2728) proposes a 2 for 1 bonus issue and a 4.5-fold board lot increase that it wrongly claims will reduce the market value per board lot and thereby enhance trading liquidity. In fact it does the opposite.</div>

<h2 class="center">You are silly, Yuhua<br>
<span class="headlinedate">17 September 2015</span></h2>
<p class="revisedate"><a href="#update2">update</a> 6-Oct-2015</p>
<p>Time to make another example of the drivel that accompanies bonus issues and 
stock splits in this town. <a href="../dbpub/articles.asp?p=27498">Yuhua Energy 
Holdings Ltd</a> (<strong>Yuhua</strong>, 2728) has tonight
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/0917/LTN20150917882.pdf" target="_blank">
announced</a> a 2 for 1 bonus issue, which is equivalent to a 3 for 1 stock 
split. So the price will theoretically adjust from $1.49 to about $0.4967. 
However, they are increasing the board lot size from 4,000 shares to not 12,000, 
but 18,000 shares. Consequently, the market value of a board lot should increase 
by 50% from HK$5960 to $8940. A board lot is the minimum transaction quantity 
for the main trading system.</p>
<p>We would not disagree with the need for larger board lots to reduce 
transaction costs, given that minimum commission charges are usually a more 
prohibitive factor to transactions, and given that HKEx, via its settlement 
monopoly, still gouges investors 
for $1.5 per board lot of increase in their holdings between book closure dates 
as a &quot;scrip fee&quot; despite the fact that the scrip (share certificate) is 
immobilised in the depository. At tonight's close,
<a href="../dbpub/mcap.asp?exch=all&amp;sort=ltvup" target="_blank">Webb-site 
Who's Who shows</a> that 589 stocks have a board lot value of HK$2,000 or less, 
out of 1808 listed shares. The smallest is at $76. 248 stocks are at $1000 or less per board lot, making 
the scrip fee at least 0.15%, which is more than many brokers charge in 
commission to buy a stock.
<a href="../dbpub/HKstocksByBoardLot.asp" target="_blank">Our data 
also show</a> that the weighted average board lot value is currently HK$6270.</p>
<p>But Yuhua then says this, in &quot;Reasons for the bonus issue&quot;:</p>
<blockquote>&quot;The Board proposes the Bonus Issue
<u>in recognition of the continual support of the 
Shareholders</u> and the Bonus Issue will increase the total number of shares 
in issue and correspondingly result in downward adjustment to the trading price 
of the Shares <u>so that the market value per board lot 
of Shares can be reduced</u> to appeal to more investors.
<u>Accordingly, the trading liquidity of the Shares in 
the market may be enhanced</u>. The Directors are of the view that the Bonus 
Issue is in the interests of the Company and the Shareholders as a whole.&quot; (our 
underline).</blockquote>
<p>The market value per board lot is not being reduced, it is being increased, 
except for a brief period between 30-Oct-2015 and 13-Nov-2015, when the stock 
goes &quot;ex-bonus&quot; but before the bonus shares are issued and the board lot size 
changes. During that period, two-thirds of the market value of the company will 
be untradeable, because the bonus shares have not yet been issued, which of 
course means that investors are locked into two-thirds of their holdings over 
that period. That doesn't help liquidity either!</p>
<p>And <a href="bonusBS.asp">we've said it before</a>, a bonus issue 
or a stock split is not &quot;recognition of the continual support of the 
Shareholders&quot;, who will be no better off because of it. That statement is 
deceptive. A bonus issue simply 
incurs transaction costs for the company they own. Trading liquidity is not 
generally improved by increasing the minimum transaction size. Furthermore, if 
the stock moves up just one current tick to $1.50, then the next move after the 
bonus issue would be in the wide part of the
<a href="https://www.hkex.com.hk/eng/rulesreg/traderules/sehk/Documents/sch-2_eng.pdf" target="_blank">
spread table</a> from $0.50 to $0.51, a 2% minimum spread size, further damaging 
liquidity, whereas it is currently at a tick size of $0.01 or 0.67%.</p>
<p>If they were honest about it, they would admit that after a (probably undeserved) run 
up in the share price, they simply want the optical effect of a share price 
below $1, to &quot;appeal to more <u>stupid</u> investors&quot; 
who might think that low nominal share prices make a stock fundamentally 
cheaper. At 30-Jun-2015, Yuhua had net tangible assets of HK$339.9m, or $0.44 
per share after the 2:1 stock split on 8-Jul-2015. So at $1.49 it is trading at 
3.39x book value.</p>
<p>By the way, the auditors of this firm are Cheng &amp; Cheng Ltd, of
<a href="chengcheng.asp">EPS snafu fame</a>.</p>
<h3 id="update1">Update, 23-Sep-2015</h3>
<p>Yuhua has tonight published a &quot;<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/0923/LTN20150923934.pdf" target="_blank">clarification 
announcement</a>&quot; responding to our article. It dissects the previous 
announcement, saying that the statement quoted above was not false or 
misleading, because they were looking at the bonus issue in isolation and not 
commenting on the effect of the subsequent board lot change. But of course, the 
two were proposed together, and the second is conditional only on the first, so 
you can't have one without the other. </p>
<p>They also say that even though the value per board lot will increase:</p>
<blockquote>&quot;the number of Shares to be held by the public 
Shareholders will increase...the Board is of the view that an increase in the 
trading volume of the Shares could be seen following the Bonus Issue
<u>and therefore the Shares are likely to experience 
increased liquidity as a result</u>.&quot;</blockquote>
<p>That's a fundamental error and another false and misleading statement - 
liquidity is a measure of turnover - either the dollar amount or the proportion 
of publicly held shares traded, depending on context, but not the absolute 
numbers of shares. Volume is not turnover. Tripling the number of shares of 
course means that more shares will be traded, but not more liquidity. The stock 
price closed today at $1.44, implying a $0.48 post-bonus price and a tick size 
of $0.005, or 1.04%, compared with the current $0.01, or 0.69%. Having a 
bid-offer spread which is 50% larger is not likely to help liquidity, and they 
fail to address this point.</p>
<h3 id="update2">Update, 6-Oct-2015</h3>
<p>Yuhua has today
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/1006/LTN20151006473.pdf" target="_blank">
announced</a> that the proposed bonus issue and change of board lot size will be 
&quot;postponed to such time as and when the Board determines appropriate&quot;. </p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=27498">Jintai Energy Holdings Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=102">Bonus issues and stock splits</a></li>
				
				<li><a href="/dbpub/subject.asp?c=122">Dealing costs</a></li>
				
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