
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

<script type="text/javascript">document.title="Byford bubble";</script>

	<div class="summary">Investors should beware of a bubble in Byford (8272), which boasts two celebrity shareholders - New World Development's Cheng Yu Tung and Angela Leong, a wife of casino tycoon Stanley Ho. Both apparently paid 186x net asset value for the shares.</div>

<h2 class="center">Byford bubble<br>
<span class="headlinedate">1 June 2009</span></h2>
<p>Shareholders and potential investors in
<a href="../dbpub/orgdata.asp?p=18177">Byford International Ltd</a> (<strong>Byford</strong>, 
8272) should beware of a bubble. At lunchtime today, the underwear seller and licensor (for now at 
least) closed at 
$0.66, valuing the company (including a pending placement) at 
HK$1,585m (US$204m), or 13.9 times its pro forma net assets.</p>
<h3>Controlling shareholder</h3>
<p>The largest shareholder is Winky Chan Yuen Fan (<strong>Ms Chan</strong>), 
who owns 58.40% of Byford (before the current placing), of which 50.44% has been
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=105239&amp;lang=EN&amp;dia=Y">
pledged</a> to <a href="../dbpub/orgdata.asp?p=25548">Kingston Finance Ltd</a> since 11-Nov-08. She is not on the board of 
directors and we cannot find any other trace of her. We wonder whether Winky has 
a brother called Noddy ;-).</p>
<p>On 29-Jul-07, Ms Chan
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070729/GLN20070729000.pdf">
purchased</a> 149,254,990 shares (74.63%) of Byford for $0.63 per share ($0.063 
split-adjusted), or 
HK$94.03m in total. Ms Chan's purchase triggered a mandatory general offer at 
$0.63, made on her behalf by <a href="../dbpub/orgdata.asp?p=14367">Get Nice 
Securities Ltd</a>, although she did not wish to privatise Byford. According to 
the
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20070817/GLN20070817007.pdf">
offer document</a> dated 17-Aug-07, she &quot;has over 20 years of extensive 
experience in trading and managing garment business and had previously owned a 
garment factory.&quot; At the time, she did not have &quot;any concrete plan on the 
appointment of Directors to the Board&quot; - even though it was expected that all 
the incumbent directors would resign on the closing date of the offer.</p>
<p>The share price took off after Ms Chan's purchase was announced, prompting a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070822/GLN20070822021.pdf">
concentration warning</a> on 22-Aug-07 that, as of 30-Jul-07, Ms Chan and 14 
other investors held 95.72% of Byford, according to the SFC. Not surprisingly, with the share price at 
$5.25,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070907/GLN20070907025.pdf">
nobody accepted</a> the offer when it closed on 7-Sep-07. That day, all the 
directors duly
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20070817/GLN20070817007.pdf">
resigned</a>, and a new board was installed. Ms Chan obviously decided to take a 
&quot;hands off&quot; approach and did not join the board. 
<a href="../dbpub/natperson.asp?p=32442">Ms Julissa Fong Man</a> (<strong>Ms 
Fong</strong>) was appointed as Chairperson, Ms 
<a href="../dbpub/natperson.asp?p=40980">Jeremy Wong Yuet May</a> (<strong>Ms 
Wong</strong>, yes, a girl called Jeremy) was appointed as CEO and executive 
director, and the required 3 INEDs were appointed. The announcement failed to 
mention that Ms Fong was a Responsible Officer of Ms Chan's financial adviser on 
the offer, <a href="../dbpub/orgdata.asp?p=32441">Veda Capital Ltd</a> (<strong>Veda 
Capital</strong>). The independent financial adviser on the offer was
<a href="../dbpub/orgdata.asp?p=16415">Partners Capital International Ltd</a>.</p>
<p>On 25-Sep-07, Byford, advised by Veda Capital,
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20070927/GLN20070927065.pdf">
announced</a> a 10:1 stock split which took effect on 30-Oct-07.</p>
<h3>Unlisted warrants</h3>
<p>On 15-Oct-07 Byford
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20071016/GLN20071016002.pdf">
announced</a> a placing of 200m unlisted warrants via
<a href="../dbpub/orgdata.asp?p=49327">Excalibur Securities Ltd</a> (<strong>Excalibur</strong>) 
and advised by Veda Capital. The issue was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20071026/GLN20071026073.pdf">
expanded</a> to 400m warrants on 26-Oct-07. The warrants had an exercise price 
of $1.20 per split share and 18-month maturity, and were issued for just $0.015 
each, raising $6.0m gross and $5.7m net, despite having an intrinsic value of 
$0.80 per warrant based on the market price of $2 (split-adjusted) immediately 
before the placing was announced. According to the 30-Apr-08 annual report, the 
warrants went to 9 individuals. 1m warrants were exercised on 24-Dec-07 and 
another 1m on 21-Jan-08. The warrants will expire on 12-Jun-09 and are currently 
underwater.</p>
<h3>Pharmaceuticals MOU</h3>
<p>In between the two tranches of the warrant placing, on 23-Oct-07, Super 
League Investments Ltd (<strong>Super League</strong>), a BVI company owned by 
Byford,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20071023/GLN20071023083.pdf">
signed</a> an MOU regarding a possible purchase of an undetermined stake in 
Wisdom First Investments Ltd (<strong>Wisdom First</strong>), a BVI company, 
from Cherry Yeung Chiu Lan, an &quot;independent third party&quot;. We cannot find any 
trace of her online. Wisdom First was &quot;principally engaged in pharmaceutical and 
related business in the PRC&quot;. The MOU had a 90-day exclusivity period, but the 
purported due diligence dragged on, racking up $766k in expenses up to 30-Apr-08 and another $430k in the quarter to 31-Jul-08. Finally on 13-Nov-08, 
Byford agreed to sell Super League to Sina Dragon Group Ltd (<strong>Sina Dragon</strong>) 
for $10,000. This wasn't disclosed until the interim results
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081211/GLN20081211023.pdf">
announcement</a> on 11-Dec-08, and even then, no mention of the MOU was made. 
The owner of Sina Dragon was not disclosed and we cannot find any trace of it 
online. Perhaps Wisdom First should be renamed &quot;Phantom Pharmaceuticals&quot;.</p>
<h3>Tycoon investors</h3>
<p>Byford's stock reached an all-time intra-day high of $3.00 and daily high of 
$2.65 on 30-Oct-07, the same day the HSI reached its daily record of 31,638. 
That spike briefly valued Byford at $6bn. On that day, Ms Chan
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20071030/GLN20071030109.pdf">
sold</a> 110.45m split shares at $1.70 per share through Excalibur, cutting her 
stake to 69.10%. 110m of these (or 11m at $17 pre-split) were
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=21519&amp;lang=EN&amp;dia=Y">
taken up</a> by <a href="../dbpub/natperson.asp?p=13934">Angela Leong On Kei</a>, 
one of the wives of casino tycoon Stanley Ho Hung Sun (<strong>Mr Ho</strong>). 
On 15-Nov-07, Ms Chan
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20071115/GLN20071115101.pdf">
sold</a> another 132m shares at $1.70 per share through &quot;a placing agent&quot; 
(our
<a href="../ccass/chldchg.asp?i=3408&amp;d=2007-11-19">
CCASS Analysis</a> shows that it was Excalibur), 
cutting her stake to 62.5%. 110m of these were
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=21941&amp;lang=EN&amp;dia=Y">taken up</a> by New World Development tycoon
<a href="../dbpub/natperson.asp?p=62">Cheng Yu Tung</a>, who is also a long-time 
shareholder in Mr Ho's private flagship STDM. The deals implied a valuation of 
$3.4bn on Byford. At the time, it had shareholders' equity (net of a recent 
dividend) of just $18.2m. You 
might wonder why two such savvy investors were each willing to take a 
discloseable 5.5% shareholding in a listed company for more than 186 times its 
net asset value, assuming that they paid what they said they did without any 
undisclosed put option.</p>
<p>We've analysed Ms Chan's dealings in Byford. We had to make two estimates 
based on CCASS movements and volume-weighted average price (VWAP), because she 
is not a director, so she only has to disclose dealings which move her holding 
through a 1% boundary. On the face of it, we estimate that Ms Chan has, up to 
the quarterly report of 31-Jan-09, raised net cash from her Byford trading of 
about HK$344m. So she has more than got her money back, if you believe the 
figures. Despite this, her shares are still pledged to Kingston Finance 
Ltd:</p>
<img alt="" class="center" src="../images/Byford1.gif">
<p>On 22-Nov-07 <a href="../dbpub/natperson.asp?p=41734">Ms Rainbow Chan Lai Kwan</a> was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20071122/GLN20071122052.pdf">
appointed</a> as executive director and CEO, replacing Ms Wong who remained as 
an ED. On 23-Apr-08, Ms Fong
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080423/GLN20080423057.pdf">
resigned</a> as Chairman and ED. As far as we know, Byford has not had a 
Chairperson since then. On 2-May-08, <a href="../dbpub/natperson.asp?p=45224">Mr Chan Fu Kei</a> was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080502/GLN20080502123.pdf">
appointed</a> as an ED.</p>
<p>On 27-Oct-08, <a href="../dbpub/natarts.asp?p=46787">Lawrence Woo Hing Keung</a> 
(<strong>Mr Woo</strong>) was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20081027/GLN20081027085.pdf">appointed</a> as an ED. He has achieved some minor 
fame in a court case against VC Brokerage Ltd (then CEF Brokerage Ltd) when he 
claimed that the broker owed him for an inability to complete a short sale of 
China Mobile shares in the pre-IPO grey market in 1997. The Court of First 
Instance and the Court of Appeal rejected his claim.</p>
<h3>Pending placing</h3>
<p>On 9-Apr-09, Byford
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090409/GLN20090409060.pdf">
launched</a> a best-efforts placing of 400m new shares at $0.20 per share 
through <a href="../dbpub/orgdata.asp?p=18892">Fortune (HK) Securities Ltd</a> 
(<strong>Fortune Securities</strong>) 
&quot;to strengthen the capital base and to explore potential business and take up 
investment opportunities in the future&quot;. The placing would raise $80m gross 
($77.8m net) for 16.65% of the enlarged share capital, 
exhausting the general mandate. The placing has not yet been completed. Fortune 
Securities is owned by <a href="../dbpub/orgdata.asp?p=13901">China Fortune 
Group Ltd</a> (<strong>China Fortune</strong>, 0290), which also owns 51% of 
Excalibur and, advised by Veda Capital, it has
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090508/LTN20090508647.pdf">
agreed</a> to acquire the rest.</p>
<p>On 6-May-09, Byford
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20090515/GLN20090515009.pdf">
agreed</a> to sell its core business for HK$45m, for net proceeds of $43m and a 
gain of $27.5m. The advisor is Veda Capital. The announcement coyly stated that 
&quot;The Company will review the situation of Rule 19.82 of the GEM Listing Rules 
upon Completion&quot;. You all know what that rule says, right? Of course not, and 
the company should have explained it. What the rule
<a target="_blank" href="http://www.hkex.com.hk/rule/gemrule/Chapter_19.pdf">
says</a> is that if a company becomes a cash shell then it will not be regarded 
as suitable for listing and its shares will be suspended.</p>
<p>At 31-Jan-09, Byford had equity of just $8.6m. Assuming that the placing and 
sale of the core business completes, then Byford would have 2,402m shares 
outstanding, and net assets of about $114m, or $0.047 per share. But the current 
market price of $0.66 implies a valuation of $1,585m, or 13.9 times the 
net asset value. If the placing does not complete, then NAV will be just $36.1m 
or $0.018 per share.</p>
<h3>Shareholders sell</h3>
<p>On 31-Mar-09, <a href="../dbpub/orgdata.asp?p=13754">China Bio-Med 
Regeneration Technology Ltd</a> (<strong>CBRT</strong>, 8158)
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20090331/GLN20090331106.pdf">
announced</a> that it was selling a portfolio of listed shares and unlisted 
warrants for $17m gross ($16.5m net) through Excalibur. These included 10m 
shares of Byford. This portfolio was probably acquired at some point after 31-Jul-08, as 
CBRT did not suffer any gain or losses on financial assets until the quarter 
ended 31-Oct-08. Incidentally, <a href="../dbpub/positions.asp?p=22923">Joseph 
Orr Wai Shing</a> is an INED of both Byford and CBRT.</p>
<p>On 4-May-09, <a href="../dbpub/orgdata.asp?p=17410">PME Group Ltd</a> (<strong>PME</strong>, 
0379), which was also the largest shareholder of CBRT,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090506/LTN20090506007.pdf">
sold</a> 50m shares (2.5%) of Byford in the market at $0.35 to raise $17.5m 
gross ($17.4m net). Our
<a href="../ccass/chldchg.asp?i=3408&amp;d=2009-05-06">
CCASS Analysis</a> for the settlement date shows that these shares probably 
moved from the custody of Kingston Securities Ltd to Fortune Securities.</p>
<h3>To be continued</h3>
<p>Byford is just part of a web of companies and transactions which <em>
Webb-site.com</em> is investigating, including PME, CBRT and China Fortune, 
amongst others. Stay tuned for part 2.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17410">China Ever Grand Financial Leasing Group Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13754">China Regenerative Medicine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18177">Chinese Food and Beverage Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18892">FORTUNE (HK) SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14367">GET NICE SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13901">GoFintech Quantum Innovation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=25548">KINGSTON FINANCE LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16415">PARTNERS CAPITAL INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49327">SINO CAPITAL SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32441">VEDA CAPITAL LIMITED (HK)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=62">Cheng, Yu Tung (1925-08-27)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=32442">Fong, Julisa Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13934">Leong, Angela On Kei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22923">Orr, Joseph Wai Shing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40980">Wong, Jeremy Yuet May</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46787">Woo, Lawrence Hing Keung</a></li>
				
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