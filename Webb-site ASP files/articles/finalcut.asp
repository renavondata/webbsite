
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

<script type="text/javascript">document.title="Telstra's New Deal";</script>

	<div class="summary">After six months of negotiation, the final terms of the Telstra-PCCW deal are
out. <i>Webb-site.com</i> takes you behind the numbers and tells you what the
press release <i>didn't</i> say.</div>

<h2 class="center">Telstra's New Deal<br>
<span class="headlinedate">13 October 2000</span></h2>
<p>After six months of negotiation, PCCW and Telstra today
announced final terms of their deal in two separate and different press
releases. </p>

<h3>Convertible Bond</h3>

<p>As predicted, the convertible bond has been repriced in
Telstra's favour. The size of the loan has been cut in half to US$750m, and the
conversion price has been cut from the original <b>HK$23.69</b> per PCCW to
share to a <b>15%</b> premium over the average price in the next 45 trading days
(or about 2 months). So based on last night's price, if that were to be
maintained for two months, the conversion price would be <b>$8.80</b> per share. </p>

<p>The original conversion price was a <b>20%</b> premium on the
average price up to 12-Apr-00 when the deal was first <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000413/LTN20000413019.doc" target="_blank">announced</a>.
The new formula could work in Telstra's favour if markets continue to
deteriorate. As PCCW's share price has now collapsed to HK$7.65 yesterday (close
to our valuation of HK$6 per share), the downside for Telstra is far less than
it was originally. </p>

<p>Importantly, the <a href="http://telstra.com.au/newsroom/release.cfm?ReleaseID=9861" target="_blank">Telstra
press release</a> also discloses that the interest rate on the bond has been
raised from the original 3% to 5% for the first four years, and from 5% to 7%
for the last two years. That's one of several things the PCCW press release
omits to mention. At the time of writing, the PCCW release was still not on
their <a href="http://www.cyberworks.com/press_room/" target="_blank">web site</a>
- so much for the speed of the internet. </p>

<p>Also not mentioned is the fact that the status of the bond has
been raised (originally it was subordinated, ranking behind the banks) to give
Telstra security over half of PCCW's interest in the IP Backbone Company (<b>IPBC</b>)
which is a 50:50 joint venture to hold the two companies' international
infrastructure. So if the loan defaults, then Telstra could end up with control
over IPBC as well as the HKT mobile business (see below). </p>

<h3>The Mobile Sale</h3>

<p>Telstra will now acquire 60% of HKT's mobile business for
US$1.68bn, valuing the whole thing at US$2.8bn or around <b>US$3,000</b> per
subscriber. The original deal was for 40% for US$1.5bn, or around US$4,000 per
subscriber. So PCCW gets an extra US$180m of cash. </p>

<p>As we explained in our article <a href="whatpricemobile.asp" target="_blank">What
Price Mobile</a>, that puts a big premium on the business, compared with
Smartone, which trades at around US$600 per subscriber, and Sunday, now around
US$800 per subscriber. You always pay a premium for control, but not on that
scale. </p>

<p>The price for PCCW is that it surrenders control over the mobile
business, but it's still a very generous price and they needed the cash.
Telstra's shareholders must be wondering just what their board's strategy is
with HKT Mobile, which faces a new round of expenditure on a third generation
(3G) mobile network (if they win a licence) starting in 2001. They are competing
with 5 other 2G licensees in a market with some 60% penetration. </p>

<p>The good news for HK consumers is that Telstra's takeover of the
mobile business should reduce the risk of a cartel breaking out in the local
market, as the Li family will only control the biggest player, Hutchison, rather
than have 59% of the market through Hutchison and HKT. So we can expect
continued fierce competition in the near-saturated market place. </p>

<h3>The IPBC</h3>

<p>There's a subtle change in the terms here which favours PCCW.
Needless to say, Telstra didn't want to highlight this in its press release. In
the 24-Aug-00 <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000824/LTN20000824011.doc" target="_blank">announcement</a>,
it was proposed that the 50:50 joint venture would take on debt and use that to
pay partly in cash to its two shareholders for the international infrastructure
assets being acquired from them. </p>

<p>The cash payments were described as being US$625m to Telstra and
between $1,000m and $1,125m to PCCW. In other words, the PCCW backbone assets
were worth between US$375 and $500m more than those of Telstra. </p>

<p>Now in the new deal, that figure has gone up to US$750m, which
is the additional amount of cash that the IPBC will pay to PCCW. Since IPBC will
be 50% owned by PCCW, it's debt will not appear on PCCW's balance sheet. But
that does not make it disappear in economic terms - it is pure smoke and mirrors
to ignore the debt load in your off-balance-sheet associates. The debt
represents a real economic encumbrance on your cashflows. </p>

<p>So in effect, the economic debt reduction by PCCW as a result of
the IPBC venture is US$375m (50% of the US$750m) not US$1,125m as mentioned in
the press release. </p>

<h4>Valuation </h4>

<p>The other day an Australian investment house put
out a <b>US$23bn</b> valuation on the IPBC. However, if you look closely at this
deal, you can deduce a much lower figure in the minds of PCCW and Telstra. The
previous announcement disclosed that the revenues of the two sets of assets
(assuming they haven't changed) were US$1,097m and US$832m respectively for the
year to 30-Jun-00. The difference of US$265m is valued by the two companies at
US$750m, being the extra cash that PCCW will receive compared with Telstra. </p>

<p>That is 2.83x the revenue difference, so assuming a dollar of
Telstra revenue is worth the same as a dollar of PCCW revenue, it values IPBC at
US$5.46bn<b> </b>on an ungeared basis. The earnings before interest, tax and
depreciation of IPBC were US$493m, so that implies 11.1x EBITDA. Depreciation
reduces EBIT to US$361m, so the deal values the business at 15.1x EBIT. That's
far more realistic than the Australian house's valuation of around 64x EBIT. </p>

<p>Now it is proposed that IPBC will take on US$2bn of debt, of
which $1.5bn will be paid to the two shareholders and $500m will be kept for
working capital. The cash pay-out reduces the equity valuation to about <b>US$4bn</b>,
meaning that PCCW's 50% share would be worth about US$2bn. </p>

<p>A further aspect which supports this valuation is that following
an IPO of IPBC, Telstra's bond security over half of PCCW's shareholding in IPBC
would be adjusted 6-monthly to maintain security at twice the amount outstanding
on the convertible note. Currently the security is 25% of IPBC, so if the two
sides expect that to be worth $1.5bn (twice the bond principal) in an IPO, then
they think IPBC is worth US$6bn when floated. </p>

<h3>PCCW's debt reduction</h3>

<p>Although PCCW has billed the deal as a debt reduction of
US$3,555m, one cannot ignore the debt in IPBC. That means there is a net debt
reduction of US$750m for the convertible bond, $1,680m for the mobile sale, and
just $375m from IPBC (as explained above), taking the total to $2,805m. And
remember, if the PCCW share price does not recover beyond the conversion price,
then half the bond is repayable in 4 years' time and the other half in 6 years.
If you treat that as debt then the overall debt reduction is just $2,055m. </p>

<p>PCCW has until 28-Feb-01 to repay the bulk of its bridging loan
taken out to buy HKT. Current debt stands at about $9bn. The Telstra deal will
allow that to be repaid down to about $5.5bn, so we can expect PCCW to be
looking for a new <b> $6bn</b> long-term loan facility, principally on the basis of
cashflow from the domestic fixed-line and IDD business (but excluding the
international portion which belongs to IPBC). </p>

<p>Banks in the new loan syndicate will have regard to the fact
that IPBC's assets will already carry <b> $2bn</b> of debt, and that the Telstra bond
has security over part of PCCW's shareholding. They will also take into account
the fact that PCCW no longer controls HKT's mobile business, so they are not
able to direct any cashflow from that unless Telstra agrees. However, mobile is
not a strongly cash-generative business and if anything, it will be calling on
its shareholders to finance 3G mobile expansion. </p>

<p>IPBC will take out $2bn of debt to finance the cash payout to
its shareholders and capital expenditure. And besides all that, PCCW is
reportedly looking for funds to finance the US$1.5bn construction of the
Cyberport. Some of that will come from pre-sales of flats once the project gets
going, but they may need to raise up to <b>$1bn </b>before the project becomes
cashflow positive. </p>

<p>The profit-sharing formula in the PCCW-Government joint venture
means that the more PCCW can fund it (rather than requiring the JV to borrow the
money directly), the greater PCCW's percentage profit share in the project. It
is based on the deemed value of the land (for the Government share) versus the
capital contribution by PCCW (for its share).&nbsp; </p>

<p>So combining the 3 facilities, the debt market might need to
advance a total of US$9bn to PCCW, IPBC and for the Cyberport - in effect
rolling over the existing $9bn bridging loan. The bankers are going to be busy... </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=39425">Telstra Corporation Limited</a></li>
				
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