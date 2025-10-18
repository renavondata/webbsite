
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

<script type="text/javascript">document.title="Pacific Roundabout";</script>

	<div class="summary">Richard Li's Pacific Century Group is reversing a property called Pacific Century Place, Beijing, into Hong Kong-listed Tricom, currently a subsidiary of China Strategic. Webb-site.com reveals a previous link between China Strategic and the property, once known as Nation Wealth Plaza.</div>

<h2 class="center">Pacific Roundabout<br>
<span class="headlinedate">5 May 1999</span></h2>
<p>On 4-May-99 Richard Li's Singapore-listed Pacific Century Regional
Developments (<strong>PCRD</strong>) announced that it was injecting its Pacific Century
Place, in Beijing, into Hong Kong-listed Tricom Holdings, in exchange for new shares and
convertible notes that will give PCRD a 68% stake in Tricom, to be renamed Pacific Century
Cyber-works (sounds kind of hi-tech doesn't it?).</p>

<p>Tricom is 74.9% owned by Star Telecom, which in turn is&nbsp; 62.2% owned
by China Strategic Holdings (<strong>CSH</strong>). There is a history to Pacific Century
Place, previously known as Nation Wealth Plaza, which involves, through a circuitous
route, none other than CSH itself. To get you in the mood, <a href="http://www.pacificcentury-grp.com/nation.htm" target="_blank">click here</a> for a
picture of the property on Pacific Century's web site.</p>

<p>In February 1997, PCRD announced that it had purchased a 100% interest in
Nation Wealth Plaza for US$113.7m in cash from a company called Woolworth Holdings Limited
(we don't know who owned that). However, a month earlier, on 11-Jan-97, Hong Kong-listed
South Sea Development Company announced that it had, through its 100% subsidiary Kresta
Developments, agreed to purchase Tower C of Nation Wealth Plaza for US$61.0m (including
all construction and fitting-out costs). The vendor was a Sino-foreign joint venture
company called Beijing Jing Wai House and Land Estate Development Co. Tower C was a
19-floor serviced apartment block with a floor area of 21,420 square meters. The floor
area of the entire project is 220,905 square metres. As we will see later, the South Sea
deal was never completed.</p>

<h3>Background to Nation Wealth Plaza</h3>

<p>According to a valuation report by Richard Ellis in South Sea's circular
of 3-Feb-97, Beijing Jing Wai was issued with a State-owned Land Use Right Certificate for
the property on 4-Jan-94. The report also discloses that the joint venture contract for
Beijing Jing Wai was approved by the Beijing Foreign Economic Trading Committee on
15-Nov-93, and that Beijing Jing Wai had three parties (A, B and C).</p>

<p>Parties A and C have only Chinese names. Party B, which had a 75% profit
share in the venture, was a company called Tai Yau International Investment Group, and was
responsible for the entire capital contribution of US$50m, as well as the design, project
management and marketing. Party A, with a 20% profit share, was granted the original land
use rights on 4-Dec-93 and was responsible for resettlement and demolition work, while
Party C was responsible for &quot;procuring all planning approvals, consents and
licenses&quot; in return for a 5% profit share. If the project made a loss, it would be
borne by Tai Yau. We don't know who owned Tai Yau - if you know,
<a href="../contact/default.asp">tell us</a>!</p>

<h3>The South Sea Deal</h3>

<p>On 19-Oct-96 South Sea announced that a wholly-owned subsidiary had agreed
to buy 507 car parks at Whampoa Garden, Hung Hom, Hong Kong from CSH for HK$384.8m
(US$49.3m). The car parks continued to be managed by Hutchison Whampoa group, the
developer of Whampoa Gardens. This was a cash-less transaction in which South Sea paid for
the car parks by issuing two convertible loan notes to CSH, with a total value of
HK$384.8m.</p>

<p>Note A was 60% of the consideration (HK$230.88m) while Note B was 40%
(HK$153.92m). Both were to mature 3 years after issue, bear interest at 7% p.a. (later
increased to 12% p.a.) and were convertible into new South Sea shares at HK$0.58 per
share.</p>

<p>It was agreed that South Sea's subsidiary would mortgage the car parks and
lend (through Kresta Developments) the resulting funds to a PRC property developer for the
development of a &quot;Grade A residential/commercial complex in Beijing&quot; and in
return South Sea (through Kresta) would have an option to convert the loan into property
interests in such development. It was also stated that CSH, so long as it held convertible
Note A, would receive 50% of any profits made by Kresta (including interest on the loan to
the developer and profits on the sale of any property interests acquired from the
developer).</p>

<p>On 11-Jan-97 South Sea announced that a company called Waugh Developments
had &quot;procured&quot; that Beijing Jing Wai sell Tower C of Nation Wealth Plaza to
Kresta. We don't know who owned Waugh or what (if anything) they were paid for this
procurement. Kresta had provided on 25-Nov-96 a loan facility of HK$230m to Beijing Jing
Wai (almost exactly the amount of Note A) and Jing Wai had drawn down HK$130m of this,
which was taken as part-payment for Tower C. The property was due to be completed by
31-Jan-98.</p>

<p>Given the inter-relation of the car park transaction and the funding for
Nation Wealth Plaza, which gave CSH a 50% profit share in the deal on Tower C, we wonder
why CSH didn't just deal directly with Beijing Jing Wai.</p>

<h3>China Strategic takes back the project</h3>

<p>In its 31-Mar-97 accounts, South Sea recorded that it had paid a total of
HK$186m deposit for the Beijing property. By 31-Mar-98, the amount paid for deposit,
installment and related expenses had risen to almost HK$199.7m. On 22-May-98, South Sea
(through Kresta) lodged a claim against the developer for refund of amounts paid plus
compensation totaling about HK$249m for alleged breach of agreement. 5 days later, South
Sea granted CSH an option to acquire Kresta for $199.4m, roughly the same amount as South
Sea had spent on the project. On 29-Jul-98, the developer filed a counter-claim against
Kresta claiming it should forfeit the deposit and compensation totalling $72m for alleged
breach of agreement. On 4-Aug-98, CSH exercised its option and bought Kresta from South
Sea for $199.4m, which was used in Partial Settlement of Note A.</p>

<p>CSH's interim results for the period to 30-Jun-98 reveal that in Sep-98
Richard Li's PCRD then settled the litigation by issuing promissory notes to CSH for
HK$199.4m, causing both sides to withdraw their legal actions. Beijing Jing Wei was by now
a subsidiary of PCRD. <strong>The announcement on 3-May of the deal between Tricom (which
is a subsidiary of CSH) and PCRD makes no mention of this transaction or whether the debt
owed by PCRD to CSH remains outstanding.</strong></p>

<p>There's a nice twist in this tale. Remember the 507 Whampoa Garden car
park spaces that CSH provided to South Sea, which allowed it to participate in the Beijing
project, which ended up back with PCRD? Well those car parks were part of 604 spaces
purchased from, you guessed it, Hutchison Whampoa, part of the Li empire. On 8-Dec-95, CSH
agreed to pay HK$386m for 604 car park spaces, satisfied by the issue of shares in CSH
valued at HK$171.4m, a convertible loan note worth $170.5m (redeemed in Jun-98), and
deferred payment of $44.1m due on 31-Jan-97. That sale would have provided a nice boost to
Hutchison's 1995 year-end results. What goes around, comes around.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2911">CSC Holdings Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
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