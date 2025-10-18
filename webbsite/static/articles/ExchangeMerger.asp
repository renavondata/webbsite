
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

<script type="text/javascript">document.title="Flotation of Exchanges not in the Public Interest";</script>

	<div class="summary">Why the HK Government's proposal to merge the stock and futures exchanges is commendable, but the proposal to float the merged entity is against the public interest.</div>

<h2 class="center">Flotation of Exchanges not in the Public Interest<br>
<span class="headlinedate">3 March 1999</span></h2>
<p>In today's budget the Financial Secretary announced plans to merge the
Stock Exchange of Hong Kong, the Hong Kong Futures Exchange and the respective clearing
companies. This is a commendable move which should serve to increase the efficiency of
market trading and settlement and to allow a technological upgrade and the abandonment of
many anachronistic features, particularly in the case of the Stock Exchange.</p>

<p>Unfortunately, it didn't stop there. The government proposes that the
enlarged entity should be listed on the combined Exchange. That is, it should become a
for-profit entity. In the past, it has been clear that the exchanges and clearing
companies should essentially be non-profit entities with any surpluses reinvested in
market infrastructure or reserves, not distributed to shareholders.</p>

<p>In the case of the SEHK, the Memorandum and Articles provide that the
Exchange shall not pay any dividends to its members, and that its assets will only be
distributed to them upon a winding up. Of course, since the SEHK has no plans to
voluntarily go out of business, a winding up was always a highly unlikely event. Like the
HKFE, its existence as a monopoly is mitigated by the fact that it is supposed to provide
services essentially at cost.</p>

<p>Levies and fees are set to provide a secure but low-cost trading
environment and allow for reinvestment in market infrastructure. For example, Hong Kong
Securities Clearing Company has successively reduced its fees as its operating costs have
reduced, benefiting all market participants.</p>

<h3>What's the real reason for this move?</h3>

<p>The motives behind the shake-up are unspoken but laudable. For years it
has been clear that the structure of the SEHK has been anachronistic. Its rule-making
bodies are dominated by small brokers, who have held back its development in the following
ways:</p>

<ul>
  <li>membership of the SEHK is limited to a fixed number of
    trading &quot;seats&quot;, each attached to one of the 929 shares. This creates an
    artificial value on memberships which would not exist if they were simply issued on a
    &quot;demand&quot; basis, that is, to any suitably qualified and adequately capitalised
    applicant. Remember that the SEHK is supposed to be non-profit, so on a going-concern
    valuation basis, the memberships yield no income and should be worthless. In a
    demand-based system, memberships would not be transferable and would simply lapse on
    surrender. Membership numbers would fluctuate based on demand.</li>
  <li>the greatest justification for the &quot;seat&quot; system
    has been the physical limit on space in the trading hall. However, for many years, the
    trading hall itself has been unnecessary as electronic trading systems have made it
    possible to place orders from terminals all over the city. The members have sought to
    preserve the trading hall partly so as to justify the limitation on membership.</li>
  <li>by limiting the number of memberships, small brokers (who
    held the great majority of seats when the 4 predecessor exchanges were merged into the
    Unified Exchange in 1986) were able to dominate the rule-making bodies of the Exchange.
    This has held back development in a number of key areas:
	<ul>
	    <li>Commissions are not freely negotiable between brokers and
	      clients, but are subject to a minimum set by the Exchange of 0.25%. That is, there is not
	      a free market in the cost of using the free market.  </li>
	    <li>Investment in systems such as a modern electronic news
	      dissemination system have been slow. We are still in the realm of a text-only teletext
	      system with announcements physically delivered to the Exchange.  </li>
	    <li>The gradual move to electronic trading has been prolonged,
	      with the gradual introduction of &quot;second terminals&quot; and then &quot;third
	      terminals&quot; in off-exchange offices. No mechanism yet exists for electronic interface
	      between these terminals and the brokers or their clients' systems. All orders have to be
	      keyed in by hand.</li>
	</ul>
  </li>
</ul>

<p>In addition to the problems with the SEHK, there have been clear
difficulties with running the futures exchange (many of whose products relate to equities)
separately from the stock exchange, in terms of overlapping products and lack of harmony
in rules.</p>
<h3>Wake-up call</h3>
<p>More recently, the government has gained new motivation for
restructuring the market. During the 1998 intervention, it had to deal with several
different bodies that weren't all singing from the same song sheet. For example, the stock
clearing company initially opposed the enforcement of T+2 settlement on practical grounds,
and allowed some firms to late-settle shares that they sold during the D-Day intervention
of 28-Aug-98, increasing the amount of stock the government ended up with. Meanwhile, the
HKFE opposed several of the measures which the government requested in an effort to
increase transparency and restrict the activities of major players in the stock index
futures market. At the SEHK, brokers objected to moves to require disclosure of beneficial
ownership of clients.</p>

<p>All of this has increased the government's resolve to remove some of
the vested interests and take a greater involvement in stimulating structural change. It
also plans to take new legal powers to direct the activities of the two exchanges and
bypass their regulation by the SFC, something it assures us it will not normally do (but
obviously would if things became too difficult). At the same time, it has required the
exchanges to become public bodies, placing them within the domain of anti-corruption laws.
This follows the acquittal of a former SEHK Council member for allegedly taking bribes in
return for the approval of seat transfers. Past scandals have included the jailing of a
former SEHK Chairman on corruption-related charges.</p>
<h3>Let's (not) Play Monopoly</h3>
<p>The SEHK and HKFE are monopolies. Protected by law, they are the only
place in Hong Kong where investors can legally trade in stocks and futures. There is
nothing wrong with monopolies as long as they don't operate against the public interest.
For example, the government is the monopoly provider of piped water, the postal system and
the airport, and that's OK with me if they are run efficiently and on a user-pays basis.</p>

<p>There are certain sectors of the economy, mostly involved in the
provision of low-level infrastructure, where it is inefficient to have more than one
player, in which case we settle for a cost-based utility. For example, it would not make
sense to have two competing water distribution companies if they both had to provide pipes
into each building to service their respective customers. Similarly, we only have room for
one airport, and creating competition by selling the runways off separately is not an
option. I contend that the same applies for the Exchange. Sure, we could have two
different stock exchanges, like Amex and NYSE, but this only creates extra costs for
brokers and investors as they need two sets of accounts, two sets of dealing systems and
so on.</p>

<p>Turning the Exchanges into a listed entity would work against the
public interest. Suddenly, we would have a listed monopoly which has a fiduciary duty to
maximise the profit it makes from people who trade securities and futures. Small brokers
would have a golden windfall as they could sell their membership (their stock in Newco)
while retaining their trading rights on the Exchange. Kind of like having your cake and
eating it. Alternatively, if they keep their stock, they will get dividends which they
never had before. Perhaps this windfall is what it will take to get them to approve the
scheme voluntarily.</p>

<p>With no competition, and the duty to maximise profits, there is no
reason to think that development of the market infrastructure would be prioritised by a
listed Exchange. Certain people may argue that there is sufficient competition between the
SEHK and other global exchanges (such as Singapore) to ensure fair play, but this is not
the case so long as there are barriers to cross-border exchange membership, price
dissemination and dealing. That argument is about as valid as the suggestion that Changi
airport keeps landing fees at Chek Lap Kok in check. They are in two different places
serving two different markets.</p>
<h3>Corporate Governance</h3>
<p>If the combined Exchange lists, then what if someone decides to take it
over by buying up all the shares? Will limits be placed on individual shareholdings in the
Exchange? What about groups of shareholders acting in concert? This is probably the most
difficult thing to prove. Initially, of course, the largest group of shareholders would be
small brokers. In the past, the non-profit nature of the Exchange meant that they had no
motive to set excessive trading levies or listing fees - it came straight out of their own
pocket. But in a profit-making future, if someone, or a group of people, has control of
the Exchange, then would they be free to set whatever trading levies they choose? We have
to presume that the government will come up with some kind of &quot;scheme of
control&quot; to allow a &quot;fair&quot; rate of return to the Exchange (whatever
&quot;fair&quot; means - how much risk are we talking about here?). That turns it more
into a utility. Do we really need another listed monopoly?</p>

<p>Another result of creating a listed exchange is that, to the extent
that part of its income derives from a levy on stock trading, it has a direct motive to
encourage increases in volume for volume's sake. You may think this is a good thing if it
creates liquidity, but it is a bad thing if it encourages speculation and a return to the
kind of day-trading frothy market that we saw in 1997. Would the Exchange be as quick to
suspend a stock if it could see half the company turning over every week? It seems that
this authority would have to be passed to the SFC to avoid a conflict of interest.</p>
<h3>What about the listing division?</h3>
<p>It would be barely credible if the Exchange, as a listed company, tried
to regulate itself. If the government proceeds with the flotation plan then the regulation
of listed companies should be removed from the Exchange to the SFC, which will then
operate along the lines of the US SEC. The SFC would regulate the merged exchange as well
as the listed companies, and the listing division of the former SEHK would be transplanted
to the SFC. This would at least remove the potential for disputes between the Exchange and
the SFC over listing rules, that has existed until now. In addition, it would remove the
risk that the Exchange would approve the listing of unsuitable companies simply to
increase its own revenue.</p>
<h3>So what's the answer?</h3>
<p>I started this piece by commending the proposed merger of the exchanges
and clearing companies. It is a long overdue move. However, there is no reason to turn the
resultant key piece of civil infrastructure into a listed, profit-oriented body. It should
exist to provide an efficient forum for the exchange of equity capital, not to profit its
owners.</p>

<p>In his speech, the Financial Secretary introduced the proposal by
reference to the success the HKMA has had in establishing the Central Money-markets Unit,
a government-owned clearing system for debt securities. The merged stock and futures
exchanges should follow the same model, with ownership vested in the government. Members
can be compensated for any financial loss they can prove in this process. It's a small
price to pay for removing the vested interests. The net asset value of the SEHK at
31-Dec-97 was HK$883m, or about $0.95m per share. That is probably the fairest basis given
that, in the absence of dividends, the only way members could ever extract the value of
their shares is by liquidation. There should not be compensation for loss of future
earnings, as it was never intended that the Unified Exchange should be a protected
for-profit monopoly. A similar valuation basis should apply to the HKFE.</p>

<p>The mandate of this nationalised entity should be to provide the most
modern and efficient market possible, at the lowest possible cost. Once owned by the
government, there is no reason why the exchanges cannot be merged with the SFC to provide
a super-regulator. Rule-making for the trading and listing of securities and the
regulation of market participants would be by the combined entity, advised by committees
of market participants. Rules would have statutory backing with the abilty to impose
financial penalties for breach. Currently the exchanges are limited to ineffective powers
of censure and suspension for breaches of their rules.</p>

<p>In turn, the SFC should be subject to the over-ride of the Financial
Secretary, which should only be exercised in extreme circumstances and, like all
government policy, his actions should be subject to legislative review.</p>
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