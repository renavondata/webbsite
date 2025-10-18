
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

<script type="text/javascript">document.title="Government 'sanitizes' LegCo Cyber Report";</script>

	<div class="summary">In a test of the flimsy Code on Access to Information, Webb-site.com has been quietly battling to obtain the Cyberport accounts. We can now reveal that the Government has "sanitized" the financial information it recently released to LegCo. We call on Legislators to establish a Select Committee to investigate this controversial, untendered project and force disclosure of all the documents. If Government is serious about collusion with the business sector, or preventing it, then they should co-operate.</div>

<h2 class="center">Government 'sanitizes' LegCo Cyber Report<br>
<span class="headlinedate">7 February 2005</span></h2>
<p>Back on 24-Oct-04, we <a target="_blank" href="cybersecrets.asp">reported</a> that the three Cyberport companies 
wholly-owned by the Government had failed to publish any accounts since they 
were incorporated in December 1999. Since then, <i>Webb-site.com</i> has been 
quietly battling with the Government to obtain this information, and we can now 
reveal to you the result. After three rounds of delays, the Government has 
admitted that it &quot;sanitized&quot; the financial information it recently gave to LegCo 
and the public. We can also reveal that the Ombudsman has criticised the 
Government's shabby handling of our request and forced the Government to issue 
us an apology.</p>

<p>We do not know what &quot;dirt&quot; the Government removed to sanitize these accounts. 
The whole experience says a lot about the deficiencies of a non-statutory code 
on access to information, about the shabby way the Government operates it, and 
about the future way it may hide information on the controversial Cultureport 
project, by tying itself into &quot;confidentiality provisions&quot; with the developer at 
the same time as claiming that there is no collusion.</p>

<h3>The Code on Access to Information</h3>

<p>On 25-Oct-04, the day after our <a target="_blank" href="cybersecrets.asp">
article</a>, we filed an official 
<a target="_blank" href="http://www.ogcio.gov.hk/eng/access/eproc.htm">request</a> with the
<a target="_blank" href="http://www.ogcio.gov.hk/">Office of the Government 
Chief Information Officer</a> (<b>OGCIO</b>) under the
<a target="_blank" href="http://www.info.gov.hk/access/code.htm">Code on Access 
to Information</a> (<b>Code</b>). This is a non-legally-binding, heavily diluted version of what is becoming accepted practiced in democratic countries - both 
the US and UK have a  Freedom of Information law, as do 57 other countries. As readers will be 
aware, Hong Kong does not have a democratically elected Government, but 
nevertheless, aspires to be &quot;Asia's World City&quot; so we thought it was worth 
giving the system the benefit of the doubt by attempting to obtain a relatively 
simple set of documents under the Code. As you will see, our trust was wrongly 
placed.</p>

<p>What we asked for is the directors' report and audited financial statements 
for each accounting period since incorporation of each of the following 
companies:</p>

<ol>
  <li>Hong Kong Cyberport Development Holdings Limited</li>
  <li>Hong Kong Cyberport Management Company Limited</li>
  <li>Hong Kong Cyberport (Ancillary Development) Company Limited</li>
</ol>

<p>We know that these documents exist, because they are required by the 
Companies Ordinance. They should hardly be state secrets - there is no national 
security or foreign policy implication to these documents, nor is there any 
privacy ordinance implication, as they relate to companies, not individuals. 
It's not like asking for immigration records or personal tax returns,</p>

<h3>First rejection</h3>

<p>Fully 21 days later (the
<a target="_blank" href="http://www.info.gov.hk/access/code.htm#target">target 
response time</a> under Rule 1.16 of the Code), on 15-Nov-04, OGCIO replied:</p>

<blockquote>

<p>&quot;As the Administration is preparing a comprehensive progress report on the 
Cyberport project for submission to the Information Technology and Broadcasting 
Panel of the Legislative Council in January 2005, and the report would provide, 
among other things, relevant information on the financial status of the 
Cyberport Companies, disclosure of the requested information to the public at 
this point in time would be premature. Thus we regret that the requested 
documents could not be made available to you at this time.&quot;</p>

</blockquote>

<p>We replied the same day, and pointed out that the grounds for rejection were 
wrong. Under the heading &quot;Information which may be refused&quot; in the Code, 
<a target="_blank" href="http://www.info.gov.hk/access/code.htm#premature_requests">Rule 
2.17</a> on &quot;Premature Requests&quot; states:</p>

<blockquote>

<p>&quot;Information which will soon be published, or whose disclosure would be 
premature in relation to a planned announcement or publication.&quot;</p>

</blockquote>

<p>and the interpretive
<a target="_blank" href="http://www.info.gov.hk/access/guide.htm">Guide for 
Departments</a> to the Code (<b>Guide</b>),
<a target="_blank" href="http://www.info.gov.hk/access/guide.htm#para2_17">
Paragraph 2.17.1</a> states:</p>

<blockquote>

<p>&quot;This provision may be used to protect information which will be published by 
the department <b>within 60 days</b> after the request is made.&quot; (emphasis 
added)</p>

</blockquote>

<p>Even if you accept that publication of accounts which date back 4 years and 
should have been published years ago could in some way be &quot;premature&quot;, it is 
clear that 60 days from our application would be 24-Dec-04, which was before the 
intended January briefing to LegCo. We also questioned whether the <i>&quot;relevant 
information on the financial status&quot;</i> to be given to LegCo would amount to 
the full accounts we were seeking. 
<a target="_blank" href="http://www.info.gov.hk/access/guide.htm#para2_17">Paragraph 2.17.2</a> of the Guide states in 
relation to the &quot;Premature Requests&quot; exemption that:</p>

<blockquote>

<p>&quot;The restriction is however a temporary one since the record containing the 
information <b>will be a public document</b> once it is published/announced.&quot; 
(emphasis added)</p>

</blockquote>

<p>So the claimed exemption would only apply if the Government intended to 
publish the full accounts, within 60 days of our original request. At this 
point, we exercised our right under
<a target="_blank" href="http://www.info.gov.hk/access/code.htm#review">Rule 
1.26</a> of the Code to lodge a complaint with the
<a target="_blank" href="http://www.ombudsman.gov.hk/">Ombudsman</a>.</p>

<h3>Second rejection</h3>

<p>Another full 21 days went by, the target response time under the Code, not a 
day less. Do you get the feeling that the Government was trying to drag this one 
out? In their response, the Government claimed that the paragraphs we quoted 
were not binding, just a guideline. We responded the same day, pointing out that 
the spirit of the Code was being violated, and quoted from paragraph (v) of the 
<a target="_blank" href="http://www.info.gov.hk/access/guide.htm">Introduction to the Guide</a>, which states:</p>

<blockquote>

<p>&quot;The approach to release of information under the Code should be positive; 
that is to say, departments should work on the basis that information requested
<b>will</b> be released unless there is good reason to withhold disclosure under 
the provisions of Part 2 of the Code.&quot; (their emphasis)</p>

</blockquote>

<p>We also questioned why the Guide would say &quot;60 days&quot; rather than &quot;about 60 
days&quot; if it was intended to allow flexibility, and what was the intended maximum 
on the definition of &quot;soon&quot; in the Code - a year, perhaps? We regarded it as 
unreasonable to interpret the Code in this way. </p>

<p>As it happens, the Government managed to get a
<a target="_blank" href="http://www.legco.gov.hk/yr04-05/english/panels/itb/papers/itb0110cb1-588-1e.pdf">
report</a> in to LegCo on 23-Dec-04, which by an amazing coincidence is 59 days 
after our information request, and with only half a day to spare before the 
Christmas eve shutdown. We'll deal with the content of that report at another 
time, because although we find it full of misleading information, it requires 
detailed examination beyond the scope of this article. However, the report to LegCo 
failed to include the documents we had requested, and only included <i>
&quot;extracts&quot;</i> from the consolidated accounts of the holding company. After some 
Christmas cheer, on 29-Dec-04 we repeated our request that the full accounts be 
delivered without further delay.</p>

<h3>Another delay, a different excuse</h3>

<p>Guess what - another full 21 days went by, the target response time under the 
Code, which Government seems to take quite literally - a target to be achieved but not 
beaten. Finally, on 19-Jan-05, the Government came up with a completely new 
excuse for not giving us the accounts. Perhaps they were hoping we would have 
accepted the first excuse, which by now was void, but they should know <i>
Webb-site.com</i> better than that! Referring to the accounting extracts in the LegCo 
report, OGCIO replied to us:</p>

<blockquote>

<p>&quot;[The extracts] have been prepared to ensure public information of the 
financial situation of the Cyberport project without breaching the duty of 
confidentiality of the companies concerned to the other contracting parties 
under various commercial agreements. Given our confidentiality obligations, we 
are not able to disclose further accounts than what we have already provided to 
the Legislature.&quot;</p>

</blockquote>

<p>In response to the Ombudsman, OGCIO further commented:</p>

<blockquote>

<p>&quot;OGCIO had taken into account legal advice that the directors' report and 
accounts of the three Cyberport companies contained certain commercially 
sensitive information and that the companies were bound by the confidentiality 
provisions in various agreements not to disclose such information. As a result, 
Government could not disclose the companies' accounts in full to the public, 
including LegCo and you....OGCIO had provided to LegCo <b>sanitized</b> accounts 
without the commercially sensitive information.&quot; (emphasis added)</p>

</blockquote>

<p>Hmmm, &quot;<a target="_blank" href="http://www.cogsci.princeton.edu/cgi-bin/webwn?stage=1&word=sanitize">sanitize</a>&quot; - as in &quot;make 
clean&quot; - what dirt were they 
removing here?</p>

<h3>Ombudsman criticises Government</h3>

<p>In response to our complaint, the Ombudsman wrote to us on 21-Jan-05. 
<a target="_blank" href="../codocs/Ombudsman050121.pdf">Click 
here</a> to read the letter. In relation to OGCIO's original &quot;Premature Requests&quot; 
excuse of intending to publish our requested documents within 60 days, the 
Ombudsman backed us on this point. He wrote:</p>

<blockquote>

<p>&quot;You were correct in asserting that OGCIO could not use that provision to 
reject your request.&quot;</p>

</blockquote>

<p>That's one small blow for freedom. However, the Ombudsman then backed the 
Government's use of the &quot;commercial confidentiality&quot; excuse which falls under
<a target="_blank" href="http://www.info.gov.hk/access/code.htm#business_affairs">
paragraph 2.16</a> of the Code, although it is not clear from the letter what 
steps, if any, the Ombudsman took to verify that the information withheld was 
actually commercially sensitive, or whether it was reasonable to have included
<i>&quot;confidentiality provisions in various agreements&quot;</i> in the first place, 
having regard to the transparency one would expect from Government. The 
Ombudsman then turned his sights on Government and wrote:</p>

<blockquote>

<p>&quot;OGCIO knew it was not able to disclose directors' report and audited 
financial statements in full, even to ITB Panel [of LegCo]. We consider that 
OGCIO should have explained to you from the outset that its refusal of your 
request was on grounds of commercial confidentiality under paragraph 2.16 of the 
Code.&quot;</p>

<p>&quot;As early as 15 November 2004, you had already queried OGCIO whether the 
Report would contain information you requested. At that time, OGCIO should have 
been aware that the Report would only be a sanitized version of the accounts. 
Again, OGCIO did not explain this in its reply of 6 December 2004.&quot; </p>

</blockquote>

<p>In its conclusions, the Ombudsman criticised the behaviour of the Government 
and wrote:</p>

<blockquote>

<p>&quot;While OGCIO had valid reasons for refusing your request under the Code, its 
replies had not been at all clear or helpful. In this light, OGCIO's handling of 
your request did not comply with the spirit of the Code, which calls for an open 
and positive attitude.</p>

<p>The Ombudsman, therefore, considers that OGCIO should extend an apology to 
you. It should also promptly and clearly explain the reasons for not accepting 
requests for information in the future.&quot;</p>

</blockquote>

<p>This is quite a damning conclusion, and makes us wonder just how often anyone 
has attempted to use the Code, given the shabby way in which OGCIO handled 
our request. Was this the first time they had received a request, or do they 
always behave this way? They appeared to be unaware of the way in which replies should be 
handled, and there seems to be a closed and negative attitude to handling of 
requests, along the lines of &quot;take as long as possible, and if you can find a reason not to  provide 
information, then don't provide it&quot;. As instructed by the Ombudsman, we received an 
<a target="_blank" href="../codocs/OCGIO050125.pdf">apology</a> from OGCIO dated 25-Jan-05, but we doubt if this will change the 
underlying culture.</p>

<p>One thing is clear from the episode - the Code is just a fig leaf to claim to 
the world that Asia's World City has freedom of information, when in fact the 
Government willingly signs agreements with &quot;confidentiality provisions&quot; thereby 
tying its hands and claims &quot;commercially sensitive information&quot; comes ahead of 
the public's right to know.</p>

<h3>What happens with Government, stays with Government</h3>

<p>Back in 2001, the Standing Committee on Company Law Reform proposed that in a
<a target="_blank" href="http://www.info.gov.hk/cr/download/scclr/Rpt_e.pdf">
consultation paper</a> (page 80) that private limited companies should file 
copies of their annual directors' reports and financial statements with the 
Companies Registry for public inspection. This was shot down by vested 
interests, and it is now apparent that the Government would also have been 
opposed to such a measure as it would have been obliged to publish the Cyberport 
accounts, amongst others.</p>

<h3>Collusion and &quot;Sanitized&quot; accounts</h3>

<p>The excuse of &quot;commercial sensitivity&quot; obviously poses more questions than it 
answers. What &quot;commercial agreements&quot; are we talking about here? Are we talking 
about the agreement with Pacific Century Group, now PCCW, reached without 
tender, to develop the Cyberport? Or is there another party involved that has 
not been revealed to LegCo or the public? What could possibly be sensitive about 
this? It seems unlikely that we are talking about tenancy agreements, since 
these would not normally be individually disclosed in financial statements; only the aggregate rental income 
would appear.</p>

<p>In his annual <a target="_blank" href="http://www.policyaddress.gov.hk/">
policy address</a> on&nbsp; 12-Jan-05, Chief Executive Tung Chee-hwa
<a target="_blank" href="http://www.policyaddress.gov.hk/2005/eng/p23.htm">said</a> 
(paragraph 24):</p>

<blockquote>

<p>&quot;We are resolutely against &quot;collusion between business and the Government&quot; 
and will strictly enforce our monitoring systems to eliminate any &quot;transfer of 
benefits&quot;&quot;.</p>

</blockquote>

<p>This provided an irresistible hook for renewed debate about what collusion he 
was referring to, and of course, renewed
<a target="_blank" href="http://www.legco.gov.hk/yr04-05/english/panels/itb/papers/itb_c.htm">
investigation</a> by legislators of how the Government came to award the 
Cyberport project on a 23 hectare site of prime island seafront to the son of a 
long-time friend and former business partner of the Chief Executive, without tender.</p>

<p>In light of the &quot;sanitized&quot; accounts and the Government's insistence that it 
will not release the full accounts of the Cyberport companies, we can only 
speculate on what is in them. <b>We urge Legislators to set up a Select Committee 
into the Cyberport affair, in order to legally compel the Government to divulge 
the full accounts and all other documentation related to the Cyberport.</b> One of 
the &quot;monitoring systems&quot; that the Chief Executive was talking about ought to be 
the public's monitoring of Government through the Code on Access to Information. 
Clearly that voluntary code is not working, and a law is required. <b>If the 
Government is serious about collusion with business, or preventing it, then they 
should co-operate with the Select Committee and put forward a proper Freedom of 
Information law to allow public monitoring of future deals.</b></p>

<p>In an newspaper opinion piece last week, legislator Margaret Ng, for the 
legal sector, 
<a target="_blank" href="http://www.margaretng.com/index.php?p=173">called</a> on Government to enact a law on the Freedom of Information. 
We strongly support this call. If we can't have Government accountability 
through the ballot box, then at least give us transparency in Government 
dealings. It's a necessary component of an open and fair society.</p>

<p>As we have pointed out before, the Government has found itself able to 
publish the annual reports of other companies it owns, including the
<a target="_blank" href="http://www.hkstp.org">Hong Kong Science and Technology 
Parks Corporation</a>, the
<a target="_blank" href="http://www.hongkongpost.com/eng/news_publications/annual_report/index.htm">
Post Office</a>, the
<a target="_blank" href="http://www.kcrc.com/eng/corporate/report/index.asp">
KCRC</a>, the
<a target="_blank" href="http://www.tdctrade.com/abouttdc/annualReport.htm">
Trade Development Council</a>, and the
<a target="_blank" href="http://www.info.gov.hk/lasc/annual.htm">Legal Aid 
Services Council</a>.</p>

<p>What is it about the Cyberport accounts that they do not want LegCo and the 
public to see?</p>

<h3>Cultureport next</h3>

<p>Given the secrecy surrounding the Cyberport, and the way the Government 
claims to have bound itself into confidentiality obligations by contract, the 
public has good reason to wonder whether Government will do the same thing with the 
so-called West Kowloon Cultural Development, or Cultureport (yes, it is by the 
harbour, like our windowless Cultural Centre in Tsimshatsui). Perhaps, 5-10 
years from now, you will be hearing that the accounts of the single developer, 
and the accounts of the cultural facilities, cannot be divulged due to 
commercial sensitivity - they won't want the public to know just what a huge 
profit&nbsp; the developer has extracted from the 40 hectare site in return for 
a few more museums and performing venues to subsidise some of the arts.</p>

<p>Even if you agree that in a free market, the Government should subsidise certain sections of our 
creative economy with taxpayers' money (which we do not), this is an 
incredibly inefficient way to do it. The Government should parcel up West 
Kowloon into normal sized chunks, install the basic infrastructure such as 
access roads to ensure co-ordinated development, determine what waterfront areas 
should be set aside for public enjoyment, and then auction the development sites 
to the highest bidders in the normal way, including a staggered auction schedule 
to prevent hitting the market with up to 40 hectares in one go. If legislators agree that a site on the 
headland for a subsidised cultural facility should be set aside and funded from 
the public purse, then so be it, but that should be a separate matter.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17936">HONG KONG CYBERPORT MANAGEMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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