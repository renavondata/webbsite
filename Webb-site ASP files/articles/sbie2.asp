
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

<script type="text/javascript">document.title="SBI, E2 and Xinhua Finance";</script>

	<div class="summary">We reveal how a mini-investment bank was assembled and injected into two listed companies at great expense to them, then gradually sold off, and how at least some of the SFC-regulated firms came under the ownership of someone who now faces criminal charges in the USA in relation to newsletter stock promotion schemes for companies which include the first Chinese company to list in Japan.</div>

<h2 class="center">SBI, E2 and Xinhua Finance<br>
<span class="headlinedate">18 May 2010</span></h2>
<p>We're going to tell you how a mini-investment bank was assembled and injected 
into not one but two listed companies at great expense, then gradually sold off, and how at least some of the SFC-regulated firms 
came under the ownership of someone who now faces criminal charges in the 
USA in relation to newsletter 
stock promotion schemes for companies which include the first Chinese company to list 
in Japan.</p>
<p>The company names in this article are going to be a bit confusing, partly because of 
the myriad of similarly-named companies, and partly because of 
repeated changes of company name and ownership over the last decade, so we will 
try to use names and definitions which are relevant to the story. You can find 
current names in our database by clicking on the names we use. </p>
<p>So pour yourself a big mug of coffee, and let us begin.</p>
<h3>E2-Capital</h3>
<p>On 26-Feb-2000, <a href="../dbpub/orgdata.asp?p=4848">E2-Capital (Holdings) Ltd</a> (<strong>E2</strong>, 
0378, then Goodwill Investment (Holdings) Ltd, now CIAM Group Ltd)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000228/LTN20000228074.HTM" target="_blank">
agreed</a> to buy <a href="../dbpub/orgdata.asp?p=49370">e2-Capital Ltd</a> (<strong>E2-Capital</strong>, 
HK) from e2-Capital Inc (<strong>ECI</strong>, BVI) for <strong>HK$348m</strong> in shares, 
representing 25.1% of the enlarged company. Both ECI and 
E2-Capital had been incorporated in Sep-1999, just 5 months earlier, and 
E2-Capital became an SFC-registered investment adviser and securities dealer 
just 15 days before the deal. E2-Capital had net assets of just $3.748m at 
31-Dec-1999. The co-founders of E2-Capital,
<a href="../dbpub/positions.asp?p=10232">Wong Sin Just</a> (<strong>Mr Wong</strong>) 
and <a href="../dbpub/positions.asp?p=10387">Jenny Tam Yuk Ching</a>, were 
described as the &quot;controlling shareholders&quot; of ECI. The breathtaking price 
on this start-up was based on an even higher valuation of HK$490m 
as at 26-Feb-2000 by Andrew W Slevin on behalf of
<a href="../dbpub/articles.asp?p=5587">Knight Frank Petty Ltd</a> (then 
Chesterton Petty Ltd). <a href="../codocs/0378_000325c.pdf" target="_blank">Here's the 
circular</a>.</p>
<h3>Dato' Dr. Wong</h3>
<p>We pause to note that Mr Wong rather enjoys titles. Mr Wong was awarded a 
Datukship by the Sultan of Pahang state, Malaysia in 2004, and in June 2008 he 
was awarded an honorary doctorate from &quot;York University, Alabama, United 
States&quot;, whereupon he started titling himself &quot;Dato' Dr.&quot; That doctorate is 
mentioned in the 2008 and 2009
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091029/LTN20091029415.pdf" target="_blank">
annual report</a> of <a href="../dbpub/orgdata.asp?p=13561">China Zenith 
Chemical Group Ltd</a> (0362), where Mr Wong is an INED. Just one thing you need 
to know though - <a href="http://www.yorkuniversity.us/" target="_blank">York 
University, Alabama</a> (not to be confused with the
<a href="http://www.yorku.ca" target="_blank">legitimate one</a> in Canada) is 
an unaccredited entity which has hooked up with the
<a href="http://www.worldandchinese.org/" target="_blank">United World Chinese 
Association</a> and awards the degrees along with the &quot;<a href="http://www.wocf.com.hk/" target="_blank">World 
Outstanding Chinese Award</a>&quot;, which was bestowed upon Mr Wong in 2008. There 
are literally dozens of HK company chairmen or directors who have &quot;received&quot; 
this award, along with honorary doctorates from several different &quot;universities&quot; 
over the years, some of which actually had accreditation, but none you would 
have heard of. The internet domain of &quot;yorkuniversity.us&quot; is registered to &quot;Akiva 
Fradkin&quot; of &quot;York University&quot; at &quot;257 Saint Anthony Street, Mobile, Alabama&quot; 
which is a
<a href="http://www.friedmanandassociatespc.com/our-location.html" target="_blank">
lawyer's office</a>. A quick search locates Akiva Fradkin, Ph.D, founder of the
<a href="http://www.2phd.co.il" target="_blank">Phd Institute</a>.</p>
<p>Anyway, we'll save the &quot;World Outstanding Cheesiness&quot; dissection for another 
article. That will be fun.</p>
<h3>Winbox</h3>
<p>At the same time as buying E2-Capital, E2 granted a 1-year option to Goodwill International 
(Holdings) Ltd, then the controlling shareholder of E2, to buy up to its 88% 
stake in Boxmore Ltd (BVI) for $88m in cash (or pro rata). Boxmore owned only 
Winbox (BVI) Ltd, the consumer goods packaging business.
<a href="../dbpub/orgdata.asp?p=2894">Yue Xiu Enterprise (Holdings) Ltd</a> 
owned the other 12%. On 23-May-2001, this option was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010524/LTN20010524037.doc" target="_blank">
exercised</a> to the extent of 50%, leaving E2 with 38%. Winbox was relisted in 
2006 as <a href="../dbpub/orgdata.asp?p=34306">Winbox International (Holdings) 
Ltd</a> (0474), and E2
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060511/LTN20060511048.pdf" target="_blank">
distributed</a> its stake to its shareholders.</p>
<h3>Goodwill Financial Services becomes SEC</h3>
<p>Before E2 bought E2-Capital, E2 already owned 40% of then-named Goodwill 
Financial Services (Holdings) Ltd (<strong>SEC</strong>, Cayman), a joint 
venture with <a href="../dbpub/orgdata.asp?p=417">Sun Hung Kai Properties Ltd</a> 
(30%) and then-named <a href="../dbpub/orgdata.asp?p=10264">Jardine Fleming 
Holdings Ltd</a> (30%). Simultaneously with the acquisition of E2-Capital, E2 
bought the remaining 60% of SEC for $57m, half in cash, half in shares. SEC 
owned:</p>
<ul>
	<li>a stockbroker, now <a href="../dbpub/orgdata.asp?p=41149">SBI 
	e2-Capital Financial Services Ltd</a> (<strong>SECFS</strong>);</li>
	<li>another stock broker and margin lender, now
	<a href="../dbpub/orgdata.asp?p=41153">SBI e2-Capital Securities Ltd</a> (<strong>SECS</strong>);</li>
	<li>a futures broker, now <a href="../dbpub/orgdata.asp?p=41150">SBI 
	E2-Capital Commodities Ltd</a> (<strong>SECC</strong>); and</li>
	<li>a corporate finance adviser, now <a href="../dbpub/orgdata.asp?p=14713">
	SBI E2-Capital (HK) Ltd</a> (<strong>SECHK</strong>).</li>
</ul>
<p>After E2 completed the acquisition of E2-Capital, on 20-Apr-2000, Mr Wong 
joined the board as CEO and later co-Chairman, alongside Mr
<a href="../dbpub/positions.asp?p=10386">Fung Ka Pun</a> (<strong>Mr Fung</strong>), 
the previous controlling shareholder. All the other directors resigned and were 
replaced with Mr Wong's new team, with Ms Tam as his alternate director. SEC was 
renamed e2-Capital Securities (Holdings) Ltd and later SBI E2-Capital Ltd.</p>
<p>Incidentally, in one of those all-too-common cross-directorships, Mr Wong is an INED of
<a href="../dbpub/orgdata.asp?p=4930">CSI Properties Ltd</a> since 23-Apr-2001, where
<a href="../dbpub/positions.asp?p=2923">Mico Chung Cho Yee</a> (<strong>Mr Chung</strong>) 
has been Chairman since 29-Jun-2005. Meanwhile, Mr Chung was an INED of E2 from 
9-Mar-2001 to 31-May-2008, resigning the same day as Mr Wong stepped down as 
Chairman there.</p>
<h3>Creation of 1st Singapore arm</h3>
<p>On 1-Apr-2000, Westcomb Capital Pte Ltd (<strong>Westcomb Capital</strong>, 
then e2-Capital Pte Ltd) was incorporated in Singapore with S$2 of capital. On 
20-Apr-2000, E2 injected S$2.5m for 560 shares, while Westcomb Profits Ltd (<strong>WP</strong>) 
and Mr Cheong Mun Hong (<strong>Mr Cheong</strong>) acquired or subscribed 67 
and 7 shares for S$1 each. Both WP and Mr Cheong were management shareholders. 
So at this point, Westcomb Capital was 88.33% owned by E2. On 13-Oct-2000, there 
was a dilution of E2's stake by way of a non-proportionate bonus issue of shares 
by Westcomb Capital. As a result, Westcomb Capital was 56% owned by E2, 40% by 
WP and 4% by Mr Cheong.</p>
<h3>Sale of 51% of SEC to SIIS</h3>
<p>On 31-Jan-2001, <a href="../dbpub/orgdata.asp?p=4789">Softbank Investment 
International (Strategic) Ltd</a> (<strong>SIIS</strong>, 0648, now China Renji 
Medical Group Ltd)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010201/LTN20010201022.doc" target="_blank">
agreed</a> to buy 51% of SEC from E2 for <strong>HK$318.5m</strong>, of which $130m was in cash 
and the rest in shares. SEC was then renamed
<a href="../dbpub/orgdata.asp?p=41141">SBI E2-Capital Ltd</a>. The remaining 49% 
was retained by E2. As part of the deal, E2 transferred its 56% stake in 
Westcomb Capital to SEC. The deal completed on 2-Apr-2001.
<a href="../codocs/0648_010314c.pdf">Here's the SIIS circular</a>, and
<a href="../codocs/0378_010221c.pdf">here's the E2 circular</a>. E2 booked a 
profit of $243.7m on the sale. 51% of the net assets of SEC at 31-Dec-2000 were 
$72.1m. On 3-Apr-2001, the day after completion, Mr Wong was appointed CEO of 
SIIS.</p>
<p>You might be surprised to learn that this deal did not include E2-Capital, 
which E2 had paid so much for. E2-Capital was renamed OpenIBN (HK) Ltd, then 
OpenOffering Capital Ltd, and finally NAPA Global Ltd. It gave up all its SFC 
licenses on 4-May-2004, and by the end of the year, it was developing &quot;digital 
consumer and electronics products&quot;.</p>
<h3>Westcomb expands</h3>
<p>On 16-Nov-2001, Westcomb Capital was injected by its shareholders into a new 
holding company, SBI E2-Capital Holdings Pte Ltd, which was later renamed
<a href="../dbpub/orgdata.asp?p=22942">Westcomb Financial Group Ltd</a> (<strong>Westcomb</strong>). 
There was no change in shareholdings at this point. </p>
<p>On 11-Sep-2002, Westcomb and SEC
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021003/LTN20021003050.pdf" target="_blank">
agreed</a> to establish <a href="../dbpub/orgdata.asp?p=58056">SBI E2-Capital 
Securities Pte Ltd</a> (<strong>Westcomb Securities</strong>) for securities 
brokerage and trading, with a S$5m capital injection. As a result Westcomb 
Securities was 51% owned by Westcomb and 49% owned by SEC. At the same time, 
Westcomb Securities agreed to buy 10% of SECFS for S$0.5m. All this was supposed 
to have completed by 31-Oct-2002 or such later date as the parties may agree. 
That date came and went, and it wasn't until 16-May-2003 that SIIS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030519/LTN20030519010.pdf" target="_blank">
announced</a> that completion of the subscription had been delayed (by a 
supplemental agreement on 30-Oct-2002) and eventually occurred on 9-Apr-2003, 
and that the purchase of the stake in SECFS was terminated on 12-May-2003. As 
stated in the announcement, the Stock Exchange of HK considered that this late 
disclosure may be a breach of the Listing Agreement, but did not take any public 
action.</p>
<p>On 23-Dec-2002, SEC's 56% stake in Westcomb was distributed to its 
shareholders, 27.44% to E2 and 28.56% to SIIS. </p>
<p>On 3-Mar-2003, WP and Mr Fung agreed to buy 7% and 3% of Westcomb 
respectively from SIIS for a total of S$2m (HK$8.96m), reducing its stake to 
18.56% &quot;as a reflection of their confidence in the Singapore operations&quot;. Mr 
Wong also bought 3% of Westcomb from Mr Cheong. Curiously, the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030307/LTN20030307009.pdf" target="_blank">
announcement</a> says that Westcomb Securities was incorporated on 22-Jan-2003, 
whereas the earlier
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020912/LTN20020912130.pdf" target="_blank">
announcement</a> and circular regarding the establishment of Westcomb Securities 
say it was already incorporated by 11-Sep-2002, when it entered 
into the subscription agreement with Westcomb and SEC. We now suspect that 
statement was false. Since the company did not exist until 22-Jan-2003, how 
could it have signed the subscription agreement on 11-Sep-2002 or the 
supplemental agreement on 31-Oct-2002?</p>
<h3>Sale of 2% of SEC</h3>
<p>On 22-Oct-2003, SIIS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20031023/LTN20031023041.pdf" target="_blank">
agreed</a> to sell 2% of SEC to E2 for HK$1.405m. However, on 26-Nov-2003, that 
deal was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20031126/LTN20031126078.pdf" target="_blank">
terminated</a>, for the somewhat flimsy reason that E2 would find complying with 
the Listing Rules on the acquisition &quot;burdensome&quot;. You would think, having a 49% 
stake in a corporate finance business, that they would have understood the 
Listing Rule requirements before agreeing to the deal in the first place, 
especially since the two listed companies had the same co-Chairman, Mr Wong, an 
experienced investment banker who also owned 26.04% of E2. Instead of selling to 
E2, on the day of the termination, SIIS agreed to sell the same 2% to Mr Wong, 
for the same price. The disposal was completed on 17-Dec-2003, booking a loss of 
$438k.</p>
<p>The reason given by SIIS for selling 2% was &quot;to focus its business&quot; on the 
management of venture capital and private equity and reduce its exposure to &quot;the 
financial services business&quot;. This holds little water, given that they were only 
reducing their exposure by 4%, and given that asset management is a financial 
service.</p>
<p>As a result, SEC was owned 49% by SIIS, 49% by E2 and 2% by Mr Wong. Rather 
conveniently, SEC was no longer a subsidiary of either company, so transactions by SEC were not subject to the Listing Rules.</p>
<h3>SEC separates from Westcomb</h3>
<p>On 21-Jan-2004, Westcomb was listed on SGX-ST. The 
<a href="http://www.westcombfinancial.com/AR/prospectus_sbie2.pdf" target="_blank">prospectus</a> states that Westcomb Securities was incorporated on 22-Jan-2003 (see above).</p>
<p>In Aug-2004, Westcomb agreed to acquire the remaining 49% of Westcomb 
Securities from SEC for S$4.9m. This was completed on 4-Nov-2004, as mentioned 
in Westcomb's 2004 annual report. Also in Aug-2004, E2 sold half its holding in 
Westcomb, retaining 10.92%.</p>
<p>E2 and SEC then set about re-entering the Singapore market. In Sep-2004,
<a href="../dbpub/orgdata.asp?p=41140">
SBI E2-Capital Asia Holdings Pte Ltd</a> (<strong>SECAH</strong>) was 
incorporated in Singapore. The next month, a 100% subsidiary, SBI E2-Capital 
Asia Securities Pte Ltd (<strong>SECASS</strong>) was incorporated. In a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20050624/LTN20050624055.pdf" target="_blank">
circular</a> dated 24-Jun-2005, E2 explained that it would subscribe S$2m for 
40% of SECAH, while SEC would subscribe S$3m for 60% of SECAH. On 16-Aug-2005, 
SECASS was granted a license to deal in securities and provide corporate finance 
advice, and on 18-Aug-2005 it was admitted as a clearing member of SGX.</p>
<h3>Employee shares in HK/China business of SEC</h3>
<p>
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20040406/00648/EWF113.pdf" target="_blank">
Note 14</a> of the SIIS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20040406/LTN20040406113.htm" target="_blank">
2003 annual report</a> discloses that during the year, SEC incorporated SBI 
E2-Capital China Group Limited (<strong>SECCG</strong>, BVI) which in turn owned 
a company later renamed <a href="../dbpub/orgdata.asp?p=41143">SBI E2-Capital Asia Securities 
Ltd</a> (<strong>SECAS</strong>, HK), which in turn owned (at least) SECS, SECC, 
SECFS, SECHK and SBI E2-Capital Research Ltd, comprising the HK/China business 
of SEC. Then an equity compensation scheme was adopted whereby a 30% interest in 
SECAS (via SECCG) was set aside for eligible employees, vesting in tranches.</p>
<p>The vehicle established to hold the 30% stake was SBI E2-Capital China 
Employees Ltd (<strong>SECE</strong>, BVI), which was first mentioned in an
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20041025/ltn20041025027.pdf" target="_blank">
announcement</a> on 21-Oct-2004 and was 16.7% owned by Mr Wong and the rest 
owned by other employees of the group.</p>
<p>Later, in 2005 or 2006, the interest of E2 and SIIS in SECHK (one of the 
subsidiaries of SEC and SECAS) was further reduced. The SIIS 2006
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20061003/00648/EWF101.pdf" target="_blank">
interim report</a> discloses that Mr Wong owned 50% of a company called Goodwill 
SBI Limited, which in turn owned 5.1m shares (51%) of SECHK, leaving SIIS with a 
24.01% indirect interest (being 49% of 49%).</p>
<p>On 15-Jan-2007, SEC gave 2.24%, 0.53% and 0.13% of SBI E2-Capital Asia 
Securities Group Ltd (<strong>SECASG</strong>) to Mr Wong, Mr Ong Tiang Lock and 
Mr Billy Cheung Chung Wai as bonuses, reducing its stake to 97.1%.</p>
<h3>Sale of HK/China arm of SEC to Mr Singhal</h3>
<p>On 13-Jun-2007, SIIS
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2007/0612/ltn20070612192.pdf" target="_blank">announced</a> that on 12-Jun-2007, an unnamed jointly-controlled entity (which 
was SECASG) had sold 
100% of SECAS for HK$76.76m to an unnamed 
independent third party. The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070927/LTN20070927082.pdf" target="_blank">
interim report</a> for the half-year to 30-Jun-2007 disclosed that the 
transaction completed on 12-Sep-2007.</p>
<p>The E2 2007
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070925/LTN20070925606.pdf" target="_blank">
interim report</a> names the buyer of SECAS as
<a href="../dbpub/orgdata.asp?p=41144">Clear Smart Enterprises Ltd</a> (<strong>CSE</strong>, 
BVI), without saying who owned that. We can tell you that on 13-Sep-07, the day 
after completion, CSE was owned by <a href="../dbpub/positions.asp?p=41146">Shelly Sean Singhal</a> (<strong>Mr Singhal</strong>). 
We know this because he
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=20366&amp;lang=EN&amp;dia=Y" target="_blank">
disclosed</a> an interest in another listed company via CSE that day. CSE also 
owned <a href="../dbpub/orgdata.asp?p=41145">SBI E2-Capital Management Ltd</a> (<strong>SECM</strong>, 
BVI), while SECAS owned the similarly-named
<a href="../dbpub/orgdata.asp?p=41142">SBI E2-Capital Asset Management Ltd</a> (<strong>SECAM</strong>, 
HK). At least until 26-Sep-2008, Mr Singhal was still the owner of CSE, as his 
latest
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=27046&amp;lang=EN&amp;dia=Y" target="_blank">
filing</a> shows.</p>
<p>Mr Singhal was an SFC-licensed Responsible Officer of SECAM from 17-Oct-2007 
to 4-Jun-2008. He was also a licensed Representative of SECC from 24-Aug-2005 to 
4-Jun-2008, when he became a Representative of SECS until 15-Apr-2009. All of 
these were subsidiaries of SECAS.</p>
<p>Note 46(vii) of the E2 2007
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080331/LTN20080331385.pdf" target="_blank">
annual accounts</a> shows that SEC pledged a bank deposit of HK$78m to secure  
banking facilities granted to an unnamed &quot;independent third party&quot;. 
That's a large guarantee for a business of SEC's size, and it is 
remarkably close to the amount received for the sale of SECAS, so we remark on 
it - could Mr Singhal or CSE have been the borrower of the bank facility? Mr 
Wong and Mr <a href="../dbpub/positions.asp?p=9900">Lawrence Yu Kam Kee</a> (<strong>Lawrence Yu</strong>) lent HK$5m and 
$10.8m respectively to SEC &quot;to finance&quot; the guarantees provided by SEC in 
respect of those facilities - although it is unclear what &quot;to finance&quot; means. 
Lawrence Yu was the previous controlling shareholder of SIIS.</p>
<h3>Sale of Singapore arm of SEC</h3>
<p>On 4-Feb-2008, 
E2 and SECASG (97.1% owned by SEC)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080313/LTN20080313270.pdf" target="_blank">
agreed</a> to sell SECAH, the Singapore business, to Glory High Holdings Ltd (<strong>Glory High</strong>, 
BVI) for a total of HK$105m, approximately its net asset value. The transaction 
was completed on 31-Mar-2008. Glory High was 50% owned by
<a href="../dbpub/orgdata.asp?p=23992">Goodwill International (Holdings) Ltd</a> 
(<strong>Goodwill</strong>, HK) and 50% owned by ECI, of which 
Mr Wong was the sole director, and which (by now) was owned by his family trust. Goodwill 
is a private company which in 2006 had over 20 shareholders, the largest of 
which was Mr Fung. He currently owns about 25.44% of it.</p>
<h3>Sale of SEC</h3>
<p>Now, having sold the Singapore arm and HK/China arm, that just leaves SEC 
itself. Very quietly, without 
announcement by either of the two listed companies, it was sold, at very 
different prices:</p>
<ul>
	<li>As first disclosed in note 47(b) of the SIIS 2007
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080429/LTN20080429677.pdf" target="_blank">
	annual report</a>, on 16-Jan-2008, it agreed to sell its 49% stake in SEC to 
	CSE for 
	HK$81m, satisfied by a 2-year promissory note bearing 1.5% p.a. interest, 
	and the deal was completed on 9-Apr-2008. For 
	accounting purposes, SIIS assumed an effective interest rate of 
	6.18%, thereby valuing the promissory note at <strong>$73.97m</strong>.</li>
	<li>According to note 2(i)(b) of the E2 2008
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080929/LTN20080929367.pdf" target="_blank">
	interim report</a>, on 21-Feb-2008, E2 agreed to sell its 49% stake in SEC 
	for <strong>HK$17.604m</strong>. The buyer was not named. The transaction 
	was completed on 8-Apr-2008. The sale was made during the &quot;offer period&quot; of 
	an offer for E2 under the Takeovers Code, but it was not mentioned in the 
	offer document as a material contract and only appeared later, in the 
	interim report.</li>
</ul>
<p><strong>You might pause to wonder why E2 was paid just $17.604m when SIIS was paid a price more than 4 times higher, each for a 49% stake in SEC, 
only a month apart.</strong> For 2008, as detailed in note 37 of its 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090424/LTN20090424135.pdf" target="_blank">annual 
report</a>, SIIS booked a &quot;loss on disposal&quot; of $12.911m, while E2, as 
detailed in note 11 of its 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090429/LTN200904291120.pdf" target="_blank">annual report</a>, booked a &quot;loss on disposal of 
discontinued operations&quot; in the brokerage services and investment banking 
segments of $10.677m and $0.980m respectively, including its sale of 40% of 
SECAH as well as 49% of SEC.</p>
<p>On 21-Apr-2010, SIIS (now renamed)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100421/LTN20100421587.pdf" target="_blank">
announced</a> that the sale of its 49% stake in SEC had taken place on 
16-Jan-2008 and that CSE had defaulted on the repayment of the IOU due on 
8-Apr-2010, 2 years after completion of the sale. Following this, in the annual 
accounts for 2009, it made a provision for full impairment of the outstanding 
amount of HK$81.449m, including accrued interest.</p>
<p>It appears that 
Mr Wong also sold his 2% stake, because at least as early as 19-Aug-2008, SEC 
was 100% owned by CSE, as shown in this
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=26434&amp;lang=EN&amp;dia=Y" target="_blank">
disclosure</a> of interest in another company.</p>
<p>On 13-May-2010, SIIS
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100514/LTN20100514113.pdf" target="_blank">
announced</a> that the board had removed
<a href="../dbpub/natperson.asp?p=15367">Lucian Yu Chung Hang</a> (<strong>Lucian 
Yu</strong>) as executive director and CEO with immediate effect, by unanimous 
resolution of all the other directors. Lucian Yu, son of Lawrence Yu, joined the 
company in Jan-2005 and 
joined the board as ED on 1-Jan-2006, becoming CEO on 18-Apr-2007. The 
announcement stated:</p>
<blockquote>&quot;The Company has considered that [Lucian Yu] has failed to 
exercise his fiduciary duties as a director of the Company and has committed 
material faults in representing the Company in the disposal of [SEC] to [CSE] 
and the subsequent follow-up actions, which have resulted in the Company having 
suffered a substantial loss...&quot;</blockquote>
<p>As far as we know, Lucian Yu has not yet made any published response to these 
allegations. Of course, he wasn't the only director at the time of the disposal 
of SEC, but he was the last survivor.</p>
<h3>Shelly Singhal</h3>
<p>Now, here's what we know about Shelly Singhal, who is or was (based on 
disclosures) the purported owner of CSE, which bought SECAS on 12-Jun-2007, 
probably bought SEC in Jan/Feb 2008 (completed on 8-Apr-2008) and has now 
apparently defaulted on the promissory notes.</p>
<p>According to the E2 2001 annual report, E2 also owned SBI E2-Capital (USA) 
Limited (<strong>SECUSA</strong>), a financial services operation based in 
Newport Beach, California, which in Dec-2001 &quot;formed a strategic alliance with 
Nasdaq-listed vFinance, Inc., a rapidly growing and fully licensed dealer 
broker&quot;. Records show that the Executive Vice President of SECUSA was Shelly 
Singhal.</p>
<p>Mr Singhal
<a href="http://www.sec.gov/Archives/edgar/data/1389476/000114554907000883/h01229exv99w1.htm" target="_blank">
resigned</a> as a director of <a href="../dbpub/orgdata.asp?p=58071">Xinhua 
Finance Limited</a> (<strong>Xinhua Finance</strong>, TSE:9399) and its 
subsidiary Xinhua Finance Media Ltd (now Xinhua Sports &amp; 
Entertainment Ltd, NASDAQ:<strong>XSEL</strong>) on 19-May-2007, a month before 
CSE bought SECAS saying:</p>
<blockquote>&quot;Unfortunately, recent allegations against me in the press 
concerning my activities prior to joining Xinhua Finance have created a 
situation where my continued involvement with Xinhua Finance has become a 
distraction to management...&quot;</blockquote>
<p>That was 4 days after he was moved out of his positions as CFO of XSEL and 
its parent, which followed criticism of the recently-listed XSEL for 
non-disclosure of his somewhat interesting past in the US financial arena. He 
owned a brokerage called Bedrock Securities, which had been subject to a NASD 
cease-and-desist order which was withdrawn on 14-Dec-2006.</p>
<p>According to a
<a href="http://www.milkeninstitute.org/events/gcprogram.taf?EventID=GC08&amp;SPID=3140&amp;function=bio" target="_blank">
conference bio</a>, as of 28-Apr-2008, Mr Singhal was CEO and CIO of &quot;Crestwood 
Pacific Group (Crestpac), an investment firm founded in 2001 (as SBI Group)&quot;. 
Apart from another delegate called
<a href="http://www.milkeninstitute.org/events/gcprogram.taf?EventID=GC08&amp;SPID=3206&amp;function=bio" target="_blank">
Nicholas Sandler</a> at the same conference, we cant find any other trace of 
Crestpac or Crestwood Pacific Group. That was just after CSE appears to have 
bought SEC.</p>
<p>Mr Singhal and his firm, SBI USA LLC, triumphed in court on 10-Apr-2008 when 
a civil case against them was dismissed, and he put out a
<a href="http://news.findlaw.com/scripts/printer_friendly.pl?page=/prnewswire/20080410/10apr20080018.html" target="_blank">
vindication press release</a>.</p>
<p>But wait, there's more. On 27-Apr-2010, a federal grand jury in the District 
of Columbia, USA
<a href="../codocs/USDoJ100427.pdf">returned</a> a 3-count indictment against Mr Singhal, charging him with engaging 
in a conspiracy and scheme to defraud the investing public through the use of 
stock manipulation schemes, including a scheme referred to as &quot;scalping&quot;, 
charging that he and others obtained at least US$10m in proceeds through the 
scheme to defraud by selling shares of the three companies that they controlled 
into the demand they had artificially created though newsletters.</p>
<p>To date, three other individuals are involved:</p>
<ul>
	<li>Robert Steven Brown, a New York attorney, who on 3-Nov-2009
	<a href="../codocs/USDoJ091103.pdf">pleaded guilty</a> to obstruction of justice concerning, among other things, 
	his business dealings with Mr Singhal. He has not yet been sentenced, but 
	has agreed to forfeit US$275k.</li>
	<li>Jukka Tolonen, a stock promoter from Texas, who agreed to forfeit 
	US$500k in connection with his involvement in the fraudulent promotional 
	campaign related to one of the companies involved in the alleged fraud, and 
	agreed to cooperate in two separate, on-going investigations.</li>
	<li>Melissa A Mahler, a New York attorney, who on 8-Jan-2010
	<a href="../codocs/USDoJ100108.pdf">pleaded guilty</a> to making a false statement. She has not yet been 
	sentenced, but has agreed to forfeit US$63,750. As part of a separate 
	transaction, she admitted that in or around 2004, the CEO of a Newport 
	Beach, California investment banking firm informed her of an opportunity to 
	acquire warrants for the purchase of shares of a Chinese company. The CEO 
	explained that the warrants were extremely valuable because the Chinese 
	company was planning an IPO and would be the first China related company to 
	be listed in Japan. The CEO also stated, however, that neither his name or 
	his firm's name could be associated with the purchase of the warrants. So at 
	his direction, Mr Brown formed an Limited Liability Company to own the 
	warrants, and Mahler used a friend who was a prison guard (nice touch, that) 
	as the nominee. The LLC obtained the right to purchase the shares for US$5m. 
	Mahler was paid $100k. Brown admitted that those shares ultimately generated 
	more than US$20m, which was distributed primarily to three insiders at the 
	Chinese company, including the CEO of the investment banking firm.</li>
</ul>
<p>We assume the CEO of the Newport Beach investment banking firm is Mr Singhal 
of SBI USA LLC. Now, what about that Chinese company which was &quot;first to be 
listed in Japan&quot;? That must be none other than Xinhua Finance, 
which
<a href="http://www.xfn.com/uploadedfiles/media-center/news-and-events/press-releases/2004/PR200410281.pdf" target="_blank">
began trading</a> on Tokyo's Mothers market on 28-Oct-2004, when they said &quot;we 
are proud to be the first China IPO in Japan...&quot;. Obviously, in the above 
allegations, Mr Singhal is one of the three insiders. He was a director of 
Xinhua Finance. <strong>We don't yet know who the other two are.</strong> </p>
<p>The charges against Mr Singhal carry a penalty of up to 20 years in jail. He 
is innocent unless and until proven guilty.</p>
<h3>So what does this mean?</h3>
<p>From 12-Sep-2007 at least until 26-Sep-2008, if not later, Mr Singhal was 
named in filings as the owner of CSE, which owned SECAS, and hence he was the 
controller of several SFC-licensed entities. It is unclear whether or when he, 
CSE or SECAS sold any of the subsidiaries, and if so, to whom. The brokerages and advisory 
firm are 
still up and running, as their
<a href="http://www.sbie2capital.com/" target="_blank">web site</a> shows, but 
they don't say who owns the firm.</p>
<p>Given the criminal charges in the USA against Mr Singhal, including the 
allegation that a nominee was used to disguise ownership of shares, it is a fair 
question whether in fact he was the true purchaser of SECAS and SEC (via CSE), 
or whether he was just a nominee for someone else, and if so, then who else knew 
about it.</p>
<p>Whoever owned CSE, it seems at least possible that they never put up a 
penny for SECAS, because of the possibility that CSE or its owner was the &quot;independent third 
party&quot; which received a $78m loan from SEC in the same year, which would be 
enough to pay SEC $76.76m for SECAS. If CSE or its owner was the borrower, then 
by buying SEC a few months later, they effectively cancelled out the loan, in 
exchange for the promissory note which has now defaulted, and possibly the cash 
payment of $17.6m to E2 for its 49% stake. There is a lot for the ICAC or SFC to 
investigate here.</p>
<p>We conclude with a reminder to the Government and the SFC that there is still 
no transparency on ownership of licensed firms in HK. The SFC should know who they 
are, because its approval is required for any holder of 10% or more of a 
licensed entity, but that register of interests remains a secret. It is ironic 
that the firms have a &quot;know your client&quot; obligation, but clients cannot properly 
&quot;know their firm&quot;. That opacity also makes investigations like this story so 
much more difficult.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=34306">Aceso Life Science Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14713">CENTRAL CHINA INTERNATIONAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13561">China Zenith Chemical Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4848">FDG Kinetic Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5587">Knight Frank Petty Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41142">SBI China Capital Asset Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41150">SBI China Capital Commodities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41149">SBI China Capital Financial Services Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41153">SBI China Capital Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58032">SBI E2-Capital Asia Securities Pte Ltd</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4789">SoftMedx Healthcare Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41141">TEIBS Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49415">UNITED WORLD CHINESE ASSOCIATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22942">Westcomb Financial Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58071">Xinhua Finance Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58043">Xinhua Sports & Entertainment Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=41146">Singhal, Shelly Sean</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10387">Tam, Jenny Yuk Ching</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10232">Wong, Sin Just</a></li>
				
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