
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

<script type="text/javascript">document.title="AAB rejects Webb-site appeal of redaction order";</script>

	<div class="summary">In a chilling decision for media freedom in HK, the AAB has rejected our appeal of the Privacy Commissioner's order to remove from <i>Webb-site Reports</i> information obtained from published judgments, ruling that "reporting and publication for general use" is not an allowed purpose. Constitutional aspects, such as the necessity of a restriction on free speech that does not apply to overseas online publishers, were barely covered. We look at the consequences and  options.</div>

<h2 class="center">AAB rejects Webb-site appeal of redaction order<br>
<span class="headlinedate">30 October 2015</span></h2>
<p>Late last night, <em>Webb-site Reports</em> learned that the Administrative 
Appeals Board (<strong>AAB</strong>) has dismissed our editor, David Webb's 
appeal against an Enforcement Notice issued by the
<a href="../dbpub/officers.asp?p=2242652">Privacy Commissioner for Personal 
Data</a> (<strong>PCPD</strong>).</p>
<p>The Enforcement Notice required us to redact our reports linking to 
three judgments handed down in 2001 and 2002 by the Court of Appeal and Court of Final Appeal 
after open hearings. The information we reported was collected from the 
judgments, and the judiciary, some 10 years after publication, redacted the 
copies on its web site to remove the names of the parties and persons involved. 
The Decision leaves us (and anyone else who collected it) in possession of 
legally-published information that we cannot provide to others. Pending the 
outcome of the appeal, we had already <a href="../dbpub/natarts.asp?p=55615">
censored our reports</a> (although the Complainant subsequently withdrew her 
complaint), so that will remain the case while the Decision stands.</p>
<p>The AAB did not have the courtesy to e-mail the Decision to us, and the first 
we heard was when a journalist contacted us for comment on the decision. The 
journalist had been told where to find it on the PCPD server, although it was 
not then publicly visible. This morning a
<a href="https://www.pcpd.org.hk/english/news_events/media_statements/press_20151029.html" target="_blank">
media release</a> dated yesterday has appeared with the Decision on the PCPD web 
site.</p>
<p>The
<a href="https://www.pcpd.org.hk/english/files/casenotes/AAB_54_2014.pdf" target="_blank">
<strong>Decision</strong></a>, while it stands, will have a chilling effect on the freedom of the 
media in Hong Kong. The Decision draws a
<a href="https://en.wikipedia.org/wiki/Distinction_without_a_difference" target="_blank">
distinction without a difference</a> between our case and a case heard in 2007 
(AAB 36/2007, <em>Tung Lai Lam v PCPD</em>,
<a href="../codocs/AAB36-2007e.pdf" target="_blank">English</a>,
<a href="https://www.pcpd.org.hk/english/enforcement/decisions/files/AAB_36_2007.pdf" target="_blank">
Chinese</a>). In that case, the AAB decided that the relevant original "purpose" 
when a member of the media reports a court document (in that case, a writ 
reported by Ming Pao newspaper) is the purpose of the newspaper, and if their 
purpose of reporting and publication does not change, then they are not in 
breach of
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/sch1.html" target="_blank">
Data Protection Principle 3</a>, which requires that personal data shall not 
(without consent of the data subject) be used except for the purpose at the time 
that the data was collected, or a directly related purpose.</p>
<p>At paragraph 32 of the current Decision, the AAB, chaired on this occasion by
<a href="../dbpub/positions.asp?p=58989">Eugene Fung Ting Sek</a> SC with lay 
members <a href="../dbpub/positions.asp?p=47264">Hattie Cheng Kin Hei</a> and
<a href="../dbpub/positions.asp?p=37386">Cheung Chor Yung</a>, states:</p>
<blockquote>"We do not believe the Appellant's purpose of using the 
Complainant's personal data (i.e. reporting and publication for general use) can 
be said to be consistent with the Judiciary's purposes of publishing the 
judgments...in other words, the Appellant used the relevant personal data for a 
"new purpose" within the meaning of DPP3."</blockquote>
<p>So now the AAB thinks that it is the purpose of the data source (the 
judiciary) that matters, not the purpose of the data collector (the media), and 
that the judiciary's purposes are not consistent with "reporting and publication 
for general use". The clear implication is that, if the media reports the 
contents of court judgments or writs (available offline from the court 
registry), relating to living humans and without their consent, then the media's 
"reporting and publication for general use" will be in breach of DPP3 and they 
will be subject to potential enforcement action by the PCPD, requiring their 
reports to be removed from public view. We see no distinction in principle 
between linking to a judgment (a short form of report) versus repeating its 
contents in an article (as we sometimes do), with or without links to the 
judgments.</p>
<p>This will deter media coverage of writs and judgments, or at least will mean 
that media will have to run take-down departments to deal with requests for 
removal of embarrassing public domain information, and if they cannot afford to 
run take-down departments, then they will remove their archives from public 
view. The media can now expect an avalanche of such requests and complaints to 
the PCPD from people who consider that online embarrassing information on their 
past drunk-driving convictions, former bankruptcy, matrimonial disputes, 
personal litigation or disputes over inheritance is personal data that the media 
should not have reported or should no longer retain.</p>
<p>The Decision establishes an <a href="remember.asp">
ECJ-style "Right to be forgotten"</a> and removes a "Right to remember and 
repeat" without any proper legislation. In our submission, the
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/" target="_blank">Personal 
Data Privacy Ordinance</a> (<strong>PDPO</strong>) was intended to keep private 
data private, not to make public data private. Watch as Orwellian
<a href="https://en.wikipedia.org/wiki/Memory_hole" target="_blank">memory holes</a> 
appear, and those who know the missing information cannot tell those who 
don't.</p>
<p>The AAB has placed the PCPD squarely in the role of media watchdog. The 
PCPD will carry out a "balancing exercise" and decide whether to require 
take-down, based on its own perception of whether the information is of public 
interest and even whether the publisher normally covers these areas. As today's 
PCPD media release states, the PCPD takes into account what it says are the 
purposes of the publisher - apparently the PCPD believes that <em>Webb-site 
Reports</em> should be restricted to certain areas and that our reports of the 
judgments:</p>
<blockquote>"did not serve to promote the transparency of operations 
of companies, governments, regulators and controlling shareholders; nor was it 
able to achieve the purpose of condemning public vices or protecting the 
minority shareholders’ interest. In the circumstances, the balance should be 
tipped in favour of protecting the Complainant’s personal data"</blockquote>
<p>Perhaps if we had a stated objective of being a tabloid gossip site then the 
balance would have been "tipped" in our favour. Just where does the PCPD draw 
its authority to decide what areas a publisher can cover? Our actual coverage, 
as long-time readers will know, is far wider than they say anyway.</p>
<p>The AAB appears to take the view, in paragraph 30(3), that the 
"purpose" of publication of judgments is solely for law reports and legal 
analysis - but in that case, why are they available to the general public 
online? What is the judiciary's "purpose"? Perhaps the most authoritative word 
on this comes from the Chief Justice at the time that the judiciary decided to 
put judgments online, <a href="../dbpub/positions.asp?p=1925">Andrew Li Kwok 
Nang</a>, who said in a
<a href="http://www.judiciary.gov.hk/en/other_info/speeches/keynote.htm" target="_blank">
speech</a> on 10-Dec-2001:</p>
<blockquote>"Justice needs to be done and justice needs to be seen to 
be done. Open justice is a fundamental feature of our system. Court lists are 
readily accessible from the Judiciary website. To maintain and strengthen public 
confidence, it is important that the public has easy and convenient access to 
judgments of the courts. For this purpose, we have made court judgments 
available on our website and both local and overseas viewers now have easy 
access to them."</blockquote>
<p>The Decision barely contemplates the issue of whether the implied 
restriction on freedom of speech and expression contained in the Basic Law (<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">Article 
27</a>) and Bill of Rights (<a href="http://www.hklii.hk/eng/hk/legis/ord/383/s8.html" target="_blank">Article 
16(2)</a>) is constitutional. A restriction on a constitutional freedom must be 
"necessary" to protect another right, and to be necessary, it must pass a 
"proportionality test". In layman's terms this means that the restriction must 
substantially achieve its goal (in this case, to protect privacy) and do no more 
harm to the freedom than is necessary. We pointed out that HK's public domain 
information is freely available on the internet and can be collected from 
overseas and published overseas, and that HK residents can access it by visiting 
overseas web sites, or if the HK Government erects a firewall around HK like 
China has, then by tunneling underneath it with a Virtual Private Network. 
Therefore the restriction cannot achieve its objective, harms HK-based 
publishers and is void for lack of constitutional necessity.</p>
<p>The AAB dismissed the necessity test with an irrelevant reference to a 
"balancing exercise" to be carried out by the PCPD in enforcement, ignoring the 
fact that no such exercise can be carried out against publishers outside HK 
territorial jurisdiction, particularly if the publisher is in a country where the activity is 
legal, as in Singapore, where there is an exemption for
<a href="https://www.pdpc.gov.sg/docs/default-source/advisory-guidelines/advisory-guidelines-on-key-concepts-in-the-pdpa-(revised-8-may-2015)(chp12).pdf" target="_blank">
publicly available data</a> (see PDF pages 17-21), or the USA, where there is no 
such privacy law and they have constitutional
<a href="https://en.wikipedia.org/wiki/Freedom_of_speech_in_the_United_States" target="_blank">
freedom of speech</a>.</p>
<p>Ironically, the Decision implies that if the media report our editor's name 
in relation to the contents without his consent, then they may be breaching 
DPP3. The PCPD has slapped a red warning box to this effect on the top of the 
Decision, as it does with all such documents. We disagree. It is a public 
document and in our view, you don't need our consent.</p>
<p>So what now? We will of course consider these and other grounds for judicial 
review of the Decision, but this is not just a question of whether we would win, 
but whether we can justify spending further time and effort in years of court 
proceedings, relative to the good we can do in other areas. One option is to 
step aside and hope that larger media organisations with more resources will 
take the PCPD to the courts when it issues an Enforcement Notice and the AAB 
rejects their appeal. Another option is to spend time lobbying for a legislative 
amendment to explicitly exempt legally-published public domain data from the 
PDPO, as Singapore has, and put the question beyond doubt.</p>
<p>We have at least gone further than the people behind the 
famous
<a href="http://www.hk-lawyer.org/en/article.asp?articleid=1735&amp;c=140" target="_blank">
Do-No-Evil app</a> (who did not appeal to the AAB), but whether we now step 
forward or aside depends partly on the willingness of those in the legal 
community to do some heavy lifting for the public good - we were never in this 
for money or personal gain, but to try to preserve one of HK's most important 
freedoms.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=29193">HKSAR Administrative Appeals Board</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2242652">HKSAR Privacy Commissioner for Personal Data</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=47264">Cheng, Hattie Kin Hei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=37386">Cheung, Chor Yung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=58989">Fung, Eugene Ting Sek</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=55615">Wong, Luciana Wai Lan</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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