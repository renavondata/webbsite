
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

<script type="text/javascript">document.title="HK & China Gas Voting Recommendations";</script>

	<div class="summary">The 4th AGM in Project Poll is on 29-Apr-03, and we belatedly produce our voting recommendations, including a vote against the re-election of one of the company's principal bankers as an independent director, and against the general mandate. There are only a couple of days left for proxy votes, so VOTE NOW.</div>

<h2 class="center">HK & China Gas Voting Recommendations<br>
<span class="headlinedate">21 April 2003</span></h2>
  <table class="txtable">
    <tr>
      <td>Company:</td>
      <td>The Hong Kong and China Gas Company Limited (<b>HKCG</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0003</td>
    </tr>
    <tr>
      <td><b>Date of meeting:</b></td>
      <td><b>29-Apr-03</b></td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>12:00</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>21-Apr-03 (<b>VOTE NOW</b> - sorry this is late!)</td>
    </tr>
    <tr>
      <td>Notice of Meeting:</td>
      <td>
      <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030410/LTN20030410063.pdf">Click
        here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td><i>Webb-site.com </i>will require a poll, all proxies will be counted</td>
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
      <td>3.1</td>
      <td>Re-elect Lee Hon Chiu</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.2</td>
      <td>Re-elect David Li Kwok Po</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>4</td>
      <td>Re-appoint PriceWaterhouseCoopers</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5</td>
      <td>Approve each Director's fee at HK$130k p.a. and twice that for the 
      Chairman</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6.1</td>
      <td>Mandate the Directors to issue additional shares and repurchase shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>6.2</td>
      <td>Extend the issue mandate granted by 6.1 to include repurchased shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    </table>
<h3>Reasons AGAINST</h3>

<h4>Item 3(b) </h4>

<p>David Li Kwok Po (<b>Mr Li</b>), aged 63, is proposed for re-election as an 
independent non-executive director (INED) of HKCG. He is Chairman and Chief 
Executive of The Bank of East Asia, Ltd (<b>BEA</b>, 0023) which is listed by 
HKCG in its annual report as one of its two Principal Bankers. Mr Li's bank 
therefore derives an interest spread from its loans to, or deposits from, HKCG, 
and possibly other banking fees as well. The commercial relationship represents 
a potential conflict of interest for Mr Li, and we cannot regard him as 
independent of HKCG. Certain other listed companies in the Henderson group which 
controls HKCG also list BEA as Principal Bankers.</p>

<p>We <a target="_blank" href="0023agm2003.asp">cited</a> the same conflicts in 
opposing the re-election of Lee Shau Kee, Chairman of HKCG and its controlling 
shareholder, when he was up for re-election as an independent director of BEA. 
The cross-directorships of Mr Lee and Mr Li represent a further conflict of 
interest. Mr Li is also an INED of Henderson Cyber Ltd.</p>

<h4>Items 6.1 and 6.2</h4>

<p><i>Webb-site.com</i> urges all investors to vote against the general issue mandate
for all listed companies, for the reasons explained in <a href="vampire1.asp" target="_blank">Project
Vampire</a>. Item 6.1 and 6.2 contain that mandate, so vote against them. The 
non-pre-emptive issue mandate allows management to choose who the shareowners 
are by allotment of shares. This corrupts the governance mechanism. Shareowners should govern 
management, not the other way around.</p>

<p>We normally vote in favour of a mandate for share repurchases, because these 
are only permitted on-market and therefore the risk of abuse is much lower, as 
the company cannot choose who it purchases from but must accept shares sold by 
any shareholder in the market. However, HKCG has chosen to 
combine the new issue mandate with the share repurchase mandate as item 6.1, and 
so we must oppose the entire mandate. This practice of combining resolutions for 
different purposes to try and push them through &quot;en bloc&quot; is unacceptable. They should have proposed the mandates 
separately, and until they do, we must oppose the combined resolution.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=416">HONG KONG AND CHINA GAS COMPANY LIMITED (THE)</a></li>
				
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