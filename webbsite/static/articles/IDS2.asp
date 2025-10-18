
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

<script type="text/javascript">document.title="Li & Fung/IDS: special treatment for 1 shareholder";</script>

	<div class="summary">While this will benefit CCASS Participants, it plays fast-and-loose with the Bermuda Companies Act and the Takeover Code. It would have been better to amend the scheme to allow all registered shareholders to make partial elections, rather than coming to an "arrangement" with one registered shareholder outside the terms of the scheme.</div>

<h2 class="center">Li & Fung/IDS: special treatment for 1 shareholder<br>
<span class="headlinedate">28 September 2010</span></h2>
<p>Following our <a href="IDS.asp">article</a> of 24-Sep-2010, <a href="../dbpub/orgdata.asp?p=362">Li &amp; Fung Ltd</a> (<strong>Li &amp; Fung</strong>, 
0494) and <a href="../dbpub/orgdata.asp?p=2387">Integrated 
Distribution Services Group Ltd</a> (<strong>IDS</strong>, 2387) have today
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100928/LTN20100928033.pdf" target="_blank">
announced</a> that &quot;successful arrangement has now been made&quot; to allow CCASS 
Shareholders (defined in the circular as &quot;Beneficial Owners who have deposited 
their respective IDS Shares with CCASS&quot;) to elect to receive Li &amp; Fung shares in 
the privatisation offer, without withdrawing their shares from CCASS and 
becoming registered shareholders. The deadline for election for the share 
alternative has also been extended by a week to 29-Oct-2010, 22 days after the 
shareholder meeting to decide on the scheme.</p>
<p>However, the announcement repeats the warning that:</p>
<blockquote>&quot;As set out on page 14 of the Scheme Document, no Scheme 
Shareholder is permitted to elect a combination of the Cash Alternative and the 
Share Alternative. Accordingly, CCASS Shareholders are reminded that they must 
not elect to receive a combination of the Cash Alternative and the Share 
Alternative.&quot;</blockquote>
<p>While they don't explicitly say so, the announcement can only mean that HKSCC 
Nominees Ltd (<strong>HSCCN</strong>), the nominee which holds all the shares in 
CCASS, is being given special treatment by IDS as a scheme shareholder to allow 
it to elect a combination of the shares and cash. This makes it different to all 
other scheme shareholders, including other nominees, who cannot make partial 
elections.</p>
<p>The formal scheme, to be submitted to the Supreme Court of Bermuda for 
sanction, is set out on pages S-1 to S-8 of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100913/LTN20100913333.pdf" target="_blank">
Scheme Document</a>. Paragraph 2 makes clear that each scheme shareholder in the 
share register will receive <u>either</u> cash or, if they 
elect, Li &amp; Fung Shares, for <u>every</u> Scheme Share 
held. It does not give discretion to the company to make exceptions to this 
all-or-nothing rule. Similarly, the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100913/LTN20100913355.pdf" target="_blank">
election form</a> only allows an all-or-nothing choice.</p>
<h3>One Scheme, two classes?</h3>
<p>By allowing HKSCCN to make a partial election, the company is giving 
special treatment to one shareholder and arguably creating two separate classes 
of shareholders for the purposes of the scheme, one class being HKSCCN, and the 
other class being all other registered shareholders. Normally the courts would 
take a dim view of allowing classes with different treatment to vote together on 
the scheme, and would require separate meetings and votes to be conducted in 
each class. Li &amp; Fung and IDS must be hoping that the Supreme Court of Bermuda 
either doesn't notice or permits this behaviour. To reduce the risk of an 
uninformed judgement, we will
<a href="http://www.gov.bm/portal/server.pt?open=512&amp;objID=204&amp;&amp;PageID=226623&amp;mode=2&amp;in_hi_userid=2&amp;cached=true" target="_blank">
fax the court</a> a copy of this article.</p>
<h3>Special deal for 1 shareholder?</h3>
<p>It is at least arguable that the special treatment of HKSCCN is a &quot;Special 
deal&quot; under Rule 25 of the
<a href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H587" target="_blank">
Takeover Code</a> (PDF p180), which says:</p>
<blockquote>&quot;Except with the consent of the Executive, neither the offeror 
nor any person acting in concert with it may make any arrangements with 
shareholders...during an offer...if such arrangements have favourable conditions 
which are not to be extended to all shareholders.&quot;</blockquote>
<p>It appears that the SFC either consents to this special arrangement with 
HKSCCN or thinks that Rule 25 does not apply.</p>
<p>The special arrangement also creates an incentive for any registered 
shareholder who is a nominee, including, for example, bank nominees, to deposit 
any shares they hold into CCASS in order to benefit from the special treatment. 
That's because if bank nominees (with more than 1 customer) do not deposit their 
shares into CCASS, then they will be unable to offer the share alternative to 
beneficial owners.</p>
<h3>What CCASS will do</h3>
<p>Speaking with <em>Webb-site</em> this morning, Derrick Fung, Head of Clearing 
at HKEx, which runs CCASS, explained that all CCASS Participants except Investor 
Participants will be allowed to make partial elections on the IDS shares in 
their account. So banks, brokers and custodian participants will be included. 
Investor Participants are deemed to be holding as beneficial owners, so they 
will be treated like registered shareholders. He agreed that HKSCCN was getting 
special treatment above other registered shareholders.</p>
<p>Mr Fung also agreed that the warning from IDS quoted above, that 
custodians should not allow beneficial owners to make partial elections, was in 
practice unenforceable, because CCASS is not party to the relationship between 
custodians and their clients, so it cannot know whether an election made by a 
custodian represents complete elections from beneficial owners or includes 
partial elections. Indeed, some custodians in CCASS are sub-custodians to other 
custodians, so these sub-custodians must allow their master custodians to make 
partial elections, so that they in turn can serve beneficial owners.</p>
<p>If, near the election deadline on 29-Oct-2010, the Li &amp; Fung share price is 
close to $35.90, then the share alternative would be close to the cash offer of 
$21. We would then expect some clients to want cash, some to want shares, and 
some to hedge their bets. At that point, the privilege of standing behind a 
CCASS Participant would come into play.</p>
<h3>Conclusion</h3>
<p>While this outcome will benefit CCASS Participants, it plays fast-and-loose 
with the Bermuda Companies Act and the Takeover Code. It would have been better 
to amend the scheme to allow all registered shareholders to make partial 
elections, rather than coming to an &quot;arrangement&quot; with one registered 
shareholder outside the terms of the scheme. We hope that those contemplating future schemes of arrangement will 
take notice of this case and not offer all-or-nothing choices to shareholders.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22854">INTEGRATED DISTRIBUTION SERVICES GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=362">LI & FUNG LIMITED</a></li>
				
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