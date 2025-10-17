
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
	margin-left: 40px;
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

<script type="text/javascript">document.title="Hiding behind the cornerstones";</script>

	<div class="summary">Webb-site reveals that investors who took 31% of a bank IPO had secretly laid off their risk by issuing derivatives to a mainland property developer from the same city, via two HK-listed companies which incidentally are bubble stocks. When we complained, HKEX did not require disclosure of the bank’s identity, thereby preserving the secrecy behind the cornerstone investors which facilitate HKEX’s IPO business. Once again, the regulatory conflict of interest is exposed.</div>

<h2 class="center">Hiding behind the cornerstones<br>
<span class="headlinedate">3 October 2016</span></h2>

<p class="revisedate"><a href="#update1">Update 4-Oct-2016</a></p>
<p>In our article <a href="JGimplosion.asp"><em>The Joint Global 
implosion</em></a> last week, one of the listed companies that held the doomed 
investment was <a href="../dbpub/articles.asp?p=14229">Rentian Technology 
Holdings Ltd</a> (<strong>Rentian</strong>, 0885). The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0428/LTN201604281275.pdf" target="_blank">
2015 accounts</a> of Rentian hold other surprises to which we now turn.</p>
<p>Rentian's net tangible assets (<strong>NTA</strong>) at 31-Dec-2015 were 
HK$1815m. Of this, the group had financial assets totaling $2284m. These 
included HK-listed shares worth HK$1283m. Although the report doesn't name any 
of the listed shares involved, we knew from a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=289216" target="_blank">
disclosure of interest</a> that at 30-Dec-2015, Rentian held 1,115,929,800 
shares (now 6.95%) of <a href="../dbpub/articles.asp?p=2575">Carnival Group 
International Holdings Ltd</a> (<strong>Carnival</strong>, 0996) which ended the 
year at $1.00 per share, so that is $1115m or 86.9% of the listed shares 
portfolio, or
<strong>61.4%</strong> of NTA. </p>
<p>This is no coincidence, because both Rentian and Carnival are now controlled 
by <a href="../dbpub/positions.asp?p=64365">King Pak Fu</a> (<strong>Mr King</strong>), 
although he is not a director of Rentian. Also at 31-Dec-2015, Carnival owned 
155.5m shares (now 1.53%) of Rentian. Carnival is a mainland property developer 
whose main project still in progress is "<a href="http://www.0996.com.hk/en/rio-carnival/" target="_blank">Rio 
Carnival</a>" in Qingdao, Shandong Province, 64% owned by Carnival. In our view, 
both Rentian and Carnival are in a bubble, as we <a href="#carnivalbubble">explain later</a> in this article, 
but first, we turn to the issue of hidden cornerstone investors in HK IPOs.</p>
<h3>Equity-Linked Notes</h3>
<p>Rentian also held "equity-linked notes" (<strong>ELNs</strong>) booked at a 
valuation of $475.1m. Note 18(b) states that in Nov-2015, Rentian subscribed 
ELNs issued by "two investment entities incorporated in the Cayman Islands and 
the Republic of the Seychelles respectively" with a total principal amount of 
HK$458m, and the issuers also obtained margin loans of HK$439.357m from a 
"financial institution".</p>
<p>The issuers used the total amount of $897.357m to buy 184m shares of an 
unnamed HK-listed company, which implies a total purchase price of about $4.877 per share. 
The ELNs do not pay interest. Rentian pays the issuers an 8% annual "management 
fee" on the principal on a monthly basis, which presumably helps service the 
interest on the margin loan. The ELNs are redeemable at Rentian's discretion 
"from time to time after May 2016 based on the net proceeds to be obtained from 
the disposal of the Underlying Securities at the time of redemption" after 
repaying the margin loans and costs. No expiry date was stated.</p>
<p>On 1-May-2016, Webb-site complained to the Stock Exchange about the failure 
of Rentian to disclose details of its significant investments as required by 
paragraph 32(4) of
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=3830" target="_blank">
Appendix 16</a> of the Listing Rules. Eventually on 6-Jun-2016 Rentian coughed 
up an
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0606/LTN201606061337.pdf" target="_blank">
announcement</a> which stated that the shares underlying the ELN were in a 
still-unnamed "Stock B", a constituent of the Hang Seng China - H Financials 
Index, which was listed in 2015 and:</p>
<blockquote>&nbsp;"which cannot be identified due to confidentiality 
obligations".</blockquote>
<p>To us, that is like a red rag to a bull, or rather, a bear. This 
underlying investment of $897.4m amounted to <strong>49.4%</strong> of Rentian's 
NTA, and just because it was wrapped up in off-balance-sheet issuers with margin 
loans doesn't give Rentian the right to contract out of the Listing Rules by 
agreeing to confidentiality. It is clearly a significant investment.</p>
<p class="regbox">Regulatory note: once again the Stock Exchange has accepted a 
listed company's claim to be "in the business" of securities trading even when 
only two investments account for 110.8% of NTA, and therefore turns a blind eye 
to transactions which in our view should be treated as Discloseable or Major 
Transactions under the Listing Rules, requiring announcement and, for Major 
Transactions, shareholder approvals. In any event, these transactions are so 
large that the SFC should be investigating non-disclosure of material 
price-sensitive information when the investments were made.</p>
<h3>The stock under the ELNs</h3>
<p>The Stock Exchange did not require Rentian to disclose the identity of the 
shares underlying the ELNs, or the identity of the issuers. However, Webb-site 
has figured it out, and it raises significant questions about the for-profit 
regulator's role in facilitating hidden cornerstone investors in IPOs, which in 
turn facilitate the IPOs themselves. Note 5 of the announcement stated that 
"Stock B" is issued by a bank which has stated:</p>
<blockquote>"that it will proactively gather momentum on traditional 
businesses of wholesale, retail and asset management as well as on innovative 
businesses of "Internet +" and "Commercial Bank +"..."</blockquote>
<p>That drivel continues for several lines. Search all HK-listed company 
announcements for "proactively gather momentum" and it becomes clear that these 
words can only have come from the 2015
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0309/ltn20160309757.pdf" target="_blank">
annual results</a> of <a href="../dbpub/orgdata.asp?p=1920674">Bank of Qingdao 
Co., Ltd</a> (<strong>BOQ</strong>, 3866) which was listed on 3-Dec-2015 
following an IPO jointly sponsored by
<a href="../dbpub/adviserships.asp?p=5596&amp;r=3&amp;hide=N">Goldman Sachs 
(Asia) LLC</a> and <a href="/dbpub/adviserships.asp?p=18459&amp;r=3&amp;hide=N">
CITIC CLSA Capital Markets Ltd</a>. So "Stock B" must be BOQ H-shares.</p>
<p>In the BOQ
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1120/LTN20151120019.pdf" target="_blank">
prospectus</a> on page 353-356, you will see that there are 6 cornerstone 
investors in the offering, each of which agreed that:</p>
<blockquote>"without the prior written consent of the Bank, the Joint Sponsors 
and the relevant underwriter(s), it will not, whether directly or indirectly, at 
any time during the period of six (6) months following the Listing Date, dispose 
of (as defined in the relevant agreement) any of the H Shares or any interest in 
any company or entity holding any of the relevant H Shares..."</blockquote>
<p>You will notice that the 6 months from the listing date expired on 
3-Jun-2016, which ties in with the "after May 2016" time at which the ELNs can 
be redeemed. Of the 6 cornerstones, 2 were human and 4 were corporate. Of the 
corporates, only one, <a href="../dbpub/orgdata.asp?p=2639600">LRC. 
Belt and Road Investment Ltd</a> (<strong>LRCBR</strong>), was incorporated in 
the Cayman Islands and only one, <a href="../dbpub/orgdata.asp?p=2639603">
Keystone Group LTD.</a> (<strong>Keystone</strong>), was incorporated in the 
Seychelles, matching the jurisdictions of Rentian's two ELN issuers.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1202/03866_2464528/E102.PDF" target="_blank">
allotment results</a> show that of the total offering of 990m H-shares at the 
eventual issue price of $4.75, about 678.5m (68.54%) were placed with the 
cornerstones, including 200m shares to LRCBR and 110m shares to Keystone, a 
total of 310m shares, or <strong>31.3% of the IPO</strong>.</p>
<p>Paragraphs 2A (q) and (s) of Appendix VII-4 of the prospectus state that
<a href="../dbpub/orgdata.asp?p=31066">AMTD Asset Management Ltd</a> (<strong>AMTD</strong>) 
was also a party to the cornerstone agreements with both Keystone and LRCBR. 
Along with the joint sponsors, AMTD was credited as the third "Joint Global Co-ordinator" 
of the IPO. Now look at the Webb-site Who's Who
<a href="../dbpub/adviserships.asp?p=31066">list of adviserships</a> of AMTD and 
you will see that of the 9 times it has acted as placing agent since 2014, the 2 
latest deals are a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1028/LTN20151028786.pdf" target="_blank">
placing</a> for Rentian on 28-Oct-2015 which raised HK$282.44m net and
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1110/LTN20151110165.pdf" target="_blank">
completed</a> on 10-Nov-2015, and a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0613/LTN20160613952.pdf" target="_blank">
placing</a> for Carnival on 13-Jun-2016. This again points to AMTD having 
arranged LRCBR and Keystone to act as cornerstones, backed by Rentian.</p>
<h3>Carnival's ELNs</h3>
<p>Rentian's ELNs only account for 184m BOQ shares - so what about the other 
126m shares taken by these 2 cornerstones? Well, take a look at the 2015
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0428/LTN201604282130.pdf" target="_blank">
annual accounts</a> of Carnival. Note 20 reveals an "equity linked note" 
valued at HK$330m which was acquired during the second half of the year. We'll 
take an educated guess that this was also issued by LRCBR and/or Keystone, and 
accounts for the other 126m BOQ shares held by them. The ratio of Rentian and 
Carnival's ELN investments at 31-Dec-2015 was $475.123m/$330m = 1.44, close to 
the share ratio of 184/126 = 1.46. Furthermore, according to their respective 
interim reports at 30-Jun-2016, in the 6 month period, Carnival's ELN grew 9.4% 
to $361m, while Rentian's ELN grew 9.5% to $520.117m. It is very likely the same 
underlying stock.</p>
<p>What this suggests is that Rentian and Carnival stood behind LRCBR and 
Keystone and in effect bought 31.3% of BOQ's IPO, partly using margin finance. 
Given that Carnival's main project is in Qingdao, the obvious question is 
whether Carnival or its controller Mr King does, or expects to do, business with 
BOQ.</p>
<p>For the Stock Exchange and the SFC, the concern should be that the two 
cornerstones had apparently transferred their risk in the BOQ shares by issuing 
the ELNs to Rentian and (probably) Carnival. As long as the saleable value of 
the stock did not drop below the margin loan, if the description in Rentian's 
accounts is to be believed, it could redeem the notes for the net sale proceeds.</p>
<p>This back-to-back arrangement allowed Rentian and (probably) Carnival to hide 
behind the cornerstones. Given that Rentian entered into this arrangement in 
November 2015, before the 3-Dec-2015 BOQ listing date, it seems reasonable to 
infer that this arrangement was known at the time of the IPO, at least to AMTD, 
the joint global coordinator, and to the two cornerstones. It should have been 
disclosed in the prospectus. The identity of the margin lender, who could 
potentially end up owning the shares, should also have been disclosed.</p>
<p>The wording of the 6 month lock-up includes "dispose of (as defined in the 
relevant agreement)" but of course, those agreements were not filed, so we don't 
know how that is defined. It would have been sensible though to prohibit any 
such derivatives that would allow evasion of the lock-up, and if that was the 
case, then the question is whether the Bank, the Joint Sponsors and AMTD 
consented to this arrangement.</p>
<h3>The regulatory conflict of interest</h3>
<p>In processing our complaint to the Stock Exchange about the lack of 
disclosure in the Rentian accounts, which led to the 6-Jun-2016 "Stock B" 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0606/LTN201606061337.pdf" target="_blank">
announcement</a>, 
we don't know whether Rentian told the Stock Exchange what "Stock B" is and who 
the ELN issuers were, and was then excused from announcing those facts, or 
whether Rentian refused to tell the Exchange. Knowingly or not, the Stock 
Exchange now appears to have been an accessory to maintaining the secrecy behind 
the BOQ cornerstones.</p>
<p>To be clear, we have no objection in principle to cornerstones in IPOs, 
as long as <span class="auto-style1">full</span> disclosure of their interests 
and who stands behind them is made. A lot of IPOs might not get done without 
cornerstones, and HKEX (0388), which owns the Stock Exchange, depends on IPOs to 
expand the stock market from which it generates its monopolistic profit margins. Once 
again, the need to <a href="listingreg.asp">remove the regulatory 
function</a> from HKEX is as plain as a pikestaff.</p>
<p>Incidentally, the fact that cornerstones are now so prevalent, reducing the 
effective free float for at least 6 months after listing, points again to the 
need to <a href="../dbpub/subject.asp?c=176">scrap the free float rule</a>.</p>
<h3>About the cornerstones</h3>
<p>LRCBR was stated to be a joint venture of
<a href="../dbpub/orgdata.asp?p=2639601">LRC. Strategic (Global) Investment 
Group Ltd</a> (<strong>LRC Global</strong>) and
<a href="../dbpub/natperson.asp?p=2639602">Soulaimane Htite</a> (<strong>Mr 
Htite</strong>), and LRC Global was claimed to be "a global investment company 
with expertise in global family office investment and alternative investment 
products". We've never heard of it before. Mr Htite, or "Soul" as he likes to be 
called, is a co-founder of US-based
<a href="https://en.wikipedia.org/wiki/Lending_Club" target="_blank">Lending 
Club</a> and founder and CEO of Shanghai-based Dianrong.com, both being P2P 
lending platforms. He was given 7 lines of glowing biography in the cornerstone 
description, but note 5 on page 245 states that LRCBR is 99% owned by LRC 
Global, so Mr Htite can't own more than 1%. Not so much a cornerstone as 
cornerdust. Perhaps Soul's heart isn't in it.</p>
<p>LRC Global in turn is purportedly owned by Chan Mei Ching (47%), Chan 
Min Chi (51%), and unknown other(s) (2%). We know nothing about the two Chans, 
and even the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1120/LTN20151120020_C.pdf" target="_blank">
Chinese prospectus</a> does not contain their Chinese-character names. Simply 
naming shareholders, without their background, is meaningless disclosure.</p>
<p class="regbox">Update: a 
<a href="https://www.bloomberg.com/news/articles/2017-05-30/ex-ubs-banker-s-parents-bought-into-china-ipos-he-helped-arrange" target="_blank">Bloomberg article</a> dated 30-May-2017 states that Mr Choi's birth 
certificate lists a "Chan Mei Ching" as his mother and a "Choi Kwok Kei" as his 
father.</p>
<p>Keystone was said to be the overseas investment arm and offshore wealth 
management platform of Shenzhen Qianhai Keystone Wealth Management Company 
Limited, which is "one of the leading investment institutions and wealth 
management companies in the Greater Pearl River Delta and Southeast Asia, 
focusing on equity investments and fixed income investments in key areas 
including infrastructure and real estates." However, this implied ownership (if 
that is what "arm" means) is contradicted by note 8 on page 245 which states 
that Keystone is owned by an individual, Ouyang Xinxiang. We know nothing about 
her either.</p>
<h3>Xinte Energy - who's behind their cornerstones?</h3>
<p>What we do know is that the same two cornerstones have appeared in another 
IPO, that of <a href="../dbpub/orgdata.asp?p=2432517">Xinte Energy Co., Ltd.</a> 
(<strong>Xinte</strong>, 1799) which listed on 30-Dec-2015, four weeks after 
BOQ. AMTD was again one of 4 joint global coordinators, including joint sponsors
<a href="../dbpub/adviserships.asp?p=1467&amp;r=3">UBS Securities Hong Kong Ltd</a> 
(<strong>UBS</strong>) and <a href="../dbpub/adviserships.asp?p=49367&amp;r=3">
GF Capital (Hong Kong) Ltd</a> (<strong>GF Capital</strong>).</p>
<p>There were 4 cornerstone investors, including LRCBR and Keystone. This 
time, the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1217/LTN20151217035.HTM" target="_blank">
prospectus</a> disclosed that both of them may obtain margin financing from
<a href="../dbpub/articles.asp?p=49377">GF Securities (Hong Kong) Brokerage Ltd</a> 
(<strong>GF Brokerage</strong>, a fellow subsidiary of GF Capital) for up to 
US$12m each as part of their US$30m each investment. Appendix VI paragraph 2A(f) 
and (g) shows that AMTD was again party to the 2 cornerstone agreements. The 
only subtle difference is that the 99% owner of LRCBR is now named "Strategic 
Global Investment Corporation Limited", dropping the "LRC", but that is still 
owned 47% by Chan Mei Ching and 51% by Chan Min Chi, about whom nothing is said.</p>
<p>In the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1229/01799_2486075/E102.PDF" target="_blank">
allotment results</a>, the offering of 146.5m shares was priced at $8.80, the 
bottom of the range. LRCBC and Keystone each took 26,420,400 shares or 18.03% of 
the offering for US$30m each, a total of <strong>36.06%</strong> of the IPO.</p>
<p>So does anyone stand behind them this time with ELNs, we wonder, and if so, 
who? Given what happened with BOQ, the regulators should inquire into the Xinte 
cornerstone arrangements too. Incidentally, since LRCBR and Keystone each ended 
up with about 9.03% of the <a href="../dbpub/outstanding.asp?i=18157">
outstanding H-shares</a>, they and their controllers should have filed 
disclosures of interests, but have failed to do so.</p>
<p>Another thing emerges from studying the Xinte IPO. They had a pre-IPO 
investor called <a href="../dbpub/orgdata.asp?p=2639614">L.R. Capital China 
Growth I Company Limited</a> which invested RMB500m in 73,099,415 shares at 
RMB6.84 (about HK$8.27) per share. Together with two other pre-IPO investors, 
they have a 1-year post-IPO lock-up. The investor is wholly-owned by
<a href="../dbpub/orgdata.asp?p=2639613">L.R. Capital Management Company 
(Cayman) Limited</a> (<strong>LRC</strong>). The prospectus fails to say who 
owns LRC or whether it is connected to LRC Global. A
<a href="http://lr-capital.com/meet-the-team/">web site</a> for LRC lists 
Raymond Yung as CEO. Until
<a href="http://www.pwchk.com/home/eng/pr_250116.html" target="_blank">at least 
Jan-2016</a>, Mr Yung was China Leader of PwC's financial services practice. LRC 
also lists Mr Htite and former PwC tax partner
<a href="../dbpub/positions.asp?p=29048">Marcellus Wong Yui Keung</a> (<strong>Mr 
Wong</strong>) as senior advisors. Mr Wong is also an INED of Xinte.</p>
<p>LRC
<a href="http://lr-capital.com/lr-capital-partners-with-cmifl-and-dianrong-to-build-a-new-online-platform-for-financial-assets-management-through-its-affiliate-amtd-2/" target="_blank">
describes</a> AMTD as its "affiliate". AMTD appears to be parented by
<a href="../dbpub/orgdata.asp?p=149247">AMTD Group Co Ltd</a> (<strong>AMTDG</strong>, BVI) which issued 
a US$110m 3-year bond earlier this year and
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0322/LTN20160322118.pdf" target="_blank">
listed</a> it in HK (someone please send us the offering memorandum!). The
<a href="http://www.amtd.com.hk/en/directors" target="_blank">AMTD web site</a> 
lists Mr Wong as its Vice Chairman, and
<a href="../dbpub/positions.asp?p=117222">Calvin Choi Chi Kin</a> is Chairman. 
He was a representative of UBS until early 2016.</p>
<p id="update1" class="regbox">Update 4-Oct-2016: someone has kindly sent us the 
AMTDG bond offering circular. At 9-Mar-2016, AMTD was 100% owned by AMTDG which 
was 71.03% owned by <a href="../dbpub/orgdata.asp?x=y&amp;p=2640595">L.R. 
Capital Financial Holdings Ltd</a> (<strong>LRCF</strong>), which was 65.1% 
owned by LRC, the owner of which was not disclosed. LRC and LRCF acquired 
control of AMTDG on 13-Oct-2015 from Morgan Stanley Private Equity Asia IV, 
L.P.. The other 34.9% of LRCF was owned by
<a href="../dbpub/orgdata.asp?p=2364818">China Minsheng Investment Corp., Ltd</a> 
(<strong>CMI</strong>). CMI was a pre-IPO investor in Xinte. We also note from
<a href="../dbpub/adviserships.asp?p=9318&amp;r=2&amp;f=&amp;t=&amp;y=1&amp;sort=orgup&amp;hide=Y">
Webb-site Who's Who</a> that China Minsheng Banking Corp Ltd (<strong>CMB</strong>) 
is a banker to both Rentian and Carnival. CMB also acted as lead manager to 
place US$285m of convertible bonds for Carnival in 4 tranches in 2015.</p>
<h3>GF Securities - who's behind their cornerstones?</h3>
<p>LRC was also a cornerstone investor in the IPO of
<a href="../dbpub/orgdata.asp?p=19084">GF Securities Co Ltd</a> (<strong>GFS</strong>, 
1776), which listed on 10-Apr-2015. That's the parent of GF Capital and GF 
Brokerage. On that occasion, LRC used another wholly-owned Cayman subsidiary 
called <a href="../dbpub/orgdata.asp?p=2639612">L.R. Capital Principal 
Investment Ltd</a> to act as the cornerstone. So again, the question arises, did 
that issue ELNs too, and if so, to whom?</p>
<p class="regbox">Update 4-Oct-2016: we missed one more! The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0630/LTN20160630069.HTM" target="_blank">
prospectus</a> of <a href="../dbpub/orgdata.asp?p=2514656">China Logistics 
Property Holdings Ltd</a> (<strong>CLP</strong>, 1589), which listed on 
15-Jul-2016, includes 4 cornerstone investors. One of them is LRCBR, for US$20m 
(and have they issued ELNs this time?), and another is China Fintech Investment 
Co, a 100% subsidiary of <a href="../dbpub/orgdata.asp?p=2640684">China Fintech 
Fund Management Co Ltd</a>, which was founded by CMI and GFS. AMTD was the joint 
global coordinator for these 2 cornerstones.</p>
<p>At the beginning of this article, we mentioned that Carnival and Rentian are 
bubble stocks. Here's why:</p>
<h3 id="carnivalbubble">Carnival bubble</h3>
<p>Returning to Carnival, at today's closing price of $0.94, its market value 
is HK$15,085m. In the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0915/LTN20160915395.pdf" target="_blank">
interim report</a> at 30-Jun-2016, it had equity attributable to shareholders of 
$5550m, but this includes goodwill of $870m and other intangible assets of 
$212m, so the NTA was only $4468m, or about $0.286 per share. The stock should 
trade at a substantial discount to NTA, but trades at 3.29x NTA, so the downside 
is about 75%.</p>
<p>Despite carrying $8059m in borrowings, Carnival found space during the 
first half of 2016 to put HK$491m into "unlisted investment funds", see note 15 
of the accounts.</p>
<p>The goodwill and other intangibles relate to an acquisition of a 
loss-making restaurant chain operating as "Golden Jaguar" for HK$253.41m in 
2015. 95% of the sale was by "BFT Acquisition Guernsey L.P. Inc." which we 
believe was owned by funds run by British private equity firm Apax Partners, 
which
<a href="http://www.apax.com/news/apax-news/2011/july/funds-advised-by-apax-partners-acquire-golden-jaguar-in-china/" target="_blank">
bought it</a> in Jul-2011. The accountants report in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0629/LTN20150629798.pdf" target="_blank">
circular</a> dated 30-Jun-2015 reveals that it had lost money for 3 straight 
years on declining revenue, and had negative equity of RMB444m. It owed RMB428m 
to customers, presumably advanced payments for banquets which would only be 
served if it didn't go bust. At the time of the acquisition agreement on 
6-Jun-2015 there were 29 restaurants, but this was down to 20 by 30-Jun-2016.</p>
<p>Including the 6.95% owned by Rentian, Mr King controls 66.24% of Carnival. 
Other shareholders of the Carnival bubble include
<a href="../dbpub/articles.asp?p=4822">China Innovative Finance Group Ltd</a> (<strong>CIFG</strong>, 
0412) with 200m shares (now 1.25%) at 31-Mar-2016, and
<a href="../dbpub/articles.asp?p=1843">Enerchina Holdings Ltd</a> (<strong>Enerchina</strong>, 0622) which 
owned 55.65m shares (now 0.35%) at 30-Jun-2016.
<a href="../dbpub/articles.asp?p=34306">Hao Tian Development Group Ltd</a> 
(<strong>HTD</strong>, 0474), a substantial shareholder of CIFG, was also a holder of Carnival at 
31-Mar-2016, although it did not disclose how much it held. Rentian, Carnival, 
CIFG, Enerchina and HTD are all in what we call the
"Chung Nam Network".</p>
<h3>Rentian bubble</h3>
<p>Rentian is what we call a "double bubble" because its shares trade at a 
multiple of NTA and its NTA comprises mostly shares at a bubble valuation too. 
Carnival's shares closed on 30-Jun-2016 at $1 per share, the same as 
31-Dec-2015, valuing Rentian's stake at $1116m. If we write that down to 
Carnival's NTA of $0.286 per share (and we are being generous here), then it is 
$319m. That reduces Rentian's NTA at 30-Jun-2016 from $1676m to $879m, or about 
$0.0866 per share. It should trade at a discount to that. The stock closed today at $0.56 valuing Rentian at $5.68bn, so the downside is about 85%.</p>
<p>Including 1.53% owned by Carnival, Mr King controls 52.06% of Rentian, and an 
Executive Director Yang Xiaoyang, via a 90%-owned company, owns 2.07%.</p>
<p>On 31-Mar-2016, Rentian
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0331/LTN201603311398.pdf" target="_blank">
announced</a> the acquisition of 51% of <a href="../dbpub/orgdata.asp?p=2639645">Next Concept International Investment 
Ltd</a> (<strong>Next Concept</strong>, BVI) for HK$1101.6m from 3 BVI vendors, in 
exchange for 1512m shares issued at $0.51 and $330.48m of promissory notes. One 
of the vendors was owned by Mr Lee Tai Hay, who as a result increased his 
Rentian shareholding from 3.48% to 8.16%, and has since
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=80697" target="_blank">
cut it</a> to 7.83%. A
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=78385" target="_blank">
disclosure of interest filing</a> shows that another vendor was owned by Zhao 
Zhen Zhong, who received 5.84% of Rentian, while the third vendor, Asia Shine 
International Ltd, received 4.38%, below the 5% disclosure threshold, so we 
don't know who owns that because Rentian did not say.</p>
<p>Next Concept ultimately owns <a href="../dbpub/orgdata.asp?p=2639646">Qingdao Jiashengtai Investment Consulting 
Co Ltd</a> in the PRC, which is:</p>
<p class="auto-style2">"principally engaged in providing one-stop 
solution, including but not limited to marketing research, software design, IT 
solution and strategic business consultation and development, to companies in 
the commodities industry."</p>
<p>That all sounds fancy, but the reality is that Next Concept scored its 
first turnover in 2015 at just HK$39.63m with a profit of $5.78m and net assets 
of $5.58m, so for 51% of that Rentian was paying a P/E of 374 and 387x book 
value. The other 49% of Next Concept is owned by a company called "Future Merit 
Limited", the owner and domicile of which was not disclosed.</p>
<p>The deal comes with a profit warranty that Next Concept will make $144m 
in 2016 and $216m in 2017, and any shortfall will be settled first by setting 
off the promissory notes, and after that in cash, (if the vendors have any). The 
shares are locked up until the 2016 profit is determined, and 50% will then be 
released, with the remainder after the 2017 profit is determined.</p>
<p>That takes the known holdings to a total of 72.19%.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=34306">Aceso Life Science Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1920674">Bank of Qingdao Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2575">Carnival Group International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9318">China Minsheng Banking Corp., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2364818">China Minsheng Investment Group Corp., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18459">CITIC Securities (Hong Kong) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49367">GF Capital (Hong Kong) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=19084">GF Securities Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5596">GOLDMAN SACHS (ASIA) L.L.C.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10361">Goldman Sachs Group, Inc. (The)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2639614">L.R. Capital China Growth I Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2640595">L.R. Capital Financial Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2639613">L.R. Capital Management Company (Cayman) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2639612">L.R. Capital Property Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2639600">LRC. Belt and Road Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2639601">LRC. Strategic (Global) Investment Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2639645">Next Concept International Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=31066">oOo Securities (HK) Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1843">Oshidori International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2639646">Qingdao Jiashengtai Investment Consulting Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14229">Rentian Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4822">SHANDONG HI-SPEED HOLDINGS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1467">UBS SECURITIES HONG KONG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2432517">Xinte Energy Co., Ltd.</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2639605">Chan, Mei Ching (LRC)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=117222">Choi, Calvin Chi Kin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2639602">Htite, Soulaimane</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=64365">King, Pak Fu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29048">Wong, Marcellus Yui Keung</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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