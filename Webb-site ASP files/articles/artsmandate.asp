
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

<script type="text/javascript">document.title="Arts Optical adopts Vampire";</script>

	<div class="summary">A month ago we launched Project Vampire, urging investors to vote against the general issue mandate which allows directors to dilute shareholders' interests without a rights issue. We promised a fanfare for the first HK company to comply with our recommendations on restricting the mandate to international standards. And the prize goes to: Arts Optical. We hope that others will follow their example.</div>

<h2 class="center">Arts Optical adopts Vampire<br>
<span class="headlinedate">22 April 2003</span></h2>
<p>One of the many ways in which management of listed companies can damage 
shareholder interests is to dilute them through non-pre-emptive share issues, 
meaning shares which are not offered to existing shareholders first. This can be 
particularly damaging when the shares are issued at a substantial discount to 
market, and the ability of management to choose shareowners in this way subverts 
the governance mechanism. Shareholders should govern management, not the other 
way around.</p>

<p>In <a target="_blank" href="vampire1.asp">Project Vampire</a>, launched on 
16-Mar-03, we urged all minority shareholders to vote against the general issue 
mandate proposed at all Annual General Meetings, unless the proposed mandate 
meets the following requirements:</p>

<ol>
  <li>
    The mandate to issue shares for cash, other than
    by a rights issue, shall be in respect of not more than 5% of the issued
    shares a the time of the mandate</li>
  <li>
    The discount for shares issued other than by a
    rights issue shall not exceed 5%.</li>
  <li>
    The mandate to issue shares for other purposes,
    including acquisitions, shall be for not more than 20% of the issued shares</li>
</ol>

<p>We promised a fanfare for the first company to comply with this proposal, 
which reflects the international best practice seen in the UK, where issuers and 
institutional investors agreed similar standards in 1987.</p>

<p>We didn't have to wait too long to find a winner. On 9-Apr-03,
<a target="_blank" href="http://www.artsgroup.com/artsoptical/index.html">Arts 
Optical International Holdings Ltd</a> (<b>Arts Optical</b>, 1120)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030409/LTN20030409114.pdf">
announced</a> its 2002 annual results, including its notice of Annual General 
Meeting. Resolution 7 is the general issue mandate, and it complies with the 
above requirements and provides an example that other companies would do well to 
adopt. Project Vampire has scored its first conversion, so give the boys in 
spectacles a round of applause for their far-sightedness.</p>

<p>Based on public disclosures, the company is held as to about 40.55% by 
Chairman Michael Ng Hoi Ying,&nbsp; 9.80% by his wife, 4.98% by his brother, 
7.67% by Templeton Asset Management Ltd and 5.25% by <i>Webb-site.com</i> editor 
David Webb.</p>

<p>This is also the stock which we made our
<a target="_blank" href="pick2002.asp">2002 Christmas Pick</a>, and so far 
(although it is still early in the year) they haven't let us down. The results 
came in with basic EPS of $0.284 ($0.279 fully diluted), beating our expectation 
of $0.26 per share. We tipped the stock at $1.87 and today it closed at $2.00, 
up 7.0%. In the same time, the Hang Seng Index has fallen 16.2% from 10,227 to 
8,572 (excluding dividends).</p>

<p>It is worth noting that Arts Optical's EPS would have been even higher if it 
had not used part of an earlier year's general mandate to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020115/LTN20020115017.doc">
issue</a> new shares to Templeton for cash in Jan-02, enlarging the share 
capital by 5.23%. Arts Optical appears to have learnt from that lesson by 
limiting this year's mandate, and you can't blame Templeton for taking candy 
when it was offered to them.</p>

<p>However, the subscription inflated the cash pile by $31.2m, and at 31-Dec-02, 
the company was sitting on net cash of $214.1m or about $0.57 per share, or 
about 2 years' profits. The board proposes a final dividend of $0.08 per share, 
making a total of $0.16 for the year, or a yield of 8%.</p>

<p><b>We have&nbsp; urged the board to consider a special dividend in the next 
results, to allow each shareholder to invest the surplus money as they choose. 
When a listed company retains excessive amounts of cash, there is always the 
risk of bad investments being made.</b></p>

<p>The company has also recently set up a remuneration committee for the board 
comprising the two independent non-executive directors, and Finance Director 
Desmond Lee Wai-chung tells <i>Webb-site.com</i> that all the annual meeting 
votes will be conducted on a poll, 1-share-1-vote, in compliance with best 
practice and in line with <a target="_blank" href="projectpoll1.asp">Project 
Poll</a>.</p>

<p>Obviously we benefit if Arts Optical continues to perform well, but so do all 
shareholders, and the same thing works in reverse. With a substantial investment 
in a listed company, we will take all necessary steps to encourage good 
governance, and failing that, to hold management to account.</p>

<h3>Listing Rules </h3>

<p>OK, so one company has met the recommended best practice for the general 
mandate, and we hope others will follow. Does that mean that the Listing Rules 
can remain relaxed in this respect? Certainly not. Any company that rises above 
the low standards set by the Listing Rules can still fall back in future, and 
minority shareholders are powerless to stop it.&nbsp; So we still need tighter 
Listing Rules, and will keep pressing for that by encouraging shareholders to 
vote against the general mandate unless it meets our recommended best practice.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2666">ARTS OPTICAL INTERNATIONAL HOLDINGS LIMITED</a></li>
				
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