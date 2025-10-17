
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

<script type="text/javascript">document.title="End of The Equity Spiral";</script>

	<div class="summary">We look in detail at last week's announcement of the proposed acquisition by Pacific Century CyberWorks of Cable & Wireless HKT. The issue of inflated shares in the deal will raise our valuation per share, but PCCW is now so big that the equity spiral is over, and there's a gap of US$44bn of hope or hype in the price. Read our detailed evaluation and discover the key "crossover" point between the two offers.</div>

<h2 class="center">End of The Equity Spiral<br>
<span class="headlinedate">5 March 2000</span></h2>
<p>In a leap day announcement which represented a leap of faith by
the board of Cable &amp; Wireless plc (<b>C&amp;W</b>), they conditionally
undertook to accept an offer by Pacific Century CyberWorks (<b>PCCW</b>) for
their 54% controlling stake in Cable &amp; Wireless HKT (<b>HKT</b>). Perhaps
their biggest leap of faith is that the share price of PCCW will stay up long
enough to persuade all the other shareholders to elect to receive 100% paper
rather than the 70:30 shares:cash alternative, allowing C&amp;W to take all the
cash. </p>

<p>In this detailed review, we'll walk you through the deal,
evaluate HKT, revise our valuation of PCCW and then conclude with some comments
on what this means for the share price. Oh, and the Cyber-Port gets a mention at
the end. </p>

<h3>The Offer</h3>

<p>The basic terms of the offer, for each HKT share, are: </p>

<blockquote>

<p>0.7116 PCCW shares and US$0.929 in cash (HK$7.23 assuming
US$1=HK$7.7824) (the &quot;<b>Combination Alternative</b>&quot;); or </p>

<p>1.1 PCCW shares (the &quot;<b>Share Alternative</b>&quot;). </p>

</blockquote>

<p>There are about 12.16bn HKT shares in issue, so the maximum
amount of cash that would be paid under the offer is US$11.3bn. That's how they
arrived at US$0.929 per share. </p>

<p>The interesting thing about the two alternatives is that, if the
share price of PCCW falls below HK$18.62, then the Combination Alternative
becomes worth more than the Share Alternative. At $18.62, the Share Alternative
is worth $20.48 while the share part of the Combination Alternative is worth
$13.25, and the cash element is worth $7.23 (making $20.48, ignoring dealing
costs).&nbsp; </p>

<p>Shareholders are also allowed to apply for an &quot;<b>Increased
Cash Election</b>&quot; which represents the distribution of any cash element
that other shareholders don't want (because they've elected to receive the Share
Alternative). In other deals, this has been called a &quot;mix and match&quot;
election. </p>

<h3>What C&amp;W is doing</h3>

<p>C&amp;W, the 54% shareholder of HKT, has undertaken to choose
the Combination Alternative and make the Increased Cash Election. If you don't
want the cash, they do. If everyone else goes for the Share Alternative,&nbsp;
then C&amp;W will get the whole US$11.3bn (and <b>11.2%</b> of PCCW). This
undertaking means that it is a certainty that PCCW will end up paying out the
full amount of cash if the offer proceeds, and there is no chance that they will
be able to do the whole deal with paper. The question is not whether they will
pay out the cash, but who gets it. </p>

<p>In fact, C&amp;W are so keen to receive cash that they are
trying to by-pass the distribution process by offering (through Merrill Lynch)
to sell PCCW shares directly to people who elect for the Combination Alternative
(the <b>C&amp;W FE Offer</b>). </p>

<p>The C&amp;W FE Offer is to sell PCCW shares at HK$18.62 per
share (the crossover point of the two offers). So $7.23 from the Combination
Alternative buys 0.388 shares. If the PCCW share price falls below this level,
then most people will choose the Combination Alternative and will not be willing
to take the C&amp;W FE Offer. However, if the PCCW price is more than $18.62,
then choosing the Combination Alternative plus the C&amp;W FE Offer will give
them exactly 1.1 shares, the same as the Share Alternative. The only difference
is that the cash they could have had goes directly to C&amp;W, by-passing other
shareholders who might want it. </p>

<p>Besides C&amp;W, there are two large shareholders - China
Telecom and the <a href="http://www.info.gov.hk/hkma/" target="_blank">Hong Kong
Monetary Authority</a> (through the Exchange Fund). It would be interesting to
know whether they have decided to accept the Combination Alternative and the
C&amp;W FE Offer, thereby assisting PCCW to provide the maximum amount of cash
directly to C&amp;W. </p>

<p>It therefore becomes crucial to C&amp;W that the PCCW price does
not fall much below $18.62. If the price drops to say, HK$17, then most rational
HKT shareholders (possibly including the HKMA and China Telecom) will elect for
the Combination Alternative (or simply not accept). That would leave C&amp;W
with only US$6.1bn (its 54% share of the cash) and <b>20.9%</b> of PCCW. </p>

<p>C&amp;W has already said that it will sell 4% (around US$2.5bn)
of PCCW <i>&quot;as soon as practical following completion of the Offer&quot;</i>.
This would take it below 20% which is important to the accounting treatment of
the disposal. If C&amp;W's stake in PCCW is less than 20% then it is accounted
as an &quot;investment&quot; while 20% or more makes it an
&quot;associate&quot;. As an investment, C&amp;W can carry it at cost (and book
a full profit on the sale of HKT) rather than writing off the enormous amount of
goodwill in PCCW that equity accounting an associate would require. </p>

<p>C&amp;W has also agreed with <a href="http://www.cmgi.com/" target="_blank">CMGI</a>
to swap of US$500m of PCCW stock (about 1% of the enlarged company) for the same
amount of new CMGI shares. Out of the CyberWok (you heard that term <a href="pccyberwok.asp" target="_blank">here</a>
first) and into the frying pan, you might think, but at least it's
diversification. </p>

<p>If the PCCW price stays above the crossover point and C&amp;W is
able to get all of the US$11.3bn in cash and 11.2% of PCCW, then by placing 4%
and swapping 1% with CMGI it will be down to 6.2% of PCCW, or around 1.4bn
shares. </p>

<p>Other than that, C&amp;W has agreed not to sell any more for 6
months and then hold at least half its original holding (5.6%) for a further 6
months. </p>

<h3>So is it a done deal?</h3>

<p>Not quite. The acceptance by C&amp;W's board is subject to its
own shareholders' approval in general meeting. C&amp;W has irrevocably
undertaken <i>&quot;subject to certain conditions and qualifications&quot;</i>
to recommend to all C&amp;W shareholders that they vote in favour of the deal.
If a better offer came along before that meeting, then we believe the board
would have a fiduciary duty to put that to shareholders, who would presumably
reject the PCCW offer and approve the better offer. </p>

<p>In a tactic borrowed from America, C&amp;W and PCCW have agreed
that C&amp;W would pay PCCW US$100m in the event that C&amp;W does not recommend
the deal to its shareholders or that shareholders do not vote in favour <i>&quot;or
in the event that a higher competing offer becomes wholly unconditional&quot;</i>.
For what it is worth, the deal is symmetric - i.e. if PCCW or PCRD (its parent)
do not recommend the deal to their respective shareholders then they must pay
the same termination fee. </p>

<p>The termination fee would be a minor consolation to PCCW and
would probably be mostly absorbed by advisors' fees. It means that a better
offer would have to be better by at least US$100m. The fee does, however, give
C&amp;W shareholders a small deterrent to voting against the deal without a
better one on the table. </p>

<p>It is notable that we have not seen any other major telecoms
players entering the fray. C&amp;W signalled its willingness to deal in early
February with the announcement of the proposed merger with Singapore Telecom, so
there was plenty of time for others to raise a hand by now. We might have
expected major players such as British Telecom (which already has a stake in
SmarTone) or AT&amp;T (which once had a stake in SmarTone), Deutsche Telekom or
MCI Worldcom to have made a play. Sadly not -&nbsp; perhaps they felt that HKT
was already fully priced and offered an unattractive story. </p>

<h3>What is HKT really worth?</h3>

<p>HKT is a former monopoly utility competing in a fierce market
place. Chief Executive Linus Cheung said in Jan-00 that profits were not
expected to grow again until at least the year ending Mar-02. </p>

<p>Meanwhile, the final monopoly of the international gateway
disappeared on New Year's day, and soon new licensees will be laying their own
international cable as well as making their own satellite uplinks. So HKT will
not only have continued fierce competition in the IDD sector but will lose
pricing power over bulk international circuits. </p>

<h4>Cellular </h4>

<p>On the cellular side, HKT has some 925,000 accounts. Mobile
phone take-up in HK is reaching saturation levels and competition has become
fiercer following the advent of number portability, which allows customers to
change providers and take their number with them. This competition is coupled
with a continued need for investment to upgrade equipment. The industry has
already switched from analogue to digital. In HKT's case, it has a GSM network
and a legacy D-AMPS network (a standard which was popular in the states, but is
the only such network here, inherited when it bought Pacific Link from First
Pacific). </p>

<p>The major operators are now sinking money into GPRS (General
Packet Radio System) which will be available at the end of the year, and soon
after that they will have to invest in third generation (3G) equipment to
provide the new broadband cellular access. This continual upgrade cycle is great
for the equipment makers but tough for the operators - every time they start to
see a profit, they have to write-off the equipment and start again. This was
responsible for part of the write-off seen in HKT's Sep-99 interim results. They
also took a HK$608m write-off of &quot;deferred mobile customer acquisition
costs&quot; meaning the cost of winning business which they had not previously
expensed. Such costs are now written off over 12 months. </p>

<p>There is a potential threat to competition caused by the Li
family dominance of the cellular sector, as <a href="http://www.hutchnet.com.hk/eng/mobile/orange/" target="_blank">Hutchison</a>
reported some 1,160,000 accounts (34% of the market) in Aug-99 (when it also
wrote off HK$1,657m of customer acquisition costs). The two firms together
probably have two thirds of the cellular market. </p>

<p>In January there was a simultaneous move by most operators to
raise tariffs by very similar amounts, and after <a href="http://www.ofta.gov.hk/" target="_blank">OFTA</a>'s
intervention they later agreed to roll back the increases without admitting
collusion. The regulator still lacks sufficient powers to impose punitive fines
relative to the amounts involved in the business, and let's face it, revokation
of licenses is never a serious option. That said, there is still independent
competition to Li-phones from <a href="http://www.smartone.com.hk/" target="_blank">Smartone</a>
(backed by Sun Hung Kai Properties and British Telecom), <a href="http://www.sunday.com/" target="_blank">Sunday</a>
(currently being floated), <a href="http://www.peoplesphone.com.hk/" target="_blank">People's
Phone</a> and <a href="http://www.nwmobility.com/" target="_blank">New World</a>.
The last 3 of these are PCS operators, while Smartone has a GSM network and is
one of the new wireless FTNS licensees. </p>

<h4>Broadband and regulation </h4>

<p>Sure, HKT has a broadband internet network, but so far this has
seen limited take-up in the residential sector, with 22,000 customers on
broadband and 389,000 still on dial-up. </p>

<p>As HKT's broadband take-up gathers pace in 2-3 years, there
should&nbsp; be full-blown competition with the new wireless FTNS operators,
Wharf's i-Cable modems and even 3G cellular systems providing broadband access.
This should, in theory, make the pricing highly competitive. </p>

<p>In the case of cellular systems, they may still have to connect
their base stations to the main switches over HKT fibre. In the case of the
wireless FTNS operators, their MMDS microwave systems on the hilltops may also
reach the switches over HKT fibre unless one of the other 3 wired FTNS operators
can provide it. Finally, since HKT owns 97% of fixed lines (and almost 100% of
residential fixed lines) most voice calls will still travel over the HKT network
at some point. </p>

<p>All of this can potentially give rise to pricing issues on the
necessary interconnections with HKT and on leased lines provided by HKT. Nobody
knows that better than PCCW's MD, Alex Arena, who is former head of regulator
OFTA. He literally knows HKT outside-in. </p>

<p>At the receiving end of wireless FTNS, agreement will have to be
reached to get the last few hundred feet of access from the roof-top of tower
blocks down the coaxial TV backbone and into the homes. Currently that backbone
is shared by Cable TV and satellite systems including Star TV. An i-Cable
subsidiary installs about half of such rooftop &quot;SMATV&quot; systems. </p>

<p>So it is essential that the current OFTA people get a firm grip
on these issues. Of course, the regulator is an arm of the same Government which
awarded the Cyber-Port project to Pacific Century Group without tender. We can
only hope that the public interest is placed ahead of any pressure to tilt the
regulatory playing field back towards PCCW-HKT. </p>

<h4>Valuation </h4>

<p>In the absence of the regulatory framework being tilted heavily
back towards HKT, the prospects for profit recovery are poor. </p>

<p>For a fair valuation of HKT, we must look beyond the inflation
caused in the HKT price by the tussle between SingTel and PCCW. Prior to the
bid, the consensus earnings estimate for HKT in the coming year to Mar-01 was
HK$0.69 per share, down from $0.964 in the year to Mar-99. As recently as
9-Feb-00, before bid talk surfaced, HKT was trading at $16.85. At least part of
this was hype surrounding its possible spin-off of portal <a href="http://www.netvigator.com/" target="_blank">netvigator</a>
(presumably including its dial-up and broadband &quot;ultraline&quot; service). </p>

<p>We find it difficult to value HKT at more than 20 times its
forward earnings. At heart It is a an old utility monopoly facing the full glare
of competition and a capital expenditure binge to keep up with advancing
technology. At about HK$14 per share, that values HKT at HK$170bn (<b>US$21.9bn</b>). </p>

<h3>The Biggest Margin Loan in Asian History?</h3>

<p>We would probably have to look back to the days of the leveraged
buy-out of RJR Nabisco in the late 1980s to find a leveraged takeover on this
scale. PCCW has lined up a 364-day bridging loan reported to be US$12bn in size
in order to finance the offer. This happens to be the sum of the US$11.3bn cash
element and the US$0.7bn dividend that HKT will pay out. </p>

<p>Compared with our valuation of US$21.9bn, this loan amounts to
55% of value. </p>

<p>Note also that with a consensus earnings forecast for HKT of
around HK$8.4bn (US$1.1bn) in the year to Mar-01, most of this perhaps (US$0.9bn
p.a.) will be absorbed by interest payments on the US$11.3bn of debt used in the
offer. </p>

<h4>US$2bn in HKT </h4>

<p>It is true that there is around US$2bn of cash in HKT's balance
sheet, probably after the dividend has been paid. Access to that cash depends on
PCCW being able to effect a 100% takeover. Otherwise any minority shareholders
may object to the cash being removed except by dividend. </p>

<p>That is probably why PCCW is proposing a &quot;scheme of
arrangement&quot; (assuming HKT approves). That's an all-or-nothing deal. By
contrast, in a general offer, it is possible to end up with less than the 90% of
the shares under offer, leaving the purchaser unable to compulsorily acquire the
minority interest. </p>

<p>In the proposed scheme of arrangement, unlike a privatisation,
PCCW will only need the approval of 75% of those who vote at the court meeting
rather than 90%. C&amp;W, China Telecom and the HKMA have almost the required
75% between them, enough to ensure that the deal is approved. </p>

<p>In our previous report we estimated that there is about US$1.3bn
of uncommited cash in PCCW after its recent placing. Some of that will be
absorbed by recently announced transactions. Hicks, Muse Tate &amp; Furst has
agreed to subscribe US$500m of sub-ordinated convertible notes in PCCW, but that
is the same amount that PCCW has committed to a joint venture capital fund with
the investor, so it does not add to the uncommitted cash. </p>

<p>It therefore seems likely that most of the debt taken on for
this deal will need to be repaid or refinanced within one year by either selling
assets or minority stakes in them. Perhaps we will see Netvigator or the mobile
CSL spun off at high velocity onto GEM. </p>

<h3>So What does this do to PCCW's valuation?</h3>

<p>We <a href="justhangup.asp" target="_blank">previously estimated</a>
the fair value of PCCW (prior to the HKT deal) at US$7.5bn. As we explained
then, allowing for the conversion of the outstanding convertible bonds and the
shares under option to Intel (which must eventually be converted) there would be
a fully diluted 13.5bn shares in issue (ignoring executive options). </p>

<p>Now under the HKT offer, 8.65bn shares will be issued, taking
the total to 22.15bn. Add on the fair value of HKT (US$21.9bn) and take away the
US$11.3bn that is being paid out in the cash element of the offer. We will
ignore the final dividend on the assumption that it absorbs all the net cash
generated since HKT's Mar-99 accounts. This leaves you with a fair value for
PCCW-HKT of&nbsp; <b>US$18.1bn</b> (HK$141bn), or about <b>HK$6.40</b> per PCCW
share, assuming the deal completes. </p>

<p>The pro forma market value of PCCW-HKT is HK$485bn (<b>US$62.4bn</b>).
The difference between our fair value and the market value is a &quot;hope or
hype&quot; value of US$44.3bn. </p>

<p>In our previous analysis of we urged the board of Cable &amp;
Wireless to look closely at the value of the paper they were being offered. It
seems they have at least taken this on board, because they have elected to
receive as much cash as possible in the takeover. </p>

<p>Since our previous analysis, the shares have fallen 17% from
$26.35 to the closing price on 3-Mar-00 of HK$21.90 per share. If the shares
fall another 15%, everyone will want the Combination Alternative.&nbsp; </p>

<h3>The end of the equity spiral</h3>

<p>We commented before on how PCCW has successfully increased its
fair value per share by issuing shares at higher and higher prices for placings
and acquisitions. The HKT deal is by far the biggest yet, and it increases fair
value from HK$4.30 to $6.40 per share. Finally PCCW has a real (but dull)
business. </p>

<p>The problem is, with a post-deal market value of US$62bn, that
game is practically over. PCCW cannot go on making larger and larger
acquisitions and share issues in order to fatten its fair value per share,
because the deals would have to be enormous in order to materially raise the
value per share. </p>

<p>Each deal averages the value of the existing assets and the
acquired assets over the enlarged pool of shares. For example, a US$6bn placing
at HK$21 per share would only raise fair value to HK$7.70. Even a deal to buy a
company worth US$50bn with paper would only raise the fair value to about
HK$13.30 per share. </p>

<p>After the index-chasers have had their fill, we expect a major
correction in the share price. You might think that the stock is tightly held
and demand from index-tracking fund managers will hold it up, but think again.
C&amp;W will sell out almost all of their holding, and Pacific Century Group
will only hold around 40% of the enlarged company, no more than, for example,
Wheelock holds in Wharf. In other words, there should not be any shortage of
stock. </p>

<p>As the price falls, the &quot;delta neutral&quot; covered
warrant issuers who have been so busy buying up the paper in the last few weeks
will turn around and dump it in order to keep their hedges straight. That's how
covered warrants work - they amplify the effect of price movements in both
directions. </p>

<h3>A note on the Cyber-Port</h3>

<p>The announcement of the HKT deal states: </p>

<blockquote>
  <p>&quot;At this point the Cyber-Port Project is documented only
  by a non-binding letter of intent between the Hong Kong Government and PCCW's
  controlling shareholder, the Pacific Century Group. The development of the
  Cyber-Port project has commenced; the first phase is to be completed by the
  end of 2001....&quot; </p>

</blockquote>
<p>This is a very strange deal when work is already underway but no
binding agreement has been struck. The Government had previously stated that the
deemed land value (for its equity stake in the joint venture) would be
determined at the time that the definitive agreement was entered into. That was
expected to be by the end of 1999. So what is the hold-up, we wonder? And what
is the land deemed to be worth? </p>

<h3>Advisers Galore</h3>

<p>If you've noticed a wall of silence from respected firms on this
deal, that's because most of them are working on it and so are not allowed to
comment. </p>

<p>Warburg Dillon Read (part of UBS) and BOCI (part of Bank of
China) are making the offer on behalf of PCCW, which also gets &quot;strategic
and general&quot; advice from CSFB. Meanwhile HSBC, BOCI (Bank of China), BNP (owner of BNP
Prime Peregrine) and Barclays are the leaders of the debt syndicate.&nbsp; </p>

<p>Merrill Lynch and Greenhill &amp; Co are advising C&amp;W.
Goldman Sachs was or is advising Singapore Telecom. Jardine Fleming is advising
HKT. Salomon Smith Barney is advising Pacific Century Regional Developments. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=375">CABLE & WIRELESS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=368">PCCW-HKT Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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