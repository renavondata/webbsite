
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

<script type="text/javascript">document.title="A sordid electoral affair";</script>

	<div class="summary">The HK Government, via its Electoral Affairs Commission, has tarnished HK's reputation for free and fair geographic elections for half of its Legislative Council, just to exclude a few candidates who were previously on the political fringe. There is nothing inconsistent between pledging to uphold the constitution and seeking to change it, and the Government now risks the courts overturning the election results. We also explain the fragmentation caused by HK's version of the party list system which has now reached epic proportions.</div>

<h2 class="center">A sordid electoral affair<br>
<span class="headlinedate">17 August 2016</span></h2>

<p>Something must be said about the Hong Kong Government's idiotic, sordid approach to 
the Legislative Council elections, which is undermining what little credibility 
the rigged assembly had. Until now, whatever you think about the small circle 
corporate elections (or uncontested nominations) for many of the so-called functional constituencies, you 
might at least have believed that in the 5 Geographic constituencies which elect 
35 seats, the process for nomination was fair and open. No longer.</p>
<p>In addition to the standard
<a href="http://www.eac.gov.hk/pdf/legco/2016lc/reo-n-gc-2016lc.pdf" target="_blank">
nomination form</a>, which requires candidates (nominated by 100-200 electors) 
to declare that they will "uphold the
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/index.html" target="_blank">
Basic Law</a> and pledge allegiance to the Hong Kong Special Administrative 
Region", this time around, the <a href="../dbpub/orgdata.asp?p=27546">Electoral Affairs Commission</a> (<strong>EAC</strong>) 
has devised a new form, noting in a
<a href="http://www.info.gov.hk/gia/general/201607/14/P2016071400441.htm" target="_blank">
press statement</a> that "recently there has been public opinion concerning 
whether the candidates do fully understand the Basic Law". Apparently, in Hong 
Kong, procedures are now devised on the basis of "public opinion" rather than 
legal requirements.</p>
<p>The EAC (the members of which are appointed by the Chief Executive) has 
singled out three Articles of the Basic Law which it presumably believes are 
particularly misunderstood, although they seem perfectly clear to us, and the 
new 
<a href="http://www.eac.gov.hk/pdf/legco/2016lc/reo-n-confirmation-2016lc.pdf" target="_blank">confirmation form</a> requires the proposed candidate to confirm as follows:</p>
<blockquote>"I understand that to uphold the Basic Law means to uphold the 
Basic Law" (with you so far) "including the following provisions:</blockquote>
<blockquote><strong>Article 1</strong></blockquote>
<blockquote>The Hong Kong Special Administrative Region is an inalienable part 
of the People's Republic of China.</blockquote>
<blockquote><strong>Article 12</strong></blockquote>
<blockquote>The Hong Kong Special Administrative Region shall be a local 
administrative region of the People's Republic of China, which shall enjoy a 
high degree of autonomy and come directly under the Central People's Government.</blockquote>
<blockquote><strong>Article 159(4)</strong></blockquote>
<blockquote>No amendment to this Law shall contravene the established basic 
policies of the People's Republic of China regarding Hong Kong."</blockquote>
<p>Now this confirmation really adds nothing, because when you pledge to uphold the 
Basic Law, that includes all of its provisions, and indeed, the first thing an 
elected legislator must do after sobering up from celebrations, under
<a href="http://www.hklii.hk/eng/hk/legis/ord/11/s19.html" target="_blank">Section 19</a> of the 
Oaths and Declarations Ordinance, is take the Legislative Council Oath in
<a href="http://www.hklii.hk/eng/hk/legis/ord/11/sch2.html" target="_blank">
Schedule 2</a> of that Ordinance, which reads:</p>
<blockquote>"I swear that, being a member of the Legislative Council of the Hong 
Kong Special Administrative Region of the People's Republic of China, I will 
uphold the Basic Law of the Hong Kong Special Administrative Region of the 
People's Republic of China, bear allegiance to the Hong Kong Special 
Administrative Region of the People's Republic of China and serve the Hong Kong 
Special Administrative Region conscientiously, dutifully, in full accordance 
with the law, honestly and with integrity."</blockquote>
<p>That's all fine as far as it goes, but here's where the Government has gone 
too far: via the Returning Officers (all of whom are full-time civil servants, 
mostly District Officers,
<a href="http://www.gld.gov.hk/egazette/pdf/20162023/egn201620233214.pdf" target="_blank">
appointed</a> by the EAC) the Government has been vetting the proposed candidates to determine 
whether, in their view, the candidates are <em>bona fide </em>(in good faith) in 
signing the declaration in the nomination form.</p>
<p>First of all, that's not a function of returning officers. If anyone is 
alleged to have made a false statement in an election-related document (for 
example, by claiming a bogus doctorate), that is 
a matter for the police to investigate, the Department of Justice to prosecute 
and the courts to determine after a fair trial. The duties of the Returning 
Officer are stipulated in the
<a href="http://www.hklii.hk/eng/hk/legis/reg/541D/" target="_blank">Electoral 
Affairs Commission (Electoral Procedure) (Legislative Council) Regulation</a>, 
particularly
<a href="http://www.hklii.hk/eng/hk/legis/reg/541D/s16.html" target="_blank">
Section 16</a>, and they don't include second-guessing the candidate's intent or 
polygraphing them.</p>
<p>Second, even if you think that Returning Officers <em>can </em>make such a 
determination, what do they mean by <em>bona fide </em>in this context, and by what criteria do they determine this? They are 
conducting e-mail interviews and trawling through past public statements by, or attributed to, the candidates to 
determine whether or not the candidate supports the notion of HK sovereign independence 
(or some higher degree of autonomy than HK enjoys). 
If the Government (via the ROs) determines that the candidate does not agree with the said 
Articles of the Basic Law, then the declaration is deemed by the RO to be not
<em>bona fide </em>and the candidate is disqualified, even if they have 
signed both forms. One such example is
<a href="https://www.hongkongfp.com/2016/08/02/edward-leung-not-genuinely-switched-pro-independence-stance-says-election-official/" target="_blank">
the rejection</a> of Edward Leung Tin Kei, who ran in the previous New 
Territories East by-election earlier this year and
<a href="http://www.elections.gov.hk/legco2016by/eng/results.html?1471076001885" target="_blank">
received 15.4%</a> of the Vote.</p>
<h3>Upholding the law does not mean agreeing with it</h3>
<p>Here's the problem. Any person can disagree with the contents of a law, 
including a constitutional law, while at the same time and in good faith pledging to uphold it as 
long as it <em>is</em> the law. Indeed, upholding the law is fundamental to the rule of 
law. <strong>There is nothing inconsistent between bona fide pledging to uphold a 
constitutional law and seeking to change it, however outlandish those proposed changes 
may be.</strong> If this was not true, then no constitution on Earth would ever 
be amended, because anyone seeking an elected office would have to pledge (on 
pain of criminal prosecution for lying) that they don't want to change the 
constitution. Although HK legislators cannot introduce a bill to amend the Basic 
Law, under
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_8.html" target="_blank">
Article 159</a>, any amendment requires a two-thirds majority of all LegCo 
members. So if "upholding" the Basic Law means agreeing with all of its contents 
then no proposed amendment would ever obtain that approval.</p>
<p>You may campaign to abolish constitutional freedom of speech or religion, which are embedded in the Basic Law, but in the meantime, you can and 
must, if you run for elected office, pledge to uphold it. You may seek to raise or lower the 
constitutional minimum age (40) for becoming Chief 
Executive, but again, you uphold the current limit while it stands. Members of 
the UK parliament have sought independence for Scotland, something which would 
repeal the 
<a href="https://en.wikipedia.org/wiki/Acts_of_Union_1707" target="_blank">Acts of Union 1707</a>, 
but there is nothing illegal about seeking that while at the same time upholding 
and abiding by the current law, otherwise Scotland would have very few MPs in 
Westminster - all the Scottish National Party members would be disqualified.</p>
<p>So even if the Returning Officers can make a determination that a declaration 
is not <em>bona fide </em>(and we say that is not their role), and even if a 
candidate is calling for constitutional change, that doesn't mean that he won't 
honour his declaration to uphold the Basic Law in its current and future forms.</p>
<p>By imposing this filtration system on the views of candidates, the HK 
Government via its EAC is leaving itself wide open to judicial review, the result of which 
could be the overturning of the election of all the legislators in each 
constituency where someone has been denied a valid nomination. Indeed, it may go 
further than that, because it is arguable that potential candidates have been 
deterred by this new vetting mechanism from coming forward, and that therefore 
the elections (or uncontested nominations) in all of the constituencies are 
tainted, whether or not a candidate for that constituency was rejected.</p>
<p>Perhaps the Government knows this, and is hoping to argue that when the dust 
has settled, a sympathetic judge will rule against the filtering but allow them 
to get away with it until the next elections in 2020, rather than conduct a 
re-run, in which case it will have succeeded in excluding certain people from 
LegCo. We hope not, because it cannot be said that a challenge to this procedure 
was a surprise, as putative candidates have already
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=105095&amp;currpage=T" target="_blank">
applied</a> for a judicial review and been told to wait.</p>
<h3>Stoking the flames</h3>
<p>The correct political strategy for dealing with ideas that most of your 
population would find unworkable is to ignore them, but the Government has 
chosen to stoke the fire, starting with the Chief Executive's policy address on 
14-Jan-2015 when he <a href="http://www.policyaddress.gov.hk/2015/eng/p8.html">
poured oil</a> on a Feb-2014 HKU student magazine article and a 2013 book 
advocating Hong Kong's self-determination which until then had garnered very 
little attention. Now they have become recommended reading, if you can find a 
copy.&nbsp; </p>
<p>The attention on independence advocates has been further increased
<a href="http://www.scmp.com/news/hong-kong/law-crime/article/1934950/hong-kong-divided-wang-zhenmins-treason-remarks" target="_blank">
by claims</a> from Beijing's officials in HK that even discussing independence 
on a "large-scale" would be
<a href="http://www.hklii.hk/eng/hk/legis/ord/200/s10.html" target="_blank">
sedition</a> under the Crimes Ordinance. The problem with that claim is that the 
definition of "seditious intent" in
<a href="http://www.hklii.hk/eng/hk/legis/ord/200/s9.html" target="_blank">
Section 9</a> excludes an intent "to persuade Her Majesty's subjects or 
inhabitants of Hong Kong to attempt to procure by lawful means the alteration of 
any matter in Hong Kong as by law established" (for "Her Majesty", read "The 
PRC"). So calls for constitutional reform by lawful means are explicitly 
excluded from seditious intent. There is nothing illegal about them, futile 
though they may be.</p>
<p>And if that wasn't enough, the HK Government (and at all times, we must 
assume the PRC Government's wishes accord with it) has, via the Companies 
Registry,
<a href="http://www.scmp.com/news/hong-kong/politics/article/1999067/undue-caution-joshua-wong-blasts-hong-kong-officials-over" target="_blank">
been refusing</a> to register companies which it thinks may represent political 
parties which call for independence, while the Post Office has been filtering 
election materials for their mentions of "civil referendum" or "self 
determination". The Government has, through its own heavy-handedness, boosted 
popular sympathy for what was previously a small minority on the fringes of the 
political map and given them more publicity than they could have dreamed of.</p>
<p>This publicity and sympathy, together with HK's peculiar electoral 
system, is why, if the candidates had been allowed to run, they would probably 
have secured several seats in LegCo. Ironically, by banning them, the Government 
has boosted the chances of the traditional pan-democrats who will now face a bit 
less fragmentation of the vote.</p>
<h3>The electoral maths</h3>
<p>Perhaps Beijing is now coming to regret the system of "proportional 
representation" which it introduced after 1997, abandoning the previous 
first-past-the-post system with 1 seat per constituency. They introduced this 
party list system to guard against the pro-democracy parties sweeping all the 
seats. Instead we have 5 jumbo constituencies, where the two largest (New 
Territories East and New Territories West) each have 9 seats, so mathematically, 
one only needs 10% of the votes plus 1 vote (the Droop quota) to be certain of 
election, and there is a good chance of election with substantially less than 
that. As we explained in our 2004 article <a href="PRreform.asp">One 
Vote, Wrong System</a>, if there are <strong>L</strong> lists of candidates for
<strong>S</strong> seats, and <strong>V</strong> votes are cast, then it is 
theoretically possible to be elected with only <strong>V/LS+1</strong> votes.</p>
<p>The Government knows this. It's their system. They wanted it. Two other 
aspects lead to fragmentation of the vote, particularly for the pan-democrats 
who are less tightly-coordinated than the pro-government camp. First, the system 
uses a Hare Quota (V/S) rather than a Droop Quota (V/(S+1)) to allocate seats, 
so split lists are more efficient. For example, in a 5-seat constituency, a list 
needs 36% of the votes to guarantee 2 seats, or 18% per seat, whereas 2 separate lists will 
certainly succeed if they each get 16.67%. Second, votes are not transferable 
(electors must choose 1 list only and cannot rank lists in order of preference), 
so single-member lists with low support have a chance of election rather than 
seeing their votes transferred to more popular lists of candidates.</p>
<p>The Single Transferable Vote (STV) system is in fact
<a href="http://www.eac.gov.hk/pdf/legco/2016lc_guide/en/appendix_c.pdf" target="_blank">
used in 4</a> of the so-called Functional Constituencies (Agriculture &amp; 
Fisheries, Heung Yee Kuk, Insurance and Transport), although it only comes into 
play if there are at least 3 candidates, which has only happened twice in the 
SAR era, both times in the insurance constituency (1998 and
<a href="http://www.info.gov.hk/gia/general/200809/08/P200809080114.htm" target="_blank">
2008</a>). It
<a href="http://www.elections.gov.hk/legco2016/pdf/FC_ALLO_Valid_e.pdf" target="_blank">
won't happen</a> in 2016, with 2 of them uncontested and the others having 2 
candidates each.</p>
<p>In 2016, the fragmentation in the geographic constituencies has reached epic proportions: in New 
Territories East,
<a href="http://www.elections.gov.hk/legco2016/eng/introd_gc_nte.html" target="_blank">
there are 22 lists</a> competing for 9 seats, and across the SAR there are 84 
lists for 35 seats, compared with 67 lists for 35 seats in 2012, 53 lists for 30 
seats in 2008 and 35 lists for 30 seats in 2004.</p>
<p>In NT East in 2012, there were 19 lists and the lowest-scoring 
successful candidate, Gary Fan Kwok Wai, was elected with 6.16% of the votes, while the 
highest-scoring was Leung Kwok Hung with 10.39% of the votes, still less than 
the Hare Quota of 11.11%. This year's lottery should produce some interesting 
results.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=27546">ELECTORAL AFFAIRS COMMISSION</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2620455">Leung, Edward Tin Kei</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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