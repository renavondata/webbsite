
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

<script type="text/javascript">document.title="Open Rip-offers";</script>

	<div class="summary">Eel-feed maker Corasia Group has announced an open offer of 1 new share for every share held, at a 76% discount to the previous price. We explain why deep-discount open offers should be banned because they force shareholders to either pay up or lose value. Unlike rights issues, you cannot just sell your entitlements to recover the bonus issue which is hidden in the offer. Meanwhile, independent shareholders of Corasia should vote against the offer.</div>

<h2 class="center">Open Rip-offers<br>
<span class="headlinedate">11 October 1999</span></h2>
<p>Eel-feed maker Corasia Group has today announced an open offer
of 1 new share for every share held, at $0.10 per new share. That's a 76%
discount to the previous market price of $0.42 per share. We explain why deep-discount open offers should be banned
      because they force shareholders to either pay up or lose value.
      Unlike rights issues, you cannot just sell your entitlements to recover
      the bonus issue which is hidden in the offer.</p>

<p>Independent shareholders of Corasia should consider voting this
issue down at the Special General Meeting on 19-Nov-99. Under the listing rules,
the controlling shareholder must abstain from voting because the issue is
equivalent to more than 50% of the existing issued shares.</p>
<p>The underwriter of Corasia's open offer is Times Securities Company,
which was also the underwriter of a similar open offer by leather garment
company China Elegance
International Fashion in August of this year. That offer was of 4 new shares for
every 10 held (you might think it was 2 for 5) at a 74% discount.</p>
<p>These open offers expose a weakness in the Hong Kong listing rules,
and it is high time that it was strengthened to international standards. Bear
with us as we explain the crucial
difference between an open offer and a rights issue.</p>
<h3>Open offers v. rights issues</h3>
<p>In a rights issue, each shareholder (except overseas
shareholders) is offered a certain number of new shares in direct proportion to
the number of shares he or she holds. For example, in a &quot;1 for 2&quot;
rights issue, a holder of 1,000 shares has the &quot;right&quot; to buy 500 new
shares.</p>
<p>However, if the shareholder is either unable or unwilling to
subscribe for the new shares, then he can sell the rights &quot;nil-paid&quot; in
the market. The rights are effectively short-lived warrants, because until the
end of the dealing period, they can be purchased and then the rights can be
exercised to take up the new shares. The rights are basically worth the
difference between market price and subscription price.</p>
<p>This mechanism provides an important function because it allows shareholders to keep their existing shares while at the same time receiving
the value of their entitlements. In addition, in the case of overseas
shareholders (meaning those whose addresses as shown on the share register are
not in Hong Kong), their rights are sold in the market and any proceeds are then
sent to those shareholders, protecting their investment.</p>
<p>By contrast, in open offers, there is no such trading of the
entitlements. The entitlements are firmly attached to the shares, and the only
way out is to sell the shares in the market before the &quot;record date&quot; for entitlements.
That creates a rush for the exit, and it's why Corasia's shares fell 25% today
to $0.315. When China Elegance International Fashion announced its open offer in
July, the shares fell 34% in the first day.</p>
<p>Even if you want to be &quot;cash neutral&quot; on the offer,
you have to sell sufficient shares (at a depressed price) to take up the entitlements attached to the
rest. Otherwise, you lose the value of the built-in bonus issue (see
below).</p>
<p>Overseas shareholders in an open offer get the worst deal
because they are not offered any new shares at a deep discount, nor are they given the value of
their rights. So when the discount is deep, they suffer a severe erosion of value.</p>
<h3>The built-in bonus issue</h3>
<p>Bonus issues are basically the distribution of free new shares in proportion
to the existing shares held. Like stock splits, they result in an increased number
of shares in issue without any new funds flowing into the company. Therefore the
value of the company stays the same, but the price per share goes down and the
number of shares goes up. The resultant shares are like smaller slices of the
same pie.</p>
<p>Each rights issue or open offer has a built-in bonus issue due to the discount
in the issue price. For example, if a company with a market share
price of $10 offers 2 new shares at $5 per share for every 10 shares already
held, then this is just the same as offering you 1 new share at $10 (the market price) and,
if you take it, then you get 1 free &quot;bonus&quot; share. So you end up with
11 shares at $10 plus 1 bonus share. Hence the bonus issue in our example is a
&quot;1 for 11&quot; bonus issue.</p>
<p>If you don't take up your rights, or sell them, then you will
lose the value of the bonus share. In our example, the theoretical ex-rights
price (after the rights issue) would be $9.17, and the passive shareholder would
have lost 8.3% (1/12) of the value.</p>
<p>In the case of Corasia, based on the closing price of $0.42 and
the issue price of $0.10, the theoretical ex-rights price is $0.26 (being a 1
for 1 issue, it's just the average of the two). So if you don't take up, you
stand to lose 38% of the value.</p>
<h3>Snooze and lose</h3>
<p>Even in rights issues, Hong Kong rules have long been punishing to dormant
shareholders. If you are on a long holiday (or dead) when a rights issue
happens, then you snooze and lose. Nobody will sell your rights for you, and you
will lose the value of the nil-paid rights when they expire. The minimum period
in which a rights issue must be open in HK is only 14 days, so keep your
holidays short and plan your estate well.</p>
<p>In the UK, the listed issuer is obliged to get the best possible
price in the market for the shares which are not taken up by the rights holders, and to
forward the proceeds (in excess of the subscription price) to such rights
holders. That protects shareholders who may not know about the issue in time, and
also deals with the estates of deceased shareholders while their executors sort
out the will.</p>
<p>In Hong Kong, by contrast, although the UK treatment is
available under the listing rules, almost no issuer follows it.&nbsp; Instead,
those rights which are not exercised
are made available to other shareholders, who can make &quot;excess
applications&quot; for additional rights beyond their entitlement. If the
subscription price is less than the market price near the end of the issue
period, then it nearly always pays you to apply for such
excess shares, since you will be taking money from fellow shareholders who have
let their rights lapse. Controlling shareholders are usually in a position to
know how many acceptances have been received at a late stage, and to make a
large excess application if it is worthwhile.</p>
<h3>No sale of rights, and no excess applications</h3>
<p>In the case of Hong Kong open offers, you can't sell your
rights, and there is not even an
excess application mechanism to allow other shareholders to benefit from
discount shares not subscribed by other shareholders. Instead, any shares not
taken up by the shareholders are taken up by the underwriters. This can be
highly attractive when the shares are offered at such a deep discount.</p>
<p>For example, in the recent issue by China Elegance, only 57% of
the entitlements were taken up at $0.01 each, despite the fact that the share
closed at $0.032 on the last day of the offer, 220% higher than the offer price.
The underwriter had sub-underwritten the issue to a company called Sino Asia
Investments Limited and a person called Yau Mei Han, who together ended up with
12.3% of the enlarged company. The shares are now trading at $0.056. China
Elegance is one of Hong Kong's most habituous share issuers, but that story can
wait for another time.</p>
<h3>Open Offers elsewhere</h3>
<p>The original purpose of open offers in other jurisdictions was
to allow shares which have been issued in consideration for an acquisition to be
offered back to shareholders by the vendor, or for shares issued in a
discretionary placing to be offered back to shareholders in the same way, in
each case when the shares were issued either at a small discount or even at a
premium to market price (for example, to a new strategic shareholder). In such
cases, the rights to subscribe for the shares would not be worth much and it was
felt unnecessary to have trading in such rights..</p>
<p>By abusing this process, Hong Kong issuers have found a way to
effectively place shares at a 76% discount with selected sub-underwriters,
subject only to clawback by existing shareholders, who have no ability to sell
their rights or apply for excess. That's a gross distortion of what was intended.</p>
<p>In the UK, open offers are limited to a 10% discount to market
price, to prevent serious value erosion resulting from the built-in bonus issue.
Furthermore, although there is no trading period, the entitlements must be
transferable. The discount is enough to put off most companies
who wish to conduct large issues, and they opt for rights issues instead, as these can
be done at deeper discounts to increase the chance of success. In Singapore,
open offers are not even contemplated by the listing rules.</p>
<h3>Recommendation</h3>
<p>There is no good reason for Hong Kong to deviate in this way.
Open offers of shares should be limited to
a 10% discount or banned altogether. For issues of a new class which have not
been previously listed (such as preference shares), all such offers should be
made by way of rights to prevent the same erosion of value.</p>
<p>At the same time, the Exchange should scrap
the excess rights system and require that any shares not taken up shall (if a
premium can be obtained) be sold in the market and the proceeds (net of the
subscription price) shall be sent to the relevant shareholders. Currently that
treatment is reserved for overseas shareholders.</p>
<p>Meanwhile, we urge independent shareholders of Corasia to vote
against the open offer at the SGM scheduled for 19-Nov-99.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=6044">Congyu Intelligent Agricultural Holdings Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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