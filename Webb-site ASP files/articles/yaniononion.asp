
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

<script type="text/javascript">document.title="Yanion's Rotten Onion";</script>

	<div class="summary">In the first of two stories, we peel away the layers of the onion that is Yanion, and we don't like what we find. You will see a series of questionable acquisitions at exorbitant prices, at least two of them involving the same "independent third party", followed by legal disputes, a disclaimed audit opinion, replacement of auditors, and massive write-offs.</div>

<h2 class="center">Yanion's Rotten Onion<br>
<span class="headlinedate">23 June 2003</span></h2>
<p>In the first of a two-part story, we turn our spotlight on Yanion International Holdings Ltd
(<b>Yanion, </b>0082) originally a maker of VCD players and other audio-visual 
equipment., which has not made an annual profit since 1997. Then tomorrow, we'll 
tell you how this relates to a listed investment company which has sunk 58% of 
its net assets into Yanion group companies.</p>

<h3>History</h3>

<p>Electronics manufacturer Yanion has a colourful history. In 
1996, its 
then Chairman and co-founder, Leung Wah Chai (<b>Mr
Leung</b>), was
<a target="_blank" href="http://www.info.gov.hk/idt/english/doc/Yanion-main.pdf">found</a> to be an Insider Dealer by the 
<a target="_blank" href="http://www.info.gov.hk/idt/">Insider Dealing Tribunal</a>, along with his wife's
sister who was found to be acting on his behalf. The charge related to insider
selling between 8-Mar-93 and 12-May-93, ahead of the 1992 results, which showed
a collapse in profits. Mr Leung had to pay a total of HK$6.7m including enquiry
expenses of $3.5m and a penalty of $1.7m. </p>

<p>Mr Leung was also banned from directorship of listed companies 
for a year from 1-Dec-96. That wasn't much of a problem because his wife (who is 
a co-founder and General Manager) took over the Chairmanship from 28-Nov-96 to 
2-Dec-97 when he resumed the role. Today he remains an executive director.</p>

<h4>Famous friends</h4>

<p>Another famous director was Makie Hui Po Yuen (<b>Mr Hui</b>),
an Independent Non-executive Director who resigned on 2-Apr-96 to pursue other
interests, namely that he was having a spot of bother with his own listed
company, Yeebo (International Holdings) Ltd (<b>Yeebo, </b>0259), maker of LCD
displays and printed circuit boards.</p>

<p>Mr Hui was the Chairman and Founder of Yeebo and resigned on
27-Mar-96 to fight a writ from Yeebo which was eventually followed by criminal charges. In Aug-00 he
was convicted of embezzling HK$80m (out of charges totalling $100m) involving 23
charges of theft, four charges of false accounting and two of publishing a false
statement (namely, in the Mar-94 and Mar-95 accounts of Yeebo). He was sentenced to
7 years in jail. </p>

<p>For more on that, see our archive story on Yeebo,
<a target="_blank" href="yeebo.asp">Criminal Record</a>. </p>

<h3>Dazheng WorldVest JV</h3>

<p>On 12-Jun-00, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000613/LTN20000613025.doc">
announced</a> the acquisition of 10% of Global Cyber Ltd (<b>Global Cyber</b>) 
for HK$80m in cash. Global Cyber was a BVI company which in turn owned 80% of 
Shanghai Dazheng Worldvest Technology Co Ltd (<b>Dazheng WorldVest</b>). The 
remaining 20% was owned by <a target="_blank" href="http://www.dazhengsh.com/">Shanghai Dazheng Group Co Ltd</a> (<b>Shanghai Dazheng</b>), 
a private company in the PRC. </p>

<p>The principal activities of Dazheng WorldVest were the research, development 
and installation of a video-on-demand (<b>VOD</b>) system in the PRC, involving a technology 
&quot;developed and owned by&quot; Shanghai Dazheng. The technology was contributed by way 
of an exclusive licence in return for the 20% stake in Dazheng WorldVest.</p>

<h4>Vendor</h4>

<p>The vendor was Majestic Star Holdings Ltd (<b>Majestic Star</b>), a BVI 
company, which owned 98.6% of Global Cyber prior to the sale. The guarantor of 
Majestic Star was its <i>&quot;single largest shareholder&quot;</i>, Mr Ho Wai Kong (<b>Mr 
Ho</b>). We know nothing else about him. If you know,
<a target="_blank" href="../contact/">tell us</a>.</p>

<p>The 
remaining 1.4% of Global Cyber was owned by two unnamed listed companies in Singapore 
and Hong Kong -&nbsp; If you know who they are,
<a target="_blank" href="../contact/">tell us</a>. The price of <b>$80m</b> was funded by a placing of 90m new shares 
representing 47.18% of the enlarged issued share capital at $0.90 each through 
Dao Heng Securities Ltd (<b>Dao Heng</b>).</p>

<h4>Valuation report</h4>

<p>The shareholder circular dated 7-Jul-00 included a valuation by 
<a href="../dbpub/articles.asp?p=5577">Sallmanns 
(Far East) Ltd</a> (<b>Sallmanns</b>) of Global Cyber at RMB881m (HK$823m). The 
Sallmanns report referred to a joint venture contract to establish Dazheng 
WorldVest dated 16-Dec-99. You will not be surprised 
to learn that despite the  valuation, Global Cyber had only received a net 
investment of HK$7.8m, half of which had already been lost in start-up expenses, 
leaving net assets at 31-May-00 of $4.0m. So the company was being valued at 
over 200 times book value. No turnover had been recorded.</p>

<p>Sallmanns wrote that the Dazheng VOD technology was developed in 1996 by 
Shanghai Dazheng in Silicon Valley, USA. By 31-May-00, Dazheng WorldVest had 
signed <i>&quot;co-operative agreements&quot;</i> with Taizhou Cable Company, Jiangyin 
Cable Company and Bautou Cable Company to provide the technology via their 
channels and was in negotiation with a number of others. Sallmanns' report was signed by then Managing Director Brett Shadbolt, who has 
since moved on to head another valuation firm,
<a target="_blank" href="http://www.censere.com/mod.php?mod=userpage&menu=1201&page_id=2">
Censere (Far East) Ltd</a>.</p>

<h4>Accountants' report</h4>

<p>The accountants' report by Deloitte Touche Tohmatsu showed that Dazheng 
WorldVest was registered in the PRC on 21-Feb-00 (just 4 months before the 
Yanion deal).</p>

<p>The report showed that Global Cyber group had paid a management fee of HK$600,000, 
at the rate of $200,000 per month, and a consultancy fee of $2m, to Asiavest 
Capital Ltd (<b>Asiavest Capital</b>) of which Mr Fred Wu Fong (<b>Mr Wu</b>) 
and Mr Tom Guo Duen-how (<b>Mr Guo</b>) were directors and shareholders. Both Mr 
Wu and Mr Guo were directors of Global Cyber.</p>

<p>The acquisition was completed in early August 2000.</p>

<h3>Board changes</h3>

<p>On 29-Nov-00 there was a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20001130/LTN20001130033.doc">
changing of the guard</a> at Yanion, as 4 executive directors and one INED 
resigned, and Mr John Kao Ying-lun (<b>Mr Kao</b>), Mr Cheng Shu-wing (<b>Mr 
Cheng</b>), Mr Wu and Mr Guo were appointed as executive directors, while Mr 
Charles Chan Wai-dune (<b>Mr Chan</b>) was appointed as an independent 
non-executive director (INED).</p>

<p>Mr Kao sits on the Asian Advisory Board of the Richard Ivey School of 
Business of the University of Western Ontario, from which he graduated. The 
school
<a target="_blank" href="http://www.ivey.com.hk/advisory/advisory.html#john_k">
describes</a> him as a director and <i>&quot;founding partner&quot;</i> of 
WorldVest 
Holdings Ltd (<b>WorldVest</b>), an <i>&quot;investment 
banking firm, which is involved in providing services to businesses that are 
about to go public&quot;.</i></p>

<p>What the Ivey site doesn't mention is that in 1998 Mr Kao had his license as 
an investment adviser
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=8pr96">
suspended</a> for 4 months by the Securities and Futures Appeals Tribunal after 
a client of his now-defunct firm
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=8pr117">
Goldwyn Capital Ltd</a> in 1995 failed to follow through on a takeover bid for
<a target="_blank" href="../dbpub/articles.asp?p=3529">Tungtex (Holdings) Co Ltd</a> (0518).</p>

<p>INED Mr Chan is the managing partner of 
<a target="_blank" href="http://www.ccifcpa.com.hk">Charles Chan, Ip 
&amp; Fung CPA Ltd</a> (<b>CCIF</b>), an accountancy with clients such as
<a target="_blank" href="../dbpub/articles.asp?p=13482">Riverhill Holdings Ltd</a> and
<a target="_blank" href="../dbpub/articles.asp?p=14791">Inworld Group Ltd</a> who have featured on <i>
Webb-site.com</i> before.</p>

<p>On its web site, under &quot;business associates&quot;, CCIF lists two &quot;<a target="_blank" href="http://www.ccifcpa.com.hk/local.htm">local connections</a>&quot;, 
one of which is Mr Kao's WorldVest Holdings Ltd (<b>WorldVest</b>), which shares an office 
with SFC-licensed
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_BusAddr.jsp?ceref=AFB493&applNo=0001">
WorldVest Capital Ltd</a> (<b>WorldVest Capital</b>), whose Responsible Officers 
are Mr Cheng and Mr Wu. According to the 2000 annual report of Yanion, WorldVest 
Capital received a consultancy fee of HK$900k that year, and Mr Cheng, Mr Wu and 
Mr Guo are also directors of WorldVest Capital. </p>

<p>As a result of the 29-Nov-00 reshuffle, 4 out of 7 executive directors of 
Yanion were linked to WorldVest, and given the &quot;local connection&quot; between CCIF 
and WorldVest, one out of two INEDs (Mr Chan) can be linked to WorldVest. In 
effect, there had been a change of board control.</p>

<p>The other &quot;local connection&quot; of CCIF is law firm
<a target="_blank" href="http://www.siaowenleung.com/">Siao, Wen and Leung</a> (<b>SWL</b>), 
which has also been listed in the annual reports of Yanion as its legal advisor 
since the report for 2000, replacing
<a target="_blank" href="http://www.iulaili.com/">Iu, Lai &amp; Li</a> (<b>ILL</b>).
Carson Wen, then a partner of SWL, was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010123/LTN20010123043.doc">
appointed</a> as an INED of Yanion on 22-Jan-01, replacing Brian Tsang Link 
Carl, a partner of ILL.</p>

<div class="regbox">
  Regulatory note: <i>Webb-site.com</i> believes that legal advisors to a 
  company should not be allowed to serve as independent directors, as they are 
  hardly likely to oppose a transaction in the boardroom if their law firm 
  stands to get fees out of the deal. Currently,
  <a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/CH3.doc">
  Listing Rule 3.11(2)</a> specifically allows a company's &quot;professional 
  adviser&quot;, including lawyer, to act as an independent director. By 
  contrast, in the mainland markets, this practice is banned (see Para IIIA5 of 
  the
  <a target="_blank" href="http://www.csrc.gov.cn/CSRCSite/eng/edeplt/rule/frzl02042902.htm">
  CSRC Guidelines</a>). In this respect, the mainland is already ahead of HK.</div>

<h3>2nd placing</h3>

<p>On 6-Dec-00, a week after the change of board control, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20001207/LTN20001207030.doc">
announced</a> another placing, again through Dao Heng, this time of 38m new 
shares at $0.65 each, representing 19.92% of the existing issued shares, almost 
the maximum allowed under the general mandate granted on 24-Jul-00. The net proceeds 
of <b>$24.3m</b> were for <i>&quot;general working capital&quot;</i>.</p>

<h3>3rd placing</h3>

<p>On 7-Feb-01, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010208/LTN20010208024.doc">
announced</a> a third placing, again through Dao Heng, for 45.6m new shares at 
$0.68 each, representing 19.93% of the existing issued shares, blowing a mandate 
granted 8 days earlier. The net proceeds of <b>$30.6m</b> were for <i>&quot;general working capital&quot;</i>.</p>

<p>The annual report for the year ended 31-Dec-00 revealed in note 28(e) that on 
21-Feb-01, Yanion agreed to acquire Kongnet Group Ltd (<b>Kongnet</b>), a BVI 
company which owned 90% of a Sino-foreign enterprise engaged in the <i>&quot;Internet 
phone business&quot;</i> in the PRC for $35m in cash.</p>
<p>It was not until the 2001 annual accounts, signed on 12-Aug-02, that the 
details showed up. It turned out that the enterprise was called &quot;Tianjin Weikang 
Communication Co Ltd&quot; and when Kongnet was acquired, it had net tangible assets 
of just $1.065m, so Yanion paid 32.9 times book value. The vendor was not named. 
We wonder who it was.</p>
<h3>Share options</h3>
<p>On 30-Jan-01, a new option scheme was introduced to replace the one adopted 
on 30-Sep-91. The new scheme allowed the grant of options over up to 10% of the 
issued shares and would last for 10 years. Well, it would for some companies. A week later, on 6-Feb-01, Yanion 
granted 22.8m share options (equivalent to 9.97% of the issued shares) 
exercisable for 1 year from 26-Feb-01 at $0.61 per share, compared with the 
market price of $0.73. The scheme was 1 week old and already maxed out. Of these 
options, 17.1m went to directors, of which 13.9m went to the WorldVest-related 
directors. The grantees wasted no time in exercising them, with 19.1m being exercised on 
26-Feb-01 (the first possible day), 1m on 2-Mar-01 and the remaining 2.7m on 
7-Mar-01.</p>

<h3>4th placing</h3>

<p>On 12-Mar-01, it was time for
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010315/LTN20010315009.doc">
another</a> placing through Dao Heng, for up to 200m new shares at $1.25 each on 
a best efforts basis. This one represented 67.3% of issued share capital, and so 
required a Special General Meeting to approve it. This time, there was some 
purpose; of the net proceeds, $180m would be used for business expansion, and 
the other $67m for <i>&quot;general working capital&quot;. </i>They wrote:</p>

<blockquote>

<p>&quot;The Company has identified certain investment opportunities including 
further investments in video-on-demand technology and re-engineering of cable 
T.V. stations, acquisition of bio-tech projects and business expansion of 
Internet phone.&quot;</p>

</blockquote>

<p>No deals had been struck, but due diligence was underway on certain of these 
projects. In the end, on 25-May-01 it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010528/LTN20010528045.doc">
announced</a> that only 137.6m of the shares had been placed, raising net 
proceeds of <b>$170.1m</b>.</p>

<h3>Acquires another 4% of Global Cyber...</h3>

<p>On 29-Mar-01, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010402/LTN20010402049.doc">
agreed</a> to buy another 40,000 shares (4%) of Global Cyber from Majestic Star 
for HK$40m in cash (50% on signing, 50% on completion), taking its stake to 14%. So the implied valuation had risen 
from $800m to $1bn in 9 months. The price was <i>&quot;with reference to a recent 
market transaction in relation to Global Cyber&quot;</i>.</p>

<p>The transaction they were referring to was probably the purchase by
<a target="_blank" href="../dbpub/articles.asp?p=3445">Tem Fat Hing Fung (Holdings) Ltd</a> (<b>TFHF</b>, 0661) 
from Majestic Star 
of 38,000 shares (3.8%) of Global Cyber for $38m,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010316/LTN20010316027.doc">
announced</a> on 15-Mar-01. Incidentally, Mr Alexander Chan Fat Leung, who was 
then Managing Director of TFHF, is on the same
<a target="_blank" href="http://www.ivey.com.hk/advisory/advisory.html">Asian 
Advisory Board</a> of the Richard Ivey School of Business as Mr Kao of WorldVest 
and Yanion. What a small world. </p>

<p>The deal by TFHF was supported by a <i>&quot;preliminary valuation&quot;</i> 
by American Appraisal Hongkong Ltd at 28-Feb-01 of RMB1.15bn (HK$1.07bn). The 
final valuation was unchanged. Earlier, the deal had been the subject of an MoU 
as
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010109/LTN20010109020.doc">
announced</a> on 8-Jan-01, when TFHF had contemplated buying 20% to 35% of 
Global Cyber.</p>

<p>It was now disclosed that Mr Ho owned 67% of Majestic Star, and there was no 
word on who owned the rest. If you know,
<a target="_blank" href="../contact/">tell us</a>. The financial situation of Global Cyber was little 
changed, with a net deficit at 31-Dec-00 of $1.8m and a cumulative loss of 
$9.4m.</p>

<p>In its annual report for the year to 30-Apr-02, TFHF wrote off the entire 
investment in Global Cyber.</p>

<h3>INED quits</h3>

<p>On 13-Jun-01, Carson Wen
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010614/LTN20010614045.doc">
resigned</a> as an INED of Yanion and was replaced by Mr Choy Tak Ho.</p>

<h3>...and another 13%</h3>

<p>You can never have to much of a good thing! On 18-Jul-01, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010719/LTN20010719030.doc">
agreed</a> to acquire another 13% of Global Cyber for HK$130m in cash, taking its 
holding to 27% at an accumulated cost of $250m.</p>

<p>Of the 13% stake, 10% of Global Cyber was acquired from Majestic Star, and 3% from a company 
owned by Mr Xu Nai Feng (<b>Mr Xu</b>), a director of Shanghai Dazheng. Before 
this deal, Mr Xu owned 41.60% of Global Cyber, which he had apparently acquired 
from Majestic Star since the last deal in Mar-01, leaving Majestic Star with 39.24%. We don't know what he paid 
for the stake.</p>

<p>Of the consideration, a deposit of $45m was paid on 1-Jun-01 (when an MoU was signed) and 
$20m when the agreement was signed on 18-Jul-01, with the balance on completion. 
Both of the deposits were paid to Majestic Star, not Mr Xu.</p>

<p>In summary then, Yanion had paid a total of $250m to Majestic Star 
(controlled by Mr Ho) and Mr Xu for 27% of a company which had negative net 
assets of $1.8m.</p>

<h3>5th placing</h3>

<p>On 23-Aug-01, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010824/LTN20010824041.doc">agreed</a> to place through Dao Heng 86m new shares at $1.26 
per share, representing 19.8% of the existing issued shares and so once again 
blowing the general mandate granted at the AGM on 25-May-01, raising <b>$107.3m</b> 
after expenses. The placing was completed on 10-Sep-01.</p>

<h3>Interim Results</h3>

<p>Yanion's interim 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010925/LTN20010925033.doc">results announcement</a> on 24-Sep-01 stated:</p>

<blockquote>

<p>&quot;Up to now Dazheng WorldVest had entered into re-engineering contracts with 
five cable TV stations, covering over 1,000,000 cable TV&nbsp; subscribers.&quot;</p>

</blockquote>

<h3>Investment in Korning</h3>

<p>On 2-Jan-02, Yanion conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020104/LTN20020104010.doc">
agreed</a> to acquire Korning Investments Ltd (<b>Korning</b>), a BVI company, 
for US$12.8m (<b>HK$99.84m</b>) from Mr Brian Chen Wen-Suei (<b>Mr Chen</b>).</p>

<p>Korning's only asset was another BVI company, which in turn owned nothing, 
but proposed to enter into a 60:40 joint venture with a then un-named PRC party <i>&quot;engaged in the manufacturing and sale of pharmaceuticals 
in the PRC&quot;</i> and it was proposed that the JV would be engaged in the same 
industry.</p>

<p>It was a condition of the acquisition that a JV agreement be entered into 
with a planned capital of RMB40m, so Yanion would invest RMB24m (HK$22.4m) in 
cash, while the PRC party would invest RMB16m in tangible and intangible assets 
including exclusive rights to certain medicines..</p>

<p>As you can see then, Mr Chen was in effect being paid a finder's fee of 
$99.84m, or more than <b>400%</b> of the amount that would be invested in the venture. 
 
Why did Yanion find it commercially justifiable to pay such a massive commission 
for the investment? We do not know. You'll find out a little more about Mr Chen in 
our next article. </p>

<p>On 12-Apr-02, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020415/LTN20020415042.doc">
announced</a> that the JV agreement had been signed with a subsidiary of 
&quot;Chinese National Group of Traditional and Herbal Medicine&quot;, later 
named as &quot;Huahe Pharmaceutical Co Ltd&quot;. Yanion also said 
that it was now only going to buy 87% of Korning rather than 100%, but it would 
still pay the same US$12.8m for the privilege of being able to invest in an 
effective 52.2% in the JV, excluding the investment cost itself.</p>

<p>Not only that, but the registered 
capital of the JV had been increased from RMB40m to RMB126m, so Yanion would 
have to find RMB65.8m (<b>HK$61.8m</b>) to invest in the venture. That still 
leaves Mr Chen's commission at 162% of the investment.</p>

<p>The JV, eventually named Huayi 
Pharmaceutical Co Ltd (<b>Huayi</b>), would have <i>&quot;all 
intellectual properties of 16 medicines&quot;</i>. Where Western doctors have failed 
for centuries, Yanion said that the JV would have a medicine <b><i>&quot;for 
curing lung cancer&quot;</i></b>. Imagine what the Western tobacco companies would 
pay to eradicate lung cancer and sell their cigarettes without any health 
warning. Still, it seems that nobody at the 
Stock Exchange who vetted the announcement thought that this claim might be just a 
teensy weensy bit exaggerated. &quot;Treating&quot;, maybe, &quot;curing&quot;, not.</p>

<p>Of the 16 medicines, 4 would be injected by way of capital contribution to 
the JV, but the  other 12 would be acquired by the JV from the PRC party for 
RMB15m in cash.</p>

<p>The announcement also said that the remaining 13% of Korning would be 
acquired by <i>&quot;an investment company not connected with the directors, chief 
executives or substantial shareholders of the Group or its associates&quot;</i>. 
We'll tell you who that is in our next instalment.</p>

<p>It was also agreed that the PRC Party would:</p>

<blockquote>

<p>&quot;use its best efforts and experience in the pharmaceutical business to help 
the PRC JV to achieve a profit target of RMB50 million in the first year of its 
establishment&quot;.</p>

</blockquote>

<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020524/LTN20020524048.pdf">
circular</a> for the acquisition was dated 3-May-02 and the deal was completed 
on 9-Aug-02.</p>

<h3>Breach of Listing Agreement</h3>

<p>Next came an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020426/LTN20020426032.doc">
announcement</a> on 25-Apr-02 that Yanion would be late publishing its audited 
2001 results, a breach of the Listing Agreement for which the Stock Exchange 
has not taken any public action.</p>

<h3>6th placing</h3>

<p>On 24-May-02, with the 2001 results still not published, Yanion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020527/LTN20020527094.pdf">
agreed</a> to place through Dao Heng up to 68m new shares on a best efforts 
basis at $1.40 per share, representing 13.1% of the existing issued shares. By 
completion on 12-Jun-02, only 50.9m shares were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020612/LTN20020612059.pdf">
subscribed</a>, representing 9.8% of existing issued shares and raising net 
proceeds of <b>$69.4m</b>, of which $62.6m would be used to finance the capital 
contribution to Korning's JV.</p>

<h3>2001 Annual Report</h3>

<p>On 27-Jun-02 the results announcement was again
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020627/LTN20020627089.pdf">
delayed</a>, continuing the breach of the Listing Agreement, and this was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020731/LTN20020731181.PDF">
repeated</a> on 31-Jul-02. The results were finally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020813/LTN20020813028.pdf">
announced</a> on 12-Aug-02.</p>

<p>When the 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020823/LTN20020823076.htm">annual report</a> finally came out, it made for what 
forensic accountants would call fascinating reading.</p>

<h4>Kongnet</h4>

<p>The 2001 report said that Kongnet and its subsidiary had <i>&quot;no 
material transactions&quot;</i> since the date of their acquisitions up to 31-Dec-01. 
You may recall that Kongnet cost Yanion $35m cash, of which $33.9m was goodwill. 
Yanion wrote off $26.7m of that goodwill in 2001.</p>

<h4>Dazheng WorldVest</h4>

<p>The accounts state that in Oct-01, the directors of Global Cyber 
and Yanion <i>&quot;became aware&quot;</i> that Shanghai Dazheng had applied for a patent on a VOD 
chip in its own name, which was believed to infringe the intellectual property 
it had injected into the Dazheng WorldVest joint venture. As a result of the 
dispute:</p>
<blockquote>
  <p>&quot;the books and records in respect of Shanghai Dazheng have not 
  been made available for examination by the directors of Global Cyber&quot;.</p>
</blockquote>
<p>This meant that Yanion recorded the 27% investment in Global 
Cyber at cost of HK$250m rather than equity-accounting for it based on the 
underlying business (if any) of Dazheng WorldVest. It is beyond our 
comprehension how Global Cyber could own 80% of the joint venture and yet have 
no access to its financial records. What kind of control did they have? Did they 
not appoint a majority of the board of Dazheng WorldVest?</p>

<p>The board of Yanion wrote:</p>

<blockquote>
  <p>&quot;The Group has appointed its PRC lawyer to deal with this 
  matter and may take legal proceedings in the PRC to protect the investment 
  interests of the Group...&quot;</p>
</blockquote>
<p>But just to underline why they were not making any provision for 
the investment:</p>
<blockquote>
  <p>&quot;The development potential of this investment is huge and the 
  Group has been approached by various interested parties aiming at increasing 
  the commercial value of the investment which the Group would benefit if the 
  abovementioned dispute could be resolved by non-legal means.&quot;</p>
</blockquote>
<p>Yeah, right. Elvis is alive and well and writing annual reports.</p>

<p>Note 16 stated that when Yanion agreed on 29-Mar-01 to acquire the 4% interest in Global Cyber from 
Majestic Star:</p>

<blockquote>

<p>&quot;one of the executive directors of [Yanion] was also a director 
of Majestic Star...On 31 March 2001, the executive director of [Yanion] ceased 
to be a director of Majestic Star, but remained a signing officer thereof.&quot;</p>

</blockquote>

<p>The Yanion executive director in question was never named. Who was it, we 
wonder, and how come he was a director of Majestic Star? We are asked to believe 
that Majestic Star was an independent third party, but as you will see next, 
Yanion seems to find most of its acquisitions through them.</p>

<h4>Korning linked with Global Cyber</h4>

<p>Note 18 of the accounts reveals that under a loan agreement dated 18-Sep-01 
with Korning:</p>

<blockquote>

<p>&quot;a HK$90m payment (the &quot;Korning Deposit&quot;) was made to an independent third 
party via Majestic Star, under the instruction of the vendor of Korning...The 
Korning Deposit was interest free, unsecured and repayable within six 
months...if the Korning Vendor proved to be unable to secure the pharmaceutical 
joint venture...The repayment date was subsequently extended to 15 August 
2002...&quot;</p>

</blockquote>

<p>This was the first time that Majestic Star, the vendor of Global Cyber, 
was linked with the Korning deal. Amazingly, this connection, plus the fact that 
the $90m was already paid as a <i>&quot;loan&quot;</i>, had not been mentioned in the announcements of the Korning deal 
on 2-Jan-02 and 12-Apr-02 or the shareholder circular dated 3-May-02. Now look at that 
payment date: 18-Sep-01, more than 3 months before the Korning deal was first 
announced, but just 8 days after the 5th placing was completed, raising $107.3m. 
The omission of such a material fact from the announcements and circular cries 
out for regulatory intervention.</p>

<p>The auditors wrote:</p>

<blockquote>

<p>&quot;Due to the lack of documentary evidence surrounding the advance [of the 
$90m] we have not been able to satisfy ourselves as to the use thereof and 
therefore, its eventual and proper inclusion as part of the cost of the 
Pharmaceutical JV.&quot;</p>

</blockquote>

<h4>Modern Vocal</h4>

<p>The accounts also revealed that on 29-Oct-01, Yanion had agreed with Modern 
Capital Overseas Ltd, an &quot;independent third party&quot; to lend $11.5m to &quot;the vendor 
of Modern Vocal Ltd&quot;, who was not named (we wonder who), on an unsecured basis at 5% p.a.. On 
19-Dec-01, Yanion agreed to buy 60% of Modern Vocal Ltd from the still un-named 
vendor, for $13.5m, offsetting the loan and finally completing the acquisition 
on 22-Mar-02. This was described as an addition to the internet phone business 
of Yanion established when it acquired Kongnet.</p>

<p>In the 2002 annual report it turned out that Modern Vocal owns 90% of Tianjin 
Jitong Network Technology Co Ltd.</p>

<h4>Balance sheet</h4>

<p>The 27% of Global Cyber ($250m) and the deposits paid for acquisitions of 
Korning ($90m) and Modern Vocal ($11.5m) together amounted to $351.5m, or 83% of 
Yanion's net tangible assets at 31-Dec-01.</p>

<p>Auditors Ernst &amp; Young disclaimed their opinion and did not seek 
reappointment at the AGM.</p>

<h3>2002 Annual Report</h3>

<p>In the 2002
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030506/LTN20030506059.htm">
annual report</a>, Yanion said that the business of Dazheng WorldVest was 
<i>&quot;temporarily suspended&quot;</i> and that the legal dispute continued. So they wrote off 
the entire $250m investment.</p>

<p>They Internet Phone business of Kongnet and Modern Vocal recorded zero 
revenue and a loss before interest and tax of $20.99m.</p>

<p>The Chinese medicine business in Huayi recorded revenue for 5 months of HK$24.25m and a 
segment profit before tax and interest of $8.13m after depreciation and 
amortisation of $5.82m. This will leave some work to do if they are to reach the 
stated goal in the JV agreement of RMB50m (HK$47m) of profits in the first 12 months of the venture.</p>

<p>Note 35(a) of the report states that:</p>

<blockquote>

<p>&quot;the approval process for the joint venture by varies (sic) ministries and 
authorities and the setting up of the business took an extended period of time 
far exceeding what the parties had originally anticipated. Commitment to fully 
capitalise Huayi has now been extended to 26-Jul-03&quot;</p>

</blockquote>

<p>At the year end, Yanion had contributed just HK$20m of the $63m capital 
contribution to Huayi.</p>

<p>New auditors Horwath Hong Kong CPA Ltd said they <i>&quot;were not able to review 
the audit files [of Ernst &amp; Young] for the year ended 31 December 2001&quot;</i> and 
had not been able to carry out alternative audit procedures covering 2001, so 
qualified their opinion as they were unable to determine whether the opening 
balances at 1-Jan-02 were free from errors or misstatement.</p>

<p>At 31-Dec-02, Yanion held $23.415m in &quot;participating redeemable preference 
shares in a fund&quot;. The fund was not identified.</p>

<h3>Another listed company</h3>

<p>Tomorrow, we'll tell you how another recently listed company, supposedly 
independent of this situation, chose to sink the bulk of its net assets into 
shares of Yanion, Korning and Modern Vocal, and we'll also show you the 
connections between the two stories.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3259">CCIF CPA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15383">China Castson 81 Finance Company Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3771">Crazy Sports Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5577">PURVIEW (FAR EAST) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5651">Siao, Wen and Leung</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13789">WORLDVEST CAPITAL LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=3258">Chan, Charles Wai Dune</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9021">Cheng, Shu Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11867">Guo, Tom Duen How</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3781">Hui, Makie Po Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11865">Kao, John Ying Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3773">Leung, Wah Chai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=44809">Shadbolt, Brett Arthur</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2886">Wen, Carson Ka Shuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11866">Wu, Fred Fong</a></li>
				
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