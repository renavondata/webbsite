
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

<script type="text/javascript">document.title="Vote-rigging plan for PCCW meeting";</script>

	<div class="summary">Webb-site.com has discovered compelling evidence of an attempt to rig the shareholder vote in the proposed privatisation of PCCW Ltd, involving hundreds of new holders of one board lot each, many of whose names match insurance agents of Fortis Asia, a former fellow subsidiary of PCCW.</div>

<h2 class="center">Vote-rigging plan for PCCW meeting<br>
<span class="headlinedate">1 February 2009</span></h2>
<p>Late on 14-Jan-09, we received an anonymous tip-off, via the
<a href="../contact/">tip-off facility</a> on <em>Webb-site.com</em>, alleging 
that there was a scheme in which hundreds of Fortis insurance sales agents would 
each receive one lot (of 1,000) PCCW Limited (<strong>PCCW</strong>, 0008) 
shares, and that in return, they would sign a proxy form (which would allow the 
holdings to count in favour of the deal). If the proposed privatisation 
succeeds, then of course they would each get HK$4,500 for the shares.</p>
<p>We normally treat anonymous tip-offs with great suspicion, because if someone 
isn't willing to disclose their identity to us (and we do protect the identity 
of our sources) then they may simply be airing a grudge. However, in this 
instance, we could not think of any reason why someone would make up such a 
specific story. So early on 15-Jan-09 we reported the allegation to the SFC and 
ICAC.</p>
<p>On Thursday 29-Jan-09, the first working day after Chinese new year, your editor 
visited Computershare, the registrar of PCCW, to investigate, and ran into two 
journalists from Hong Kong Economic Times who were looking at similar issues.</p>
<p>Due to the size of the 26,000-member register, we just took an alphabetic sample 
of names beginning with "Chan F" to "Chan P". In that sample alone, we found 30 
transfers lodged on 21-Jan-09, each of 1,000 shares, so by extension there must 
be hundreds of such transfers lodged on the same day.</p>
<p>Of the 30 transferees in the sample, 2 gave their address as "Level 28, Office 
Tower, Langham Place" which is an office of
<a target="_blank" href="http://www.hk.ficainsurance.com/">Fortis Insurance 
Company (Asia) Limited</a> (<strong>Fortis Asia</strong>, formerly known as 
&quot;Pacific Century Insurance Company Ltd&quot;), and a further 20 have names matching 
those of agents of Fortis Asia on the register of the
<a target="_blank" href="http://www.hkfi.org.hk/en_insurance01.htm">Insurance 
Agents Registration Board</a> run by the self-regulatory Hong Kong Federation of 
Insurers. So it looks like about two-thirds of the new transferees are Fortis 
Asia insurance agents. Outside of the sample space (but only looking at a 
fraction of the register), we found 10 more new shareholders who gave the 
Langham Place office address, each with 1,000 shares, all of whom became 
shareholders on 21-Jan-09 except for one, the name of a Regional Director, who 
became a shareholder on 22-Dec-08, ahead of the first shareholder meeting on the 
privatisation on 30-Dec-08, which was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081230/LTN20081230621.pdf">
adjourned</a>, presumably because it was clear from the proxies that the 
privatisation would be defeated. The offer was subsequently increased.</p>
<p>It is incredibly unlikely that several hundred people, most of whom happen to 
work for the same company, would separately, simultaneously and independently 
decide to transfer the same number of shares into their own name.</p>
<p>It is much more likely that a single person, or a very small number of people, 
took a larger holding and broke it into lots of 1,000 shares each. <em>
Webb-site.com</em> believes someone, or some group, is orchestrating a plan to 
affect the outcome of the shareholder meeting. Under section 166(2) of the
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&amp;Start=32.1.1&amp;Count=700&amp;Expand=32.1">
Hong Kong Companies Ordinance</a>, the scheme requires two things from the 
&quot;Court Meeting&quot; of shareholders: 75% approval by number of shares, and 50% 
approval by number of shareholders (in person or by proxy). It is the second 
requirement that the plan is targeted at. You will not, of course, see hundreds 
of people turning up at the meeting with 1,000 shares each - it is enough for 
them to just sign a proxy and then the coordinator can mail the proxies in.</p>
<p>The question is, who is behind the scheme to corrupt the vote, and who is paying 
for it? Compared to the size of the privatisation, it wouldn't cost very much to 
run this plan - e.g. 500 shareholders with 1,000 shares each would only cost 
about $2m in total. This is a multi-billion dollar deal. Despite the historic 
association between Fortis Asia and PCCW, there is no evidence at this stage of 
any involvement by persons connected to PCCW.</p>
<p>We sent the SFC and ICAC a further update on 29-Jan-09 after inspecting the 
register.</p>
<h3>Precedent from 1992</h3>
<p>There is a precedent for SFC action in this case. In February 1992, in a 
convoluted transaction, <a href="../dbpub/articles.asp?p=6910">Evergo 
International Holdings Co Ltd</a> tried to privatise
<a href="../dbpub/articles.asp?p=1579">Chinese Estates Holdings Ltd</a> 
(0127). According to an SFC statement at the time, after the shareholder 
meeting, the Chairman of the Takeover Committee of the SFC filed an affidavit at 
the hearing of the Bermuda Supreme Court on 31-Mar-92 to sanction the scheme, 
stating that the Committee was &quot;of the view that there are strong <em>prima 
facie</em> grounds for concern about the fairness of the vote at the February 10 
meeting&quot;. The SFC asked the court to either adjourn for 30 days or reject the 
scheme. Chinese Estates withdrew the proposal the same day and the scheme 
lapsed. </p>
<p>The SCMP wrote on 2-Apr-92:</p>
<blockquote>
	<p>&quot;In its affidavit the SFC said the overwhelming majority of 
	shareholders who voted in favour of the transaction held just one board lot of 
	shares (4,000 shares). Of the 644 who voted in favour, 527 had precisely one 
	board lot. Of the 527 in favour, 491 were not on the register at the end of 
	August immediately before the announcement of the privatisation proposal.</p>
	<p>&quot;By comparison, only one shareholder holding exactly one board 
	lot voted against the privatisation out of the 214 shareholders voting against&quot; 
	said the SFC.</p>
	<p>&quot;The voting pattern suggests, and our enquiries so far lend 
	weight to the suggestion, that one person did orchestrate both a splitting of 
	shares into single board lots and the purchase of shares in single board lots.&quot;&quot;</p>
</blockquote>
<h3>What the SFC should do</h3>
<p>The SFC and ICAC have statutory powers that we don't. They can obtain 
evidence from the registrars, including the identity of the person(s) who 
transferred the shares, the identity of the person(s) who lodged the share 
transfers and paid the transfer fees, as well as trace the share certificates 
lodged by those persons. Hong Kong Securities Clearing Co Ltd, the central 
depository owned by HKEx, can also provide any necessary evidence if the 
certificates originated from its vaults and were withdrawn by 1 or more persons.</p>
<p>Schemes of Arrangement don't just require shareholders' approval. They also 
require the sanction of the High Court. <em>Webb-site.com</em> urges the SFC to 
petition the court to exclude from the "majority of holders" any registered 
shareholders who first became registered shareholders after the possible 
privatisation offer was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081030/LTN20081030919.pdf">announced</a> on 30-Oct-08, but include their shares in the 
"75% by value" test. 
This would allow the shares to count at their normal voting weight (1 vote per 
share) but would not corrupt the vote (1 vote per holder).</p>
<h3>What the Government should do</h3>
<p>Going forward, the Government should amend the Companies Ordinance to remove 
this archaic "majority of holders" requirement, because:</p>
<ol>
	<li>it goes against the 1-share-1-vote principle</li>
	<li>it gives disproportionate voting weight to small shareholders</li>
	<li>it attracts attempts to corrupt the vote (for or against a scheme)</li>
	<li>the Listing Rules (since 1-Jan-09) require all meetings to be by poll 
	(1-share-1-vote) rather than a show of hands. The majority-of-holders is 
	like imposing a show of hands veto on a poll vote.</li>
</ol>
<p>If the SFC takes no action, then in effect it would be declaring open season 
on voting manipulation. This can work both ways - a hedge fund that might short 
a stock which is the subject of a privatisation offer could arrange for hundreds 
of holders, with 1 board lot (or even 1 share) each, to vote against a future 
privatisation proposal of a company, if that is considered acceptable behaviour. 
Ironically, <em>Webb-site.com</em> pointed out the possibility of such a plan 9 
years ago, in an article titled <a href="hktscheme.asp">Schemes &amp; 
Votes</a> about the takeover by PCCW of Cable &amp; Wireless HKT Ltd.</p>
<p>For disclosure purposes, as part of the successful
<a href="projectpoll1.asp">Project Poll</a>, since 2003 <em>
Webb-site.com </em>has 5 registered shareholdings of 2 shares each in PCCW and 
other blue chips of the time. Consequently we also benefit from disproportionate 
voting weight on schemes of arrangement.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9425">TongChuang Holdings Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=149">Headcount test</a></li>
				
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