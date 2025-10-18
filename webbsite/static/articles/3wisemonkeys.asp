
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

<script type="text/javascript">document.title="The three wise monkeys of HK boards";</script>

	<div class="summary">SEHK has proposed minor reforms to the composition of boards which completely miss the core issue - INEDs are only as independent and competent as the controlling shareholder wants them to be, as long as he or it votes on the INED elections. We call for independent directors to be independently-elected. <b>Tell us what you think!</b>. Read our article and then take our poll on INEDs.</div>

<h2 class="center">The three wise monkeys of HK boards<br>
<span class="headlinedate">15 February 2011</span></h2>
<div class="pollbox">
	
	<ul class="navlist">
		<li id="livebutton">Poll</li>
		<li><a target="_blank" href='../vote/result.asp?p=39'>Results</a></li>
		<li><a href="../vote/">More polls</a></li>
		
			<li><a href="../webbmail/login.asp">Log in</a></li>
			<li><a href="../webbmail/join.asp">Sign up</a></li>
		
	</ul>
	<div class="clear"></div>
	<h3><b>Poll: INEDs</b></h3>
	<p><b>Please <a href='../webbmail/login.asp'>log in</a> to see how you voted, if you did. </b></p>
	
			<p>	
			Poll closed: 18:00:00 4-Mar-2011
			</p>
		
		<script type="text/javascript">
		function NoEnter(e)
		{
			var key;
			if(window.event)
				key = window.event.keyCode;     //IE
			else
				key = e.which;     //firefox
			if(key == 13)
				return false;
			else
			return true;
		}
		</script>
		<form method="post" action="/articles/3wisemonkeys.asp">
			<hr>
			<p class=''>1. Should controlling shareholders be allowed to vote on INED elections in AGMs?</p><p class=''><select name='190' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>2. Should Executive Directors be allowed to vote on INED elections in AGMs?</p><p class=''><select name='191' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>3. Should independent directors be elected only by independent shareholders?</p><p class=''><select name='192' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>4. How often should each INED stand for re-election?</p><p class=''><select name='193' class=''><option value=''>Select</option><option value='117'>At each Annual General Meeting</option><option value='118'>Every 2 years</option><option value='119'>Every 3 years</option><option value='74'>Undecided</option></select></p><p class=''>5. Is the current system for appointing INEDs working for investor interests?</p><p class=''><select name='194' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>6. Overall, how do you rate the performance of INEDs in HK?</p><p class=''><select name='195' class=''><option value=''>Select</option><option value='120'>Very effective</option><option value='121'>Somewhat effective</option><option value='122'>Generally ineffective</option><option value='123'>Very ineffective</option><option value='124'>Completely ineffective</option><option value='74'>Undecided</option></select></p>
			<p>
			
			</p>
		</form>
	
</div>
<p>The Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>) has recently put 
out a
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2010124.pdf" target="_blank">
consultation paper</a> to review the Code on Corporate Governance Practices and 
associated Listing Rules. SEHK is itself owned by a listed company, <a href="../dbpub/orgdata.asp?p=9643">
Hong Kong Exchanges and Clearing Limited</a> (<strong>HKEx</strong>, 0388), so 
whatever changes SEHK makes (with the approval of the SFC) will affect its 
parent.</p>
<p>The paper deals with two different areas - Part I on directors and Part II on 
shareholders. This article will focus on Part I.</p>
<p>The paper proposes a Listing Rule that one-third of the directors be labelled 
as &quot;independent non-executive&quot;. That's in addition to the present requirement of 
3 INEDs, which in turn was increased from 2 INEDs
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2004/041004news.htm" target="_blank">
effective</a> 30-Sep-2004 and from zero on 1-Aug-1993 (note: under a long 
transition for existing listed companies, they needed 1 INED by 1-Jul-1994 and 2 
by 31-Dec-1994). So it has only taken 18 
years to get this far, and what this proposal means in practice is no change if your 
board currently has fewer than 10 directors, because you already have at least 
3/9 tagged as INEDs.</p>
<p>The Webb-site database <a href="../dbpub/INEDHKDistnCos.asp">shows</a> that 
most listed companies have the bare minimum of INEDs. Currently, of 
1416 primary-listed companies, 1100, or 77.7%, have 3 or fewer INEDs. The average number of INEDs 
is just 3.29, only 0.29 above the minimum. As for the ratio of INEDs, the 
database <a href="../dbpub/boardcomp.asp?sort=inpup">shows</a> that there are 
only 279 companies with less than 1/3 tagged INED, or 19.7%, so 80.3% already 
comply with the proposed rule. That's mainly because most boards are smaller 
than 10 seats - our database <a href="../dbpub/DirsPerListcoHKdstn.asp">shows</a> 
that only 437 companies (30.9%) have more than 9 directors.</p>
<p>But what is an INED? The word &quot;independent&quot; is an adjective - so independent 
of what? The answer, of course, is that an INED should be independent of 
management and controlling shareholders. An INED is often required by the 
Listing Rules to opine on whether a connected transaction between the listed 
company and its controlling shareholder is fair and reasonable, or under the 
Takeover Code to opine on whether a privatisation proposal from the controlling 
shareholder is fair and reasonable, or whether a &quot;whitewash waiver&quot; should be 
granted, avoiding a takeover offer. An INED also often sits on a Remuneration 
Committee which determines, or advises the board, on the remuneration of 
executive directors, who are often also substantial shareholders of the company. 
An INED also often sits on an Audit Committee which reviews the accounts 
produced by management, and which reviews the internal controls intended to 
prevent management and staff from misappropriating (or stealing) the company's 
assets.</p>
<div class="leftpicbox" style="max-width:310px">
	<a href="http://www.youtube.com/watch?v=c9cWkUhZ8n4" target="_blank">
	<img alt="3 wise monkeys" src="/images/3wiseMonkeys.jpg">
	</a><p><strong>The Audit Committee of HK Listco gets down to business</strong></p>
</div>
<p>But all of these checks and balances on the behaviour of management and 
controlling shareholders are undermined when they get to decide who 
the INEDs are, because the controlling shareholders and other directors are 
allowed to vote in shareholders' meetings on the election of INEDs. About 90% of 
HK-listed companies have a controlling (30%) or majority (50%) shareholder or 
group of shareholders who determine who should be &quot;independent&quot; of them 
in the board room. It is rather like having a parliamentary democracy in which 
the ruling party picks the members of the minority party.</p>
<p>The result is that many HK-listed companies fulfil the requirement to have 3 
independent directors by picking 3 wise monkeys - see no evil, hear no evil, 
speak no evil. They serve at the pleasure of the King, and if they ask too many 
questions, or object to what the King wants to do, then they will be shown the 
door.</p>
<p>There is not a shred of evidence that the <a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrulesup/mb_rupdate_cover.htm" target="_blank">
2004 reforms</a>, in which the number of INEDs was increased from 2 to 3 and 
audit committees were made mandatory, has made any difference to the quality of 
corporate governance in HK-listed companies. Nor has the fact that 80.3% of 
companies already have one-third of directors labelled &quot;INED&quot; made any 
difference. We still get regular fraud-induced 
failures like <a href="../dbpub/articles.asp?p=2078">EganaGoldpfeil</a>,
<a href="../dbpub/articles.asp?p=4929">Ocean Grand</a> and
<a href="../dbpub/articles.asp?p=4920">Moulin</a>. We still have INEDs who 
support connected transactions which are voted down or heavily opposed by 
independent shareholders, showing a complete lack of recognition by INEDs of what is in the 
best interests of the company. This is as much true for Government-controlled 
companies as it is for family-controlled companies. We still have INEDs who 
hold far too many other jobs and positions to devote enough time to do the job 
properly. We also have INEDs who have no relevant experience, either in the 
company's area of business or in financial, legal or accounting matters. 
Examples include school friends, golfing buddies, family doctors, or former 
mainland officials who are owed a favour. For many, a fee of HK$10-20k per month 
for turning up 4 times a year and facing almost no risk of litigation for 
neglecting the duties of the job is easy money.</p>
<p>We also have INEDs who sit as &quot;independent&quot; at multiple listed levels 
in the same corporate pyramid - so when a listed company does a deal with a 
listed subsidiary, or tries to privatise it, the INED is conflicted from giving an opinion 
on both sides. And we have INEDs who have spent all their working lives at a 
firm, then retire for a year before coming back as an INED, which the rules 
allow.</p>
<p>Much hand-wringing has taken place about the need for the right &quot;mindset&quot; and 
a better &quot;quality&quot; of INEDs. This misses the point. A few good companies, which 
want expertise and independent opinions in the boardroom, will pick good people, 
but many will just pick 3 wise monkeys, or noddies - they nod at everything. For 
these companies, incompetence, senility and ignorance are considered desirable 
attributes in INEDs.</p>
<p>Boards should of course be allowed to <u>nominate</u> 
candidates whom they think they can work with, and who they think will add 
value, but they must be candidates who are acceptable to independent 
shareholders. <strong>Unless and until we exclude connected persons (directors 
and substantial (&gt;10%) shareholders) from the shareholder vote, the INEDs will only be 
as independent and as capable as these conflicted parties want them to be. </strong>After all, 
why should shareholders who cannot vote on connected transactions be allowed to 
elect the people who advise on those transactions?</p>
<p><u>Without</u> that simple step, most of the SEHK proposals on boards and committees 
are just re-arranging deck chairs on the Titanic. We won't even bother to 
comment on them in detail. But <u>with</u> that simple step, 
more icebergs could be avoided, because INEDs would:</p>
<ul>
	<li>be accountable to independent shareholders at the ballot box</li>
	<li>have a mandate to ask difficult questions without fear of removal</li>
	<li>only get elected or re-elected if a majority of independent shareholders 
	(by votes cast) think they are suitable for the job</li>
</ul>
<p>Many of the same people who currently hold INED positions would continue to 
serve, but if controllers proposed candidates with no relevant experience, or 
people who are too close to management, or people who are former employees, or 
people who are just too busy, then independent shareholders would likely vote 
them down. Similarly, if the INED has a history of presiding over companies 
which have breached the Listing Rules or collapsed in accounting frauds, then he 
is unlikely to be elected by independent shareholders.</p>
<p>To be clear, we are not calling for all directors to be elected this way. 
Controlling shareholders and management should still be able to call the shots 
and make strategic decisions about the business, electing executive directors 
and non-independent non-executive directors. All that we are asking for is that 
directors should not be called &quot;independent&quot; unless they have been elected by 
independent shareholders. <strong>At the first AGM after a listing and at each 
AGM thereafter, all INEDs should be required to stand for re-election, so that 
the current body of independent shareholders can either endorse them or replace 
them.</strong> Investors should not have to wait 3 years after listing to do 
this, nor should we have to wait 3 years to remove an under-performing INED. 
</p>
<p>Unlike the key-man importance of executive directors, the business of a company should not be dependent on 
particular INEDs, so there is no continuity risk in subjecting INEDs to annual 
re-election. Most of the time, they would receive support, and the annual 
election would keep them on their toes. If candidates are appointed by boards to 
fill vacancies, then they should not be called independent until independent 
shareholders have elected them, and a meeting should be convened for that 
purpose unless the AGM is pending.</p>
<p>This call for independently-elected directors is not a new call - we have
<a href="../dbpub/subject.asp?c=154">made the same point</a> in articles in 1999 
and 2002.</p>
<h3>INEDs report</h3>
<p><strong>We also submit that INEDs should have their own section in the annual 
report in which they each either confirm that they had no material disagreements 
with the rest of the board during the year, or state what those disagreements 
were. </strong>They should confirm in that report whether they have received all 
the information they consider necessary to perform their duties. We should not 
have to wait until they resign before hearing whether they have concerns which 
investors should be made aware of. All too often, dissent is masked by 
statements that &quot;the board&quot; believes something, or even &quot;the board, including 
the independent directors&quot; believes something. That only means that a majority 
of all directors believes something, not unanimity. Whenever an INED disagrees 
with a statement made on behalf of the board, we should be told. The minority 
opinion in any judgement is almost always informative.</p>
<h3>Or stop pretending</h3>
<p>The alternative to requiring independently-elected directors is to stop 
pretending that companies have independent directors. Drop all the rules, and be 
honest about the fact that controlling shareholders elect the entire board. 
Leave it up to companies to persuade the free market on whether they have a good 
board or not, but prohibit them from calling anyone &quot;independent&quot; unless the 
controlling shareholders and directors have abstained from voting on the 
election of that person. We don't favour this route, but it would be more honest 
than the current false comfort of tagging people as independent when they are 
usually not.</p>
<h3 id="seatlimit">A limit on seats?</h3>
<p>The paper asks whether a limit on the number of INED seats held by a person 
should be set by Listing Rules or Code Provisions. We say no. The number of 
seats a person can responsibly handle depends on what other responsibilities he 
has - for example, if he is supposed to be a full-time CEO, or a legislator, or 
a member of the Executive Council (HK's cabinet), or sit on multiple Government 
committees or charities, then he may not be able to spare enough time to do 
handle more than 1 or 2 INED seats properly. On the other hand, if he is a 
retired former partner of a law or accounting firm, with no other 
responsibilities, then he might well be able to handle 5 or more positions and 
still have time to play golf. It also depends on the complexity of the business 
- a multinational bank or retailer, for example, or a simple small-cap 
consulting firm, might require different time commitments. A company struggling 
with financial or business restructuring would entail a larger time commitment.</p>
<p>The best way to resolve issues like this one is to allow the market to 
decide. Again, that means subjecting all INED candidates to a vote of 
independent shareholders. The market, in the form of institutional investor 
bodies and proxy advisory firms, would then evolve standards and make voting 
decisions to back up those standards, making exceptions where appropriate.</p>
<p>The <a href="../dbpub">Webb-site Database</a> continuously tracks the number of directorships and 
the number of INED positions each person holds on companies with a primary 
listing in HK. At present, the database <a href="../dbpub/INEDHKDistnPeople.asp">shows</a> that the 
average person holds 1.354 INED positions, but 46 people (including 2 women) 
hold more than 5. Including other directorships (NED and ED), the database
<a href="../dbpub/DirsHKDistnPeople.asp">shows </a>that there are 77 people who 
hold more than 5 seats (including 3 women), but the average number of HK-listed 
seats is just 1.249. That excludes seats on overseas-listed companies, private 
companies, charities, government boards and other positions.</p>
<p>HKEx itself shows up badly in this respect. There are 6 Government-appointed 
non-executive directors (we don't regard them as INEDs, because they are not 
subject to election by shareholders, let alone independent shareholders). Of 
these 6, the Chairman, <a href="../dbpub/positions.asp?p=675&amp;hide=Y">Ronald 
Arculli</a>, is a partner in a law firm, a member of HK's cabinet, sits on the 
board of 9 HK-listed companies (including HKEx), and is a member of 4 Government 
committees and a director of at least 2 charities. That's at least 17 positions. 
Another Government-appointed NED,
<a href="../dbpub/positions.asp?p=1053&amp;hide=Y">Moses Cheng Mo Chi</a>, 
is senior partner of a law firm, sits on the board of 11 HK-listed companies, 
chairs 4 Government committees and sits on one other, and also sits on 2 school 
councils. That's at least 19 positions including his day-job. He has the 
5th-largest number of HK-listed directorships - here's a
<a href="../dbpub/leagueDirsHK.asp">list of the busiest ones</a>. Another 
Government-appointed director,
<a href="../dbpub/positions.asp?p=1419&amp;hide=Y">Stephen Hui Chiu Chung</a>, 
sits on 6 HK-listed boards and is also Managing Director of a brokerage in his 
day job.</p>
<p>It is notable that the Government-appointed directors of HKEx hold on 
average far more positions than those who are elected by shareholders. Unlike 
most listed companies, HKEx has no controlling shareholder (the Government is 
the largest, at 5.9%), so the 6 elected directors, although comprising a 
minority of the 13-member board, really are accountable to the 
outside shareholders and have to justify their position at each election (every 
3 years by rotation). If Messrs Arculli, Cheng and Hui were subject to 
shareholder election then we doubt that they would be re-elected with their 
current workloads. Your editor David Webb was an elected INED of HKEx from 2003 
to 2008, so he knows first-hand what this accountability means. In 2003, 
shareholders <a href="HKExAGM2003results.asp">voted out</a> 3 
incumbent directors, and he was elected to fill one of the vacancies, running on 
his own ticket, and was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060427/LTN20060427020.PDF" target="_blank">
re-elected</a> in 2006 in a contested election, along with
<a href="../dbpub/positions.asp?p=16057">Christine Loh Kung-wai</a>, whom he 
nominated.</p>
<p>So we don't think that SEHK will find a lot of support from its parent HKEx 
for limiting the number of seats a person can hold. Let the market do that.</p>
<p class="center"><strong>What do you think? <a href="../vote/poll.asp?p=39">Take our opinion poll</a>.</strong></p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=154">Independent Non-Executive Directors</a></li>
				
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