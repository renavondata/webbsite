
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

<script type="text/javascript">document.title="Vampire bites Cathay";</script>

	<div class="summary">Investors in Cathay Pacific last week voted by an estimated 62:38 margin against the general issue mandate at the AGM, the largest margin yet. We were also eventually successful in persuading the Chairman to open the meeting to the media.</div>

<h2 class="center">Vampire bites Cathay<br>
<span class="headlinedate">18 May 2003</span></h2>
<p>It shouldn't have been that difficult. The Annual General Meeting of Cathay 
Pacific Airways Ltd (<b>CPA</b>, 0293) was the 9th in
<a target="_blank" href="projectpoll1.asp">Project Poll</a>, and the 8th in the 
Hang Seng Index this year. All previous HSI companies had admitted the media to 
observe their AGMs. Only Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>, 
0388), which is not in the index, had resisted, and we eventually
<a target="_blank" href="HKExAGM2003results.asp">persuaded</a> them to let the 
media in.</p>

<p>So it came as quite a surprise to learn that Cathay Pacific, not known for 
secrecy and disclosure problems, has never in the past admitted the media to its 
shareholder meetings. Not so much as a web-cam, it had all been behind closed 
doors. With Project Poll going so smoothly, the media had become complacent, and 
not a single journalist bothered to take up our offer of a proxy to guarantee 
entry to the meeting.</p>
<p>Chairman James Hughes-Hallett, kicking off proceedings, said that over 7,000 
registered shareholders had received notice and could have attended if they 
wanted to. We pointed out that many of them were at work or housebound, and 
surely he did not think that 6,990 of them did not have any interest in the 
discussion at the meeting. We reminded him that this was a public company, not a 
private one, with beneficial shareowners (most of whom are not registered 
shareholders) around the world who could not attend. We looked at a nearly 
complete Cathay board and saw Henry Fan and Vernon Moore of
<a target="_blank" href="../dbpub/articles.asp?p=379">CITIC Pacific Ltd</a> (<b>CP</b>, 0267), who 
had conducted their AGM in open forum. Mr Moore is also an independent director 
of <a target="_blank" href="../dbpub/articles.asp?p=341">CLP Holdings Ltd</a>, which even has video 
replays of its AGMs available on its web site.</p>
<p>So we asked nicely, and the Chairman refused to let the media in. In that 
case, we said, we will object to taking the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030404/LTN20030404047.DOC">
notice of meeting</a> as read. Very well, he said, and proceeded to read it out, 
word for word, as required by law.</p>
<p>5 minutes later, we asked again. If he did not admit the media, we said, then 
we would, in the interests of transparency, have no choice but to propose an 
adjournment for not less than 7 days, so that we would have&nbsp; time to use 
our 4 spare proxies to appoint journalists to attend the closed-door meeting. 
Shareholders not present had a right to know what was going on. He declined, 
perhaps not having read that we had employed the same tactic (but for a 
different reason) at the HKEx AGM. And of course, we would demand a poll on the 
proposal. That's blackmail, he claimed. No, we were not demanding money, just 
transparency, we replied. He retracted the accusation.</p>
<p>After printing of ballot slips, voting and counting, it was 1 hour into the 
meeting, and we at last had the results of the poll. Not surprisingly, we lost 
to the controlling shareholders. But our point was made, and we did pick up 
2,000 votes in addition to the 10 we held. Then, to our surprise, the Chairman 
relented and admitted the media. Perhaps he was worried that they would all go 
home rather than wait outside for the delayed press conference.</p>
<p>We do not enjoy using such tactics. It wastes our time, and those of the 
board and other shareholders, but we will continue to do so whenever necessary 
in the interests of improved transparency and governance.</p>
<p>The next, day, our representative at the AGM of largest shareholder Swire 
Pacific Ltd (<b>SP</b>, 0019/0087), also chaired by Mr Hughes-Hallett, reported 
no such problems, with media given free access, so it seems that this was not 
just a flash in the pan, and the group has now changed its policy, so credit 
them for that. Lesson learned, we hope.</p>
<h3>Vampire bites</h3>

<p>For the 3rd time this season, investors in a Hang Seng Index company have 
voted against the general mandate, as we show below. </p>
<p>Our 
<a target="_blank" href="vampire1.asp">Project Vampire</a> (Vote Against Mandate for Placings, Issues by Rights 
Excepted) urges shareholders to vote against the general share issue mandate 
unless it complies with our recommendations, based on international best 
practice, which are:</p>

<ol>
  <li>The mandate to issue shares for cash, other than
    by a rights issue, shall be in respect of not more than 5% of the issued
    shares a the time of the mandate</li>
  <li>The discount for shares issued other than by a
    rights issue shall not exceed 5%.</li>
  <li>The mandate to issue shares for other purposes,
    including acquisitions, shall be for not more than 20% of the issued shares</li>
</ol>

<p>CPA's has two large shareholders, SP (46.14%) and CP (25.75%), while 
directors own 52,000 shares between them. This is a total of 2,399,451,708 
shares. Assume they voted in favour of their board's proposal. Deduct that from 
the votes &quot;in favour&quot; in the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030515/LTN20030515078.pdf">poll results</a>, then the voting of 
independent investors (those without board representation) on the issue mandate was as follows:</p>
<table class="numtable center fcl">
    <tr>
      <th>&nbsp;</th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>28,121,952</td>
      <td>38.11%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td>45,667,045</td>
      <td><b>61.89%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>73,788,997</td>
      <td>100.00%</td>
    </tr>
</table>

<p>In other words, public investors voted by 62:38 against the general mandate, 
the largest majority yet. Total votes cast were about 7.87% of the free float.</p>

<p><a href="0019AGMresults2003.asp">Click here</a> to read news of the 4th investor vote against the issue mandate, 
which followed next day at Swire Pacific.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=385">CATHAY PACIFIC AIRWAYS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=565">Hughes-Hallett, James Wyndham John</a></li>
				
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