
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

<script type="text/javascript">document.title="Commission Deregulation: No More Delays";</script>

	<div class="summary">How ironic that in a week in which Hong Kong was again named the World's freest economy, the Government was talking about further delaying the abolition of minimum commissions to protect the inefficient small broker cartel. So much for letting the market pick winners. If the Government believes in free markets, it must allow brokers and clients to negotiate their rates.</div>

<h2 class="center">Commission Deregulation: No More Delays<br>
<span class="headlinedate">13 November 2002</span></h2>
<p>Yesterday the right-wing US think tank, the Heritage Foundation, again <a href="http://www.info.gov.hk/gia/general/200211/12/1112125.htm" target="_blank">labelled</a>
Hong Kong the World's Freest Economy - a huge irony for an economy which lacks
any competition law to restrain anti-competitive prices. </p>

<p>One perfect example surfaced again this week, when stockbrokers were seen lobbying
the Government and the Securities and Futures Commission to further delay the
abolition of minimum commission rates, now due to be scrapped on 1-Apr-03. The minimum commission rate is set by the Stock Exchange of Hong Kong Ltd (<b>SEHK</b>),
which has a legally-protected monopoly on the operation of a stock exchange in
Hong Kong and is owned by Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>). <a href="http://www.hkex.com.hk/rulereg/rulesex/chap-5_eng.doc" target="_blank">Rule
534</a> sets the minimum at 0.25%. </p>

<p>Deregulation was first <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2000/0517news.htm" target="_blank">announced</a>
by HKEx on 17-May-00, giving almost 2 years' notice that the rule would be
scrapped with effect from 1-Apr-02. In that announcement, HKEx Chairman Charles
Lee Yeh-kwong (<b>Mr Lee</b>), who was also a member of the Government's
Executive Council, said: </p>

<blockquote>
  <p>&quot;The liberalisation of brokerage commission rates... we
  believe, is in the interest of the investing public, the brokerage industry
  and the economic well-being of Hong Kong&quot; </p>

</blockquote>
<p>The Government, which despite owning no shares in HKEx, appoints
a majority of its board, issued a <a href="http://www.info.gov.hk/gia/general/200005/17/0517171.htm" target="_blank">press
release</a>  on the same day hailing the move, stating: </p>

<blockquote>
  <p>&quot;The removal of the minimum commission rule will not only
  enhance the competitiveness of Hong Kong's securities industry, but also help
  to strengthen our position as a regional and international financial centre,
  and bring direct benefit to the investors.&quot; </p>

</blockquote>
<p>In January this year, caving in to pressure from small brokers who threatend to march
their employees through Central ahead of the Hong Kong Chief Executive's
re-selection, the Government sheepishly <a href="nofreemarket.asp" target="_blank">delayed</a>
the move for a year, leaving it to brokers to relay the news to the press.
Finally the HKEx board issued an <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020220news.htm" target="_blank">announcement</a>
on 20-Feb-02, stating: </p>

<blockquote>
  <p>&quot;the Stock Exchange of Hong Kong and the Hong Kong
  Futures Exchange <b>will amend their rules</b> and contract specifications so
  that abolition of minimum commissions <b>will be implemented</b> on 1 April
  2003.&quot; (emphasis added) </p>

</blockquote>
<p>So there you have it - the HKEx has already announced the rule
change - all they have to do is put it in the rule book, and get the SFC to
approve it. What is HKEx waiting for? Directions from government, of course. Mr
Lee was <a href="http://www.thestandard.com.hk/thestandard/news_detail_frame.cfm?articleid=35569&amp;intcatid=1" target="_blank">quoted</a>
in this morning's Standard: </p>

<blockquote>
  <p>&quot;Our board of directors has not received any proposal to
  change the minimum brokerage fees yet...I think it is a political issue at the
  end of the day&quot;. </p>

</blockquote>
<p>Mr Lee, you don't need a &quot;proposal to change the minimum
brokerage fees&quot;&nbsp; - your board has already resolved to scrap them - or
have you forgotten? Of course, Mr Lee has ignored what the HKEx board announced
in Feb-02, and has tacitly admitted that it is the Government that calls the
shots, not the HKEx board. </p>

<p>Meanwhile Secretary for Financial Services and the Treasury Fred
Ma Si-hang, who is fast earning the title of &quot;Mr U-Turn&quot;, <a href="http://www.thestandard.com.hk/thestandard/news_detail_frame.cfm?articleid=33596&amp;intcatid=1" target="_blank">stated</a>
as recently as July this year that it was not possible to continue the minimum
commission policy <i>&quot;as protection for brokers&quot;</i>, but on 8-Nov-02
he said: </p>

<blockquote>
  <p>&quot;The brokerage industry has reflected their difficulty to
  the government and to the [SFC]...the government will be open-minded when
  studying their proposals&quot; </p>

</blockquote>
<h3>Capitalism with HK Characteristics</h3>

<p>Deng Xiao-ping must be laughing in the great politburo in the
sky. Having spent the twilight of his life trying to ease the PRC out of central
planning and into the market economy, if he were around today, he would see a
Hong Kong government indulging in protectionism, intervention and central
planning. The mainland markets, incidentally, have already deregulated brokerage
rates on 1-May-02. </p>

<p>It is entirely true that Hong Kong has too many brokers, and that over
400 of them handle less than 20% of the market volume. If forced to compete,
many would simply close down, having failed to merge or invest in new technology
for competition. All they are doing now is dragging their feet, collecting a
little more profit before they close. They were paid off handsomely when the
HKEx was formed, receiving millions of dollars worth of shares in HKEx, and have
now had 3 years to prepare for competition. </p>

<p>Periodically, one of them collapses, and often the proprietor
disappears taking tens or hundreds of millions of dollars of client assets with
him. That's the problem with small brokers - the owner is basically his own
compliance officer, and you depend on him to segregate his assets from yours,
which he often finds hard to do when the bailiffs are knocking on the door.
Apart from orderly closures, there are already 3 broker collapses involving
alleged fraud this year, including one which ironically was <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=02pr7" target="_blank">announced</a>
on 24-Jan-02, the day after deregulation was delayed.&nbsp; </p>

<p>The costs to the community of the brokerage cartel go beyond the
excess commissions and broker defaults. The SFC would need fewer resources to
supervise 50 brokers than 500, allowing them to spend their finite income on
other enforcement areas such as prosecuting those who abuse minority
shareholders. Hopefully, the removal of sole proprietor or mom-and-pop
brokerages and concentration on the regulation of larger brokers with better
compliance systems would result in fewer thefts of client assets when a broker
closes down. </p>

<p>The Government must cease acting in the interests of a small
sector of the economy and start acting in the public interest. For sure, brokers
will lose jobs, but that is what makes a free market efficient. The moment the
government starts setting prices in any sector to protect jobs, we are on the
path to central planning, and China has shown since 1949 that does not work. </p>

<h3>The HKEx's commercial position</h3>

<p>Let's compare two conflicting beliefs attributed to the board of
HKEx. In <a href="http://www.info.gov.hk/gia/general/200111/14/1114170.htm" target="_blank">response</a>
to a question in the Legislative Council on 14-Nov-01, the Government stated: </p>

<blockquote>
  <p>&quot;The Board [of HKEx] considered that the liberalisation
  of brokerage commission would not necessarily result in a reduction in income
  for the brokerage industry, as the free negotiation of commission should
  stimulate trading, which will ultimately benefit the industry as a whole.&quot; </p>

</blockquote>
<p>Now if the free negotiation of commission will stimulate
trading, then that also increases the HKEx's trading fee income (0.005% on each
side of a trade) and the settlement fee income (0.002% on each side), and hence
increases its profitability, since its variable costs are nearly zero (a few
more units of electricity for the computers, perhaps). However, contradicting
this statement, on 20-Feb-02, the Board said: </p>

<blockquote>
  <p>&quot;in the current market condition, deferral of abolition
  of minimum brokerage will have no impact on the trading revenue and
  profitability of HKEx&quot;. </p>

</blockquote>
<p>Of course, the first statement was right, and the second wrong.
Basic economic theory will tell you that when transaction costs decline, the
propensity to transact will increase. Arbitrageurs eking out small profits from
trading will find more profitable opportunities to trade if fees are lower, and
investors will switch positions more often. </p>

<p>So it should be clear to any independent director of HKEx that
deregulated commissions will increase profitability of HKEx. However, as we
said, a majority of its directors are appointed by the Government, not by
shareholders. </p>

<h3>Wide spread tables reduce volume</h3>

<p>While we are on the subject of the profitability of the HKEx,
let's note that it has failed to make any changes to its ridiculously wide <a href="cutthespread.asp" target="_blank">spread
table</a>, which also inhibits transactions, but helps brokers to profit from
trading the spread. Indeed, in the Oct-02 issue of HKEx's magazine, <i>Exchange</i>,
CEO Kwong Ki-chi inadvertently supports our argument, stating: </p>

<blockquote>
  <p>&quot;in the Hong Kong stock market, the bid-ask spread is
  largely a function of the spread table, i.e. the price increment&quot; </p>

</blockquote>
<p>That implies that the gap between the best bid and offer is
being restrained by an artificially wide spread table which determines the
minimum increment in prices. If you narrow that table, then the spread will come
down, and volumes will increase. </p>

<p>So let's not hear any complaints about declining revenues and
volumes at HKEx or SFC (which receives a transaction levy) until they sort that
one out. </p>

<h3>Break the cartel</h3>

<p>HK is one of the last remaining markets with minimum
commissions, and it is time to bring this to an end. Further delay would further
reduce the credibility of the Government's goal to make Hong Kong a world-class
market, or even a regional centre. As for those brokers who
say &quot;let's wait until the market picks up&quot; - forget it - we never saw
them volunteering to deregulate during the last bull run. They have a choice:
compete or close. It's a free market, isn't it? </p>

<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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