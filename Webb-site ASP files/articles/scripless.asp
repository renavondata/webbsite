
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
.auto-style2 {
	font-size: 1em;
}
</style>
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

<script type="text/javascript">document.title="Stop the Scripless U-turn";</script>

	<div class="summary">Investors were in the dark for 4 years about plans to tear up a model that was first recommended by the Hay Davison Report in 1988, has worked in Australia since 1999, and was legislated in HK in 2015 but never actioned. Our extensive discussions with SFC and HKEX reveal no legitimate issues. We urge legislators to reject this U-turn and the SFC to proceed with the legislated model. The stench of vested interests is overpowering.</div>

<h2 class="center">Stop the Scripless U-turn<br>
<span class="headlinedate">30 April 2019</span></h2>
<p>To: The Securities and Futures Commission (<strong>SFC</strong>) and<br>The 
Financial Affairs Panel, HKSAR Legislative Council</p>
<h3>Introduction</h3>
<p>This submission responds to the recent and misleadingly-titled "<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=19CP1" target="_blank">Joint 
Consultation Paper on a Revised Operational Model for Implementing an 
Uncertificated Securities Market in Hong Kong</a>". This is not so much a 
"revised operational model" as a wholesale destruction of a model that has 
already been legislated, reversing benefits that were first advocated by a 
Government-appointed committee 31 years ago. </p>
<p>The paper claims that after 13 years of previous consultations culminating in 
legislation that was passed in 2015, the split-register model, which has worked 
in other jurisdictions, is unworkable in HK. The paper claims that new but 
unattributed "market concerns" mean we must now retain a single nominee for all 
shares in the clearing system, entrenching an HKEX rent-seeking monopoly as a 
layer in the custody chain and denying legal title and the accompanying 
shareholder rights to those who wish to hold shares available for sale in the 
clearing system.</p>
<p>We urge Legislators to reject this post-legislative U-turn, which would 
require fresh legislation, and we urge the SFC to push ahead with the legislated 
model. After extensive discussions with the SFC and HKEX since the consultation 
paper was published, we can assure you that they have been unable to identify 
any legitimate concerns that cannot be addressed within the legislated model. 
Furthermore, virtually every operational and financial aspect of the existing clearing and 
settlement system would be undisturbed by the legislated model, leaving minimal 
implementation expenses for the small brokers who have an outsized political 
influence in Hong Kong, so you shouldn't worry on that count either.</p>
<p>Investors have been kept in the dark for 4 years since legislation was 
passed, and it now appears that their rights were being negotiated away behind 
closed doors, for no benefit.</p>
<h3>Background</h3>
<p>Few things in Hong Kong, with the possible exception of democracy and 
<a href="roadcartels.asp">electronic road pricing</a>, have taken so long and yet still seem so far away as a 
scripless or "uncertificated" securities market (<strong>USM</strong>). To find 
the first official proposal you have to go back not to the Global Financial Crisis of 2008, 
nor the Asian Financial Crisis of 1997-8, but all the way to the global crash of 
Oct-1987, when HK famously shut its markets for a week amid a looming default in 
the Futures Exchange.</p>
<p>Following that, on 16-Nov-1987 the Government appointed the 
<a href="../dbpub/officers.asp?p=29372">Securities Review 
Committee</a> (<strong>SRC</strong>) to review the operation and regulation of 
the Hong Kong Securities Industry. On 27-May-1988 the SRC, chaired by Ian Hay Davison, 
delivered its
<a href="../codocs/HayDavisonReport.PDF" target="_blank">report</a>, often cited as the "Hay Davison 
Report". Amongst other things, it led to the establishment of the SFC. In
<a href="https://www.fstb.gov.hk/fsb/ppr/report/doc/DAVISON_E_CH5.PDF" target="_blank">
Chapter 5</a> you will find, after 
extensive analysis of the alternatives:</p>
<blockquote>"5.116. We believe that, given the importance of disclosure and 
	transparency in shareownership, Hong Kong should so far as possible avoid 
	adopting measures which would reduce the number of direct company 
	shareholders.<br><br>5.117. We therefore recommend that the central clearing and 
settlement system should be built on a system of uncertificated book-entry 
transfers, with the clearing house's transfers being valid instruments of 
title."</blockquote>
<p>Of course, that transparency is a two-way street: intermediaries often won't tell you about 
shareholder meetings, and getting someone else to vote your shares on your 
behalf makes voting much harder. <strong>The greatest benefit of a USM is not that it 
avoids the issue of paper certificates, but that it should give people full 
shareholder rights on an electronic register of members (ROM), while at the same 
time keeping their shares available for sale at the press of a button.</strong></p>
<h3>Immobilised certificates</h3>
<p>Unfortunately, when the 
<a href="https://www.hkex.com.hk/Services/Settlement-and-Depository/Settlement?sc_lang=en" target="_blank">Central Clearing and Automated Settlement System</a> (<strong>CCASS</strong>) 
was launched in 1992 along with its operator Hong Kong Securities Clearing 
Company Ltd (<strong>HKSCC</strong>), it didn't go that far. CCASS is a 
depository system, with immobilised share certificates in the name of a 
subsidiary, HKSCC Nominees Ltd (<strong>HKSCCN</strong>) which, to this day, 
is the only registered shareholder, and therefore the only holder of shareholder 
rights, in respect of any share which is in the clearing system and saleable on 
the market operated by the Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>).</p>
<p>The vast majority of the public float of all companies is held in CCASS by its 
"Participants" including custodians, brokers, and to a smaller extent, several 
thousand Investor Participants (<strong>IPs</strong>) including our editor. An 
IP acts as her own custodian, not having to trust brokers or banks with the 
custody of her shares, but keeping the shares in the system and therefore 
holding them via HKSCCN.</p>
<p>After the CCASS launch, shares within the public float 
rapidly came into CCASS and were transferred to 
HKSCCN, to be available for 
settlement of trades, reducing the number of shareholders as the SRC had feared. The current structure looks like this (all images in this 
article are from 
SFC/HKEX consultation papers/web site):</p>
<img class="center" alt="CCASS 1998" src="../images/CCASS1998Model.png"><p>We pause to note that HKSCC started out as a not-for-profit company, and as 
its volumes grew, its tariff was progressively cut in order not to start 
hoarding profits (incidentally, unlike the .HK <a href="hkirc2.asp">
domain registry</a>). Those progressive price-cuts came to an end in 1999, when 
the Government <a href="uturn.asp">threw HKSCC into the merger</a> 
with SEHK and the Hong Kong Futures Exchange, making it a for-profit subsidiary 
of <a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> (<strong>HKEX</strong>, 0388) 
which was listed on SEHK in 2000. To take just one part of its fee 
tariff: HKSCC cut its stock settlement fee by 80% between 1992 and 1999, but has 
frozen it since it became for-profit. HKEX continues to milk the HKSCC cash cow, and has a 
fiduciary duty to its shareholders to do so. The Government
<a href="http://www.hklii.hk/eng/hk/legis/reg/619B/sch.html" target="_blank">has 
exempted</a> HKEX and its subsidiaries from the Competition Ordinance, so it is 
free to abuse its monopolies, although it requires SFC approval for any price 
increases.</p>
<p>The merger and subsequent government control of HKEX sprang from the Asian 
Financial Crisis which rolled through Hong Kong in 1998. In a panicked response 
to pressure on the Hong Kong dollar peg, the Government 
<a href="interven.asp">intervened in the stock 
market</a>, deliberately bidding up prices of index members to hurt those who had 
sold futures contracts and bet against the currency, but in the process forever 
soiling the market with the moral hazard of intervention.</p>
<p>However, they got more stock than expected, about 15% of the public 
float, partly because short-sellers were not forced by HKSCC to settle on the 
usual T+2. Afterwards, in the Mar-<a href="https://www.budget.gov.hk/1999/english/bdgt1.htm#budget11" target="_blank">1999 
budget</a> (para 46-51), then-Financial Secretary Donald Tsang set about bringing 
the whole infrastructure under Government control to avoid a repeat. At the same 
time, he appointed the Steering Committee on Enhancement of 
Financial Infrastructure (<strong>SCEFI</strong>), led by then-SFC Chairman-CEO
<a href="../dbpub/positions.asp?p=12903">Andrew Sheng Len Tao</a>, to look at:</p>
<blockquote>"the infrastructure requirement for straight-through processing, 
e-commerce through internet trading and a fully scripless market for Hong Kong"</blockquote>
<p>The first <a href="../codocs/SCEFI1.pdf" target="_blank">SECFI report</a>, 
dated Sep-1999 and
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=99PR103" target="_blank">
released</a> on 12-Oct-1999, 11 years after the SRC report, again recommended moving towards a scripless 
securities market. It also recommended a single clearing arrangement for stocks, 
futures and options - something which never happened; only futures and options 
were
<a href="https://www.hkex.com.hk/Services/Clearing/Listed-Derivatives/Infrastructure?sc_lang=en" target="_blank">
combined into DCASS</a> in Apr-2004. Of course, any futures contract is
<a href="https://www.investopedia.com/terms/s/syntheticfuturescontract.asp" target="_blank">
mathematically equal</a> to holding a long call option and a short put option at the same strike price 
and expiry date.</p>
<h3>Consultations on scripless</h3>
<p>After the SCEFI report, there then followed a series of consultations and conclusions:</p>
<ul>
	<li>On 4-Feb-2002, an SFC
	<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=02CP2" target="_blank">
	consultation paper</a> on proposals for a scripless securities market.</li>
	<li>The SCEFI band came back together for a sequel, the
	<a href="https://www.sfc.hk/web/doc/EN/speeches/public/scefi_2_report.pdf" target="_blank">
	SCEFI II report</a>, dated Aug-2002 but
	<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=02PR245" target="_blank">
	published</a> on 9-Dec-2002, which mentioned the ongoing scripless 
	proposals.</li>
	<li>On 30-Sep-2003, the SFC's
	<a href="https://www.sfc.hk/web/doc/EN/speeches/public/consult/scripless_consult_conclusion_eng.pdf" target="_blank">
	conclusions paper</a> was published. It concluded (as proposed) that 
	there would be a 2-part "split-register" model, with the existing CCASS 
	ledger becoming the "CCASS Register" and the other part being the "Issuer 
	Register" maintained by the issuer's registrar. For a transitional period, 
	the issuer and its registrar may continue to allow certificated shares on 
	the Issuer Register. The conclusion looked like this:</li>
</ul>
<img class="center" alt="CCASS 2002 Model" src="../images/CCASS2002model.png">
<ul>
	<li>On 24-Oct-2003, an HKEX
	<a href="https://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/Before-2005/scripless_e.pdf?la=en" target="_blank">
	consultation paper</a> on a "Proposed Operational Model for a Scripless 
	Securities Market". This paper went deeper into the mechanics of the 
	split-register model. The SFC had formed a Scripless Implementation Working 
	Group, a Scripless Model Technical Working Group 
	and 3 focus groups. The members included the 
	<a href="../dbpub/orgdata.asp?p=42202">Federation of Share Registrars</a> 
	(<strong>FSR</strong>), brokers, custodians, issuers and HKEX.</li>
	<li>On 31-May-2004, an HKEX
	<a href="https://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/Before-2005/hkex-con(e).pdf?la=en" target="_blank">
	conclusions paper</a>. This self-interested outcome proposed reverting to a single register of 
	members, and keeping all CCASS holdings in the name of HKSCCN, basically 
	throwing out the main benefit of an uncertificated securities market. 
	The only residual benefit was that HKSCCN would no longer need to maintain a 
	physical vault full of share certificates, because it could hold scripless 
	securities on the register. To understand the vested interests of HKEX, you 
	need to know that HKSCC collects fees on dividends which are paid to HKSCCN 
	before distribution to Participants, fees on custody of the shares, and a 
	"registration and transfer fee" on net increases in CCASS Participant 
	balances between book closure dates for distributions. A
	<a href="https://www.thechinfamily.hk/web/en/financial-products/financial-intermediaries/broker/fees-and-charges/dividend-collection.html" target="_blank">
	user-friendly explanation</a> is here. There are a range of other fees such 
	as a "corporate action fee" to take up rights issues. So 
	after being butchered by HKEX, the proposed USM model was this (yes, even the 
	colours are sickening):</li>
</ul>
<img class="center" alt="CCASS 2004 Model" src="../images/CCASS2004model.png">
<ul>
	<li>Then there was a gap of over 5 years, while the SFC and HKEX presumably jostled for 
	position, with the SFC wanting to do the right thing and HKEX wanting to do 
	the vested-interest thing.</li>
	<li>On 30-Dec-2009, a joint SFC-HKEX-FSR
	<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=09CP5" target="_blank">
	consultation paper</a> on "A Proposed Operational Model for Implementing a 
	Scripless Securities Market" basically reversed the HKEX decision and 
	relaunched the split-register model, giving renewed hope that people could 
	hold shares within CCASS and at the same time enjoy the rights of a 
	registered shareholder. The only and minor difference to the 2002 
	proposal was that the registrars would have their own accounts within CCASS, 
	for shareholders who wanted to hold uncertificated shares with the registrar 
	(an "Issuer Sponsored Account" rather than with a broker or custodian (a 
	"Participant Sponsored Account"). This would mean that only certificated 
	shares would be held outside CCASS. This is a minor difference because, 
	either way, the registrar and CCASS databases still need to be synchronised 
	to allow movements between them, at least until certificated shares are 
	finally abolished.</li>
	<li>A
	<a href="https://www.sfc.hk/web/doc/EN/speeches/consult/ConsultationConclusions_Paper_Final_Eng.pdf" target="_blank">
	conclusions paper</a> on 21-Sep-2010, deciding to go ahead as proposed, with 
	minor changes. This model, now known as the "<strong>2010 Model</strong>", then moved into 
	its legislative phase. It looked like this:</li>
</ul>
<img class="center" alt="CCASS 2010 Model" src="../images/CCASS2010model.png">
<ul>
	<li>In Jun-2014, after four years of feverish drafting in obscurity, the Government introduced a bill 
	to the Legislative Council (<strong>LegCo</strong>), and a
	<a href="https://www.legco.gov.hk/yr13-14/english/bc/bc09/general/bc09.htm" target="_blank">
	Bills Committee</a> formed to consider it. The Bill was passed as the
	<a href="https://www.legco.gov.hk/yr14-15/english/ord/ord005-2015-e.pdf" target="_blank">
	Securities and Futures and Companies Legislation (Uncertificated Securities 
	Amendment) Ordinance 2015</a> and
	<a href="https://www.info.gov.hk/gia/general/201503/27/P201503260741.htm" target="_blank">
	gazetted</a> on 27-Mar-1015. The key part of this law is to introduce legal 
	title to holders of shares in an "uncertificated securities market system" 
	operated by a "system operator" (in the first instance, HKSCC) under the 
	Uncertificated Securities Market Rules (<strong>USMR</strong>) which would 
	be made as subsidiary legislation by the SFC. It splits the register of 
	members into 2 parts, a "members register (certificated shares)" and a 
	"members register (uncertificated shares)". The law also provides for 
	application to corporations domiciled overseas as long as the law of their 
	place of incorporation doesn't conflict with it. That's important because 
	about 91% of HK-listed companies are <a href="../dbpub/domicile.asp">
	domiciled</a> outside HK. </li>
</ul>
<h3>What happened next?</h3>
<p>That history takes us up to 2015, a mere 27 years after the SRC Report, and 
all that remained is for the systems to be put in place, databases connected, 
and the SFC to publish, consult upon, and conclude the subsidiary legislation. At Webb-site, we sat back, 
believing that after not one but 3 different 
consultations and legislative passage, it was just a matter of time before we 
finally get shareholder rights in the clearing system. In its 2015 annual 
report, the SFC wrote:</p>
<blockquote>"The Securities and Futures and Companies Legislation 
(Uncertificated Securities Market Amendment) Ordinance 2015, enacted in March 
2015, will allow investors to legally hold and transfer listed securities in a 
paperless form. We plan to begin a consultation on subsidiary legislation which 
sets out technical and operational details of the new regime in 2015."</blockquote>
<p>That didn't happen, but no worries, in the 2016 report they wrote:</p>
<blockquote>"we are working with HKEX on a review of the current clearing and 
settlement arrangements. One objective is to identify changes that may be needed 
to implement an uncertificated securities market, where legal title to 
securities may be held and transferred electronically. A formal consultation on 
the proposed changes will be conducted if necessary."</blockquote>
<p>OK, no mention of subsidiary legislation, but in 2017 report they wrote:</p>
<blockquote>"In preparation for the introduction of a paperless securities 
market, we are reviewing clearing and settlement arrangements with HKEX to 
identify the changes needed and the potential impact on market participants."</blockquote>
<p>Hey, what about the impact on investors? We're getting old waiting. Then in 
the 2018 report they wrote:</p>
<blockquote>"We are also working with key stakeholders to identify the changes 
needed to implement a paperless securities market and plan to consult on the 
proposed operational model in 2018."</blockquote>
<h3>Shocking U-Turn</h3>
<p>After keeping investors in the dark for nearly 4 years, on 28-Jan-2019, the 
regulators shocked us with a joint SFC-HKEX-FSR
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=19CP1" target="_blank">
consultation paper</a> which basically proposes to pull the plug on 31 years of 
development, or at the very least on a system that had been designed, consulted 
upon (thrice) and subject to legislative scrutiny over a combined 13-year period 
from 2002 to 2015. Pitched as a "revised operational model", this is in reality 
a U-turn, taking us back to the HKEX conclusions of May-2004 in which HKSCCN would 
continue to operate as a nominee shareholder on behalf of all CCASS Participants, 
skimming fees off the book and denying investors their long-awaited shareholder 
rights within the CCASS system (but see below). The 2019 proposal looks like this:</p>
<img class="center" alt="CCASS 2019 Model" src="../images/CCASS2019model.png">
<p>Despite every conceivable opportunity since 2002 for deal-breaking technical objections 
to be raised, the trio now discovered (para 6) that:</p>
<blockquote>"Subsequently however, in the course of developing the details of 
the 2010 Model, market concerns were raised about the limitations of that model. 
Specifically, there were concerns that the model would compromise certain 
settlement efficiencies currently enjoyed by market participants, and have a 
significant impact on their liquidity needs. In view of this, we have had to 
revisit the 2010 Model and identify an alternative approach."</blockquote>
<p>Now Webb-site is nothing if not rational and reasonable, so we have kept 
quiet on this while your editor met with the SFC and HKEX (together) twice since 
the paper was published, to ascertain whether there is any legitimacy to these 
so-called "market concerns" (the source of which has not been identified), that 
is, anything that cannot be addressed within the 2010 Model.</p>
<p>After several hours of discussion, we can assure you, Dear Reader, and Dear 
Legislator, there are no legitimate concerns, only a baseless fear of change at 
the SFC, and opposition from HKEX which has a vested financial interest in the 
status quo.</p>
<h3>In CCP We Trust</h3>
<p>The entire market has, since CCASS was introduced in 1992, operated on the 
basis of "In CCP We Trust". Not the Chinese Communist Party (one could debate 
that), but the Central Counter-Party (<strong>CCP</strong>) which is HKSCC. What 
actually happens when you trade shares on the HK exchange is that your contract 
is "novated" into two "Market Contracts", one in which the selling participant 
sells stock to the CCP, and one in which the buying participant buys stock from 
the CCP. All transactions between the CCP and the same participant in the same 
stock on the same day are netted off, leaving a net stock balance to be 
transferred to or from the CCP. Similarly, all payment obligations on the same day 
are also netted, which reduces the liquidity needs of the brokers and other 
participants, leaving a net payment to be made to or from the CCP.</p>
<p>So for example, clients of broker-A may have collectively bought and 
sold large amounts of stock-B, but it is the net purchase or sale that gets 
settled with CCASS, and if the broker is a net seller, it delivers shares in 
stock-B to the CCP. Across all its securities transactions, it might be a net 
buyer, and owe money, or a net seller, and receive money from the CCP. This 
system for on-market transactions is called the
	<a href="https://www.hkex.com.hk/-/media/HKEX-Market/Services/Rules-and-Forms-and-Fees/Rules/HKSCC/General-Rules-of-CCASS/R33.pdf?la=en" target="_blank">
	Continuous Net Settlement</a> (<strong>CNS</strong>) System, illustrated in 
this HKEX diagram:</p>
<img class="center" alt="CNS System" src="../images/CNSsystem.png">
<p>There is a stage in CNS when interests in shares are delivered by CCASS Participants to 
	the CCP, but before the CCP actually pays the Participant any net cash that it is owed. 
The CCP has to be trusted to honour its payment obligations, and also to release 
shares to the receiving Participant upon payment. Given that the CCP is also the 
operator of CCASS which records all the movements of these interests in shares, 
it has a dual role anyway.</p>
<p>And why do we all trust the CCP? Because it is financially well-endowed with 
security deposits from broker-participants, by its own capital, by 
capital of its parent (HKEX) and ultimately by the political reality that it is 
systemically too important to be allowed to fail. If, for some bizarre reason, 
HKSCC couldn't settle its obligations, the HKSAR Government would have to step in with 
a lifeboat loan to avoid a catastrophic failure of HK's only stock market. The 
details of the risk management measures are
<a href="https://www.hkex.com.hk/Services/Clearing/Securities/Risk-Management/Margin?sc_lang=en" target="_blank">
on the HKEX site</a>.</p>
<h3>The "market concerns"</h3>
<p>The transfer of legal title on a share register is final (unless by court 
order). In law, the issuer of the shares only has to recognise its registered 
shareholders and nobody else. Any arrangement between the registered shareholder 
and a third party, often a nominee relationship, is of no concern to the issuer. The purported 
"market concerns" revolve around:</p>
<ol>
	<li>Under the current system, there are certain stages in the 
	clearing and settlement process when shares are placed into a recipient 
	account but marked "on-hold" until payment is made. Payment can be made 
	early, and the shares unlocked, if the buyer wants to gain access to the 
	stock, using a
	<a href="https://www.hkex.com.hk/-/media/HKEX-Market/Services/Clearing/Securities/Infrastructure/CCASS-3-Terminal/CCASS-Terminal-User-Guide-for-Participants/sect8_1_9.pdf?la=en" target="_blank">
	cash pre-payment instruction</a>.</li>
	<li>As mentioned, there is also a stage in the CNS when interests in shares are delivered by CCASS Participants to 
	HKSCC as the CCP, but before the CCP actually pays the participant any net cash it is owed.</li>
</ol>
<p>To resolve point 1, the way that a receiving Participant knows that share are 
available but on-hold is by making an
<a href="https://www.hkex.com.hk/-/media/HKEX-Market/Services/Clearing/Securities/Infrastructure/CCASS-3-Terminal/CCASS-Terminal-User-Guide-for-Participants/sect9_1_1.pdf?la=en" target="_blank">
electronic enquiry</a> through its CCASS terminal. Under the 2010 Model, the 
result of that enquiry would need to show shares which are now available, but 
still held by HKSCC as the CCP until the payment obligation is settled. That avoids 
transferring title from HKSCC to the recipient until payment has been made. The 
recipient, as always, has to trust the CCP that it will actually release the 
shares upon payment.</p>
<p>On point 2, in the present system, what the delivering participant transfers 
to the CCP is <em>interests</em> 
in shares held by the participant via HKSCCN. In the 2010 Model, the participant 
would transfer <em>legal title</em> to shares on an electronic register. In 
either case, 
there is a theoretical but remote risk that the CCP (HKSCC) will default on payment, 
and the Participant ends up with a debt owed by its novated counter-party, HKSCC. The introduction of 
scripless registration removes one layer of the nominee system (HKSCCN), but it 
doesn't change the financial risks of the parties involved, however remote. So 
the concern is a false one.</p>
<p>The same can be said of a transfer by a custodian or an investor participant 
to a broker for settlement of a sale, or in anticipation of a sale. When an intermediary (usually a <a href="../dbpub/subject.asp?c=104">broker</a>) 
collapses, as Peregrine, Lehman and C.A. Pacific did, any shares they hold on 
trust for their clients will be at risk, regardless of whether those shares are 
held as interests via a nominee (HKSCCN), or directly on a share register. Assets held 
for clients won't be the broker's assets in a liquidation, but there is always 
a risk of expropriation (theft). Whether and how much you trust your broker (or 
even your custodian) is up to 
you, and the 2010 Model does not change this.</p>
<h4>Non-CNS transactions</h4>
<p>For off-market transactions outside of CNS, any payment arrangements are a 
private matter between the buyer and seller, and if they wish to involve HKSCC, they 
can. Currently, off-market transactions can be settled Free Of Payment (<strong>FOP</strong>), 
or directly inside CCASS between the Participants using a Settlement Instruction 
(<strong>SI</strong>), but to ensure payment, even with so-called Delivery 
Versus Payment (<strong>DVP</strong>) or even "Real-time" DVP (<strong>RDP</strong>), 
there is an "on-hold" mechanism to lock the shares until payment is received, 
because it isn't instant. The process is illustrated in this HKEX diagram of the 
"Isolated Trade System":</p>
<img class="center" alt="Isolated Trade System" src="../images/IsolatedTradeSystem.png">
<p>There's really no such thing as real-time. Think of two people standing 
in a market, one holding a share certificate and one holding a bank note. Each 
grabs hold of one end of the other's paper. Who let's go first? The answer is to 
use a trusted intermediary, in this case, HKSCC, in effect, an escrow agent.</p>
<p>Under the 2010 Model, the transfer of share title to the buying 
Participant would be irreversible, so it must be the final step. The way to 
address that is, once again, for the selling Participant to trust HKSCC, but 
this time not as principal. The SI would cause shares to be transferred to HKSCC 
as nominee (agent) of the seller. The shares would then be released to the 
buying Participant upon confirmation by HKSCC of payment, failing which the 
shares would be transferred back by HKSCC (as nominee) to the selling 
Participant. This replicates the current "on-hold" system - the financial risks 
are the same, and the 2010 Model changes nothing in that respect.</p>
<h4>Summary</h4>
<p>If you've made it this far, then congratulations - you probably understand 
the 2010 Model better than some of the people trying to reverse it. To summarise, under the existing nominee model:</p>
<ul>
	<li>HKSCCN <span class="auto-style1">always</span> holds legal title to all 
	the shares in CCASS. Participants have no shareholder rights.</li>
	<li>As nominee, HKSCCN holds shares on trust for every CCASS Participant.</li>
	<li>In CNS, a net-selling (delivering) CCASS Participant transfers interests 
	in shares to the CCP (HKSCC) and trusts it to pay.</li>
	<li>A net-buying (receiving) CCASS Participant can get shares early if it 
	pays early. It trusts the CCP to deliver upon payment.</li>
	<li>Off-market transactions, if settled in CCASS, involve HKSCC placing an 
	"on-hold" lock on the shares until payment is confirmed, when they are 
	released to the recipient.</li>
</ul>
<p>Under the 2010 Model:</p>
<ul>
	<li><span class="auto-style2">CCASS Participants would hold legal title to 
	shares, with full shareholder rights.</span></li>
	<li>HKSCCN would become redundant.</li>
	<li>In CNS, a net-selling (delivering) CCASS Participant transfers title to 
	shares to the CCP (HKSCC) and trusts it to pay.</li>
	<li>A net-buying (receiving) CCASS Participant can get shares and title 
	early if it pays early. It trusts the CCP to deliver upon payment.</li>
	<li>Off-market transactions, if settled in CCASS, involve HKSCC 
	receiving title as the nominee of the selling participant, until payment is 
	confirmed, when it transfers the shares to the buying participant, 
	replicating the current "on-hold" system.</li>
</ul>
<p><strong>In short, there is nothing about the 2010 Model, as legislated, that changes 
the financial risk profile at any stage of any transaction. The clear advantages 
of the model first advocated by the Hay Davison report in 1988, with title and 
shareholder rights on an electronic register in CCASS, must be retained and not thrown away to 
satisfy powerful vested interests.</strong></p>
<h3>Half-baked measures</h3>
<p>As you may have spotted in the last diagram above, the proposal does include a half-baked 
fudge to this self-induced 
mess. They propose that CCASS Participants, including brokers and their clients, 
should stay in the nominee system, but "institutional" investors would be 
allowed to have legal title to uncertificated shares via a sponsoring custodian 
in a "<strong>USS</strong>" account in "the new HKEX System". Registered USS shareholders could then 
electronically transfer shares into CCASS (back into the nominee 
system) for sale or to settle transactions. In other 
words, giving institutions a privileged status, and going half-way back to the 
split register, but only if the custodian offers that service, and for unknown 
fees.</p>
<p>For individual investors, the 2019 proposal only offers legal title via a "USI" account with share registrars, outside of the HKEX system altogether. Each 
time an investor wants to transfer shares into CCASS for possible sale, or 
out of CCASS to get onto the register, there would likely still be fees 
payable to both HKSCC and the registrar, and time involved in doing so.</p>
<h3>Why this matters for corporate governance</h3>
<p>Shareholder rights are important. You can never get HKSCCN to lift a finger 
to exercise those rights, other than voting at meetings. If you want to 
requisition a general meeting, propose a director for election, requisition a 
search of ownership, or petition the court for a winding up, then you need to 
move shares onto the register, and that may not even be possible if the 
registers are closed for transfers, including during a provisional liquidation. 
Some laws also have a minimum holding period on the register before action can 
be taken. So the USI account is no alternative and even the USS account looks 
like a desperate attempt to buy off the institutions and separate them from 
individual investors. In any case, it is likely to be so complicated that 
custodians either won't offer it or will discourage clients from using it.</p>
<h3>Inspection of the register</h3>
<p>There's one more thing: Currently, an IP has to consent if he wants his 
holding to appear on the
<a href="http://www.hkexnews.hk/sdw/search/searchsdw.aspx" target="_blank">
online list of CCASS holdings</a>. In the 2010 Model, IPs would have legal title 
on the CCASS sub-register, but it would not be fair for changes in their 
balances to be visible day-by-day as they trade. We already have the Disclosure 
of Interests provisions of the law to require disclosure by directors (on each 
trade) and substantial (5%) shareholders (on each movement through a 1% 
boundary). So the traditional rights of the public to inspect a share register 
should be limited to shares on the Issuer Register, outside CCASS. The 
"non-consenting IPs", as they are currently called, should have their privacy 
preserved. Similarly, even in the 2019 Model, we doubt that institutions would 
want the public to be able to calculate their transactions from daily changes in 
their USS holdings.</p>
<p>It is also long overdue that registrars, which are regulated by the SFC, 
should be required to put registers online for inspection, instead of having to 
visit the Hopewell Centre in Wanchai to peer at an offline computer screen.</p>
<h3>Not pioneering</h3>
<p>In case you are wondering, HK is not exactly an innovator in the scripless 
field. Australia has had a fully scripless, split-register system since 1999, 
called the Clearing House Electronic Sub-register System (CHESS). It works well, 
although they are in danger of
<a href="https://www.asx.com.au/services/chess-replacement.htm" target="_blank">
replacing it</a> with a distributed ledger system for no obvious benefit. 
Mainland China has a fully-scripless system operated by
<a href="http://www.chinaclear.cn" target="_blank">China Securities Depository and Clearing Corp 
Ltd</a> (CSDC), a not-for-profit company established in 2001 and owned 50% each 
by the Shenzhen and Shanghai Stock Exchanges. HKEX knows how that works and 
deals with it via "Stock Connect". Hong Kong has waited long enough, 
and we will be a laughing stock if the SFC goes back to LegCo to ask them 
to tear up the legislation and start again.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=29372">HKSAR Securities Review Committee (1987 crash)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=61741">HKSCC NOMINEES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=499">HONG KONG SECURITIES CLEARING COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=825">STOCK EXCHANGE OF HONG KONG LIMITED (THE)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=29373">Davison, Ian Frederic Hay</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=181">Scripless securities</a></li>
				
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