
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

<script type="text/javascript">document.title="The most likely outcome for HK";</script>

	<div class="summary">A systemically unstable equilibrium of civil liberties without democracy may have irrevocably tipped towards an authoritarian outcome. We suggest a way to salvage the situation, but we consider the most likely outcome is now a crackdown. We look at what form that might take, the possible aftermath and the looming 2047 expiry of Basic Law promises.</div>

<h2 class="center">The most likely outcome for HK<br>
<span class="headlinedate">3 September 2019</span></h2>
<p>In October 2014, during the tail end of the Occupy movement, we published an 
analysis titled "<a href="twooptions.asp">One HK, two possible 
outcomes</a>". In a simplified 2x2 grid with/without democracy and with/without 
civic freedoms, we noted that HK exists on its own in one corner, combining 
civic freedoms without democracy. Maybe other places have occupied that corner 
in the past, but it is an inherently unstable equilibrium, precariously balanced 
on top of a hill rather than rolling around the bottom of a valley. It has to 
fall one way or the other - towards democracy or authoritarianism. Here's that 
grid again:</p>
<p>
<table class="numtable center">
	<tr>
		<td>&nbsp;</td>
		<td class="center"><em>Democracy</em></td>
		<td class="center"><em>No democracy</em></td>
	</tr>
	<tr>
		<td class="center"><br><em>Civic freedoms</em></td>
		<td class="center">Most of the developed world &amp; much of the developing 
		world</td>
		<td class="center"><br>HK<br>&nbsp;</td>
	</tr>
	<tr>
		<td class="center"><br><em>No civic freedoms</em></td>
		<td class="center"><br>None<br>&nbsp;</td>
		<td class="center">China, North Korea, Iran, Cuba, Syria, absolute 
		monarchies and other dictatorships</td>
	</tr>
</table>
</p>
<p>The direction HK takes was and is ultimately a choice for the Central People's 
Government (<strong>CPG</strong>) to make, not for the HKSAR Government (<strong>HKSARG</strong>). 
All that the HKSARG could hope to do was to prolong the delicate balance and 
avoid disturbing it too much with poor policy moves - something which it has 
spectacularly failed to do with the Extradition Bill, catalysing a crisis. This 
perturbation has caused more than the wobbles of past crises. In our view, it 
has likely ended the unstable equilibrium and will push us down the hill to the 
authoritarian valley below.</p>
<p>The great hope since 1984 had been that the HK system would survive long enough for 
China's system to evolve towards liberal democracy, delivering the same to HK, 
but Chairman Xi Jinping has been taking China in the other direction towards 
stricter controls, and as he 
does, the CPG has increasingly interfered in HK affairs.</p>
<p>Some on the pro-Beijing side ask you to believe that the protests are purely 
a matter of economics, and that the people, young and old, could be pacified 
with
<a href="http://www.thestandard.com.hk/breaking-news.php?id=131777&amp;sid=4" target="_blank">
cash handouts</a> or new housing subsidies. That's a let-them-eat-cake insult to 
their intelligence. On each occasion of mass protest since 1997, and in economic 
circumstances ranging from a housing crash to a housing bubble, and from low to 
higher unemployment, people have stood up to defend basic freedoms and civil 
liberties. It's not about economics. The root issue has always been the lack of 
democratic accountability for proposals which strike at the heart of HK's core 
values. These proposals were, in summary:</p>
<ul>
	<li>2003: the draconian <a href="july1.asp">National Security Bill</a> under Article 23 of the Basic 
	Law. Suspended and lapsed.</li>
	<li>2012: the proposed "<a href="https://edition.cnn.com/2012/07/30/world/asia/hong-kong-national-education-controversy/index.html" target="_blank">Moral 
	and National Education</a>" syllabus for schools, an attempt to brainwash 
	HK's youth into loving the mainland Government.
	<a href="https://www.scmp.com/print/news/hong-kong/article/1032535/protest-against-national-education-end-after-government-climbdown" target="_blank">Withdrawn</a> on the eve of the 2012 LegCo election.</li>
	<li>2014: the proposals for Iranian-style democracy in HK, whereby a 
	carefully-controlled Election Committee would nominate, with a 50% threshold 
	rather than the current 12.5%, candidates for the HK people to choose from 
	(assuming more than 1 candidate passed the filter). This followed the 
	National People's Congress Standing Committee (<strong>NPCSC</strong>)
	<a href="https://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc23.pdf" target="_blank">
	decision</a> of 31-Aug-2014. This triggered the Occupy movement, and the 
	proposals failed when they did not reach the 2/3 majority in LegCo.</li>
	<li>2019: the Extradition and Mutual Legal Assistance bill, to allow 
	extradition of suspects to the Mainland and the freezing of their assets in 
	Hong Kong. This would breach the firewall between the two judicial systems 
	under the "One Country, Two Systems" model. The Bill is now suspended but 
	has not yet lapsed.</li>
</ul>
<h3>The current protests</h3>
<p>While reasonable observers can disagree on the number of people who 
participated in the peaceful demonstration on 16-Jun, it was undoubtedly the 
largest turnout that HK has seen since at least Jun-1989, packing multiple 
parallel streets from Causeway Bay to Admiralty. It followed Chief Executive (<strong>CE</strong>) 
Carrie Lam's denial that there was anything wrong with the Extradition Bill, 
asserting merely that her Government had failed to explain it properly, an 
assertion that she still holds and a line that comes straight out of the 
National Security playbook of 2003.</p>
<img class="center" alt="Crowd on 16-Jun-2019" src="../images/crowd190616.jpg">
<p>What followed was the continuation of protests, some of which have remained 
peaceful, and others which have ended with violence in which a small minority of 
protesters, perhaps including
<a href="https://en.wikipedia.org/wiki/Agent_provocateur" target="_blank">agents 
provocateurs</a>, have clashed with police and vandalized public property. Most 
notably, this included the 1-Jul invasion of the Legislative Council building, 
after police mysteriously failed to use tear smoke to disperse protesters while 
they were still outside, despite having done so on 12-Jun. On 1-Jul, tear smoke would still have 
worked - but in recent weeks, the extremist protesters have moved on from 
surgical masks and obtained 
readily-available respirators to immunize themselves, resulting in somewhat 
farcical scenes where the police fire tear smoke canisters and the protesters 
throw them back, along with other missiles.</p>
<p>The violent scenes have played into the hands of those who seek to 
minimize the underlying issue and the grievances of the majority of the 
population against the Government. It would be wrong to conflate the violent 
behaviour of a small minority with the demands of the vast majority.</p>
<p>Similarly, it would be wrong to believe that all police are as bad as 
the small minority who lose their temper and use unreasonable force against 
protesters or against those caught in the crossfire. The police are human too, they 
make errors, and they occasionally hire rogues or people who just don't work well 
under pressure. The force has been unfairly politicised by the Government's 
failure to respond to the demands of millions of peaceful citizens. Still, it 
would help if they and their boss did not come up with farcical claims such as 
the notion that there is
<a href="https://news.rthk.hk/rthk/en/component/k2/1463825-20190619.htm" target="_blank">
insufficient room on uniforms to display police ID numbers</a>, or the claim 
that it was pure coincidence that so many opposition politicians (including 3 
legislators)
<a href="https://news.rthk.hk/rthk/en/component/k2/1477793-20190830.htm" target="_blank">
were charged </a>with alleged public order offences on the same day last week.</p>
<p>The vast and peaceful majority of HK people simply want to freely and fairly 
elect their own leader in a competition for policies, within this very special 
administrative region of China, and not to have authoritarian policies thrust 
down their throat. But that isn't going to happen. A proposed demonstration on 
the 5th anniversary of the NPCSC decision, 31-Aug, was banned, and large numbers 
took to the rainy streets despite knowing that they were participating in an 
illegal assembly. In response, the Government issued a
<a href="https://www.info.gov.hk/gia/general/201908/31/P2019083100578.htm" target="_blank">
statement</a> that "rashly embarking on political reform again" would be "an 
irresponsible act", and that in any event, such discussion would have to conform 
with the NPCSC decision. So what they really meant was "we have nothing new to 
offer, so let's not repeat a pointless exercise".</p>
<h3 id="CV">Corporate voting</h3>
<p>However, there is at least one thing the HKSARG could do entirely within its 
autonomy. It could table a bill to abolish <a href="corpvote.asp">
corporate voting</a> for the Functional Constituencies in LegCo and for the 
seats on the CE Election Committee, instead handing the vote to any Permanent 
Resident (PR) who is licensed or works in the relevant sector. For example, in 
the so-called "Financial Services Sector", currently only a few hundred 
companies (stock and bullion brokers), many with common ownership, have 1 vote 
each. All the PRs among the 41,000 SFC-licensed professionals could be given 
that vote instead. In the real estate sector, instead of 1 vote per development 
company (again, many with common ownership), there would be a vote for each 
licensed Estate Agent and each Registered Construction Worker. Similarly for 
Banking, Insurance and other sectors. That would put them in the same position 
as current broad-based FCs such as the Accounting, Education, Legal and Medical 
sectors, all currently occupied by pan-democrats. In a nutshell: "One Job, One 
Vote".</p>
<p>Now, you might think that the existing corporate-FC legislators would try to 
veto that legislation, but if the alternative is continued protests and a 
crackdown in HK that would harm their economic interests, then perhaps they 
would finally surrender, in their own self-interest, the excessive influence 
that they have on Government policy. Carrie Lam would at least get popular 
support for trying, and the CPG, seeking a way to avoid a crackdown, would 
likely mobilise local support for the proposal.</p>
<p>Yes, if it seems familiar, it is similar to what Chris Patten did for 
the
<a href="https://en.wikipedia.org/wiki/1995_Hong_Kong_legislative_election" target="_blank">
1995 LegCo elections</a>, a system which Beijing repealed via the Provisional 
Legislative Council in 1998. However, 24 years later, circumstances have changed 
and this would bring HK people much closer to electing their own choice of CE 
(via a more representative Election Committee) and a much more representative 
LegCo. This would bring a reasonable level of accountability to our CE and 
legislature without changing any of the Basic Law provisions and without needing 
NPCSC approval. It's not full democracy, but it would eliminate the plutocracy.</p>
<h3>Autonomy surrendered</h3>
<p>Much as we would hope for that kind of innovation, recent leaks tend to confirm what many suspect: the 
CE has 
surrendered HK's "high degree of autonomy" to the CPG. A
<a href="http://news.trust.org//item/20190830053931-syqho/" target="_blank">
Reuters report</a> on 30-Aug-2019, which she has not denied, states that before 
a CPG meeting in Shenzhen on 7-Aug, she submitted a report which (correctly) 
found that fully withdrawing the Bill and appointing an independent
<a href="http://www.hklii.hk/eng/hk/legis/ord/86/" target="_blank">Commission of 
Inquiry</a> could help calm the crisis, but she was "ordered" by the CPG not to 
make any concessions, even though many of her usual supporters have called for 
these two minor steps.</p>
<p>Such actions are matters entirely within the HKSARG's autonomy, but if the 
report is true then she refuses to exercise that autonomy. Basic Law
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_4.html" target="_blank">
Article 48(8)</a> does require her to implement the CPG's directives "in respect 
of the relevant matters provided for in this Law", but the only policy matters 
reserved to the CPG are foreign affairs (<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_2.html" target="_blank">Article 
13</a>) and defence (Article 14). Clearly the two concessions do not relate to 
defence or foreign affairs.</p>
<p>When you have constitutional autonomy, and fail by 
act or omission to exercise your best judgment, that is arguably the Common Law 
offence of Misconduct in Public Office, a failure of her duty. Don't hold your 
breath for prosecution though, even after she and her Justice Secretary leave 
office. Mrs Lam would probably claim that she merely took "advice" from the 
CPG and then made a decision to do nothing.</p>
<h3>No resignation</h3>
<p>Mrs Lam is also adamant, in this morning's
<a href="https://webcast.info.gov.hk/revamp/eng/video/0000000572_mp4.html" target="_blank">media session</a> (3-Sep, jump to 11:20 and 24:00), that she has "not even 
contemplated to discuss my resignation" with the CPG, walking back yesterday's
<a href="https://www.reuters.tv/v/PImw/2019/09/02/hk-leader-would-quit-if-she-could" target="_blank">
leaked audio recording</a> from a "totally private exclusive session" in which 
she said to a lunch with business people:</p>
<blockquote>"If I have a choice, the first thing is to quit, having made a deep 
apology".</blockquote>
<p>She now says:</p>
<blockquote>"In a private session I just attempted to explain that as an 
individual, given the very difficult circumstances, might be it was an easy 
choice to leave. But I told myself repeatedly in the last 3 months that I and my 
team should stay on, to help Hong Kong, and to help Hong Kong in a very 
difficult situation, and to serve the people of Hong Kong."</blockquote>
<p>We believe the latter statement. Her claim in the lunch was merely a plea for sympathy 
when in reality she had no intention of resigning. Well, if she wants to serve 
the people of HK, then she should withdraw the Bill and appoint a Commission of 
Inquiry, and let the CPG decide whether to remove her if it dares. After all, 
what would they do, charge her with exercising a high degree of autonomy? 
Extradite her to the mainland for treason? Oh wait, no extradition law!</p>
<p>The Basic Law is actually silent on the power of removal by the CPG. It 
states that the CPG shall "appoint the Chief Executive" (Articles 15 and 45) and 
that she shall be "accountable to the [CPG]" (Article 43). In practice though, 
the NPCSC would probably interpret that to include the power of removal. Local 
legislation (<a href="http://www.hklii.hk/eng/hk/legis/ord/569/s4.html" target="_blank">section 
4(c)</a> of the Chief Executive Ordinance) states that the office becomes vacant 
if the CPG "removes the [CE] from office in accordance with the Basic Law", 
despite the lack of a direct provision in the Basic Law for removal.</p>
<p>If she just announces her resignation and walks out the door, then there is 
an order of precedence in Article 53 for her duties to be assumed by the 
"Administrative Secretary" (known locally as the Chief Secretary), the Financial 
Secretary and the Secretary for Justice in that order, pending a new selection 
in 6 months. Apart from that, Article 52(1) states that the CE <em>must</em> 
resign:</p>
<blockquote>"When he or she loses the ability to discharge his or her 
duties as a result of serious illness or other reasons."</blockquote>
<p>In the circumstances, a medical note for Post-Traumatic Stress Disorder 
should not be difficult to obtain from the nearest Chinese Medicine 
Practitioner.</p>
<p>So what this comes down to is:</p>
<ol>
	<li>If the Reuters report of 30-Aug is true, then she did tell the 
	CPG that she should withdraw the Bill and appoint a Commission of Inquiry, 
	but she will not exercise her autonomy to do so, which may be misconduct in 
	public office;</li>
	<li>If the Reuters report of 30-Aug is false, then it's not the CPG that 
	directed her, it's her decision not to respond to protesters' demands; and</li>
	<li>She hasn't resigned because she still hopes, somehow, to salvage the 
	situation and enjoy political resurrection. The recording also contains her 
	pitiful claim that "for a Chief Executive to have caused this huge havoc to 
	Hong Kong is unforgiveable" and then a moment later "I make a plea to you 
	for your forgiveness". This is unlikely to elicit any public sympathy.</li>
</ol>
<h3>The most likely outcome</h3>
<p>Clearly, both the CPG and HKSARG hope that this storm blows over without any 
concessions, protests die down, and HK can return to its systemically-unstable 
equilibrium, kicking all the issues down the road, whereupon the CE can quietly 
resign for unrelated reasons before her term expires on 30-Jun-2022. We regard 
that outcome as still possible, but now less likely than the alternative, which is a 
hard crackdown. The depth of sentiment, and the scale of protests, is far 
greater than the National Security episode of 2003, and the issues have been 
accumulating since then.</p>
<p>The CE could perhaps defuse the time bomb by proposing the abolition of 
corporate voting and the broad franchise for those seats as outlined above, but 
if she does nothing, the protests will continue, injunction-defying disruptions 
such as last weekend's airport blockade will become more frequent (hopefully 
without the violence), and there will be a massive turnout on the 1-Oct holiday 
march in HK. The summer rains will abate, the temperature will drop, and a 
winter of discontent will be upon us. It's hard to see "doing nothing" as a 
viable strategy, nor is the CE's "dialogue" with tycoons likely to help.</p>
<p>There's a reason why there have been no substantial protests in Beijing since 
4-Jun-1989. Although people will stand up for their rights, few will do so if 
they risk being shot, because that permanently ends the rights of the individual 
in question. Long minimum jail terms for coordinating or participating in 
unauthorised assemblies or publishing anti-government materials would also have a chilling effect. A few months in the 
slammer and the celebrity status it brings will not.</p>
<p>There are in essence 3 possible methods for a crackdown. One involves archaic 
colonial legislation; the other two involve invoking powers under the Basic Law. 
They are not mutually exclusive. In our view, China would not admit that the 
"One Country Two Systems" model has failed, so it would be careful to claim that 
any crackdown and bloodshed was unfortunate, necessary and within the parameters 
of the Two Systems Model.</p>
<ul>
	<li>Basic Law
	<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_2.html" target="_blank">
	Article 14</a> allows the HKSARG to ask the CPG for assistance from the 
	local PLA garrison in the maintenance of public order. The garrison can be 
	replenished or enlarged as needed, so that puts virtually unlimited troops 
	into HK.</li>
	<li>
	<p>Basic Law
	<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_2.html" target="_blank">
	Article 18</a> allows the NPCSC to decide that the SAR is in a state of 
	emergency "by reason of turmoil within the [HKSAR] which endangers national 
	unity or security and is beyond the control of the Region" and then to apply 
	"relevant national laws" to the SAR. That's a somewhat clumsy option but it 
	allows for introduction of other forces such as the
	<a href="https://en.wikipedia.org/wiki/People's_Armed_Police" target="_blank">
	People's Armed Police</a> (<strong>PAP</strong>) which, like the PLA, 
	reports to the
	<a href="https://en.wikipedia.org/wiki/Central_Military_Commission_(China)" target="_blank">
	Central Military Commission</a> chaired by Xi Jinping.</p>
	</li>
</ul>
<p>Using the PLA or PAP has the advantage that, being brainwashed mainlanders 
and not Hong Kongers, they are more likely than HK police to obey an order to shoot. Disobeying 
would also risk a court martial and death themselves.</p>
<p>The HKSARG has also refused to rule out using the
<a href="http://www.hklii.hk/eng/hk/legis/ord/241/s2.html" target="_blank">
Emergency Regulations Ordinance</a> (<strong>ERO</strong>), which allows the CE 
to rule by decree, making regulations with virtually unlimited scope unless and 
until the Legislative Council (with its pro-Beijing majority) steps in to stop 
her. Although we knew about it, the ERO remained obscure and unmentioned this 
year, until last week when the media (starting with the pro-government Sing Tao) 
suddenly lit up with speculation, several quoting the learned opinions of at 
least 3 non-official Executive Councillors
<a href="https://www.scmp.com/print/news/hong-kong/politics/article/3024783/hong-kong-emergency-powers-would-be-used-measured-way-quell" target="_blank">
including convener Bernard Chan</a>, who are unlikely to have had opinions on it if 
they had not been briefed. So this is almost certainly under discussion as an 
option.</p>
<p>The original ERO was passed in a single sitting on 28-Feb-1922, in response 
to the
<a href="https://en.wikipedia.org/wiki/Seamen's_strike_of_1922" target="_blank">
seamen's strike</a> which impacted food, coal and firewood supplies and was 
threatening to evolve into a general strike. The
<a href="../codocs/EROhansard19220228.pdf" target="_blank">Hansard</a> of that 
day contains familiar arguments - it blames foreign forces, or what today would 
be called a "colour revolution":</p>
<p class="auto-style1">"At all events it is essential for the safety of the 
Colony that steps should be taken, as early as possible, to confer upon the 
Executive the most drastic powers for dealing with a situation which may at any 
moment result in disorder owing to the misguided efforts of persons who are 
under the influence of
<a href="https://en.wikipedia.org/wiki/Bolsheviks" target="_blank">Bolshevist</a> 
doctrine."</p>
<p>On the same day,
<a href="https://en.wikipedia.org/wiki/Reginald_Edward_Stubbs" target="_blank">
Governor Reginald Stubbs</a> (yes, as in
<a href="https://en.wikipedia.org/wiki/Stubbs_Road" target="_blank">Stubbs Road</a>) 
used the ERO to pass his first set of
<a href="../codocs/EmergencyRegs19220228.pdf" target="_blank">Regulations</a>. 
Amongst other things, it allowed him to authorise a person to censor or block 
telegrams. 97 years later, it's a different
<a href="https://telegram.org/" target="_blank">Telegram</a> that protesters are 
using to coordinate, and blocking it would involve imposing a Great Firewall of 
Hong Kong and blocking Virtual Private Networks that could tunnel underneath - 
in short, adopting mainland-style controls on the internet.</p>
<p><a href="../codocs/EmergencyRegs19220302.pdf" target="_blank">More 
regulations</a> were made 2 days later, but they were all repealed on 
9-Mar-1922 when the strike was settled. The only other time the ERO was used was 
in 1967, ironically during the
<a href="https://en.wikipedia.org/wiki/Hong_Kong_1967_leftist_riots" target="_blank">
pro-Communist riots</a>.</p>
<p>The ERO could also be used to order censorship and reporting restrictions, 
internment without trial (in HK or even in the mainland, deporting the 
protesters) and other draconian measures, with or without the support of the PLA 
or PAP.</p>
<h3>After a crackdown</h3>
<p>The scale and bloodiness (or not) of a crackdown would have a bearing on the 
international reaction. If there were large-scale and unjustified bloodshed then 
democracies would face pressure from their electorates to pass sanctions against 
China and potentially withdraw recognition of HK as a separate customs and 
immigration territory. China could choose to carry on with the facade of the 
Basic Law, in which case there would still be no import duties or capital 
controls in the HKSAR and the capital markets would continue to function. 
However, there would likely be capital withdrawal, possibly by state-directed 
sanctions as we outlined in the <a href="trumpdump.asp">Trump Dump</a> 
(2-Jun-2019, before the protests).</p>
<p>There would also be an intensification of the persecution of those deemed 
sympathetic to the pro-democracy movement. If you thought the
<a href="../dbpub/artlinks.asp?s=13520">forced resignation</a> of Cathay 
Pacific's CEO and a few staff was bad, then imagine that applied to the civil 
service, all public sector employers such as the Hospital Authority, Housing 
Authority and state-funded schools, all contractors who service them, and 
virtually every large-scale employer. It would be like
<a href="https://en.wikipedia.org/wiki/McCarthyism" target="_blank">McCarthyism</a> 
in reverse - those loyal to the Communist Party could remain. Social media 
accounts would be scoured for signs of support for protesters - and if your 
accounts were open to the public, then it is too late - they have already been 
scraped and stored by the state for future examination. You already have a 
<a href="https://en.wikipedia.org/wiki/Social_Credit_System" target="_blank">social credit score</a>, you just don't know what it is yet. 
This chilling effect on freedom of speech and association would accelerate the 
brain drain that is now underway and deter skilled professionals from bringing 
their talents to HK.</p>
<p>If the international reaction were sufficiently negative to widely derecognise 
HK, then China would have lost most of the benefits of the SAR and may just 
accelerate the retirement of the Basic Law, which promised no changes before 
2047. HK would become just another city within mainland China, and subject to 
all of its controls.</p>
<p>On a more optimistic note, a bloodless but draconian crackdown may just allow 
HK to escape long-term sanctions, maintain the Basic Law and the capital 
markets, and continue to muddle along until China eventually faces the reality 
that its own system will have to liberalise if it is to continue to improve the 
livelihoods of its people. HK would never be the same again, talent and vitality 
would drain, but it could, in 
these circumstances, survive in a modified, authoritarian form.</p>
<h3>The countdown to 2047</h3>
<p>One unavoidable truth is that we are now 27 years and 10 months away from 
that key date of 30-Jun-2047. Younger HK citizens are making plans for their 
future, and increasingly, the uncertainty will draw them away from HK, not just 
because of a potential crackdown, but because when they reach the peak of their 
professional careers, the HK system may expire. What 21-year-old graduate, for 
example, wants to train as a HK lawyer if HK Law may cease to exist when he is 
48? That question will become increasingly pertinent as the clock ticks away. 
Our brightest brains will seek their first or second degrees overseas, obtain a 
foreign passport if they don't already have one, and may not return until HK is 
in a better place.</p>
<p>A new promise from the CPG to give at least 50 years' notice of any expiry of 
HK's system, or a fixed-term extension, would cost the CPG little and do wonders 
for HK confidence at this point.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1886">Chan, Bernard Charnwut</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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