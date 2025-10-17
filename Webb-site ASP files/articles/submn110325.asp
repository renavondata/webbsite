
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

<script type="text/javascript">document.title="Response to SEHK on Corporate Governance Consultation";</script>

	<div class="summary">Webb-site publishes a detailed response to the Exchange's consultation on the corporate governance rules and code, including recommendations for fundamental reform and the results of the opinion poll on INEDs.</div>

<h2 class="center">Response to SEHK on Corporate Governance Consultation<br>
<span class="headlinedate">25 March 2011</span></h2>
<p><em>For a PDF version of this document, </em> <a href="../codocs/submn110325.pdf">
<em>click here</em></a>.</p>
<h3>Introduction</h3>
<p>This document is the response of Webb-site.com to the
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2010124.pdf" target="_blank">
Consultation Paper On Review of the Code on Corporate Governance Practices and 
Associated Listing Rules</a> from The Stock Exchange of Hong Kong Ltd (the
<strong>Exchange</strong>)
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2010/101217news.htm" target="_blank">
launched</a> on 17-Dec-2010. Before dealing with the
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2010124q.doc" target="_blank">
116 Questions</a> in numeric order, we will make some general comments on its 
approach.</p>
<h4>Qualification to comment</h4>
<p>Webb-site's editor David Webb is a substantial investor 
in several small-cap HK-listed companies. He worked as an in-house adviser to a HK-listed conglomerate 
for 4 years from 1994-1998, and prior to that was a corporate finance adviser 
based in 
Hong Kong from 1991-1994 and in London from 1986-1991. He has been a member of 
the SFC's Takeovers and Mergers Panel since 2001. He was an elected independent 
director of a large-cap HK-listed company, <a href="../dbpub/orgdata.asp?p=9643">Hong 
Kong Exchanges and Clearing Ltd</a> (<strong>HKEx</strong>, 0388) from 2003 to 
2008. HKEx happens to be your parent company. This experience of corporate governance, 
from the inside and the outside,&nbsp; informs our response to your paper.</p>
<h3>INEDs &amp; poll results</h3>
<p>We attach the article <a href="3wisemonkeys.asp">The three wise 
monkeys of HK boards</a>, together with the <a href="../vote/result.asp?p=39">
results</a> of an opinion poll on Independent Non-executive Directors (<strong>INEDs</strong>) 
in HK-listed companies. They form an integral part of this submission. The poll 
was open from 15-Feb-2011 to 4-Mar-2011, and anyone was free to participate. 
Participation required the use of a PIN which was sent to the respondent's 
e-mail address to deter multiple voting.</p>
<p>As you can see, there were 176 respondents to most questions. 151 respondents 
said that controlling shareholders should not be allowed to vote on elections of 
INEDs in shareholder meetings, while only 19 said they should. Similarly, 151 
said that executive directors should not vote on INED elections, while 17 said 
they should. 147 respondents agreed that independent directors should be elected 
only by independent shareholders, while only 19 disagreed. These are 
overwhelming majorities by any measure. Your consultation failed to address this 
most fundamental issue - in most HK-listed companies, INEDs serve at the 
pleasure of a controlling shareholder.</p>
<p>Only 6 out of 173 respondents said that the current system for appointing 
INEDs is working for investor interests, while 152 (96% of those who expressed a 
view) disagreed with that proposition. Interestingly, in the
<a href="../vote/crosstab.asp?pq1=194&amp;pq2=190">cross-tab analysis</a>, of 
the 19 people who said controlling shareholders should be allowed to vote in 
INED elections, 12 of them admitted that the current system for appointing INEDs 
does not work for investor interests, while only 2 said that it does, and 5 were 
undecided.</p>
<p>As a consequence, it is unsurprising that when asked &quot;Overall, how do 
you rate the performance of INEDs in HK?&quot;, nobody replied &quot;very effective&quot;, and 
only 15 said &quot;somewhat effective&quot;. The other categories were &quot;generally 
ineffective&quot; (60), &quot;very ineffective&quot; (46) and &quot;completely ineffective&quot; (45), a 
total of 151. So the best that can be said of INEDs is that less than 10% of the 
market thinks they are somewhat effective while the rest rates them somewhere 
between generally and completely ineffective.</p>
<p>So before you continue with shuffling the deckchairs on the Titanic, we urge 
you to rethink the appointment system for INEDs and build a better ship. This is 
far more important than tinkering with rules on how many committees they should 
form or how many boards they can sit on, or whether they should read articles on 
corporate governance. If INEDs were elected by independent shareholders, then 
the market would decide on a case-by-case basis, and by developing institutional 
guidelines, whether a busy candidate is worthy of election or re-election, 
whether he has stayed too long, or whether he has relevant skills.</p>
<p>The UK, for example, has the <a href="http://www.ivis.co.uk/" target="_blank">
Institutional Voting Information Service</a> (IVIS) run by the Association of 
British Insurers, and it has developed voting guidelines on numerous areas of 
corporate governance. So has the UK's
<a href="http://www.napf.co.uk/PolicyandResearch/Policy_topics/Corporate_Governance.aspx" target="_blank">
National Association of Pension Funds</a>. In the US and globally, Institutional 
Shareholders Services Inc, a leading proxy voting advisory firm, also
<a href="http://www.issgovernance.com/policy" target="_blank">develops voting 
policies</a> by open consultation. Also in the US, the
<a href="http://www.cii.org/" target="_blank">Council of Institutional Investors</a> 
formulates voting policies.</p>
<p>But so long as you continue to allow controlling shareholders to elect the 
entire board, INEDs will not be independent, will not be electable or removable 
by independent shareholders, and will have no mandate or authority to perform an 
effective role in corporate governance.</p>
<p>Now we turn to the questions in your paper.</p>
<h3>Plain writing amendments (Q1)</h3>
<p>No comments on this (as long as you fix the grammar issues), but we urge you 
again to produce a better electronic version of the Rules. The current
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/Documents/consol_mb.pdf" target="_blank">
consolidated PDF</a>, of 1036 pages, has no bookmarks for chapters and no internal hyperlinks to 
navigate cross-references. As we move towards a tablet PC era, more users will 
want something where they can just tap or click on a link and jump to the 
correct reference, as many rules refer to other rules.</p>
<h4>In the beginning, there were the definitions, and then there was light...</h4>
<p>You could also tidy up the definitions - for example, it says that &quot;accounts&quot; 
and &quot;financial statements&quot; have the same meaning but it doesn't say what that 
meaning is. You should do a global search-and-replace for the phrase &quot;financial 
statements&quot; and replace it with &quot;accounts&quot;, then delete the definition. You also 
have a big chunk of definitions buried in Rule 19A.04. It would be better to 
keep all definitions in one place, Chapter 1.</p>
<p>Some defined terms are Capitalised, but many are not (and Chinese has no 
capitals). In order to avoid ambiguity, and make it clear when the reader should 
refer to a definition rather than assuming a common meaning, you should use <strong>bold text</strong>  for any defined term throughout the Listing Rules, 
and in the electronic version, link them back to the definition.</p>
<h3>Directors' duties (Q2-3)</h3>
<p>We support the proposed warning against delegation of responsibilities in 
Rule 3.08.</p>
<p>In the proposed Note to Rule 3.08, the reference to the Companies Registry is 
acceptable, as this is a Government agency and the purpose is to&nbsp;elucidate 
the requirements of Hong Kong law (the Companies Ordinance) as mentioned in the 
first paragraph of Rule 3.08. However, we do not support the following 
cross-reference:</p>
<blockquote>&quot;directors are generally expected by the Exchange to 
follow the Guidelines for Directors and the Guide for Independent Non-executive 
Directors published by the Hong Kong Institute of Directors (www.hkiod)&quot;.</blockquote>
<p>The HKIOD is not a regulator or statutory body, and the Exchange should 
not outsource standards-setting to such private-sector bodies. The guidelines 
issued by HKIOD may change from time to time and do not necessarily represent 
the standards that investors expect of directors, only what directors expect of 
directors. The HKIOD is a body of directors, not investors. The Exchange should 
publish its own guidelines. Finally, we note that &quot;.hkiod&quot; is not a 
top-level domain, so the web address is obviously wrong.</p>
<h3>Nomination committee and time commitments (Q4-10)</h3>
<p>No to all. The proposed requirements that the Nomination Committee should regularly review the 
time required from a director to perform his responsibilities and whether he is 
spending sufficient time as required, and a confirmation from him that he has, 
are overly prescriptive and of no value. The same applies to the other proposals 
in relation to time commitment.</p>
<p>It should be up to shareholders (or in the case of INEDs, independent 
shareholders, as we propose) to assess whether directors can do their jobs, 
using whatever objective information is provided in addition to the attendance 
records at board meetings and AGMs. It is implicit in any director's decision to 
remain on a board that he should be allocating enough time to fulfil the &quot;care 
and diligence&quot; obligation in his duties, whether executive or non-executive.</p>
<h3>Limit on number of INED positions (Q11-13)</h3>
<p>No. See our reasons in the <a href="3wisemonkeys.asp#seatlimit">
attached article</a>.</p>
<h3>Continuous Professional Development (Q14-16)</h3>
<p>No. Again, this is overly prescriptive and unrealistic. If directors choose 
not to inform themselves of the laws and regulations (including Listing Rules) 
which they have agreed to uphold, then they are not carrying out their duties 
with proper care and diligence. Ignorance is no excuse for breaking the law and 
regulations. In practice, this is more about incentive and deterrent - the 
penalty for breaking Listing Rules is often no more than a a criticism (&quot;you've 
been bad&quot;) or a censure (&quot;you've been <em>very</em> bad&quot;).</p>
<p>A director cannot be fined, let alone jailed, for breaches of the 
Listing Rules, because the Rules lack statutory backing. For nine years since 
the Expert Group Consultation in 2002, the Exchange has
<a href="http://www.hkex.com.hk/eng/newsconsul/submissions/index.htm" target="_blank">
opposed</a> giving meaningful statutory backing to the Listing Rules.
<a href="../dbpub/subject.asp?c=190">Click here</a> for a history of this issue. What 
started as an Expert Group recommendation to transfer regulation of listed 
companies back to a Listing Authority under the SFC and to give all the rules 
statutory backing has ended with a
<a href="http://www.fstb.gov.hk/fsb/ppr/consult/doc/psi_conclusion_e.pdf" target="_blank">
Government proposal</a> for statutory backing of a single rule on publishing 
price-sensitive information.</p>
<p>Of course, those directors who care about their reputation and are diligent 
in their work will inform themselves about their responsibilities, and will 
ensure that their companies provide the resources to do so. Anyway, the CPD 
proposal almost waters itself down to
<a href="http://en.wikipedia.org/wiki/Homeopathy" target="_blank">homeopathic 
levels</a> by suggesting that &quot;reading relevant books and articles&quot; would count 
towards CPD hours. That would include reading Webb-site.com (and who doesn't?). 
But who is going to verify that the director has read them? Like homeopathy, the 
proposal would have no more effect than a placebo.</p>
<h3>Upgrading proportion of board that is INED to one-third (Q17-18)</h3>
<p>We agree with this requirement, but it will make no difference to corporate 
governance quality as long as the INEDs are not elected by independent 
shareholders. See reasons in <a href="3wisemonkeys.asp">the 
attached article</a>.</p>
<p>We disagree with the long transitional period. 31-Dec-2011 is a more 
reasonable deadline, for the following reasons:</p>
<ul>
	<li>Over 80% of companies already comply. There are
	<a href="../dbpub/boardcomp.asp?sort=inpup">currently 273</a> out of 1419 
	(19.2%) that do not, but in 15 cases that is only because they have fewer 
	than the required 3 INEDs, often because the are insolvent or undergoing 
	restructuring</li>
	<li>By increasing to four INEDs, 167 of the 273 companies would comply with 
	the one-third rule.</li>
	<li>Alternatively, by having 3 INEDs but losing one non-independent 
	director, 103 companies would comply</li>
	<li>By doing both of these things, 209 companies would comply, implying a 
	minimum of only 106 INED appointments to solve 209 cases</li>
	<li>That leaves 64 companies, each with at least 13 directors, which need to 
	either appoint more than 1 INED or lose more than 1 non-independent 
	director. Most of them are large-cap companies with boards stuffed full of 
	family members or society figures. These companies should have no difficulty in reducing their board 
	size or appointing more INEDs to achieve the target.</li>
</ul>
<p>We will be happy to provide the working data for the above calculations upon request.</p>
<h3>Separate resolution for long-term INED re-election (Q19)</h3>
<p>Yes, we support this, but in practice, there is almost always a separate 
resolution for election or re-election of each director, including INEDs, rather 
than en-bloc voting, so the proposed Code Provision does not add much. It 
appears that CP E.1.1, against bundling of resolutions, already requires the 
election or re-election of each director to be voted on separately as a 
&quot;substantially separate issue&quot;. Indeed, the Note to E.1.1 gives the nomination 
of each person as a director as an example of a &quot;substantially separate issue&quot;.</p>
<p>Again, the market reality is that the INED usually serves at the pleasure of 
a controlling shareholder. If INEDs were elected by independent shareholders, 
then those shareholders would decide, by their votes, whether a candidate who 
has served for many years remains acceptable.</p>
<h3>Reasons for election and independence of an INED (Q20)</h3>
<p>It is unclear whether the proposal applies only to elections of people who 
are not already INEDs, or also to the first election after appointment by the 
board, or also to re-elections. We believe this should apply to all of these 
situations. Again, though, the proposal is meaningless if a controlling 
shareholder is going to vote in favour anyway.</p>
<p>We note that your consultation does not address other areas which ought to 
disqualify anyone from being considered &quot;independent&quot; under the Listing Rules:</p>
<ul>
	<li>Being a director of any other company under common control: too often, 
	the same INED sits at multiple levels in the same family tree of companies. 
	When two of these companies do a connected transaction, or when one tries to 
	privatise the other, the INED is conflicted out of giving an opinion to 
	independent shareholders, because he owes a duty to both sides of the 
	transaction. The pool of available candidates in HK to be INEDs is sufficient that they should not 
	also be a director of a substantial shareholder (&gt;=10%) of a listed company, 
	or of any company controlled by that substantial shareholder.</li>
	<li>The rules still allow someone to work lifelong for a company and then 
	come back as &quot;independent&quot; two years after leaving. There are enough 
	candidates out there that no former employee should ever be considered 
	independent. By all means have them back as an NED, but not an independent 
	one.</li>
	<li>Despite the wording of existing
	<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_3.pdf" target="_blank">
	Rule 3.13(4)</a>, the Exchange still allows people who are directors or 
	employees of banks and of others which do business with a listed issuer 
	(except professional advisers) to be counted as INED. Apparently the 
	Exchange regards directorship or employment with such a party as not being a 
	conflict of interest.
	<a href="../dbpub/matches.asp?org1=385&amp;org2=374&amp;hide=Y">For example</a>, 
	the CEO of The Hongkong and Shanghai Banking Corporation sits as an INED of 
	Cathay Pacific Airways Ltd (0293), even though it provides numerous services 
	and lends money to the airline. Investors want to maximise
	<u>return on equity</u>, but bankers just want to 
	maximise <u>equity</u>, as cover for their loans. The 
	interests are different.</li>
	<li>The rules also allow cross-directorships which create conflicts of 
	interest and potential reciprocity. The market is rife with such overlaps.
	<a href="../dbpub/matches.asp?org1=639&amp;org2=377&amp;hide=Y">For example</a>, 
	the Chairman of <a href="../dbpub/articles.asp?p=377">The Bank of East Asia, Ltd</a> (<strong>BEA</strong>, 0023) is 
	an INED of <a href="../dbpub/orgdata.asp?p=639">Vitasoy International Holdings Ltd</a> (<strong>Vitasoy</strong>, 
	0345), while the Chairman of the latter is an INED of the former. They sit 
	in each other's remuneration committees and audit committees. BEA is also a
	<a href="../dbpub/adviserships.asp?p=639&amp;sort=advup&amp;hide=Y">banker</a> 
	to Vitasoy. In another example, the Chairman of BEA is an INED of 
	<a href="../dbpub/articles.asp?p=416">Hong Kong 
	and China Gas Co Ltd</a> (<strong>Towngas</strong>, 0003) while the Chairman of 
	the latter is an INED of the former. BEA is also a
	<a href="../dbpub/advisers.asp?p=416&amp;hide=Y">banker</a> to Towngas.</li>
</ul>
<p>Again, if independent shareholders elected INEDs, then we doubt that 
investors would allow any of these conflicts to persist, even if the Listing 
Rules allowed them. Boards would have to put forward candidates who are free of 
such conflicts, or face investor nominations instead.</p>
<h3>Remuneration committee (Q21-29)</h3>
<p>Yes to all of these except Q29 (see below), but again, this is just 
rearranging deckchairs on the Titanic, so long as the executive directors and 
their associates are allowed to vote as shareholders on the election of INEDs.</p>
<p>Transactions between listed companies and substantial (&gt;=10%) shareholders 
above certain waiver-thresholds normally require independent shareholders' approval. 
Remuneration of substantial shareholders who are directors remains one of the 
few exceptions to this. If you are not going to establish an independent 
election system for INEDs, so that independent shareholders can safely delegate 
the decision on executive remuneration to INEDs, then you should amend the rules 
to require that the remuneration package of persons who are also substantial 
shareholders should be subject to independent shareholders' approval.</p>
<p>Until then, we will continue to see controlling shareholders who are also the 
Chairman or Chief Executive siphoning off company funds in the form of excessive 
remuneration, blessed by a remuneration committee of friendly INEDs whom he 
elected. Excess remuneration of a controlling shareholder is theft by another 
name.</p>
<p>On Q29, we disagree with removing the reference to performance-based 
remuneration. This is an important consideration for remuneration committees. 
Executive directors should be appropriately rewarded and incentivised for the 
performance of the business, and this is a separate matter from the performance 
of the board as a board. This is also reflected in current RBP B.1.5.</p>
<h3>Nomination Committee (Q30-38)</h3>
<p>No to all of this. It is overly prescriptive and disregards the market 
reality. There is really no need for Nomination Committees in the Code, whether 
as an RBP or a CP. It's presence as a CP would also encourage the delegation 
that Rule 3.08 (directors' duties) is trying to discourage. It should be up to a 
board to decide whether to make nominations itself or to delegate this to a 
committee, and to evolve its own process for making those decisions. Ad-hoc 
search committees to fill important executive roles are sometimes appropriate, 
but the board should decide when to use them. </p>
<p>Where there is a controlling shareholder, he/it will often decide the board 
composition alone, and in that case, any committee process to rubber-stamp that 
choice is a charade.</p>
<p>Again, if independent shareholders elected INEDs, then the board would take 
their nomination process much more seriously, because it would have to nominate candidates 
for those seats who are acceptable to independent shareholders, and the 
investors could always nominate their own candidates if they are unhappy with 
the board's nominations.</p>
<h3>Corporate Governance Committee (Q39-45)</h3>
<p>No to all of this. It is just more deck chairs on the Titanic. Again, it 
encourages the delegation that Rule 3.08 (directors' duties) seeks to 
discourage. Good corporate governance is a matter for the whole board. Shuffling 
around the 3 wise monkeys and sticking a new label on the committee will not 
solve the problem of bad governance.</p>
<p>Again, if investors believe there is a deficit of corporate governance in a 
particular company, then an independent election system for INEDs would allow 
investors to install good candidates who could try to rectify this on the 
inside. They would not always be successful in such efforts, but they could try. 
An INEDs report within the annual report would allow them to report 
independently on whether they are satisfied (see 
<a href="3wisemonkeys.asp">attachment</a>).</p>
<h3>Audit Committee &amp; whistleblowers (Q46-48)</h3>
<p>Yes to all these questions, but we believe the establishment of a whistleblowing &quot;policy&quot; 
should be a CP, not RBP, and by policy, you mean &quot;system&quot;. The real problem here 
is that people will only blow the whistle against management if they believe in 
the independence of the audit committee from management and that the identity of 
the source will not be disclosed to management without his consent.&nbsp;So 
long as INEDs are elected by controlling shareholders and executive directors, 
it is hard to imagine whistleblowers having the necessary confidence and trust 
to use such a system.</p>
<p>Further, for a whistleblower system to work, the informant should be able to 
send an e-mail or hard copy letter to the audit committee, or at least to its 
chairman, at a published address which is not capable of being monitored by the 
management. We suggest that you specify this in the CP. The address needs to be 
publicly available, because if the would-be whistleblower has to ask management 
for the address then it will be obvious why he is asking.</p>
<p>In the meantime, whistleblowers are welcome to contact the SFC, ICAC or 
Police, or failing that, to <a href="../contact/">contact Webb-site.com</a>. Webb-site 
protects the identity of our sources so far as is legally possible.</p>
<h3>Senior management remuneration (Q49-51)</h3>
<p>As the paper notes, there is no definition of what constitutes senior 
management - the issuer is allowed to decide for itself and list their 
biographies in the annual report accordingly. If you impose 
remuneration-disclosure without defining &quot;senior management&quot; then many more 
issuers will decide, as some do now, that there are no senior managers, other 
than executive directors. That way, they can simply &quot;opt out&quot; of disclosure.</p>
<p>The draft leaves Appendix 16 with a patchwork of measures - paragraph 25(6) 
requires unnamed disclosure of remuneration in bands for non-directors in the 
top 5, while paragraph 25A (as proposed) requires named disclosure for senior 
management in bands. What a mess. Surely, the people who are in the top 5, and 
more than that, should be regarded as senior. It is difficult to conceive a 
situation where someone is amongst the top 10 highest-paid individuals but is 
not considered important to the group. Whether they are in a managerial role or 
in a star-performer role is not relevant. The essential point is that they are 
important to the group and are paid accordingly. Similarly, if they are outside 
the top 10, then they are probably less important to a group, and we don't need 
to know their remuneration even if they are listed as senior managers.</p>
<p>Accordingly, we believe the way to streamline your proposal and remove the 
opt-out incentive is this:</p>
<ul>
	<li>named remuneration disclosure of all directors and any 
	non-directors who are amongst the top 10 highest-paid persons (including 
	directors). The top 5 is too limited, because that might often exclude 
	important people who are not directors, such as the CFO, head of internal 
	audit or group legal counsel.</li>
	<li>all such top-10 persons should be included in the senior 
	management biographies, so that investors know more than just their names.</li>
	<li>a <em>de minimis</em> threshold would be acceptable - we suggest 
	excluding non-directors under HK$0.5m per year. Otherwise, a company with 
	only 10 employees (including directors) might end up disclosing the 
	tea-lady's salary and publishing her biography, which might be interesting, 
	but not from a corporate governance perspective. </li>
	<li>actual numbers, no banding. This is just obfuscation, and makes it hard 
	to tell whether someone gets as much as a 50% pay rise from one year to the 
	next ($1m and $1,499,999 fall in the same band).</li>
	<li>
	<p>issuers should still include biographies of other senior managers who are 
	not among the top 10 earners, without disclosing their remuneration.</p>
	</li>
</ul>
<p>This disclosure would deter the practice of installing relatives of 
controlling shareholders and/or relatives of executive directors as non-directors and paying 
them excessive remuneration, which amounts to theft from independent 
shareholders. </p>
<p>We agree with the inclusion of sales commission in remuneration (Q50). 
Figures would be misleading if it were excluded. Whatever form remuneration 
takes, its value should be disclosed. We agree with the disclosure of CEO 
remuneration (Q51), although if you adopt our streamlined proposal, then he 
should normally be in the top-10 earners anyway.</p>
<h3>Executive director remuneration (Q52)</h3>
<p>Yes, and see our comment on Q29 above.</p>
<h3>Board evaluation (Q53)</h3>
<p>No. This proposal calls either for introspective navel-gazing followed by 
self-congratulation, or a gravy-train for consultants at the expense of 
shareholders. If it ever became a Rule 
rather than RBP, then amongst badly-governed companies there would undoubtedly 
be the same opinion-shopping that goes on with so-called Independent Financial 
Advisers. Shareholders are the best judge of board performance - if they are not 
satisfied, they can in theory change the board, except where directors are 
unelected or government-appointed, as are 7 out of 13 are at your listed parent, 
HKEx.</p>
<p>In practice, again, controlling shareholders decide who the EDs and 
NEDs are, but independent shareholders should elect the INEDs.</p>
<h3>Board meetings (Q54-55)</h3>
<p>Yes to Q54, and we note that Webb-site is the &quot;market commentator&quot; referred 
to in paragraph 184 of the paper. We made that comment in
<a href="HKExAGM2010.asp">criticising a proposal</a> by your listed 
parent, HKEx, to allow passing of written resolutions by signature of a majority 
of its directors without a board meeting. Shareholders of HKEx agreed with us, 
and <a href="HKExresult2010.asp">voted down</a> the proposal by a 
huge margin.</p>
<p>In Q54, by &quot;a substantial directors&quot; we assume you mean &quot;a 
substantial shareholder&quot;.</p>
<p>In Q55, whether attendance by telephone or videoconferencing is 
counted is a matter for the Articles of Association of each issuer and 
applicable company law. We certainly would not want INEDs to be counted for the 
purpose of the Listing Rules as attending that way if they are not legally 
allowed to attend, speak or vote that way, because then their status would be 
downgraded to observers. So the note should be deleted.</p>
<p>CP A.1.7 (as renumbered) is ambiguous on whether <u>all</u> 
INEDs or just <u>some</u> INEDs should attend a meeting 
where there is a conflict for a substantial shareholder or director. We suggest 
that at least 3 INEDs should attend, except for those who themselves have a 
conflict. There's not much point in requiring a board to have 3 INEDs if only 
one or two of them shows up to such important meetings.</p>
<h3>Directors' Attendance at Board Meetings (Q56-58)</h3>
<p>Yes to all, but in the case of telephonic and video attendance, that 
should only count for the Listing Rules if it is permitted by the issuer's 
constitution and applicable company law (see Q55 above).</p>
<h3>Resolutions in which a director has an interest (Q59)</h3>
<p>We agree that the 5% threshold is not the appropriate test, and with the 
proposed amendment to Rule 13.44. However, it seems inappropriate to keep the 
exemption in note 1(3) of Appendix 3 if future issuers cannot actually use it, 
so that should be removed too, otherwise new listing candidates might continue 
to include it in their Articles.</p>
<p>Furthermore, there is no definition of &quot;material interest&quot;, only guidance in 
Rule 2.16. We submit that you should at least specify that anyone who is a 
director, partner, officer or employee of a counterparty to a transaction should 
be regarded as having a material interest in that transaction and prohibited 
from voting. This is because they have a conflicting fiduciary duty to that 
organisation, whether or not they are remunerated by it or have a shareholding 
in it.</p>
<p>Counterparties include not just companies, but law partnerships, charities, 
governments and other 
organisations. For example, anyone who sits on the Executive Council of the 
HK Government should be regarded as having a material interest in transactions 
between a listed issuer and the Government. Examples of that include HKEx 
group's lease of the Stock Exchange trading floor premises from the Government.</p>
<p>These conflicts even extends to charitable donations - we are aware of 
several cases where listed company funds have been abused by making excessive 
donations to a local charity, a director of which was the spouse of the listed 
company's chairman and controlling shareholder. The donations were large 
relative to profits and beyond what could be justified as beneficial to the 
company. In effect, independent shareholders' funds were being stolen to enhance 
the social standing of the controlling family. In one case, they even named part 
of a building after the family, not the company.</p>
<h3>Chairman &amp; CEO (Q60-67)</h3>
<p>Yes to Q60-66. However, on Q65, there is limited point in the Chairman 
meeting separately with INEDs and NEDs if he is himself an Executive Director. 
The Code does not contain any RBP or CP that the Chairman should not be an 
executive director. That should be a CP.</p>
<p>In practice, many companies continue to have one person as both Chairman and 
CEO. Where there is a controlling shareholder, which is 90% of cases, then in 
our view splitting the roles doesn't really make any difference to governance 
quality - the controlling shareholder elects them both and is often the same 
person. Even if an outside Chairman were introduced, he would still only serve 
at the pleasure of the controlling shareholder. In some companies, a 
husband-and-wife split the roles, and in others, two co-founder executive 
directors split the roles, which is just box-ticking the CP.</p>
<p>On Q66, effective communication between the board and shareholders, you 
should make it a Listing Rule that all companies provide an active e-mail 
address or form on their web sites for submission of messages to the board, and 
a CP that all such communications are acknowledged within 3 working days, even 
if automated. Currently, many companies provide no way to write to them other 
than a postal address.</p>
<p>On Q67, CP A.2.9 seems to be a repetition of the theme of the new sentence in 
A.2.6. Also, we don't think a Chairman can be expected to <u>
ensure</u> constructive relations between EDs and NEDs - he can only 
facilitate them. Again, in reality, most companies have a controlling 
shareholder and if an NED or INED asks too many unwelcome questions or disagrees 
with the wishes of the controller too often then he will be shown the door. What 
investors actually need is INEDs they elect, with a mandate to ask questions, 
obtain answers, and act in the interests of the company rather than the 
interests of the controlling shareholder.</p>
<h3>Removal/retirement of directors and supervisors (Q68)</h3>
<p>Yes. This is a point Webb-site raised with you in relation to the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100723/LTN20100723225.pdf" target="_blank">
removal of the CEO of Sands China</a> as CEO and director last year without 
giving any reasons, and also on previous occasions when annual reports have said 
that directors intend to offer themselves for re-election and have subsequently 
withdrawn.</p>
<h3>Changes in CEO (Q69)</h3>
<p>Yes, of course.</p>
<h3>Disclosure of all civil judgements of fraud, breach of duty or other 
misconduct involving dishonesty (Q70)</h3>
<p>Yes, because these are relevant to investors' assessment of the board and CEO 
and their probability of behaving the same way with investors' money.</p>
<h3>Disclosure of sanctions against a director under the Listing Rules relating 
to another issuer (Q71)</h3>
<p>Yes, for the reasons stated. The complaint referred to in paragraph 229 was 
raised by Webb-site in Aug-2010.</p>
<h3>Publication of directors' information on the issuer's web site and HKEx web 
site (Q72-73)</h3>
<p>Yes to both, but in the case of the issuer's web site, this should include 
all the updated information required by Listing Rule 13.51(2) in relation to 
each director. Investors should not have to comb through all the announcements 
since the last time a person was elected or appointed in order to find the 
subsequent changes, such as convictions.</p>
<p>We remind you of a previous complaint that the biographical information 
required in annual reports is much less than that which is required in circulars 
for election or re-election of directors. The annual report biographies should 
be upgraded to be the same as in the election circulars.</p>
<h3>Providing management accounts or management updates to the Board (Q74)</h3>
<p>Paragraph 235 of your paper incorrectly states:</p>
<blockquote>&quot;There is no requirement in the Rules or the Code for an 
issuer's management to update the board with its financial performance on a 
regular basis.&quot;</blockquote>
<p>This is untrue, because Note 1 to CP A.6.2 already states that 
management should provide &quot;monthly and other relevant internal financial 
statements&quot; and the CP requires that it be supplied to the board &quot;in a timely 
manner&quot;. We realise that in practice many companies have neither complied with 
this CP nor explained why they do not.</p>
<p>Indeed, when our editor David Webb resigned in 2008 from the board of your 
listed parent, HKEx, one of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080515/LTN20080515396.pdf" target="_blank">
reasons he gave</a> was that he had not been provided with &quot;certain information&quot; 
which he had reasonably requested under the Code on Corporate Governance. That 
information included monthly management accounts, which were being held back and 
only released to the board on a quarterly basis in time to approve the quarterly 
results. The directors were being treated like outsiders in this respect.</p>
<p>In our view, directors of a listed company cannot properly carry out their 
duty to monitor the financial affairs of that company and ensure that it 
announces price-sensitive information (<strong>PSI</strong>) if they do not have 
timely access to relevant information. Your paper acknowledges this in paragraph 
238. The concern (paragraph 237) about directors receiving PSI in management 
accounts is farcical. This is the &quot;see no evil&quot; approach of the 3 wise monkeys.&nbsp; If 
a director sees anything in the accounts which he 
regards as PSI (positive or negative), then he is obliged, by his undertaking to 
the Exchange, to raise it with the 
board and ensure that the company announces it under Listing Rule 13.09.</p>
<p>The proposed CP C.1.2 should refer only to management accounts and should not 
allow &quot;management updates&quot; as a soft alternative. It is a CP, and if an issuer 
cannot produce monthly management accounts for its board, then it should explain 
why not, because that is indicative of deficiencies in internal accounting and 
reporting systems. We also submit that the CP should set a sensible timeframe, 
of say 15 business days after the month-end. So change the last sentence to:</p>
<blockquote>&quot;These should include monthly management accounts and be 
produced within 15 business days of the month end&quot;.</blockquote>
<p>There is no prescribed format for management accounts - they will differ from 
one firm to the next. Complaints that the accounts &quot;may be large&quot; are not a good 
reason not to provide them. It is up to management to produce accounts in an 
intelligible and digestible form, not too large for the board to digest. It 
would defeat the purpose if management provides only textual narrative, telling 
the board that performance is in line with expectations.</p>
<p>You also need to reconcile the new CP with Note 1 of CP A.6.2.</p>
<h3>Next day disclosure of share issues (Q75-76)</h3>
<p>No to both questions.</p>
<p>Listing Rule 13.25A is far more complicated than it needs to be. There should 
not be any exemptions to disclosure of new issues. The registrar of a company 
will only issue new shares if the company provides it with instructions to do 
so, and that is the point at which the issued share capital changes. If a 
company provides such instructions to a registrar, then it is equally capable of 
completing an online submission to HKEx with the same information.</p>
<p>Paragraph 243 lays out a concern that for a large corporation the exercise of 
share options &quot;could be very difficult to monitor, especially for directors of 
overseas subsidiaries&quot; and that the timeline for reporting is difficult to 
achieve. This is nonsense, because the exercise forms for such options will all 
come to a central point at the company, and there will be some verification 
process before the instruction is given to the registrar to issue the shares.</p>
<p>You can deal with this concern by clarifying that the increase in share 
capital is not triggered by the submission of an exercise form in Timbuktu but 
by the issue of a share by the company in HK or wherever the register is kept. 
So if a large company has hundreds or thousands of option-holders, it can just 
aggregate the exercises on the relevant date when it authorises the issue of the 
relevant shares, and file the form.</p>
<p>What matters, as far as investors are concerned, is that they know when new 
shares are issued and therefore tradable and could impact the market, and that 
they know what the denominator is when calculating their percentage 
shareholdings for the purpose of the disclosure of interest law.</p>
<p>If you continue allowing exemptions, then the 5% threshold for triggering 
disclosure is way too high. The typical daily volume in a company is 0.1-0.2% of 
its issued shares (25% to 50% per year), or less in the case of those with small 
public floats. So the secret issuance, for example, on conversion of bonds, of 
4.99% of a stock is often equivalent to between 5 weeks and 10 weeks of turnover, 
and would have a big impact if dumped in the market in a short period. By 
comparison, when a substantial shareholder reduces his stake, he has to disclose 
any reduction through a 1% boundary, so that other investors know that he is 
selling. So your threshold for disclosure of issues should not be higher than 
1%.</p>
<p>But as we said, you shouldn't have exemptions at all. There are no 
exemptions for buybacks.</p>
<h3>Disclosing long term basis on which issuer generates or preserves business 
value (Q77)</h3>
<p>We don't see the point in requiring this, because those companies that don't 
have any strategy or core business will just make up some bland and meaningless 
text to tick the box, and it will be obvious to any reader of their reports, as 
it is now, that they don't have a strategy or core business. No board will admit 
otherwise.</p>
<h3>Directors' insurance (Q78-79)</h3>
<p>The reality is that very few directors of HK-listed companies will ever get 
sued for anything they do as a director, because the litigation rights of 
shareholders <a href="../dbpub/subject.asp?c=175">are so weak</a> and 
shareholders have no <a href="../dbpub/subject.asp?c=111">class action rights</a>. 
Instead of buying insurance, some companies may choose to absorb the residual 
risk by indemnifying directors in their appointment letters against all legal 
costs and civil liability incurred in connection with their work. Obviously it 
is a choice for directors on whether they are willing to work on those terms, or 
whether they might want to buy additional insurance themselves. Relying purely 
on an indemnity runs the risk of non-payment in the event that the issuer 
becomes insolvent, and the probability of litigation is higher during 
insolvencies than during normal solvent circumstances.</p>
<p>Directors' insurance at shareholders' expense is acceptable to investors as long as 
it does not cover the director's costs and fines if he is finally judicially 
found liable for offences or market misconduct. It is unfair for shareholders, 
through their companies, to have to bear the cost of wrong-doing by directors, 
whether by indemnity or by paying insurance premiums.</p>
<p>So in summary we support making this a CP but do not support taking it any 
higher to a Listing Rule. Rather, you should include a disclosure requirement in 
the Listing Rules as to whether or not the company buys insurance for directors, 
so that potential external candidates in director elections, particularly INEDs, 
can know whether they would have any cover if elected.</p>
<h3>Bundling of resolutions (Q80)</h3>
<p>Yes. In paragraph 257 of your paper, you say:</p>
<blockquote>&quot;If resolutions are &quot;bundled&quot; there is a possibility that the 
significance of a resolution may be hidden from shareholders by less 
controversial resolutions in the same bundle. For example a resolution on a 
controversial matter on a change to an issuer's articles of association may be 
bundled with several uncontroversial administrative amendments on the same 
subject.&quot;</blockquote>
<p>This was indeed the case last year when your listed parent, HKEx, bundled a 
number of proposed changes to its articles of association, including a 
controversial one allowing written resolutions to be passed by signatures of a 
majority of directors without a board meeting. As you may know, Webb-site 
spotted it and <a href="HKExAGM2010.asp">urged investors</a> to vote 
down the bundle, and <a href="HKExresult2010.asp">they did</a> (see 
also Q54-55 above). We are pleased to note that for the 2011 AGM, HKEx has
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110316/LTN20110316321.pdf" target="_blank">
unbundled</a> proposed changes to the M&amp;A into separate items and is not seeking 
to repeat the offending proposal.</p>
<h3>Voting by poll (Q81-84) and meetings in general</h3>
<p>Yes to all, but qualified as follows. On Q81, we note that even if the 
Chairman takes advantage of the exemption to allow a show of hands on a 
procedural or administrative motion, shareholders present in person or by proxy 
at the meeting can still exercise their right to demand a poll, and if they 
fulfil the requirements of the Articles or relevant company law, then a poll 
must still be held. In most jurisdictions the criterion is 3 or 5 shareholders. 
This law is what Webb-site successfully used in
<a href="../dbpub/subject.asp?c=172">Project Poll</a> in 2003 onwards, when we 
forced all the blue chips to start counting their votes by poll. That campaign 
eliminated the opposition to poll voting from the large companies which carry 
the greatest influence over the Listing Rules, and on 1-Jan-2009, 
poll voting became mandatory in the Listing Rules.</p>
<p>So the ability for shareholders to demand a poll is a safeguard against abuse 
of the proposed exemptions. For example, if the Chairman seeks to adjourn the 
meeting in order to defer voting on a resolution which he knows will be defeated 
(from advanced sight of proxies), abusing one of the allowed reasons as a 
pretext, then those present in person may still demand a poll and veto the 
adjournment.</p>
<h4>Conflicted voting on adjournments</h4>
<p>However, this raises a separate point not addressed in your paper. If there 
is a resolution on which certain shareholders are required to abstain (e.g., a 
majority shareholder involved in a connected transaction) then we submit that those 
shareholders should not be permitted to vote on an adjournment motion, because 
otherwise the Chairman could use that to defer a meeting and provide more time 
to rig the vote with friendly pseudo-independent shareholders. This should be 
introduced as a Listing Rule: you cannot vote on a motion of adjournment if the 
outstanding business includes an item on which you are not permitted to vote.</p>
<h4>Verifying abstentions</h4>
<p>Another area that your paper does not address is the problem of verifying 
that those who were not supposed to vote have in fact abstained as required by 
Listing Rules. As most beneficial shareholders are not registered shareholders, 
the scrutineer cannot verify that those who vote are entitled to vote under the 
Listing Rules. This opens the door to corruption of the vote.</p>
<p>This can be done by, for example, holding shares through a company 
which has accounts with multiple brokers, and causing each broker to appoint a 
separate individual to attend the meeting, and then having them cast enough 
votes to overcome any opposition. The chairman will usually be able to obtain an 
advance tally from the registrar (who has received most of the public's 
instructions in advance from HKSCC Nominees Ltd) so the company will know how 
many votes to mobilise in favour.</p>
<p>The only way to be sure of abstentions is to reform the system, and 
require that abstaining parties must actually appoint a common proxy (or 
corporate representative) and instruct the proxy to abstain. The registrar would then be able to count 
up the number of shares in respect of which that proxy has been appointed, and 
hence be sure that those shares are properly excluded.</p>
<p>We suggest that HKEx establishes a special-purpose company called &quot;Abstain 
Limited&quot;, and all conflicted beneficial shareholders would be required to 
nominate this company as proxy (or corporate representative), unless they were 
also registered shareholders. A Listing Rule would require the announcement of 
results of the meeting to disclose the number of shares which Abstain Limited held as proxy and 
to confirm that all the shares which should have abstained did abstain (or did 
not vote in favour, depending on the relevant rule). If it falls short of the 
expected number, then it would be up to the company to prove that those who 
failed to appoint Abstain Limited did not vote. If they cannot prove that to the 
satisfaction of the Exchange, then the resolution would be void.</p>
<h4>Language of meetings</h4>
<p>There is still no requirement that meetings be held in a language that 
attending investors can understand. Printed circulars must be produced in 
(traditional) Chinese and English. Meetings are often held in Mandarin, 
Cantonese, or even other regional dialects, without any consecutive translation 
being provided. With the increasing number of international listings, AGMs may 
even be held in Russian, French, Portuguese, German or some other language. If 
we induce international investors to invest in this market by producing 
English-language disclosures, then we should allow them to participate in 
meetings by providing proper translation (consecutive or simultaneous) in the 
meeting. This should be a Listing Rule.</p>
<p>This is no more burdensome than requiring English versions of every document. 
Alternatively, if you want to exclude non-Chinese-speakers and readers from the 
market, then you could allow issuers to decide at the time of IPO not to produce 
their documents in English, but in the event that they ever start reporting in 
English then they cannot stop, and must provide English translation at all 
general meetings. We could not have a stop-start approach where they suck people in 
and then stop reporting in a language they understand.</p>
<h4>Market savvy - regulators should observe a sample of meetings</h4>
<p>How many Listing Division staff have ever attended a shareholder 
meeting in HK? The experience would be illuminating - it should be part of 
continuing professional development for all Listing Division staff to attend at 
least one shareholder meeting per year. To facilitate this we suggest the following Listing Rule:</p>
<blockquote>&quot;An issuer shall, upon prior notification from the Exchange, 
permit any authorised representative(s) of the Exchange to attend and observe 
the proceedings at any general meeting.&quot;</blockquote>
<p>This would also allow you to do spot checks on whether the many required 
provisions for general meetings are actually being complied with.</p>
<h4>Minutes of meetings</h4>
<p>Shareholder meetings (particularly when real investors like us attend, and 
not just employees of the company) often 
involve an interesting exchange of questions, answers, views and information, 
fleshing out items in the annual report (in AGMs) or future business strategy, 
or identifying areas of concern for which directors offer no explanation, which 
is telling in itself. In the case of an EGM or SGM, there will often be 
questions on the matters at hand. Proper minutes should be kept recording this 
dialogue, not just boilerplate minutes prepared before the meeting with blanks 
for the number of votes. To avoid dispute on the minutes, an audio recording should be made, 
and the Chairman should ask speakers to state their name and whom they 
represent, if anyone.</p>
<p>There is nothing in the Listing Rules or Code on Corporate Governance 
on these points. There should be.</p>
<p>It is a requirement of many jurisdictions that the minutes of general 
meetings must be made available for inspection by members (registered 
shareholders) without charge and that a copy be provided to them on request and 
payment of a copying fee. For HK-incorporated companies, this is set out in
<a href="http://www.hklii.org/hk/legis/en/ord/32/s120.html">s120 of the 
Companies Ordinance</a>, and the Listing Rules expect companies from overseas 
jurisdictions to be no worse-governed than that. Specifically, the Listing Rules 
for PRC issuers require that minutes be available for inspection in HK.</p>
<p>These provisions should be modernised for the internet. We should not have to 
be registered shareholders and visit HK or pay to buy a copy of the minutes. The Listing Rules 
should require that all listed companies file their minutes of General Meetings 
on the HKEx web site within, say, 10 business days of the meeting (allowing 
enough time for transcription and translation), in Chinese and 
English.</p>
<p>So we suggest the following Listing Rule:</p>
<blockquote>Issuers must make audio recordings of shareholder meetings 
and must prepare accurate minutes which reflect the attendees, the comments and questions of 
shareholders (including proxies and corporate representatives), including their 
names and the names of the registered shareholders they represent, and the 
comments and answers provided by directors and other parties present at the 
meeting. A copy of the minutes must be filed on the HKEx web site within 10 
business days of the meeting.</blockquote>
<h3>Shareholders' approval to appoint and remove auditor (Q85-87)</h3>
<p>Yes to all, but this doesn't address the core issue, because in practice, 
auditors are seldom removed and usually just resign or &quot;fail to agree fees&quot;, 
which these provisions don't cover. We suspect that often a mutual &quot;failure to 
agree upon fees&quot; is just a pretext, either because the auditor wants to quit 
without giving other reasons, or because the company does, so the auditor asks 
for an excessive fee or the company offers too little, and then they part ways.</p>
<p>The solution is to require that the fees be agreed before the AGM in respect 
of the forthcoming year, and the appointment letter be signed by both sides, 
conditional only upon shareholders' approval of the appointment. Once that 
approval is obtained, the appointment becomes unconditional. Then, there would 
be a binding contract to provide audit services, and it would be harder for the 
auditor to quit before the next AGM or for the company to lose them.</p>
<h3>Directors' attendance at meetings (Q88-91)</h3>
<p>Yes to all. Far too often, at General Meetings we find ourselves speaking 
only to the Executive Directors and perhaps one INED. Sometimes it emerges that 
INEDs are hiding in the audience, like the &quot;junior&quot; directors they are. It 
hardly fills shareholders with confidence when INEDs don't sit up front alongside the 
executive directors and Chairman-CEO-controlling shareholder. Again, this is why 
INEDs should be elected by independent shareholders, not by the controller.</p>
<p>Often, we are told that one or more INEDs had &quot;an important meeting&quot; to go 
to. Yet the board of which he is a member set the date for the general meeting 
weeks or months ago - they were capable of planning around it and picking a date 
when all or most directors could attend. So we say &quot;presumably the other meeting 
is more important to this person than the affairs of this company&quot;. If that 
person is up for re-election (as he usually is every 3 years), then we vote 
against, because he couldn't make the effort to attend his own election, safe in 
the knowledge that the controlling shareholder will re-elect him.</p>
<p>Despite making these points, by attending successive AGMs of the same 
companies, we have often observed that the same people are absent, always having 
an important meeting to go to. They simply don't regard shareholders' views as 
relevant. In one company we know of, the Chairman never attends the AGM, and a 
more cynical investor might seriously doubt whether he still exists in body, let 
alone mind.</p>
<p>Attendance records by name would provide some incentive, but you may need to 
go further. A reasonable Listing Rule would be that if more than half the INEDs 
are absent then the Chairman must move that the meeting be adjourned and put it 
to a vote of independent shareholders, with controlling shareholders and 
executive directors abstaining. That would 
focus their attention!</p>
<p>&nbsp;The names of attendees should of course be in the minutes 
of AGM filed on the HKEx web site (as proposed above), so we shouldn't have to 
wait until the next annual report for proof of which directors attended.</p>
<h3>Auditor's attendance at AGMs (Q92)</h3>
<p>Yes. In practice, they usually do attend.
<a href="http://www.hklii.org/hk/legis/en/ord/32/s141.html" target="_blank">
Section 141 of the Companies Ordinance</a> requires that the auditors' report be 
&quot;read before the company in general meeting&quot;, implicitly by the auditor, and 
although the report is is often &quot;taken as read&quot;, the auditor needs to be there in case 
there is objection to that. Many other commonwealth jurisdictions have similar 
provisions.</p>
<p>On the wording, &quot;ensure the external auditor attend&quot; should read 
&quot;ensure <u>that</u> the external auditor attend<u>s</u>&quot;, 
and on the accounting policies, this should include their application, not just 
just the policies in isolation so insert &quot;and their application,&quot; after 
&quot;accounting policies&quot;. That way, shareholders can question whether the policy 
has been properly applied.</p>
<p>The audit report, after all, is addressed to the shareholders as a body. The 
shareholders meet as a body and should be free to quiz the auditor on their 
work. The fact that auditors have <a href="valueproposition.asp">no 
statutory duty of care</a> to individual investors is a separate issue which the 
Government should address by legislation.</p>
<h3>Shareholders rights (Q93)</h3>
<p>Yes, because otherwise the rights of shareholders (with sufficient 
shareholdings) to propose resolutions or requisition general meetings will 
remain buried in obscure parts of corporate charters and applicable company law. 
See also Q66 above.</p>
<h3>Communications with shareholders (Q94)</h3>
<p>Yes, and see also Q66 above. It is important that either an e-mail address or 
online message submission system should be available for investors to contact 
management at all times, and that prompt acknowledgement of receipt should be 
given, even if automated.</p>
<h3>Publish constitutional documents on website (Q95)</h3>
<p>Yes. We have asked for this rule many times. It is the most fundamental document 
of any company and should be available online.</p>
<h4 id="docsOnDisplay">Documents &quot;available for inspection&quot; should be filed</h4>
<p>But don't stop there. Every day, we see circulars and prospectuses telling us 
that documents in relation to Major Transactions or IPOs are &quot;available for 
inspection&quot; at an address in HK. If they are important enough to be available 
for inspection, then they should be uploaded to the HKEx web site and left there 
permanently, so that future investors are not at a disadvantage to those who 
grab them while they can. Most of these documents were prepared on computers, so 
most of them don't even need to be scanned, except for signature pages - they 
can just be converted to PDF and uploaded. </p>
<p>These include, for example, contracts for acquisitions and disposals, 
shareholder agreements for the operation of joint ventures, the full deed 
creating warrants or convertible bonds (with full terms and conditions), the 
full rules of share option schemes, copies of service agreements, bond deeds 
containing covenants, and other 
important information.</p>
<p>Before the internet, we put these documents on display because we didn't have 
room for them in prospectuses, and the display time was limited because physical 
space costs money. But in the internet era, the current system is just a sham 
and a pretence at transparency. </p>
<p>The current system also produces a home-country bias in favour of HK 
investors who can make the effort to go and look at the things and take notes 
while they can, and even then it is a laborious process. By contrast, domestic 
companies filing with the US SEC have to upload all exhibits, including 
agreements, to 
<a href="http://www.sec.gov/edgar/searchedgar/companysearch.html" target="_blank">EDGAR</a>, where they are left permanently.</p>
<h3>Publishing procedures for Election of Directors (Q96)</h3>
<p>Yes, but if this procedure is not included in the AGM circular then the 
circular should state where it can be found on the issuer's web site.</p>
<p>A more important issue is that the current requirements of paragraphs 4(4) 
and 4(5) of Appendix 3, on the shareholder nomination period for candidates for 
directorship, do not work well. Paragraph 4(5) stipulates that nobody can be 
nominated until the day after the notice of general meeting has been dispatched. 
This puts investor candidates at an inherent disadvantage in the race for votes 
relative to incumbent directors or candidates nominated by the board in the 
circular. Some shareholders may have already voted before they hear about new 
candidates, and given the long chain of custody, there may not be enough time to 
change votes.</p>
<p>So it would be fairer to require the Articles to provide a &quot;Pre-notice 
Period&quot; during which candidates can be nominated, which lasts at least (say) 14 
days from the date of the Pre-notice and ends not more than (say) 7 days before 
the notice of AGM is despatched, and then no more candidates will be admitted 
unless the meeting is adjourned and the company starts again. That way, it will 
be a fair race, with equal voting windows for both internal and external 
candidates. This would also remove the risk of companies needing to adjourn 
meetings when last-minute candidates come up.</p>
<p>Of course, if all directors (including INEDs) are still elected by 
controlling shareholders, then in 90% of companies this is academic. Publishing 
the nomination procedures could even give investors false hope.</p>
<h3>Significant changes to constitutional documents (Q97)</h3>
<p>Yes. It should be simple enough to do this, if necessary by cross-referring 
to the relevant circular filed with HKEx, since changes to the articles of 
association require shareholders' approval.</p>
<h3>Company secretary's qualifications, experience and training (Q98-104)</h3>
<p>Yes to Q98-103, except as follows. We accept that the Company Secretary need 
not be resident in HK, but in Q100, we would add new items:</p>
<blockquote>
	<p>(e) familiarity with the requirements of the Companies 
	Ordinance applicable to HK or overseas-incorporated companies (depending on 
	whether the issuer is incorporated in HK or not)</p>
	<p>(f) familiarity with the requirements of the Securities and 
	Futures Ordinance so far as it relates to listed companies, including the 
	provisions on disclosure of interests, insider dealing, market misconduct, false 
	and misleading disclosure and (coming soon) disclosure of price-sensitive 
	information.</p>
</blockquote>
<p>We say this because otherwise you are going to run into situations where 
foreign issuers and their boards are not properly reminded of their obligations 
by the company secretary, who really should be alert to these. In reality, an 
overseas company secretary is unlikely to have the necessary knowledge, and it 
will be necessary to have dual company secretaries, one for the country of 
incorporation (to satisfy filing requirements and company law there), and one 
from HK. Many foreign issuers will continue to outsource this to a HK solicitor, 
accountant or member of HKICS on a retainer basis, and that is reasonable.</p>
<p>On Q104, the transitional arrangement makes no sense. Those who have been 
company secretaries for the longest period of time are probably those who are 
most out of date with the rules and laws, because freshly-qualified people 
should be reasonably up to date. Yet you are saying that anyone who was working 
before 1995 (16 years ago) does not need to undergo CPD for another 6 years. In 
our view, all company secretaries should be able to find the time to do 15 CPD 
hours per year, and those who haven't seen a textbook in 16 years have the most 
catching up to do! It is only about 0.75% of their time. The requirement should 
start without transition.</p>
<h4>Qualified accountants</h4>
<p>You should also bring back the requirement that every listed company should 
employ a qualified accountant, qualified in their head-office country. It was 
disgraceful that this was <a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrulesup/mb_rupdate12_cover.htm" target="_blank">
abolished</a>. It is hard to imagine how companies can prepare decent monthly 
management accounts without having a qualified accountant.</p>
<h3>New section in Code on Company Secretary (Q105-112)</h3>
<p>Yes to all. On F.1.1, disclose to whom? Also you mean &quot;who<u>m</u> 
the issuer can contact&quot;. On F.1.4, insert &quot;laws,&quot; before &quot;rules and 
regulations&quot;. You may wish to add that the company secretary should assist the 
directors to obtain legal advice when needed in accordance with procedures 
agreed under A.1.6.</p>
<h3>Proposed non-substantive amendments (Q113-116)</h3>
<p>Yes to all, but on Q113, for the grammar to work, you need to split it into 
two definitions:</p>
<blockquote>
	<p>&quot;announcement&quot; - an announcement published under rule 2.07C</p>
	<p>&quot;announce&quot; - make an announcement</p>
</blockquote>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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