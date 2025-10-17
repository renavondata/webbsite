
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

<script type="text/javascript">document.title="Hang Seng Bank voting recommendations";</script>

	<div class="summary">This year Hang Seng Bank has become the third company in the Hang Seng Index to comply with a principal recommendation of Project Vampire, cutting its cash issue mandate to 5%. We recommend in favour of that, but against the re-election of an independent director.</div>

<h2 class="center">Hang Seng Bank voting recommendations<br>
<span class="headlinedate">8 April 2004</span></h2>
<h2>Voting recommendations</h2>
<table class="txtable">
    <tr>
      <td>Company:</td>
      <td>Hang Seng Bank Limited (<b>HSB</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0011</td>
    </tr>
    <tr>
      <td><b>Date of meeting:</b></td>
      <td><b>22-Apr-04</b></td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>15:30</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>08-Apr-04</td>
    </tr>
    <tr>
      <td>Notice of Meeting:</td>
      <td><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040330/LTN20040330090.pdf">Click here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td><i>Webb-site.com </i>will require a poll, all proxies will be counted</td>
    </tr>
</table>

<p><b>Note to journalists:<br>
We have up to 4 proxy seats available inside this AGM. Please <a href="../contact/" target="_blank">contact
us</a> if you want one.</b> </p>

<table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>1</td>
      <td>To adopt the accounts</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2(a)</td>
      <td>To re-elect Eric Li Ka Cheung as INED</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2(b)</td>
      <td>To re-elect Jenkin Hui Ching Kim as INED</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2(c)</td>
      <td>To re-elect David Sin Wai Kin as INED</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>2(d)</td>
      <td>To elect Simon Jeremy Glass as Director</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3</td>
      <td>To re-appoint KPMG as auditors</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>4</td>
      <td>To appoint Simon Jeremy Glass as Managing Director</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5</td>
      <td>To mandate the Directors to repurchase shares on-market</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6</td>
      <td>To mandate the Directors to issue additional shares <b>
      (see note)</b></td>
      <td><b>FOR</b></td>
    </tr>
</table>

<h3>Reasons</h3>

<p>Dr David Sin Wai-kin (<b>Dr Sin</b>), 74, is proposed for re-election as an 
independent non-executive director (<b>INED</b>) of HSB. He has been a director 
since November 1991. He is also an executive director of
<a target="_blank" href="../dbpub/articles.asp?p=432">New World Development Co Ltd</a> (<b>NWD</b>, 
0017), which has spent several years struggling with a post-bubble debt burden.</p>

<p>The extent of the loans and deposits between NWD and HSB is unknown, but NWD 
lists HSB and its parent, The Hongkong and Shanghai Banking Corporation Ltd as <i>&quot;Principal Bankers&quot;</i> 
in its annual report (where bankers are listed alphabetically) while a subsidiary, <a href="../dbpub/articles.asp?p=468">New World 
TMT Ltd</a> (0301) lists HSB as its only Principal Banker, another subsidiary, <a target="_blank" href="../dbpub/articles.asp?p=9500">New World 
China Land</a> (0917) put the two banks at the top of its non-alphabetic list of 
Principal Bankers, and a third subsidiary, NWS Holdings Ltd (0659) also includes 
the two banks in its list of Principal Bankers. We regard these banking&nbsp;relationships as a potential conflict 
of interest for Dr Sin, and so cannot regard him as independent of HSB.</p>

<p>As we remarked in last year's recommendations, there is a strong historic 
bond between HSB and NWD. The Chairman and controlling shareholder of NWD, Cheng 
Yu-tung, 78, is also an INED of HSB and has been a director since 1985.</p>

<p>Lee Quo-Wei, 85, Honorary Chairman of HSB, has been a director of NWD 
since 1972. Ho Tim,  95, who joined the bank in 1933, has been a director of NWD 
since 1972. Michael Sandberg, former Chairman of HSBC, has been a director of 
NWD since 1987 (just after he left HSBC) and was a director of NWD from 
1972-1977. These three are listed as INEDs of NWD.</p>

<p><i>Side note:</i></p>

<p>While it is not relevant to HSB's meeting, there is a tangled mess of 
cross-directorships between HSB, NWD, Miramar Hotel and Investment Co, Ltd (<b>Miramar</b>, 
0071) and King Fook Holdings Ltd (<b>King Fook</b>, 0280), which will be 
relevant to those companies. This is so complicated that a table is the best way 
to describe it:</p>

<table class="txtable center">
    <tr>
      <th>&nbsp;</th>
      <th>HSB</th>
      <th>NWD</th>
      <th>King Fook</th>
      <th>Miramar</th>
    </tr>
    <tr>
      <td>Cheng 
      Yu Tung</td>
      <td>INED</td>
      <td>Ch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Peter Cheng Kar Shing</td>
      <td>&nbsp;</td>
      <td>MD</td>
      <td>INED</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>
      Dr Sin</td>
      <td>INED</td>
      <td>ED</td>
      <td>&nbsp;</td>
      <td>INED</td>
    </tr>
    <tr>
      <td>
      Richard Tang Yat Sun</td>
      <td>INED</td>
      <td>&nbsp;</td>
      <td>Vice Ch</td>
      <td>Dir</td>
    </tr>
    <tr>
      <td>Ho Tim</td>
      <td>Dir</td>
      <td>INED</td>
      <td>&nbsp;</td>
      <td>Hon Ch</td>
    </tr>
    <tr>
      <td>Lee Quo-Wei</td>
      <td>Hon Ch</td>
      <td>INED</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Howard Yeung Ping Leung</td>
      <td>&nbsp;</td>
      <td>INED</td>
      <td>Ch</td>
      <td>Dir</td>
    </tr>
</table>

<h3>Hang Seng bites Vampire</h3>

<p><i>Webb-site.com</i> is delighted to note that HSB has complied with one of 
the principal recommendations of&nbsp; <a href="vampire1.asp" target="_blank">Project
Vampire</a>, by limiting its general mandate to issue new shares for cash to 5% 
of the existing issued shares. </p>

<p>Project Vampire also recommends a maximum discount limit of 5%, to guard 
against the transfer of value from existing shareholders to placees. This limit 
applies to UK-listed companies, including HSB's parent HSBC Holdings plc. HSB 
didn't go that far, but to reward them this year, we recommend you vote in 
favour of the general mandate. Next year, we hope they will include a discount 
limit.</p>

<p>HSB joins <a target="_blank" href="../dbpub/articles.asp?p=632">Johnson Electric Holdings Ltd</a> 
(0179) and HSBC as the first 3 members of the Hang Seng Index which comply with 
part or all the recommendations of Project Vampire, which are:</p>

<ul>
  <li>The mandate to issue shares for cash, other than
    by a rights issue, should be for not more than 5% of the outstanding shares a the time of the mandate</li>
  <li>The discount for shares issued other than by a 
    rights issue may not exceed 5%.</li>
  <li>The mandate to issue shares for non-cash purposes,
    including acquisitions, should be for not more than 20% of the outstanding shares</li>
</ul>

<p>As we <a target="_blank" href="hkexbeavampire.asp">noted</a> earlier this 
week when HKEx almost lost its general mandate by shooting for a 20% cash 
mandate, the tide has turned in the battle for pre-emptive rights in Hong Kong.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=395">HANG SENG BANK, LIMITED</a></li>
				
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