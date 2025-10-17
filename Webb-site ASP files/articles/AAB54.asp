
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

<script type="text/javascript">document.title="Webb to defend HK media freedom in landmark appeal";</script>

	<div class="summary">In a public hearing on 13-Jul-2015, Webb-site's founder, editor and publisher will appeal against an Enforcement Notice issued by the Privacy Commissioner which, if upheld, would have wide-ranging implications for freedom of speech and publication in HK and access to media archives of HK-based publishers.</div>

<h2 class="center">Webb to defend HK media freedom in landmark appeal<br>
<span class="headlinedate">4 July 2015</span></h2>
<p>Long-term readers of <em>Webb-site Reports</em> may have noticed that over 
the past few months our editorial output has been somewhat lower in quantity 
than normal. It is only now that we can explain why. The founder, editor and 
publisher of Webb-site, <a href="../pages/aboutus.asp">David M. Webb</a>, has diverted a large amount of time to preparing for an 
appeal against an &quot;Enforcement Notice&quot; issued in August 2014 by the
<a href="http://www.pcpd.org.hk/" target="_blank">Privacy Commissioner for 
Personal Data</a> (<strong>PCPD</strong>) under the
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/" target="_blank">Personal 
Data Privacy Ordinance</a> (<strong>PDPO</strong>), requiring us to redact three 
of the thousands of reports on our site.</p>
<p>Our appeal will be heard by the
<a href="../dbpub/officers.asp?p=29193&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0">
Administrative Appeals Board</a> (<strong>AAB</strong>) in a public hearing on 
Monday 13-Jul-2015, and interested observers can find details of that below. 
Although we have known the date for 2 months, the hearing schedule was published 
today.</p>
<h3>The issues the case raises</h3>
<p>The subjects of the three brief reports in this case would be immaterial to most readers, 
but there are important public interest issues at stake for freedom of speech 
and publication in HK and, conversely, access to legally published information, 
which is why we decided to invest substantial time in challenging this decision.</p>
<p>The brief facts are that the reports contained information, including the 
full names of the parties, which we collected from online judgments which were 
published in 2000, 2001 and 2002, following open hearings in the Court of Appeal 
and Court of Final Appeal in a matrimonial case. Our reports were hyperlinked to 
the judgments, which were published on the
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/judgment.jsp" target="_blank">
judiciary web site</a>, although we could have easily linked to our own copies. 
In 2010 and 2012, some 10 years after the judgments were published, the copies 
on the judiciary website were edited to anonymise the names of the parties.</p>
<p>The allegation in the Enforcement Notice (which we deny) is that by 
maintaining the reports and hyperlinks in our archive, which like virtually all 
online archives is searchable either via our site or via search engines, we 
breached
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/sch1.html" target="_blank">
Data Protection Principle 3</a> (<strong>DPP3</strong>), using personal data for a purpose other than 
the purpose for which the data was to be used at the time of the collection of 
the data. The allegation of course implies that applying the PDPO and the Data 
Protection Principles to legally published public domain data is both constitutional and within 
the legislative intent, something which, amongst other things, will be an issue 
in the appeal.</p>
<p>To our knowledge, the only previous AAB case which dealt with media freedom 
to report legally available public domain data was <em>Tung Lai Lam v PCPD</em> 
(AAB 36/2007), in which the PCPD (then under a different Commissioner, lawyer
<a href="../dbpub/positions.asp?p=12913">Roderick Woo Bun</a>) decided not to 
investigate a complaint and the AAB upheld that decision. The AAB found that the 
&quot;purpose&quot; of the newspaper, Ming Pao, in collecting data about Mr Tung from a 
court writ that he filed, was reporting, and when they published their article, 
their purpose had not changed, so DPP3 was not contravened. The AAB held that 
the meaning of &quot;purpose&quot; in DPP3 was the newspaper's purpose of data collection, 
not the intention or purpose of the complainant. The decision in that case (in 
Chinese)
<a href="https://www.pcpd.org.hk/english/enforcement/decisions/files/AAB_36_2007.pdf" target="_blank">
is here</a> and it is also summarised in a PCPD Case Note in
<a href="https://www.pcpd.org.hk/english/enforcement/case_notes/casenotes_2.php?id=2007A15" target="_blank">
English here</a> and
<a href="https://www.pcpd.org.hk/tc_chi/enforcement/case_notes/casenotes_2.php?id=2007A15" target="_blank">
Chinese here</a>.</p>
<p>Webb-site occasionally receives requests from the public asking for 
information to be removed from <em>Webb-site Reports</em> or <em>Webb-site Who's 
Who</em>, our database which covers over 140,000 people (living and dead) and 
over 2 million organisations, including all the members of statutory and 
advisory bodies and directors of listed companies in HK,
<a href="../dbpub/SFCchanges.asp">SFC licensees</a>, as well as obscure things 
that pique our interest such as descendants of
<a href="../dbpub/natperson.asp?p=53491">William The Conqueror</a>. All 
information in <em>Webb-site Who's Who</em> is collected from the public domain, and we do not accede to such take-down 
requests, because to do so would amount to self-censorship and create
<a href="https://en.wikipedia.org/wiki/Memory_hole" target="_blank">Orwellian 
memory holes</a> if there are no other remaining sources.</p>
<p>Pending the outcome of this appeal though, we have censored the three reports, so 
that you cannot find the related judgments via Webb-site.</p>
<p>The implications of the Enforcement Notice, if upheld, would have a chilling 
effect on publication within HK, including access to online archives of HK-based 
media. The PCPD would be able, upon complaints from the public, to order the 
take-down of articles which the PCPD believes breach the PDPO - for 
example, articles about convictions, bankruptcies, births, 
marriages, divorces or about civil litigation such as libel and defamation suits 
or battles between relatives over inheritance (estates). For many HK-based media, the cost of running take-down 
departments to deal with requests from the public for removing such information 
would be prohibitive. As a result, HK-based media would likely either close 
their archives or restrict their search facilities to only recent periods, 
making it impossible to find old articles.</p>
<h3>What is the Administrative Appeals Board?</h3>
<p>Under
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/s50.html" target="_blank">
Section 50(7)</a> of the PDPO, appeals against PCPD Enforcement Notices are 
heard by a 3-member panel of the AAB, established by the
<a href="http://www.hklii.hk/eng/hk/legis/ord/442/" target="_blank">
Administrative Appeals Board Ordinance</a> (<strong>AABO</strong>) which hears 
appeals of decisions under
<a href="http://www.hklii.hk/eng/hk/legis/ord/442/sch.html" target="_blank">73 
different laws and regulations</a> ranging from the Apprenticeship Ordinance to 
the Wild Animals Protection Ordinance. The AAB plays an important role in 
lessening the burden on our courts that would otherwise have to hear all cases. 
Under AABO
<a href="http://www.hklii.hk/eng/hk/legis/ord/442/s24.html" target="_blank">
Section 24</a>, the Board may, before reaching a decision, refer any arising 
question of law to the Court of Appeal for determination.</p>
<p>Under AABO
<a href="http://www.hklii.hk/eng/hk/legis/ord/442/s23.html" target="_blank">
Section 23</a>, the panel makes decisions by majority, except on questions of 
law which are determined by the Chairman or Presiding Chairman, who is either a 
solicitor or barrister who would be qualified for appointment as a judge of the 
District Court. The AAB has a Chairman and 7 Deputy Chairmen who act as 
Presiding Chairmen in appeals.</p>
<p>Unlike the judiciary, which puts written public judgments online, the AAB 
does not yet have its own website, but has a
<a href="http://www.admwing.gov.hk/eng/links/aab.htm" target="_blank">single 
page on the site</a> of the Administration Wing of the Chief Secretary for 
Administration's Office. Separately to this appeal, we have urged the AAB to get 
its own website and put all its public decisions online. As of September 2014, 
we were informed by the AAB Secretary that this was in progress. Meanwhile, 
hearing schedules are now being published on that page. That followed an early 
request by Webb-site last year after we noticed that although the hearings were 
public, the public had no way of finding out when and where they would be held!</p>
<h3>The public appeal hearing</h3>
<p>Under 
<a href="http://www.hklii.hk/eng/hk/legis/ord/442/s17.html" target="_blank">AABO 
Section 17</a>, all hearings are open to the public except in special circumstances, and ours is no exception. Under
<a href="http://www.hklii.hk/eng/hk/legis/ord/442/s2.html" target="_blank">AABO 
Section 2</a>, the parties to the appeal are the Appellant (David M. Webb), the 
Respondent (the PCPD), and any other person who is bound by the decision appealed 
against, which in this case is the person whose complaint to the PCPD gave rise 
to the Enforcement Notice, Luciana Wong Wai Lan (<strong>Ms Wong</strong>).
<a href="../dbpub/positions.asp?p=55615">As shown</a> in Webb-site Who's Who, 
she is a member of several statutory bodies including the Town Planning Appeal 
Board Panel and the Environmental Impact Assessment Appeal Board Panel. We do 
not know Ms Wong personally - she is just one of the thousands of people who 
have been mentioned in Webb-site reports over the years.</p>
<p>Ms Wong withdrew her complaint on 8-Jan-2015, but the PCPD decided, 
partly due to the public interest issues to be determined, not to withdraw the 
Enforcement Notice and hence this appeal. Ms Wong made an application for the 
Board to hear the case in private&nbsp; (which both we and the PCPD opposed) and 
for an anonymity order (which we opposed and the PCPD supported), but in a ruling on 30-Jun-2015, the Presiding 
Chairman dismissed the application.</p>
<p>The public hearing, AAB Case 54 of 2014, will be heard in the morning of 
Monday 13-Jul-2015 at Conference Room 8, G/F, Central Government Offices, 2 Tim 
Mei Avenue, Tamar starting at 09:30. David Webb is unrepresented and will appear 
in person. To reserve a seat, contact the AAB Secretariat (<a href="http://www.admwing.gov.hk/eng/links/aab.htm#hearing" target="_blank">details 
here</a>). Seating is on a first-come-first-served basis, with any walk-in 
observers allowed only if remaining space permits.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2242652">HKSAR Privacy Commissioner for Personal Data</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2443883">Tung, Lai Lam</a></li>
				
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