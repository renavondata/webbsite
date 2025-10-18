
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	font-family: Verdana, sans-serif;
	font-size: 10pt;
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

<script type="text/javascript">document.title="HK Government has no power to suspend school classes";</script>

	<div class="summary">As class suspensions drag into a third month, we look at who exactly is responsible. Surprise: it's not the Government, which can only advise, and it's now time for schools and their governing bodies to take the lead and learn from the parallel case of Singapore, where schools have remained open without causing an outbreak. We also call on HK to ban non-resident arrivals, and look at what other countries must do, or suffer, to get COVID-19 under control.</div>

<h2 class="center">HK Government has no power to suspend school classes<br>
<span class="headlinedate">22 March 2020</span></h2>
<p>The HK Government's Education Bureau (<strong>EB</strong>) yesterday 
<a href="https://www.info.gov.hk/gia/general/202003/22/P2020032200022.htm" target="_blank">announced</a> that "classes of all schools 
will remain suspended until further notice", abandoning its previous 20-Apr-2020 
target date for re-opening.</p>
<p>Note the choice of words "will remain". Is that an opinion, a forecast or an 
order under a statutory power? Stop and think. 
Throughout the coronavirus outbreak, the Government has been behaving, and 
making statements, implying that it has the power to order schools to suspend classes 
but without explicitly claiming that power. 
The media, in their reporting, have without question assumed that the Government 
has that power, and all schools 
have complied with the purported directives.</p>
<p>But who actually has the right to 
decide whether school classes should be suspended or resumed? Is it the 
management of each school, or the Government? Is the EB merely expressing an 
opinion, one which non-Government schools can take into account in their own 
decisions, or does the Government have statutory powers to order class suspensions? 
To remind you of the timeline:</p>
<ul>
	<li>On 25-Jan-2020, the day after schools closed for the Chinese New Year 
	holidays, the EB
	<a href="https://www.info.gov.hk/gia/general/202001/25/P2020012500583.htm" target="_blank">
	announced</a> that "all schools... <strong>will extend</strong> their 
	Chinese New Year holidays to February 16 (i.e. class resumption on February 
	17)".</li>
	<li>On 31-Jan-2020, the EB
	<a href="https://www.info.gov.hk/gia/general/202001/31/P2020013100693.htm" target="_blank">
	announced</a> that "all schools...would resume classes on March 2 [at] the 
	earliest pending further assessment".</li>
	<li>On 13-Feb-2020, the EB
	<a href="https://www.info.gov.hk/gia/general/202002/13/P2020021300359.htm">
	announced</a> that "<span style="font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;
mso-fareast-font-family:PMingLiU;mso-fareast-theme-font:minor-fareast;
mso-bidi-font-family:Calibri;mso-ansi-language:EN-HK;mso-fareast-language:ZH-TW;
mso-bidi-language:AR-SA">the Education Bureau <b>decided</b> today that schools 
	will not resume classes before March 16".</span></li>
	<li class="auto-style1">On 25-Feb-2020, the EB
	<a href="https://www.info.gov.hk/gia/general/202002/25/P2020022500760.htm" target="_blank">
	announced</a> that "<span id="pressrelease" class="fontSize1">the Education 
	Bureau (EDB) <strong>decided</strong> today that classes of all schools will 
	continue to be suspended until end of the schools' Easter holidays, i.e. 
	classes will be resumed on April 20 the earliest. The exact date of class 
	resumption is subject to further assessment.</span></li>
	<li class="auto-style1">On 21-Mar-2020, the announcement of indefinite class 
	suspension above.</li>
</ul>
<p>The wording of those announcements implies that the Government has the power to decide 
and direct the suspension of classes. However, close examination of the
<a href="https://www.hklii.hk/eng/hk/legis/ord/279/" target="_blank">Education 
Ordinance</a> (<strong>EO</strong>) and its
<a href="https://www.hklii.hk/eng/hk/legis/reg/279A/" target="_blank">Education 
Regulations</a> do not reveal any such power. The EO requires schools and their "Managers" to be 
registered, and application processes for both. For those with a "sponsoring 
body" and an "incorporated management committee", their functions are set out in
<a href="https://www.hklii.hk/eng/hk/legis/ord/279/s40AE.html" target="_blank">
Section 40AE</a>, while for an unincorporated management committee, its 
responsibilities are set out in
<a href="https://www.hklii.hk/eng/hk/legis/ord/279/s33.html" target="_blank">
Section 33</a>. It is, implicitly, a matter for the management committee to 
decide on in-school class suspensions. It is their duty and responsibility.</p>
<p>On 15-Feb-2020, we wrote to the EB with this simple question:</p>
<blockquote>
<span style="font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;
mso-fareast-font-family:PMingLiU;mso-fareast-theme-font:minor-fareast;
mso-bidi-font-family:Calibri;mso-ansi-language:EN-HK;mso-fareast-language:ZH-TW;
mso-bidi-language:AR-SA">"For those schools which are operated by entities other 
than the Government, please explain what statutory powers (if any) you are 
invoking in order to decide, require and order that non-Government schools will 
suspend and not resume classes prior to the respective dates announced above.</span>"</blockquote>
<p>Other than an acknowledgement 9 days later, there was silence until a final 
reminder prompted a reply 
on 13-Mar-2020 which failed to answer the question. They have no such powers! Long-time readers of Webb-site should not be surprised by this. 
In 2014, during the "Occupy" movement, the Government purported to order schools 
to suspend classes, and as we reported on 13-Jan-2015 (<a href="schoolorders.asp">Occupy 
school suspension order was invalid</a>), they had no power to do so. The EB 
gave evasive replies to our queries about its authority then, and the Ombudsman 
subsequently upheld our complaint that the EB had not properly answered our 
query.</p>
<p>If the Government wants statutory powers, then it can always propose them to 
the Legislative Council. The UK Government is doing just that with its 329-page
<a href="https://services.parliament.uk/bills/2019-21/coronavirus.html" target="_blank">
Coronavirus 2019-21 Bill</a> introduced on Thursday 19-Mar-2020, which seems 
likely to pass through Parliament on a fast track in the next few days, 
temporarily imposing
<a href="https://www.theguardian.com/commentisfree/2020/mar/19/the-guardian-view-on-the-coronavirus-bill-strengthen-the-sunset-clause" target="_blank">
drastic curbs</a> on civil liberties, including the power to order any premises, 
commercial or not, to close. The HK Government has 
not proposed any such legislation.</p>
<h3>What should schools managers do?</h3>
<p>We urge school managements and their governing bodies across Hong Kong to take note of this. We place 
them on notice that in suspending in-school classes, they are not acting under 
Government <em>directions</em>, nor can they claim to be. At best, each 
school is voluntarily following Government <em>advice</em> when making its own 
decisions. Any decision to continue suspending classes is the school management 
committee's legal responsibility. They can certainly take the Government's views 
into account, but the decision is for the school management committees, and the 
consequences to the education of their students as well as the mental and 
physical health risks should also be taken into account.</p>
<p>Unfortunately, the Government has not provided any evidence-based 
justification for its views on suspensions. It operates as a black box, 
periodically issuing purported directives without any public analysis.</p>
<p>Fortunately, we can take evidence from a parallel control study in another 
densely-populated international Asian city that has kept its schools open. 
Singapore schools have been operating on their normal timetable throughout the 
crisis, with
<a href="https://www.moe.gov.sg/news/press-releases/stepping-up-precautionary-measures-in-schools" target="_blank">
appropriate precautions</a> to reduce the physical interaction of students. 
Overall, Singapore has had a 
<a href="https://www.moh.gov.sg/covid-19" target="_blank">similar number</a> of COVID-19 cases to HK, 
particularly when measured in terms of clusters - for examples, one cluster from a 
dinner function in Singapore produced 47 cases, and 2 churches with 
<a href="https://www.gov.sg/article/how-a-breakthrough-lab-test-expert-contact-tracing-solved-mystery-behind-largest-covid-19-cluster" target="_blank">
connected congregations</a> produced 34 cases. Notably, despite detailed contact tracing, 
there have been no clusters emanating from the Singapore school system. 
Children, who are 
<a href="https://www.straitstimes.com/singapore/health/children-less-likely-to-be-sick-from-covid-19-professor" target="_blank">remarkably resilient</a> to the virus, have not been acting as 
intermediate vectors between adults - not to teachers or parents of their 
schoolfriends. This lack of transmission through the school system also suggests 
that asymptomatic transmission of COVID-19 is very low. HK should learn from the 
Singapore experience.</p>
<p>In Australia, the Government has
<a href="https://www.smh.com.au/politics/federal/why-is-the-government-not-closing-schools-over-covid-19-20200318-p54bcu.html" target="_blank">
reached a similar view</a>, urging schools to stay open, guided by the published 
and reasoned advice of the
<a href="https://www.health.gov.au/committees-and-groups/australian-health-protection-principal-committee-ahppc" target="_blank">
Australian Health Protection Principal Committee</a>. There's far more 
transparency downunder than in HK. The downside risks of closure include that 
having kids at home would keep some parents in critical sectors (including 
healthcare) off work, and that some kids would stay with vulnerable grandparents 
while parents work, so if the kids do turn out to be good at transmission then 
this would expose the grandparents.</p>
<p>Of course, there is the basic fear of being different, or peer pressure. If 
one school opens its doors and then suffers a single case of COVID-19 amongst 
its students and staff, it could be (unfairly) accused of recklessness, even though 
businesses around the city, including restaurants, bars and cinemas, are still 
operating, with occasional closures to sanitise after a case visits them. So schools should co-operate in a joint approach to the 
problem, and agree amongst themselves a re-opening date, and also a sanitisation 
protocol in the event of any case of COVID-19 at the school. The after-Easter date 
of 20-Apr, with sensible, Singapore-style precautions in schools, would be the 
most feasible. Multi-school operators such as the
<a href="https://www.esf.edu.hk/" target="_blank">English Schools Foundation</a> 
or the
<a href="https://www.catholic.edu.hk/en/our-catholic-schools/" target="_blank">
Catholic Diocese</a> could take the lead on this.</p>
<p>The virus may loiter in our community for months or years, but HK needs to 
follow Singapore's example and get back to school.</p>
<p>The Government may have one 
<a href="https://www.info.gov.hk/gia/general/202002/13/P2020021300418.htm" target="_blank">irrelevant factor</a> in mind when continuing 
to advise 
school suspensions, namely the fact that thousands of Chinese children, born in 
HK but neither of whose parents have right of abode here, were commuting daily 
across the border to HK schools and currently cannot do so. That birthright-of-abode 
game was 
<a href="https://www.scmp.com/print/news/hong-kong/health-environment/article/1938268/mainland-women-gatecrashing-hong-kongs-maternity" target="_blank">
nearly ended</a> by then-Chief Executive C Y Leung in 2012, but its legacy lives on 
and is now aged 8 and above. We don't see why the 
interests of non-resident children should stop classes resuming for those who 
live here. Arrangements could be made for non-resident children to participate 
in classes via video-link if schools see fit to do so.</p>
<h3>HK should ban entry to non-residents, for now</h3>
<p>HK and Singapore have seen a surge in COVID-19 cases in the last few days, 
almost entirely due to people returning from more heavily-infected countries 
before a mandatory 14-day home-quarantine on arrivals took effect in HK on 
19-Mar-2020 and Singapore on 21-Mar-2020. The rate of new infections will fade over 
the next few days, as long as our valiant contact-tracing teams keep up their 
stellar work. Singapore has today gone further,
<a href="https://www.moh.gov.sg/news-highlights/details/additional-border-control-measures-to-reduce-further-importation-of-covid-19-cases" target="_blank">
banning entry or transit</a> by non-residents starting Tuesday morning (24-Mar-2020). 
Australia and New Zealand have
<a href="https://www.bbc.com/news/world-australia-51957262" target="_blank">
already done so</a>, to prevent non-residents fleeing chaos at home and 
potentially overloading the healthcare system with inbound cases. HK should 
do likewise.</p>
<h3>Building a safe network of countries</h3>
<p>After about 2-3 more weeks, new cases in sealed countries and territories which have 
been early and successful at contact-tracing and containment, including 
Singapore, New Zealand and HK, will be down to sporadic background levels, with 
the occasional imported-but-quarantined returning resident. At that point, these 
places 
can, on a bilateral basis, re-open air passenger traffic without 
quarantining arrivals from each other, leading to a network of "safe" countries and territories 
while the chaos continues elsewhere. The safe zone may eventually include 
mainland China, which is already reduced to mostly-imported new cases, although some 
caution is needed while we learn whether tens of thousands of discharged cases 
still have reservoirs of virus in their bodies.</p>
<p>Other countries, such as the USA, which left contact-tracing and containment 
too late to be manageable, will have to go through Hubei/Italy-style urban 
lockdowns for a few weeks, at huge economic cost, while they work to find 
households with infections and quarantine them. Only when they get the numbers 
of new infections down to around 1-5 per day per million of population will they 
be able to adopt the tracing and containment approach to terminate the chains of 
transmission. Typically each case has around 20 "close contacts" during their 
symptomatic phase before being identified, so a day of 50 new cases can generate 
around 1,000 close contacts to be located and tested before they can become 
symptomatic and start spreading.</p>
<h3>Herd immunity: through infection, or vaccination?</h3>
<p>Some poorer countries may not have the resources or political ability to 
force a lockdown and will just settle for letting the virus run through their 
population. Poorer countries typically have younger populations, so the 
inadequacies of their healthcare maybe offset by more resilient subjects, but 
they will lose perhaps 1-2% of their people, mostly elderly or with pre-existing 
conditions, until the remainder have 
<a href="https://en.wikipedia.org/wiki/Herd_immunity" target="_blank">herd immunity</a>, which might be achievable 
with a 60-70% infection rate.</p>
<p>Amazingly, the UK (not yet a poor country)
<a href="https://www.vox.com/world/2020/3/15/21180414/coronavirus-uk-herd-immunity-vallance-johnson" target="_blank">
briefly flirted</a> with the objective of developing herd immunity through 
coronavirus infection, before swiftly being reminded by the public that they would rather 
lock down, suppress the virus and wait for a vaccine than kill half a million grannies and overwhelm 
the health system. Yes, old people are (on average) economically unproductive 
and represent pension liabilities and a future burden on the healthcare system, 
but no open society can deliberately pursue such a policy.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1849039">CATHOLIC DIOCESE OF HONG KONG (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=46883">ENGLISH SCHOOLS FOUNDATION (THE)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=19">Education</a></li>
				
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
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