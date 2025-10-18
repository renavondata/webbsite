
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

<script type="text/javascript">document.title="Stir-Fried Lobster";</script>

	<div class="summary">We issue a bubble warning on Hon Po Group (Lobster King) (0228), and dig into the background to its apparent transformation into the next big thing, coal mining in Inner Mongolia.</div>

<h2 class="center">Stir-Fried Lobster<br>
<span class="headlinedate">19 April 2006</span></h2>
<p>We love a good lobster, but restaurant group Hon Po Group (Lobster King) Ltd 
(<b>Hon Po</b>, 0228) is one of those dishes that would be better sent back to 
the kitchen. We think it is being stir-fried and heavily overcooked.</p>
<h3>History</h3>
<p>Hon Po's IPO was co-sponsored by the now-defunct
<a target="_blank" href="../dbpub/articles.asp?p=15232">International Capital Network Ltd</a>, which 
itself was a GEM disaster. The sponsor was Anglo Chinese Corporate Finance Ltd, 
the lead manager was Kingston Securities Ltd and a co-manager was Ever-Long 
Securities Ltd, itself owned by <a target="_blank" href="../dbpub/articles.asp?p=4978">Styland 
Holdings Ltd</a> (0211). We wrote a series of stories on the Styland network in 2002. Styland's listing has been in the
<a target="_blank" href="http://www.hkex.com.hk/listing/listrpt/psuspenrep_mb.doc">
deep-freeze</a> since 21-Apr-04.</p>
<p>The Hon Po prospectus ran with an audit date of 30-Jun-01, 7 months before it 
was published, and the 3.5 year track record showed a steadily declining 
turnover and net profit - hardly inspiring.</p>
<h3>IPO Expenses - who paid?</h3>
<p>30% of the 50m shares<sup><a href="#note1">1</a></sup> 
sold at HK$1 were existing shares sold by the controlling shareholder, while Hon 
Po raised $35m gross. Page 97 of the prospectus states that the estimated 
expenses of $16m would be split 30:70 between the vendor and Hon Po (in 
proportion to the old and new shares), leaving the company with $23.8m net, but 
the 2001 accounts show that the company shouldered the entire costs, and only 
received $19.64m net of expenses, leaving them $4.16m short. We hereby ask 
the Stock Exchange to investigate this.</p>
<h3>Plunged into loss</h3>
<p>The stock listed on 18-Feb-02 and the company then plunged into loss and had 
a series of accounting delays. It wasn't until 6-Nov-03 that it finally reported 
an audited loss of $77.1m for 2002. Auditors Ernst &amp; Young qualified their audit 
report due to a lack of &quot;sufficient documentation and explanations&quot; relating to 
transactions with the controlling shareholder.</p>
<p>The late reporting eventually earned Hon Po and its executive directors the 
usual
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050113/LTN20050113091.pdf">
slap on the wrist</a> from the Stock Exchange, although in all that huff and 
puff, Hon Po's payment of the vendor's IPO expenses went completely unnoticed.</p>
<p>On 19-Sep-03, ICEA tried to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030930/LTN20030930021.pdf">
arrange</a> a takeover of Hon Po at $0.25 per share by a private company 50% 
owned by Mr Cheung Kam Foo and 50% by Mr Lam Lui Ming. Mr Cheung
<a target="_blank" href="http://www.vandagroup.com/web/doc/press/archives/eng/2001/130301.htm">
was</a> an Executive Director of Vanda Systems &amp; Communications Holdings Ltd 
until 13-Mar-01, and then went on to be CEO of a &quot;renowned beverages group in 
China&quot; so investors may have expected a back-door listing was in the offing. 
However, the deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031201/LTN20031201101.pdf">
scrapped</a> on 1-Dec-03. Two weeks later, Ernst &amp; Young
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031219/LTN20031219042.pdf">
quit</a> as auditors.</p>
<h3>Fund raising</h3>
<p>The losses continued, with Hon Po having negative net assets of $21.6m on 
30-Jun-04. Other than a gradual closure of restaurants and sale of related 
assets, not much happened until 20-Jan-05, when Hon Po
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050121/LTN20050121025.pdf">
announced</a> a top-up placing of 25.2m shares (enlarging the issued shares by 
20%) through Yicko Securities Ltd (<b>Yicko</b>) at $0.312 per share, a 20% 
discount to market, raising a net $7.6m for working capital. Then a month later, 
on 21-Feb-05, Hon Po
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050222/LTN20050222019.PDF">
announced</a> a placing through Yicko of $40m convertible notes with a deep-discount 
conversion price of $0.10 per share, 70% below market. The proceeds of $39.4m 
were said to be for general working capital.</p>
<p>But they weren't finished. On 9-May-05, with the first note issue not yet 
completed, they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050510/LTN20050510025.PDF">
announced</a> another placing through Yicko of HK$100m of convertible notes, this time 
convertible at $0.05, a 95% discount to market. The proceeds of $97.5m were 
supposedly for use in future investments in food and beverage related industries 
and/or property investments, although they had nothing in mind.</p>
<p>The stock exchange &quot;requested&quot; that the company get an independent financial 
adviser to opine on whether the note issues were fair and reasonable, and put it 
to a vote of independent shareholders. So the company hired Kingston Corporate 
Finance Ltd (yes, Kingston, as in the Lead Manager of the IPO), who
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050614/LTN20050614070.PDF">
said</a> the note issues were indeed fair and reasonable, and both issues were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050630/LTN20050630177.pdf">
approved</a> by shareholders on 30-Jun-05. Apparently the Stock Exchange 
regarded Kingston as independent, but we don't.</p>
<p>Making the issues in reverse order, on 25-Jul-05, half of the second 
convertible notes was issued and immediately
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050726/LTN20050726038.PDF">
converted</a> into 1,000m shares, or 86.9% of the enlarged capital. Then on 
11-Aug-05, the first convertible notes were issued and immediately
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050811/LTN20050811125.PDF">
converted</a> into 400m shares. Finally, on 22-Aug-05, the other half of the 
second notes was issued and immediately
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050822/LTN20050822144.PDF">
converted</a> into 1,000m shares. At this point, Hon Po said it was engaged in 
&quot;preliminary discussion&quot; regarding a possible acquisition of an investment in 
PRC natural resources. Obviously this was neither food and beverage nor property 
investment, so we are asked to believe that they hadn't been planning this when 
they asked shareholders to approve the note issues 2 months earlier.</p>
<p>After the last note conversion on 22-Aug-05, the company had 2,551.2m shares in issue with a market value (at $1.20) of 
$3,061m, even though it only had about $103m of net assets, based on the 
30-Jun-05 figures and adjusted for the note issues. So it was already in a 
bubble, at about 30x NAV, and the 2,400m shares issued to note holders 
represented 94.07% of the company. A week later, on 29-Aug-05, the stock was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050829/LTN20050829143.HTM">
suspended</a>, and there it stayed for 7 months, until....</p>
<h3>The Deal</h3>
<p>On 7-Apr-06, Hon Po finally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060410/LTN20060410067.pdf">
announced</a> that on 28-Dec-05 it had conditionally agreed to acquire a 60% 
stake in Newsummit Investments Ltd (<b>Newsummit</b>), a BVI shell which owns a 
51% stake in China West Gas and Oil Ltd (<b>HKCo</b>), incorporated in HK, which 
in turn holds (through subsidiaries, <b>PRC1 </b>and <b>PRC2</b>) two agreements 
to exploit a purported Peat Moss Mine and Coal Mine in Inner Mongolia. The price 
of the acquisition is a deposit of <b>HK$81.6m</b> in cash plus the issue of 
convertible notes with a face value of $5bn, convertible at $5 per share.</p>
<p>Hon Po and the Vendor also agreed to put cash into Newsummit <i>pro rata</i> 
to their holdings, with Hon Po putting in <b>$18.4m</b>. It won't have escaped 
your notice that the entire <b>$100m</b> raised in the second note issue has 
been spent on these deposits.</p>
<div class="regbox">
	<b>Regulatory note</b><br>
	Although the deal is subject to shareholders' approval and numerous other 
	conditions, both cash &quot;refundable deposits&quot; totalling $100m have already 
	been paid, and all that Hon Po has in return is security over the shares of 
	Newsummit, so if the deal is not approved, and Hon Po wants its cash back, 
	then it may end up with the shares it didn't want, effectively completing 
	the acquisition. In our view, the Stock Exchange should treat such deposits 
	in themselves as transactions, which cannot be made without the relevant 
	shareholders' approval, but that's not how they see it.</div>
<p>Hon Po also gets a 2-year option to acquire the other 40% of Newsummit for 
HK$45m in cash and the issue of a convertible note with a face value of $3,955m, 
convertible at $8 per share.</p>
<p>The vendor of Newsummit is an unnamed individual independent third party, and 
as Newsummit is incorporated in the BVI, we have no way of finding out who owns it.</p>
<div class="regbox">
	<b>Regulatory note</b><br>
	The Stock Exchange should require the disclosure of counterparties to 
	acquisitions and disposals and (in the case of companies) their beneficial 
	owners, but it doesn't.</div>
<p>The 
other 49% of HKCo is owned by a Mr Tsui Man Sang (<b>Mr Tsui</b>) (48.99%) and 
his wife (0.01%). We know nothing about him.</p>
<h3>Dig, dig</h3>
<p>We did a little mining of our own, by digging up the records of HKCo from the 
companies registry. We discovered that until 29-Aug-05, the capital was just 
HK$10,000, entirely owned by Mr Tsui (99%) and his wife (1%). But on 29-Aug-05 (the day dealings in Hon Po were suspended), 
the capital of HKCo was increased by <b>HK$40m</b> from $0.01m to $40.01m, of 
which $20.4051m was subscribed by Newsummit, giving it 51%, and $19.5949m was 
subscribed by Mr Tsui, giving him 49%. By coincidence, this 
$40m is equal to what Hon Po raised a few days earlier from the first 
convertible note issue, but the subscription by Newsummit and Mr Tsui came 4 
months before Hon Po's deal to buy a stake in Newsummit, so on the face of it, 
HKCo had no 
connection to Hon Po at that stage.</p>
<p>But wait, there is a connection. The filings show that on the same day as 
Newsummit bought into HKCo, Mr Chan Shi Yung (<b>Mr Chan</b>) was appointed as a director of 
HKCo. But the strange thing is, Mr Chan was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050624/LTN20050624084.PDF">
appointed</a> as CEO of Hon Po on 5-Jul-05, so what was he doing on the board of 
HKCo 4 months before Hon Po signed the deal to buy into the project?</p>
<p>At 30-Sep-05, the net assets of Newsummit were just HK$7,451,254, and it had 
a loss since incorporation on 30-Mar-05 of $325,751, which implies that it has 
received equity capital of just US$1m (HK$7.77m). So where did it find the money 
to invest HK$20.40m in HKCo? It must have borrowed at least some of it, but from whom?</p>
<p>Another director of HKCo, also appointed on 29-Aug-05, is Mr To Yuet Sing, 
who in the filings gives the same address as Newsummit. 
The only thing we know about him is that he once
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030310/GLN20030310018.pdf">
filed a petition</a> for the winding up of <a target="_blank" href="../dbpub/articles.asp?p=15091">
Codebank Ltd</a>, a GEM company which holds the record for the shortest trading 
on the GEM or main board (144 calendar days) before going bust. According to 
Codebank, Mr To's petition claimed damages for his investment loss on 180,000 
shares, but he later
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030715/GLN20030715010.pdf">
withdrew</a> the petition.</p>
<h3>The Mine</h3>
<p>The Coal Mine, which has an area of 40.08 sq. km, has a purported reserve of 
a massive 800m tonnes, equivalent to about 16% of global output in 2003. Think 
about it, that is almost 20 tonnes per square metre of surface area. One of the 
heaviest forms of coal, anthracite, is about 1.5 tonnes per cubic metre, so that 
means the coal depth must average at least 13 metres, the height of a 4-storey 
house. Imagine a block of coal half the area of Hong Kong Island and at least 40 
feet deep. Very impressive, if it is true.</p>
<p>The deal is subject to numerous conditions, including the obtaining of a 
valuation of HKCo of not less than a whopping $40bn, valuing Hon Po's effective 30.6% stake 
at $12.24bn.</p>
<h3>Stay clear</h3>
<p>In our view, this is yet another bubble in a frothy market. Ask yourself 
this:</p>
<ul>
	<li>If HKCo is worth $40bn without having produced a single lump of coal, 
	then why was Mr Tsui, as recently as 29-Aug-05, willing to let Newsummit, 
	whose owner is undisclosed, subscribe 51% of it for $20.04m, or 1/2000 the 
	price?</li>
	<li>Why did Mr Chan, CEO of Hon Po, join the board of HKCo on the day of 
	Newsummit's subscription, when Hon Po, was still only in &quot;discussions&quot; on 
	the possible acquisition?</li>
	<li>Who were the subscribers of all those convertible notes last year, which 
	were immediately converted into 2,400m shares, or 94.07% of the current 
	equity, and are any of them manipulating the stock?</li>
</ul>
<p>Yesterday's closing market price of $3.325 values the existing shares of Hon 
Po at HK$8.48bn, and all that Hon 
Po has at this stage is a conditional agreement and whatever remains of its 
restaurant business, having paid away virtually all its cash as a deposit for this deal. 
If the deal completes, then the bonds will, upon conversion, create another 1bn 
shares, expanding the market cap to $11.81bn, and that's for just the 30.6% 
stake in a project which has yet to be funded.</p>
<p>The face value and conversion price on the bonds to be issued, of $5bn and $5, might make you think 
that is where the shares are heading, but the reality is that after paying out 
the cash, Hon Po has no material net assets of its own, so redemption of those 
bonds is currently out of 
the question, and it could have put any price it liked on the bonds - it could 
just as easily have been $1bn convertible at $1 or $10bn convertible at $10. 
Either way, you get the same number of shares. 
Don't be misled by the headline figures - this is a project which has only had 
HK$40m of equity funding into HKCo. The only difference from a larger face value 
is that, until conversion, the notes represent a larger claim on any future 
assets of Hon Po.</p>
<p><i>Notes</i></p>
<p><a id="note1"></a>1. All prices and shares are adjusted for a 5:1 
consolidation effective 12-May-05</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15384">China Energy Development Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15232">INTERNATIONAL CAPITAL NETWORK HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12115">KINGSTON CORPORATE FINANCE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15941">YICKO SECURITIES LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=27300">Chan, Shi Yung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7223">Cheung, Kam Foo</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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