
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

<script type="text/javascript">document.title="Sunday Payday";</script>

	<div class="summary">HK-listed cellphone operator Sunday Communications (NASDAQ:SDAY) had a surprise up its sleeve in the annual report. Shareholders attending next week's AGM may want to know why boardroom pay increased 297% last year in the face of continued losses and a share price down 87% since the IPO. In fact, the vast bulk of it went to one director, who earned over 3 times the combined pay of the entire board of competitor SmarTone Telecommunications - guess who?</div>

<h2 class="center">Sunday Payday<br>
<span class="headlinedate">8 May 2001</span></h2>
<p>Just over two weeks ago, HK-listed cellphone operator <a href="http://www.sunday.com/" target="_blank">Sunday
Communications Ltd</a> proudly issued a <a href="http://services.sunday.com/ir/sunday_20010422_131.html" target="_blank">press
release</a> citing a CLSA survey of corporate governance which ranked it 9th
overall out of 38 HK companies assessed by the brokerage. </p>

<p>To be sure, Sunday is one of the more active groups in terms of
press releases, analysts briefings and presentations, and that top-quartile
governance ranking (all is relative in a badly governed market) did not look out
of place until we read this year's
annual report. But sometimes all that glitters is not gold. Eyebrows raised and jaws dropped as we read the financial
statements. Take a look at this table: </p>

<img class="center" alt="" src="../images/sunpay1.gif">

<p>As you can see, total pay was up $27.9m or 297% on the previous
year, of which bonuses increased by $19.2m. The number of directors who served
during the year increased from 12 to 17. </p>

<p>Individual
directors' pay is still not required to be disclosed in Hong Kong, but a table is
given of the ranges in which they fall by number of directors. This shows that
the highest paid director saw his total pay increase by some 254% from $8-8.5m to
<b>$29-29.5m</b>. Again, HK disclosure rules do not require a breakdown of that package, but of the
$21m increase, a large part of it must have been bonuses. </p>

<p>By comparison, HK-listed competitor <a href="http://www.smartone.com.hk" target="_blank">SmarTone
Telecommunications Ltd</a> paid its entire board just HK$8.14m in the year to
30-Jun-00. Of the top 5 individuals' pay in SmarTone, 2 were directors and the
other 3 earned $7.67m. That brings the top 5 to a total of $15.81m. <b>In other
words, the top person at Sunday earned 85% more than the top 5 people at
Smartone combined.</b> </p>

<h3>No warning in prospectus </h3>

<p>Now cast your mind back to the 6-Mar-00 IPO prospectus. It
stated: </p>

<blockquote>

<p>&quot;It is expected that an aggregate sum of approximately
HK$16,000,000 will be paid to the Directors as remuneration, other than
discretionary bonus, and benefits in kind by the Group in respect of the year
ending 31 December 2000&quot; </p>

</blockquote>

<p>If that statement is still true, then of the total $37.3m of
board pay, $21.3m must be &quot;discretionary bonus&quot;. The word
&quot;discretionary&quot; normally means that it is up to the board to determine
the award in their discretion. It excludes guaranteed bonuses, and if there were
any conditional contractual bonuses then we believe these should have been
disclosed in the prospectus since they are non-discretionary and subject only to
the conditions (such as financial targets) being reached. </p>

<h3>Remuneration Committee </h3>

<p>Now unlike many companies in HK, Sunday does have a
&quot;remuneration committee&quot; comprising three directors. Two of them are
executive directors (Co-chairmen Rick Siemens and Edward Cheng Wai-sun) and the
other one is an independent non-executive director (INED) Michael Miles, former
taipan of Swire Pacific. So even assuming Mr Miles objects to anything, he can
be voted down by the two executive directors. The company does not state why the
other INED, Robert Owen (who is Chairman of <a href="../dbpub/articles.asp?p=10458" target="_blank">Techpacific.com</a>),
is not on the remuneration committee. </p>

<p>The annual report contains just one paragraph about the
remuneration committee and the only disclosure about their work is that it is: </p>

<blockquote>

<p>&quot;to review the remuneration of the Directors and officers
and such other relevant matters as directed by the Board from time to time. The
remuneration committee meets at least once a year.&quot; </p>

</blockquote>

<p>The report contains no comment on the huge increase in boardroom
pay, or on what basis the discretionary bonus was awarded. </p>

<h3>Unjustified </h3>

<p>Such increase seems hard to justify when you look at the
financial performance. At the operating level (excluding capital expenditure)
the net cash outflow from operations was HK$219m last year, compared with $272m
in 1999. So they made a little progress, but the $28m increase in boardroom pay
accounts for 12.8% of that outflow. </p>

<p>Or look at it in terms of market capitalisation - this is not a
large company, valued at just HK$1,435m. The boardroom pay cost 2.60% of this
figure last year, of which one person cost 2.06%. By comparison, Smartone is
valued at $5,965m and its top 5 staff cost just 0.27% of market cap. </p>

<p>Sunday owes its shareholders an explanation, one which should
have been given in the prospectus (if the bonus was planned) or in the annual
report (if it was discretionary). When the company went public in Mar-00,
159,062 people applied for the shares, which were priced at $3.78. With the
stock now trading at $0.48, shareholders must be wondering what kind of
&quot;discretion&quot; rewards an 87% negative return with such a hefty bonus. </p>

<h3>Guess Who? </h3>

<p>Of Sunday's 17 directors who served at some time during 2000, it
is safe to eliminate the non-executives, because by definition they don't get
paid that much for their occasional input. That leaves 6 executive directors, 2
of whom are the Co-Chairmen and serve on the remuneration committee, so we'll
count them out. They have other jobs anyway - Rick Siemens is Chairman of
private Distacom Communications Ltd as well as HK-listed e-Kong Group Ltd, and
Edward Cheng is the CEO of HK-listed USI Holdings Ltd. Both companies are
shareholders of Sunday. </p>

<p>Of the remaining four, two have other jobs at Distacom, and one
oversees the investments of USI, including its stake in Sunday. And that just
leaves one titled director - Group MD Craig Ehrlich. So let's hear it for Craig,
and let's hear what he has to say about the big Sunday Payday. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10463">SUNDAY COMMUNICATIONS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
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