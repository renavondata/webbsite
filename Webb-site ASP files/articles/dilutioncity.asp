
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

<script type="text/javascript">document.title="Dilution City";</script>

	<div class="summary">We take a look at one of the worst connected transactions of 2000, in which Century City International Holdings proposed to spend US$317m on 27% of a fibre optic project from a company controlled by its Chairman. The share swap, priced at 712 times net assets, is hanging over the company and the Chairman has the option to complete it whenever he likes, to avoid dilution if and when the company seeks to reduce its 193% gearing with fresh equity.</div>

<h2 class="center">Dilution City<br>
<span class="headlinedate">10 July 2001</span></h2>
<p>In Aug-97,
Century City International Holdings Ltd (<b>CCIH</b>) was at the peak of its
fortunes. The shares reached HK$2.95 and it was worth some <b>US$971m</b>. At
31-Dec-00, the company controlled 60.4% of listed Paliburg Holdings Ltd (<b>Paliburg</b>)
which in turn owns 73.8% of <a href="http://www.regalhotel.com/" target="_blank">Regal
Hotels International Holdings Ltd</a> (<b>Regal</b>). In other words, a classic ownership pyramid. Don't ya just love their web site with its naff
rendition of Vivaldi's &quot;Spring&quot;? </p>

<p>At the apex of this pyramid sits Lo Yuk Sui (Mr Lo), the
Chairman, Managing Director and 58% shareholder of Century City. He is the son
of Lo Ying Shek, the 88-year old Chairman of Great Eagle Holdings Ltd, and his
brothers include Lo Ka Shui, Chairman of the GEM Listing Committee and Deputy
Chairman of Great Eagle, as well as Vincent Lo Hong Sui, Chairman of Shui On
Construction and director of <a href="../dbpub/articles.asp?p=10902" target="_blank">Panda-Recruit</a>. </p>

<p>CCIH, through Paliburg, was highly exposed to the Hong Kong
property market having, amongst other things, paid a fortune for a development
site in Stanley, on the South side of Hong Kong Island. When the stock market
crashed, so did the property market, leaving the group highly leveraged. Now
that may have been bad strategy, but it is not a corporate governance problem in
itself. Property was Paliburg's core business and investors could take their
choice as to whether to own it. </p>

<p>The net result of that exposure was a highly leveraged balance
sheet, with the group facing net debt at 31-Dec-00 of US$1,278m or <b>193% </b>of
net assets, and in default on certain bonds. The group is in an &quot;informal
standstill&quot; with its bankers while it tries to sell off assets. </p>

<p>The normal outcome of a situation like this is that a company
either goes bust, or works its way out of trouble with asset sales, fresh equity
injections or conversions of debt to equity. Either way, existing shareholders
(including the controlling shareholder) are likely to be diluted and the
controller may lose control. </p>

<p>With this in mind, you will begin to understand a transaction <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000816/LTN20000816028.doc" target="_blank">first
announced</a> on 15-Aug-00, well after the Nasdaq bubble had burst. In this
deal, CCIH proposed to buy a 27% interest in Beijing Century Union Digital
Technology Ltd (<b>JV</b>), a PRC company which prior to the deal was
beneficially owned through a chain of companies as follows: </p>

  <table class="optable center">
    <tr>
      <td class="left"><i>Name</i></td>
      <td><i>%</i></td>
    </tr>
    <tr>
      <td class="left">Mr Lo</td>
      <td>51.7968</td>
    </tr>
    <tr>
      <td class="left">Other unnamed shareholders</td>
      <td>30.6000</td>
    </tr>
    <tr>
      <td class="left">Regal</td>
      <td>5.7024</td>
    </tr>
    <tr>
      <td class="left">CCIH</td>
      <td>1.9008</td>
    </tr>
    <tr class="total">
      <td class="left">Total foreign investors</td>
      <td>90.0000</td>
    </tr>
    <tr>
      <td class="left">Beijing CSU Digital Technologies Ltd (<b>PRC Partner</b>)</td>
      <td>10.0000</td>
    </tr>
    <tr class="total">
      <td class="left">Total</td>
      <td>100.0000</td>
    </tr>
  </table>

<p>We don't know who owns the PRC Partner or who the unnamed
shareholders are. The 27% interest in the JV is to be acquired from a company
jointly owned by all the investors other than the PRC Partner. </p>

<h3>So What is the JV?</h3>

<p>CCIH stated: </p>

<blockquote>

<p>&quot;The PRC Partner has built up a strategic relationship with
an entity of each of the Ministry of Railway, State Forestry Administration and
State Administration of Metallurgical Industry and has set up joint ventures
with each of these entities to offer industry specific information technology
services to entities related to the ministries/bureaus through a fibre optic
network....The spectrum of services to be provided by the [JV] entails equipment
supply and systems integration, software design and application, system
maintenance and upgrading, and consultancy service on technology aspects and
business planning of the Project.&quot; </p>

</blockquote>

<p>The 20-year Project was defined as the provision of these
services <i>&quot;in connection with a broadband national railway fibre optic
network in the PRC&quot;</i>. </p>

<blockquote>

<p>&quot;The Project is expected to deploy a pair of fibre optic strand
(sic) with a total of
37,500km in three stages and&nbsp; the construction of such fibre optic network
has been substantially completed.&quot; </p>

</blockquote>

<p>Reading between the lines, what this appears to say is that an
existing but &quot;dark&quot; (unused) fibre pair would be converted by the JV
into an operational network. The JV is not the only player in this game - CITIC
Pacific has a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000106/LTN20000106031.HTM" target="_blank">similar
project</a>, but that's story will have to wait. </p>

<p>The estimated total capital expenditure needed to achieve this
(presumably including the rights to the fibre) would be RMB2.5bn (<b>US$300m</b>),
so CCIH's 27% share would be US$81m, although it was hoped that equipment
financing could be arranged by the JV to avoid shareholders having to pay
anything. </p>

<p>The JV was incorporated in the PRC on 24-Apr-00 and by the time
of the announcement less than 4 months later it had paid up capital of just <b>US$1.65m</b>.
Up to 31-Jul-00 the JV had recorded an unaudited loss of about US$7,000. Despite
this, American Appraisal Hongkong Limited valued the JV on 31-Jul-00 at
RMB12.6bn (<b>US$1,513m</b>) or 917 times the capital invested at that time, <i>
&quot;by adopting the methodology of discounted cash flow&quot;</i>. </p>

<p>We are asked to believe that a project with a future (then
unfunded) capital expenditure of US$300m has a net present value of US$1,513m
after financing costs. That kind of return is way out of line for any normal
utility project, and at the end of the day, that is what it is. </p>

<h3>The Price on The Deal</h3>

<p>Here's the shocking part. For the rights to 27% of the Project,
CCIH was to pay HK$2,475m (<b>US$317m</b>), a 22.3% discount to the above
valuation. Don't reach for your cheque book! That compares with the share of
invested capital of US$445,000. In other words, the price was set at <b>712x net
asset value</b>.&nbsp; </p>

<p>This wasn't a straight sale. CCIH was granted a call option to
make the purchase in one or more tranches, within a 24 month period which
eventually <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010219/LTN20010219020.doc" target="_blank">began</a>
on 16-Feb-01 after conditions were satisfied. At the same time, Mr Lo's vendor
company had a put option to make the sale in one or more tranches in the same
period. Not only that, but if CCIH managed to receive proceeds of at least
HK$1,500m (US$192m) from the issuance of new shares or other securities in the
future, then it would be obliged to exercise the call option and complete the
purchase. </p>

<p>The purchase price was payable in 4,500m new CCIH shares valued
at $0.55 each, which was the same as net asset value per share of CCIH at
31-Dec-99. As a result, the new shares would be equal to a whopping 135.3% of
the existing shares, or 57.5% of the enlarged company. <b>The effect would be to
dilute the public investors from 42% of CCIH to just 18%</b>. </p>

<p>Now you get the picture. In the event that Mr Lo's existing 58%
stake in CCIH starts to get diluted by the future debt-equity restructuring of
the company, he can start exercising the put option over the JV stake, and
complete the deal or tranches of it. Those 4,500m new shares will allow him to
keep control even as the public gets diluted. For example, if a restructuring
were to involve the issue of another 5,000m new shares for cash, or in return
for the waiver of debts, and the put option were fully exercised, then the
result would be: </p>

  <table class="numtable center">
    <tr>
      <td class="left"><i>Name</i></td>
      <td><i>Before</i></td>
      <td><i>After<br>
        restructuring%</i></td>
      <td><i>After the put<br>
        exercise%</i></td>
    </tr>
    <tr>
      <td class="left">Mr Lo</td>
      <td>58</td>
      <td>23</td>
      <td><b>50</b></td>
    </tr>
    <tr>
      <td class="left">Public</td>
      <td>42</td>
      <td>17</td>
      <td>11</td>
    </tr>
    <tr>
      <td class="left">New investors</td>
      <td>&nbsp;</td>
      <td>60</td>
      <td>39</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>&nbsp;</td>
      <td>100</td>
      <td>100</td>
    </tr>
  </table>

<p>It is interesting that the agreement provides an automatic
trigger of the call option in full if CCIH raises more than HK$1,500m of fresh
equity, resulting in the issue of 4,500m shares to the vendor company controlled
by Mr Lo, and insulating him from dilution.&nbsp; </p>

<p>Shareholders are also faced with the following fact: Mr Lo
controls both CCIH and the Vendor. So although it seems unlikely, if for some
incredible reason it turns out that the JV is worth more than the price
proposed, he can simply get CCIH not to exercise the call option, which would
then lapse after 2 years. </p>

<h3>Note to regulators</h3>

<p>This &quot;put-and-call&quot; arrangement was subject to
minority shareholders approval at a meeting which took place on 22-Sep-00, and
the deal was approved. </p>

<p>Believe it or not, in HK there is no specific requirement to
announce the dispatch of a shareholders circular, the outcome of shareholders
meetings, or the number of members attending, or the number of votes cast in
each direction, either on a show of hands or a poll, so we have no way of
knowing from public data how that approval was reached. In many such cases, the
resolution would not go to a poll (a count of shares voted), because the main
board listing rules still do not require one. </p>

<p>So often deals like this are passed on a show of hands by those
people present in person, including employees, with a solitary hand in the air
from the Hong Kong Securities Clearing Company, a subsidiary of HKEx,
representing almost all the public shareholder base. </p>

<h3>Writing on the Wall</h3>

<p>Today, the shares of CCIH trade thinly at $0.083, down 97% from
their Aug-97 level. Century City has become Century Hamlet, valued by the market
at US$35m. Although the official net asset value stands at $0.468 per share,
investors have discounted the stock for the likelihood of a massively dilutive
share issue. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1591">CENTURY CITY INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5605">Kroll (HK) Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2385">Lo, Yuk Sui</a></li>
				
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