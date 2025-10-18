
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

<script type="text/javascript">document.title="Government Concessions Widen Value Gap";</script>

	<div class="summary">The Hong Kong exchanges are at loggerheads over their merger valuations, with a key sticking point being the value of HKSCC. The Government is responsible for this, having made a U-turn on its earlier position that HKSCC should not be attributed any value. This is one of a series of concessions they have made in an effort to avoid a showdown with small brokers. We take you through the valuation debate and the wider issues discussed in the latest policy paper.</div>

<h2 class="center">Government Concessions Widen Value Gap<br>
<span class="headlinedate">13 July 1999</span></h2>
<table class="txtable center">
	<tr>
		<th class="center" colspan="2">Contents</th>
	</tr>
  	<tr>
		<td>
		    <a href="#Valuation">Valuation method</a><br>
		    <a href="#Valuing">Valuing HKSCC</a><br>
		    <a href="#Concessions">Concessions</a><br>
		    <a href="#Trading">Trading Rights</a><br>
		    <a href="#U-Turn">U-Turn on HKSCC</a>
		</td>
		<td>
		    <a href="#Listing">Listing Division</a><br>
		    <a href="#Public">Public Interests</a><br>
		    <a href="#Limit">Limit on Shareholdings</a><br>
		    <a href="#Management">Management</a><br>
		    <a href="#Minimum">Minimum Commissions</a>
		</td>
	</tr>
</table>
<p>The merger of the Stock and Futures Exchanges has predictably degenerated
into a bragging match about relative values of the two bodies, with each adviser
duty-bound to obtain the highest valuation for their client. On the one hand, Morgan
Stanley thinks members of it's client, the Hong Kong Futures Exchange, should get 48% of
the new Hong Kong Exchanges &amp; Clearing (HKEC), while on the other hand, Merrill Lynch
tells the Stock Exchange they should get 89%, leaving the Futures Exchange with 11%.</p>

<p>In this article we'll bring you up to date on the latest
<a target="_blank" href="../codocs/HKEx-ReinforcingHK990708.doc">policy paper</a>
&quot;<em>Reinforcing Hong Kong's Position as a Global Financial Centre</em>&quot; issued
by the Government on 8-Jul-99, and on the issues behind the valuation dispute. We'll
explain how the Government has given a string of concessions to the stockbroker community
in an effort to achieve an approved deal, but first we cover the valuation problem at the
root of the dispute.</p>

<h3 id="Valuation">Valuation method</h3>

<p>The basis on which both sides will most likely be valuing their businesses
is known as &quot;discounted cash flow&quot; (DCF), which basically involves predicting
future earnings and then stating them in present-day dollars. The key variable in the
discounting exercise is the &quot;discount rate&quot; - which reflects long term interest
rates, together with the market risk involved in the business of the exchange.</p>

<p>Before you can discount future cashflow, you have to agree on what that
cashflow will be. So even if both sides can agree on the same rate of discount, they will
argue about how much profit each is expected to make in the future. This in turn depends,
amongst other things, on how lax the Government (through the SFC) is in policing the fees
and charges that the HKEC will propose for its monopoly businesses. We'll come on to that
later. A second factor is just how much business there will be. It is no coincidence that
the HKFE is now heavily pushing its non-HSI products (such as the Property Sub-index
Futures) in an effort to show that there is potential income from as yet unlaunched
futures products. At the same time, the SEHK will be arguing that GEM will be a
money-spinner, ahead of its launch in October. It will also probably project future
revenue from a listed bond market and from linking with other exchanges and trading their
products, such as stocks on NASDAQ which are not yet traded on the SEHK. Perhaps it will
look forward to convertibility of the Yuan and trading of mainland &quot;A&quot; and
&quot;B&quot; shares in Hong Kong.</p>

<p>Each side will find plenty of room for disagreement on what the shape of
the profits will be like in even 3 years' time, and bear in mind that DCF calculations
usually project earnings for at least 10 years before concluding with a &quot;terminal
value&quot; of what the business will be worth at the end of the projection period.</p>

<h3 id="Valuing">Valuing HKSCC (or not)</h3>

<p>One of the key areas of dispute is over the value of <a href="http://www.hkclearing.com.hk/" target="_blank">Hong Kong Securities Clearing Company</a>
(HKSCC), which clears almost all stock trades on the Hong Kong Exchange. HKSCC is a
company limited by guarantee, so it has no issued shares and, accordingly, no shareholders
or owners in the normal sense. The &quot;members&quot; of HKSCC are the limited
guarantors, with the Stock Exchange holding 50%, and five banks (Bank of China, Bank of
East Asia, Hang Seng Bank, HSBC and Standard Chartered Bank) each holding 10% of the total
guarantee of HK$50m. Under its articles of association, none of the members of HKSCC has
any right to receive any dividends or other distributions of profit nor has a right to
receive anything on a solvent liquidation. In short, HKSCC is a not-for-profit entity.</p>

<p>This has been reflected in the way that it has progressively reduced its
charges to its customers (including brokers, custodians and investor participants) as it
has become more efficient. For example, the stock settlement fee has been reduced by 80%
to 0.002% of each trade since CCASS (the clearing system run by HKSCC) was introduced in
1992, to the benefit of the investing public. In fact, we find the clearest explanation in
the following extract from the <a href="http://www.hkclearing.com.hk/38clear/38clear3.htm" target="_blank">March 1999 issue of Cleartalk</a>, the HKSCC magazine, which says:</p>

<blockquote>
  <p>&quot;Hongkong Clearing is a non-profit distributing company. It uses
  accumulated surpluses, less amounts put aside to reserves that are used to finance
  infrastructure and future development, to fund fee discounts. As of 31 December 1998, the
  cumulative discounts provided to Participants since the implementation of CCASS amounted
  to $1,549 million<em>.</em>&quot;</p>
</blockquote>

<p>Immediately after the March budget speech, the Government published a <a target="_blank" href="http://www.info.gov.hk/fsb/security/sec_1.doc">Policy Paper on
Securities and Futures Market Reform</a> which formed the template for the proposed
merger. In this, they wrote:</p>

<blockquote>
  <p>&quot;As there is no financial value in the membership of HKSCC it is
  reasonable that its members would not receive any allocation of shares in Newco in respect
  of HKSCC.&quot;</p>
</blockquote>

<p>Indeed, Deputy Secretary for Financial Services Rebecca Lai told the Legco
Financial Affairs Panel on 6-Jun-99 that &quot;Under HKSCC Rules the asset of the
non-profit -making HKSCC can only be transferred to non-profit or charity houses&quot;.</p>

<p>However, confusingly, the March policy paper also states that HKSCC will
be allowed to distribute profits via Newco (now HKEC) and that &quot;<em>[HKSCC's]
inclusion in the merged business of Newco will enhance the value of Newco as a whole</em>&quot;.</p>

<p>Couldn't be clearer, could it?</p>

<h3 id="Concessions">Concessions</h3>

<p>In order for the Exchanges to merge voluntarily, they must each receive at
least 75% approval of shares voted in a general meeting to approve what is known as a
&quot;Scheme of arrangement&quot; whereby HKEC will issue shares to all members in
exchange for their shares in SEHK or HKFE. These votes are scheduled to take place by
30-Sep-99. The Government is keen to avoid either side voting it down, and has threatened
to use an undefined&nbsp; &quot;Plan B&quot;, which presumably means forcible merger by
legislation, if approval is not given. Nevertheless, they would rather not have to use
force if negotiation can win the day. They don't want to appear interventionist, although
we think on this occasion using a little brute force might bring spoilt monopolists into
line.</p>

<p>The most vocal group has been the 500-strong broking sector, dominated by
the small brokers, many of whom have held their shares in the Stock Exchange since its
last reform in 1986, when the 4 previous exchanges were merged together.</p>

<h3 id="Trading">Trading Rights</h3>

<p>Item by item, the brokers have won concessions from the Government.
Instead of having a &quot;big bang&quot; merger, when any applicant with suitable
qualifications and capital can obtain trading rights, the Government has agreed that no
new trading rights will be issued for 2 years after the merger. This should allow existing
brokers who feel unable to face the heat of competition to sell their seats <u>as well as</u>
receiving shares in HKEC. In effect, they started out with a share in the Stock Exchange
which they could not sell without closing their business, and which was not allowed to pay
dividends, and they end up with shares in HKEC which they can sell, as well as a seat
which they can sell before the music stops.</p>

<p>Now we hear that they are lobbying for an exorbitant entry fee for new
trading rights, in order to preserve the transfer value of their existing trading rights
indefinitely. The cumulative effect of these concessions will set back the development and
opening of Hong Kong's market and start to defeat the very purpose of the reforms.</p>

<h3 id="U-Turn">U-Turn on HKSCC</h3>

<p>The greatest concession appears to be that the Government is allowing
HKSCC to be included in the valuation of the Stock Exchange. Indeed, they have signalled
this by allowing the word &quot;Clearing&quot; to feature in the name of the new body. We
cannot think of any other exchange in the world which describes its bodily functions in
its title - why not call it &quot;Hong Kong Exchanges, Clearing, Data and Listing&quot;?</p>

<p>So we can wave goodbye to the policy of passing all savings on to the
customers of HKSCC - at least some of these savings will in future go to its shareholders
as profit. In the process of this policy U-turn, the Government has widened the gap
between the two valuations.</p>

<p>HSBC, which is advising the Government on the merger, is a 10% member of
HKSCC, and so is Hang Seng Bank, which is a subsidiary of HSBC. It remains unclear whether
the bank members of HKSCC will get their share of the &quot;valuation&quot; over which the
two exchanges are now haggling. Until this is ruled out, it represents a potential
conflict of interest for HSBC. </p>

<h3 id="Listing">Listing Division</h3>

<p>Press briefings (usually on a &quot;sources&quot; basis) on early meetings
of the Co-ordinating Committee on Market Structure Reform (CCMSR) indicate that they were
heading towards consolidating regulation under the SFC, in a similar way to that in which
the SEC regulates US companies and brokers. The section of the new policy paper on market
regulation indicates a degree of discord in the committee. It says:</p>

<blockquote>
  <p>&quot;the working groups [of SEHK, HKFE and HKSCC] felt unable to make any
  recommendation as to which of the options in their respective reports was best for the
  future&quot;</p>
  <p>it continues:</p>
  <p>&quot;the Exchanges and HKSCC also thought they were not well placed to
  consider the future business strategy of HKEC, and that as the future division of the
  regulatory functions between the SFC and HKEC would feature in such business strategy,
  this should properly be left to another authority&quot;</p>
</blockquote>

<p>In the end it seems that the Government has traded off the role of broker
supervision (which will be absorbed into the SFC) for that of Listing regulation, which
will continue as at present. This concession means that listing fees paid by listed
companies will stay with the Stock Exchange, a key part of their future revenue and hence
beneficial to the valuation model. </p>

<p>The new policy paper inadvertently hints at the problems of leaving
regulation within a profit-making entity. It talks of making &quot;<em>improvements in
efficiency</em>&quot; within the SEHK Listing Division, involving a &quot;<em>re-examination
of the allocation of resources</em>&quot;. In other words, fewer people means less costs
means more profits, but is this the way to go about improving regulation? The paper
struggles with this issue in the section on business structure, which shows the regulatory
function as being outside the 5 &quot;business units&quot; but within the overall HKEC
profit-making group. That's just playing with box diagrams.</p>

<p>In our experience of dealing with the SEHK Listing Division, with a few
exceptions, their overall level of industry experience and commercial judgement is too low
and reflects the difficulty of attracting people away from more lucrative careers in
investment banking, the legal profession and accountancy. The Listing Division also
appears over-stretched and under-resourced to cope with the constant manoeuvrings of our
listed companies. All this points to the need for the SFC to take on a consolidated
regulatory role, and leave the HKEC to focus on providing an efficient and modern trading
platform. The Listing Division should be transplanted to the SFC and merged with its
Corporate Finance Division (which already regulates takeovers). It would then be funded
out of listing and document fees paid by listed companies and/or stamp duty on
transactions. As an arm of Government, the regulator's principal concern would be to
protect investors and avoid the embarrassment of regulatory failures, not to maximise
profits.</p>

<h3 id="Public">Public Interests</h3>

<p>In a section entitled &quot;<em>Checks and Balances for Public Interests</em>&quot;
the new policy paper deals weakly with the question of tariffs. It seeks to rely on the
existing framework rather than create anything new. It says:</p>

<blockquote>
  <p>&quot;fees and charges of the two Exchanges and HKSCC are set out in their
  respective rules. The making of or changes to these rules require the approval of the SFC.
  We believe this system will provide a reasonable safeguard against abuse&quot;</p>
  <p>and continues:</p>
  <p>&quot;In exercising such approval power, the SFC will develop
  non-statutory guidelines setting out the factors to be taken into account.... these
  factors will include... the comparative transaction costs of Hong Kong and other
  markets.&quot;</p>
</blockquote>

<p>That's it? The whole thing? Based on that level of regulation, we think
the only safeguard against this will be to buy as many shares in HKEC as we can afford.</p>

<p>The point here is that the framework only allows for approval of <u>changes</u>
to fees, but imposes no requirement to lower them. Remember, for example, that HKSCC has
reduced stock settlement fees by 80% since 1992. The new framework imposes no such
obligation to hand savings back to customers. There is no suggestion that the SFC would
actually intervene and force the HKEC to lower charges. We can therefor expect HKEC to
maintain charges at current levels and allow profits to expand as volume and technology
savings take their effect. For new products, they will always be able to find comparisons
that allow favourable pricing in the absence of competition.</p>

<p>We had hoped, perhaps idealistically, that the Government would recognise
that they are proposing to float a monopoly utility and that as such it should make no
more than utility rates of return, such as a 10% margin on revenue, with tariffs set to
change at &quot;CPI minus X&quot; where CPI is Consumer Price Inflation and X is the rate
at which costs should come down in real terms, and would be set by an independent
regulator. This is the way other Governments have handled flotations of utility monopolies
such as British Gas. Equally, where the newly-floated companies enter competitive markets
and have non-dominant status then they are free to set tariffs to compete.</p>

<h3 id="Limit">Limit on shareholdings</h3>

<p>The new policy states:</p>

<blockquote>
  <p>&quot;A shareholding limit of 5% will be put down in law to prevent
  control of HKEC by any individual parties or parties acting in concert&quot;</p>
</blockquote>

<p>Um, right. Has anyone realised that the biggest group of shareholders in
HKEC will be the small brokers, particularly if the current SEHK members get the lion's
share of HKEC? Clearly you cannot disenfranchise them (prohibit them from voting) just
because they all happen to vote the same way - after all, there are only two ways you can
vote. The definition of acting in concert for these purposes will be entertaining.</p>

<p>The whole area of corporate governance of HKEC will require heavy-handed
legislation to be effective. For example, normally it is the shareholders of a company who
appoint the board, but in order to provide a Government-appointed majority, the law or the
articles of association will have to make it so. Otherwise there is little to stop
shareholders in HKEC from requisitioning an Extraordinary General Meeting, removing all
the directors from the board, or flooding it with their own appointees. If necessary,
shareholders would be able (by 75% voting majority) to amend the articles of association
of HKEC to allow this. So HKEC is going to be a very unusual animal. The Government will
either need its rights to be set in law (through an &quot;HKEC Ordinance&quot;), or it
will have to create a &quot;golden share&quot; in a class of its own, which will have
rights in the articles of the company which cannot be changed without the approval of the
golden shareholder.</p>

<h3 id="Management">Management</h3>

<p>One of the key battles yet to be fought is who is actually going to run
this thing. The proposed business structure in the new policy paper includes hot seats for
a Chief Executive and a Chief Operating Officer. We wait to see whether any of the
incumbents (who according to the paper, &quot;<em>thought they were not well placed to
consider the future business strategy of HKEC</em>&quot;) will be up to the job of drawing
the combined entity together and integrating the separate cultures, or whether fresh blood
will be brought in.</p>

<h3 id="Minimum">Minimum Commissions</h3>

<p>In a tantalising single sentence of the new policy paper, the Government
says:</p>

<blockquote>
  <p>&quot;It should be noted that with the removal of the membership
  structure... the level of commission charged by traders should be a matter essentially
  between traders and their clients&quot;</p>
</blockquote>

<p>Negotiated commissions are the key to lowering transaction costs in Hong
Kong. With the advent in &quot;a year or so&quot; of straight-through processing with
AMS3, it will be possible for orders to be passed directly from the internet through
brokers' systems (with automated credit checking) to the exchange. It will no longer
require a human being to re-key the orders into a terminal on the Exchange's closed
system. Unless the bandwidth is artificially limited, the number of terminals a broker has
will become irrelevant to the volume he can handle through AMS3, so there will be plenty
of spare &quot;dealing rights&quot; for sale. Currently each share in the SEHK gets you
three terminals (one on the floor and two in the office), and many houses hold more than
one share to get the extra terminals. At least this should provide an ample supply of
dealing rights in the secondary market if brokers are successful in forcing a high entry
price for new dealing rights.</p>

<p>When minimum commissions are scrapped, we can expect the retail market to
quickly find a flat fee level for execution-only trades, perhaps as little as HK$88 per
trade, up to a certain size. Broking will become a volume game with wafer thin margins,
and cash-client retail broking in particular will be dominated by a few large on-line
firms who can afford to invest in the necessary software systems. With slim pickings in
broking, margin lending will become a more dominant form of revenue for retail houses,
favouring banks and larger firms with lower cost of capital. People who want flat fee
broking but also want independent research will start paying fees to online hybrid
news/research services, similar to <a href="http://www.briefing.com/">Briefing.com</a> or <a href="http://www.thestreet.com/">TheStreet.com</a>.</p>

<p>A truly liberalised, discount broking market depends on minimum
commissions being abolished.The sole reference to the subject in the new policy paper is
couched in a way which leaves it open to negotiate a time frame for the abolition. Another
concession in the making, perhaps?</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=499">HONG KONG SECURITIES CLEARING COMPANY LIMITED</a></li>
				
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