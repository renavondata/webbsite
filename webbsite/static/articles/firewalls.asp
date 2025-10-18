
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	margin-left: 40px;
}
</style>
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

<script type="text/javascript">document.title="Carrie Lam and the separation of powers";</script>

	<div class="summary">After trying to breach the firewall between the 2 Systems with the Extradition Bill, she's at it again, invoking the ERO to enact law by regulation. The PFCR, which she says is subsidiary legislation, sets penalties higher than permitted by Ordinance. Subsidiary legislation cannot override existing Ordinances, so she had better not try. Meanwhile, basic maths and weekend events suggest the anti-mask law fails the rational connection test and is unconstitutional.</div>

<h2 class="center">Carrie Lam and the separation of powers<br>
<span class="headlinedate">8 October 2019</span></h2>
<p>What is it with Chief Executive Carrie Lam and the separation of powers? 
Twice in one year! First, she tries to ram through the Extradition Bill which 
would breach the firewall between the "Two Systems", a firewall which separates the mainland's shoddy court system from 
HK's widely-respected judiciary. Now, having failed to do that and unleashed 
what she called "huge havoc" in HK, she reaches for the colonial toolbox and 
tries to tear up the Basic Law (<strong>BL</strong>)'s separation of powers 
between the executive and legislative branches of our Government, by purportedly 
enacting her own law, the
<a href="https://www.gld.gov.hk/egazette/pdf/20192342e/es220192342119.pdf" target="_blank">
Prohibition on Face Covering Regulation</a> (<strong>PFCR</strong>) under the 
Emergency Regulations Ordinance (<strong>ERO</strong>).</p>
<p>As <a href="ERO.asp">we predicted</a> on Friday morning before 
the announcement, in the
<a href="https://webcast.info.gov.hk/revamp/eng/video/0000000587_mp4.html" target="_blank">
press conference</a> she and her (current) Secretary for Justice Teresa Cheng 
claimed that the PFCR is "subsidiary legislation" and as such, would be tabled 
in the Legislative Council (<strong>LegCo</strong>) after it resumes 
sitting on 16-Oct, in a process known as "negative vetting" where subsidiary 
legislation stands unless
<a href="http://www.hklii.hk/eng/hk/legis/ord/1/s34.html" target="_blank">
amended</a> within a
<a href="http://www.hklii.hk/eng/hk/legis/ord/1/s34.html" target="_blank">
certain timeframe</a>.</p>
<h3>Negative vetting: rinse and repeat</h3>
<p>Paragraph 10 of the <a href="../codocs/PFCRbrief191004.pdf" target="_blank">
LegCo Brief</a> refers to
<a href="http://www.hklii.hk/eng/hk/legis/ord/241/s2.html" target="_blank">
Section 2(3)</a> of the ERO, which states "[a]ny regulations made under the 
provisions of this section shall continue in force until repealed by order of 
the Chief Executive in Council". The brief continues with a suggestion that 
"approval would be sought from the CE-in-C to repeal the Regulation when the 
prevailing public danger drops to a level which no longer justifies the 
Regulation". Sought by whom? Presumably by the CE. So it stops when she says it 
stops, after consulting her Executive Council (<strong>ExCo</strong>). That is 
not how negative vetting is supposed to work.</p>
<p>Even if LegCo can "negatively vet" and amend the PFCR to remove all of its 
clauses (they can't actually repeal it), if the ERO is constitutional then there is nothing to stop the CE from 
re-enacting the PFCR or any other law-cum-regulation on her own, again and 
again. The only way to stop her would be to repeal the ERO itself. That would 
require a bill in LegCo, which the Government would not introduce, so it would 
have to be a members' bill. But under Basic Law (<strong>BL</strong>)
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_4.html" target="_blank">
Article 74</a>, members' bills cannot relate to "public expenditure or political 
structure or the operation of the government" and those which are "relating to 
government policies" cannot be introduced without the CE's written consent, 
which she would not give.</p>
<p>The possible repeated passing of a regulation under ERO contrasts with the 
introduction of bills and their passage into law. Under BL
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_4.html" target="_blank">
Article 50</a>, if LegCo refuses to pass an "important bill" introduced by the 
Government, then the CE, after consulting ExCo, can dissolve LegCo. She can only 
do that once in her term of office. If she does, then under Article 52(3), if 
the new LegCo refuses to pass the same bill, then the CE must resign. But there 
are no such provisions in the ERO to prevent a rinse-and-repeat enactment via 
regulations.</p>
<h3>Fine and jail term exceed subsidiary legislation limits</h3>
<p>Section 3(2) of the PFCR imposes a maximum fine at
<a href="http://www.hklii.hk/eng/hk/legis/ord/221/sch8.html" target="_blank">
level 4</a> (HK$25,000) and imprisonment for 1 year for wearing a mask, even in 
a lawful assembly. But such penalties cannot be established with subsidiary 
legislation, because
<a href="http://www.hklii.hk/eng/hk/legis/ord/1/s28.html" target="_blank">
Section 28(1)(e)</a> of the Interpretation and General Clauses Ordinance (<strong>IGCO</strong>) 
states:</p>
<blockquote>
	"subsidiary legislation may provide that a contravention or breach of the 
	subsidiary legislation is an offence punishable on summary conviction by 
	such fine not exceeding $5,000 or by such term of imprisonment not exceeding 
	6 months as may be specified in the subsidiary legislation or by both such 
	fine and imprisonment;"</blockquote>
<p>The clear purpose of that section is to limit the ability of the executive to 
impose penalties under any subsidiary legislation, regardless of the ordinance 
to which that legislation is subsidiary. That reserves for LegCo the ability to 
set higher fines or higher maximum jail time in primary legislation, and that 
goes hand-in-hand with the separation of powers. The ERO, showing its antiquity, 
purports in
<a href="http://www.hklii.hk/eng/hk/legis/ord/241/s3.html" target="_blank">
section 3</a> to allow regulations which set penalties "including a maximum 
penalty of mandatory life imprisonment but excluding the penalty of death".</p>
<h3>Subsidiary legislation cannot override any Ordinance</h3>
<p>Now, the Government may point to another draconian clause of the ERO, Section 
2(4), which claims that its regulations override any conflicting laws. It 
states:</p>
<blockquote>
	"A regulation... shall have effect notwithstanding anything inconsistent 
	therewith contained in any enactment; and any provision of an enactment 
	which may be inconsistent with any regulation...shall... to the extent of 
	such inconsistency have no effect so long as such regulation... shall remain 
	in force."</blockquote>
<p>But, IGCO
<a href="http://www.hklii.hk/eng/hk/legis/ord/1/s28.html" target="_blank">
Section 28(1)(b)</a> states:</p>
<p class="auto-style1">"(b) no subsidiary legislation shall be inconsistent with 
the provisions of any Ordinance;"</p>
<p>So if ERO regulations are subsidiary legislation (as the Government claims), then 
they 
cannot conflict with the IGCO, so section 2(4) of ERO is void. It follows that 
the lower sentencing limits in the IGCO must prevail.</p>
<p>We note that the ERO does not itself purport to override other 
ordinances, it only provides that its regulations do, but as those are 
subsidiary legislation, they can't. This is very important, because if the CE 
tries to use the ERO again, then it may well be to issue regulations which 
trample on other existing ordinances beyond the sentencing issue - for example the
<a href="http://www.hklii.hk/eng/hk/legis/ord/232/s52.html" target="_blank">
Police Force Ordinance</a> (s52) which provides for no more than 72 hours' 
detention without charge. The IGCO prevents ERO regulations overriding 
existing ordinances. Put simply, if the CE wants to change the law, she can send 
a bill to LegCo in the usual way, but she cannot just issue regulations which 
conflict with existing laws.</p>
<p>We also note that ERO
<a href="http://www.hklii.hk/eng/hk/legis/ord/241/s2.html" target="_blank">
Section 2(g)</a> purports to allow regulations "amending any enactment, 
suspending the operation of any enactment and applying any enactment with or 
without modification". The notion that subsidiary legislation can amend, suspend 
or modify primary legislation flies in the face of common sense, unless the 
relevant ordinance provides for such regulations itself. Put simply, regulations 
made under one law cannot amend another.</p>
<h3>Judicial review of the ERO</h3>
<p>As we predicted on Friday, a judicial review of the ERO and PFCR has 
commenced, with 24 pan-democrat (or as the Government calls them, 
"non-pro-establishment") legislators as plaintiffs. We are now putting the
<a href="../codocs/JRapplication191005.pdf" target="_blank">notice of 
application</a> online as our courts still don't. On an extraordinary Sunday preliminary hearing, leave 
was granted to apply for the JR, to be heard in a rolled-up hearing in the last 
two weeks of October.</p>
<p>Whoever wins the JR, we expect this case to rise to the Court of Final 
Appeal, because the separation of powers is so important. The ERO dates back to 
1922, pre-dating the Basic Law (<strong>BL</strong>) by 75 years, to a time 
when, under the
<a href="https://www.legco.gov.hk/general/english/library/infopacks/yr11-12/1112infopacks-lc-04-e.pdf" target="_blank">
Letters Patent</a>, the Governor was also a LegCo member and appointed all of 
the other 13 members (subject to His Majesty's pleasure), including 6 government 
officials and 7 outsiders.</p>
<p>The Basic Law establishes a clear separation of powers, as
<a href="ERO.asp">we explained</a> on Friday. In addition, we note 
that although some legislators (currently 7
<a href="../dbpub/matches.asp?org1=2287&amp;org2=6610">listed here</a>) sit in 
both ExCo and LegCo, they only sit in ExCo as advisers to the Chief Executive, 
or "non-official members". So they have no executive role, unlike principal 
officials. If a legislator takes any Government office and "becomes a public 
servant", then under
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_4.html" target="_blank">
Basic Law Article 79(3)</a>, he or she must leave LegCo.</p>
<p>There is certainly a system for delegating authority to the CE or other 
officials to make subsidiary regulations, but such authority, since 1997 and 
until now, has always been limited to minor matters related to specific 
legislation such as <a href="../dbpub/artlinks.asp?s=10081">exempting HKEX</a> 
from the Competition Ordinance. The ERO is a law that delegates the ability to 
make any law "whatsoever", disguised as a regulation and based on "emergency or 
public danger". There are ample precedents in other jurisdictions which suggest 
that a legislature cannot delegate its powers wholesale.</p>
<h3>And is the PFCR itself constitutional?</h3>
<p>Even if the ERO's law-making power survives a judicial review of its 
constitutionality, the PFCR does impose a restriction on the rights of free 
speech and assembly under BL Article 27. People have legitimate reasons not to 
be identifiable in peaceful marches, including lawful assemblies. For 
examples: a young man who hasn't told his mother that he is gay might still want 
to participate in a gay rights parade; and a civil servant might not want to be 
identified by the Government while calling for the democratisation of HK or China.</p>
<p>So to be constitutional itself, even if it were enacted by LegCo, the PFCR 
must satisfy a 4-hurdle necessity test. One of those hurdles is that the 
restriction must be "rationally connected" to a legitimate objective. The LegCo 
Brief at paragraph 3 states the objective:</p>
<blockquote>"To restore public order, prohibition on facial covering in public 
assemblies, lawful and unlawful, would be necessary as it would effectively 
reduce act of violence..." </blockquote>
<p>The reduction or elimination of violence is of course a legitimate 
objective, but the rational connection of banning masks (or even sunglasses, 
which cover part of the face) is in serious doubt, especially given the violence 
that followed its purported enactment. Indeed, a Sunday night
<a href="https://www.info.gov.hk/gia/general/201910/06/P2019100600816.htm" target="_blank">
Government announcement</a> condemned "violent acts of masked rioters", rather 
making the point that the anti-mask law hadn't stopped them.</p>
<p>This is not rocket science, but simple maths: if someone is facing 10 years 
in jail for rioting, and putting on a mask reduces her probability of being 
caught by at least 10% (as well as protecting her from tear gas), then a 1-year 
jail term for the mask (or 6 months, if limited by the IGCO) is insurance worth 
taking. In any event, the sentences are likely to run concurrently, so the PFCR 
adds nothing to the overall sentence. And until the would-be rioter launches 
into the violence, she can keep the mask in her bag, complying with the PFCR and 
mixing in with the peaceful crowd of the assembly. A quick dive into a public 
toilet block is all that is needed to emerge in an anonymous, masked outfit.</p>
<p>So the PFCR, as it stands, achieves nothing - it is not rationally 
connected to its laudable objective. If such a restriction were to work, then it 
would need much higher penalties, and there would have to be a prohibition on
<em>possession</em> of a mask in an assembly even if it is not worn. There would 
still be the practical issue of the heavy policing needed to stop-and-search 
people's bags for masks.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=27751">Cheng, Teresa Yeuk Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=135">Emergency Regulations Ordinance</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=152">Human rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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