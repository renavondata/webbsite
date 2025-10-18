
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

<script type="text/javascript">document.title="Almost No Mandate";</script>

	<div class="summary">The tide is turning in Hong Kong's battle for pre-emptive rights. In a close shareholder vote, the board of HKEx almost lost its general mandate to issue new shares, by asking for a 20% cash mandate, against the recommendations of Project Vampire. And this is the company whose subsidiary makes the Listing Rules which allow such mandates in the first place. Things weren't much better over at Bank of East Asia, either.</div>

<h2 class="center">Almost No Mandate<br>
<span class="headlinedate">5 April 2004</span></h2>
<p>On 31-Mar-04, we had the first AGMs of the year in 
<a target="_blank" href="vampire1.asp">Project 
Vampire</a> (Vote Against Mandate for Placings, Issues by Rights Excepted), for 
Hong Kong Exchanges and Clearing Limited (<b>HKEx,</b> 0388) and The Bank of 
East Asia, Limited (<b>BEA</b>, 0023).</p>

<h3>HKEx</h3>

<p>The board of HKEx, against the advice of your editor David Webb, who is one of its elected 
directors, proposed that shareholders grant it a 20% general mandate 
to issue new shares for cash without offering them to existing shareholders first.</p>

<p>By proposing this, the board almost ended up with no mandate at 
all. As the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040401/LTN20040401039.pdf">
poll voting figures</a> show, the relevant resolution 6(I) was passed by a 
margin of just 52.7% in favour to 47.3% against:</p>

<table class="numtable center">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td class="left">In favour</td>
      <td>161,783,065</td>
      <td>52.74%</td>
    </tr>
    <tr>
      <td class="left">Against</td>
      <td>144,954,569</td>
      <td>47.26%</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>306,737,634</td>
      <td>100.00%</td>
    </tr>
</table>

<p>If this waiver of pre-emptive 
rights had taken place in a UK-incorporated company, then a special resolution 
would have been required, and the required 75% majority would not have been achieved. 
As it is, the ordinary resolution at HKEx was probably only passed as a result 
of support from stockbroker-shareholders who stand to lose the quick and 
lucrative fees of placings if listed companies start doing rights issues.</p>

<p>Reflecting the ongoing difficulties with voting access in Hong 
Kong, the turnout was only 29.0% of the issued shares, similar to last year's. 
However, the 47.3% vote against the mandate was much higher than last year's 
17.3%, which indicates that investors are becoming more aware and less tolerant 
of this problem. As a reminder, the recommendations of Project Vampire are:</p>

<ul>
  <li>The mandate to issue shares for cash, other than
    by a rights issue, should be for not more than 5% of the outstanding shares a the time of the mandate</li>
  <li>The discount for shares issued other than by a 
    rights issue may not exceed 5%.</li>
  <li>The mandate to issue shares for non-cash purposes,
    including acquisitions, should be for not more than 20% of the outstanding shares</li>
</ul>

<p>We hope that next year, the board of HKEx will take heed of 
these voting figures and propose a mandate which is more acceptable to shareholders. 
As shown above, the general mandate relates not only to issues for 
cash, but also for non-cash issues such as acquisitions, where we have no 
objection to the 20% mandate. But by asking for the ability to issue 20% for 
cash, the board almost ended up with no mandate at all. They were lucky to get 
away with it this year.</p>

<p>Other listed companies should take note, particularly if they 
have not yet sent out their 2004 AGM notice, and should consider amending the 
mandate. Of course, most have controlling shareholders who can ram the approval 
through, but is that the kind of message they want to send to investors? The 
voting figures will show how investors voted, after deducting the insider votes.</p>

<h3>Whose rules are these?</h3>

<p>From a regulatory perspective, we should remember that HKEx owns 
the Stock Exchange of Hong Kong Limited, which as part of its Listing Rules 
allows a maximum 20% cash issue mandate in the first place. The outcome of its 
own shareholder vote should increase the pressure on the for-profit regulator to 
tighten the rules, if it is to be seen to fulfil its duty to the investing 
public, who clearly are not happy with the present situation.</p>

<h3>BEA</h3>

<p>Earlier that same day at BEA, shareholders were also presented 
with a request for a 20% mandate. Based on known shareholdings of directors and 
their associates, including the late Alan Li Fook-sum, the bulk of whose 
interest was held via a family company of which he owned one third (so we 
presume it still voted), the insiders own 154,836,002 shares or 10.54% of the 
company. This almost certainly understates the holdings of the wider concert 
party which would include other relatives of the extended Li family. But we will 
ignore that and tell you that by deducting the figure for insiders from the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040331/LTN20040331151.pdf">
poll voting figures</a>, assuming the board was in favour of its own mandate, 
the vote on the general mandate was:</p>

  <table class="numtable center">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td class="left">In favour</td>
      <td>143,630,113</td>
      <td>51.80%</td>
    </tr>
    <tr>
      <td class="left">Against</td>
      <td>133,641,888</td>
      <td>48.20%</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>277,272,001</td>
      <td>100.00%</td>
    </tr>
  </table>

<p>That's hardly a ringing endorsement of the policy either, and 
very similar to the outcome at HKEx. The voting turnout was about 21.1% of the 
free float (shares not held by insiders). As for the actual vote (including 
insiders) it was 69.1% in favour to 30.9% against, so if this had been a special 
resolution, as is the case for UK-incorporated companies, it would not have 
passed.</p>

<p>The tide is turning in Hong Kong's battle for pre-emptive 
rights.</p>

<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=377">BANK OF EAST ASIA, LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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