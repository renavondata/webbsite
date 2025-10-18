
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

<script type="text/javascript">document.title="Icing on the Cake";</script>

	<div class="summary">In the latest development in the proposed merger of the Hong Kong Stock and Futures Exchanges, it has been suggested that HKEC will underwrite the value of trading rights by offering to buy them back from brokers, in addition to giving them shares in the new company. We explain how future technology will create a surplus of trading rights, and that HKEC will end up buying something that nobody else wants. We argue the case for nationalisation of the exchanges.</div>

<h2 class="center">Icing on the Cake<br>
<span class="headlinedate">26 July 1999</span></h2>
<p>Before jetting off to South Africa this weekend, Financial
Secretary Donald Tsang met with the Chairmen of the Hong Kong Stock and Futures
Exchanges and banged their heads together (metaphorically, we hope) in an effort
to reach a deal on the merger, apparently proposing a 70:30 deal in favour of
the SEHK, or the alternative brute-force approach known as &quot;Plan B&quot;. </p>

<p>Any man with a stick usually carries a carrot, and now we hear
that HSBC, the Government's adviser, is considering a proposal under which the
enlarged company (Hong Kong Exchanges &amp; Clearing, or HKEC) would grant put
options to the brokers, allowing them to sell their trading rights back to HKEC
at a fixed price. </p>

<h3>This is getting out of hand!</h3>

<p>Remember that prior to the merger, members of SEHK hold a share
in SEHK which pays no dividends and can only return capital on a
liquidation. In the merger, they will get perhaps 70% of the&nbsp; HKEC which
in future will be allowed to make as much profit as regulations allow, and will
distribute dividends to shareholders. In addition to owning 70% of HKEC,
existing members of SEHK would get to keep their trading rights. </p>

<p>On top of this, HKEC will be allowed to profit in future from
the clearing system. To recap from a <a href="uturn.asp">previous article</a>,
the clearing company, HKSCC, through which nearly all trades on SEHK are
settled, is a non-profit body whose customers have benefited from any surplus
made by HKSCC in the form of reduced charges. These customers (ultimately
investors) will receive no compensation for the loss of these future benefits,
and HKEC will benefit from the profits of the clearing company, adding to the
value of the shares in HKEC. </p>

<h3>Minimum Commissions - Another Carrot?</h3>

<p>In his much-mentioned but never-fully-explained &quot;Plan
B&quot;, the Financial Secretary has indicated that the Government could
legislate to force the SEHK to scrap the minimum commission rule, allowing
freely negotiated commissions. Attempts in earlier years to achieve this by
negotiation have been stymied. </p>

<p>Scrapping minimum commissions is the one thing that would cause
the most damage to the profit and loss accounts of small brokers, while bringing
the stock exchange into the 21st Century and slashing transaction costs for
investors. By way of reference, the Australian Stock Exchange scrapped minimum
commissions in 1984, while London followed in 1986. </p>

<p>We can't help wondering whether the flip-side of the threat to
scrap minimum commissions under &quot;Plan B&quot; is some understanding that
the Government will back-pedal on the move if a smooth merger takes place. This
could hold back the development of the markets for years. </p>

<h3>What are Trading Rights Worth?</h3>

<p>In its latest <a href="http://www.info.gov.hk/fsb/reinforc/doc/report-e.doc" target="_blank">policy
paper</a> &quot;<i>Reinforcing Hong Kong's Position as a Global Financial Centre</i>&quot;
the Government made an unusually astute observation when it wrote: </p>

<blockquote>

<p>&quot;When the SEHK launches its AMS3 in a year or so, the
constraint of the number of seats that a member holds on the volume of trade
that member could handle would be removed and the issue of seats redundancy
would arise in practice anyway&quot;. </p>

</blockquote>

<p>In other words, no broker will need more than one seat,
currently represented by a share in the SEHK. In the past, the number of trades
a broker could handle was physically limited by the human speed at which they
could enter orders, by hand, into a terminal on the exchange floor (that's where
you see all those people in red jackets reading newspapers these days). After a
prolonged battle, the rules were changed to allow a second terminal in the
broker's office, and then a third terminal, which is the current limit. </p>

<p>The latest revision of the Automated Matching System, AMS3, will
allow straight-through ordering from the internet and from any in-house dealing
system that a broker may have, so that the order flow per seat will be limited
only by the speed of the data lines and computers that make up the system. </p>

<p>There are 929 seats in the Exchange but only about 500 brokers,
some less active than others. In addition to those that close down in the face
of competition, those that remain in business but hold more than one seat will
be able to sell their spare seats, and we will find a glut of trading rights
pushed into the market. It is quite likely that if seats remain transferable (as
the Government has allowed, at least for 2 years) then the &quot;secondary
market&quot; price will fall below the price for new admission. Allowing
transferable trading rights also means that HKEC will have less revenue from
selling them to new market participants. </p>

<h3>The Put Option</h3>

<p>If HKEC grants holders of existing trading rights a &quot;put
option&quot; to sell their rights back to the Exchange, then the Exchange could
end up the proud owner of rights that nobody wants. It is unrealistic to expect
that there will actually be more brokers in future than there are at present.
Instead, the number is likely to shrink dramatically from the current 500 as the
market becomes more competitive and efficient. When minimum commissions are
abolished and discount brokerages arrive, then the only way to succeed in
broking will to be big and cheap. Make that <i>very</i> big, and <i>very </i>cheap.
That way you get the economies of scale that make thin margins bearable. </p>

<p>If HKEC has to buy up these trading rights, then that will
increase its borrowings&nbsp; and reduce the value of its equity. The extra
interest expense on its borrowings will reduce its future profits, and guess who
will end up paying for that? Ultimately this will allow the SFC to be more
flexible when approving increases in the fees charged to users by HKEC
(including the clearing companies), or alternatively fees will come down more
slowly than they would have done. The public pays. </p>

<p>However, in the short term, giving away put options to brokers
should decrease the value of SEHK by reducing future profits. Ironically, this
makes it harder for them to justify demanding 89%, or even 70%, of HKEC. </p>

<h3>What are we achieving here?</h3>

<p>It seems that the Government has given too much in its quest for
a negotiated settlement. Since March, they have made the following concessions: </p>

<ul>
  <li>
    <p>Listing Division (and hence listing fees) will remain with
    the Stock Exchange, not transferred to the SFC</li>
  <li>
    <p>Trading rights will be transferable for 2 years (or possibly
    longer)</li>
  <li>
    <p>SEHK is allowed to include HKSCC in its valuation, even
    though they don't actually own it.</li>
  <li>
    <p>Proposed Put Options on trading rights</li>
  <li>
    <p>Back-pedaling on scrapping of minimum commission?&nbsp;</li>
</ul>

<p>We are all for a peaceful life but not at any cost. If the
Government really believes in the reform of the Hong Kong markets and the
development of Hong Kong as a &quot;<i>Global&nbsp; Financial Centre&quot;</i>,
then it should draw a line on these talks and consider more radical moves. </p>

<h3>Nationalisation - the way to a Global Financial Centre</h3>

<p>In our <a href="ExchangeMerger.asp">original article</a> on the
merger we argued that a flotation of the exchanges was against the public
interest. In the light of subsequent events, our preferred alternative seems
more attractive than ever: the Government should demutualise the exchanges by
nationalisation. Pay off the brokers once and for all, and make the resulting
HKEC a key part of our domestic infrastructure, just like the roads, the airport
and the country parks. Incentivise the management to run HKEC efficiently, but
at the lowest possible cost to the users, not the highest possible profit for
shareholders. Continue to set listing rules by market consultation. We could
then have an Exchange which attracts investors through lower dealing and data
costs and attracts issuers through lower listing fees and investor attention, a
virtuous circle. </p>

<p>In the case of the Stock Exchange, nationalisation at the
purported value of $4m&nbsp; per share would cost about HK$3.7bn. Based on the
70:30 split, the HKFE would cost another $1.6bn, taking the total to $5.3bn, a
bit less than the Government paid HK Telecom for the removal of their IDD
monopoly. The benefits to the economy of having a Global Financial Centre here
are likely to be worth the money. </p>

<p>Perhaps the only reason against this is the perception that the
Government might be &quot;paying off&quot; the brokers, or appearing to
intervene in the &quot;free markets&quot; by forcing the sale. The latter point
is mitigated by the fact that the exchanges are antiquated monopolies and (in
the case of SEHK) protected by legislation. They are abusing this privilege by
resisting modernisation and seeking to protect what has been described as a
&quot;private members club&quot;, against the public interest. </p>
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