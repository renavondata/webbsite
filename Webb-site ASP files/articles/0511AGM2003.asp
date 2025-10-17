
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

<script type="text/javascript">document.title="TVB voting advice";</script>

	<div class="summary">Due to an outdated law on broadcasters, TVB is the only company with foreign ownership restrictions on its HK-listed shares, which makes voting incredibly complicated. Still, we'll give it a try, and recommend investors vote against the re-election of an INED and of course, against the issue mandate. This is the 18th meeting in Project Poll.</div>

<h2 class="center">TVB voting advice<br>
<span class="headlinedate">19 May 2003</span></h2>
<table class="txtable">
    <tr>
      <td>Company:</td>
      <td>Television Broadcasts Limited (<b>TVB</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0511</td>
    </tr>
    <tr>
      <td>Meeting type:</td>
      <td>Annual</td>
    </tr>
    <tr>
      <td>Date of meeting:</td>
      <td>28-May-03</td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>11:00</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>19-May-03</td>
    </tr>
    <tr>
      <td>CCASS voting cut-off </td>
      <td>23-May-03 <span style="color:red"><b>VOTE NOW</b></span></td>
    </tr>
    <tr>
      <td>Notice of meeting</td>
      <td>
      <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030410/511/F104.pdf">Click
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
      <td>Sanction a final dividend</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3</td>
      <td>Re-elect Li Dak Sum</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>4</td>
      <td>Re-appoint PriceWaterhouseCoopers</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5.1</td>
      <td>Mandate the directors to issue additional 
      shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>5.2</td>
      <td>Mandate the directors to repurchase shares</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5.3</td>
      <td>Mandate the directors to issue repurchased shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>5.4</td>
      <td>Extend the period during which the register of 
      members may be closed in 2003 to 60 days.</td>
      <td>FOR</td>
    </tr>
    </table>

<h3>Note</h3>

<p>TVB, thanks to the licensing conditions of the
<a target="_blank" href="http://www.legislation.gov.hk/blis.nsf/CurAllEngDoc?OpenView&Start=559&Count=56&Expand=559.1">
Broadcasting Ordinance</a>, is the only company which has foreign ownership 
restrictions on its HK-listed shares. This makes it particularly complicated for 
shareholders to vote. Ahead of the AGM, registered shareholders get sent a 
declaration form, which they must complete and return. If they fail to do so, 
then they cannot vote on a poll. The deadline for declarations was 17-May-03, 
which might explain why they need to keep their register of members closed for 
so long (see resolution 5.4 above).</p>

<p>The declaration is that you are either &quot;qualified voting controller&quot; (<b>QVC</b>) 
or an &quot;unqualified voting controller&quot; (<b>UVC</b>) basically depending on 
whether you live in Hong Kong, and have done so for a continuous period of at 
least 7 years in the past. For shareholders who are corporations, a majority of 
the board must fulfil that criterion. Exceptions include the managers of 
SFC-authorised unit trusts.</p>

<p>For shareholders who are just nominees with no voting discretion, they must 
pass the form on up the line until it reaches a voting controller, who then 
completes it and sends it back. We have&nbsp; no idea how HKSCC Nominees Ltd, 
which holds most public shareholdings as nominee of the clearing system, handles 
this, or whether they even attempt to. As a result, we may discover, when we get 
our poll done, that in fact almost nobody in the public shareholder base is 
qualified to vote. Happily, your editor is a QVC. <b>In this age of internet 
media without boundaries, cable TV, and satellite TV, it is about time Hong Kong 
dropped its protectionist ownership laws on broadcasters of free-to-air TV and 
let all shareholders vote without restriction.</b></p>

<p>Any UVC cannot vote more than 2% of the issued shares without the consent of 
the Broadcasting Authority, and even with such consent, may not vote more than 
10% of the issued shares.</p>

<p>For those who do vote, on a poll, if more than 49% of the votes are cast by 
UVCs then they get scaled back to 49%, so that the QVC votes are at least 51% of 
the votes cast. That means each UVC ends up with a fraction of 1 vote for each 
share she voted.</p>

<h3>Reasons AGAINST</h3>

<h4>Item 3</h4>

<p>Li Dak Sum (<b>Mr Li</b>), aged 82, which is young by TVB standards (the 
Chairman is 95), is proposed for re-election as an independent non-executive 
director (INED). Mr Li is one of only two INEDs on the board, the minimum 
allowed under the Listing Rules, and has been a director since 1995. He is the 
Chairman of <a target="_blank" href="http://www.sharp.com.hk/">Sharp-Roxy (Hong 
Kong) Ltd</a>, which markets Sharp products in HK &amp; China. His company 
advertises on TVB and on 13-Dec-02 it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021213/LTN20021213115.pdf">
announced</a> that in the 23-day period from 13-Dec-02 to 5-Jan-03 it had spent 
$2.42m (before deducting agency comission) on advertising with TVB.</p>

<p>The announcement said that transactions would be capped in future years at 
HK$5m per annum. Such transactions were to be reviewed by the INEDs from 2003 
onwards, who must confirm in future annual reports that the advertising was on 
normal commercial terms, or where none exists, that they were fair and 
reasonable. The only problem is, Mr Li is one of the two INEDs. So that means 
that only one INED, 87 year-old Lee Jung Sen, would be able to make such a 
statement.</p>

<p>TVB is one of Hong Kong's most prolific producers, not just of TV shows and 
movies, but also of connected transactions - the directors' report contains 
nearly 5 pages of them, so the INEDs have an important role to play in giving 
opinions on whether these deals are fair and reasonable, and while Mr Li may be 
an excellent director, we cannot regard him as independent, due to his company's 
trading with TVB, so we vote against.</p>

<h4>Items 5.1 and 5.3</h4>

<p><i>Webb-site.com</i> urges all investors to vote against the general issue mandate
for all listed companies, for the reasons explained in <a href="vampire1.asp" target="_blank">Project
Vampire</a>, unless they comply with the recommendations set out in that 
article. The non-pre-emptive issue mandate allows management to choose the 
shareowners by allotment of shares. This corrupts the governance mechanism. 
Shareowners should govern management, not the other way around. If a company 
wishes to raise cash by issuing shares, then it should do so by rights issue.</p>

<p>If your company offers new shares to other investors at a discount, but not 
to you, then your company is transferring value from your shares to the new 
investors. Their gain is your loss. That's why we believe an issue for cash 
should be done by rights issue, failing which it should be limited to 5% of 
existing issued shares and a maximum discount of 5%.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=688">TELEVISION BROADCASTS LIMITED</a></li>
				
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