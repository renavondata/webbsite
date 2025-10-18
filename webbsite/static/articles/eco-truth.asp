
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

<script type="text/javascript">document.title="Eco-Truth";</script>

	<div class="summary">We take a look at the latest noxious emission on the GEM - Eco-Tek, which sells a taxpayer-funded filter for diesel exhausts. The stock has shot up 161% since its highly concentrated placing, and we predict sales and profits are set to collapse. Join us as we walk through the history of this company which was built on equity of just HK$116k by the star of a previous Webb-site.com article...</div>

<h2 class="center">Eco-Truth<br>
<span class="headlinedate">28 January 2002</span></h2>
<p>Sometimes we just gasp at the audacity of offerings on the GEM.
The latest one to catch our eye is <a href="http://www.eco-tek.com.hk/" target="_blank">Eco-Tek
Holdings Ltd</a> (<b>Eco-Tek</b>), listed on 5-Dec-01. The company is one of the
last to list with a less than two-year track record, the rules having changed on 31-Dec-01. </p>

<h3>History</h3>

<p>The story of Eco-Tek predates the company itself, beginning in 1996 with a research project
conducted by <a href="http://www.polyu.edu.hk/" target="_blank">Hong
Kong Polytechnic University</a> (<b>PolyU</b>), in the <a href="http://www.cse.polyu.edu.hk/" target="_blank">Department
of Civil &amp; Structural Engineering</a>. They began to experiment with a
filter to cut out some of the smoke emitted by Hong Kong's then notoriously
dirty diesel taxis and other light diesel vehicles. A prototype was developed in Nov-98, and
in Jul-99 the Government commissioned PolyU to conduct a feasibility study,
including a trial launched in Aug-99 on 62 diesel light duty vehicles. </p>

<p>The project was initially funded HK$190k (US$24k) by the Taxi
Dealers and Owners Association. Subsequently, PolyU put up another HK$1.3m,
according to their final Jul-00 <a href="http://www.info.gov.hk/epd/air/pdf/fr3.pdf" target="_blank">report</a>
on the trial, bringing the total research cost to $1.49m plus whatever the
Government paid for the study. The report estimated that <b> <i>&quot;if
mass-produced, the direct cost is around HK$300 per trap&quot;</i>.</b> </p>

<p>Clearly we are not talking rocket-science. The trap
is basically a stainless-steel sponge in a stainless-steel casing, which is attached to
the end of an exhaust pipe. It quickly clogs up with soot, and has to be cleaned
every 2-3 days (or daily on minibuses) to maintain efficiency. The tests showed that it would remove
20-30% of particulates depending on the vehicle, but this declines to almost nil
after a week if you don't clean it. Cleaning it involves removing the filter and
washing it (or getting someone else to), something that drivers may quickly tire of unless they are due for
an emissions test. </p>

<p>Another problem euphemistically known in the report as <i>&quot;spontaneous
soot regeneration&quot;</i> is that the soot has an annoying tendency to
ignite if the exhaust gases get too hot, burning some of the stainless steel
fibres in the filter. The report said that 6 taxis suffered from this problem, 3
of them recurrently. That's out of 21 taxis in the study, meaning a 28% problem
rate. Amongst the 19 public light buses in the study, 5 also showed the problem
even with daily filter changes. On taxis, it tended to be worse when the filter
had not been washed for a few days, and when they had been operating at high
engine loads. Anyone who's been to Hong Kong knows how hilly it is. </p>

<p>Another difficulty emerged in the &quot;lug-down test&quot;
which involves running the vehicle at full power, something you are liable to do
going up Old Peak Road with two <i> gweilos</i> in the back of your cab. The force of the
exhaust blew out around one third of the accumulated soot. Shades of <a href="http://www.chittychitty.com/" target="_blank">Chitty
Chitty Bang Bang</a> spring to mind. </p>

<p>All this is a lot more basic than the UK government's programme
called CleanUp which provides a 75% government subsidy for <a href="http://www.cleanup.org.uk/cleanup_oxcat.html" target="_blank">oxidation
catalysts</a> costing GBP300-1000 (HK$3,330-11,100) for light vehicles and
advanced <a href="http://www.cleanup.org.uk/cleanup_ptraps.html" target="_blank">particulate
traps</a> costing between GBP3,000-4,000 for heavy vehicles. These traps are far
more advanced,&nbsp; often including catalytic converters and then the soot is
intentionally burnt so that the filter &quot;regenerates&quot; or cleans itself
and absorbs up to 95% of particulates.
An example is Eminox's <a href="http://www.eminox.com/products/crt.pdf" target="_blank">Continuously
Regenerating Trap</a>. </p>

<p>Anyway, the Hong Kong Government had good reason to skimp on the
plan, because what they really want is for vehicles to progressively convert to
Liquefied Petroleum Gas (LPG). The trap is a stop-gap solution so it doesn't
have to work that well.&nbsp; </p>

<p>In May-00, the Government's Environmental Protection Department (<b>EPD</b>)
<a href="http://www.legco.gov.hk/yr99-00/english/panels/ea/papers/1909e01.pdf" target="_blank">briefed</a>
the Environmental Affairs Panel (<b>EAP</b>) of the Legislative Council,
referring to an estimate that as of Mar-00 there were 42,400
&quot;pre-Euro&quot; vehicles (those registered before 1995 when the Euro-I
standards were introduced) as follows: </p>

<blockquote>

<p>&quot;given that the cost of a trap including installation is
around<b> $1,200</b>, we estimate that funding required to retrofit all of these
pre-Euro diesel light vehicles would be around $50.9 million&quot; </p>

</blockquote>

<p>After the EAP, the EPD went to the LegCo Finance
Committee with a <a href="http://www.legco.gov.hk/yr99-00/english/fc/fc/papers/f00-11e.pdf" target="_blank">briefing
paper</a> which was discussed (see page 5 of the <a href="http://www.legco.gov.hk/yr99-00/english/fc/fc/minutes/fc120500.pdf" target="_blank">minutes</a>)
on 12-May-00. That paper broke down the estimated purchase cost to <b>$1,000</b>
for the trap and <b>$200</b> for installation. </p>

<p>Credit to Jake van der Kamp at the SCMP for first reporting the discrepancy
between that price and the &quot;direct cost&quot; of around HK$300 mentioned in
the PolyU report 2 months later. The difference is a juicy $700, or 70% profit
margin. </p>

<p>Government correctly insisted on going through a tendering
process for the supply of traps, even though the EPD had been involved in the PolyU research. The government suggested
to
the Finance Committee that the minimum tender period should be &quot;six
weeks&quot; or &quot;42 days&quot; under the WTO <a href="http://www.wto.org/english/docs_e/legal_e/gpr-94.pdf" target="_blank">Agreement
on Government Procurement</a> - in fact that agreement says 40 days (see Article
XI, paragraph 2). </p>

<p>Then on 2-Jun-00 Government <a href="http://www.info.gov.hk/gia/general/200006/02/0602252.htm" target="_blank">published</a>
the invitation to tender forms for the traps, setting a deadline of just 21
days, <b>so it appears that they broke WTO rules</b>. </p>

<h3>Bad Economic Governance?</h3>

<p>The issue here is that the Government came up with a cost estimate of
$1,200 per unit which it has yet to explain, even though PolyU thought the
production cost would be only $300, and then gave the rest of the market only 21
days to beat it. Even allowing for a refund of PolyU's research
and development costs, and a profit margin for their trouble, that is a
very generous price. LegCo's Finance Committee approved the budget on
the back of the EPD estimate, and
as a result it was very unlikely that anyone would tender at less than the
$1,200 price (including installation). <b>So how did the EPD reach this
estimate? </b>The only logical assumption is that they asked PolyU what they
would charge. </p>

<p>When the results were <a href="http://www.info.gov.hk/epd/press/000818b.htm" target="_blank">announced</a>
on 18-Aug-00, of 17 suppliers who pitched, only 2 suppliers had been accepted
for subsidy, by far the cheaper of which was a previously unheard of company
called Eco-Tek Co Ltd, with a bid of $1,300 per unit. Notice that is $100 more
than expected. No mention was made of PolyU in the announcement. </p>

<p>On 15-Sep-00, the Government <a href="http://www.info.gov.hk/epd/press/000915b.htm" target="_blank">announced</a>
a subsidy per vehicle of $1,300, to cover the full cost of the Eco-Tek product.
The offer was good for one year from 25-Sep-00. Now the profit margin looked
more like $800, or 72.7% excluding installation, which was outsourced to Caltex
stations. </p>

<p>As far as we know, LegCo was not asked for an increase in the
budget, and we guess this may have something to do with a reduced number of
eligible vehicles due to scrapping and LPG conversion since Mar-00, making room
for the $100 increase per remaining vehicle. </p>

<h3>The Making of Eco-Tek</h3>

<p>The grand total of all the equity invested in Eco-Tek before its
IPO is just HK$115,610, or an average of about <b> $0.00028</b> per share. Of this,
$100,000 was invested by Chairman Dr Lily Chiang (<b>Dr Chiang</b>) when the
first group company was incorporated on 27-Oct-99, making her the sole owner.
Another $790 (US$101) was invested in subsidiaries. The remaining $14,820
(US$1900) came in from other directors and staff who were allotted shares on
21-Nov-01, just before the prospectus was printed. </p>

<p>Dr Chiang is the daughter of Dr Chiang Chen, founder and Chairman
of HK-listed plastic injection machinery maker Chen Hsong Holdings Ltd (<b>Chen
Hsong</b>), of which she was an Executive Director until 1-Sep-00. She was invited to act as one of the industrial advisers on the
project by PolyU in Jun-98. </p>

<p>Connection: Dr Chiang and her father are or were directors of <a href="http://www.plastics-ctr.org.hk/" target="_blank">Hong
Kong Plastic Technology Centre Ltd</a>, which resides at PolyU. </p>

<p>In Sep-99, Dr Chiang and PolyU agreed to work together on the
commercialisation and testing (respectively) of the product. This led to a
memorandum of intent on 10-Feb-00 and another in Apr-00, leading to a formal
technology licence agreement between Eco-Tek and PolyU in Aug-00, when the
Tender was awarded and a PRC contractor was then awarded the manufacturing
contract. On 9-Dec-00, the license agreement was scrapped in favour of the
outright assignment of the patents by PolyU to Eco-Tek in return for a shareholding which
eventually became just 16.10% after the IPO, while Dr Chiang has 54.15%. </p>

<p>Dr Chiang has another connection to PolyU - her husband is Dr
Gino Yu, who runs the PolyU <a href="http://www.mic.polyu.edu.hk/" target="_blank">Multimedia
Innovation Centre</a>. She is the Vice Chairman of the <a href="http://www.hkdea.com/" target="_blank">Hong
Kong Digital Entertainment Association</a> of which her husband is Secretary.
She is also the Chairman of <a href="../dbpub/articles.asp?p=7078" target="_blank">Pacific Challenge
Holdings Ltd</a> (<b>PCH</b>), which in turn is 33% controlled by <a href="http://www.e1.com.hk/" target="_blank">E1
Media Technology Ltd</a> (<b>E1 Media</b>), of which she owns 60%. </p>

<p>E1 Media shows Eco-Tek in its <a href="http://www.e1.com.hk/mmmv201/e1site/index_en.jsp?id=579&amp;locale=en_US&amp;open=0" target="_blank">client
list</a> of web sites, but the Eco-Tek prospectus makes no mention of any
connected transaction for the web site design, although it does disclose that
Eco-Tek shared offices with E1 Media for a while and paid them a management fee. Perhaps
the web site was done for free. </p>

<h3>Sales</h3>

<h4>Eco-trap</h4>

<p>The Government estimated that at Mar-00 there were 42,393
pre-Euro vehicles suitable for the Eco-trap, of which 11,735 were taxis
registered before 31-Dec-95. The
prospectus states that by 21-Nov-01, 70% of the total taxi fleet of 18,000 had
converted to LPG, leaving about 5,400 unconverted. That reduces the total
pre-Euro population to about 36,000 at best, and more likely lower, as older
cabs are more likely to be scrapped for LPG. Of course, no
more pre-Euro vehicles of any sort have been registered since 1995, and some of the
older ones around in Mar-00
are now on the scrap heap. </p>

<p>The taxi conversion to LPG was incentivised by government <a href="http://www.info.gov.hk/td/eng/whatsnew/diesel.html" target="_blank">grants</a>
of up to $40k per cab, and this offer ended on 31-Dec-01 for taxis registered
before 1995 (including almost all the pre-Euro models), and ends on 31-Dec-03
for the rest, so we can expect most cabs to convert by these deadlines. The
Government has also waived fuel duty on LPG, making running costs a lot lower
than diesel, although this is complicated by widespread sales of illegal
duty-free diesel. Government plans to get all diesel taxis off the roads by
31-Dec-05. </p>

<p>The prospectus states that from 25-Sep-00 to 31-Oct-00, 1,247
Eco-traps were sold, and from 1-Nov-00 to 21-Nov-01, 15,583 were sold. This
makes a total of 16,830. On the other hand, it also says that by 21-Nov-01,
16,735 units had been sold, which is obviously inconsistent. Maybe some were
returned.&nbsp; </p>

<p>Eco-Tek estimates it has an 85% market share of the subsidy
program, implying that about 19,700 vehicles have been retrofitted. This leaves a
maximum HK target market of 16,300. Most important, Government's offer to pay for
it expired on 17-Oct-01, so the chances are that most of these vehicles will not be
retro-fitted. If they were going to fit it, they would have taken the subsidy. </p>

<p>An indication of this is the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020116/00000MC20020116215305R.pdf">final
results announcement</a> for the year to 31-Oct-01, which records net profit of
$8.221m on sales of $20.144m. The prospectus shows sales of $16.906m for the 9
months to 31-Jul-01, so the last quarter must be $3.238m. The prospectus also
shows net profit of $7.180m for the first 9 months, and unaudited profit of
$0.904m for the two months to 30-Sep-01. That means that <b>October's net profit
was only $0.137m</b>. </p>

<p>The Eco-trap is essentially toast in Hong Kong, and although it
may have potential in China, it would have to win orders in a less favourable
environment, probably at much lower prices, and prove that it can get over its
various technical difficulties. </p>

<h4>Other products </h4>

<p>The group also develops and sells hydraulic filters, although
this must be a very small line, as 96% of sales in the 9 months to 31-Jul-01
were Eco-trap sales and the other 4% was &quot;mainly&quot; filter cartridges
and adaptors for the trap. </p>

<p>Eco-Tek plans to compete for more government subsidies (when
they are announced) to retrofit about 50,000 old heavy diesel vehicles with
oxidation catalysts, but this time it is likely to see more vigorous competition
in the tender. Again, this is a one-off retrofit project, as new vehicles must
already reach high <a href="http://www.dieselnet.com/standards/eu/hd.html" target="_blank">Euro-III
standards</a>. </p>

<p>The company is also planning a regenerative diesel oxidation
catalyst <i>&quot;targeted at the higher end market, including government
vehicles&quot;</i> (again, a tender would be needed). </p>

<p>Eco-Tek is also &quot;committed to develop&quot; a soundproof
barrier, based on &quot;Active Sound Edge&quot; noise-cancellation technology
from JAI Company Limited of Japan, in the development of which Dr Pau
participated in 1998-1999. Whether they can persuade the Transport Department
and KCRC to wire up all the highways and railways with microphones and
loudspeakers (which in essence bounce back a phase-shifted reflection of the
noise, cancelling it out) is another question. Don't hold your breath. The
technology has not yet, as far as we can tell, been successfully commercialised
anywhere else in the World.</p>
<p>Eco-Tek also plans to spend $1m to research and develop a waste
plastic recycling process, and has retained Prof Georg Menges (<b>Prof Menges</b>),
an expert in the area of plastic recycling and a professor in the Institute of
Plastics Engineering, Technical University of Aachen, Germany, as the group's
technical consultant. They want to convert waste plastic into <i>&quot;oil
substances and finally, energy, in Hong Kong.&quot;</i></p>
<p>Connection: the prospectus does not mention that Prof Menges,
who is about 77 years old, was a non-executive director of Chen Hsong until
1-Apr-00.</p>

<h3>Financing</h3>

<p>Apart from the equity of $116k, Eco-Tek was initially financed by loans
from its three Executive Directors, which by the end of the track record on 31-Jul-01 amounted to
$4,015k,
being $2,767k from Dr Chiang, $935k from Dr Pau Kwok Ping (<b>Dr Pau</b>) and
$313k from Shah Tahir Hussain (<b>Mr Shah</b>). Their remuneration as directors was
$2,104k since inception, so the net advance was just $1,911k. All the loans were
repaid in Nov-01. </p>

<h3>The PCH connection</h3>

<p>Dr Pau was an Executive Director of Dr Chiang's father's
company, Chen Hsong until 20-Oct-00, having joined it in 1968. You may recall that Dr Pau was
also an &quot;independent third party&quot; who took part in the <a href="pchplacing.asp" target="_blank">dilutive
placing</a> by PCH in 2000, which followed E1 Media's <a href="centsibility.asp" target="_blank">attempt</a>
to inject a dot-com into PCH in return for nearly all of its cash, which was
stopped by PCH minority shareholders. Mr Shah is also a director of PCH. </p>

<p>The Eco-Tek prospectus states: </p>

<blockquote>

<p>&quot;On 8 March 2001, an independent third party
(the &quot;Petitioner&quot;) presented a petition (the &quot;Petition&quot;)
to the Supreme Court of Bermuda (the &quot;Court&quot;) against Dr. Chiang and a
company (the &quot;Respondent Company&quot;) listed on the Stock Exchange of
which Dr. Chiang is the chairman.&quot; </p>

</blockquote>
<p>Oh come on now, don't by shy! What the prospectus
doesn't state is that the company in question is PCH, that she controls it, and that the
Petition <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010314/LTN20010314013.doc" target="_blank">alleged</a>
<i>&quot;that the affairs of [PCH] had been and/or were being conducted in a
manner which is oppressive or unfairly prejudicial to the interests of some part
of the [shareholders] of the company.&quot;&nbsp; </i>If you were thinking of
becoming a minority shareholder in Eco-Tek, that information might be relevant.
Perhaps it should be renamed Eco-Truth for being so economical. </p>

<p>The Petitioner asked the court for an order that
the company and/or Dr Chiang purchase the Petitioner's shares in PCH at a fair
value to be determined by the court, or alternatively that PCH be wound up. The
winding-up part of the request was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011004/LTN20011004022.doc" target="_blank">rejected</a>,
and the rest of the case is still pending with no date fixed for a hearing. So
far PCH has provided for $17m of shareholders' funds for its legal costs on the
case. </p>

<h3>Who are the INEDs?</h3>

<p>The independent non-executive directors of
Eco-Tek are Paul Cheng Ming Fun and Eden Woon Yi Teng. Connection: Mr Cheng is a former Chairman of the Hong Kong General Chamber of
Commerce, of which Dr Woon is a director and of which Dr Chiang is Vice
Chairman. </p>

<p>Eco-Tek also has two non-executive directors
representing PolyU. </p>

<p>Incidentally, one of the INEDs appointed to PCH
after Dr Chiang took over is Alexander Tzang Hing Chung. Connection: he is Deputy President
of PolyU (where Dr Chiang's husband works) as well as a director of Chiang Industrial
Charity Foundation, founded by Dr Chiang's father. </p>

<h3>The Pre-IPO Option Scheme</h3>

<p>Not content with their existing shareholdings amounting to
57.25% of the company after its IPO, the executive directors received options to
subscribe a further 96.74m shares at $0.01 per share between 1 and 4 years after
the IPO. The shares are equal to <b>17.5%</b> of the post-IPO share capital, at
a <b>96% discount</b> to the IPO price, as a <i>&quot;recognition of the
contribution of the executive directors to the growth of the Group&quot;</i>. </p>

<p>PolyU, on the other hand, has an option to subscribe a further
13.82m shares, equal to <b>2.5%</b> of the post-IPO share capital, at a <b>10%
discount</b> to the IPO price, or $0.2142 per share between 1 and 3 years after
the IPO, <i>&quot;as a reward to PolyU's continuing support and collaboration
with the Group and for the purpose of enhancing future cooperative
relationship&quot;</i>. </p>

<p>You can see whose contribution is valued higher, and the
taxpayers who fund PolyU might begin to wonder if they are getting enough bang
for their research buck. </p>

<p>If all the options are exercised, the ownership will look like
this: </p>

<table class="optable center">
	<tr>
		<th class="left"><i>Name</i></th>
		<th><i>Post-IPO<br>%</i></th>
		<th><i>After Options<br>%</i></th>
	</tr>
      <tr>
        <td class="left">Dr Chiang</td>
        <td>54.15</td>
        <td>53.46</td>
      </tr>
      <tr>
        <td class="left">Dr Pau</td>
        <td>3.00</td>
        <td>6.67</td>
      </tr>
      <tr>
        <td class="left">Mr Shah</td>
        <td>0.10</td>
        <td>2.17</td>
      </tr>
      <tr class="total">
        <td class="left">Total directors</td>
        <td>57.25</td>
        <td>62.30</td>
      </tr>
      <tr>
        <td class="left">PolyU</td>
        <td>16.10</td>
        <td>15.50</td>
      </tr>
      <tr>
        <td class="left">Other management</td>
        <td>1.65</td>
        <td>1.38</td>
      </tr>
      <tr>
        <td class="left"><b>Public</b></td>
        <td><b>25.00</b></td>
        <td><b>20.83</b></td>
      </tr>
      <tr class="total">
        <td class="left">Total</td>
        <td>100.00</td>
        <td>100.00</td>
      </tr>
</table>

<p>The minimum public float under the listing rules is 25%, so that
means that the insiders would have to sell down part of their stake if the
options were exercised. And that is before they get going on the post-IPO Option
Scheme, which has not yet been used. </p>

<p>On top of this, the 3 executive directors are on service
contracts which promise them a bonus of 10% of the net profit (split equally) as
long as it exceeds $5m, plus base salaries totalling $2.28m per annum. </p>

<h3>The IPO</h3>

<p>The IPO was done as a placing, meaning that the sponsors get to
choose who gets the stock. The placing price was $0.238 per share (a lucky
number in Cantonese), and the allotment
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20011130/00000MC20011130214939Y.pdf">announcement</a>
claims it was over-subscribed by 59 times. </p>

<p>The Stock Exchange really should scrap GEM Rule 10.12(4)(a)
which requires a statement of the &quot;level of interest&quot; or subscription
multiple in placings, because the figure is meaningless since placees don't have
to put up cash for all the shares they &quot;express interest&quot; in - only
the ones they are allocated. Hence it is easy to arrange exaggerated
subscription multiples just by asking everyone to express interest in x-times
what they will be allocated. </p>

<p>Regardless, the announcement warns that the allocations in this
deal were highly concentrated with the top 5 placees getting 53.84%, the top 10
placees getting 74.88%, and the top 25 getting 90.36%. If that reflects their
level of interest, then it implies that each one of them on average applied for
more than twice the total issue size. </p>

<p>Incidentally, the company scored its first
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20011204/00000MC20011203220839U.pdf">breach</a>
of the listing rules 2 days before listing - off to an impressive start. </p>

<p>The stock took off immediately and hit a high of $0.73 on
10-Dec-01, closing today at $0.62, up <b>161%</b> on its placing price. That
values Eco-Tek at <b>$343m</b>. Not bad for a company with net assets of about 6
cents per share, facing a collapse in sales and no certainty of making the 73% gross
margins it is accustomed to if and when it wins future tenders.</p>
<p>If you own this stock, ask your investment adviser about getting
out. Don't get Eco-trapped.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14707">ECO-TEK HOLDINGS LIMITED</a></li>
				
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