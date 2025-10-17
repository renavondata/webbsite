
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

<script type="text/javascript">document.title="Singapore Hong Kong Properties";</script>

	<div class="summary">We take a close look at the confetti of placings being thrown by this company. After 7 placings in 4 months, the number of issued shares has increased by 193% and existing shareholders have seen the net asset value diluted by 44% without ever being entitled to participate. Now the company proposes to buy properties from its Chairman and from Kong Tai, its substantial shareholder.</div>

<h2 class="center">Singapore Hong Kong Properties<br>
<span class="headlinedate">7 July 1999</span></h2>
<p>We wrote in May about the Hong Kong <a href="placing.asp">placing game</a>,
in which companies can go on pumping out new issues by placings to selected investors
without offering the stock to existing shareholders, thereby diluting their interests.
Here we highlight a classic example of this: <strong>Singapore Hong Kong Properties
Investment </strong>(SHKP). This company (which incidentally, has no properties in
Singapore) is now seeking its 5th general mandate in a year, and has conducted 7 placings
in the space of 4 months, increasing the issued share capital by 193%, and as we will
show, diluting pro forma net asset value by 45% in the process.</p>

<p>Bear with us as we take you through the colourful history of this company.</p>

<h3>History</h3>

<p>Until 1997 this was a sleepy property company controlled by the Lin
family. It owned two investment properties. The major one was several floors of Golden
Plaza, 745-747 Nathan road, Mongkok, Kowloon (home to bridal and evening gown shops), and
the other was 4 shops on the Ground Floor of Odeon Building, 28 Shu Kuk Street, North
Point.</p>

<p>In addition to the properties, SHKP had two other businesses. Wing Sang
Cheong, a grocery wholesaler founded in 1911 and acquired in 1991, and China Coast
Development, a wholesaler of industrial paper. A third business, Oriental Travel Service,
was closed in 1996.</p>

<p>Then on 21-May-97, during the height of a bull run, a company called
Permek Venture Ltd (PVL) announced a memorandum of understanding, which was followed on
6-Jun-97 by an agreement to purchase the Lins' 62% stake in SHKP for HK$7.6237 per share,
or a total of $314.5m. This implied a value of about $60m for the listing status.</p>

<p>The change of control would have triggered a general offer at that price.
However, on 4-Jun-97, the share price suddenly took off from $7.00 and closed at $10.00
per share, up 43% in heavy volume. The shares were suspended the next day and the SFC
&quot;<em>conducted enquiries into the unusual trading activities in the shares</em>&quot;.
After almost 6 months, the suspension was removed on 1-Dec-97.</p>

<p>As part of the deal, SHKP sold back to the Lin family the two non-property
businesses (the grocer and the paper trader) and some furniture, all at net asset value,
for a total of $28.17m. This was approved by minority shareholders.</p>

<h3>About Permek Venture</h3>

<p>PVL was ultimately 55% owned by Mr. Chan Yuen Ming and 45% by Mr. Benny
Kwong Kai Sing. Mr. Kwong was an Executive Director of HK-listed <strong>Fairyoung
Holdings </strong>from Feb-93 until his resignation on 3-Nov-97. </p>

<p>The HK stock market crashed in Oct-97, while SHKP was suspended. On
21-Nov-97, Mr. Kwong's interest in PVL was acquired by Mr. Chan for $13.4m, or $0.72 per
SHKP share, in addition to the price which PVL would pay the Lin family. This resulted in
a total price of about $8.3437 per share. After &quot;discussions&quot; with the SFC, PVL
decided to &quot;voluntarily&quot; increase the offer price to $8.35 per share.</p>

<p>Mr. Chan is the brother of Jimmy Chan Yuen Tung, who was an Executive
Director of HK-listed money-lender <strong>DC Finance </strong>until he resigned on
1-Feb-99. We'll take a look at that company in a future article. An announcement on
28-Nov-97 stated that the brothers were discussing Jimmy Chan's purchase of up to 49% of
PVL, and that if agreement was not reached, then Chan Yuen Ming would continue discussions
with other potential investors.</p>

<h3>Mr. Chan Tries to Sell</h3>

<p>As of 16-Jan-98, Mr. Chan was still in discussions with his brother as
well as with an independent third party.</p>

<p>On 19-Jan-98, the offer document for SHKP was finally dispatched. The
adviser to PVL was The <strong>New China Hong Kong</strong> Corporate Finance, while <strong>Somerly</strong>
advised SHKP and <strong>Asia Financial Capital</strong> advised the independent
directors. Mr. Chan was described as having an investment portfolio which included &quot;<em>mostly
luxury residential properties and grade A commercial properties&quot; which comprise
&quot;individual units and entire buildings, and various residential and commercial
development sites</em>&quot;.</p>

<p>On 5-Feb-98, minority shareholders of SHKP approved the sale of the two
businesses to the Lin family, allowing the offer to proceed. PVL completed the purchase of
the controlling stake on 14-Feb-98 (love was in the air). PVL nominated two directors to
SHKP, Ms. Yvonne Louie Mei Po, and Ms. Irene Wong Shin Ling, both of whom were directors
of <strong>DC Finance</strong> until 1-Dec-98 and 1-Feb-99 respectively. We don't know why
Mr. Chan did not go on the board of SHKP himself, or whether or not DC Finance was
involved in funding Mr Chan's offer.</p>

<p>On 2-Mar-98, the offer closed and the board (including the independent
directors) resigned. Acceptances were received for 15.99% of the company, increasing PVL's
stake to 78.26%. Mr. Chan was still in negotiations with his brother and an independent
third party.</p>

<p>On 12-Mar-98, PVL sold 3 million shares at $8 per share to Hong Kong Party
Limited (yes, that's its real name), cutting its stake to 73.74% in order to maintain the
free float of at least 25%. We don't know who owned the purchaser, but they were held to
be independent.</p>

<p>On 22-Apr-98 the shares were suspended and an un-named &quot;Potential
Purchaser&quot; signed a conditional agreement to purchase from Mr. Chan (via PVL) his
stake in SHKP, by now reduced to 64.23%, and at the same time SHKP had conditionally
agreed to sell one of its properties to Mr. Chan and purchase a property from the would-be
new controlling shareholder. However, one of the conditions was not fulfilled and the deal
was scrapped on 1-May-98, when it was also announced that PVL was continuing negotiations
with independent third parties including the Potential Purchaser. The shares began trading
again on 4-May-98.</p>

<h3>Enter Kong Tai</h3>

<p>On 12-Aug-98, HK-listed <strong>Kong Tai International </strong>announced
that it was purchasing Mr. Chan's entire interest in SHKP, for $7.55 per share, or a total
of $321m. That's 9.6% less&nbsp; than the $8.35 per share that he paid for it. </p>

<p>Of the $321m, $70m was satisfied by the issue of 350m Kong Tai shares at
$0.20 each, and the balance of $251m was in cash.</p>

<p>As part of the deal, Mr. Chan acquired the holding company of SHKP's major
asset, the Golden Plaza shopping centre. The property was valued by Brooke Hillier Parker
at <strong>$350m</strong> at 30-Jun-98, down 17% from its $420m valuation by Richard Ellis
at 30-Nov-97. The holding company had almost no net debt, so the purchase price (net asset
value) came out at <strong>$348m</strong>.</p>

<p>At the same time, SHKP agreed to buy two properties from Kong Tai.</p>

<p><a href="#Summary1">Click here to skip to the summary</a></p>

<p>The first property was a site at 46-48 Anchor Street, Tai Kok Tsui,
Kowloon, with an area of 3,840 sf. It was acquired by Kong Tai in Mar-94 and was vacant,
with the intent to develop a 17-storey shop/office building with a gross floor area of
45,800 sf. It was valued by Francis Lau &amp; Co. at <strong>$125m</strong> at 3-Jun-98,
or an accommodation value of $2,729 psf. The estimated construction cost was a further
$50m.</p>

<p>The second property was at 60-66 Baker Street and 2-6 Baker Court,
Hunghom, Kowloon, with a site area of about 6,500 sf. The site was a vacant site (except
for No. 6 Baker Court). The site was intended for development into a 31-storey
residential/commercial building with a gross floor area of 59,277 sf. It was valued by
Francis Lau &amp; Co. at <strong>$240m</strong> at 3-Jun-98, or an accommodation value of
$4,049 psf. Construction cost was estimated at $60m.</p>

<p>The holding company of this property, Charter National, was acquired by
Kong Tai pursuant to a provisional agreement on 16-Oct-97, valuing the property at $233m,
from Wai Son (H.K.) Development Ltd. We don't know who owns Wai Son. A $10m deposit was
paid on 23-Sep-97 and a further $36.6m on 6-Oct-97, just before the market crash, so it
appears that the deal was struck before the crash, on the basis of a valuation by Francis
Lau &amp; Co. dated 25-Sep-97. The deal did not include No. 6 Baker Court, which was
presumably acquired later - the site area acquired in this deal was only 5,525 sf. Charter
National had entered into various agreements to purchase the properties which make up the
site. Completion of the deal took place on 2-Feb-98, and Kong Tai arranged a secured loan
of $150m from Wing Hang Bank.</p>

<p>The Anchor Street and Baker Street properties acquired by SHKP from Kong
Tai were held by companies which had various net liabilities to be deducted from the
valuations, reducing the consideration by $100m to <strong>$275m</strong>.</p>

<h4 id="Summary1">Summary</h4>

<p>So in this deal, Mr. Chan spent $348m on the company which owned Golden
Plaza, partly financed by the sale of his stake in SHKP to Kon Tai, for $251m in cash and
$70m in Kong Tai shares.</p>

<p>At the same time, Kong Tai off-loaded vacant properties valued at $375m
and other net liabilities of $100m, in return for a cash payment of $275m, of which $251m
went to Mr. Chan. The deals were completed on 25-Sep-98.</p>

<p>What did Mr. Chan do with Golden Plaza? The same asset was sold by an
un-named &quot;independent third party&quot; to HK-listed <strong>Island Dyeing and
Printing</strong> (IDP) on 30-Apr-99. We don't know whether Mr. Chan was the vendor or
whether he sold it to someone else in the intervening period. This time, the property was
valued at $375m at 28-Apr-99 ($25m more than in the earlier transaction), but the purchase
price was based on a value of $370m. Other net liabilities of the holding company
(presumably including a mortgage) reduced the purchase price to $210m.</p>

<h3>Stock split 40:1</h3>

<p>Under its new ownership, SHKP made a massive 40 to 1 share split, reducing
the par value to $0.025 per share but only increasing the board lot from 10,000 shares to
80,000 shares, effectively 5 times smaller than before.</p>

<h3>General Offer</h3>

<p>Kong Tai made a mandatory general offer through <strong>Core
Pacific-Yamaichi</strong> and <strong>Kim Eng Securities</strong> at $7.55 per SHKP share,
which ran from 28-Sep-98 to 6-Nov-98. SHKP shareholders were also offered an alternative
of $5.95 per share plus 8 new shares of Kong Tai valued at $0.20 each.</p>

<p>The stock split made SHKP a penny stock, reducing the effective offer
price from $7.55 to about $0.189. The shares now trade at about $0.05.</p>

<p>The share price jumped some 53% in the last 2 days of the offer period,
closing at a $13.80 (or split-adjusted $0.345) on the last day, 6-Nov-98. However, most
shareholders seemed to have already accepted by this time, as the offer closed with
acceptances of 31.60%, taking Kong Tai's holding up to 95.86%.</p>

<p>That means there were only 2.74m shares in public hands, so it's quite
impressive that 6.08m shares were traded in the 2 days prior to the close of the offer.
Since trades are settled on day T+2, it woud not be possible to purchase on those 2 days <em>and
</em>accept the offer. On 12-Nov-98 SHKP said that the SFC was conducting enquiries into
the trading activities of the SHKP shares prior to the close of the offer.</p>

<p>None of the accepting shareholders took the alternative of shares in Kong
Tai.</p>

<h3>Sell-down</h3>

<p>In order to meet the Stock Exchange requirement of 25% public float, Kong
Tai arranged placings of existing shares through <strong>Goodwill Investment Services</strong>
and <strong>Peace Town Securities </strong>on 7-11-Nov-98 to &quot;independent
professional and/or institutional investors&quot;, reducing its stake to 73.74%.&nbsp; Of
these, 12.466m shares were placed by Goodwill at $7.55, while 2.19m shares were placed by
Peace Town at $7.00.</p>

<h3>New board</h3>

<p>On 25-Sep-98 the 4 executive directors of Kong Tai joined the board of
SHKP along with independent director Mr. Clive Oxley, who&nbsp; was also an independent
non-executive director of Kong Tai.</p>

<p>On 9-Nov-98 the directors who were appointed by PVL (including the
independent directors) resigned and another Executive Director was appointed. On 1-Dec-98,
Mr. Oxley shifted from being an independent&nbsp; director of Kong Tai and SHKP to be an
Executive Director of SHKP. Mr. Oxley is a former 25-year civil servant, retiring in 1994
as Commissioner for Customs and Excise and was formerly Deputy Secretary for Planning,
Environment and Lands.</p>

<p>Also on 1-Dec-98, Mr. T H Barma was appointed as independent director of
SHKP. On 21-Jun-99 Mr Barma became an independent non-executive director of HK-listed <strong>CIG-WH
International</strong>, of which Mr. Oxley is also an independent director.</p>

<h3>First Placing</h3>

<p>It was at this point in the story that SHKP began pumping out new shares
like confetti.</p>

<p>On 3-Mar-99 SHKP placed 520m new shares through <strong>Quest Stockbrokers
(HK)</strong>&nbsp; at $0.03 per share, raising $15.6m gross, $14.2m net. This was
equivalent to 19.62% of the issued shares, just under the 20% limit under the general
mandate granted to the board at the AGM on 23-Jun-98. The intended use of proceeds was
&quot;<em>to acquire utility <u>and/or other projects</u> which can generate steady and
recurrent income</em>&quot; (our emphasis). This was the first hint of a move away from
what they said in the earlier offer document, namely that SHKP &quot;<em>will be
principally involved in property development and construction... with plans to diversify
into investment in utility projects (such as power and water plants)</em>&quot;</p>

<h3>Flirtation with Pacific Century</h3>

<p>On 27-Mar-99, Kong Tai said that it had been in discussions with Pacific
Century Group about the possible sale of a controlling interest in SHKP. These discussions
started around 5 p.m. on 24-Mar-99. The shares had risen over the preceding 3 days by 97%
to $0.063, in heavily increased volume. Kong Tai had made formal statements on
22-24-Mar-99 denying knowledge of any reason for the increase, and maintained their
innocence in the 27-Mar-99 announcement.&nbsp; In any event, the discussions were short
lived, terminating without agreement on 26-Mar-99. PCG later went on to cement a deal with
Tricom.</p>

<h3>Second Placing</h3>

<p>On 7-Apr-99, SHKP gave notice of an EGM, which was held on 23-Apr-99 to
approve a new general mandate.</p>

<p>On 24-Apr-99, SHKP placed 630m new shares through <strong>KG Investments
Securities (Hong Kong)</strong> at $0.04 per share, raising $25.2m gross, $24m net. This
was equivalent to 19.88% of the latest issued shares, nearly exhausting the general
mandate granted just a day earlier. The company said it was &quot;<em>currently exploring
various investment opportunities, including high technology projects and
telecommunications business</em>&quot;. It had commenced negotiations on several such
projects.</p>

<p>On the same day, Kong Tai announced that it had since 29-Mar-99 (the first
trading day after the talks with PCG were scrapped) sold in the market a total of 588.9m
shares for net proceeds of about $26m, or about $0.044 per share. This reduced its holding
to 30.8% after the second placing. The reduction through the 50% level, which took place
on 30-Mar-99, also constituted a &quot;Discloseable Transaction&quot; under the Listing
Rules for Kong Tai which they had failed to announce earlier.</p>

<h3>Third Placing</h3>

<p>On 30-Apr-99, SHKP gave notice of another EGM to be held on 19-May-99 to
approve a third general mandate.</p>

<p>On 11-May-99, SHKP announced it was in negotiation to acquire &quot;<em>certain
properties</em>&quot; from Kong Tai&nbsp; and was considering a further placing of 750m
new shares.</p>

<p>On 12-May-99, SHKP placed 750m new shares through <strong>ICEA Capital </strong>at
$0.05 per share, raising $37.5m gross, $36m net. These shares, equivalent to 19.74% of the
issued shares, were subject to approval of the third general mandate, which was given a
week later. So they'd basically exhausted the mandate before it was given. This time, the
company said that in addition to the &quot;<em>high technology projects</em>&quot; it was
also looking at &quot;<em>cement plants</em>&quot; in the PRC and other properties held by
third parties. It also warned of possible further share issues.</p>

<h3>Fourth Placing</h3>

<p>On 14-May-99, SHKP placed 1,700m new shares, half through <strong>BOCI
Securities</strong> (part of Bank of China) and half through <strong>Quest Stockbrokers
(HK)</strong> (a repeat order here) at $0.05 per share, raising $85m gross, $82m net. The
share issue was equal to 37.36% of the issued shares (including all previous placings) and
was subject to specific approval in an EGM.</p>

<h3>Serviced apartments</h3>

<p>On 27-May-99, SHKP and Kong Tai announced that their results for the year
ended 31-Dec-98 would be delayed because arrangements had only just been made to inspect
the accounts of four subsidiaries of SHKP which were sold during 1998 prior to Kong Tai
taking control. At the time of writing, the results are now scheduled to appear on
26-Jul-99 and may contain an audit qualification if work cannot be completed in time.</p>

<p>Also on 27-May-99, SHKP announced it had agreed to acquire a property
known as &quot;Hong Kong 26 Court&quot; at 5B Chancery Lane, Mid-levels for <strong>$72.8m</strong>
from a company called Right Centre International. We don't know who owns that, but it was
held to be independent. The property is a serviced apartment block with a gross floor area
of 12,829 sq ft, so the price was $5,675 psf. SHKP intends to obtain a $40m mortgage loan
from an independent financial institution. The vendor has agreed to lease the building
back for 2 years at a monthly rent of $375k inclusive of rates and management fees,
payable semi-annually in arrears.</p>

<h3>Fifth Placing</h3>

<p>On 2-Jun-99, the EGM approved the placings of 14-May-99 and in addition,
granted a fourth general mandate to issue a further 20% of the fully-enlarged capital.</p>

<p>The next day, on 3-Jun-99, SHKP placed 720m new shares through <strong>Vickers
Ballas Hong Kong</strong> at $0.05 per share, raising $36m gross, $35m net. The new shares
represent 11.52% of the existing issued shares.</p>

<p>This time, the announcement spoke of intentions to diversify into &quot;<em>hotels,
management of service (sic) apartments and hotels, car parks</em>&quot;, in addition to
the fields mentioned previously.</p>

<h3>Sixth Placing</h3>

<p>On 16-Jun-99, SHKP placed 520m new shares through <strong>ICEA Capital</strong>
at $0.05 per share, raising $26m gross, $25m net.&nbsp; The shares represent a further
8.32% of the shares in issue at the date of the fourth general mandate, taking the total
issued since then to 19.84% and practically exhausting the mandate.</p>

<p>Bizarrely, the announcement contained news that on 12-Mar-99 SHKP had
spent $13m on 15% of a business which engages in the repair, maintenance and overhaul of
civilian registered aircraft in Tehran, Iran.</p>

<p>It also revealed that on 1-Jun-99 the company spent <strong>$42.5m</strong>
on a 60% interest in a cement plant in Beijing. Although technically too small to be a
&quot;Discloseable Transaction&quot; under the Listing Rules, we think this should have
been announced before the Fifth Placing which took place two days later.</p>

<p>Similarly, the announcement revealed that <strong>$14m</strong> had been
spent on 12-May-99 on the acquisition of 80 car park spaces at Covent Garden, 88 Ma Tin
Road, Yuen Long ($175,000 per space).</p>

<p>All these acquisitions were from un-named &quot;independent third
parties&quot;. So now we know that the &quot;intention&quot; to diversify into car parks
and cement plants, referred to in the placing announcement on 3-Jun-99, was in fact
already a reality at that time. </p>

<h3>Seventh Placing</h3>

<p>On 24-Jun-99, SHKP placed 280m new shares through <strong>BOCI Securities</strong>
at $0.054 per share, raising $15.12m gross, $14m net. Note that in all but the first
placing, the net proceeds have been rounded to the nearest million, so it is not possible
to know what percentage was eaten up in expenses. In the first placing, this was 9.0%.</p>

<p>This placing is subject to approval in an EGM to be held on 12-Jul-99. At
the same meeting, a fifth general mandate will be sought. We have no idea who has been
buying all these new shares, but if you held 1% of the company at the beginning of this
year, you have now been diluted by 66% to only 0.34%. That's because, of the shares issued
or to be issued, 66% have been issued through the seven placings. This is shown in the
table below:</p>

<table class="numtable center fcl">
  <tr>
    <th></th>
    <th>Date</th>
    <th>Shares</th>
    <th>Per cent.</th>
  </tr>
  <tr>
    <td>In issue on:</td>
    <td>01-Jan-99</td>
    <td>2,649,829,400 </td>
    <td>34.1%</td>
  </tr>
  <tr>
    <td>1st placing</td>
    <td>03-Mar-99</td>
    <td>520,000,000 </td>
    <td>6.7%</td>
  </tr>
  <tr>
    <td>2nd placing</td>
    <td>24-Apr-99</td>
    <td>630,000,000 </td>
    <td>8.1%</td>
  </tr>
  <tr>
    <td>3rd placing</td>
    <td>12-May-99</td>
    <td>750,000,000 </td>
    <td>9.7%</td>
  </tr>
  <tr>
    <td>4th placing</td>
    <td>14-May-99</td>
    <td>1,700,000,000 </td>
    <td>21.9%</td>
  </tr>
  <tr>
    <td>5th placing</td>
    <td>03-Jun-99</td>
    <td>720,000,000 </td>
    <td>9.3%</td>
  </tr>
  <tr>
    <td>6th placing</td>
    <td>16-Jun-99</td>
    <td>520,000,000 </td>
    <td>6.7%</td>
  </tr>
  <tr>
    <td>7th placing</td>
    <td>24-Jun-99</td>
    <td>280,000,000 </td>
    <td>3.6%</td>
  </tr>
  <tr>
    <td>Total</td>
    <td></td>
    <td>7,769,829,400 </td>
    <td>100.0%</td>
  </tr>
  <tr>
    <td COLSPAN="2">Increase this
    year</td>
    <td>193%</td>
    <td></td>
  </tr>
</table>

<h3>Dilution of Net Asset Value</h3>

<p>There are now more shares in SHKP than there are people on this planet.
When Kong Tai first bid for SHKP, the offer document dated 7-Sep-98 contained a pro forma
statement of net assets of SHKP at 30-Jun-98. The pro forma NAV per share of SHKP was
$5.59 (or $0.140 per split share). Since then, the 7 placings have diluted the NAV per
share by 45% to $0.077 per share. Existing shareholders have been entitled, as they would
be in a rights issue, to participate in these dilutive issues. The dilution is shown in
the table below:</p>
<table class="numtable center fcl">
  <tr>
    <th></th>
    <th>$m</th>
    <th>Issued<br>shares (m)</th>
    <th>NAV<br>per share</th>
  </tr>
  <tr>
    <td>Pro forma NAV, 30-Jun-98</td>
    <td>371 </td>
    <td>2,650 </td>
    <td>0.140 </td>
  </tr>
  <tr>
    <td>7 placings</td>
    <td>230 </td>
    <td>5,120 </td>
    <td>0.045 </td>
  </tr>
  <tr>
    <td>Resultant pro forma</td>
    <td>601 </td>
    <td>7,770</td>
    <td><b>0.077 </b></td>
  </tr>
</table>

<h3>Purchase of property from Chairman</h3>

<p>At the same time as the 7th placing, SHKP said it had conditionally agreed
to buy two properties in connected transactions.</p>

<p><a href="#Summary2">Click here to skip to the summary</a></p>

<h4>First property</h4>

<p>A 100% interest in a property at 73 Mount Kellett Road (formerly known as
5 Cameron Villas), The Peak to be purchased from Holly Smart Investment, which is 100%
owned by the Chairman of SHKP and Kong Tai, Mr. David Wong Wai Chi, and his wife.</p>

<p>The property is a 14,217 sf site which currently has a vacant 2-storey
European-style &quot;semi-detached&quot; house with private garden, garage and a
guardhouse. SHKP intends to redevelop it into 3 detached houses with total floor area of
11,000 sf. There's no word on what will happen to the other part of the building, which
presumably will become &quot;detached&quot; rather than semi-detached!</p>

<p>The transaction will require minority shareholders' approval in SHKP. The
valuation of the site in the transaction is <strong>$128m</strong>, which equates to
$11,636 psf. Add on demolition and construction costs, and this property is not cheap.
Shareholders should think hard before voting on this.</p>

<p>A secured bank loan of $79.7m is included in the deal, and other net
liabilities of $6.7m reduce the consideration to $41.6m.</p>

<h4>Second property</h4>

<p>A 100% interest in the 3rd-6th floors of Lisa House, 33-37 Nelson Street
Kowloon which comprises about 108 rentable car parking spaces, to be acquired from Kong
Tai, valued at <strong>$73.4m</strong> on 31-May-99 (or $680k per space). The car park was
leased to an operator at $620k per month on 9-Jul-97 but the operator has defaulted and a
court has ordered vacant possession. Kong Tai has agreed to take care of this and has also
guaranteed rental of $300k per month for the first 12 months after the purchase, or a
gross yield of 4.9%.</p>

<p>A secured bank loan of $44.0m is included in the deal, and other net
liabilities of $340k reduce the consideration to $29.0m.</p>

<h4 id="Summary2">Transaction summary</h4>

<p>SHKP is being asked to take on properties valued at a combined $201.4m
from Kong Tai and its Chairman. This figure is not far off the net $230m raised in the 7
placings so far this year. Both transactions are subject to minority shareholders'
approval at an EGM, the date of which has not yet been announced.</p>

<h3>Our view</h3>

<p>Minority shareholders have an opportunity to say &quot;enough is
enough&quot; and vote against the 7th placing and the new general mandate on 12-Jul-99, as
well as against the purchase of assets from Kong Tai and its Chairman in the subsequent
meeting.</p>

<p>Shareholders have seen pro forma net asset value diluted by about 45% by
these 7 placings. Their shareholdings have been diluted by over 66%. We have never held
shares in either company, but if you do, exercise your rights and vote against the
transactions.</p>

<p>Thanks to the earlier sell-down and the dilution by the first 6 placings,
Kong Tai's stake in SHKP has been reduced to just 15.63%. If the other shares are in the
hands of independent third parties then it should be easy to out-vote Kong Tai in&nbsp; a
general meeting.</p>

<h3>Stop press:</h3>

<p>Volume in the stock today (7-Jul-99) reached 718m shares, equivalent to 9%
of the company, with the price up 17% at $0.055. If the new general mandate is approved on
12-Jul-99, and if past performance is any guide, you can expect another placing the next
day.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4970">China Vered Financial Holding Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4890">SANYUAN GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=6883">Chan, George Yuen Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6884">Chan, Jimmy Yuen Tung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=534">Kwong, Benny Kai Sing</a></li>
				
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