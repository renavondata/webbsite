
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

<script type="text/javascript">document.title="StyNet, Part 2: Asia's Inworld City";</script>

	<div class="summary">Continuing our series on the Styland network, we take you through the wheeling and dealing surrounding Inworld, most of whose flimsy track record came from companies in the network - including Digital World, Rainbow, Renren, Riverhill and Styland itself. You will also see an incredible set of pre-IPO transactions in the stock. Is Hong Kong really Asia's World City?</div>

<h2 class="center">StyNet, Part 2: Asia's Inworld City<br>
<span class="headlinedate">24 July 2002</span></h2>
<p>Before we start, a word of warning: read <a href="digitalmess.asp">Part
1</a> first, or this won't make sense! </p>

<p>The story of <a href="http://www.inworld.com.hk/" target="_blank"> Inworld Group Ltd</a>
(<b>Inworld, 8100</b>) begins
less than 3 years ago, on&nbsp; 3-Nov-99, when Kevin Ngai Kwok Kin (<b>Mr Ngai</b>)
and Chan Wai Lun (<b>Mr W L Chan</b>) established the first operating subsidiary
of the group, to provide: </p>

<blockquote>

<p>&quot;IT consulting and infrastructure services, banner design
and web page design and development services in Hong Kong&quot; </p>

</blockquote>

<p>Mr Ngai, 26, and Mr W L Chan, 25, are now the Chairman and Chief
Executive respectively of Inworld. The only other executive director is Mr Mak
Chee Yeong, Chief Operating Officer, who is the old man of the team at 30,
although he gets a salary of just HK$12,528 (US$1,606) per year and is based in
Singapore, where the group's local portal, <a href="http://www.inworld.com.sg/" target="_blank">inworld.com.sg</a>,
is currently out of action. </p>

<h3>Capital</h3>

<p>The original holding company of the group was a BVI company
called Inworld Holdings Ltd (<b>IHL</b>). The initial share capital was 50
shares issued to Mr Ngai and 14 to Mr W L Chan, probably at par value of US$1 each. </p>

<p>On 5-Jul-99, <a href="../dbpub/articles.asp?p=4978" target="_blank"> Styland Holdings Ltd</a> (<b>Styland, 0211</b>) agreed
to subscribe HK$20m for 36 shares of IHL, giving them 36% of the company,
subject to &quot;due diligence&quot;&nbsp; to be completed by 15-May-00. By
31-Mar-00, Styland had advanced $14.5m as a deposit. On the deadline of
15-May-00, when Styland finally became a shareholder, it transferred 9 shares to
Mr W L Chan and 1 to Mr Ngai at $555,555 per share, the same as Styland had paid. </p>

<p>Six weeks later on 26-Jun-00, presumably without objection from
Styland, Mr Ngai and Mr W L Chan subscribed for 50 and 14 shares respectively at par
of US$1 each, diluting Styland to 15.85%. The next day, Digital World Holdings
Ltd (<b>Digital World, 0109</b>) bought 5 shares (3.05%) from Mr W L Chan for <b>$14m</b>,
or $2.8m per share, 404% more than the previous trade on 15-May-00, valuing IHL
at $459.2m. </p>

<p>On 31-Aug-00, Styland acquired 45 shares from Mr Ngai for
<b>$107.8m</b>, or about $2.40m per share, increasing its stake to 43.29%. </p>

<p>On 12-Jun-01, <a href="../dbpub/articles.asp?p=1670" target="_blank"> renren Holdings Limited</a> (<b>Renren, 0059</b>)
bought 4 shares from Mr Ngai for <b>$10m</b>. </p>

<p>On 15-Aug-01, Digital World swapped its stake in IHL with Mr
Ngai in return for a 10% stake in West Marton Group Ltd (<b>West Marton</b>), 90% of which
had been acquired by Styland for <b> $120m</b> cash on 31-Oct-00, as we explained in <a href="digitalmess.asp#chineseyes" target="_blank">more
detail in Part 1</a>. West Marton's subsidiary operates a mainland portal called
<a href="http://www.chineseyes.com/" target="_blank">Chineseyes.com</a>. The
administrative contact of the <a href="http://www.netsol.com/cgi-bin/whois/whois/?STRING=chineseyes.com&amp;SearchType=do" target="_blank">domain
record</a> is Mr Ngai. Sources tell us that Mr Fu Tsin Man, who sold 90% of
West&nbsp; Marton to Styland, was employed by Inworld as a web designer. </p>

<p>So that leaves the final ownership of IHL as follows: </p>
  <table class="numtable center">
    <tr>
      <th class="left">Name</th>
      <th>Stake %</th>
      <th>Cost HK$m</th>
    </tr>
    <tr>
      <td class="left">Styland</td>
      <td>43.29</td>
      <td>122.22</td>
    </tr>
    <tr>
      <td class="left">Mr Ngai</td>
      <td>34.76</td>
      <td>-117.22</td>
    </tr>
    <tr>
      <td class="left">Mr W L Chan</td>
      <td>19.51</td>
      <td>-9.00</td>
    </tr>
    <tr>
      <td class="left">Renren</td>
      <td>2.44</td>
      <td>10.00</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>100.00</td>
      <td>6.00</td>
    </tr>
  </table>

<p>Note: the above table excludes any cost of Mr Ngai's 10% of West
Marton swapped with Digital World.</p>

<p>As the above narrative shows, despite all the external dealings,
only HK$20m was ever injected into IHL.&nbsp; However,
IHL never made it into the listed group; it was removed in the pre-IPO
reorganisation, along with the $20m of capital purportedly injected on
15-May-00. </p>

<p>For the technically minded, on 27-Jun-01, 3 days before the
track record ended, IHL's 3 wholly-owned operating subsidiaries each issued
another share to IHL to capitalise all outstanding loans in a total of $12.20m.
On 19-Sep-01, the shareholders swapped all the 164 shares in IHL for 164 shares
in a new holding company, Inworld International Ltd (<b>IIL</b>). The next day,
IHL moved its 3 subsidiaries up to its new parent IIL, and IIL issued 164 new
shares to its shareholders pro rata, in return for Styland offsetting $12.20m
being <i>&quot;part of the outstanding indebtedness...owing from
[IHL].&quot;&nbsp; </i>The next day, completing a two-day round trip, IIL
transferred IHL, without the subsidiaries, back to the original 4 shareholders. </p>

<p>Mr Ngai, Mr W L Chan and Renren each agreed to reimburse Styland
with their share of the $12.20m capitalised loan 7 days after the listing date
or on 31-Dec-02, whichever came first. </p>

<p>The net result of all this at the end of the track record is as
follows: </p>

  <table class="numtable center">	
	<tr>
    	<th></th>
	    <th>HK$</th>
	</tr>
  <tr>
    <td class="left">Capitalised shareholder loans</td>
    <td>12,195,029</td>
  </tr>
  <tr>
    <td class="left">Share capital of 3 subsidiaries</td>
    <td>461</td>
  </tr>
  <tr>
    <td class="left">Accumulated losses</td>
    <td>-4,165,548</td>
  </tr>
  <tr>
    <td class="left">Net assets at 30-Jun-01</td>
    <td>8,029,935</td>
  </tr>
  </table>

<p>This begs the question, what did IHL do with the $20m
purportedly invested in it, if it found it necessary to borrow from Styland to
fund its subsidiaries? We have no way of knowing. </p>

<h3>IPO</h3>

<p>Inworld published its prospectus on 18-Dec-01, in an IPO
sponsored by <a href="../dbpub/articles.asp?p=425" target="_blank"> Sun Hung Kai International
Ltd</a>. Inworld's financial adviser,
surprise surprise, was <a href="../dbpub/articles.asp?p=15232" target="_blank"> International Capital Network Ltd</a> (<b>ICN</b>), and the 3
joint lead managers included Styland's own <a href="http://www.everlong.com" target="_blank">Ever-Long
Securities Co Ltd</a> (<b>Ever-Long</b>). We'll cover ICN in a future
article. </p>

<p>The IPO was made at an offer range of $0.25-0.40 and finally
priced at $0.32. Inworld issued 96m new shares and existing shareholders sold
48m old shares, with the expenses split pro rata, leaving $24m of net
proceeds for Inworld and about $12m for the shareholders. The resulting holdings
were: </p>

<img class="center" alt="" src="../images/inworl1.gif">

<p>Shares held by Mr Ngai, Mr W L Chan and Styland are locked up for 12
months after listing, to 31-Dec-02, while Renren, holding less than 5%, is free
to sell. </p>

<p>Additionally, before the IPO 10-year options were granted over
57.6m new shares (equivalent to 10% of the existing shares) at $0.01 per share, a 97.5% discount to the offer price, of
which 19.58m went to Mr Ngai, 19.23m to Mr W L Chan and the rest to 16 staff. There
is also a standard post-IPO option scheme.&nbsp; </p>

<p>The offer price implied a pre-IPO valuation of <b>$153.6m</b>, or about
12.6x the $12.20m of capital invested. So what kind of track record justifies
that valuation? Not much, it turns out. </p>

<h3>Track record: first period to 30-Jun-00</h3>

<p>Inworld listed on 31-Dec-01, the last day on which a waiver was
available of the requirement for a 2-year track record. </p>

<div class="regbox">
<h4>Regulatory note</h4>
<p>After that, the GEM
rules changed to require small companies (those with a market cap, turnover and
total assets each less than HK$500m) to
have a 2-year track record. Apparently the GEM Listing Committee thought large
companies would be safer. Go tell that to Enron or WorldCom. The new rule
basically says, &quot;if you want to float a scam, make it a big one&quot;.</p>
</div>
<p>Inworld's first contract came on 19-Nov-99 when an <i>
&quot;independent third party&quot;</i> ordered a banner advertisement to be placed
at the group's portal, <a href="http://www.inworld.com.hk/" target="_blank">inworld.com.hk</a>,
at a cost of HK$30k for 3 months till Mar-00. No doubt much celebration ensued,
but the contract was not renewed. The next order
came from Styland, on 26-Apr-00 for consultation of $65k, infrastructure of $49k
and web page design and development of $65k, a total of $179k. Those were the
only two services contracts in the first accounting period to 30-Jun-00. </p>

<p>Inworld also charged membership fees for its portal and <i>&quot;between
May and June 2000... organised social activities such as ice-skating activities,
make-up class, bowling competition and video show for registered members&quot;, </i>recording
subscription fees of $145k in the first period to 30-Jun-00. By then, it claimed
2,415 members but an average of only 800 page views per day. </p>

<p>Inworld's accounting policy for membership fees was to recognise
them as revenue <i>&quot;when the rights to receive payment have been
established&quot; </i>but it is not clear whether all of these membership fees
were eventually received. Another accounting policy states that <i>&quot;provision
is made against trade receivable to the extent that they are considered to be
doubtful. Trade receivable in the balance sheet is stated net of such
provision.&quot;</i> </p>

<p>The net loss for the period was $4.216m. </p>

<h4>Comstar </h4>

<p>The accountants' report by <a href="http://www.ccifcpa.com.hk/" target="_blank">Charles
Chan, Ip &amp; Fung CPA Ltd</a> shows that during the period, Inworld
paid $426k to Comstar Hong Kong Ltd (<b>Comstar</b>), of which Mr Ngai and Mr
Chan were directors, for <i>&quot;printing material charge, advertising and
design fee for web page&quot;. </i>It doesn't say who owned Comstar at the time,
but we found that on 23-Aug-01, Renren bought it for <b>$15m</b> cash, by which
time it was involved in <i>&quot;provision of wireless services
application&quot;</i>. </p>

<h3>Track record: year to 30-Jun-01</h3>

<p>In the year to Jun-01, portal membership fees collapsed to just
$12k from 326 members, as Inworld abandoned charging membership fees during the
year. $5k was booked in the first quarter and $7k in the second. </p>

<p>Although prospectuses don't provide quarterly breakdowns, we can
figure these out after the fact by looking at the comparative year in published
quarterly reports. So the turnover from services in the year to 30-Jun-01 was: </p>

  <table class="numtable center">
    <tr>
      <th>Quarter</th>
      <th>Ended</th>
      <th>Turnover<br>HK$k</th>
    </tr>
    <tr>
      <td>Q1</td>
      <td>30-Sep-01</td>
      <td>13</td>
    </tr>
    <tr>
      <td>Q2</td>
      <td>31-Dec-01</td>
      <td>3,250</td>
    </tr>
    <tr>
      <td>Q3</td>
      <td>31-Mar-01</td>
      <td>1,973</td>
    </tr>
    <tr>
      <td>Q4</td>
      <td>30-Jun-01</td>
      <td>1,250</td>
    </tr>
    <tr>
      <td>Total</td>
      <td>&nbsp;</td>
      <td>6,486</td>
    </tr>
  </table>

<p>Not exactly stellar growth, is it? On these sales, Inworld
booked a net profit of $51k. </p>

<h4>Rainbow's shares-for-services </h4>

<p>Now things get interesting. In a contract dated 19-Oct-00 and
amended 8-Jun-01, Inworld agreed to develop the <a href="http://www.i-rainbow.com.hk/" target="_blank">website</a> of
<a href="../dbpub/articles.asp?p=15098" target="_blank">Rainbow
International Holdings Ltd</a> (<b>Rainbow, 8079</b>) for a nominal price of <b>$3m</b>,
of which only $0.1m was in cash and the balance was 7,250 shares (14.5%) in
Rainbow Cosmetic (BVI) Ltd (<b>Rainbow BVI</b>), allotted on 14-Jun-01. These
shares were converted into 39,629,125 shares (11.32%) of Rainbow at the IPO in
Oct-01, when Inworld sold 15m of these shares at $0.50 each, raising $5.56m net
of its share of listing expenses. The remaining 7.04% of Rainbow was subject to
a 6-month lock-up from the listing date of 15-Oct-01. </p>

<p>The prospectus of Rainbow shows that a company called E-Teck
Business Ltd (<b>E-Teck</b>) agreed on 19-Oct-00, the same day as the website
contract, to invest $3.5m in 7 convertible loan notes issued by Rainbow BVI, of
which 5 notes worth <b>$3m</b> were issued on 19-Oct-00 and the other 2 on
4-Dec-00. The conversion price of the notes was amended on 8-Jun-01, the same
day that Inworld's website contract was amended. </p>

<p>According to a Styland circular dated 5-Jul-02, E-Teck was
acquired by Styland on 14-Jun-01 from someone called Marilyn Tavares Ka Wai. We
don't know anything about Ms/Mr Tavares. The Rainbow prospectus doesn't mention
her/him, just stating the current ownership of E-Teck rather than its history.
On 14-Sep-01, E-Teck converted its loan notes into 8,750 shares of Rainbow BVI
(17.5%) and after selling 5m shares in the IPO, it retained 12.24% of Rainbow. </p>

<p>Although the nominal price on the website contract was $3m, the
back pages of Inworld's prospectus reveal that on the day of the contract,
Rainbow's Chairman, Ms Aldy Li Ngar Kwan, granted for $10 a put option giving
Inworld the right to sell her its shares in Rainbow BVI for $900k. The option
expiry date was not specified, but it was terminated when Rainbow was listed. If
Rainbow had not listed, then Inworld might be looking at exercising the put and
getting a total contract value of <b>$1m</b> (including $0.1m cash) rather than
$3m. </p>

<p>Rainbow's $3m contract made it Inworld's largest customer,
accounting for <b> 46.2%</b> of the total turnover of $6.486m for the year. So what we
have here is one GEM candidate (Inworld) booking non-cash revenue from another
GEM candidate (Rainbow), both of which eventually had Styland as a shareholder.
And yet, Inworld's prospectus states that customers in which shareholders of
Inworld (holding over 5% of Inworld) <i>&quot;had interests&quot;</i> accounted
for only 5.6% of turnover - we guess it depends on when you mean by <i>&quot;had&quot;</i>. </p>

<h4>Renren </h4>

<p>Another big customer was shareholder Renren, for which Inworld
booked $420k in the year to 30-Jun-01 and a further $1.68m in the period up to
14-Dec-01 before the prospectus was finalised. Subsequent interim results for
the 6 months to 31-Dec-01 show total turnover of $2.657m, so Renren accounted
for <b>63.2%</b> of that. </p>

<p>As we explained in <a href="digitalmess.asp#dwfinance" target="_blank">Part
1</a>, at different times, billions of shares in Renren have been pledged to the lending arms of Styland and Digital World by a company
owned by Mr Mak Chi Yeung, the Chairman of Renren. </p>

<h4>Styland </h4>

<p>In the year to Jun-01, Inworld booked sales to Styland
comprising $200k for banner advertisements, $173k for computer software and $3k
for consultation, together with sales to its subsidiary Ever-Long of $12k, a
total of $388k, or 6.0% of turnover. The accountants' report says the sale of
software <i>&quot;was conducted as handling income with a 2.39% gross profit
margin&quot;</i>&nbsp; - which we presume means Inworld was reselling
software. </p>

<h4>Riverhill </h4>

<p>A subsidiary of <a href="../dbpub/articles.asp?p=13482" target="_blank"> Riverhill Holdings Ltd</a> (<b>Riverhill, 8127</b>),
which is 28.63% owned by Styland, bought $100k of banner advertisements. We will
cover Riverhill in a future article. </p>

<h4>Digital World </h4>

<p>The total of all banner ad sales in the year to 30-Jun-01 was
$1.050m. The prospectus records just 6 contracts, 5 of which were signed in
Nov-00, of which 4 were for three months and 1 (Styland) was for four months.
Based on their expiry dates, it appears that they were all signed between
16-20-Nov-00. The sixth (Renren) was signed in Jun-01 covering 11 months to
30-May-02, so it presumably didn't contribute much to revenue in the year. </p>

<p>So apart form Styland and Riverhill, it seems that 3 banner
contracts, from Digital World and two of its subsidiaries, probably contributed
the other $750k of banner ad sales. </p>

<p>In addition, Inworld booked services to <i>&quot;design and
construct a WAP system using the technology of the Inworld WAP system&quot;</i>
in a contract in Jan-01 to CWAP (HK) Ltd, wholly-owned by Digital World. As you
might <a href="digitalmess.asp#cwap" target="_blank">recall from Part 1</a>,
this portal was sold to Digital World by Mr Ngai and others in Aug-00, at which
point the WAP portal was purportedly already in operation, so it is not clear
what <i>&quot;design and construct&quot; </i>means in this context. </p>

<h4>Other customer(s) </h4>

<p>After all that, there are only 3 contracts unaccounted for, of
which 1 was signed in Jan-01 and 2 in May-01. In each case, the customer was
described as <i>&quot;a software house&quot;</i> and an <i>&quot;Independent
Third Party&quot;</i>. It is not clear whether these were the same customer. </p>

<p>The Jan-01 contract was for another &quot;Inworld WAP
System&quot; completed in Mar-01, while the May-01 contracts were for a stock
brokerage ordering system using the &quot;Inworld e-Stock System&quot; and an
online shopping system using the &quot;Inworld Marketplace System&quot;, both
completed that month. The accountants' report itemises sales by product, so we
know that the e-Stock System contributed $670k and the Marketplace System
contributed $450k, for a total of $1.020m. The brokerage system was presumably
for use by a licensed broker and not for the software house's own use. We don't
know which broker. </p>

<p>The price of the WAP system we can't tell, because it is
combined with the contract for the Digital World cwap.com portal, at a total of
$1.47m. But lets allocate 50% to each contract. </p>

<p>That means, by simple estimate, that these 3 contracts from one
or more &quot;Independent Third Party&quot; contributed just $1.755m, or <b>27.0%</b>
of sales. The rest were all related in the ways described. </p>

<h4>Accounts receivable </h4>

<p>At 30-Jun-01, accounts receivable were $2.720m. Assuming that
was all less than one year old, and remembering that $2.9m of the year's
turnover was in
shares received from Rainbow, that leaves turnover of only $866k for which
payment had been received by year-end. </p>

<h4>Post-IPO results </h4>

<p>In case you think our concerns about lack of substance are
over-stated, take a look at the results since then. In the first 9 months ended
31-Mar-02, Inworld
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020510/00000MC20020510130729J.pdf">booked</a>
turnover down 29% at just $3.713m and excluding the
$4.46m gain on sale of shares in Rainbow's IPO, it made a net loss of $3.744m. </p>

<h3>IPO Allotment</h3>

<p>Inworld
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20011228/00000MC20011228005505A.pdf">announced</a>
on 28-Dec-01 that its IPO was 50.8x subscribed in the retail tranche, comprising
only 14.4m shares or 10% of the offer, and 10.3x subscribed in the placing. The
public offer applicants included 50 who each applied for more than half the
shares available. Despite this apparently ecstatic reception, the offer price
was set at $0.32, in the middle of the wide $0.25-0.40 range.</p>

<p>The placing was sufficiently narrow to require a concentration
warning in the announcement, with the top 25 placees taking 88.2% of the
placing, and the top 10 getting 61.4%. The top placee got 20%, and another of the top 4 placees was <i>&quot;Cyber
World Technology Limited, a customer of the group&quot;</i>. That's owned by
Riverhill, which floated in Jun-01, and sunk HK$4m into Inworld stock for
7.6% of the placing.</p>

<p>Another placee, taking 3.33% of the placing, was <i>&quot;an
initial management shareholder... of International Capital Network Holdings
Ltd&quot; </i>which owns the financial adviser to Inworld. ICN itself took 0.77%
and Styland's Ever-Long Asset Management Ltd took 0.37%. ICNH was itself floated
on GEM a month before Inworld.</p>

<p>After an initial flurry of trading, the stock quickly dried up,
reaching a daily high of $0.46 on 14-Jan-02 and closing today at $0.245, with a
market cap of $141m which
is still about 4.3x its net tangible assets of $0.057 per share at 31-Mar-02.</p>

<h3>Post-IPO Acquisition</h3>

<p>On 10-May-02 in its latest quarterly report, Inworld disclosed
that in Mar-02 it acquired <i>&quot;a local company which
business is mainly focus on cyber cafe, online hotel booking service and hotel
online station service.&quot; </i>No financial details were disclosed, but it's
a fair bet that the acquired company is the operator of <a href="http://www.echotelbooking.com" target="_blank">www.echotelbooking.com</a>,
which advertises on Inworld's website and has a collection of Macau hotels. The
name just trips off the tongue, doesn't it? </p>

<h3>INEDs</h3>

<p>The independent non-executive directors of Inworld at the IPO
were Mr Cheng Koon Cheung (<b>Mr Cheng</b>) and Mr <a href="http://magazine.carleton.ca/2001_Spring/516.htm" target="_blank">Steve
Loo Chung Keung</a> (<b>Mr Loo</b>). A month after listing, on 31-Jan-02, Mr Loo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020204/00000MC20020201214104G.pdf">resigned</a>
without giving any reason publicly, and was replaced that day by Mr Leung Chun Cheng (<b>Mr
Leung</b>). </p>

<p>Mr Cheng is a director of various private companies which are
principally engaged in the advertisement, design, printing and other investment
business in Hong Kong. Mr Loo is or was a director and senior vice president of
Asia Television Ltd, one of Hong Kong's two terrestrial TV broadcasters. We know
nothing about Mr Leung, because the Listing Rules still don't require
biographies upon appointment, only if the director survives in office until the
next annual report. </p>

<h3>What does this tell you?</h3>

<p>Today, the GEM market index closed at a record daily low of 156.13,
down 84.7% from its high. For sure, some of it was due to the technology bubble
bursting, but a lot of it has to do with the ability to get the flimsiest of
track records past the noses of the Stock Exchange and its Listing Committee and
degrade the quality of the market in this, what the Government would have you
believe, is Asia's World City. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14791">Famous Tech International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5142">Good Resources Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15232">INTERNATIONAL CAPITAL NETWORK HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13482">RIVERHILL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1670">Skyfame Realty (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4978">STYLAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15098">Wisdomcome Group Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=14903">Chan, Alan Wai Lun (1976)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1862788">Fu, Raymond Tsin Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14902">Ngai, Kevin Kwok Kin (1975)</a></li>
				
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