
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

<script type="text/javascript">document.title="Skynet Loss";</script>

	<div class="summary">Skynet (International Group) Holdings (SIGH), once unknown for its marbles, has been an internet play since 1999. Webb-site.com shows you how MAE Holdings ended up paying $35.75m for 0.006% of Skynet Ltd, a subsidiary of SIGH, after being diluted beyond its wildest dreams in circumstances only now revealed. We also spotlight the not-unrelated HKSky-e and show how it parlayed dotcoms with Asia Tele-Net and MAE, ultimately making its owner the largest shareholder and Chairman of MAE.</div>

<h2 class="center">Skynet Loss<br>
<span class="headlinedate">5 February 2001</span></h2>
<p>We do love a tangled tale, and they don't get more complex than
this. You may need to take notes, but it will be worth it. We <a href="mae.asp" target="_blank"> last looked</a> at MAE Holdings Ltd (<b>MAE</b>) in
Sep-99, and
warned readers about this stock. Now we'll take you behind the structuring
of Skynet Ltd (<b>Skynet</b>), and show you how MAE has seen its 13.5% stake at
a cost of over HK$35m watered down to 0.006% by some questionable share issues of Skynet. </p>

<p>Skynet Ltd now owns a mixed bag of investments including <i>&quot;substantial
interests&quot; </i>(which could mean 10% or more) in a stock-trading platform
with links to brokerages, called <a href="http://www.hkstock.com/" target="_blank">hkstock.com</a>
and <a href="http://www.gameplayers.com.hk/" target="_blank">gameplayers.com.hk</a>
and 23% of <a href="http://www.hkcyber.com/" target="_blank">hkcyber.com</a>, which slipped onto
the GEM market last year. </p>

<p>On 23-Sep-99 Skynet (International Group) Holdings Ltd (<b>SIGH</b>)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990924/LTN19990924043.HTM" target="_blank">announced</a>
that it planned to invest an initial HK$25m for <i>&quot;about 50%&quot;</i> of
Skynet, which <i>&quot;had already acquired two internet content providers,
namely 30% shares in hkcyber.com and 15% shares in gameplayers.com&quot;</i>. </p>

<p>HK Stock Ltd, which runs hkstock.com, was 28.05% owned by
HK-listed Pearl Oriental Cyberforce Ltd at 31-Dec-99, through its <a href="http://www.grandcyber.com/" target="_blank">Grand
Cyber</a> subsidiary. It claimed to be the largest shareholder, in which case
Skynet owns less than that. </p>

<p>HK-listed SIGH was known as Companion Marble (Holdings) Ltd
until 28-Oct-99 and then as Companion Dynamic (Holdings) Ltd until 29-Mar-00. </p>

<h3>MAE buys in</h3>

<p>On 11-Oct-99 MAE <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991012/LTN19991012031.HTM" target="_blank"> announced</a> it had
acquired
from Howay Technology Ltd (<b>Howay</b>) 1,040,000 shares, or 8% of Sunstar
Technology Ltd (<b>Sunstar</b>) for <b> HK$4m</b> in cash. At the time, it was stated
that Sunstar <i>&quot;is currently holding 25% interest in Skynet&quot;</i>. It
also stated that Skynet was beneficially owned as to 25% by Royal Fair
Investment Ltd (<b>Royal Fair</b>), 25% by Sunstar and 50% by Gold Cloud Agents
Ltd (<b>Gold Cloud</b>) and to the knowledge of the directors, Gold Cloud,
incorporated in the BVI, was
wholly-owned by SIGH. </p>

<p>In fact, those Skynet ownership details were inaccurate, because Skynet
had only
2 shares in issue since it was incorporated in HK on 11-Aug-99. They may have
intended that the shares would be issued as stated, but records filed at the Hong Kong
Registrar of Companies (<b>RoC</b>) show that 45 days later on 25-Nov-99, Skynet allotted shares as
follows: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Name</th>
      <th>New shares</th>
    </tr>
    <tr>
      <td>Gold Cloud</td>
      <td>7,498</td>
    </tr>
    <tr>
      <td>Sunstar</td>
      <td>2,500</td>
    </tr>
    <tr>
      <td>Total</td>
      <td>9,998</td>
    </tr>
  </table>

<p>Note that there is no sign of Royal Fair in that allotment, so
presumably its 25% stake was later acquired from Gold Cloud. </p>

<p>The shares were issued at <b> $3,000 per share</b> for a total of
$29.994m, although only $13.998m was initially &quot;paid&quot; and the rest was
&quot;payable&quot;. As you can see, Skynet was capitalised at <b>$30m</b>, but
MAE's 2% indirect stake valued the company at <b>$200m</b>.
Interestingly, MAE wrote on 11-Oct-99: </p>

<blockquote>

<p>&quot;To the best knowledge of the Directors, Skynet will be
launched to the market in/around November 1999 with an estimated investment cost
of HK$200 million&quot; </p>

</blockquote>

<h3>Sunstar's Shareholders</h3>

<p>We don't know who owned Howay, but they started out claiming 14%
of Sunstar,
sold 8% to MAE and transferred the other 6% to Concept Kingdom Ltd (<b>CKL</b>),
so that, according to the MAE announcement, Sunstar was then owned as follows: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Name</th>
      <th>Sunstar<br>stake %</th>
    </tr>
    <tr>
      <td>CKL</td>
      <td>76</td>
    </tr>
    <tr>
      <td>MAE</td>
      <td>8</td>
    </tr>
    <tr>
      <td>Starcom Investment Ltd (<b>Starcom</b>)</td>
      <td>8</td>
    </tr>
    <tr>
      <td>East Glory International Group Ltd (<b>East Glory</b>)</td>
      <td>8</td>
    </tr>
    <tr>
      <td>TOTAL</td>
      <td>100</td>
    </tr>
  </table>

<p>It later emerged that Starcom is owned by HK-listed <a href="http://www.starlight.com.hk/" target="_blank">Starlight
International Holdings Ltd</a>, which records an unlisted investment of $1.04m
at 31-Mar-00, presumably its stake in Sunstar. </p>

<p>The number of shares supposedly purchased by MAE implies that
there were 13m Sunstar shares in issue, but although the authorised capital (the
maximum number of shares) was increased from 10,000 to 13m shares on 2-Oct-99,
there is no RoC record of any allotment beyond the
first 2 shares. Either someone slipped up, or in the worst case, the shares were
not issued. If they had all been issued at par value then $13m
would have been raised, more than the $7.5m invested in Skynet shares. Perhaps
the rest was a shareholders' loan to Skynet. </p>

<h3> Peeling the onion</h3>

<p> At this stage in the article we don't know who
owns CKL, but RoC records
show that on 2-Oct-99, nine days before MAE bought into Sunstar, four directors were
appointed to CKL, and these have not since changed. They are: Felix Lo Wai Shing (<b>Mr Lo</b>), Johnson Yeung
Kwok-biu (<b>Mr Yeung</b>), Betty Li Yuk-ha (<b>Ms Li</b>) and Kevin Lau (<b>Mr
Lau</b>).&nbsp; </p>

<p>Also on 2-Oct-99, Mr Lo, Mr Yeung and Ms Li were appointed as the
first directors of Sunstar. On 3-Jan-00 Mr Yeung resigned and Mr Lau was
appointed. On 1-Apr-00 he resigned and Cerene Leung Wai-kuen (<b>Ms Leung</b>)
was appointed. According to RoC records, no other directors have been
appointed to Sunstar. </p>

<p>Mr Yeung is currently an SFC-registered dealer's
representative of Pacific Pearl Securities Ltd.&nbsp; On 19-Sep-00 it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000920/LTN20000920018.doc" target="_blank">sold</a>
for $20m to Pacific Pearl Holdings Ltd, which in turn is 50% owned by MAE and
50% by the brokerage's founder, who previously owned the whole thing. </p>

<p>Pay attention, these names will come up later! </p>

<h3>MAE takes another bite</h3>

<p>On 2-Dec-99, MAE <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991203/LTN19991203036.HTM" target="_blank">announced</a>
that it was purchasing 12.5% of Skynet from Sunstar, following an agreement
signed on 30-Nov-99, just 5 days after the shares were finally allotted to
Sunstar. The price on the deal was <b>$31.75m</b>, or <b>$25,400 per share </b>valuing Skynet at <b>$254m</b>.
That's more than 8 times the money invested 5 days earlier. The consideration
was satisfied with 250m new MAE shares valued at $0.127 each. MAE had been
soaring, so this was done at a 24.85% discount to the market price. </p>

<p>As a result,
on 28-Dec-99 Sunstar obtained a stake of <b> 11.9%</b> in MAE, and MAE had a
13.5% interest in Skynet (including 1% via Sunstar). The MAE stake was disclosed
by Sunstar as it broke the 10% threshold.&nbsp; </p>

<p>Note that if CKL still owned at least one third of
Sunstar, it would have had a discloseable stake in MAE too, but it did not say
so, and nor did CKL's owner(s). On
9-Feb, Sunstar reduced its stake to 198.56m shares, below the 10% disclosure
threshold. </p>

<p>As of 2-Dec-99, East Glory had disappeared from the list of
Sunstar shareholders, to be replaced by Foundation Asset Ltd (<b>FAL</b>). Apart
from that, Sunstar was unchanged. </p>

<p>Again, MAE stated that 25% of Skynet was held by Royal Fair,
which had presumably acquired it from Gold Cloud. So Skynet was now held as
shown: </p>

  <table class="numtable center fcl">
    <tr>
      <th class="left">Name</th>
      <th>Skynet<br>shares</th>
      <th>Skynet<br>stake %</th>
    </tr>
    <tr>
      <td class="left">Gold Cloud</td>
      <td>5,000</td>
      <td>50.0</td>
    </tr>
    <tr>
      <td class="left">Royal Fair</td>
      <td>2,500</td>
      <td>25.0</td>
    </tr>
    <tr>
      <td class="left">Sunstar</td>
      <td>1,250</td>
      <td>12.5</td>
    </tr>
    <tr>
      <td class="left">MAE</td>
      <td>1,250</td>
      <td>12.5</td>
    </tr>
    <tr>
      <td class="left">TOTAL</td>
      <td>10,000</td>
      <td>100.0</td>
    </tr>
  </table>

<p>MAE also stated that CKL and FAL (which together owned 84%
of Sunstar) and Royal Fair were all owned by <i><b>&quot;a businessman in Hong
Kong&quot;</b></i>. Sometimes you just have to laugh at attempted local disclosure,
which has less transparency than the Great Wall of China. We'll call him Mr Big
for now. He had a total of 35.5% interest in Skynet at that point. All will be
revealed later.... </p>

<p>The announcement also stated that Skynet had incurred an
unaudited net loss up to 11-Nov-99 of HK$2.509m and had net assets of $2.491m.
That implies original equity of exactly $5m, although only 2 shares had been
issued by then at par. Presumably they had taken $5m in advance of the share
allotment on 25-Nov-99. </p>

<h3>Skynet's Directors</h3>

<p>Records in Hong Kong show that the directors of Skynet were
appointed as follows: </p>

<table class="numtable center fcl">
<tr>
  <th>Name</th>
  <th>Date</th>
</tr>
<tr>
  <td>Leung Kwok Kui</td>
  <td>13-Sep-99</td>
</tr>
<tr>
  <td>Leung Ge On, Andy</td>
  <td>13-Sep-99</td>
</tr>
<tr>
  <td>Shiu Yeuk Yuen, Stephen</td>
  <td>22-Sep-99</td>
</tr>
<tr>
  <td>Stephen Shiu Jr</td>
  <td>20-Oct-99</td>
</tr>
<tr>
  <td>Kong Shing Chi, Audrey</td>
  <td>20-10-99</td>
</tr>
</table>

<p>Leung Kwok Kui is Chairman of SIGH and an executive director and
co-founder of its controlling shareholder, Companion Building Materials
International Ltd (<b>CBMI</b>), which imports ceramic tiles and marble and
granite products. He is married to the Chairman and co-founder of CBMI, Ms Siu
York Chee. Andy Leung is his son. </p>

<p>Stephen Shiu Yeuk Yuen was described by MAE as <i>&quot;a
reputable figure in the field of mass media in Hong Kong&quot;</i>. He is also
an executive director and co-founder of CBMI. Stephen Shiu Jr is his son. </p>

<p>We don't know anything about Audrey Kong. </p>

<p>Now things start to
get interesting. On 25-Nov-99, the day of the allotment to
Sunstar, Mr Lo, Ms Yeung and Ms Li, the 3 directors of Sunstar, were appointed
to the board of Skynet. </p>

<p>On 10-Dec-99, Allan Yap, Deputy Managing Director of Hanny
Holdings Ltd (<b>HHL</b>), was appointed as a director of Skynet. This was the
same day on which HHL first invested in HKCyber Ltd, the forerunner of
GEM-listed HKCyber.com, in which HHL now has a 16% stake. </p>

<p>On 14-Jan-00
Ms Ma Lee Yee, a solicitor who is an independent non-executive director of
GEM-listed Trasy Gold Ex Ltd, was appointed as a director of Skynet, along with
a Ms Lily Wang and a Wong Luk Bor, about whom we know nothing. </p>

<p>By now there were 12 directors of Skynet, 3 of whom were
directors of Sunstar. </p>

<h3>MAE fragments</h3>

<p>Since MAE's IPO, its major shareholder had been a BVI company
called Boldic Ltd, which was owned in a ratio of 30:30:30:10 by four executive
directors of MAE. Until 10-Mar-00 Boldic held 1,057.5m shares, or 49.2% of the
company. Disclosures show that on that day, Boldic distributed those MAE shares
to its shareholders. This had
the effect of fragmenting the ownership and makes it possible for the directors
to sell independently of each other. One of them later did.</p>

<h3>ING Beijing buys in</h3>

<p>According to its 1999 annual report (dated 22-May-00), on
20-Apr-00 HK-listed <a href="http://www.ing-beijing.com" target="_blank">ING
Beijing Investment Co Ltd</a> (<b>INGB</b>) signed a conditional agreement to
buy 625 shares of Skynet from an un-named existing shareholder, for US$3m in
cash. The report stated that <i>&quot;the shares represent a 3.05% interest in
Skynet after its reorganisation&quot;</i>.</p>

<p>In addition, without mentioning the number of issued shares of
Skynet, INGB <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000516/LTN20000516067.HTM" target="_blank">announced</a>
on 15-May-00 that it had agreed to subscribe <i>&quot;such ordinary shares... in
the share capital of Skynet as representing 2.33% of the existing issued share
capital of Skynet and 2.28% of the enlarged issued share capital of Skynet at
completion&quot;</i> for US$5m (HK$39m). </p>

<p>Of this, US$1m was paid in cash, and US$4m was satisfied with
38.84m new INGB shares, giving Skynet 7.208% of the enlarged INGB. The issue
price of the INGB shares was set at HK$0.80 per share, which was dot-fiction
given the market price of $0.249 on 15-May-00. In reality the shares were only
worth $9.67m (US$1.24m) at market price, so the deal was worth only US$2.24m.
Still, that deal implied a valuation of the existing Skynet of <b>HK$750m</b>. </p>

<p>INGB also stated that its enlarged stake in Skynet would be <b>5.33%</b>,
which implies that the 3.05% conditionally acquired from another shareholder was
based on the enlarged capital after the &quot;reorganisation&quot;. </p>

<p>Clearly then, what INGB expected was that Skynet would double
its issued shares to 20,000 (presumably raising more money) and INGB would buy
625 old shares and subscribe to an additional 466 new shares. That takes the
total to 1,091 shares out of a total of 20,466, or <b>5.33%</b>. </p>

<p>Clearly INGB thought that another <b>10,000</b> shares were
about to be issued, but they were wrong...</p>

<h3>Dilution City</h3>

<p>On 3-Mar-00 Mr Yeung and Ms Li resigned as directors of Skynet,
for reasons unknown. On 8-Apr-00, the company secretary, Lai Mei Lin, resigned and was
replaced by Leung Kwok Kui, the Chairman of SIGH. On 16-May-00 the authorised share capital
(which is the limit on total share issues) was raised
from $10k to $100k and then on 27-Jun-00 it was raised to $50m. </p>

<p>What happened
next was remarkable. On 27-Jun-00, a total of <b>20,000,000</b> new Skynet shares, equal to
99.95% of the enlarged company were issued at <b> $1 per share</b>, diluting the previous
shares down to just 0.05% of Skynet. The issue was 2,000 times larger than the
10,000 shares we computed above. The new shares were allotted as follows: </p>

  <table class="numtable center fcl">
    <tr>
      <th class="left">Name</th>
      <th>New shares<br>(million)</th>
      <th>Stake %</th>
    </tr>
    <tr>
      <td class="left">Gold Cloud</td>
      <td>9</td>
      <td>44.978</td>
    </tr>
    <tr>
      <td class="left">Icon Master Enterprises Ltd (<b>Icon Master</b>)</td>
      <td>5</td>
      <td>24.988</td>
    </tr>
    <tr>
      <td class="left">Saxophone Enterprises Ltd</td>
      <td>5</td>
      <td>24.988</td>
    </tr>
    <tr>
      <td class="left">Hanny Magnetics (BVI) Ltd</td>
      <td>1</td>
      <td>4.998</td>
    </tr>
    <tr>
      <td class="left">TOTAL</td>
      <td>20</td>
      <td>99.950</td>
    </tr>
  </table>

<p>SIGH's audited accounts show that at 31-Mar-00 Gold Cloud was then
owned 89% by SIGH, and we don't know who owns the other 11%. The accounts also
reveal that Saxophone Enterprises Ltd (incorporated in the BVI) was 100% owned by SIGH.
Hanny Magnetics (BVI) Ltd was at 31-Mar-00 a 100% subsidiary of HHL. That just
leaves Icon Master, a BVI company whose owner is unknown. </p>

<p>As a result of the issue, Sunstar and MAE each saw their stake reduced
from 12.5% to just <b>0.006%</b>. Mr Lo, who was still a director of Skynet, became
a director of MAE on 7-Aug-00, before the annual accounts of MAE were approved by the
board of directors on 18-Aug-00. However, no mention of this problem was made in
the annual report. He was removed as a director of Skynet by a special
resolution on 22-Sep-00. </p>

<p>The interim results of MAE for the six months to 31-Oct-00 were released on 30-Jan-01 and they state: </p>

<blockquote>

<p>&quot;the Group acquired... 12.5 per cent. interest in Skynet in
December 1999 and the Group's shareholding in Skynet was substantially diluted
to approximately 0.006 per cent. as at the period end. In the course of
conducting an interim review of the Group's investments, [MAE] noted that Skynet
did not register [MAE's subsidiary] as a shareholder and carried out a series of
transactions involving allotment of shares either at a premium or at par to
certain investors during the period without the knowledge of the Group. These
transactions resulted in the said dilution&quot; </p>

</blockquote>

<p>Notice that the statement did not even mention the 1% interest
which was once held through Sunstar. The statement went on to contemplate legal action. Meanwhile
MAE has written off the entire $31.75m in the interim results. </p>

<h3>ING Beijing, Part 2</h3>

<p>You remember that INGB conditionally agreed to buy 625 shares of
Skynet? It's likely that these shares were topped up by the vendor to ensure
that they received the 3.05% as promised. Otherwise 625 shares is only 0.003% of
Skynet. </p>

<p>According to RoC records, 466,233 shares in Skynet were duly
allotted on 5-Jul-00 (after the big dilution issue), equal to 2.28% of the
enlarged capital as planned. At the same time, Skynet received the 38.84m new
shares in INGB. It is not known how many INGB shares Skynet has since sold (if
any). </p>

<h3>Lombard Buys In</h3>

<p>On 28-Jun-00, the day after the dilutive share issue, SIGH <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000629/LTN20000629028.doc" target="_blank">announced</a>
that Lombard Asian Private Investment Co LDC, a fund run by <a href="http://www.lombardinvestments.com/" target="_blank">Lombard/APIC
(HK) Ltd</a>, had agreed to invest US$7.2m (HK$56.2m) for 671,651 preference
shares in Skynet which in certain conditions convert 1:1 into ordinary shares
equal to 3.17% of the enlarged company. That implies a valuation of US$220m
(HK$1,710m) on Skynet. </p>

<p>The preference shares bear a dividend of 0.5% p.a. but If they
are not previously converted, then they are redeemable after 3 years with a
yield to redemption of 7% p.a.. Better get that money ready! </p>

<p>We have seen the revised memorandum and articles of Skynet,
which leave nothing to chance. No non-pre-emptive share issues (that is, issues
without offering to existing holders) are allowed if they would value Skynet at
less than US$162m. The conversion rate steps up to 1.2:1 if the group does not
achieve HK$400m of revenue in the year to 30-Jun-01. </p>

<p>Both Lombard and INGB have the right to convert their Skynet
shares into new SIGH shares instead at certain times for 3 years, although in
INGB's case it is based on the &quot;fair value of the Internet-related
businesses&quot; to be determined. That should be fun. </p>

<h3>Skyhome</h3>

<p>Now remember we mentioned that Mr Lo became a director of MAE on
7-Aug-00. You are probably wondering how that happened. </p>

<p>This was the result of the acquisition <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000525/LTN20000525021.doc" target="_blank">announced</a>
on 24-May-00 by MAE of 40% of <a href="http://www.hkskyhome.com" target="_blank">HK
Sky Home Ltd</a> (<b>Sky Home</b>) from HK Sky Entertainment Holdings Ltd (<b>HKSky-e</b>
formerly known as Starwood Asia Ltd) which MAE said was owned by someone who is <i>&quot;a Hong
Kong based businessman and a professional accountant&quot;</i>. That first bit
sounds familiar, doesn't it? Read on. </p>

<p>The price on the deal was $50.025m, which valued Sky Home at
$125.1m. The consideration was 435m new shares in MAE, equal to 19.7% of the
then-existing issued shares, just within the limit of the 20% general mandate
obtained in an SGM on 3-Apr-00. </p>

<p>Sky Home is basically a clicks &amp; bricks e-tailer. It was
incorporated on 26-Jan-00 and by 18-Apr-00 its unaudited management accounts
showed initial equity of <b>$13m</b>, of which $2.5m had been spent on developing the
web site and $10m was still in cash. As a result, Sky Home was supposedly worth <b>$125.1m</b>. Go figure. </p>

<p>When the acquisition was completed on 26-Jun-00, the result was
that HKSky-e held 16.45% of MAE, forcing its owner to disclose. The businessman
was finally identified as Mr Lo. Not only that, but the disclosure shows that
he held HKSky-e via FAL. Remember that? </p>

<p>FAL, you will recall, once owned 8% of Sunstar and was one of the
companies which was owned by <i>&quot;a businessman in Hong Kong&quot;</i> who also
owned Royal Fair (which originally held 25% of Skynet) and CKL (which held 76%
of Sunstar). So unless FAL changed hands between 2-Dec-99 and 24-May-00, we are talking about the same
businessman, Mr Lo. On 22-Jun-00, presumably nominated by Mr Lo, Mr Lau became an
Executive Director of MAE.&nbsp; </p>

<p>On 14-Jul-00, HKSky-e bought 300m shares from one of MAE's
founders, Alan Cheung Fong-chau, at $0.135 per share, and acquired another 4.9m
shares in the market, increasing Mr Lo's stake to 26.6% of MAE. </p>

<p>On 7-Aug-00 Mr Lo and Ms Leung became Executive Directors of
MAE. </p>

<p>A circular of MAE in relation to the Pacific Pearl acquisition
reveals that at 5-Oct-00, Mr Lo owns 54% of Sunstar, which now owned just
31.54m shares of MAE, having sold most of the 250m shares it got in the Dec-99
deal. That takes Mr Lo's stake up to <b>27.9%</b>. He subsequently became
Chairman of MAE on 16-Dec-00, replacing one of the founders who remains on the
board. </p>

<h3>You might wonder...</h3>

<p>We are left wondering, who owns Icon Master Enterprises Ltd,
a BVI company which received 25% of the dilutive share issue by Skynet? And what
became of Royal Fair which had 25% of Skynet before the dilution, and was owned
by a businessman who also owned FAL and CKL? </p>

<h3>ATNT Deal 1</h3>

<p>Our story is not yet over. In addition to the waltz with MAE,
HKSky-e was also dancing with HK-listed Asia Tele-Net &amp; Technology Corp Ltd
(<b>ATNT</b>) a company once known as Process Automation (Holdings) Ltd which
started off making electro-plating equipment. </p>

<p>On 17-Dec-99 ATNT <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991221/LTN19991221027.HTM" target="_blank">announced</a>
it was buying a 10% interest in <a href="http://www.hkskye.com/" target="_blank">HK
Sky-e.com Ltd</a> (<b>Sky-e.com</b>) for <b>$91.5m</b> from our old friend
HKSky-e (then known as Starwood Asia Ltd), to be satisfied by issuing 300m
shares in ATNT (6.11% of the enlarged company) at $0.305 per share, close to
market price. Sky-e.com was described as: </p>

<blockquote>

<p>&quot;an (sic) provider of internet content and production house
of broadcasting materials with an emphasis on entertainment and
infotainment&quot; </p>

</blockquote>

<p>As a result of the deal, Sky-e.com would be owned as follows: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Name</th>
      <th><i>Sky-e.com<br>stake %</i></th>
    </tr>
    <tr>
      <td>HKSky-e</td>
      <td>85%</td>
    </tr>
    <tr>
      <td>ATNT</td>
      <td>10%</td>
    </tr>
    <tr>
      <td>Skynet</td>
      <td>5%</td>
    </tr>
    <tr>
      <td>TOTAL</td>
      <td>100</td>
    </tr>
</table>

<p>Sky-e.com had commenced business just 6 weeks earlier, so there
were no accounts available, even though the deal valued it at <b>$915m</b>. It
had 4 subsidiaries of which 2 were owned as to 60%. We don't know who owned the
other 40%. The subsidiaries were engaged in entertainment related activities
ranging from record, karaoke LD, VCD and CD production, music distribution,
production of variety shows, films and entertainment projects, ownership and
distribution of films and artiste management. </p>

<p>Sky-e.com and ATNT also agreed to set up an 80:20 joint venture
to be appointed the worldwide exclusive distributor of all programme materials
of Sky-e.com on all media. This was later named Sparkling Stream International
Ltd (<b>Sparkling Stream</b>), incorporated in Western Samoa. </p>

<p>The deal completed on 28-Jan-00. </p>

<h3>ATNT Deal 2</h3>

<p>On 19-May-00, ATNT <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000522/LTN20000522045.doc" target="_blank">announced</a>
the purchase of another 6% of Sky-e.com from HKSky-e, taking its stake up to
16%. This time, the price was $48m, valuing HKSky-e at <b>$800m</b>, down from
the figure in Dec-99 because Sparkling Stream was now excluded from the
calculation. No further interest was acquired by ATNT in Sparkling Stream, and
the 28% attributable to ATNT from deal 1 was taken to be worth $11.5m, implying
the first 10% of Sky-e.com cost $80m. </p>

<p>The consideration was again satisfied with 300m new shares of
ATNT, this time at $0.16 per share, equivalent to 5.76% of the enlarged company.
Putting the two deals together, HKSky-e had swapped 16% of Sky-e.com for 600m
shares equivalent to 11.52% of ATNT. </p>

<p>However, HKSKy-e had already been selling the shares from the
first deal, because by 19-May-00 its stake in ATNT was down from 6.11% to 3.16%,
a drop of about 145m shares. The price chart looks like a cross-section of the
Matterhorn. </p>

<p>On this deal, we finally got some figures on Sky-e.com. We
learned that by 31-Mar-00, it had an unaudited net loss of $5.267m and net asset
value of $19.733m. In other words, the initial equity capital was <b>$25m</b>, but it
was now worth 32 times that, at <b>$800m</b>. Go figure. </p>

<h3>Summary</h3>

<p>So let's see. As far as we know, HKSky-e.com is still 100% owned
by Mr Lo. It invested $13m in Sky Home and then sold 40% of it for $50.025m in
MAE shares. It invested $25m in Sky-e.com and then sold 16% of it for $128m in
ATNT shares, plus $11.5m for 28% of Sparkling Stream. </p>

<p>Meanwhile MAE invested a total of $35.75m and got 0.006% of
Skynet, after being diluted beyond its wildest dreams, and Mr Lo ends up as the
largest shareholder and Chairman of MAE. Didn't he do well? </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4948">ASIA TELE-NET AND TECHNOLOGY CORPORATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4872">China Development Bank International Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4665">China Sinostar Group Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12627">HK SKY ENTERTAINMENT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=44972">HK SKY HOME LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12642">HK SKY-E.COM LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3387">PACIFIC CENTURY PREMIUM DEVELOPMENTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7340">Sheng Yuan Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11241">SKYNET LIMITED (d2011-11-11)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4811">South Shore Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11245">SUNSTAR TECHNOLOGY LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10690">Lau, Kevin (1971)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11243">Leung, Andy Ge On</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12628">Leung, Arthur Kwok Kui</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11071">Leung, Cerene Wai Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11070">Lo, Felix Wai Shing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11947">Ma, Lee Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11242">Shiu, Stephen Jr</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12636">Shiu, Stephen Yeuk Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12635">Siu, Doreen York Chee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=874">Yap, Allan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15647">Yeung, Johnson Kwok Biu</a></li>
				
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