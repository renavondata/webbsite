
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

<script type="text/javascript">document.title="Global Green Tech goes mining";</script>

	<div class="summary">In part 2 of today's look at Global Green Tech (0274), we'll show you how it bought a gold mine for 5.83 times what an AIM-traded company sold it for 3 months earlier, and that one of the middlemen also controls miner Lumena Resources (0067), so we take a look at that too.</div>

<h2 class="center">Global Green Tech goes mining<br>
<span class="headlinedate">25 May 2010</span></h2>
<p>We continue to examine the dealings of <a href="../dbpub/orgdata.asp?p=12209">
Global Green Tech Group Ltd</a> (<strong>GGT</strong>, 0274), following our 
article today, <a href="unibioggt.asp">Cosmetic Appearances</a>. 
We'll show you how GGT bought a gold mine for 5.83 times what an AIM-traded 
company sold it for 3 months earlier, and that one of the middlemen also 
controls miner
<a href="../dbpub/orgdata.asp?p=49466">Lumena Resources Corp</a> (<strong>Lumena</strong>, 
0067).</p>
<h3>Westralian Resources</h3>
<p>On 25-Sep-2009, the shareholdings of Mr R D Lau (21.97%) Mr Choi (4.09%) and 
Jim Lau (0.18%) in GGT were all
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090925/LTN20090925577.pdf" target="_blank">
acquired</a> by Double Chance Investments Ltd (<strong>Double Chance</strong>) at a total cost of HK$80m, or 
$0.140586 per share, which was a 51.5% discount to market. All of the directors 
of GGT resigned on the same date, proving that you can take control of a company 
with less than 30%; just 26.24% in this case. The announcement did not say who 
owns Double Chance. Disclosure of interest filings show that Double Chance is 
owned
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33893&amp;lang=EN&amp;dia=Y" target="_blank">
49% by</a> a Li Yongqiang (not to be confused with INED
<a href="../dbpub/positions.asp?p=51915">Li Yongxiang</a>) and
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33896&amp;lang=EN&amp;dia=Y" target="_blank">
51% by</a> Chen Ganqiao. We know nothing about them and, unusually for such 
large shareholders, they did not join the 
board. We also note that their interests in the shares were not included in the 2009 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100429/LTN201004291753.pdf" target="_blank">annual report</a> 
as they should have been. Given their apparent disinterest in running the 
company, we can't help wondering whether they are just nominees for someone 
else.</p>
<p>Now under new management, GGT's most recent acquisition is Westralian Resources Pty Ltd (<strong>Westralian</strong>), 
incorporated in Australia on 26-Nov-2003. It owns 80% of a Sino-foreign 
co-operative joint venture called Hunan Westralian Mining Co Ltd, established on 
6-Jul-2005, which owns gold mines located at Guangzhuang Township, Yuanling 
County, Hunan Province.</p>
<p>On 1-Dec-2009, supplemented on 9-Dec-2009, GGT
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091209/LTN20091209571.pdf" target="_blank">
agreed</a> to buy Westralian from Cosmos Castle Management Ltd (<strong>Cosmos</strong>, 
BVI), for <strong>HK$1,200m</strong> in shares and convertible bonds, based on a preliminary 
valuation of the mines from <a href="../dbpub/natarts.asp?p=16315">BMI 
Appraisals Ltd</a>, which has featured in our articles before. The vendor, 
Cosmos, was owned by &quot;seven corporate shareholders&quot; whose names were not 
disclosed in the announcement, nor were the names of their owners, apart from 
one, <a href="../dbpub/positions.asp?p=11931">Wang Chun Lin</a> (<strong>Mr Wang</strong>), who was &quot;an acquaintance&quot; of 
<a href="../dbpub/positions.asp?p=51907">David Yip Chung Wai</a>, the CEO of GGT.</p>
<p>Another thing not mentioned in the announcement was that Cosmos had acquired 
Westralian only 3 months earlier from <a href="../dbpub/orgdata.asp?p=57822">China Goldmines plc</a> (<strong>China 
Goldmines</strong>, AIM:CGM), for just US$26.35m (<strong>HK$205.5m</strong>), so it was now 
being flipped to GGT for a <strong>484%</strong> gain. They
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091211/LTN20091211127.pdf" target="_blank">
got around to this</a> on 11-Dec-2009 after media reports pointed it out. A
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100129/LTN20100129600.pdf" target="_blank">
circular</a> was dated 1-Feb-2010. We did some digging on China Goldmines. In 
its
<a href="http://www.chinagoldmines.com/upload_dir/pdf/engpdf/eng_Announcement__www_londonstockexchange_96.pdf" target="_blank">
announcement</a> on 27-Aug-2009 of the sale of Westralian, it said that &quot;Mr 
Cheng Ziazhong (sic) is the sole director and sole shareholder of Cosmos and 
additionally holds the beneficial interest in the sole issued share of Cosmos&quot;. 
In the next paragraph, it states that Mr 
<a href="../dbpub/positions.asp?p=58233">Cheng Zaizhong</a> is a registered foreign 
lawyer at <a href="../dbpub/adviserships.asp?p=9128">Li &amp; Partners</a>, the 
solicitors to Cosmos. So
<a href="http://www.li-partners.com/en/team_373.aspx" target="_blank">this would 
be him</a>. There was also a &quot;Financing Party&quot; in the acquisition from China 
Goldmines whose identity remained confidential.</p>
<p>There was no mention of Mr Wang. So sometime between the purchase from China 
Goldmines and the sale to GGT, the shareholdings in Cosmos changed. China 
Goldmines put out a
<a href="http://www.chinagoldmines.com/upload_dir/pdf/engpdf/eng_121430_CGM_Circular_FINAL_98.pdf" target="_blank">
circular</a> dated 1-Sep-2009, and the sale was approved by its shareholders on 
21-Sep-2009, just over 2 months before Cosmos agreed to flip Westralian into 
GGT.</p>
<p>The GGT
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100129/LTN20100129600.pdf" target="_blank">
circular</a> was dated 1-Feb-2010, and the deal
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100331/LTN20100331438.pdf" target="_blank">
completed</a> on 31-Mar-2010. The consideration comprised 762.022m shares and 
$895.1912m of bonds convertible at $0.40. So, who was it that benefitted from 
Cosmos's huge gain on flipping Westralian? From disclosure filings, we can see 
that all of the shares and $139.1912m of the bonds
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=37338&amp;lang=EN&amp;dia=Y" target="_blank">
went to</a> a person called <a href="../dbpub/positions.asp?p=49471">Suo Lang 
Duo Ji</a> (<strong>Mr Suolang</strong>), and $120m of the bonds
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=37339&amp;lang=EN&amp;dia=Y" target="_blank">
went to</a> Mr Wang. We don't know who got the remaining $636m of bonds. So, 
what do we know about Mr Suolang and Mr Wang? That brings us on to...</p>
<h3>Lumena Resources</h3>
<p>Mr Suolang is the founder, Chairman and controlling shareholder of Lumena, which was listed on 16-Jun-2009 
and mines and refines various forms of
<a href="http://en.wikipedia.org/wiki/Sodium_sulfate" target="_blank">sodium 
sulphate</a>. Mr Wang is an NED of Lumena, having received a pre-IPO stake of 5% 
in 2007. Mr Suolang 
was formerly known by the French-Irish-sounding name of &quot;Dominique Shannon&quot; and 
&quot;Li Yan&quot;. We don't know why he has changed his name, twice. It would have been 
odd to register the name &quot;Dominique Shannon&quot; in China - so perhaps he has or had 
a foreign passport in that name.</p>
<p>Mr Don't-call-me-Dominique Suolang was also
<a href="http://media.gm.com/content/media/us/en/news/news_detail.brand_gm.html/content/Pages/news/us/en/2009/Oct/1009_HUMMER_Sale" target="_blank">
involved</a> in Oct-2009 as a proposed 20% shareholder in the vehicle to 
purchase the General Motors Hummer brand, with 80% to be owned by privately-held
<a href="../dbpub/orgdata.asp?p=58230">Sichuan Tengzhong Heavy Industrial 
Machinery Co Ltd</a> (<strong>Tengzhong</strong>). However, that deal
<a href="http://media.gm.com/content/media/us/en/news/news_detail.brand_gm.html/content/Pages/news/us/en/2010/Feb/0224_hummer" target="_blank">
was aborted</a> in Feb-2010.</p>
<p>Tengzhong was a substantial supplier of equipment to Lumena, selling it 
RMB343.4m of gear in 2007. The Lumena
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090604/LTN20090604347.pdf" target="_blank">prospectus</a> of 4-Jun-2009 is 
self-contradictory. It states (p26) that Tengzhong was 90% owned by Mr 
<a href="../dbpub/positions.asp?p=49470">Li Xudong</a>, 
one of Lumena's executive directors, until he sold it on 30-Jan-2008, making 
Tengzhong an independent third party after that date. But on p120, it states 
that Tengzhong &quot;is controlled by Mr Li Xudong&quot;. It also states that on 
1-Jan-2008, a Lumena subsidiary cancelled a supply agreement it had entered into 
in 2007 with Tengzhong, because &quot;it later became apparent that the performance 
of this equipment supply agreement would extend beyond the Listing Date and 
therefore would constitute a continuing connected transactions (sic)&quot;. But of 
course, if Li Xudong had sold his stake, then he would not still control 
Tengzhong and there would be no ongoing connected transactions.</p>
<p>According to a Lumena
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090609/LTN20090609275.pdf" target="_blank">
announcement</a> on 9-Jun-2009, Tengzhong was once a subsidiary of Sichuan Huatuo Industry &amp; Commerce Development Co Ltd (<strong>Huatuo</strong>). In 2004 
this was 50.2% owned by Sichuan Huatong Investment Holding Co Ltd (<strong>Huatong</strong>), 
which was 98.5% owned by Mr Suolang. By the IPO date, Huatong had increased its 
stake to 69.9% of Huatuo. Huatuo held interests in Tengzhong from 26-Jan-2005 to 
15-Aug-2005. Mr Suolang ceased to have an equity interest in Huatuo on 
15-May-2005.</p>
<p>On 19-Aug-2009, Lumena
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090922/LTN20090922252.pdf" target="_blank">
spent</a> RMB264m (HK$300m) in cash to buy the remaining 10% of one of its 
subsidiaries, equivalent to 46% of its IPO proceeds, paying a 2008 P/E of 20.3 
for the stake. Lumena has extensive borrowings, having in Oct-2009
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091022/LTN20091022001.pdf" target="_blank">
issued</a> offshore US$250m (RMB1,707m) of 12% senior notes (secured against its 
subsidiaries) and also carrying RMB356.5m of onshore bank debt at 31-Dec-09. On 
the cash side, it had amounts in RMB of RMB336.3m, and other currencies 
equivalent to RMB563.2m. On 27-Dec-2009, Mr Suolang
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091230/LTN20091230005.pdf" target="_blank">
pledged</a> 20.51% of Lumena for a loan of &quot;<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100201/LTN20100201005.pdf" target="_blank">less 
than US$30m</a>&quot; from Bank of China International for his own use. Share pledges 
only have to be disclosed within 1 year after the IPO.</p>
<p>Sodium Sulphate (or thenardite) is used as an inert filler in laundry 
detergents (because of its whiteness), although consumers have been switching to 
more compact or liquid detergents which use less or none of it. Being inert, all 
it does is to make the powder look nice and make your shopping basket heavier. 
It is also (in decahydrate form known as
<a href="http://en.wikipedia.org/wiki/Mirabilite" target="_blank">Mirabilite or 
Glauber's salt</a>) a mild laxative, and is used as a processing agent in glass 
and textile manufacture.</p>
<p>Making a commodity as common as sodium sulphate, Lumena seems to have 
unsustainably high profit margins, booking earnings before interest and tax of 
RMB875.1m on sales of RMB1,344m in 2009, or a 65% EBIT margin. The gross profit 
margin was 72.9%. It attributes this to selling part of its production as 
higher-purity &quot;specialty thenardite&quot; and &quot;medical thenardite&quot;, the latter from a 
Good Manufacturing Practice (GMP)-certified factory with a Pharmaceutical 
Production Permit, at much higher prices than the type used to bulk-out washing 
powder. In 2009, it
<a href="http://www.lumena.hk/eng/ir/presentations/pre100422.pdf" target="_blank">
sold</a> &quot;medical thenardite&quot; for RMB2,582/tonne and &quot;specialty thernardite&quot; for 
RMB860/tonne, while powder thenardite was going for RMB252/tonne. In the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091009/LTN20091009482.pdf" target="_blank">
first half</a> (p42) of the year, Lumena's medical and specialty thenardite had 
gross profit margins of 78.6% and 78.9%, while powder thenardite had a margin of 
only 18.5%.</p>
<p>Even if you give them the benefit of the doubt and assume that these margins 
are real, it seems unreasonable to expect that competition will not bring them 
down to more normal levels.</p>
<h3>Coming soon to Korea...</h3>
<p>The Lumena prospectus also mentions that Mr Suolang controls Haton Polymer &amp; Fibre 
Corp (Cayman), which has since been renamed Sino Polymer New Materials Co Ltd 
and in Apr-2010 was
<a href="http://dealbook.blogs.nytimes.com/2010/04/05/sino-polymer-aims-for-433-million-i-p-o/" target="_blank">
reported</a> to be applying for a Korean listing. It makes
<a href="http://en.wikipedia.org/wiki/Poly%28p-phenylene_sulfide%29" target="_blank">
Polyphenelene Sulfide</a>.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16315">BMI APPRAISALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49466">China Lumena New Materials Corp.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=57822">CONSOLIDATED GENERAL MINERALS PLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12209">Renaissance Asia Silk Road Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58230">Sichuan Tengzhong Heavy Industrial Machinery Co., Ltd.</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=58233">Cheng, Zaizhong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49470">Li, Xudong (1962)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49471">Suo Lang, Duo Ji</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11931">Wang, Chun Lin (1952)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=51907">Yip, David Chung Wai</a></li>
				
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