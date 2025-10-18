
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

<script type="text/javascript">document.title="Hong Kong's not so Independent Directors";</script>

	<div class="summary">How Hong Kong's controlling shareholders appoint the Independent Directors who are supposed to prevent them from abusing the company, and what to do about it.</div>

<h2 class="center">Hong Kong's not so Independent Directors<br>
<span class="headlinedate">20 April 1999</span></h2>
<p>Have you ever held shares in a collapsed company, whose controlling shareholders have
not been entirely honest with you? Do you think they had difficulty distinguishing their
private interests from those of the company? Do you wonder why the Independent Directors,
who have long since resigned and headed for the bunkers, were unable to prevent the
company imploding?</p>

<p>A few years ago, after a wave of particularly bad behaviour by controlling
shareholders, the Stock Exchange decided to require all companies to have at least two
directors who are &quot;independent&quot; non-executive directors, or INEDs. The rules now
say that INEDs must not be part of the management, each should hold less than 1% of the
shares of the company, and should have no financial or other interest in the business of
the group.</p>

<h3>Who Appoints INEDs?</h3>

<p>Unless elected at an annual shareholders' meeting, the INEDs are appointed
by the board of directors, who in turn are normally appointed by the controlling
shareholders. If you are a controlling shareholder, it is only natural that you should use
that control to run the company through your choice of Executive Directors.</p>

<p>In Hong Kong there are very few companies that do not have a controlling
shareholder - the only sizeable exception is HSBC Holdings plc, which is a UK-domiciled
company whose ownership is wide-spread.</p>

<p>Once appointed by the board, the INEDs are re-elected by shareholders at
the next annual general meeting, and thereafter by rotation (typically standing every
three years, if they survive that long). Unfortunately, the controlling shareholders are
allowed to vote in these elections, so they nearly always determine the outcome. Yes, the
sheepdog is appointed by the flock, not by the shepherd. It is a clear absurdity that the
controlling shareholders effectively appoint the people who are supposed to prevent them
from abusing the company. This is shareholder democracy Hong Kong-style.</p>

<p>In fact, INEDs are often so closely allied to the executive directors
that, if the company is taken over, the INEDs resign at the same time as the executive
directors, and the new controlling shareholders will appoint new &quot;independent&quot;
directors of their choice.</p>

<h3>What are INEDs supposed to do?</h3>

<p>In an ideal world, they would represent you, the minority shareholders.
They would make sure of fair play, and whenever the controlling directors have a conflict
of interest, the INEDs would take decisions on your behalf (or call a shareholders'
meeting). For example, in a &quot;connected transaction&quot; between a company and its
controlling shareholder, the INEDs must give an opinion (based on whatever advice they
need) on whether or not the terms are fair to the Company. Have you ever seen a circular
which says that the terms of a connected transaction are <i>not</i> fair? Nor have I.</p>

<p>The problem is that if you cannot appoint your own sheepdogs, then they
have no incentive to represent you. Worse, if a sheepdog asks too many questions, the
sheep will fire him and choose another one. With a lack of data, the sheepdog finds the
proverbial wool pulled over his eyes. Too many INEDs are little more than rubber stamps
who resign at the first sign of trouble, heading for greener pastures just when you need
them most.</p>

<h3>Audit Committees</h3>

<p>Following good practice in other countries, the Exchange has introduced a
requirement that, from the start of this year, each company must have an audit committee
of non-executive directors, a majority of whom should be independent. The written terms of
reference are to include &quot;<i>the review and supervision of the financial reporting
process and internal controls</i>&quot;. A key goal here is to cut down the amount of
fraud and improve the level of disclosure in financial reporting. Unfortunately, so long
as the INEDs are appointed by controlling shareholders, they will also have limited powers
of investigation, since they can be removed at any time. This well-intended move by the
Exchange is likely to be least effective where it is most needed - the best-qualified
INEDs will be unwilling to serve on the boards of opaque companies and risk liability for
what might go wrong. They simply lack the necessary authority to do their job.</p>

<h3>Let Minority Shareholders Elect Independent Directors</h3>

<p>What we need is a system where minority shareholders appoint the INEDs
annually by way of a shareholders' vote on nominees of their choice, and the controlling
shareholders (and all directors) are prohibited from voting. If an INED resigns mid-term,
then he must say why, and a shareholders' meeting must be convened to consider nominations
for a replacement.</p>

<p>INEDs would then have responsibility with accountability. They would be
appointed by the very people whose interests they are supposed to protect, namely the
minority shareholders. They would demand board meetings and information as often as
needed, without fear of being removed by the controlling shareholders. They would make it
their business to monitor your investment.</p>

<p>Wouldn't it be great if you could appoint someone who had to report back
to you on whether they were satisfied with the conduct of the Executive directors in
running the company? The report of the INEDs should be contained in each Annual Report and
should go into some detail. If you are not satisfied with the INEDs' performance, you can
replace them with others. This gives them every incentive to perform. They must also be
able to call on the Stock Exchange and the SFC if they encounter difficulties in doing
their job, and of course, they must be paid a fair wage for the time this involves, not
some trivial fee for rubber-stamping decisions.</p>

<p>Under this scenario, if an INED is removed from office by minority
shareholders then he or she has usually done a bad job, and should be barred for a period
of time from taking up new INED positions, or standing for re-election, with other listed
companies.</p>

<p>For their part, the Exchange and SFC need greater disciplinary powers.
Public censure or reprimand is an inadequate deterrent. They need the ability to impose
substantial fines on directors, which requires statutory backing.&nbsp; Most of the time
they don't even go as far as a censure - the Exchange now includes standard wording in any
announcement which deals with a breach of the listing rules. It reads &quot;<em>the
Exchange reserves its rights to take appropriate action in relation to the matter</em>&quot;.
In the words of Geoffrey Howe, that is rather like being savaged by a dead sheep.</p>


<h3>We need INEDs without conflicts</h3>

<p>Sometimes, you will see the same INEDs on the boards of several listed
companies under common control. The Stock Exchange should ban this practice, because it
means that if two related companies do a connected transaction, then the INEDs will be on
both sides of the deal and will be unable to advise minority shareholders on how to vote.
Perhaps controlling shareholders are aware of the potential conflict when making these
appointments - it makes the INEDs even less of an obstruction to abuse of the companies.</p>


<h3>We need Qualified INEDs</h3>

<p>INEDs are often unqualified to do their job. They can be school-friends of
the Chairman, or medical doctors, or cadres in mainland towns in which the company does
business. It should be a requirement that at least two INEDs know what they are doing.
That is, they should be Hong Kong-based lawyers, accountants or investment advisers. The
INEDs are supposed to be our eyes and ears, but if they do not fully understand their role
then they have no hope of carrying it out. With a pair of suitably qualified INEDs to take
the lead, the company can then have other INEDs who are from industry-relevant
backgrounds, such as an electrical engineer on the board of a power company. </p>

<p>Those who <i>are</i> professionally qualified should not also work for the
auditor, lawyer or sponsor of the company. This can often mean that the company is an
important customer, and therefor the INED is bound to keep his client happy and not
&quot;rock the boat&quot;. Currently the Exchange has an exemption which allows the
company's advisers to act as INEDs, and this should be removed.</p>

<p>Accountable, responsible, qualified independent directors, directly
elected by minority shareholders, would reduce abuses and improve the financial returns,
as well as the reputation of Hong Kong.</p>

<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=154">Independent Non-Executive Directors</a></li>
				
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