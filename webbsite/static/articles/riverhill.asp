
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

<script type="text/javascript">document.title="StyNet, Part 3: Riverhill";</script>

	<div class="summary">In Part 3 of our series on the Styland network, we look at Riverhill, a stock in which Styland and Digital World made early acquisitions at stratospheric prices. Riverhill's turnover collapsed after the IPO, which was based on a 9-project track record, part of which was sub-contracted and part of which came from a company sold to Digital World for a similarly stratospheric price.</div>

<h2 class="center">StyNet, Part 3: Riverhill<br>
<span class="headlinedate">8 August 2002</span></h2>
<p>Before you read this article, read <a href="digitalmess.asp">Part
1</a> and <a href="inworldcity.asp">Part 2</a>, or this will not make sense!</p>

<p>Continuing our story on the Styland network, this Part 3 covers <a href="http://www.river-hill.com/" target="_blank">
Riverhill Holdings Ltd</a> (<b>Riverhill, 8127</b>), which is a systems integrator
of software and hardware for applications of Geographical Information Systems (GIS), Remote
Sensing (RS) and Global Positioning Systems (GPS), which the group
collectively calls &quot;3S&quot;. In other words, systems using digital maps,
aerial and satellite images and location-sensing devices.</p>

<p>The group is a distributor of 3S software from <a href="http://www.intergraph.com/" target="_blank">Intergraph</a>
and <a href="http://www.microimages.com/" target="_blank">MicroImages</a> as
well as hardware from <a href="http://www.microimages.com/" target="_blank">Silicon
Graphics</a>.</p>
<p>The story of Riverhill begins&nbsp;on 12-May-99, when five
founders, Prof He Xiao Feng (<b>Prof He</b>), Prof Liu
Wei (<b>Prof Liu</b>), Prof Wu Lun (<b>Prof Wu</b>), Prof Yang Kai Zhong (<b>Prof Yang</b>),
, and
Mr Yick Chong San (<b>Mr Yick</b>) set up Cyber World Technology Ltd (<b>Cyber World</b>) in the
BVI, with 100 shares of US$1 each, 80% held by Cyber Town Co Ltd (<b>Cyber Town</b>,
formerly known as Zelma's Co Ltd)
and 20% by Cyber City Technology Ltd (<b>Cyber City</b>). Yes, cyber-everything
was the name of the game. In fact, when Riverhill was incorporated in the
Caymans on 14-Sep-00, it was originally named Cyber World Group Ltd, but they
thought better of it by the May-01 IPO. </p>

<h3>Founders</h3>

<p>The ownership of Cyber Town and Cyber City, and the implied
effective stake in Cyber World in the beginning, is as follows: </p>

  <table class="numtable center">
    <tr>
      <th class="left">Name</th>
      <th>Cyber Town</th>
      <th>Cyber City</th>
      <th>Stake in<br>Cyber World</th>
    </tr>
    <tr>
      <td class="left">Prof He</td>
      <td>35%</td>
      <td>30%</td>
      <td>34%</td>
    </tr>
    <tr>
      <td class="left">Prof Liu</td>
      <td>35%</td>
      <td></td>
      <td>28%</td>
    </tr>
    <tr>
      <td class="left">Mr Yick</td>
      <td>30%</td>
      <td></td>
      <td>24%</td>
    </tr>
    <tr>
      <td class="left">Prof Wu</td>
      <td></td>
      <td>35%</td>
      <td>7%</td>
    </tr>
    <tr>
      <td class="left">Prof Yang</td>
      <td></td>
      <td>35%</td>
      <td>7%</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>100%</td>
      <td>100%</td>
      <td>100%</td>
    </tr>
  </table>

<p>The 4 professors are all based at <a href="http://www.pku.edu.cn/" target="_blank">Peking
University</a>, while Mr
Yick is a director and Chief Financial Officer of Riverhill based in HK. Prof He
is in the School of Economics, of which Prof Liu is deputy chairman. Prof Wu is
in the Urban and Environmental Sciences Department, of which Prof Yang is
chairman. So as the table shows, the economists got a bigger stake than the
geographers. </p>

<p>At the IPO, Prof He was the only one of the 4 professors on the
board, as Chairman, while Prof Wu and Prof Yang are listed in senior management,
and Prof Liu is on the &quot;technological and management advisory board&quot;. </p>

<p>On 15-Jul-99 Cyber World's 100% subsidiary, <a href="http://www.spatialport.com.cn/" target="_blank">Beijing
Spatial Port Network Technology Ltd</a> (<b>BSPN</b>) was incorporated in the
PRC. </p>

<h3>Styland invests</h3>

<p>On 13-Jan-00, Styland Holdings Ltd (<b>Styland, 0211</b>)&nbsp; <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000114/LTN20000114059.HTM" target="_blank">announced</a>
it was acquiring 40% of Cyber World from Cyber Town for <b>HK$148m</b>, based on a valuation for BSPN
of <b>HK$370m</b> by LCH (Asia-Pacific)
Surveyors Ltd (<b>LCH</b>) as at 30-Nov-99. The deal was completed on 16-Mar-00. </p>

<p>The consideration included $131.6m for 40% of Cyber World and
$16.4m for 100% of the shareholder loan due from Cyber World to Cyber Town. The
total of $148m was to be satisfied by the allotment of 400m Styland shares or
payment of $24m cash, plus $124m of 7.5% 3-year promissory notes. In the end,
Styland must have chosen cash, as no shares were issued. The promissory notes did
not show up in the Styland accounts at 31-Mar-00 so presumably they had already
been redeemed for cash. It was not stated whether the notes were transferable. </p>

<p>The announcement stated: </p>

<blockquote>

<p>&quot;As at the date hereof, [Cyber World] has entered into
project agreement of approximately HK$27 million....As [at] the date hereof, [Cyber
World] has entered into <b> letter of intent with contract value of approximately
HK$218 million</b>&quot; (emphasis added) </p>

</blockquote>

<p>You might think that $218m potential revenue figure was rather impressive, but
almost none of it showed up in the subsequent track record and the IPO prospectus did not
mention the above statement or discuss why those letters of intent did not get
converted into revenue. </p>

<h3>Digital World invests</h3>

<p>On 27-Jun-00, <a href="../dbpub/articles.asp?p=5142" target="_blank"> Digital World Holdings Ltd</a>
(<b>Digital World, 0109</b>)
acquired 5 shares (5%) of Cyber World for $30m, again from Cyber Town, based on a
valuation of RMB720m (<b>HK$673m</b>) by 
<a href="../dbpub/articles.asp?p=5577">Sallmanns (Far East)
Ltd</a> on 5-Jun-00. Apparently, in six months the value of Cyber World had
increased 82%! </p>

<p>The deal was
belatedly <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000908/LTN20000908024.doc" target="_blank">announced</a>
 on 7-Sep-00. So after two deals, Cyber Town's holding was now reduced from an original 80% to
35%, in return for a total of <b>HK$161.6m </b>in cash. </p>

<h3>Capital</h3>

<p>Up to the end of the track record on 31-Dec-00, the total equity
invested in Riverhill was just US$100. The rest was financed by shareholder
loans, and at the year end Riverhill owed HK$13.59m to Styland and $7.92m to Cyber
Town, or a total of only <b>$21.51m</b>. Perhaps by coincidence, Riverhill also had cash of $13.59m, so the net debt
was only $7.92m.</p>

<p>Styland's loan became interest-bearing at Prime rate from
1-Jul-01 and was repayable thereafter in 12 equal monthly instalments, while
Cyber Town capitalised its loan on 2-May-01, receiving 2 new shares in Cyber
Town.</p>

<p>All the 102 Cyber Town&nbsp;shares were swapped for shares in
Riverhill. On 2-May-01, just prior to the IPO, the group paid a bonus of
HK$800,000 which was then used to pay up the par value of 8m shares in Riverhill
at $0.10 each, allotted to 2 directors, 10 senior management and 6 members of
the &quot;technological and management advisory board&quot;, who cannot sell for
2 years. So the cash went around in a circle but should show up as an expense.</p>

<p>As a result, the ownership before and after the IPO can be
analysed as follows:</p>

<img class="center" alt="" src="../images/riverh1.gif">

<p>The above table shows that Styland has an average cost of <b> $1.149</b>
per Riverhill share and Digital World had a cost of <b> $2.096</b> per Riverhill share,
while the average cost per share for all pre-IPO investors was only <b>$0.027</b>.</p>

<p>If the figures are to be believed, by selling shares to Styland
and Digital World, 3 of the 5 founders received, in Cyber Town, net cash of <b> $153.7m</b> after deducting the loan they
capitalised. Through their total 70% stakes in Cyber Town, this implies that
Prof He and Prof Liu share $107.6m. We wonder whether Peking University gets any of this.</p>

<p>There was also a pre-IPO option scheme over 40m shares
exercisable for 10 years at the IPO price, of which 20.48m options went to the
board and of that, 400k to each of the two independent non-executive directors.</p>

<h3>INEDs</h3>

<p>One of the independent non-executive directors is Professor Hong
Jun Yan, a professor of the Department of International Economics at Peking
University. Yes, that's the same university where Riverhill's Chairman is a
professor of the School of Economics. </p>

<p>The other INED is <a href="http://geog.hkbu.edu.hk/staff/qiming.html" target="_blank">Prof
Zhou Qi Ming</a>, an associate professor of the <a href="http://geog.hkbu.edu.hk" target="_blank">Department
of Geography</a> at <a href="http://www.hkbu.edu.hk/" target="_blank">Hong Kong
Baptist University</a>. </p>

<h3>IPO</h3>

<p>The IPO <a href="http://www.hkgem.com/newlistings/prospectuses/e_8127pro-20010518.pdf" target="_blank">prospectus</a>
was published on 18-May-01, sponsored by <a href="http://www.anglochinesegroup.com/" target="_blank"> Anglo Chinese Corporate Finance
Ltd</a>, offering 100m new shares at a range of $0.45-$0.60 each and eventually
pricing at $0.60, with a normal&nbsp; &quot;green
shoe&quot; over-allotment option of 15m new shares. This eventually raised
HK$69m gross and $57m net of expenses.</p>

<p>The financial adviser and
co-lead manager was International Capital Network Ltd, owned by <a href="../dbpub/articles.asp?p=15232" target="_blank">International
Capital Network Holdings Ltd</a> (<b>ICNH, 8004</b>), which should be familiar to you after Parts 1
and 2 of this series. We'll cover ICNH in a future article. One of the 2
Co-Managers was Ever-Long Securities Co Ltd, which is owned by Styland. The
other was CLSA Emerging Markets.</p>

<h3>Track record: General</h3>

<p>Riverhill took advantage of the waiver then available for GEM
applicants to allow track records of less than 2 years. Its first period ran
from 12-May-99 to 30-Jun-00, and the second for 6 months to 31-Dec-00.</p>

<p>During the track record, Riverhill was engaged in only 9 projects.</p>

<p> Despite such a concentrated track record, the names of the customers, and the
value of each contract, were not disclosed in the prospectus.</p>

<p class="regbox">Regulatory note:
There is really no excuse for a lack of transparency in track records. The
Listing Rules should be amended to require disclosure of the amount of business
done with any customer (or inter-related group of customers) which exceeds 5% of
turnover in a given period, and the name of that customer and its parent
companies (if any). No names, no float.</p>

<h3>Track record: first period 12-May-99 to 30-Jun-00</h3>

<p>Riverhill's first project came on 3-Jun-99, a website for
<i>&quot;a software house in Hong Kong&quot;</i>, completed in Oct-99. Like all the other projects,
the client was not named in the prospectus. Nor was any breakdown given of the
fees earned by project. The same client description was used for a client in the
<a href="../dbpub/articles.asp?p=14791" target="_blank">
Inworld Group Ltd</a> (<b>Inworld, 8100</b>) prospectus.</p>

<p>On 21-Jun-99 came the 2nd contract, a website for <i>&quot;an
internet content provider in Hong Kong&quot; </i>completed in Nov-99.</p>

<p>In Oct-99, the group set up its research and development department
to develop <i>&quot;proprietary software products such as CyberGPS, CyberGIS,
CyberGuide and CyberTown&quot;.</i></p>

<h4>Digital World, Ancora and cwap.com</h4>

<p>On 11-Oct-99, Riverhill gained its 3rd project, to
design <i>&quot;a WAP-enabled tourist information system for 224 cities in mainland
China&quot;</i>. The client was <i> &quot;a WAP portal in Mainland China&quot;</i>. The prospectus cryptically tells us that
of the top 5 customers, <i>&quot;one customer,
accounting for 15% of the Group's turnover for the period ending 30th June 2000,
subsequently became a wholly-owned subsidiary of Digital World&quot;. </i>15% of
Riverhill's turnover amounted to about <b>$3.58m</b>. The project was completed
in Jan-00.</p>

<p>It's a fair bet that this unnamed customer was Ancora Worldwide Ltd (<b>Ancora</b>),
the owner of <a href="http://www.cwap.com/" target="_blank">cwap.com</a>, which was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000808/LTN20000808023.doc" target="_blank">sold</a>
to Digital World for <b> HK$95m</b> by Kevin Ngai Kwok Kin (<b>Mr Ngai</b>), now
Chairman of <a href="../dbpub/articles.asp?p=14791" target="_blank"> Inworld Group Ltd</a> (<b>Inworld, 8100</b>) and others in 2000. Ancora
also bought services from Inworld later on. According to the <a href="http://www.netsol.com/cgi-bin/whois/whois/?STRING=cwap.com&amp;SearchType=do" target="_blank">domain
record</a> of cwap.com, Ancora is located at the Beijing office of BSPN,
Riverhill's principal subsidiary.</p>

<p>Riverhill's largest customer accounted for 22% of turnover for the
period, and the top 5 accounted for 86%, so excluding Ancora (or whoever it
was), 3 others accounted
for 49% of turnover.</p>

<p>On 18-Oct-99, the group's 4th project came for a vehicle
tracking system for <i>&quot;a highway construction and management company in
Mainland China&quot;</i>. This was a two-stage project expected to complete in
May-01.</p>

<h4>Split time!</h4>

<p>Let's stop the clock there for a moment, because, as luck would
have it, when Styland bought into Cyber World, it was a &quot;Major
Transaction&quot; under the listing rules, which means we got an accountant's
report by Albert Lam &amp; Co, for the period from 12-May-99 to 30-Nov-99. That
allows us, by subtraction, to split the first track record period into two
parts, as shown below.</p>

<img class="center" alt="" src="../images/riverh2.gif">

<p>Notice that the second part of the period was loss-making - it
is only the first 7 months that made a profit.</p>

<p>On 2-Jan-00 came the 5th project for a web site for <i>&quot;a
software house in Macau&quot;, </i>completed in Feb-00<i>. </i>Thanks to a
geographical breakdown of sales, as this was the only project in Macau, we can
infer that the contract was worth 16.1% of turnover or about <b>$3.84m</b>.&nbsp;</p>

<p>On 8-Jan-00 came the 6th project for <i>
&quot;network system design and integration&quot;</i> for <i>&quot;an internet
content provider in Hong Kong&quot;, </i>completed in Mar-00.</p>

<p>On 27-Jan-00 came the 7th project, <i>&quot;an internet digital
mapping system on Hong Kong&quot;</i>, for <i>&quot;an internet content provider
in Hong Kong&quot;.&nbsp;</i> The project was in two stages and expected to
complete in Jun-01.</p>

<p>In Jan-00, Riverhill became an authorised dealer of various
products of <a href="http://www.microimages.com/" target="_blank">MicroImages,
Inc.</a> and in May-00, it was appointed as head distributor of selected
software by <a href="http://www.intergraph.com/" target="_blank">Intergraph
China Ltd</a>. Both produce GIS software. Interestingly, the <a href="http://www.microimages.com/dealers/china.htm" target="_blank">contact
page</a> for BSPN on MicroImages web site lists an old web address on an Inworld
web site.</p>

<h3>Out-sourcing the track record</h3>

<p>In the period, Riverhill used sub-contractors for an undisclosed
number of projects at a total cost of $4.1m. The identity of the sub-contractors
was not disclosed. During the period, the largest supplier to Riverhill <i>&quot;provided
technical support to the Group for website development projects, accounting for
35% of the Group's total purchases.&quot; </i>We note that Riverhill's 1st, 2nd,
3rd and 5th projects all involved web sites. So it seems that some or all of
this early part of the track record was effectively out-sourced.</p>

<p class="regbox">Regulatory note:
as &quot;total purchases&quot; are not disclosed in prospectuses, we can't
translate percentages into dollars. Companies should be required to put a
monetary figure on total purchases so that we know what we are talking about.</p>

<h3>Track record: six months to 31-Dec-00</h3>

<img class="center" alt="" src="../images/riverh4.gif">

<p>In Jul-00, Riverhill became an authorised dealer for certain
products of <a href="http://www.sgi.com/" target="_blank">Silicon Graphics Inc</a>,
which makes graphics workstations and servers.</p>

<p>On 6-Oct-00 came the 8th project, and the only new one in the
period, <i>&quot;enhancement of an
internet portal with virtual reality functions&quot;</i> for <i>&quot;an
internet portal on beauty&quot;, </i>completed in Mar-01.</p>

<p>In the six-month period, the largest customer accounted for a whopping
78% of turnover, implying a value of <b>$2.31m</b>. This customer was based in
HK and involved <i>&quot;3S Applications&quot;</i>. so it must be the 7th
project and the only one which generated revenue for the half-year. The remaining 22% of turnover came from
distribution of software and hardware in Mainland China. The 5 largest customers
(including two who just bought distributed products)
accounted for 88% of turnover. Although the 7th project customer was an ICP
based in HK, all turnover was settled in Renminbi.</p>

<p>Based on completion dates, the 4th and 8th projects were still
in progress but did not generate turnover in the period.</p>

<h3>Post-track record: up to 11-May-01</h3>

<p>Between Nov-00 and Jan-01, Riverhill spent HK$100k on banner
advertisements at Inworld.</p>

<p>On 13-Apr-01 came the 9th project,&nbsp; <i>&quot;system design
and integration of a digital earth prototype&quot;</i> for <i>&quot;a supplier
of scientific appliances in Mainland China&quot; </i>expected to complete in
Jun-01.</p>

<p>By 11-May-01 when the prospectus was finalised, only 3 contracts
were in progress, with a total gross contract value of $10.1m which had not been
recognised by the end of the track record on 31-Dec-00. That would be the 4th,
8th and 9th projects. In fact, based on subsequent accounts, much of this was
hardware and software distribution, and the turnover for the 6 months to
30-Jun-01 was as shown below:</p>

<img class="center" alt="" src="../images/riverh3.gif">

<p>As you can see, sales collapsed soon after the IPO, with almost
no turnover in contract services. In the most
recent quarter to 31-Mar-02, sales were only $402k. All this is a far cry from
the <i>&quot;letter of intent with contract value of approximately
HK$218 million&quot;</i> stated in the Styland announcement back in Jan-00.</p>

<h3>IPO Allotment</h3>

<p>On 29-May-01 Riverhill
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010529/00000MC20010529091100P.pdf">announced</a>
that its IPO had been 120x subscribed in the retail tranche of 20m shares which
comprised 20% of the initial offer. That oversubscription included 37 applicants
for the entire 20m shares, 37 for 10m shares, and a total of 85 who wanted at
least half the public offer.</p>

<p>The company reallocated 15m shares to the public offer, leaving
65m placing shares, and then over-allocated 15m shares to the Placing, which it
eventually covered by
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010612/00000MC20010612014419W.pdf">exercising</a>
the over-allotment option.&nbsp;</p>

<p>Despite the apparently popular reception, the largest recipient in the placing was a director and shareholder of ICNH, the financial adviser to Riverhill, who received 12m shares,
or 15% of the placing. The top 10 placees received 59.1% of the placing,
prompting a concentration warning of the type often seen in GEM issues. All
would be free to sell.</p>

<h3>Share price</h3>

<p>Trading began on 1-Jun-01 and 143% of the 115m offer shares
changed hands - in other words, some shares traded more than once. The price
ranged from $1.14 to $1.68 and closed at $1.62, up 170% on the IPO price. It
went on to reach an all-time daily closing high on 6-Jun-01 of $1.80, up <b>200%</b>
on the IPO, valuing the firm at $747m.</p>

<h3>Post-IPO Acquisitions</h3>

<p>In Sep-01 Riverhill acquired 52% and 25% of Xi'an Giahe
Information Consultation Industry Co Ltd and Wuhan GIS Information Technology
Ltd Corp respectively for <b>HK$1.5m</b>.</p>

<p>On 31-Oct-01 Riverhill
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20011102/00000MC20011102011809I.pdf">acquired</a> 35% of <a href="http://www.cityonmap.com" target="_blank">Beijing
Cityonmap Technology Co. Ltd</a>. (<b>Cityonmap</b>) for <b> HK$5.2m</b> in cash. The
company is <i>&quot;principally engaged in the research and development of
wireless application of GIS and GPS&quot;</i>. The vendor was a BVI company
called Green Yield International Co Ltd and we don't know who owned it.</p>

<p>In Jan-02, Cityonmap teamed up with <a href="http://www.shangwutong.com.cn/" target="_blank">Beijing
Hi-Tech Wealth Co. Ltd.</a>, <i>&quot;China's biggest PDA manufacturer&quot;</i>
to launch a PDA with navigation features.</p>

<h3>Investment in Inworld</h3>

<p>In Inworld's IPO, the allotment
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20011228/00000MC20011228005505A.pdf">announcement</a>
revealed that one of the top 4 placees was &quot;<i>Cyber
World Technology Limited, a customer of the group&quot;</i> which of course is
owned by Riverhill. That cost <b>$4.0m</b> for
7.6% of Inworld's placing. Riverhill never disclosed the investment. </p>

<p>Inworld's stock began trading on 31-Dec-01, and there is no sign
of it in the Riverhill <a href="http://www.hkgem.com/research/e_8127frp-20020205q2.pdf" target="_blank"> interim report</a> balance sheet at 31-Dec-01, so it seems
likely that they sold it on the first day. In the income statement, under <i>&quot;other
revenue&quot;</i>, Riverhill records <i>&quot;other income&quot;</i> of HK$443k
in the 3 months to 31-Dec-01. Perhaps part of this is the profit on Inworld
shares. Riverhill's net loss for the quarter was $4.0m. </p>

<h3>Deposit with Digital World subsidiary</h3>

<p>On 6-Feb-02 Riverhill
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020206/00000MC20020205204137V.pdf">announced</a>
results for the 6 months to 31-Dec-01. The statement revealed that Riverhill had placed a deposit of <b>$2.0m</b><i>
&quot;to an independent network provider, Digital Nunet Exchange Limited, to
secure board band (sic) availability in Beijing.&quot; </i>Does that name sound
familiar? <a href="digitalmess.asp#dnunet" target="_blank">Digital Nunet
Exchange Ltd</a> is 55% owned by Digital World.</p>

<h3>Accounts receivable</h3>

<p>The interim report was incomplete, and the company had to put
out
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020315/08127MC20020315195957T.pdf">supplemental
results</a> which revealed that accounts receivable at 31-Dec-01 included an
amount of $1.648m due for over 120 days.</p>

<h3>Declining cash balance</h3>

<p>Since the IPO, Riverhill's cash balance has declined rapidly:</p>

  <table class="numtable center">
    <tr>
      <th>Date</th>
      <th>Cash HK$m</th>
    </tr>
    <tr>
      <td>30-Jun-01</td>
      <td>65.5</td>
    </tr>
    <tr>
      <td>30-Sep-01</td>
      <td>56.0</td>
    </tr>
    <tr>
      <td>31-Dec-01</td>
      <td>32.3</td>
    </tr>
    <tr>
      <td>31-Mar-02</td>
      <td>17.5</td>
    </tr>
  </table>

<p>If it continues at that rate, it should be down to zero around
about now.</p>

<p>The 31-Mar-02
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020510/08127MC20020510174553V.pdf">quarterly
results</a> showed a loss of $3.56m, compared with <b>$1.94m</b> in the quarter
to 31-Mar-01. The interesting thing about that is that in the IPO prospectus,
Riverhill showed a net loss &quot;based on the Group's management accounts&quot;
for the three months to 31-Mar-01 of <b>$1.33m</b> for the exact same period. It
makes us wonder how accurate the group's management accounts were! The restated
loss was 46% larger than the prospectus claimed!&nbsp;</p>

<h3>Chairman quits board</h3>

<p>On 24-Jun-02 Prof He, the largest management shareholder,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020624/08127MC20020624190123F.pdf">resigned</a>
as Chairman and executive director, and became <i> &quot;Honorary Chairman&quot;</i>, which
Riverhill later
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020626/08127MC20020626192159O.pdf">clarified</a>
is not a board position. </p>

<h3>Share price</h3>

<p>Riverhill's closing price today was $0.345, down 80.8% from its
high. However, its net asset value per share at 31-Mar-02 was only $0.131,
including losses of 2.5 cents in the first 9 months of the financial year. </p>

<h3>Summary</h3>

<p>After 3 Parts to the Stynet story, a network should be clearly
visible. In Riverhill, we have a company:</p>
<ul>
  <li>
    which once had &quot;letter of
    intent with contract value&quot; of HK$218m, but managed turnover of $1.97m
    in the last 9 months</li>
  <li>
    in which Styland and Digital World
    bought pre-IPO shares and shareholder loans from &quot;independent third
    parties&quot; at a combined cost of HK$178m</li>
  <li>
    whose track record included sales
    to a company (Ancora) which was sold to Digital World for HK$95m</li>
  <li>
    part of whose track record was
    performed by sub-contractors</li>
  <li>
    whose turnover collapsed almost
    immediately after the IPO</li>
  <li>
    whose prospectus understated losses for the 3 months to 31-Mar-01,
    which turned out to be 46%&nbsp;larger than stated</li>
  <li>
    which placed advertising with
    Inworld which appeared in Inworld's track record</li>
  <li>
    whose financial adviser was ICN</li>
  <li>
    which briefly invested in Inworld's IPO</li>
  <li>
    which has a rapidly shrinking cash
    balance</li>
  <li>
    whose Chairman and largest
    management shareholder has already resigned.</li>
</ul>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5639">ANGLO CHINESE CORPORATE FINANCE, LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14791">Famous Tech International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5142">Good Resources Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15232">INTERNATIONAL CAPITAL NETWORK HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16944">Jonten Hopkins CPA Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5577">PURVIEW (FAR EAST) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13482">RIVERHILL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4978">STYLAND HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=14902">Ngai, Kevin Kwok Kin (1975)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13492">Yick, Chong San</a></li>
				
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