
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

<script type="text/javascript">document.title="Glorious update";</script>

	<div class="summary">A response from HKSCC indicates that Glorious Property (0845) has some explaining to do: the Grand Court did indeed want to see the CCASS Participant figures. We also show that the 61 registered holders who voted against could not have held more than 0.89% of the shares which voted, and HKSCCN held at least 99.11%. The Grand Court should decide whether the scheme proceeds.</div>

<h2 class="center">Glorious update<br>
<span class="headlinedate">22 January 2014</span></h2>
<p>An update on our story, <a href="gloriousfailure.asp">Glorious 
failure in the Cayman Islands</a> (19-Jan-2014) regarding
the proposed privatisation of
<a href="../dbpub/articles.asp?p=51570">Glorious Property Holdings Ltd</a> (<strong>Glorious</strong>, 
0845). On Monday 21-Jan-2014 we asked Hong Kong Securities Clearing Co Ltd (<strong>HKSCC</strong>) 
why they had put out a <a href="../codocs/HKSCC140107a.pdf" target="_blank">
circular</a> on 7-Jan-2014 stating:</p>
<blockquote>&quot;the number of votes cast [by HKSCCN] in favour of the 
Scheme and <u>the number of CCASS Participants</u> on 
whose instructions they are cast and the number of votes cast [by HKSCCN] 
against the Scheme and the <u>number of CCASS 
Participants</u> on whose instructions they are cast
<u>will be disclosed to the Grand Court and may be taken 
into account in deciding</u> whether or not the Grand Court should exercise 
its discretion to sanction the Scheme&quot; (our underline)</blockquote>
<p>Well, they had good reason to. Derrick P Y Fung, Head of Clearing at HKSCC, 
responded on 22-Jan-2014:</p>
<blockquote>&quot;The statement in the circular was made based on the 
company's request (through its share registrar) to HKSCC to provide the 
information <strong>in accordance with the Grand Court of Cayman Island's court 
order</strong> which provided that HKSCC shall "specify the number of votes cast 
in favour of the Scheme and the number of Participants on whose instructions 
they are cast and the number of votes cast against the proposed Scheme and the 
number of Participants on whose instructions they are cast". However, the 
company itself didn't include such a statement in its own announcement.&quot; (our 
bold)</blockquote>
<p>We have been unable to obtain a copy of the Grand Court's order, and it was 
not on display during the offer period, but we will take HKSCC's word for it. 
Now given that the Grand Court instructed that it should be told the numbers of 
CCASS Participants who, via HKSCCN, voted for and against the privatisation, 
then apparently the Grand Court wanted to be able (but not necessarily obligated) 
to take that information into account before deciding whether or not the 
statutory &quot;majority in numbers&quot; had been satisfied. It presumably had regard to
<a href="http://www.judicial.ky/wp-content/uploads/practice-directions/No2-10CompaniesLaw-SchemesofArrangementandCompromise.pdf" target="_blank">
Practice Direction 2 of 2010</a> (<strong>PD2/2010</strong>), paragraph 4.4 
under &quot;Looking through the register&quot;. </p>
<p>So that leaves us with the obvious question: why did Glorious
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0117/LTN20140117541.pdf" target="_blank">
throw in the towel</a> and declare that the privatisation had failed, rather 
than go to the Grand Court and ask it to make that decision, and by failing to 
follow the Grand Court's instruction to provide this information, was it in 
contempt of court? Is it open to a company not to follow the court's 
instructions, just because the majority of <em>registered</em> shareholders has 
voted against, when it is plain that, if the CCASS Participant figures are 
included, then the majority voted in favour?</p>
<p>Paragraph 2.3 of PD2/2010 requires that:</p>
<blockquote>&quot;Within seven days after the Court meeting(s) has or have 
been held, the applicant must file an affidavit sworn by the Chairman of the 
meeting(s) verifying that...the meeting(s) was or were duly held; and giving 
particulars of the result. In the event that the scheme was not approved, the 
applicant will also formally ask for the petition to be dismissed...&quot;</blockquote>
<p>Surely &quot;the particulars of the result&quot; should include the numbers of members 
and the number of CCASS Participants voting for and against, and the Court would 
then decide whether or not the majority in number has been satisfied, in all the 
circumstances, including the facts that:</p>
<ol>
	<li>96.92% of the shares voted (mostly by HKSCCN) were in favour, far 
	more than the 75% statutory requirement; and</li>
	<li>that
	<a href="../ccass/choldings.asp?d=2014-01-17&amp;sort=holddn&amp;i=5254" target="_blank">
	the number of shares not in CCASS on 17-Jan-2014</a> was only 0.18% of the 
	company, so HKSCCN was the registered shareholder of 99.82% of all the 
	issued shares. So the 61 shareholders (excluding HKSCCN) who voted against 
	the scheme could not have held more than 0.18% of the issued shares, which 
	is 0.55% of the Scheme Shares and equivalent to 0.89% of the shares which 
	voted. That is, HKSCCN held at least 99.11% of the shares which were voted.</li>
</ol>
<p>The Grand Court should decide whether to exercise its discretion to 
count the CCASS Participants into the total, and if it does, then the vote 
succeeds. Finally, the Grand Court should have the 
discretion on whether or not to dismiss the petition. If it does not, then the 
scheme should proceed.</p>
<h3>HEC</h3>
<p>By the way, looking at the CCASS positions, we note that
<a href="../ccass/chldchg.asp?i=5254&amp;d=2013-07-30" target="_blank">on 30-Jul-2013</a>, 
exactly 1.5 billion shares (19.25%) of Glorious moved from CCB International 
Securities Ltd to <a href="../dbpub/articles.asp?p=12651">HEC Securities Ltd</a>, 
formerly known as Chung Nam Securities Ltd, which has featured on Webb-site many 
times. The shares remain at HEC. Given that nobody else has a stake that large, 
could it be that Mr Zhang Zhi Rong is a client of, and possibly a margin client 
of, HEC?</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=51570">GLORIOUS PROPERTY HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=51571">Zhang, Zhi Rong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=149">Headcount test</a></li>
				
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