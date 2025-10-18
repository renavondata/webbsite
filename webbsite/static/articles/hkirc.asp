
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

<script type="text/javascript">document.title="Stop the .HK Takeover";</script>

	<div class="summary">Webb-site.com issues an urgent appeal to members of Hong Kong Internet Registration Corp, to attend the EGM on Saturday morning and prevent the unjustified Government takeover of the dot-HK domain registry. If User members vote to slash their own board representation, they will be surrendering democracy and opening the registry to potential political interference.</div>

<h2 class="center">Stop the .HK Takeover<br>
<span class="headlinedate">19 August 2008</span></h2>
<p>If you were a turkey in a democracy, would you vote for Christmas? That's 
what the Hong Kong Government is hoping members of
<a target="_blank" href="https://www.hkirc.hk/">Hong Kong Internet Registration 
Corporation Ltd</a> (<strong>HKIRC</strong>) will do at an Extraordinary General 
Meeting at 9 a.m. this coming Saturday, 23-Aug-08, by voting to reduce their 
representation on the HKIRC board of directors, and hand control of it to the 
Government. If you are an HKIRC member, this is your first and last wake-up call 
- you must attend the meeting on Saturday, and vote against. <a href="#attend">
Further details of the EGM below</a>.</p>
<h3>What is HKIRC?</h3>
<p>HKIRC was incorporated on 14-Dec-01 to operate the registry for all domains 
ending in &quot;.HK&quot;, Hong Kong's &quot;country code top-level domain&quot; or ccTLD,
<a target="_blank" href="http://www.iana.org/domains/root/db/hk.html">assigned</a> 
by the global Internet Assigned Numbers Authority (IANA). It is a &quot;company 
limited by guarantee&quot; which means it has members, but not shares. It is 
not-for-profit. Most of its operations are carried out by a wholly-owned 
subsidiary, Hong Kong Domain Name Registration Co Ltd (<strong>HKDNR</strong>), 
which it acquired from the <a target="_blank" href="http://www.jucc.edu.hk">
Joint Universities Computer Centre Limited</a> (<strong>JUCC</strong>) in 
Mar-02. JUCC was the original operator of the .HK domain before you ever heard 
of the web.</p>
<p>Under its
<a target="_blank" href="http://members.hkirc.hk/MRS/common/articles/M&A05.pdf">
Memorandum and Articles of Association</a> (M&amp;A), HKIRC has 6 classes of 
membership. Each member has one vote in members' meetings. The classes, and the 
current number of members (based on the 
<a target="_blank" href="../codocs/HKIRCmembers080812.xls">list of members</a> 
we have compiled from the web site), 
are:</p>
<table class="optable center">
	<tr>
		<th class="left">Class</th>
		<th>Members</th>
		<th>Directors</th>
	</tr>
	<tr>
		<td class="left">Government</td>
		<td>1</td>
		<td>1</td>
	</tr>
	<tr>
		<td class="left">User</td>
		<td>1231</td>
		<td>6</td>
	</tr>
	<tr>
		<td class="left">Service Provider</td>
		<td>28</td>
		<td>2</td>
	</tr>
	<tr>
		<td class="left">Information Technology Industry </td>
		<td>13</td>
		<td>2</td>
	</tr>
	<tr>
		<td class="left">Commerce &amp; Industry</td>
		<td>4</td>
		<td>1</td>
	</tr>
	<tr>
		<td class="left">Tertiary Institution (JUCC)</td>
		<td>1</td>
		<td>1</td>
	</tr>
	<tr class="total">
		<td class="left">Total</td>
		<td>1,278</td>
		<td>13</td>
	</tr>
</table>
<p>The reason for the separate classes is so that they can each elect a certain 
number of directors, as shown in the table above. The Commerce &amp; Industry 
members are in fact the four chambers of commerce who each have their own seat 
in the Legislative Council &quot;functional&quot; (some would say, dysfunctional) 
constituencies. The IT Industry members are the 13 organisations whose members 
are eligible to vote in the LegCo IT functional constituency. The tertiary 
institution class is really just a legacy of the JUCC days. </p>
<p>The User class is open to anyone who currently owns a .HK domain and meets 
certain requirements, including any HK resident aged 18 or above, and any 
company registered in HK. However, membership is not quite automatic - in order 
to become a member of HKIRC, after purchasing your .HK domain, you have to sign 
up, but it costs nothing. Only a small fraction of the owners of the
<a target="_blank" href="https://www.hkirc.hk/aboutHK/statistics.jsp">current</a> 
166,979 domains have become members. Still, the 1,278 User members (including 
your editor) are 96.3% of the membership, so they call the shots on any changes 
to the M&amp;A of HKIRC, which requires 75% approval of the votes cast.</p>
<h3>The secret problem</h3>
<p>Nobody will say publicly exactly what, if anything, is wrong with the 
existing governance structure of HKIRC. Sources indicate to <em>Webb-site.com</em> 
that there have been disputes within the board and even with past board members, 
but there is nothing unusual about that - debate is a healthy thing and it would 
be unhealthy if every director had the same point of view on everything. Some 
sources have suggested personality conflicts, but again this does not imply a 
need to restructure the board in this wholesale fashion.</p>
<p>In May-07, the Government published a
<a target="_blank" href="http://www.ogcio.gov.hk/eng/pubpress/download/edomainreview.pdf">
consultation paper</a> on the administration of internet domain names in HK 
(Chinese version
<a target="_blank" href="http://www.ogcio.gov.hk/chi/pubpress/download/cdomainreview.pdf">
here</a>). This was heavily reliant on a consultancy study which was 
commissioned by the Government in 2006. The study, which cost HK$1.29m, was 
never published until, on 25-Mar-08, we asked the
<a href="http://www.ogcio.gov.hk">Office of the Government Chief Information 
Officer</a> (<strong>OGCIO</strong>) why not. On 16-Apr-08, a heavily censored 
version of the report was published on the OGCIO web site. It was virtually 
meaningless. We complained, and on 12-May-08, this was replaced with a
<a href="http://www.ogcio.gov.hk/en/news_and_publications/consultations/publications_consultancy.htm" target="_blank">still-heavily-censored report</a> which you can read online.</p>
<p>By censoring the report so heavily, members of HKIRC are left with no 
justification for the EGM proposals. The blanked-out sections start in the 
Executive Summary of the
<a href="http://www.ogcio.gov.hk/en/news_and_publications/consultations/doc/Report%20on%20Current%20Environment.pdf" target="_blank">Report on Current Environment</a>, which says:</p>
<blockquote>
	<p>&quot;The key issues and deficiencies that were identified during 
	the analysis of corporate governance for the administration of internet domain 
	names in Hong Kong were as follows:</p>
	<p>[This part of the document is not disclosed.]&quot;</p>
</blockquote>
<p>...and it continues along those lines. In essence, they say &quot;we can't tell 
you what's wrong, but you need to change it&quot;.</p>
<h3>The proposed Government takeover</h3>
<p>So without ever exposing the alleged &quot;issues and deficiencies&quot; to public 
scrutiny, the Government claims that there is a secret problem which makes it 
necessary to restructure the board as follows:</p>
<table class="numtable center">
	<tr>
		<th class="left">Class</th>
		<th>Directors</th>
	</tr>
	<tr>
		<td class="left">Government</td>
		<td>4</td>
	</tr>
	<tr>
		<td class="left">Demand (Users)</td>
		<td>2</td>
	</tr>
	<tr>
		<td class="left">Supply</td>
		<td>2</td>
	</tr>
</table>
<p>Theoretically, the Chairman would be elected by the directors from amongst 
themselves, but if they could not agree, then the Government would choose one of 
them. The Chairman would have a casting vote on all resolutions. These two facts 
together mean that the Government-appointed directors would only allow a 
candidate acceptable to Government to become Chairman, and then the Government 
could win any disputes with a 5:4 vote, including the Chairman's casting vote. 
This is, in essence, a thinly-disguised takeover.</p>
<p>As you can see, Users, who ultimately provide almost 100% of the income of 
HKIRC and account for 96% of its membership, would be demoted to just 2 out of 8 
seats and 2 out of 9 votes (22%), from the current 6 out of 13 (46%), and the 
Government would have control through its appointees, whom it could replace at 
will. </p>
<p>The proposals would permanently lock in this structure, by changing the 
Memorandum of Association so that it would require Government consent to make 
any further changes <u>at all</u> to the M&amp;A, because the 
following paragraph has been slipped into draft clause 8 of the Memorandum:</p>
<blockquote>&quot;Any proposal to vary the Company's Memorandum and Articles of 
Association...shall be notified to and agreed by the Government before such 
proposal is put forward for resolution by Members at a general meeting.&quot;</blockquote>
<p>The EGM proposals also include a new &quot;Consultative and Advisory Panel&quot;, all 
the members of which would be appointed by Government. However, the Board would 
not have to follow the CAP's recommendations, but would have to explain why on 
request by any Member or CAP if it chose not to. There is no reason why such a 
panel could not be formed and appointed by the existing board with similar 
requirements, so that does not justify the Government's takeover of the Board.</p>
<h3>Membership frozen</h3>
<div class="rightpicbox" style="max-width:250px;border:0">
	<a href="https://members.hkirc.hk/MRS/register.do?action=STEP1" target="_blank">
	<img alt="" src="../images/hkircjoin.jpg"></a>
</div>
<p>If you hold a .HK domain and live in HK, then you are entitled by the M&amp;A to become 
a member of HKIRC and then to vote on these proposals. There's even a big button 
in the bottom-left corner of the home page (reproduced on the right) which says 
&quot;HKIRC Invites Domain Name Users to Become Members&quot;. However, it currently leads 
you to a page which says:</p>
<blockquote>&quot;To smoothen the administration and to avoid possible 
misunderstanding, membership registration is suspended from 26 Jun 2008 until 
the end of Annual General Meeting 2008.&quot;</blockquote>
<p>Without any authority to do so in its M&amp;A, HKIRC has closed the register to 
new members until the end of the AGM. The date for that has not even been 
announced, although past AGMs were in September, so it is closed for about 3 
months. Management tells <em>Webb-site.com</em> that this practice, which it has 
used in past years, is needed to determine who is allowed to nominate or vote 
for directors at the AGM. We disagree - there is no need to close the register 
for that. Membership applications should be processed continuously in the usual 
timeframe, and on the relevant date (the nomination deadline, or the date of the 
meeting), you either are or are not a registered member, and a snapshot of the 
register can be passed to the scrutineer of the meeting.</p>
<p>Unlike a company with shares, there are no transfers of ownership to take 
place in a company limited by guarantee. Section 99 of the
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&amp;Start=32.1.1&amp;Count=700&amp;Expand=32.1">
Companies Ordinance</a> allows a company with a share or debenture register to 
close it for up to 30 days each year, but there is no such power for a company 
limited by Guarantee, unless it is built into the M&amp;A, which it isn't in HKIRC's 
case. In short, we think the closure has no legal basis.</p>
<p>While this improper practice has been used in past years, it is doubly 
egregious this year because of the EGM. The final proposals were not disclosed 
to members until an e-mail was circulated on 26-Jun-08, after the register was 
closed, and you still won't find them on any public area of the web site.</p>
<h3>No proxy voting</h3>
<p>Section 116 of the Companies Ordinance states that a special resolution can 
be voted on by members <em>&quot;in person or, where proxies are allowed, by proxy&quot;</em>, 
but the M&amp;A of HKIRC says <em>&quot;proxy voting will not be permitted&quot;. </em>
Instead, the M&amp;A says <em>&quot;Members may vote at a general meeting in person, by 
post or via the Internet...&quot;</em>. Since the Companies Ordinance does not 
contemplate postal or internet voting, <strong>that means that on this, the most 
important vote in the history of dot-HK, you can only vote in person. </strong>
In fact, even on ordinary resolutions, where the M&amp;A allows postal and internet 
voting, such as appointment of auditors, HKIRC has in past AGMs failed to 
provide postal or internet voting. They only allowed it for director elections.</p>
<p>Votes in person can be held on a show of hands (1 vote per human attending 
the meeting, regardless of how many corporate members the person represents) or, 
if a poll is validly demanded, by poll, in which each person or company 
represented at the meeting has one vote.</p>
<h3>No explanation</h3>
<p>HKIRC has made a token effort to describe the proposals in a presentation to 
members on the evening of 8-Aug-08 from 17:00-18:30. Yes, the same evening as 
the opening ceremony of the Beijing Olympics - which do you think was the bigger 
draw? According to management, only about 12 members attended. Your editor was 
away on holiday, but we have obtained a copy of the
<a target="_blank" href="../codocs/HKIRCpres080808.pdf">presentation slides</a> 
for your viewing. This really tells you nothing more than we have said. It is 
misleadingly titled &quot;Rationale of New Governance Arrangement&quot; but does not give 
you any insight on why a new arrangement is needed.</p>
<p>The Board of HKIRC owes members an explanation, by means of an EGM circular:</p>
<ol>
	<li>&nbsp;Exactly what is wrong with the existing governance 
arrangements?
	</li>
	<li>Why do the current directors believe that a 
	Government-controlled board will do a better job of directing HKIRC than 
	they have?
	</li>
	<li>Why is Government control better than any third alternative?
	</li>
</ol>
<h3>A better way to reform</h3>
<p>To be sure, HKIRC is not perfect:</p>
<ul>
	<li>It is a monopoly which has been slow to innovate. Unlike some other 
	countries, we do not yet have competition through a split registry-registrar 
	model (in which registrars form the interface between users and a slim 
	central registry) although we understand one is under planning.</li>
	<li>It's pricing is too high, partly because of the lack of registrar 
	competition (this will come), although HK also lacks the economies of scale 
	(fewer domains) that larger registries like .com have.</li>
	<li>It's own web sites are shambolic - again, no competition in the service 
	space.</li>
	<li>
	<p>IRC's disclosure should also be improved - we still don't have the 2007 
	accounts, but when they arrive, they will be bare-bones statutory accounts 
	rather than an informative annual report. They should be capable of 
	producing them within 3 months of the year-end.</p>
	</li>
</ul>
<p>None of this justifies the current proposals though. HKIRC can and should 
move ahead with the registry-registrar model, and should improve its disclosure, 
but the existing board could do this if it tried. One thing holding back 
governance is that, because HKIRC has claimed profits tax exemption, it cannot 
pay its directors anything. This discourages some good people from running for 
election and dedicating time to the job. No attendance records for board or 
committee meetings are published. Although HKIRC has had some very competent 
directors, it also attracts &quot;status hunters&quot; who are just looking for another 
line on their CV and wouldn't recognise an IP address if it sat on them.</p>
<p>So HKIRC should give up its tax exemption and start paying its directors a 
reasonable fee. This shouldn't hurt the finances, because it is not supposed to 
make a profit anyway, and because almost all the fee-earning business is in the 
subsidiary HKDNR, which does pay tax.</p>
<p>If anything, reform to the board structure should focus on eliminating the 
legacy seats of the JUCC and chambers of commerce, and broadening the 
constituency of the supply side to the members of the organisations who 
currently vote in the IT LegCo sector. Holding directors accountable to 
end-users is more likely to produce a better outcome than holding them 
accountable to Government (particularly an unelected one), and broader 
constituencies are closer to democracy than small-circle constituencies. If 
board size is an issue, then a board with 4 seats elected by users, 4 on the 
supply side, and 1 Government representative would be feasible.</p>
<p>In safeguarding the public interest in the .HK domain, the proper role of 
Government should be to set performance standards through the Apr-02 Memorandum 
of Understanding by which it designated administration of .HK to HKIRC, which 
can be updated from time to time (no, we cannot find a copy online). A single 
Government representative on the Board, to take part in discussions, is adequate 
for these purposes.</p>
<h3>Protecting freedom of speech</h3>
<p>There is another very good reason why control of the registry should not be 
in Government hands. It will avoid any temptation or political pressure to 
intervene in the domain registry. For example, you may be able to register 
falungong.hk today, but will you be able to in the future, and if you could, 
might it be deleted? What if Government comes under pressure to delete or divert 
a web domain such as remember-tiananmen.hk, or to delete a domain with sexually 
explicit content? Hong Kong's freedom of speech will be safer if the registry 
remains out of Government hands.</p>
<h3 id="attend">Turn out and vote!</h3>
<p>Since last Wednesday, <em>Webb-site.com</em> has been in private discussions 
with HKIRC seeking a constructive solution to the issues in this article. We 
have urged them to delay or adjourn the EGM, and to open the register to 
membership applications (it should never have been closed in the first place). 
We have also urged them to produce a circular from the Board to members, 
explaining what the governance problem is (if any) and why they think Users 
should vote to reduce their own representation on the board and to give control 
to Government, and why they think this would lead to a better outcome. The board 
either doesn't believe this, or has chosen not to tell you why it does believe 
it.</p>
<p>Talks broke down on Monday when the CEO confirmed that the Chairman would 
proceed with the EGM and not adjourn it, and no EGM circular would be produced.
<strong>We therefore urge all members to attend and vote against the proposals 
at the EGM on Saturday. In case you think that your vote won't make much 
difference, bear in mind that only 26 members voted at the last AGM (including 
10 directors). It only takes a quarter of the votes to stop the takeover. With 
your help, we can do this.</strong></p>
<p class="center">WHERE: Unit 2002-2005, 20/F, ING Tower, 308 Des Voeux Road 
Central, Sheung Wan, HK (near Sheung Wan MTR)</p>
<p class="center">WHEN: 08:30 onwards to register, 09:00 for the meeting, 
Saturday 23rd August 2008</p>
<p class="center">
<a target="_blank" href="../codocs/NoticeEGM080823english.pdf">Notice of EGM in 
English</a>. <a target="_blank" href="../codocs/NoticeEGM080823chinese.pdf">
Notice of EGM in Chinese</a>.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22624">HONG KONG INTERNET REGISTRATION CORPORATION LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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