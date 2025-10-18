
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

<script type="text/javascript">document.title="The Ghost of CT3";</script>

	<div class="summary">Do you enjoy horror stories from the crypt of transactions past? In an exclusive piece of forensic analysis, we'll tell you how the undisclosed owner(s) of  two BVI companies made US$84.8m on transactions involving Container Terminal 3 and two listed companies - Yu Ming Investments and New World Infrastructure.</div>

<h2 class="center">The Ghost of CT3<br>
<span class="headlinedate">9 September 1999</span></h2>
<p>This is the story of how the undisclosed owner of two BVI
companies made a profit of US$84.8m, or 70%, by buying an interest in Container
Terminal 3 at a 45% discount to a contemporary valuation and selling it a year
later to <a href="../dbpub/orgdata.asp?p=468" target="_blank">New World Infrastructure 
Ltd</a> (0301, <strong>NWI</strong>). The bulk of this stake was sold by
<a href="../dbpub/orgdata.asp?p=793">Yu
Ming Investments Ltd</a> (0666), then known as SHK Hong Kong Industries Ltd.</p>

<p>As always, we start with the background....</p>
<h3>Container Terminal 3</h3>
<p>The development of CT3 at Kwai Chung was awarded by the Hong Kong Government
to Sea-Land Orient Ltd (SLO) in 1970. SLO is a subsidiary of CSX Corporation, a
US-listed transportation giant. At the time, the only other port operators were
Hutchison and Modern Terminals Ltd.</p>
<h3>Asia Terminals Ltd</h3>
<p><a href="http://www.nw-infra.com.hk/projects/portfolio_cargo3.html" target="_blank">Asia Terminals Limited (ATL)</a>
was established in 1981 as a joint
venture between SLO (51%) and <a href="../dbpub/orgdata.asp?p=3943">Far East Consortium Limited</a> (0035, 49%). It built and operates the
enormous container freight station and cargo distribution centre known as Asia
Terminals Centre over one end of the land at CT3.</p>
<p>In 1985, <a href="../dbpub/articles.asp?p=432">New World Development Co Ltd</a> 
(0017) acquired Far East's 49% interest in ATL and
subsequently sold a 10% stake to Central Development Ltd, the private property firm
which owns (amongst other things) the quaintly-named Central Tower and Central
Building in Central. RJ Reynolds Tobacco Inc, the US tobacco giant, acquired a
1% interest in ATL from SLO, reducing its stake to 50%.&nbsp;</p>
<h3>Ready City</h3>
<p>In 1991, SLO transferred both CT3 and its 50% interest in ATL to
<a href="http://www.nw-infra.com.hk/projects/portfolio_cargo4.html" target="_blank">
Sea-Land Orient Terminals Limited (SLOT)</a>, a newly incorporated company, in which
Ready City Ltd (RCL) then bought a 33.34% stake, leaving SLO with 66.66%.&nbsp;</p>
<p>The NWI prospectus dated 17-Oct-95
states:</p>
<blockquote>
<p>&quot;the shareholders in RCL were initially introduced and
brought together by New World for the purpose of forming a consortium to acquire
this interest in SLOT&quot;</p>
</blockquote>
<p>According to the prospectus, RCL was then owned
as follows:</p>
<table class="numtable center">
  <tr>
    <td class="left">New World Infrastructure</td>
    <td>41.5%</td>
  </tr>
  <tr>
    <td class="left">Yu Ming Investments</td>
    <td>35.5%</td>
  </tr>
  <tr>
    <td class="left">Sunnet Investment Pte. Ltd</td>
    <td>9.0%</td>
  </tr>
  <tr>
    <td class="left">Hong Leong International (Hong Kong) Ltd</td>
    <td>5.0%</td>
  </tr>
  <tr>
    <td class="left">JF Asia Select Ltd</td>
    <td>5.0%</td>
  </tr>
  <tr>
    <td class="left">Kopola Investment Company Ltd</td>
    <td>3.0%</td>
  </tr>
  <tr>
    <td class="left">Standard Chartered Asia Development Capital Ltd</td>
    <td>1.0%</td>
  </tr>
  <tr>
    <td class="left">Total</td>
    <td>100.0%</td>
  </tr>
</table>
<p>JF Asia Select was an investment company managed by Jardine
Fleming, and likewise Standard Chartered Asia Development Capital was managed by
the bank of similar name. Kopola Investment Company was owned 50:50 by two
brothers, <a href="../dbpub/positions.asp?p=817">Hamilton Ho Hau Hay</a> and 
<a href="../dbpub/positions.asp?p=159">Norman Ho Hau Chong</a>. Norman Ho was a director
of Yu Ming until 21-Jun-96.</p>
<p>Hong Leong International (Hong Kong) was a subsidiary of Hong
Leong Investment Holdings Pte Ltd, which in turn was (and is) held by Kwek Holdings Pte
Ltd and various members of the Kwek family of Singapore which controls
Singapore-listed City Developments Ltd.&nbsp;</p>
<h3>Sunnet Investment</h3>
<p>The NWI prospectus does not mention that Sunnet Investment,
which owned 9% of RCL, was itself related to New World. An annual return
of Sunnet filed in Singapore in 1995 reveals that Chow Tai Fook Enterprises Ltd,
of the Cook Islands, held 47.69% of Sunnet. Chow Tai Fook is the controlling
shareholder of New World Development. A number of BVI companies were also on
the register.</p>
<p>Directors of Sunnet included Cheng Yu Tung, Chairman of NWD, his
sons Henry Cheng Kar Shun and Cheng Kar Shing, and his brother Cheng Yue Pui, as
well as Chan Kam Ling, who is a director of NWI and NWD.</p>
<p>If we take Sunnet and NWI together then their combined interest
in RCL was 50.5%, normally enough to control the company.</p>
<h3>The Valuation of RCL</h3>
<p>The NWI prospectus on 17-Oct-95 contained an independent
valuation of its interests in ATL and SLOT by Colliers Jardine. The reference
date for the valuations was 31-Aug-95 but there would not have been any material
change between that date and the prospectus date (since otherwise the prospectus
should have said so).</p>
<p>Since SLOT was the only material asset of RCL, we can use these
valuations to infer a valuation on RCL. The valuation of NWI's 13.84% interest in SLOT was given as
HK$1,203m, while NWI's 45.92% effective interest in ATL was valued at HK$1,530m.
Now remember that NWI had a 39% direct interest in ATL, which we must remove for
the purpose of our calculation. The other 6.92% interest in ATL arose from
holding 41.5% of RCL which owned 33.34% of SLOT, which owned 50% of ATL.
Multiply those 3 figures together and you get 6.92%.</p>

<p>So we can split NWI's interest in ATL as follows:</p>

  <table class="numtable center">
    <tr>
      <td class="left">&nbsp;</td>
      <td><i>Share</i></td>
      <td><i>Valuation HK$m</i></td>
    </tr>
    <tr>
      <td class="left">Direct interest in ATL</td>
      <td>39.00%</td>
      <td>1299.5</td>
    </tr>
    <tr>
      <td class="left">Interest in ATL via RCL</td>
      <td>6.92%</td>
      <td>230.5</td>
    </tr>
    <tr>
      <td class="left">Total effective interest in ATL</td>
      <td>45.92%</td>
      <td>1,530.0</td>
    </tr>
  </table>
<p>&nbsp;This means we can now infer a valuation of NWI's 41.5%
stake (83 shares) in RCL:</p>

  <table class="numtable center">
    <tr>
      <td class="left">&nbsp;</td>
      <td><i>HK$m</i></td>
    </tr>
    <tr>
      <td class="left">Interest in SLOT via RCL</td>
      <td>1,203.0</td>
    </tr>
    <tr>
      <td class="left">Interest in ATL via RCL</td>
      <td>230.5</td>
    </tr>
    <tr>
      <td class="left">Total value of interest in RCL</td>
      <td>1,433.5</td>
    </tr>
    <tr>
      <td class="left">Value per share of RCL</td>
      <td>17.27</td>
    </tr>
    <tr>
      <td class="left">Value per share of RCL</td>
      <td><b>US$2.233m</b></td>
    </tr>
  </table>
<h3>The Yu Ming Sale</h3>

<p>On 9th November 1995, just 23 days after the valuations were
published, Yu Ming and others entered into agreements with two anonymous BVI companies
called Peak Success Ltd and Enrich Ltd in respect of the sale of a 49.5%
interest in RCL. The bulk of this stake, 35.5% of RCL, was sold by Yu Ming. As
practitioners will know, one of the great things about BVI companies is that it
is impossible to access their share registers without their consent, so they are
a dead-end in investigation terms. They can also have bearer shares, with no
registered owner.</p>

<p>RCL had 200 shares in issue and Yu Ming sold 71 shares (35.5%)
to Peak Success. For each share there was also a shareholder's loan
to RCL, but as this is the same for each share, we can simplify the process by
treating the entire consideration as being paid &quot;per share&quot; (probably
to reduce stamp duty, Peak Success bought the shares while Enrich bought the shareholder
loans). Yu Ming also was a sub-participant in a loan to RCL through a financial
institution which amounted to about US$271k at 7-Nov-95.</p>

<p>The price which Peak Success and Enrich paid Yu Ming was about US$86.87m.
Deducting the small loan sub-participation amount, this reduces to US$86.60m
(then HK$669.8m) or <b>US$1.220m</b> per share.</p>

<p>But wait a minute - three weeks earlier, the same interests had
been professionally valued at the equivalent of <b>US$2.233m</b> per share. So
Yu Ming sold its stake for at a <b>45% discount </b>to the valuation. Yu Ming
was the largest but not the only shareholder of RCL to sell its stake in RCL; other shareholders holding 28 shares, or 14%, also sold on
the same terms, giving the buyer a total of 99 shares, or 49.5%. The only
shareholder who didn't sell was Sunnet Investment, which as we have noted, was
related to New World. Perhaps they didn't like the terms.</p>

<p>That of course made us wonder why New World didn't buy the 49.5%
stake instead. As the owner of 41.5%, it would be the natural buyer to increase
its stake to 91%. The price paid by Peak Success and Enrich was a total of <b>US$120.8m</b> 
(HK$933.9m) and the
discount to valuation amounted to US$100.3m (HK$775.9m).</p>

<h3>Interests in Yu Ming</h3>

<p>The sale of RCL was a &quot;Major Transaction&quot; for Yu Ming, (the
proceeds represented 65% of its net assets at 30-Sep-95) but because it was not
a connected transaction, Yu Ming was able to obtain written approval from more
than 50% (in fact, 58.03%) of its shareholders and thereby avoid a general
meeting. The shareholders at the time included Sun Hung Kai &amp; Co. (through
various subsidiaries, holding 22.95%), China Poly Group (the People's Liberation
Army arm, holding
11.39%) and <a href="../dbpub/positions.asp?p=788">Tony Fung Wing Cheung</a> (11.39%), who was then, and is now, the
Chairman of Yu Ming. Together with Norman Ho (0.96%) these added up to 50.31%,
so assuming they consented, another 7.72% of shareholders gave their consent.</p>

<p>At 30-Jun-95, about 4 months before the transaction, the
substantial shareholder list had also included Gold Triple Ltd (10.33%) in which
both Sun Hung Kai &amp; Co. and New World Development were interested (meaning
they owned at least one third of it each- the name suggests a third owner). NWD
also had an 8.64% interest in Yu Ming via a company called Concord Associates
Ltd, while Tony Fung held no shares at all. Henry Cheng, Peter Cheng and
Alexander Chow Yu Chun (all from NWD) were directors of Yu Ming until 18-Sep-95,
less than two months before the transaction.
Mr. Chow has recently (16-Jun-99) been reappointed to Yu Ming, this time as an
&quot;Independent Non-Executive Director&quot;.</p>

<p>In the intervening period prior to the RCL sale, Gold Triple
and NWD had disappeared from the substantial shareholder list (meaning they were interested in less than
10%) and Tony Fung had increased his holding from zero to 11.39%. Bringing you
up to more recent times, as of 31-Dec-98, Mr. Fung had increased his interest to
34.58% of Yu Ming, just below the 35% takeover threshold.</p>

<p>Since the agreement for the sale by Yu Ming of its RCL shares
was &quot;in the ordinary course of business&quot;, the circular to shareholders
describing the transaction did not list the agreement under &quot;material
contracts&quot; and therefore it was not included in the documents which were put
on display. That's a loophole the Stock Exchange should close.</p>

<p><b>Now we come to the meat in the sandwich......</b></p>

<h3>One year later</h3>

<p>Roll the clock forward a year, and on 25-Nov-96 we find an
announcement by NWI that it has... guess what...agreed to buy Peak Success and
Enrich (which own the 99 shares in RCL and the shareholder loans to RCL) for
HK$1,590m (<b>US$205.6m</b>) from another BVI company called Tiffiny Overseas
Ltd, whose owner(s) were not disclosed. This agreement followed a non-binding memorandum
of agreement dated 6-Nov-96, when it was agreed that the consideration would be
split 50% shares and 50% cash. The purchase increased NWI's interest in RCL from
41.5% to 91%.</p>

<p>The price per share agreed by NWI works out at <b> US$2.077m</b> per
share, or a reasonable discount of 7.0% to the valuation published a year
earlier. NWI was advised by Goldman Sachs on the transaction and on this
occasion we have no
reason to doubt their judgment, nor do we query the earlier professional
valuation by Colliers Jardine.</p>

<p>Regardless of whether you agree with the valuations, the anonymous ultimate owner(s) of Peak Success and
Enrich made a
profit of <b>US$84.8m</b> (HK$656m) in just 1 year, or a return of <b>70%</b>.
In our calculation we have ignored the fact that by the time the deal with NWI
was signed on 25-Nov-96, the value of the NWI shares forming half of the agreed
consideration had increased by 13.6% since the non-binding memorandum of
agreement on 6-Nov-96, adding a further HK$108m to the deal.</p>

<h3>What do we know?</h3>

<p>This whole affair raises some interesting questions, to which we
will probably never get answers, but if you wish to tell us, anonymously,
<a href="../contact/default.asp">e-mail
us</a>, and with your help we may progress. Perhaps you were working for one of
RCL's shareholders at the time and may recall the sale.</p>

<p>We wonder why the other shareholders of RCL (excluding the
NWI-related Sunnet) chose to go with Yu Ming into the deal. They were making a
decent profit over their 1991 book cost, but that's not the point - if they had
done their sums (as we have done) then they would know that the offer was a 45%
discount to a contemporary valuation.</p>

<p>Who were the beneficial owner(s) of Tiffiny Overseas, Peak
Success and Enrich? Did the boards of Yu Ming and NWI (including the independent
directors) know who they were dealing with? The respective announcements only
describe Peak Success, Enrich and Tiffiny Overseas as being
(in standard terms) &quot;independent third parties&quot;.&nbsp;</p>

<p>Why didn't NWI step in and make a better offer to Yu Ming for
its shares in RCL? After
all, they were the obvious potential buyer. It is not unusual to have
pre-emption arrangements in a joint venture such as RCL, so that any shares must
be offered to other shareholders before being sold to third parties. Was this
the case in RCL, and if so, did NWI, freshly funded by its flotation, reject
this attractive offer? Indeed, the NWI prospectus stated that of the flotation
proceeds:</p>

<blockquote>
  <p>&quot;approximately [HK]$901m will be used for potential
  investments in possible future projects and to fund negative operating
  cashflows and other general corporate purposes&quot;.</p>

</blockquote>

<p>That left it wide open for the proceeds to be used on acquisitions such as
RCL.</p>

<p>Independent shareholders of NWI must wonder why the company
didn't act on the apparent opportunity in 1995, and get the stake at a 45%
discount to valuation. Equally, independent shareholders of Yu Ming must wonder
why they didn't get the benefit of the 70% premium paid a year later.
Meanwhile, the ghost(s) of CT3 are happily counting their US$85m profits.</p>

<h3>A footnote</h3>

<p>At the time of the purchase by NWI of Peak Success and Enrich,
taking its interest in RCL up to 91%, the remaining shareholder of RCL was no
longer Sunnet Investment (a Singaporean company related to New World) but had
become Favour Investments Ltd (described as an independent third party).
According to the 1998 annual report of NWI, in May-98, NWI acquired this stake,
increasing its interest to 100% of RCL.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3607">ATL LOGISTICS CENTRE HONG KONG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3608">CSX WORLD TERMINALS HONG KONG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=468">NEW WORLD TMT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3606">READY CITY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=793">SHK Hong Kong Industries Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=788">Fung, Tony Wing Cheung</a></li>
				
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