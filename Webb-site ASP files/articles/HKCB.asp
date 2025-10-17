
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

<script type="text/javascript">document.title="What did you expect?";</script>

	<div class="summary">By popular demand, we comment on the sale by HKCB Bank Holding of Hongkong Chinese Bank to CITIC Ka Wah Bank, and the accompanying increase in the holding of Lippo China Resources in HKCBH, which many investors were surprised did not trigger a general offer. We also take a look at the chequered past of the two banks, which were surely made for each other, and what we know about an ICAC investigation involving a former Alternate CEO of CKW.</div>

<h2 class="center">What did you expect?<br>
<span class="headlinedate">4 November 2001</span></h2>
<p>For months now, The Hongkong Chinese Bank, Limited (the <b>Bank</b>)
has been up for sale. It is wholly-owned by <a href="http://www.hkcb.com.hk/" target="_blank">The
HKCB Bank Holding Co Ltd</a> (<b>HKCBH</b>) which is listed on the SEHK.</p>
<p>The references to discussions with the eventual purchaser, <a href="http://www.citickawahbank.com/" target="_blank"> CITIC
Ka Wah Bank Ltd</a> (<b>CKW</b>) go back at least as far as 17-Apr-01 when HKCBH <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010418/LTN20010418032.doc" target="_blank">described</a>
media reports as <i> &quot;not accurate&quot;</i> (note, that does not mean they were
baseless) and that there was nothing yet to disclose. From a low of $2.025 on
5-Apr-01, the shares climbed to $3.85 on 20-Apr-01</p>
<p>The first confirmation of serious discussions came on 12-Sep-01
when HKCBH stated:</p>
<blockquote>
  <p>&quot;the Company is in discussions with [CKW] in relation to
  a possible acquisition opportunity involving certain of the Company's <u>subsidiaries</u>.&quot;
  (emphasis added)</p>
</blockquote>
<p>From this point on, the market should have been on notice that
the likely shape of the deal was that HKCBH would sell the Bank, but not that
HKCBH itself would be sold. Hence the deal was not likely to trigger an offer
for HKCBH.</p>
<p>When the deal was finally <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011102/LTN20011102016.doc" target="_blank">announced</a>
on Friday, that's exactly what happened, with the Bank (and a portfolio of
mortgage loans held by a fellow subsidiary) being sold to CKW by HKCBH for
HK$4,200m (US$538m), of which 80% will be cash and 20% in Certificates of
Deposit. The deal represents about 1.42 times the Bank's adjusted book value at
31-Mar-01.</p>
<p>This leaves HKCBH with a huge pile of cash as well as a
relatively small financial services business. It will pay &quot;not less than $1
per share&quot; as a special cash dividend after the sale. At $1 per share, that
works out at $1,352m.</p>
<h3>Shareholder approval</h3>
<p>The immediate parent of HKCBH is a company called Lippo CRE
(Financial Services) Ltd (<b>LCRE</b>), a private Cayman Islands company which
owns 58.78% of HKCBH. Hence it was able to give written approval of the sale,
and no shareholders' meeting of HKCBH is needed.</p>
<h3>How we got here</h3>
<p>To understand the rest of this deal, you need first to
understand the current ownership structure.</p>
<p>Wind the clock back to the colonial era, and you will find a
deal on 18-Jun-97, in which HK-listed <a href="http://www.cre.com.hk/" target="_blank"> China Resources
Enterprise, Ltd</a> (<b>CRE</b>)
acquired 50% of the Bank from its parent, <a href="http://www.crc.com.hk/" target="_blank"> China Resources (Holdings) Co
Ltd</a>,
which is ultimately owned by the PRC Government, for $2bn, of which $1,270m was
in cash and the balance in new shares at $25.80 per CRE share. Ah yes, those
were the days of red-chip mania - the shares closed the previous day at $27.70
and on Friday (2-Nov-01) they closed at $7.85, down 72% in a little over 4
years.</p>
<p>On the same day as CRE bought half the Bank, it turned around
and agreed to sell it to HKCBH in return for 444,444,444 new shares in HKCBH at <b>$4.50</b>
each, totalling the same price of $2bn. That's how HKCBH ended up with 100% of
the Bank.</p>
<p>The other half of the Bank was already owned by HKCBH and prior
to the restructuring, HK-listed Lippo Ltd (<b>Lippo</b>) held 349,983,996 shares (54.1%) of HKCBH.
Simultaneously, Lippo transferred this interest to another listed subsidiary,
which was renamed Lippo China Resources Ltd (<b>LCR</b>). Lippo is controlled by
the Riady family of Indonesia, who have a listed <a href="http://www.lippo.co.id/" target="_blank">group</a>
there of the same name.</p>
<p>LCR and CRE agreed to pool their total of 794,428,440 HKCBH
shares (74.42%) into a joint venture, LCRE, which was 50% owned by each of them.
As CRE put in more shares than Lippo, in order to balance the amounts, Lippo
also paid CRE a cash amount in respect of half the difference, that is
$212,536,000, or $4.50 per share.</p>
<p>The two shareholders of LCRE signed a shareholders agreement
which gave LCR and CRE equal representation in the board room, but crucially,
LCR had the right to appoint the chairman who would have a casting vote. That
casting vote means that LCRE was and is a subsidiary of LCR. Since LCR is a
subsidiary of Lippo, that meant there was no change in the control of HKCBH and
the Bank, both of which remained subsidiaries of Lippo before and after the 1997
restructuring.</p>
<p>Incidentally, you may yet be hearing more about that deal,
because according to press reports in Feb-01, a well-known local broker and 2
others had been accused of insider dealing in the shares of HKCBH and LCR in the
run up to the deal, and the Insider Dealing Tribunal was due to hear the case.
Believe it or not, the IDT still does not have a web site - so much for
transparent dealing.</p>
<p>The restructuring was completed on 2-Sep-97, and on 18-Sep-97
HKCBH placed 150m new shares at <b>$10.925</b> per share through W.I. Carr
Indosuez, raising a net $1,591m, just
before the HK market crashed.</p>
<h3>The aborted deal</h3>
<p>The destiny of HKCBH has been uncertain for literally years. At
one time, it looked like going in the opposite direction. Back on 23-Jun-98, LCR
said it was in <i>&quot;serious discussions with potential purchasers&quot;</i>
of its entire 50% stake in LCRE, and the next day admitted that one of these
potential purchasers was CRE. A conditional deal was announced on 2-Jul-98, in
which CRE would buy the 50% stake from LCR at a price equivalent to <b>$2.97</b>
per HKCBH share (a 7% premium to market), triggering a general offer, since LCRE
would become a subsidiary of CRE, giving it outright control of HKCBH.</p>
<p>That deal was conditional on, amongst other things, regulatory
consents from the banking supervisors, the Hong Kong Monetary Authority and
People's Bank of China, to be received by 30-Sep-98. The approvals were not
forthcoming, and the deal lapsed. It has never been revealed exactly why this
was the case, or how hard CRE tried to get approvals, given that the market was
deteriorating in the meantime. We leave you to speculate on what Joseph Yam
thought about the prospect of his HKMA regulating a red-chip bank.</p>
<p>Later, on 19-Mar-99, the Bank became the first in many years to
declare a loss, with HKCBH reporting a loss of $646m and a massive increase in
non-performing loans. That was quite an achievement in a cosy cartel market
where a banking license was like an ATM card on the economy.&nbsp;</p>
<h3>Unwinding the joint venture</h3>
<p>Now jump forward to the present day. At the same time as selling
off the Bank, the two partners have decided to unwind their joint venture, and
LCR <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011102/LTN20011102023.doc" target="_blank">announced</a>
it will buy 50% of LCRE from CRE (which CRE <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011102/LTN20011102025.doc" target="_blank">announced</a>
it would sell), for $1,509,414,036,&nbsp; representing <b>$3.80</b> for each of
the 794,428,440 HKCBH shares (58.78%) held by LCRE, although of course the
announcement doesn't actually spell out that price! CRE had previously <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010531/LTN20010531017.doc" target="_blank">announced</a>
on 30-May-01 that the sale of its interest in HKCBH was part of its plans, so it
should come as no surprise.&nbsp;</p>
<p>CRE also sold LCR a direct holding of 78.890,000 shares (5.84%)
of HKCBH at the same price per share, raising the total cost to LCR to $1,809m.
The dividend that LCR would receive, based on $1 per HKCBH share, is only $873m,
so the difference will have to come from their own balance sheet unless they
increase the dividend payout from HKCBH. To break even, the dividend would have
to be $2.07 per share, but don't hold your breath hoping for a higher dividend,
because at 30-Jun-01, LCR had a cash pile of $824m as well as substantial
short-term investment holdings, so it can easily afford this.</p>
<p>That purchase price of $3.80 per HKCBH share, negotiated at arms
length, was well above the market price. When trading resumed after the
announcements, the market price dived 31.5% from $3.175 to <b>$2.175</b>.
Investors clearly were disappointed by the deal.</p>
<p><i>Webb-site.com</i> was then inundated with media calls asking
about the implications under the takeover code, and whether other HKCBH
shareholders were getting a raw deal.</p>
<h3>Opinion</h3>
<p>The takeover code has always been about <i>acquiring</i> or <i>consolidating</i>
control - in current terms, that means becoming interested in 30% or more of the
voting rights, or increasing by more than 2% in any 12-month period, when your
initial holding is between 30% and 50%. If you have held 50% or more for more
than a year, then you can more or less buy whatever you like, so long as you abide by the
free float requirement.</p>
<p>LCRE has held more than 50% of HKCBH since it was established,
and has always been a subsidiary of LCR and Lippo, because of the casting vote
in LCRE. The accounts of LCR and Lippo always recorded LCRE and the Bank as a
subsidiary. Before the 1997 restructuring, the Bank was simply a more direct subsidiary of
Lippo.</p>
<p>The simple fact is, although you may not like the long pyramid of
control, HKCBH was already majority controlled by Lippo and will remain that way
after the current deal. There are many such &quot;pyramid&quot; structures in
Asia, where an ultimate controlling shareholder has a very small economic
interest in assets at the base of the pyramid.</p>
<p>LCR's economic interest in
HKCBH will increase from 29.39% to 64.62%, but its voting interest only changes from 58.78% to
64.62%. That means that minority shareholders of HKCBH have not seen any change
in control. So no takeover offer is triggered.</p>
<p>The $4,200m proceeds of the sale of the Bank represent <b> $3.108</b>
per share of HKCBH, of which $2.486 is in cash. They could certainly afford to
pay a bigger dividend than $1 per share. In general, we've never liked listed companies hanging on to
more cash than they need for their current trading requirements. It is simply an
inefficient allocation of capital. If there's no clear plan, then they should
return it to shareholders and let <i>them </i>do the investing.</p>
<h3>Why the discount?</h3>
<p>The reason why the minority shares of so many HK-listed
companies trade at such a steep discount to their underlying asset value, is the
poor corporate governance framework of Hong Kong. Investors have no idea what a
cash-rich company will do with the money, and so they discount the stock for the risk
that the money may be frittered away. They cannot be sure, as a matter of right,
that they will be treated fairly.</p>
<p>If a majority-owned company buys assets from related parties, then at least
that will be subject to independent shareholders' approval, but if it buys
assets from &quot;independent third parties&quot;, then public shareholders will
have no input. Too many companies never reveal the identity of beneficial owners
behind &quot;independent third party&quot; companies, so again investors cannot
be sure that there isn't a secret connected transaction in progress. If we had truly independent directors in
Hong Kong's board rooms, elected only by minority shareholders, then it would
increase the scrutiny of such transactions. Alas, that day has not yet come.</p>
<p>Another way for a major shareholder to extract cash is to
dramatically increase salaries or bonuses to directors, which despite being
transactions with a related party, are not subject to shareholders' approval.</p>
<p>We are not suggesting that HKCBH will do any of this, but the
risk is always there, to a lesser or greater degree, with any HK-listed company.
Only better governance rules and laws, and the ability to enforce them through a
system such as <a href="../HAMS/" target="_blank">HAMS</a>, would reduce the
discounts of controlled companies.</p>
<h3>Peaches and Cream</h3>
<p>And did they get a good price for the Bank? Well we're not
talking about HSBC here. The Bank has been a poor performer and any price above
book value must be looked at as some sort of victory. It's hard to avoid the
thought that these two banks were made for each other - both have a chequered
past riddled with &quot;problem loans&quot;, having been hit hard by the
financial crisis. Out of CKW's loan portfolio of about $20bn at 31-Dec-97,
$6.9bn, or some 35%, <i>&quot;gradually became problematic&quot; </i>as the bank
put it.</p>

<p>The former Honorary Chairman of CKW and Vice-Chairman of CITIC,
Mr Jin Deqin, resigned from CKW on 12-Apr-98 <i>&quot;due to advance age&quot;</i>
and was detained by mainland authorities 2 weeks later and subsequently
convicted of embezzlement by a PRC court. Xinhua, the mainland mouthpiece,
reported that he <i>&quot;used his official post to embezzle tens of millions of
yuan in an abominable crime and grave plot&quot;</i>. In Jun-00, at the age of
79, he was sentenced to life (or what's left of it) in jail. The full specifics of the case were never
revealed, and there was never any suggestion of a connection between the alleged
embezzlement and CKW.</p>

<p>At the end of 1997, CKW's management team&nbsp; <i>&quot;comprised
entirely of mainland bankers&quot;</i> but it has since been through a string of
management changes in an effort to import professional skills from the HK
market.</p>

<h3>Case in progress</h3>

<p>In a curious development, a young former Director and Alternate
Chief Executive of CKW, Zhang Mingqian (<b>Mr Zhang</b>), apparently committed
suicide on 2-Sep-01 by jumping from his 29th-floor flat. A spokesperson for the <a href="http://www.icac.org.hk/" target="_blank">ICAC</a> 
confirmed to the <i>SCMP </i>that&nbsp; Mr Zhang had been arrested in May-01
in connection with a corruption and fraud investigation. The spokesperson
refused to disclose whether the case involved CKW, but said the case had been
referred to the ICAC by the HK Monetary Authority. On 4-Sep-01 the <i>SCMP</i>
reported that two other people, including&nbsp; another of the bank's employees,
had been arrested.</p>

<p>The timing of Mr Zhang's arrest closely coincides with his
rotational <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010507/LTN20010507038.doc" target="_blank">retirement</a>
from the board of CKW at the AGM on 3-May-01, in which it was stated that <i>&quot;due
to job re-arrangement, [he] was not re-elected&quot; </i>which contrasts with
the statement in the directors' report dated 12-Feb-01 that he would stand for
re-election (as most directors do every 3 years). In between those dates, something must have changed.</p>

<p>Two of the HK professionals previously brought in to the group
were promoted to director the day after the AGM, and this was followed by a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010709/LTN20010709047.doc" target="_blank">change
of Chief Executive</a> on 6-Jul-01 <i>&quot;due to internal job-rearrangement in
CITIC&quot;</i>. Ah, that old job re-arrangement thing again. At the same time,
the two professionals became Alternate CEOs as well. This was followed 6 days
later by the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010713/LTN20010713036.doc" target="_blank">appointment</a>
of parent CITIC's Chief Accountant to the board of CKW, which should help the
reporting lines to Beijing.</p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1108">China Resources Beer (Holdings) Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=581">CITIC INTERNATIONAL FINANCIAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1673">HONGKONG CHINESE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1672">LIPPO CHINA RESOURCES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=356">LIPPO LIMITED (HK)</a></li>
				
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