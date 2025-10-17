
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

<script type="text/javascript">document.title="Egana update";</script>

	<div class="summary">We update you on the Egana (0048) situation, and the answers management provided to some of the questions in a recent conference call with investors. A recording of the call is now available for download from <i>Webb-site.com</i>, in the interests of fair disclosure.</div>

<h2 class="center">Egana update<br>
<span class="headlinedate">6 August 2007</span></h2>
<p>Things have been moving fast since our <a href="eganaupbest.asp">article</a> criticising EganaGoldpfeil 
(Holdings) Ltd (<b>Egana</b>, 
0048) was published late on 26-Jul-07. The day after, a Friday, the stock fell 
48.3% to $2.74. Management held a press conference that day, in which, according 
to the <i>
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=1&art_id=50042&sid=14687069&con_type=1">
Standard</a></i>, they denied that Egana had any business relations with Upbest 
since 1998.</p>
<p>Egana's shares briefly traded during the pre-opening session on Monday 30-Jul-07, 
while the management was in a conference call with Citigroup and institutional 
investors. The call came to an abrupt end when one of the investors asked why 
the stock had been
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070730/LTN20070730068.HTM">
suspended</a> at 10.00, something which was clearly a surprise to the directors 
on the call, although Egana later
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070730/LTN20070730085.pdf">
claimed</a> that the suspension was made at its request. The stock has not 
traded since, while investors await clarification.</p>
<p>Investors had evidently digested our article over the preceding weekend, and a lot of interesting questions were asked, 
some of which were answered. In the interests of fair 
disclosure, <i>Webb-site.com</i> has obtained a recording of that call, and you 
can listen to it in glorious MP3 by
<b>
<a href="../codocs/EganaConferenceCall070730am.mp3">downloading</a></b> it. We 
did not participate in the call.</p>
<p>During the call, Egana's management admit that Upbest Group 
Ltd (<b>Upbest</b>, 0335) is the &quot;LISTED CO&quot; manager of the closed-end 
investment funds which has been referred to in its accounts since 2002. As 
LISTED CO is cross-referenced elsewhere in the accounts, it follows from 
this admission that:</p>
<ul>
	<li>Upbest is the group with which Egana had placed substantial &quot;deposits&quot; for 
	possible acquisitions as at 31-May-02 (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/0048/F121.pdf">note 
	18(c)(iii)</a>) and as at 31-May-03 (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031022/00048/EWF121.pdf">note 
	21(c)</a>). See below for information on earlier deposits we have discovered 
	since our last article.</li>
	<li><i>&quot;the controlling shareholder of the LISTED CO&quot;</i> was Mr 
	Charles Cheng Kai Ming, the 
	controlling shareholder of Upbest.</li>
	<li>Mr Cheng had a beneficial interest in the private company which issued 
	equity-linked notes to Egana (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/0048/F121.pdf">note 
	18(c)(i)</a> of the May-02 accounts and similarly in later accounts)</li>
	<li>Mr Cheng was a director of the owner of the company which in Dec-00 
	bought the EganaGoldpfeil men's wear trademark for Greater China, generating 
	income of $75m for Egana, a substantial part of its $91.75m (as restated) 
	net profit for the year to Dec-00, and which Egana bought back in Aug-01, as 
	stated in
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/0048/F121.pdf">
	note 13(a)</a> of the May-02 accounts.</li>
	<li>Mr Cheng had beneficial interests in one of the purchasers of a 
	minority interest in Junghans Asia, the sale of which (to two purchasers) 
	generated an $80m gain in the year to May-02, preventing a net loss for 
	the 17-month year (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/0048/F121.pdf">note 
	4(a)</a> of the accounts). Egana bought back the stake in Jun-04 for $86m 
	and booked it as goodwill.</li>
	<li>the aborted investment in a gas project, which Egana now discloses was 
	in Zuhai, was through a private closed-end fund managed by Upbest (note 
	17(b)(ii) of the May-02 accounts and 18(a)(iv) of the May-03 accounts). 
	Although it is now clear that this was not the same gas project as Grand 
	Field's, which was in Chongqing, it is also clear that Upbest was involved 
	in both projects.</li>
</ul>
<p>Regarding deposits for possible acquisitions, after we published our article, 
we looked back further in the accounts and found a similar unsecured deposit of $204.8m at 
31-Dec-00 (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010518/0048/F119.pdf">note 
18(d)(i)</a>) with <i>&quot;an independent third party, a subsidiary of a Hong Kong listed company, as deposits for 
the proposed investment in a Hong Kong listed company introduced by the third 
party&quot;. </i>The proposal did not proceed and the money was subsequently 
refunded.</p>
<p>Looking back a further year, we found a <i>&quot;sincerity deposit&quot;</i> of 
$140.4m at 31-Dec-99 with <i>&quot;an independent third party, a company incorporated 
in Hong Kong, as sincerity deposit for the proposed investment in a group of 
companies introduced by the third party.&quot; </i>In both years, the deposits were 
interest-bearing at commercial rates, whereas in the following 2 years 
(31-May-02 and 31-May-03), they were interest-free. Upbest was listed on 
18-Oct-00, so the descriptions of the borrower would be consistent with Upbest, although it 
could be a third party.</p>
<h3>Promissory notes</h3>
<p>During the call, management stated that about half of the HK$821m of 
promissory notes as at 30-Nov-06 were amounts lent to small to medium sized 
customers which generate about 10% of Egana's revenue, and that the others were 
amounts lent to various &quot;finance companies&quot; in Hong Kong and overseas. They did 
not say whether that includes Upbest or Upbest-related companies.</p>
<h3>On sabbatical, but in day-to-day control?</h3>
<p>During the conference call, investors asked why the Executive Chairman Hans-Joerg 
Seeberger was not on the call. Management said he has been <i>&quot;on sabbatical&quot;</i> 
since April, and will not be back until the end of September. This is 
interesting on two levels:</p>
<ul>
	<li>Mr Seeberger's name has been appearing in company announcements, some of which 
	state that each of the directors take responsibility for the accuracy of the 
	announcement, including
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070727/LTN20070727105.pdf">
	this one</a> on 27-Jul-07 regarding the plunging share price. How does he 
	take responsibility if he is on sabbatical?</li>
	<li>According to page 110 of the latest
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061003/00048/EWF126.pdf">
	directors' report</a>, the company's various bank facilities contain 
	conditions that Mr Seeberger should <i>&quot;control the day-to-day management&quot;</i> 
	of Egana, and it will be an event of default if he doesn't, in which case 
	all amounts may become immediately due and payable. Is he still controlling day-to-day 
	management while on a 6-month sabbatical?</li>
</ul>
<p>The most recent
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801347.pdf">announcement</a> dated 1-Aug-07, stated 
in the footnote that Mr Seeberger 
was <i>&quot;not able to approve this announcement due to health reason&quot;</i>.</p>
<h3>Olympian foresight</h3>
<p>As an amusing but minor detail, during the call, Egana's management attempted 
to justify the investment in Tonga Group Holdings Ltd, which was pursuing a 
forestry project in Suriname and a B2B building materials platform, as described 
in our article. They said that they hoped to supply wood and building materials 
to the Beijing Olympic village. We find that story hard to believe, because:</p>
<ul>
	<li>the annual reports never mentioned that purpose; and</li>
	<li>the first investment in Tonga was in Dec-00, followed by investments in 
	Feb-01 and Mar-01, but Beijing didn't win the contest to host the Olympics 
	until 13-Jul-01.</li>
</ul>
<h3>Board changes</h3>
<p>Andy Ng Yick Man has resigned as an INED of
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801347.pdf">
Egana</a>,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801318.pdf">
Incutech</a> (0356),
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801187.pdf">
UBA</a> (0768) and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801262.pdf">
Upbest</a>, by reason of <i>&quot;too much workload&quot;</i>. David Wong Wai Kwong has 
resigned as an INED of
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070803/LTN20070803238.pdf">
Upbest</a> and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070803/LTN20070803199.pdf">
UBA</a> by reason of <i>&quot;too much workload&quot;</i>, and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070803/LTN20070803266.pdf">
resigned</a> as an ED of Incutech <i>&quot;in light of his recent workload&quot;</i>.</p>
<p>Since 26-Jul-07, Upbest shares are down 33.5%, Incutech down 43.8%, and UBA 
down 7.1%.</p>
<h3>Tonic</h3>
<p>Meanwhile, on 3-Aug-07 Tonic (0978)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070803/LTN20070803245.pdf">
announced</a> that Egana directors Peter Lee Ka Yue and David Wong have resigned 
as ED and NED of Tonic respectively, <i>&quot;by reasons of their recent workload and 
Egana's anticipated disposal of its interest in [Tonic] (subject to definitive 
documentation to be entered into).&quot;</i> Egana owns about 20% of Tonic, but 
apparently not for much longer.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4993">China Merchants Land Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16197">DT Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2078">EGANAGOLDPFEIL (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9843">UBA INVESTMENTS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11823">UPBEST GROUP LIMITED</a></li>
				
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