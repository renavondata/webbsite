
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

<script type="text/javascript">document.title="Yue Fung's Paper Trail";</script>

	<div class="summary">In a highly dilutive share issue, calculator maker Yue Fung is proposing to invest in a company set up in February with capital of just HK$155,000. The company is now valued, by Chesterton Petty, at HK$160m. We take a close look at Yue Fung's paper trail.</div>

<h2 class="center">Yue Fung's Paper Trail<br>
<span class="headlinedate">23 November 2000</span></h2>
<p>Hong Kong-listed calculator maker <a href="http://www.yue-fung.com/" target="_blank">Yue
Fung International Group Holding Limited</a> (<b>Yue Fung</b>) yesterday <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001122/LTN20001122025.doc" target="_blank">announced</a>
the acquisition of a stake in an &quot;online trading business&quot; called
Slough Technology Limited (<b>Slough</b>), incorporated in the British Virgin
Islands. </p>

<p>According to the announcement,&nbsp; </p>

<blockquote>
  &quot;[Slough]
  targets to facilitate trading of electronic products between China companies
  and overseas companies by provision of online trading platform for buyers and
  sellers. In addition, the platform also aims to provide value-added trading
  services such as search engine, request for quotation and so on, latest
  technical and market information in electronics industry to facilitate
  transactions between buyers and sellers.&quot;
</blockquote>

<p>In other words, a B2B wannabe. As far as we can tell from web searches, the unnamed site is not
yet online. Slough was incorporated only on 18-Feb-00, and has recorded a loss
of HK$51,744 up to 31-Oct-00, when net assets were $103,256. Put them together
and assume no other capital changes, and you have a start-up capital of exactly
HK$155,000 (US$20,000). There are 20,000 shares in Slough. </p>

<p>Now Yue Fung proposes to buy 3,500 shares (17.5%) for HK$28m,
valuing Slough at $160m, or more than <b>1,000 times</b> its start-up capital.
And you thought dot-mania was over! Yue Fung will also subscribe HK$2m for 300
new shares in Slough, taking their stake to 18.72% in the enlarged company. </p>

<p>The entire cost is HK$30m in shares valued at HK$0.10 each, so
Yue Fung will issue 300m shares equal to <b> 45.2%</b> of its current capital and <b>31.1%</b>
of the enlarged capital. There are no selling restrictions on any of the vendors
or on Slough itself, and because they receive less than 35% of Yue Fung, they do
not trigger a takeover offer.&nbsp; </p>

<p>The vendors of the shares in Slough and the resultant holdings
in Slough are: </p>

<table class="numtable center fcl">
  <tr>
    <th>Vendor/ Issuer</th>
    <th>Holding<br>before (%)</th>
    <th>New<br>shares<br>in YF (m)</th>
    <th>Sale/<br>new<br>issue (%)</th>
    <th>Holding<br>after (%)</th>
  </tr>
  <tr>
    <td>Preparatory Profits Ltd</td>
    <td>5.63</td>
    <td>90</td>
    <td>5.63</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Goosey Trading Ltd</td>
    <td>5.00</td>
    <td>80</td>
    <td>5.00</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Riteaway Holdings Ltd</td>
    <td>5.00</td>
    <td>80</td>
    <td>5.00</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Digital Asian Ltd</td>
    <td>42.19</td>
    <td>15</td>
    <td>0.94</td>
    <td>40.64</td>
  </tr>
  <tr>
    <td>Mandy LAU Wai Man</td>
    <td style="border-bottom: solid black medium">42.19</td>
    <td style="border-bottom: solid black medium">15</td>
    <td style="border-bottom: solid black medium">0.94</td>
    <td>40.64</td>
  </tr>
  <tr>
    <td>Total</td>
    <td>100.00</td>
    <td>280</td>
    <td>17.50</td>
    <td>17.24</td>
  </tr>
  <tr>
    <td>Slough (new issue to YF)</td>
    <td></td>
    <td style="border-bottom: solid black medium">20</td>
    <td style="border-bottom: solid black medium">1.50</td>
    <td style="border-bottom: solid black medium">1.48</td>
  </tr>
  <tr>
    <td>Total after new issue</td>
    <td></td>
    <td>300</td>
    <td>19.00</td>
    <td>100.00</td>
  </tr>
</table>

<p>The company states that the vendors are all independent third
parties, but since it fails to disclose who owns the corporate vendors, we have no way to verify
this. Of the 280m shares to be issued to the vendors, 265m (or 27.5% of Yue
Fung) will be issued to four companies
with anonymous owners. The largest holding of any vendor will be 8.3% of Yue
Fung, which is less than the antiquated 10% disclosure threshold in Hong Kong.
That means we'll probably never know who owns the vendors and whether they have sold. </p>

<h3>Valuation</h3>

<p>Yue Fung states that the price: </p>

<blockquote>
  <p>&quot;was negotiated... with reference to the value of the
  entire interest in [Slough] of HK$160m as at 30-Oct-00 which was estimated by <a href="http://www.chesterton.com.hk" target="_blank">Chesterton
  Petty Limited</a> with reference to the projected financial data and business &nbsp;plan
  of [Slough].&quot; </p>

</blockquote>
<p>If the name seems familiar, regular readers will recall that
Chesterton Petty was responsible for the valuation of <a href="centsibility.asp" target="_blank">Cents.com
Ltd</a> in the controversial proposed acquisition by <a href="../dbpub/articles.asp?p=7078" target="_blank">Pacific
Challenge Holdings</a>, which was eventually aborted. They seem to be
establishing something of a track record in attaching massive valuations to
internet start-ups. Historians may note that by pure coincidence, Yue Fung's IPO
was sponsored by Pacific Challenge Capital. </p>

<p>We spoke to Andrew Slevin, Director of Industrial Services at Chesterton
Petty, who was unaware that the valuation had been used by Yue Fung. He told us
that Chesterton had been instructed by Slough &quot;to provide a valuation to
[Slough] to assist them in determining the potential value of the business for
discussion with investors&quot;, but he was not aware of the identity of the
investors. He also told us that the written report to Slough contained a
requirement for Chesterton's consent before it could be used by third parties. Mr Slevin
added that
the valuation was based on discounted cashflow as projected by Slough, that he
had never heard of Mandy Lau (who is the only human shareholder of Slough), and that
his instructions had come from a Mr Ivan Wong. </p>

<p>We have not seen the Chesterton Petty report, and we probably
never will, because &quot;Discloseable Transactions&quot; (where the
consideration is less than 50% of the issued shares of the company) require only
minimal disclosure in shareholders' circulars, even though approval of the share
issue is being sought. In this deal, the new shares are equal to
&quot;only&quot; 45.2% of the issued shares. A simple reference to the valuation
will satisfy the listing rules. No accountants' report on the acquisition is
required either - just a bottom-line disclosure of profits before and after tax,
and net assets. </p>

<p>We do know that in the Cents.com case, which was a &quot;Major
Transaction&quot; under the listing rules, Mr Slevin wrote for Chesterton Petty: </p>

<blockquote>
  <p>&quot;the financial information, especially that relating to
  projected revenues... was provided by [E1 Media, the vendor]. We have relied
  to a considerable degree on this financial data and we give no opinion of the
  reasonableness or attainability of the underlying assumptions of the financial
  forecasts&quot; </p>

</blockquote>
  <p>In other words, we based the valuation on the projections but
  we don't know whether they are reasonable, or if we do know, we're not saying. </p>

<h3>Supercam</h3>

<p>This is not the first deal Yue Fung has done with its shares. On
5-May-00 it <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000508/LTN20000508025.doc" target="_blank">announced</a>
the acquisition of 35% of <a href="http://www.supercaminc.com" target="_blank">Supercam
Data, Inc</a> (<b>Supercam</b>), which &quot;is principally engaged in the
development of digital image processing technology including image processing
software and multifunctional digital camera&quot;. In fact, one of its products,
the <a href="http://www.supercaminc.com/products.htm" target="_blank">Wondereye</a>,
is made by HK-listed <a href="http://www.irasia.com/listco/hk/welback/products/cam&amp;eye.html" target="_blank">Welback
Holdings</a>, as shown on its web site. </p>

<p>Supercam was incorporated less than a year earlier, on 2-Jun-99.
As all of its operating expenses had been capitalised with no turnover, Supercam
had unaudited net assets at 31-Dec-99 of just <b>US$1m</b> (HK$7.75m), the same
as its start-up equity. </p>

<p>For 35% of this, Yue Fung paid US$9.8m (HK$75.95m), equal to 35%
of the valuation of <b>US$28m</b> (HK$217m) by American Business Appraisal Inc
at 28-Feb-00. That's 28 times start-up capital. Apart from references to this
deal, we could find no trace of this &quot;independent professional valuer&quot;
on the web, and the shareholders' <a href="http://www.irasia.com/listco/hk/yuefung/circulars/c000529.htm" target="_blank">circular</a>
did not contain a copy of their report. </p>

<p>The consideration was payable with HK$13.55m in cash and the
issue of 120m shares at $0.52 each, half to Tong Wai Keung and half to Lee
Cheung Woo (<b>Mr Lee</b>). As a result, each person had 9.95% of the enlarged
Yue Fung, just below the 10% disclosure threshold. There was no lock-up on the
shares, so they were free to sell without disclosure. </p>

<p>The share price has been plunging ever since. The rest of
Supercam is owned by Ma Luen Chi (22%), Ha Tung Lak (5.5%), Hui Tung Sing (5%)
and Mr Lee (32.5%). On 7-Aug-00 Yue Fung announced plans to buy another 16% of
Supercam based on the same valuation, this time for 232.96m shares at $0.15
each.&nbsp; This deal would have been treated as a &quot;Major Transaction&quot;
under the listing rules. The deal was scrapped on 29-Sep-00, citing unspecified
&quot;commercial reasons&quot; but stating an intention to continue to negotiate
for new terms. </p>

<p>On 23-Aug-00 the controlling shareholders <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000824/LTN20000824014.doc" target="_blank">agreed</a>
to subscribe <b>HK$20m</b> for a zero-coupon 3-year convertible note which
converts at just $0.16 per share. The next day, a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000825/LTN20000825030.doc" target="_blank">placing</a>
and subscription of 60m new shares at $0.15 was made through <a href="http://www.kingsway2000.com" target="_blank">Kingsway
SW Securities Ltd</a>, raising <b>$8.3m</b> net. The share issue completed on
7-Sep-00 and the convertible bond was approved on 3-Oct-00. Both issues are
intended to finance the manufacture and development (presumably in reverse
order) of a new series of personal digital assistants called &quot;Smart
Doctor&quot;. </p>

<h3>Performance</h3>

<p>The shares are now trading at $0.108, down 70% year-to-date. Yue
Fung listed on 8-Oct-97 with an IPO of 65m shares at $1.00 per share. It just
beat its $40m prospectus profit forecast, recording $40.6m in the year to
31-May-98. As is so often the case with IPOs, the flotation year was their best
year ever, and it has been downhill since, recording profits of $30.8m to
31-May-99 and $20.2m to 31-May-00. The company has only once paid a dividend,
being the 3.5 cents promised in the prospectus for the year to 31-May-98. </p>

<h3>Accounting for Investments</h3>

<p>Yue Fung's acquisition behaviour wasn't always so erratic. Last
financial year, it
made two acquisitions, both of which, to be fair, seemed quite sensible and
compatible with the core business. </p>

<h4>Rubber key maker </h4>

<p>On 28-Jan-00, it <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000131/LTN20000131083.HTM" target="_blank">agreed</a>
to buy 25% of Richlink International Holdings Ltd (<b>Richlink</b>) for
HK$34.875m, paid for with 60m new shares at $0.45 each plus the transfer of
machinery and moulds worth $7.875m. That deal followed an aborted attempt by
Richlink to reverse itself into a NASDAQ OTC shell called <a href="http://www.freedgar.com/Search/ViewFilingsData.asp?CIK=792935&amp;Directory=792935&amp;Year=00&amp;SECIndex=2&amp;Extension=.tst&amp;PathFlag=0&amp;nStartLoc=5081&amp;nEndLoc=36218&amp;TextFileSize=150852&amp;DateFiled=1/7/2000&amp;FormType=10KSB&amp;SFType=&amp;SDFiled=&amp;tabletype=1&amp;tablename=&amp;SourcePage=FilingsResults&amp;OEMSource=&amp;UseFrame=1&amp;CompanyName=NOVA+NATURAL+RESOURCES+CORP" target="_blank">Nova
Natural Resources Corp</a>. </p>

<p>Richlink makes <a href="http://www.gold-wo.com.hk/" target="_blank">melamine</a>
products, silicone rubber key products and other electronic components.
Calculator components supplied by Richlink accounted for HK$7.3m, or 7.3% of Yue
Fung's purchases in the year to 31-May-99. The remaining 75% of Richlink was
held by Mr Fu Chu-kan (67.5%) and Ms Fu Yu-ling (7.5%), each having sold 12.5%.
The deal was completed on 15-Mar-00.&nbsp; </p>

<p>Richlink made an unaudited profit in 1999 of HK$23.25m, and
based on a reasonable 6 times earnings, Yue Fung valued it at $139.5m, so 25%
was priced at $34.875m. By coincidence, the head office is just 1 floor below
Yue Fung in Cable TV Tower. </p>

<h4>PCB maker </h4>

<p>On 18-Feb-00 Yue Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000221/LTN20000221081.HTM" target="_blank">bought</a>
30% of <a href="http://www.athl.com.cn/" target="_blank">Advanced Technology International
Holdings Ltd</a> (<b>ATIH</b>) for HK$57.33m, paid for with 80m new shares at
$0.60 each plus $3m cash and the transfer of machinery and moulds worth $6.33m. </p>

<p>ATIH, incorporated in the BVI on 18-Nov-98, is a printed circuit
board maker founded and run by Mr Roy Ho Wing-cheong (<b>Roy Ho</b>), who was
formerly with HK-listed PCB maker Elec &amp; Eltek. The business in practice
goes back to 1991 and ATIH was created as part of a restructuring. ATIH is a
supplier to Yue Fung, accounting for HK$7.1m, or 7.1% of Yue Fung's purchases in
the year to 31-May-99.&nbsp; </p>

<p>Yue Fung cited an unaudited profit of ATIH for the year to
31-Dec-99 of HK$27.3m, multiplied by 7 to get a valuation of $191.1m, hence 30%
was priced at $57.33m. Of that, 17% was purchased from Roy Ho and 13% from Ms
Chan Yuet-hing. After the deal, Roy Ho held 58% and Mr Dennis Ho Wing-hung
(probably his brother) held 12% of ATIH. </p>

<p>On 24-Mar-00 a restructuring took place. ATIH was transferred to a
BVI company called I.World Ltd (<b>I.World</b>) which swapped all of ATIH for
16.3m new shares in a Nasdaq OTC company called <a href="http://money.vmc3.com/" target="_blank">Score
One Inc</a>. As a result, Yue Fung owns 30% of I.World, which owns 81.8% of
Score One Inc. US filings tell us that the head office of Score One is now 2
floors above Yue Fung and 3 floors above Richlink in Cable TV Tower. </p>

<h4>Accounting treatment </h4>

<p>Normally, since the company owns over 20% of Richlink and
I.World, they would treat them as &quot;associates&quot; which would be
&quot;equity accounted&quot;. That means you record
the share of profits or losses of such companies in your own accounts, and your
balance sheet includes associates based on your share of their net asset value. Indeed, in both
acquisition announcements, Yue Fung wrote that Richlink/ATIH <i> &quot;will become
an associated company of [Yue Fung]&quot;</i>. </p>

<p>However, in its annual report for 31-May-00, Yue Fung says it is
<i>&quot;not in a position to exercise significant influence&quot;</i> over the
operations of Richlink and I.World. Therefore it has treated both holdings as
&quot;long term investments&quot; rather than associates. This allows Yue Fung
to carry the holdings at cost rather than write them down to net asset value,
and on the income side, no losses are recorded, and only dividend income is
shown (none so far). </p>

<p>At the same time, Yue Fung recorded the deposit on
Supercam (the acquisition of which was pending at the year end) as a
&quot;deposit against long term investment&quot;, implying that the 35% stake
would be treated as an investment, not an associate. </p>

<p>Yue Fung will own less than 20% of Slough, so it will count as
an investment, not an associate. This lumps it in with Supercam, I.World
and Richlink, creating a substantial degree of opacity to the
accounts, since we will see a large part of the assets only as long term
investments, with no disclosure of their results. Yue Fung should go beyond the
minimum diclosure and at least include summaries of the accounts of these
investments if it chooses not to equity-account them. </p>

<h3>Recommendation</h3>

<p>The proposed acquisition of Slough is scant on detail, but
appears to be another serious dilution to minority
shareholders in Yue Fung. </p>

<p>This case highlights a pressing need for the Stock Exchange
to require full disclosure of counterparties in such transactions, not just a
string of anonymous BVI companies. If we are told who owns a counterparty, then although
we can never be sure that a human being is not acting as a nominee for someone
else, at least we have someone who will put their name to the deal, who faces
the risk of prosecution if they lie, and who is not a
post office box on a Caribbean island. </p>

<p>The Stock Exchange should also require circulars on Discloseable
Transactions to contain an accountant's report on full financial statements of
the target, so that we can see consider the target's accounts before approving
the relevant share issue. It is simply unacceptable for a wannabe world-class
market to allow issues of up to 50% of a company's shares on the basis of such
poor disclosure. </p>

<p>Where a company cites an independent valuation in relation to a
transaction, then that valuation report should be published in the shareholders'
circular, and the valuer should state that the financial projections on which they
rely are, in their opinion, reasonable and made by the target after due and
careful enquiry, rather than disclaiming any opinion on them. That would result
in professional firms thinking a lot more carefully before signing off on
sky-high figures. </p>

<p>In the meantime, unless Yue Fung and Chesterton Petty are
willing to meet these standards, we urge public Yue Fung shareholders to vote
against the transaction. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5587">Knight Frank Petty Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2992">YUE FUNG INTERNATIONAL GROUP HOLDING LIMITED</a></li>
				
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