
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

<script type="text/javascript">document.title="Johnson Electric voting advice";</script>

	<div class="summary">At last, a Hang Seng Index constituent has moved to adopt a principal recommendation of Project Vampire, cutting its general mandate to issue new shares from 20% to 5%. Kudos to Johnson Electric for doing the right thing.</div>

<h2 class="center">Johnson Electric voting advice<br>
<span class="headlinedate">10 July 2003</span></h2>
<table class="txtable">
    <tr>
      <td>Company:</td>
      <td>Johnson Electric Holdings Limited (<b>JEH</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0179</td>
    </tr>
    <tr>
      <td>Meeting type:</td>
      <td>Annual</td>
    </tr>
    <tr>
      <td>Date of meeting:</td>
      <td>21-Jul-03</td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>11:00</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>10-Jul-03</td>
    </tr>
    <tr>
      <td>CCASS voting cut-off </td>
      <td>17-Jul-03 <span style="color:red"><b>VOTE NOW</b></span></td>
    </tr>
    <tr>
      <td>Notice of meeting</td>
      <td>
      <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030623/LTN20030623044.pdf">Click
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
      <td>Adopt the accounts</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Declare a final dividend</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.a</td>
      <td>Re-elect Winnie Wang Wing Yee</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.b</td>
      <td>Re-elect Richard Wang Li Chung</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.c</td>
      <td>Re-elect Peter John Wrangham</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.d</td>
      <td>Elect Arkadi Kuhlmann</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.e</td>
      <td>Elect Oscar de Paula Bernades Neto</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>4</td>
      <td>Confirm the remuneration of directors</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5</td>
      <td>Re-appoint PriceWaterhouseCoopers</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6</td>
      <td>Fix the number of directors at a maximum of 15</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>7.1</td>
      <td>Mandate the directors to issue additional 
      shares (<b>see comment</b>)</td>
      <td><b>FOR</b></td>
    </tr>
    <tr>
      <td>7.2</td>
      <td>Mandate the directors to repurchase shares</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>7.3</td>
      <td>Mandate the directors to issue repurchased shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    </table>

<h3>Comment: JEH nibbles at Vampire</h3>

<p>JEH is currently one of HK's better-governed companies. After two recent 
appointments, more than half of its directors (6 out of 11) are independent 
non-executive directors, which is a rarity in Hong Kong. JEH is 59.6% controlled 
by the Wang family trusts, so it would make the INEDs more independent if the 
family undertook not to vote on the election and re-election of INEDs.</p>

<p>Kudos to JEH, as it is the first company in the Hang Seng Index to adopt a 
principal recommendation of <a href="vampire1.asp" target="_blank">Project
Vampire</a>, which calls for placings of new shares for cash under the general 
mandate to be limited to 5% of issued shares and a maximum discount of 5%, while 
allowing the traditional 20% general mandate for non-cash issues, such as shares 
issued in payment for acquisitions.</p>

<p>JEH has in fact proposed to reduce its general issue mandate from last year's 
20% to 5%, full stop, without seeking a 20% mandate for non-cash issues for 
acquisitions. This means that any substantial acquisitions involving more than a 
5% issuance will be subject to shareholders' approval, although the Wang family 
would be able to give such approval with their majority vote.</p>

<p>However, JEH has not included any limit on the discount for issues, whereas 
we recommend a maximum discount of 5% be included in the mandate. Company 
secretary Susan Yip Chee-Lan&nbsp; told <i>Webb-site.com</i> by e-mail today <i>
&quot;we will consider to limit on the price discount not exceeding, may be at 3 or 
5%, on the next 2004 mandate&quot;.</i></p>

<p>On balance, although JEH has not fully complied with Vampire recommendations, 
this year we will recommend in favour of the mandate (item 7.1), and next year, 
we will look for that discount limit to be included. The only other company in 
the HSI with a Vampire-compliant mandate is HSBC Holdings plc, which as a 
UK-listed UK-incorporated company has to comply with the UK
<a target="_blank" href="http://www.ivis.co.uk/pages/gdsc4_2.html">Pre-emption 
Guidelines</a>, currently the international best practice on which Project 
Vampire is based.</p>

<h3>Reasons AGAINST</h3>

<h4>Item 7.3</h4>

<p>We vote against item 7.3, which involves extending the issue mandate to 
include any shares repurchased under the share repurchase mandate. There is an 
important distinction between the two mandates: under the buy-back mandate, all 
purchases must be on-market and at market price, and any shareholder can 
participate in the market. But in a share placing, the only people who get to 
participate are those chosen by the company, and at a discount. For these 
reasons, there should be no link between the two mandates, and we do not approve 
of extending the issue mandate in this way.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=632">JOHNSON ELECTRIC HOLDINGS LIMITED</a></li>
				
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