
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

<script type="text/javascript">document.title="Techpacific - Try not to Laugh";</script>

	<div class="summary">"Tell us your idea - we promise not to laugh" so goes the bus advertisement for tech incubator/ fund manager Techpacific.com, which has launched its IPO on GEM. Webb-site.com examines the anatomy of this up-start and finds it difficult not to laugh at the audacity of the pricing. You are being asked for more than 3 times the price paid by many investors 2 weeks ago.</div>

<h2 class="center">Techpacific - Try not to Laugh<br>
<span class="headlinedate">8 April 2000</span></h2>
<p><a href="http://www.techpacific.com/" target="_blank">Techpacific.com
Ltd</a> has launched its IPO,
aiming to become Hong Kong's
first listed pure internet incubator. <i>Webb-site.com</i> has analysed the
prospectus. Although it discloses detailed information on previous financings
and share options, these are all expressed in terms of shares which have since
been split and been reorganised, so the average reader will have no idea what
the directors, employees and 3 rounds of private investors actually paid for the
stock. It takes a lot of work with a spreadsheet to figure that out. Fear not,
we will give you the full history. We also found that over 85% of the cash
revenue in the first and only year of the company came from related
parties.&nbsp; </p>

<p> The company, which has just a 1 year track
record, is aiming to issue 300m shares (subject to over-allotment of a further
45m shares) at a price range of HK$1.38-1.68 per share. For the purpose of this
article, we'll assume a mid-point of $1.53 per share. </p>

<p>The basic offer then raises $459m gross or $417m after expenses
of $42m (9.2% of the proceeds). </p>

<p>The new shares represent 12.5% of the enlarged issued capital of
the company, but that is subject to further dilution by the &quot;pre-IPO&quot;
share option scheme as well as post-IPO share options. In line with the recent
SFC/ SEHK policy announcement, the company has been granted a waiver increasing
the number of shares which may be placed under option to 30% of the company from
time to time. </p>

<p>At flotation, they already have 19.7% of the 30% limit in outstanding
options, most of which have an exercise price of either $0.196 or $0.476 per
share. That followed the pre-flotation exercise of another 16.1% which will
therefore not count towards the 30% limit.&nbsp; </p>

<h3>Pre-placings</h3>

<p>Now you might be thinking that the 12.5% offered in the IPO is less than the minimum
free float of 15%. That's not a problem, because a lot of people who are not
employees have been issued shares in
the past three months, at prices way lower than the IPO price. </p>

<p>Here's a summary of the weighted average entry price of all the
existing shareholders: </p>

<img class="center" alt="" src="../images/techpa4.gif">

<p>As you can see, you are being asked to put up 70% of the
invested capital
in return for just a 12.5% stake in this venture (the IPO proceeds are shown net of
expenses). If and when the outstanding share
options are exercised, the IPO shares will be diluted to only <b>10.4%</b> of
the company. Meanwhile the
founders have an entry price of less than 1.6 HK cents per share (around 1% of
the IPO price) and even the strategic and other investors have invested an average of just
$0.168 per share.&nbsp; </p>

<p>OK, you might think that the existing investors took a lot of risk
and so should be entitled to such a low entry price. In many cases, this simply
is not true. The most recent round of funding (Round 3) closed on 28-Mar-00, just 3 days
before the &quot;Latest Practicable Date&quot; in the prospectus. These
investors paid HK$0.476 per share. You are being asked to pay more than 3 times that.
In Round 2, which ran from 26-Oct-99 to 28-Mar-00 (over-lapping Round 3), shares
were issued at HK$0.196 each. </p>

<p>The various rounds of share issues took place on the following
dates: </p>

<img class="center" alt="" src="../images/techpa2.gif">

<p>Note that besides the 19.7% of the existing capital currently
under option, and a further 10.3% which may be granted, there has already been
16.14% exercised just before the flotation. </p>

<h3>Name dropping</h3>

<p>Techpacific's roadshow video goes out with a thumping rock beat
along with footage of employees playfully spraying each other with what looks
like party foam and dancing to a lurid MTV-like background. What fun. Then comes the serious stuff - we see names like Softbank, Soros, Dell and GE
floating past the techpacific logo. Great, if these companies are investing, it
must be a sure bet! But wait a minute - what price did these guys pay? Take a
look at the first 2 blocks in the second round of funding: </p>

<img class="center" alt="" src="../images/techpa9.gif">

<p>As you see, investors who came in a recently as two months ago
are seeing a potential 8-fold gain in their shares if you can be persuaded to
pay the IPO price for them. They have very little downside. Nice work if you can get it. </p>

<p>Quantum Emerging Growth Partners C.V. is a fund associated in
some way with legendary investor <a href="http://www.amazon.com/exec/obidos/ASIN/1891620274/webbsitecom" target="_blank">George
Soros</a>. Henry Cornell is a Managing Director of <a href="http://www.gs.com/" target="_blank"> Goldman Sachs</a> and is a member
of the Techpacific advisory board. John S. Wadsworth Jr. is Asia Chairman of <a href="http://www.msdw.com/" target="_blank"> Morgan
Stanley Dean Witter</a>. Daniel Widdicombe was a senior person at <a href="http://www.bear.com/" target="_blank"> Bear
Stearns</a>, where techpacific director Johnny Chan worked prior to joining
techpacific in Aug-99. Widdicombe recently became CFO of hotel networking
provider <a href="http://www.i-quest.com/" target="_blank">i-Quest</a>. William Bowmer is head of asian equity capital markets at
<a href="http://www.lehman.com/" target="_blank">Lehman</a>. So if any of these firms are bullish on the stock, you
have notice of the possible conflict of interest. Incidentally, techpacific
Chairman Robert Owen (former Chairman of the SFC) is also a director of <a href="http://www.nomura.co.jp/e/index.html" target="_blank">Nomura</a>
International (Hong Kong) Limited, the co-lead manager of the IPO. </p>

<p>We don't know anything about the other investors listed.
Apart from Softbank, which is locked in for 6 months, the rest of the above
parties (including members of the Advisory Board) are not subject to the lockup and are
<b> free to sell as soon as trading begins</b>. </p>

<h3>Round 2C</h3>

<p>The 3rd leg of Round 2 (we'll call it Round 2C) is a block of
shares allotted between 22-Mar-00 and 28-Mar-00, just before the prospectus went
to print. Apart from directors and staff, several names in the prospectus are
those of familiar people in investment banking. Peter Hamilton and Ian Henry are
at China.com, David Kim is formerly of China.com and most recently of Softbank,
and joined techpacific after the prospectus was printed, Eric Gerritsen is or was VP of international development for
Lycos (where David Kim once worked), Anderson Whamond is a
director of Regent Pacific and a former MD of Peregrine Securities International
Ltd. </p>

<p>Adam Quinton is or was a telecoms analyst at <a href="http://www.ml.com/" target="_blank">Merrill
Lynch</a>, Kevan Watts is or was Executive Chairman Asia Pacific Region of
Merrill Lynch, Graham Ormerod is or was with <a href="http://www.ingbarings.com/" target="_blank"> ING
Barings</a>, and Hiseh Fu Hua was
formerly with BNP Prime before setting up his own direct investment fund. Henry
Tsang Yuk-wong is an MD at Bear Stearns. Bo Hong is or was with Bear Stearns. Yu Pei-pei is
or was an investment banker with
Goldman Sachs and former colleague of Johnny Chan when he was at Bear Sterns.
Peter Mallinson is or was in equity capital markets at Goldman Sachs. Stephen Ludwig
was with Nomura in the fixed income division. Ravi Chidambaram was with <a href="http://www.db.com/" target="_blank">Deutsche
Bank's</a> Asian investment banking arm. <a href="http://www.fia-asia.com/aboutfia_principles.asp" target="_blank">Tony
Shale</a> is Chairman of financial journal <a href="http://www.fia-asia.com/" target="_blank">Financial
Intelligence Asia</a>. Kenny Hargrove is or was a journalist with <a href="http://www.ifrpub.com/" target="_blank">IFR
Asia</a>. Doi Udomritthiruj is presumably related to Johnny Chan's wife of the
same surname. Other investors include Fidelity Investors II LP and Fidelity Investors International Ltd.
<b> All public
investors in Round 2C got shares at $0.1957 and are free to sell.</b> </p>

<p>A former head of Asia Pacific Investment Banking for Merrill
Lynch is David Michael Williams, who joined US venture capital firm <a href="http://www.drapervc.com/" target="_blank">Draper
Fisher Jurvetson</a> in Feb-00 and joined techpacific's advisory board in
Mar-00. </p>

<p>The issue of shares in Round 3 of financing also took place between
22-Mar-00 and 28-Mar-00. This is when Dell came in: </p>

<img class="center" alt="" src="../images/techpa5.gif">

<p>Included in &quot;various individuals and companies&quot; ia a
Max C. Chapman III, who presumably is the son of independent director Max C
Chapman Jr. Unlike his father, Max C. Chapman III is not subject to any lock-up. </p>

<p>Yi Hua Assets Ltd is 50% owned by Francis Leung Pak To, who is a
member of the Advisory Board of Techpacific. The other half is owned by Mr
Leung's employer, BNP Prime Peregrine, which is sponsor of the IPO. Apart from SOFTVEN (a fund
affiliated with Softbank) the other investors named in the table above are not subject to a lock-up
and are free to sell. If you can be persuaded to pay the IPO price, they'll see
a 3-fold return in 3 weeks. </p>

<h3>Entry costs</h3>

<p>Here, for your interest (we believe in full disclosure) is an
analysis of the average entry costs of all shareholders. We'll start with directors and employees (including
their proportionate interests held through companies they hold): </p>

<img class="center" alt="" src="../images/techpa6.gif">

<p>And now the other investors: </p>

<img class="center" alt="" src="../images/techpa10.gif">

<h3>Lock-ups</h3>

<p>The initial management shareholders are the directors, Softbank
(and its fund), Mr Borromeo, Mr Siddiqui and Johnny Chan's spouse, Yuda
Udomritthiruj. They cannot sell shares for 6 months, and after that, the 3
founding directors have undertaken not to sell if the disposal would reduce
their holding below 35% of the voting power company for a further 6 months. All
other shareholders are free to sell whenever they like. Details of the initial
management shareholders' lock-up
are shown below: </p>

<img class="center" alt="" src="../images/techpa8.gif">

<p>6-month lock-ups also apply to &quot;significant
shareholders&quot; Tekbanc (12.59%) and Regent Pacific (5.66%). So the total
lock-up is 69.02% for 6 months and 35% for a further 6 months, while the other
18.48% held by pre-float shareholders is saleable. </p>

<p>Francis Yuen Tin Fan (an independent non-executive director)
holds his shares through a company in which he and his wife each own 50%. The
lock-up only applies to half the shares held by that company. </p>

<h3>Related Revenues</h3>

<p>Over 85% of Techpacific's first year of cash revenues comes from related
parties. Take a look at this table: </p>

<img class="center" alt="" src="../images/techpa7.gif">

<h4>Tekbanc.com </h4>

<p>Silk Route Asset Management was an original subscriber in the
first round of financing, and along with Suleman Ahmed Saeed Al Hoqani, both
transferred their stakes in techpacific to tekbanc.com Ltd on 28-Mar-00. </p>

<p>After the year-end, techpacific received fees of a further
US$900,000 for advising and arranging the sale of <a href="http://www.tekbanc.com/" target="_blank">tekbanc.com
Ltd</a>, presumably to its current owner, the Kuwait Fund for Arab Economic
Development, which is a development finance agency owned by the government of
Kuwait. As a result, the Kuwaiti government will have a 10.51% stake in
techpacific.com after the flotation. They are subject to a 6-month lock-up. The
tekbanc fees represent 90% of the cash corporate finance and advisory fees
earned by techpacific in the first quarter of 2000. </p>

<p>Last year, techpacific subscribed US$76,001 for shares in
Planetarabia Holdings Inc. (<b>Planetarabia</b>), which represented a 4% stake
as of 31-Dec-99. <a href="http://www.planetarabia.com/" target="_blank">Planetarabia.com
</a>is currently <a href="http://www.networksolutions.com/cgi-bin/whois/whois/?STRING=planetarabia.com" target="_blank">registered</a>
to one of Planetarabia's directors, Ali Siddiqui (with an address in Ithica, New
York State). Mr Siddiqui and friends called Imad and Johnvey (their tech guru) <a href="http://www.planetarabia.com/home/about.cfm" target="_blank">founded</a>
Planetarabia in May-99. Siddiqui is also a senior manager of techpacific who
joined the company at its inception. Of the original 4% of Planetarabia
subscribed by techpacific, they assigned 3.21% at cost (US$61,001) to
&quot;certain directors and employees&quot;. Techpacific also may have received
shares as fees, since it now has a 5.39% stake in Planetarabia with a book cost
of US$16,000. In addition, it has also invested US$50,000 in convertible loan
notes. </p>

<p>Of the other related clients, <a href="http://www.drs.co.kr/" target="_blank">Daeyu Regent
Securities</a> is a subsidiary of first-round investor <a href="http://www.regentpac.com/" target="_blank"> Regent
Pacific</a>, and <a href="http://www.bigsave.com/" target="_blank">BigSave.com
Ltd</a> (<b>BigSave</b>) is 74% controlled by <a href="http://www.regentpac.com/regent/executiv.htm#jim" target="_blank">Jim
Mellon</a>, the Chairman of Regent Pacific who is in the process of trying to inject
BigSave into it (but that's another story). </p>

<h4>The BigSave deal </h4>

<p>Over half of the revenue of Techpacific's track record came from
its first financial advisory mandate. This was for BigSave, commencing in Jan-99
(when techpacific was still an unincorporated business).&nbsp;BigSave.com is not an Asian internet play but is in fact an
on-line store serving the UK from the Isle of Man. </p>

<p>As part of the placing, a director and shareholder of techpacific (who
is/are not named) invested a total of US$4,002,050 in BigSave, amounting to 9.96% of its issued share
capital at 31-Dec-99. In addition to the fee, techpacific received options to
subscribe for BigSave's equity. From the recent Regent Pacific <a href="http://www.hkex.com.hk/listedco/listconews/20000316/LTN20000316039.HTM" target="_blank">press
release</a>, we know that there were 34,928,423 shares of BigSave in issue as of
31-Dec-99, so that means that the price per share in the placing was US$1.15. Mr
Mellon is now trying to inject 74% of BigSave into Regent Pacific at a valuation
of US$3 per share, which is the price at which several placements totaling
2,700,000 shares (7% of BigSave) were done between Aug-99 and Mar-00. </p>

<p>Options over 2.5% of BigSave were passed back by techpacific to ECK &amp;
Partners Ltd (<b>ECK</b>) on 30-Mar-00, just before the float. This company is
now owned by 3 of techpacific's directors (Ilyas Khan, Robert Owen and Johnny
Chan), but the prospectus says that &quot;until recently&quot; ECK was 50% owned by European Capital
Limited, which originally provided techpacific with free use of its offices and
the services of Ilyas Khan. We guess that the &quot;K&quot; stands for Khan and
that he owned the other half of ECK prior to its restructuring. </p>

<p>The remaining 7.5% of options over BigSave held by techpacific
comprise 2.5% at US$1.15 (the old placing price) and 5% at the IPO price of
BigSave (if that happens). </p>

<p>European Capital Co Ltd is a London-based project and corporate
finance house of which
Robert Owen (techpacific's Chairman) is a director and Japanese trading giant <a href="http://www.itochu.co.jp/" target="_blank">Itochu</a>
is a shareholder. ECK put up US$105,000 of the
first round of US$270,000 financing for techpacific. Mr Owen is also a Director
of Regent Pacific. A senior manager of techpacific, Stephen Christopher Smith,
was previously an Associate Director of European Capital. </p>

<p>Regent Pacific also owns 24.9% of techpacific.com Venture
Capital Ltd <b>(TP.comVC</b>), while the other 75.1% is owned by techpacific.
TP.comVC manages the &quot;Nirvana Fund&quot; which is the fund set up to invest
in incubatees. The manager receives 2% per annum and a 20% profit share of any
profits in excess of a 10% p.a. return. </p>

<p>The Nirvana Fund was launched in Dec-99 and techpacific
initially put up US$1m of the US$50m target. Techpacific has also committed to
invest US$10m in a wholly-owned subsidiary which will co-invest alongside the
Nirvana Fund. There are over 100 investors in the Nirvana Fund including Jim
Mellon and Regent Pacific. </p>

<p>Jim Mellon's company, Interman Holdings Limited, also owns an
undisclosed stake in <a href="http://www.techpursuit.com/" target="_blank">techpursuit.com</a>
Holdings Ltd, set up on 27-Mar-00 to provide recruitments services through the
internet. Techpacific has injected US$200,000 into this for a 40% stake, and
Interman and <a href="http://www.aba.com.hk/" target="_blank"> Anthony Baillieu &amp; Associates Ltd</a> own the rest. </p>

<p>Post-float, Regent Pacific will own 5.66% of techpacific
acquired at an average of just $0.0428 per share, and will be subject to a
6-month lock-up as a &quot;significant shareholder&quot;. </p>

<h3>Options</h3>

<p>In addition to cash fees, techpacific has also taken options
over equity and subscribed small stakes in companies which it has advised. To
date it has invested a total of US$2.01m in 10 such companies. </p>

<p>Last year techpacific subscribed US$1,225,000 for shares in
Netease.com, Inc which represented 2.99% of its issued share capital at
31-Dec-99. However, 2.16% of this was assigned at cost to &quot;certain of the
directors and employees&quot; of techpacific, so it only has 0.83% left at a
cost of US$340,000. </p>

<h3>Other investments</h3>

<p>The week before its prospectus was finalised, techpacific went
on a binge of transactions: </p>

<p>On 22-Mar-00 techpacifc agreed to subscribe US$1.75m for 40% of <a href="http://www.softpub.com/" target="_blank">SoftPub.com</a>
Inc. The <a href="http://www.networksolutions.com/cgi-bin/whois/whois/?STRING=softpub.com" target="_blank">domain</a>
SoftPub.com is registered to someone called Frankie Cheung. The company is
described as a web services business, with a core management team which has been
involved in web design since 1996. </p>

<p>On 24-Mar-00 techpacific agreed to subscribe US$1.75m for 25% of
<a href="http://www.gcgasia.com/" target="_blank">GCG Asia Ltd</a> (part of
Gorilla Communications Group, or GCG). This company is the for-profit conference
organising affiliate of the <a href="http://www.iandiasia.com/" target="_blank">iandi
Asia</a> technopreneur meetings. Also in Mar-00, Jonathan Hakim, a co-founder of
both GCG and iAndi Asia, joined techpacific to head up its incubation center. </p>

<p>On 28-Mar-00 techpacific agreed to subscribe US$600,000 for 10%
of <a href="http://www.bdaco.com/" target="_blank">BDA China Holdings Ltd</a>.
The principals of this firm, which is a consultancy specialising in internet and
telecoms in China, are <a href="http://www.bdaco.com/profile/staff.htm#clark" target="_blank">Duncan
Clark </a>and <a href="http://www.bdaco.com/profile/staff.htm#teddean" target="_blank">Ted
Dean</a>. </p>

<p>On 30-Mar-00 techpacific agreed to subscribe US$1m for 11.1% of
New Zealand-based web design company <a href="http://www.webmedia.co.nz/" target="_blank">WebMedia</a>
Group Ltd. </p>

<p>Techpacific has signed a non-binding MoU to acquire 35% of
Upstream Ltd, a company formed by David Ketchum, a public relations and media
expert, for US$250,000. </p>

<p>Techpacific has signed a letter of intent to acquire for an
unknown sum 25% of Asset Publishing and Research Asia Limited, which publishes <a href="http://www.assetasia.com/" target="_blank">Asset
Asia</a> magazine. </p>

<p>Techpacific has signed a letter of intent with outdoor
advertising company Top Result Interactive Ltd to acquire for an unknown sum up
to 30% of i-Result Media Ltd, a company to be formed to engage in online media
business. </p>

<h3>Nice business, silly price</h3>

<p>Don't get us wrong. In a short period of time techpacific has
assembled what appears to be a competent team of professionals. There is a real
need in start-ups, which are often run by young people with little business
experience, to have the resources of an incubator at their disposal. Legal,
accounting, public relations, HR and administration - this is the nitty gritty
stuff which slows down an entrepreneur and can be outsourced to an incubator. In
other words, we like the team. They've had time to practice on their related
companies, in particular the Regent Pacific / BigSave group, and are also
starting to do some real business with unrelated companies. </p>

<p>But the way in which the share offer has been put together
shouts of opportunism and pyramid selling. We cannot see how the value per share
of the company can have gone up 3-fold in 2 weeks, even if you believe the
original prices. Many of the current shareholders are not locked-in and paid
only $0.476 per share 2 weeks ago, or $0.196 in the last 3 months, and you are
being asked for $1.38-1.68. The company wants you to put up 70% of the invested
capital (net of expenses) for 12.5% of the firm, and the outstanding options
will dilute that to 10.4%. </p>

<p>Techpacific - ask us for money, but don't make us laugh. Readers
who want the stock should wait for the after-market - there should be plenty
available. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10458">8088 Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13540">BDA China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4952">Regent Pacific Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13199">Baillieu, Anthony Robert</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13198">Mellon, James (1957-02-16)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10460">Owen, Robert John Richard</a></li>
				
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