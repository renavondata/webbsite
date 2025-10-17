
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

<script type="text/javascript">document.title="HSBC voting advice";</script>

	<div class="summary">The 23rd AGM in Project Poll is in London. We urge shareholders to vote against the re-election of Mr William Aldinger and adoption of the remuneration report, as a protest at the obscene compensation arrangements and the $41.3m pay-off involved in Mr Aldinger's non-termination as CEO of Household when HSBC acquired it.</div>

<h2 class="center">HSBC voting advice<br>
<span class="headlinedate">20 May 2003</span></h2>
  <table class="txtable">
    <tr>
      <td>Company:</td>
      <td>HSBC Holdings plc (<b>HSBC</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0005</td>
    </tr>
    <tr>
      <td>Meeting type:</td>
      <td>Annual</td>
    </tr>
    <tr>
      <td>Date of meeting:</td>
      <td>30-May-03</td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>11:00 (UK time)</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>20-May-03</td>
    </tr>
    <tr>
      <td>CCASS voting cut-off </td>
      <td>27-May-03 <span style="color:red"><b>VOTE NOW</b></span></td>
    </tr>
    <tr>
      <td>Notice of Meeting:</td>
      <td>
      <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030401/LTN20030401056.pdf">Click
        here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td><i>Webb-site.com </i>will require a poll, all proxies will be counted</td>
    </tr>
    <tr>
      <td>How to vote:</td>
      <td>See our <a target="_blank" href="../pages/howtovote.asp">voting guide</a></td>
    </tr>
  </table>

<p><b>Note to journalists:<br>
We have up to 4 proxy seats available inside this AGM. Please <a href="../contact/" target="_blank">contact
us</a> if you want one.</b></p>

  <table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>1</td>
      <td>Receive the accounts</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.1</td>
      <td>Re-elect Raymond Ch'ien Kuo Fung</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.2</td>
      <td>Re-elect Stephen K Green</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.3</td>
      <td>Re-elect A W Jebson</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.4</td>
      <td>Re-elect Brian Moffat</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.5</td>
      <td>Re-elect S W Newton</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.6</td>
      <td>Re-elect Helmut Sohmen</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.7</td>
      <td>Re-elect C S Taylor</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.8</td>
      <td>Re-elect Brian Williamson</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.9</td>
      <td>Re-elect William F Aldinger III</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Reappoint the auditor</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>4</td>
      <td>Approve the directors' remuneration report</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>5</td>
      <td>Mandate the directors to allot shares</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6</td>
      <td>Disapply pre-emption rights (special 
      resolution, <b>see comment</b>)</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>7</td>
      <td>Mandate the directors to repurchase shares</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>8</td>
      <td>Authorise the company to make political 
      donations and incur political expenditure (<b>see comment</b>)</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>9</td>
      <td>Authorise HSBC Bank plc to make political 
      donations and incur political expenditure (<b>see comment</b>)</td>
      <td>FOR</td>
    </tr>
    </table>

<h3>Reasons AGAINST items 2.9 and 4</h3>

<p>Mr William F Aldinger III was appointed to the board following the completion 
of the acquisition of US consumer finance firm
<a target="_blank" href="http://www.household.com/">Household International, 
Inc.</a> (<b>Household</b>) in March.</p>

<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030227/LTN20030227105.PDF">
circular</a> detailing the acquisition, on pages 99-101, details Mr Aldinger's 
compensation arrangements, which are, by any reasonable standard, obscene. 
Despite continuing to act as CEO of Household, he was paid a <i>&quot;termination&quot;</i> 
fee of <b>US$20.3m</b> for severing his existing contract, and has entered into 
a new one which appears to be at least as favourable as the old one, so that 
payment cannot be justified as compensation for a reduction in the pay he would 
have received without termination.</p>

<p>He also received a one-time <i>&quot;special retention grant&quot;</i> of shares in 
HSBC worth US$10m, and is promised further grants of $5.5m on the first and 
second anniversaries of his contract, a total value of <b>$21m</b>. On top of 
that, he gets an annual salary and guaranteed annual bonus (why don't they just 
call it salary) totalling US$5m, and benefits of $518,000, not to mention 
pension contributions. Perpetuating the error, Mr Aldinger's new 3-year contract 
provides that if he is terminated other than for <i>&quot;cause&quot;</i>, or if he 
resigns for <i>&quot;good reason&quot;</i> then he gets paid for the unexpired term 
(including bonuses), and he and his wife get free medical and dental benefits 
for life.</p>

<p>What we find most objectionable is the notion that just for arranging the 
takeover of his company, and without any change in his position or loss of a 
job, Mr Aldinger benefits to the extent of at least <b>US$41.3m</b> compared 
with the situation if Household had not been taken over. Takeover decisions 
should be driven by the merits to shareowners, not by the benefits that might 
accrue to management.</p>

<p>Shareholders have to wonder at the farce of the same person receiving both a
<i>&quot;termination&quot;</i> payment and a <i>&quot;special retention grant&quot;</i> from the 
same company at the same time. Did his office throw him a leaving party and a 
welcome party on the same day?</p>

<p>No doubt HSBC will tell you that this was a price worth paying to get the 
Household deal, and that it's not their fault that executives in the US extract 
such extortionate packages from their shareholders in return for managing their 
assets - they will claim that this is the &quot;going rate&quot; - but even in the US, 
there is (at last) a backlash underway against such princely packages, led by 
value investors such as Warren Buffett.</p>

<p>Although the remuneration report relates to the pre-existing directors of 
HSBC (excluding Mr Aldinger), we recommend you vote against it as a protest vote 
to discourage HSBC from writing this kind of contract in the future, and against 
Mr Aldinger's re-election for the same reason. If he is not re-elected, he will 
still serve as CEO of Household, so we presume his termination clause would not 
kick in and give him another pay-off.</p>

<h3>Comment</h3>

<h4>Item 6</h4>

<p>HSBC is the only company in the Hang Seng Index which is incorporated in the 
UK (strictly speaking, England and Wales, as Scotland has its own laws) and is 
dual-primary listed in the UK and Hong Kong. As such, it has to conform to the 
highest of the standards in the two markets, which normally means the UK 
standards.</p>

<p>The UK Companies Act provides statutory pre-emption rights for issues of 
shares for cash to existing shareholders. The HK Companies Ordinance does not. 
Under UK law, these rights can only be waived by special resolution, requiring a 
75% approval of those voting. Under HK law, it only requires a 50% approval to 
grant a general mandate for non-pre-emptive issues under the Listing Rules.</p>

<p>Under <a target="_blank" href="http://www.ivis.co.uk/pages/gdsc4_2.html">UK 
pre-emption guidelines</a>, companies limit their dis-application of pre-emption 
rights (resolution 6 above) to a maximum of 5% of issued shares in one year, and 
to 7.5% in a rolling 3-year period, with a maximum discount of 5%. These are the 
standards we are calling for in Hong Kong, under <a href="vampire1.asp" target="_blank">Project
Vampire</a>.</p>

<p>Recently, a majority of independent investors in 5 Hang Seng Index companies: 
Cathay Pacific, Cheung Kong Infrastructure, China Unicom, CITIC Pacific and 
Swire Pacific have all voted against the Hong Kong issue mandate, which allows 
up to a 20% new issue size with no limit on discount. Their fellow index members 
would do well to take note of this.</p>

<p>So HSBC complies with this Project Vampire as a result of the UK standards, 
and we only wish that it would arrange for subsidiary
<a target="_blank" href="0013AGM2003.asp">Hang Seng Bank Ltd </a>(0013) to do 
the same.</p>

<p><i>Webb-site.com </i>can reveal that next week, a leading Hong Kong company 
will be announcing, at its AGM, that it is amending its general issue mandate to 
comply with Project Vampire's recommendations. We'll tell you who that is after 
the meeting.</p>

<p><b>Item 8 and 9</b></p>

<p>The corporate manipulation of the democratic process by political campaign 
contributions is a disease that should be stamped out at its root. We need a 
society in which people are elected in a competitive and fair market for ideas 
and beliefs on how society should be governed, not on how much money they can 
raise for advertising backed by corporate lobbyists who inevitably expect 
legislative and regulatory favours in return. The US political process shows the 
worst excesses of this system, and it is often said that where the US goes, the 
UK is often not far behind.</p>

<p>However, in 2002 no political donations were made by HSBC, and the board 
states:</p>

<blockquote>
  <p>&quot;It is not proposed that the Company's long-standing policy of 
  not making contributions to any political party be changed. The authorities 
  are being sought only as a precautionary measure because of the uncertainty as 
  to what might unexpectedly fall within the very broad scope of the Political 
  Parties, Elections and Referendums Act 2000.&quot;</p>
</blockquote>

<p>The resolutions seek authority to spend up to a total of GBP300,000 over the 
next 4 years, in case any expenditure is caught within the definition referred 
to above. In view of the policy of no contributions expressed in the above 
statement, we are in favour of the resolutions.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=382">HSBC HOLDINGS PLC</a></li>
				
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