
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

<script type="text/javascript">document.title="Egana and Upbest";</script>

	<div class="summary">Following this week's charges by the ICAC against certain directors of Upbest (0335), Webb-site.com looks at the connections between EganaGoldpfeil (0048) and Upbest, and we don't like what we see. There's a mixture of out-and-back profit-generating transactions, innovative accounting policies, investments in closed-end funds, interest-free "deposits", rolling promissory notes and yes, an aborted gas transaction in the PRC. Are we looking at the next Moulin here?</div>

<h2 class="center">Egana and Upbest<br>
<span class="headlinedate">26 July 2007</span></h2>
<p>Loyal readers of <i>Webb-site.com</i> will recall that on 4-Mar-04, we 
published a story called <a target="_blank" href="grandfield1.asp">Cooking with 
Gas</a>, questioning a purported investment in a piped gas project in Chongqing 
by <a target="_blank" href="../dbpub/articles.asp?p=4802">Grand Field Group Holdings Ltd</a> (<b>Grand 
Field</b>, 0115). We are pleased to note that on Monday (25-Jul-07), the 
Independent Commission Against Corruption
<a target="_blank" href="../codocs/ICAC070725.pdf">brought 
charges</a> against the then Chairman and a then executive director for alleged 
conspiracy to defraud Grand Field's shareholders and the Stock Exchange.</p>
<p>Also charged were two executive directors of
<a target="_blank" href="../dbpub/articles.asp?p=11823">Upbest Group Ltd</a> (<b>Upbest</b>, 0335) 
Charles Cheng Kai Ming (<b>Mr Cheng</b>, its founder) and George Li Kwok Cheung, 
and an independent non-executive director (INED) of Upbest, David Wong Wai Kwong 
(<b>Mr Wong</b>). 
It turns out that, according to the ICAC announcement, Upbest (or one of its 
subsidiaries) was advising Grand Field on the acquisition of the gas project. 
You might wonder why an INED would be charged, since by definition, they don't 
perform executive functions, but it probably relates to his work in another 
capacity. He was a director of another firm, International Taxation Advisory 
Services Ltd (<b>ITA</b>). </p>
<p>They are all, of course, innocent unless and until proven guilty. </p>
<p>Now that we have your attention, put a big pot of coffee on and let's take a 
look at the extensive connections between Upbest and 
<a target="_blank" href="http://www.egana.com">EganaGoldpfeil (Holdings) Ltd</a> (<b>Egana</b>, 
0048), and at transactions by Egana and questionable accounting policies which 
together have flattered their earnings and in at least two years prevented them 
reporting a net loss. Readers may recall we last
<a target="_blank" href="toxicon.asp#EganaGoldpfeil">criticised</a> Egana, 
amongst several other companies, in relation to its issuance of toxic 
convertibles.</p>
<p>For starters, we note that Mr Wong has been an executive director of Egana 
since 4-Jan-05 and until then served as a non-executive director from Jul-92, 
before Egana's Jan-93 IPO. However, he was never an independent NED, because his 
firm ITA had long-standing dealings with Egana, providing <i>&quot;taxation and 
corporate advisory services&quot;</i> at least since the IPO, booking fees of $7.34m 
in the year to May-03 and $7.40m in the year to May-04, declining to $2.31m in 
the year to May-05 because he switched to being an executive director and went 
on the payroll instead. As a director, he was paid $1.93m in the year to May-06 
and $0.91m in the previous part-year since his appointment.</p>
<h3>Incutech</h3>
<p>Before we go back to Egana, let's build a few connections. Mr Wong has also been, since 28-May-04, an executive 
director of Incutech Investments Ltd (<b>Incutech</b>, 0356) a closed-end investment 
company 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020527/LTN20020527029.htm">listed</a> under
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_21.pdf">
Chapter 21</a> of the Listing Rules on 7-Jun-02 and sponsored by Upbest 
Securities Co Ltd (<b>Upbest Securities</b>), a wholly-owned subsidiary of 
Upbest.</p>
<p>Like most investment companies, Incutech had no track record before listing, 
and raised its funds at the time of the IPO, issuing 60m shares at $1 each. Incutech's 
investment manager was and is Upbest Assets Management Ltd (<b>UAM</b>), a 
wholly-owned subsidiary of Upbest. On 14-Nov-03, Incutech
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031103/LTN20031103015.pdf">
placed</a> 12m new shares at $1.10 each through Upbest Securities, raising 
$13.0m net. There have been no other share issues by Incutech since then.</p>
<p>Reviewing the Incutech annual reports from 2002 to 2006, we find that Incutech has 
consistently held shares in Upbest, and also in
<a target="_blank" href="../dbpub/articles.asp?p=9843">UBA Investments Ltd</a> (<b>UBA</b>, 
0768), another Chapter 21 investment company which is also managed by UAM, which 
was listed on 18-Jan-00. Mr Wong has served as an INED of UBA since 23-Nov-99 
(before its Jan-00 listing).</p>
<p>Not only that, but Incutech has a consistent affinity for the Egana group, 
investing in Egana and its 
1998 spin-off <a target="_blank" href="../dbpub/articles.asp?p=7054">Egana Jewellery &amp; Pearls Ltd</a> (<b>Egana J&amp;P</b>), which was delisted on 
24-Oct-06 after Egana took it private again. In 2002 Incutech also had a holding 
in Tonic Industries Holdings Ltd (<b>Tonic</b>, 0978), which was and is an 
associated company of Egana (Egana owns about 20%). In recent years, Incutech's 
listed investments have been exclusively in Upbest/UBA and the Egana group. Here's a table of Incutech's 
only listed investments in all the annual reports since it was listed:</p>
<img class="center" alt="" src="../images/incute1.gif">
<p>As you can see, at one stage at the end of 2004, the investments in Egana, 
Upbest and UBA amounted to almost 70% of Incutech's net assets. As of 31-Mar-06, UBA also holds 
shares in Egana, Tonic and Grand Field, accounting for a combined 30% of UBA's net assets 
at 31-Mar-06.</p>
<h3>Co-investments</h3>
<p>Apart from Incutech's listed investments in the Upbest and Egana groups, 
Incutech and Egana have also invested in at least two of the same companies.</p>
<p>According to 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010518/0048/F119.pdf">
note 17</a> of
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010518/LTN20010518052.htm">Egana's 2000 annual report</a>, in Dec-00, Egana acquired an 18.75% 
stake in Super Plus Investments Ltd (<b>Super Plus</b>), <i>&quot;whose subsidiary is 
principally engaged in distribution and trading of fashion accessory products&quot;</i>, 
for HK$23.4m. In 2003, Incutech 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/00356/F111.pdf">acquired</a> 
(see note 13) 4,500 shares, or 9%, of Super Plus from unnamed parties 
at a cost of $11.25m. Incutech now described Super Plus 
as <i>&quot;investing in a diversified portfolio...in listed and unlisted companies 
involving in distribution of consumer products in Greater China.&quot;</i></p>
<p>Also in Dec-00, Egana subscribed US$14.2m (HK$110.76m) in 3-year 8% 
convertible notes issued by Tonga Group Holdings Ltd (<b>Tonga</b>), a BVI 
company which intends to <i>&quot;invest in forestry business for the exploitation of 
forest, processing of wood as well as trading of wood products and to establish 
a leading B2B building material exchange platform with global coverage&quot;.</i> 
US$10m of the note was convertible into 15% of Tonga. The notes were redeemed at 
par in 2001.</p>
<p>According to note 31(a) of the Dec-00 accounts, In Feb-01 and Mar-01, Egana 
subscribed for 15% of Tonga for HK$46.8m (US$6m). It also said that Tonga <i>
&quot;intends to participate in a forestry project in Suriname to process wood in an 
environmentally manner...&quot;.</i>
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010516/0926/F119.pdf">
Note 27(b)</a> of subsidiary
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010516/LTN20010516045.htm">
Egana J&amp;P's 2000 annual report</a> states that it subscribed 12.5% of Tonga for 
US$5m (HK$39m) in Feb-01, so the other 2.5% was by its parent for US$1m. Super 
Plus also subscribed for 6.25% of Tonga. </p>
<p>Ah, Suriname, lovely place. No, we've never been there, but the name invokes 
memories of a transaction by delisted <a target="_blank" href="../dbpub/articles.asp?p=7351">Luen 
Cheong Tai International Ltd</a> (<b>LCT</b>), which on 31-Aug-00
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000901/LTN20000901024.doc">
announced</a> that it was buying a forest concession in Suriname for $125m from 
two anonymous vendors. LCT was later renamed Baker Group International Holdings 
Ltd. Provisional liquidators were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020910/LTN20020910054.doc">
appointed</a> on 5-Sep-02 and it was delisted on 16-Mar-05. Is there any 
connection between this project and Tonga's project in Suriname? Quite possibly. 
We note that liquidators of Baker Group are now
<a target="_blank" href="http://www.targetnewspapers.com/TolfinWeb/public/updates/articles/Articles%202007/0706/070622A.htm">
suing</a> several defendants, including Upbest Securities, ITA and Mr Wong. On 
17-May-00, Upbest Securities
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000518/LTN20000518023.doc">
arranged</a> the issue of HK$24m in convertible notes by Luen Cheong Tai 
Engineering Ltd (<b>LCTE</b>), a newly-incorporated wholly-owned subsidiary of 
LCT, <i>&quot;to expand the building materials activities...which includes the 
possibility of extending it on-line and marketing the same through the 
internet...&quot;</i>. The notes were convertible either into shares of LCTE or LCT. 
We wonder who subscribed for those notes.</p>
<p>In 2002, Egana changed its year-end to May, resulting in a 17-month financial 
period. Looking at Egana J&amp;P,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021002/0926/F117.pdf">
note 16(a)</a> of its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021002/LTN20021002087.htm">
May-02 report</a> shows that it held 25% of Tonga at a valuation of $71.4m, 
including a revaluation surplus of $32.4m. This implies a book cost of $39m, 
which is puzzling because the previous report said that they were paying that 
much for 12.5%, not 25%. Did the price halve, or did Tonga reduce the number of 
shares in issue by a half?
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/0048/F121.pdf">
Note 17(a)</a> of Egana's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/LTN20021008055.htm">
May-02 report</a> puts the investment at $85.6m (US$11m). This implies that the 
parent Egana held 5% of Tonga, for a total of 30%, but did not treat it as an 
associate. According to note 30(a) of Egana's report, in Jul-02 it subscribed 
for an additional 4.75% of Tonga at a price of $14.82m (US$1.9m), increasing its 
interest from 30% to 34.75% and implying a valuation for Tonga of US$40m.&nbsp; </p>
<p>In 2003, Incutech 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/00356/F111.pdf">invested</a> 
HK$11.1m in 75 shares, or 3.75%, of Tonga, by then described as involved in <i>&quot;distribution of 
building material and commodity products in China and Indonesia.&quot;</i></p>
<p>In subsequent annual reports, Egana avoids naming either Super 
Plus or Tonga, referring to them only as <i>&quot;two third party private companies&quot;</i> 
so it is harder to track exactly what happened to them, but the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031022/LTN20031022070.htm">May-03 report</a> 
states in 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031022/00048/EWF121.pdf">note 18(a)(ii)</a> that during the year, it <i>&quot;fully divested its equity 
interest in one of the private companies and partially disposed of...its equity 
interest in the other...for a total consideration of approximately $102 million, 
resulting in a gain on disposal of $35,980,000&quot;</i>.</p>
<p>Now
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031013/00926/EWF117.pdf">
Note 17(b)</a> of subsidiary Egana J&amp;P's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031013/LTN20031013052.htm">
May-03 report</a> states that it sold <i>&quot;certain of its equity interests in an 
unlisted company&quot;</i> for a <i>&quot;consideration&quot;</i> of $35m, booking a gain on 
disposal of $15.5m. That implies a book cost of $19.5m, which implies that they 
sold half of their 25% stake in Tonga. However, the consideration was not in 
cash, as the sale proceeds do not show up in the cash flow statement. It valued 
the remaining 12.5% stake at $37.1m.</p>
<p>Deducting Egana J&amp;P's sale of half its Tonga stake, this means that the 
parent Egana sold its own 9.75% stake in Tonga and all of its shares in Super 
Plus for a total consideration of $67m and a total gain of $20.48m. Assuming it 
got the same price per share of Tonga, then it sold 9.75% for $27.3m, for a gain 
of $4.68m. So we infer that the stake in Super Plus was sold for a gain of 
$15.8m (US$2m) which implies a sale price of $39.2m.</p>
<p>In Egana's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041026/LTN20041026064.htm">May-04 report</a>, 
Tonga was described as being involved 
in <i>&quot;investment holding, trading of consumer products and rendering of 
marketing promotion service.&quot; </i>No mention of wood. Also,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041026/00048/EWF123.pdf">note 18(a)(i)</a> mentions a new unnamed strategic 
investment. Its principal activities are <i>&quot;investment holding, distribution 
and trading of fashion accessory products.&quot; </i>That sounds a lot like 
Super Plus again, using the same description as the Dec-00 report, but we don't 
know, as the investment wasn't named.</p>
<p>In 2004, Incutech 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050505/0356/F110.pdf">increased</a> 
(note 12) its investment in Super Plus from 9% to 12% at an 
additional cost of $5m. It also increased its investment in Tonga from 3.75% to 
5% at an additional cost of $3.7m.</p>
<p>Egana J&amp;P's remaining 12.5% stake in Tonga was disposed of in the year to 
May-06 for a gain of $1.8m. In 2006, Incutech again
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070502/0356/F113.pdf">
increased</a> (note 12) its stake in Super Plus from 12% to 20%, at an 
additional cost of $14.6m, and disposed of its investment in Tonga. </p>
<h3>Investment funds, deposits, ELNs and gas!</h3>
<h4>Now, let's take a closer look at the Egana 
balance sheet. To follow along, you'll need the annual reports we linked to 
above.</h4>
<h4>May-02</h4>
<p>Note 17(b) of Egana's May-02 report discloses that during the period, Egana 
invested about $168.6m <i>&quot;as strategic shareholder in five private closed-end 
funds for medium-term capital appreciation potential...under the management of a 
third party Hong Kong listed investment banking group (&quot;LISTED CO&quot;).&quot;</i> 
These funds were valued at 31-May-02 at $169.4m. Note 18(c)(ii) shows that 
Egana's current assets also included unsecured interest-bearing promissory notes 
of $112m due from the five funds and $76m from an <i>&quot;independent third party&quot;</i>. 
That took the total invested in the funds to $281.4m.</p>
<p>Furthermore, note 18(c)(iii) shows that Egana held unsecured interest-free <i>
&quot;short term deposits&quot;</i>&nbsp; (you might regard them as loans) of $135.2m with 
LISTED CO in relation to the <i>&quot;proposed acquisitions of two target companies&quot;.
</i>It remains unclear why it was necessary to make such advances to LISTED CO 
or whether the acquisitions were eventually made by Egana. Note 18(c)(i) also 
shows investments in $120.5m of equity-linked notes issued by a private company
<i>&quot;in which the controlling shareholder of the LISTED CO...has a beneficial 
interest&quot;.</i></p>
<p>If you add all that up - the investment funds, the promissory notes they 
issued, the interest-free deposits (or loans) with LISTED CO, and the 
equity-linked notes, then you've got a total exposure of $537.1m related to the 
unnamed LISTED CO or its controlling shareholder. Egana's net tangible assets at 
31-May-02 were only $880.0m, so that's about 61% of Egana's net tangible assets. 
That figure doesn't include one more project related to LISTED CO which we 
haven't mentioned - but we'll get to that in a moment. You'll love it.</p>
<p>Despite the extent of the exposure, Egana has never named any of these funds 
or explained what they actually invest in, and despite the frequency of 
mentions, the 
name of that listed group has never been disclosed in Egana's accounts, but could it by any chance 
be Upbest? The investments of Incutech in Egana, the fact that they both made 
investments in Super Plus and Tonga, the fact that Incutech's investment manager 
is Upbest, and the fact that Mr Wong is a director of both Incutech and Egana as 
well as an INED of Upbest, strongly suggest that LISTED CO is Upbest, which is 
controlled by Mr Cheng.</p>
<h4>May-03</h4>
<p>In its May-03 annual report, Egana was now describing its investments in the 
context of its Junghans watch business. It said in note 18(a)(iii) that the <i>
&quot;five private closed-end funds...provided opportunity for the Group to explore 
Junghans systems watch program extension in Asia and to exploit distribution 
alliance partners for the Group's branded products in Greater China markets&quot;</i>. 
The funds were valued at $204.1m.</p>
<p>The ELNs had been reduced to $7.0m, and Egana had $79.2m (including $42.9m 
through Egana J&amp;P) of unsecured interest-free deposits with (or loans to) LISTED 
CO in connection with the <i>&quot;proposed acquisitions of three target companies&quot;
</i>(two through Egana J&amp;P) which were unsecured and not interest-bearing. 
Again, why was it necessary to advance money to LISTED CO, and where these 
acquisitions ever completed?</p>
<p>Egana also held $60.5m of promissory notes issued by <i>&quot;two independent 
third parties&quot;</i>.</p>
<h4>Gas - deja vu?</h4>
<p>Note 17(b)(ii) of the May-02 annual report discloses that in May-02 Egana, <i>&quot;through a private 
closed-end fund managed by the LISTED CO, secured the investment of a 3% 
interest of an in-house gas supply project in the [PRC] and paid the full 
consideration of $70 million&quot;.</i> Oooh. Now we are beginning to wonder. Where 
was that gas project? May-02 was the same month in which Grand Field claimed to 
have invested in the now-infamous piped gas project in Chongqing, PRC, which led 
to this week's ICAC charges against its then-directors.</p>
<p>In Egana's May-03 report, note 18(a)(iv) stated that the gas project was <i>&quot;with a view to 
introducing Junghans systems watch program to public utility facilities.&quot; </i>
Apparently, gas pipes wear watches. It 
added that in November 2002, Egana <i>&quot;disposed of the investment at cost due to 
delay by the project operator to obtain necessary government approval of the gas 
supply project&quot;. </i>That was about three months after Grand Field purportedly 
withdrew from its gas project in Chongqing. Could these be the same project? One 
thing doesn't match though - Egana's project was $70m for 3%, implying a total 
valuation of $2,333m, whereas Grand Field's investment in 75% of a company which 
had the rights 80% of a JV was only $63m.</p>
<h4>May-04</h4>
<p>In Egana's May-04 report, note 18(a) shows holdings in four closed-end LISTED 
CO funds valued at $191.1m, note 21(a) shows ELNs of $118.8m, and there were no 
short-term deposits with LISTED CO. However, note 30(f) shows the promissory 
notes receivable from <i>&quot;independent third parties&quot;</i> had increased from 
$210.0m to $359.8m. The balance sheet also contained unexplained <i>&quot;long-term 
receivables&quot;</i> of $30m.</p>
<h4>May-05</h4>
<p>In Egana's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051004/LTN20051004062.htm">
May-05 report</a>,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051004/00048/EWF127.pdf">
note 18(a)</a> shows the four closed-end LISTED CO funds now valued at $195.8m, 
note 21(a) shows ELNs of $83m, and note 30(f) shows the promissory notes from <i>
&quot;independent third parties&quot;</i> had increased to $476.7m. There were no&nbsp; 
long-term receivables.</p>
<p><b>May-06</b></p>
<p>In the 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061003/LTN20061003147.htm">May-06 
report</a>, there was one closed-end fund valued at $71.3m and no ELNs, but 
promissory notes had increased to a whopping $986.3m.</p>
<h3>Promises, promises</h3>
<p>Since May-04, Egana has presented a line of <i>&quot;cash and cash equivalents&quot;</i> 
in its balance sheet. In its May-06 balance sheet, this amounted to $1,385m, an 
impressive figure indeed. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061003/00048/EWF125.pdf">
management discussion and analysis</a> even called it a &quot;<i>net cash position of 
HK$1,385 million&quot;.</i></p>
<p>In reality, Egana is heavily geared. If you dig down to 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061003/00048/EWF133.pdf">note 34(e)</a>, you will find that $986.3m of the
<i>&quot;cash and cash equivalents&quot;</i> is <i>&quot;promissory notes with 
maturity within three months&quot; </i>which were unsecured and bore interest at 
commercial rates. Of these, $693.7m was rolled over upon maturity for another 
one to three months. As noted above, the promissory notes have been building up 
for years. This begs the question of how many times some of these notes have 
been rolled over, who the borrowers are, and what ability they have to repay.</p>
<p>We know that in May-02, promissory notes included amounts due from the 
closed-end investment companies related to LISTED CO. How much of the current 
notes are still investments in disguise, being loans to investee companies, 
which have nothing to do with Egana's commercial business? Alternatively, if the 
promissory notes in fact originate from commercial transactions with Egana's 
customers, then why is Egana financing its customers, and is it actually being 
paid for its goods, or simply rolling over IOUs?</p>
<p>This is not, in our view, a 
healthy state of affairs, and we don't regard promissory notes as being 
equivalent to cash.</p>
<p>As of the 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070228/0048/EWF101.pdf">30-Nov-06 
unaudited interim report</a> (the latest accounts we have), the promissory notes were reduced to 
$821m. The net assets were $2,434m, but that includes intangible assets 
(goodwill, trademarks and so on) of $857m and net deferred tax assets (which 
generally can only be used if you make future profits) of $152m. So excluding those, 
net tangible assets were $1,425m. The promissory notes represent about 58% of 
this. Egana had bank borrowings totalling $2,248m, and cash (not promissory 
notes) of $428m. So its net bank debt was $1,820m, or about 128% of net tangible 
assets.</p>
<h3>Converting receivables to goodwill</h3>
<p>On at least one occasion, Egana has acquired a distributor in 
exchange for cancelling accounts receivable, and booking the set-off as goodwill. 
As shown in 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041026/00048/EWF123.pdf">note 30(d)</a> of the May-04 report, Egana acquired a 
German distribution business which had 
net assets of $19.3m for $22.4m in cash. It also set off $78.8m against accounts 
receivable, and $46.4m against &quot;other receivable&quot;, making a total consideration 
of $147.5m and booking $128.2m of goodwill while reducing receivables by $125.2m. That's one way to recover your 
debts.</p>
<h3>Trademark sale in Dec-00 boosted 2000 earnings</h3>
<p>
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/0048/F121.pdf">Note 13(a)</a> of the May-02 report 
belatedly reveals that in Dec-00, just before the 
previous year-end, Egana sold the rights to the <i>Goldpfeil</i> brand name for 
menswear in Greater China to an <i>&quot;independent third party&quot;</i> for an income of $75m, 
which was a substantial part of its 2000 net profit of $91.75m (as restated). 
We cannot find any mention of that sale in the Dec-00 report - the income was just 
included in turnover under its accounting policy, making Egana look far more 
profitable than the rest of its business was.</p>
<p>Eight months later, in Aug-01, <i>&quot;prior to the imminent change in shareholders 
and management&quot;</i> of the owner of the buyer, Egana <i>&quot;was given the opportunity&quot;</i> to 
reacquire the trademark, and did so for $75m, holding it at cost in the balance 
sheet, so it did not have any impact on P&amp;L. The note also stated that <i>&quot;the 
controlling shareholder of LISTED CO...was a director&quot;</i> of the vendor's 
owner. If LISTED CO was Upbest, then the controlling shareholder was Mr Cheng.</p>
<h3>Junghans Asia 10% sale saves Egana 2002 profit</h3>
<p>In the May-02 report, 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/0048/F121.pdf">note 4(a)</a> states that during 
the period, Egana established Junghans Asia (Holdings) Ltd (<b>Junghans Asia</b>) 
in the BVI <i>&quot;to act as the marketing, sourcing and manufacturing agent in Asia 
for Junghans Germany&quot;</i>. It then sold a 10% interest in Junghans Asia for a 
total of $80m to two unnamed private investors in equal shares. One of those was a <i>
&quot;private third party company in which the controlling shareholder of the LISTED 
CO...has beneficial interests&quot;. </i>If LISTED CO was Upbest, then its 
controlling shareholder was Mr Cheng.</p>
<p>As a result of the sale, Egana booked a gain of $79.973m in its results for 
that period, without which, it would not have made the reported profit for the 
period of $52.102m, but 
would have made a loss. The profit on the sale implies that Junghans Asia had 
negligible net assets and nearly all of the price represented goodwill.</p>
<p>In the year to May-05, Egana bought back the 10% stake in Junghans 
Asia, because note 16 of the annual report shows that it is 100%-owned. We don't 
know how much they paid, but note 14(a) states <i>&quot;In June 2004, the Group 
acquired additional 10% equity interest in a subsidiary and the resultant 
goodwill is attributable to the potential of radio-controlled business.&quot; </i>The 
goodwill generated is precisely $86m, and we presume this refers to Junghans 
Asia, since Junghans is a brand of radio-controlled clocks and watches. Given 
that it had no material net assets to start with, we'll estimate a repurchase 
price of $86m, which gives the private companies a profit of $6m for holding it 
for about 3 years. In any case, it cannot be more than the line in the cash flow 
statement of &quot;purchase of additional interest in subsidiaries&quot; which cost 
$107.142m. That could include purchases of interests in other subsidiaries.</p>
<p>So what we have here is something very similar to the Goldpfeil trademark 
sale in the Dec-00 year. Both deals involved the sale of an intangible asset (in 
Junghans Asia's case, it was practically all goodwill), both deals involved the 
controlling shareholder of the secretive LISTED CO, and both deals were reversed 
when Egana bought back the asset, after booking a profit on the sale.</p>
<p>Incidentally, in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020708/LTN20020708038.pdf">
circular</a> dated 5-Jul-02, Upbest Securities acted as &quot;independent financial 
adviser&quot; to Tonic on continuing connected transactions with Egana, particularly 
sales of watch parts to and from Junghans Asia Limited, incorporated in HK, which was described as 
a <i>&quot;wholly-owned subsidiary&quot;</i> of Egana. How can this be, when 10% of its holding 
company had been sold, partly to an Upbest-related company? You might think that 
Upbest had a conflict of interest giving that advice, but they obviously didn't 
think so.</p>
<h3>Accounting change saves Egana 2003 profit</h3>
<p>In its May-03 accounts in 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031022/00048/EWF121.pdf">note 2(b)(iii)</a>, Egana changed its accounting policy 
for translation of foreign currencies. It decided that, even though intra-group 
transactions normally disappear on consolidation, it would treat intra-group 
balances denominated in foreign currencies as a <i>&quot;commitment to convert one 
currency into another&quot;.</i> Conveniently, this meant that part of its 
acquisition cost of Junghans Germany in 2000, amounting to EUR62m, it would now 
regard as having appreciated by $136.4m, which it booked to the profit and loss 
account. Without this, Egana would not have made the net profit of $105.9m in 
the year to May-03, but would have made a loss.</p>
<p>We strongly disagree with this accounting 
treatment and have never seen anything like it. A group should not be able to generate a consolidated profit (or 
loss) simply by denominating intra-group balances in foreign currencies. It is 
the external assets and liabilities, and only these, which matter.</p>
<p>In the May-04 year, Egana booked a $11.2m gain under the accounting policy we 
question, and in the May-05 year, a gain of $5.0m. In the May-06 year, the 
accounting policy was changed and it appears that they will no longer treat 
intra-group balances in this way.</p>
<h3>3 auditors in 3 years</h3>
<p>PriceWaterhouseCoopers gave Egana a clean audit for the May-03 year, but
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040602/LTN20040602067.pdf">
resigned</a> on 28-May-04, just 3 days before the next year end. Egana said it 
had asked them to resign in order to cut costs, and the board appointed RSM 
Nelson Wheeler, who gave a clean report for the May-04 year. RSM Nelson Wheeler
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050413/LTN20050413018.pdf">
resigned</a> on 11-Apr-05, <i>&quot;solely for audit fee competitiveness reason, 
which is in line with [Egana]'s policy to control and reduce the operating 
costs.&quot;</i> The board appointed Baker Tilly instead, who gave a clean report on 
the May-05 and May-06 accounts.</p>
<h3>Research promotion</h3>
<p>Back in the dark age before annual reports were online (pre-2001), <i>
Webb-site.com</i> gathered reports by asking all the listed companies or their 
registrars to put us on their non-shareholder mailing lists. Most did. 
Unusually, in Egana's case, this also resulted in us being bombarded with 
research reports, usually from tiny brokerage houses, including Upbest, under 
covering letters from Egana's directors. Even Tonic, Egana's associate, was 
distributing positive research on Egana. Subtle it wasn't. We've uploaded a 
couple of <a target="_blank" href="../codocs/Egana990517.pdf">examples</a> of 
such letters to show you what we mean. </p>
<h3>Other directorships</h3>
<p>Mr Wong also served, until he resigned today, as an INED of 4 companies in the Yugang group - Yugang International 
Ltd (0613), Y.T. Realty Group Ltd (0075), C C Land Holdings Ltd (1224) and 
Cross-Harbour Holdings Ltd (0032).</p>
<p>Apart from Mr Wong, another common director is Andy Ng Yick Man, a teaching fellow at CUHK, who 
is an INED of Incutech (since 28-May-04) and Egana (since 1-Jun-04) and has now 
joined Upbest (16-Jul-07) and UBA (17-Jul-07) as an INED. This obviously 
conflicts him out of advising on transactions between Upbest and UBA or between Upbest 
and Incutech, since he would be on both sides.</p>
<h3>Richemont terminates investment</h3>
<p>On 16-Aug-06, Egana
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060817/LTN20060817026.pdf">
announced</a> that Swiss-based luxury goods firm
<a target="_blank" href="http://www.richemont.com">Compagnie Financiere 
Richemont SA</a> would buy a 30% stake in Joint Asset Ltd, which would own 
33.33% of Egana, to be transferred from the family trust of Egana's Chairman and 
Chief Executive Hans-Joerg Seeberger in Egana. The trust would retain the other 
70% of Joint Asset Ltd. In effect, Richemont was buying an 11.11% stake in Egana 
from Mr Seeberger. Less than a year later, on 11-Jul-07, Egana
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070711/LTN20070711424.pdf">
announced</a> that Mr Seeberger had bought back the stake from Richemont. 
Financial terms in both cases were not disclosed.</p>
<h3>Conclusions</h3>
<p>Reading through the accounts, we get a similar sensation to what we felt when 
reading the accounts of <a target="_blank" href="../dbpub/articles.asp?p=4920">Moulin Global Eyecare 
Holdings Ltd</a> or <a target="_blank" href="../dbpub/articles.asp?p=4929">Ocean Grand Holdings Ltd</a> 
(1220) and its subsidiary <a target="_blank" href="../dbpub/articles.asp?p=17952">Ocean Grand 
Chemicals Holdings Ltd</a> (2882) a few years ago, before they blew up, and a 
weird sense of <i>deja vu</i> about that gas transaction. Of course, we could be proven wrong, but if Egana was the last stock in the market, we wouldn't own 
it or lend to it. Upbest, Incutech and UBA should also be avoided, of course.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=7351">BAKER GROUP INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4993">China Merchants Land Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16197">DT Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7054">EGANA JEWELLERY & PEARLS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2078">EGANAGOLDPFEIL (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4802">GRAND FIELD GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9843">UBA INVESTMENTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11823">UPBEST GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=92">Accounting problems</a></li>
				
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