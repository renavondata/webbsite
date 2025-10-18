
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

<script type="text/javascript">document.title="Terms of Engagement";</script>

	<div class="summary">Terms of engagement have now been agreed  between the Hong Kong Stock and Futures Exchanges. In this article, for the first time Webb-site.com shows you what the combined profits and earnings per share of the HKEC have been. This deal is so sweet that almost nobody will accept the partial cash alternative of $3.88 per share. We tell you what the shares are really worth, particularly in the absence of effective tariff controls  - you will be amazed!</div>

<h2 class="center">Terms of Engagement<br>
<span class="headlinedate">6 August 1999</span></h2>
<p>Last Friday, after a last minute face-off with the Government,
the terms of engagement in the arranged marriage between the Stock Exchange
(SEHK) and Futures Exchange (HKFE) were announced. Neither board seemed
particularly happy about the deal, but it will now be down to their members to
vote on the scheme when it is put to them in September. If approved, the merger
is expected to be consummated by 31-Jan-2000. </p>

<p>The terms of the merger are that each SEHK share will convert
into 805,000 shares in Hong Kong Exchanges and Clearing Ltd (HKEC) while each
HKFE share converts into 1,393,500 shares. There are 929 SEHK shares and only
230 HKFE shares, so the net result it that SEHK members get 70% and HKFE members
get 30% of the new company. </p>

<h3>Less Icing on the Cake</h3>

<p>It had earlier been suggested that HKEC would offer to buy the
trading rights of members at a fixed price for a period of time. In our article
last week <a href="icing.asp">Icing on the Cake</a>, we explained how this was
likely to saddle the HKEC with debt and unsaleable trading rights. This is
because there will be a surplus of trading rights as the industry consolidates
and in the wake of the new Automated Matching System (AMS3). It appears that the
Government has taken this point on board, and the merger terms do not include
any such underwriting of trading rights. </p>

<p>HKEC has undertaken not to offer any new trading rights for 2
years after the merger, and then for the next 2 years, at not less than $3m per
trading right on the SEHK or for $1.5m per trading right on the HKFE. That
doesn't cost them much, because, as we explained in the earlier article, the
price of trading rights will collapse anyway given the surplus of them. You
should only need one trading right to operate a large internet brokerage through
AMS3. </p>

<p>HKEC has also agreed to allow trading rights to be freely
transferred (but once only) for 10 years after the merger. As a consequence, you
can expect a rush of incorporation by individual members of the SEHK ahead of
the merger. By transferring their SEHK share to a wholly-owned company, the
company can then be sold <i>ad infinitum </i>without changing the legal
ownership of the trading rights. </p>

<h3>The Partial Cash Alternative</h3>

<p>For those members who are nervous about the prospects of the
HKEC, they have arranged a partial cash alternative (funded out of HKEC's
combined resources) of up to HK$1,336m, at $3.88 per HKEC share (nice lucky
number that). That covers about 32% of the shares to be issued. The cash is
split 70:30 between the two exchanges. </p>

<p>We think there will be almost no take-up of this cash
alternative, and we'll tell you why. </p>

<h3>HKEC Combined Profits</h3>

<p>For the first time, <i>Webb-site.com</i> has combined the profit and loss
accounts of the three entities that will make up the HKEC, to show you roughly
what their results are like. The entities are the SEHK (which owns The SEHK
Options Clearing House), the HKFE (which owns the HKFE Clearing Corporation),
and the Hong Kong Securities Clearing Company (HKSCC), which technically nobody
owns. The HKFE has a December year-end and the SEHK and HKSCC have June
year-ends. We haven't bothered to adjust for this as the necessary half-year
results were not all available. </p>

<p>Here's the resulting combined profits for the latest financial
year (for &quot;surplus&quot; read &quot;profit&quot; - all 3 companies are not
run for-profit until after the merger, so the term &quot;surplus&quot; is used
in the accounts): </p>

<img class="center" alt="" src="../images/terms.1.gif">

<p>Notice that the HKFE comes in at 29% of profits after tax,
almost the same as the 30% share of HKEC that its members will get. The
exceptional item for SEHK was the extra contribution it made to the Unified
Exchange Compensation Fund in the wake of the collapse of C.A. Pacific
Securities. </p>

<p>To show you that these results were not a flash in the pan,
here's the previous year: </p>

<img class="center" alt="" src="../images/terms.2.gif">

<p>You can see now why the question of the valuation of HKSCC was
so critical. HKSCC until now has existed as a non-profit entity and has
regularly cut its charges as its surpluses have increased, benefiting its users.
In future, it will hand some of those savings to its new shareholders in
profits. What the shareholders gain, the users lose. </p>

<p>Now if we put these results side by side, and divide by the
number of new HKEC shares, then hey presto - you can see that the earnings per
share (EPS) for the latest published year was about $1 per share: </p>

<img class="center" alt="" src="../images/terms.3.gif">

<p>What this tells you is that the cash alternative values the HKEC
shares at a historic p/e of just <b>3.9</b> times. If anyone accepts that offer,
you have to wonder whether they ever had the expertise to handle your
investments. </p>

<h3>What Scheme of Control?</h3>

<p>The Government has failed to adequately address the question of
how the HKEC, which will have a legally-protected monopoly on share trading in
Hong Kong, will set its prices. So far all they have said, in their recent
policy paper, is that: </p>

<blockquote>

<p>&quot;the fees and charges of the two Exchanges
are set out in their respective rules. The making of changes to these rules
require the approval of the SFC.&quot; </p>

</blockquote>

<p>That is simply not enough. For one thing, the SEHK rules do not
actually set out most of their charges but instead Chapter 8 says: </p>

<blockquote>

<p>&quot;The Council [of the SEHK] shall have the
power to impose fees and charges in relation to such matters or things and in
such amount as the Council may from time to time think fit&quot; </p>

</blockquote>

<p>Such fees and charges are notified to members by way of a
circular. We are told that in practice these circulars are subject to SFC
approval, but there is no legal requirement for that. This has to change. </p>

<p>On top of this, it is not enough for a monopoly price regulator
to just review requested price changes by the body it regulates. To be
effective, it must have the power to require price reductions to be made. That
is, it must be pro-active not re-active.&nbsp; </p>

<p>We hope that the Government will address these issues in the
enabling legislation, but if they do not, then expect the profits of the HKEC to
climb steeply in the future, and do not expect all the benefits of volume and
technology savings to be passed on to you as customers. </p>

<h3>So What's it Worth?</h3>

<p>Under the current proposal, and as a monopoly in respect to the
trading of shares in Hong Kong, it is not unreasonable to expect a P/E for the
HKEC in the region of 12-15x, similar to other utilities. That puts a value on
the shares of around $12-15, valuing the whole HKEC at around $12.8-16.0bn. It
values each share in the existing exchanges as follows. </p>

<img class="center" alt="" src="../images/terms.5.gif">

<p>The value per SEHK share should make those small brokers who
have opposed the merger stop and think - they get up to <b>$12m </b>worth of
saleable shares in HKEC, <u>and</u> they get to keep their trading rights. In
the past, their shares in SEHK were not permitted to pay any dividends and could
only be sold if the business was sold. What a windfall! </p>

<p>One point worth noting is that the HKSCC, which contributed 35%
of last year's combined profits, therefore contributes about 35% to the combined
valuation, or about $4.5-5.6bn. That's the discounted value of future profits
which will accrue to its new owners and which otherwise might have been passed
to the public in reduced charges. </p>

<p>The only thing which could negatively impact on the HKEC's valuation
is if a proper scheme of control were imposed, requiring the HKEC to hand back
the bulk of its future profit growth in terms of continually reducing tariffs
for all its services. </p>

<h3>Minimum Commissions</h3>

<p>Still no word on what understanding (if any) the Government and
the brokers have reached on minimum commissions. As we have explained in
previous articles, the scrapping of this protectionist measure is the key to
lowering transaction costs in Hong Kong and the development of a discount
flat-fee brokerage market of the kind already found in the US (except that there
is no monopoly and plenty of competition between electronic exchanges there). </p>

<p>Let's hope that the Government makes a clear commitment to
proceed with scrapping minimum commissions as soon as the merger is completed.
As we have shown in this article, no further incentives are needed for such a
sweet deal to proceed. </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=137">Exchanges merger</a></li>
				
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