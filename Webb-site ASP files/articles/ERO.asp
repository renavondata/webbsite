
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

<script type="text/javascript">document.title="Making laws via the ERO may be unconstitutional";</script>

	<div class="summary">The Basic Law establishes a clear separation of powers between executive and legislative branches. A law that allows the Chief Executive to make laws appears unconstitutional. We expect a judicial review if she tries it. Even if she succeeds, draconian laws don't address the root problem: a deficit in democratic accountability for both the CE and LegCo. We again propose local legislation to scrap corporate voting and democratise the system.</div>

<h2 class="center">Making laws via the ERO may be unconstitutional<br>
<span class="headlinedate">4 October 2019</span></h2>
<p>In our analysis "<a href="outcome.asp">The most likely outcome for 
HK</a>" (3-Sep-2019), we noted that one of the 3 methods that might be employed 
in an authoritarian crackdown is to invoke the
<a href="http://www.hklii.hk/eng/hk/legis/ord/241/s2.html" target="_blank">
Emergency Regulations Ordinance</a> (<strong>ERO</strong>), enacted in 1922 and 
not used since 1967, which purportedly allows the Chief Executive of HK (<strong>CE</strong>) 
to rule by decree, passing laws without the Legislative Council (<strong>LegCo</strong>).</p>
<p>We have now reached the beginning of that process,
<a href="https://www.scmp.com/print/news/hong-kong/politics/article/3031503/anti-mask-law-targeting-hong-kong-protesters-could-come" target="_blank">
with news</a> that the CE will today consult her Executive Council on a plan to 
invoke the ERO to pass an anti-mask law. We will set aside for now the question 
of whether an anti-mask law itself would be constitutional even if passed by 
LegCo, given the impact on freedom of speech and assembly of those involved and 
their legitimate wish to avoid retaliation by employers or businesses or to 
travel freely to the mainland after peacefully expressing their views.</p>
<p>There is a much bigger issue at stake. The ERO has never been subject 
to a judicial review, and since 1-Jul-1997, it has been subject, like all laws, 
to our mini-constitution, the
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/images/basiclaw_full_text_en.pdf" target="_blank">
Basic Law</a> (<strong>BL</strong>). The BL establishes a clear separation of 
powers between the executive and legislative branches of Government. The CE can 
propose laws, but the power to enact them is reserved for LegCo. The CE's power 
to propose laws is in BL Article 62(5):</p>
<blockquote>"The Government of the Hong Kong Special Administrative Region shall 
exercise the following powers and functions:<br>...<br>(5) To draft and 
introduce bills, motions and subordinate legislation;"</blockquote>
<p>While LegCo's power to pass laws is in BL Article 73(1):</p>
<blockquote>"The Legislative Council of the Hong Kong Special Administrative 
Region shall exercise the following powers and functions:<br>(1) To enact, 
amend or repeal laws in accordance with the provisions of this Law and legal 
procedures;"</blockquote>
<p>But section 2(g) of the ERO purports to bypass LegCo as follows:</p>
<blockquote>"such regulations may provide for<br>...<br>(g) amending any 
enactment, suspending the operation of any enactment and applying any enactment 
with or without modification;"</blockquote>
<p>The ERO is so broad, allowing CE to "make any regulations whatsoever which he 
may consider desirable in the public interest", that it amounts to a transfer of 
powers which the BL does not contemplate. As such, the ERO may be void 
because it is unconstitutional: no local law can breach the BL. We hope 
that if the CE seeks to make laws under ERO, then the HK Bar Association and 
others will urgently launch a judicial review (<strong>JR</strong>) and in the 
meantime seek an injunction to suspend the purported law until the JR can be 
held. The courts will normally grant an injunction if it can be shown that the 
action involved would cause irreperable harm that cannot be redressed with 
monetary damages. The deprivation of liberty for those arrested under an 
unconstitutional law would probably qualify as irreperable harm.</p>
<p>The Government would likely argue that "regulations" made under the ERO are 
"subsidiary legislation" that may eventually be vetted and overturned in LegCo. 
It said so in paragraph 43 of a
<a href="../codocs/ICCPR-HK19991101.pdf" target="_blank">1999 submission</a> to 
the United National Human Rights Committee. However, that doesn't address 
whether the ERO is unconstitutional because of its sweeping legislative powers. 
It completely reverses the due process of consultation, deliberation and passage 
of laws.</p>
<p>HK has plenty of laws that do allow the CE to make specific regulations 
subject to LegCo vetting - for example, to change the (anti-competitive) caps on 
the number of licensed taxis or private hire cars. These are in effect powers 
delegated by LegCo. But a general law that allows the CE to make any law 
disguised as a regulation on the grounds of "emergency or public danger" goes 
far beyond this.</p>
<p>Incidentally, on the possibility of anti-mask legislation, on 29-Mar-2017 the 
Government
<a href="https://www.info.gov.hk/gia/general/201703/29/P2017032900644.htm" target="_blank">
told LegCo</a>:</p>
<blockquote>"For the Government to enact any new legislation or amend existing 
legislation, it must prudently look into and carefully consider the various 
potential impacts that the law may bring. We note that some countries in Europe 
and America have enacted similar legislation. We are now exploring the issue, 
including the specific provisions of relevant law overseas, their legislative 
background, scope of regulation, accepted exceptions, previous decided cases, 
verdicts and sentencing, and how they strike a balance between the legislative 
intent and issues like personal privacy and other rights. As the issues involved 
are complex with far-reaching impact, the exploration is still ongoing. We will 
continue to listen to the views of various sectors of the community on this 
matter."</blockquote>
<h3>The beginning of a crackdown</h3>
<p>If the ERO is invoked and not challenged, or if a JR fails, then this may be the 
beginning of a draconian crackdown. The ERO could be used again to legalise 
internment for long periods rather than the current catch-and-bail pending 
trial, which is based on the presumption of innocence until proven guilty. It 
could also be used to block key parts of the internet, including social media 
and communication apps, or to censor the media generally and prohibit reporting 
of protests.</p>
<h3>Fix the real problem</h3>
<p>An anti-mask law does nothing to address the "democratic deficit" at the root 
of the problem - the fact 
that corporate voting entrenches the tycoons as proxies for Beijing control and 
requires the HKSAR Government to place the interests of Beijing and the tycoons 
ahead of the public interest. We
<a href="https://webb-site.com/articles/outcome.asp#CV">again urge the HKSAR 
Government</a> to address this by tabling legislation to abolish corporate 
voting and replacing it with workers' votes in each of the relevant sub-sectors 
and constituencies, with Election Committee seats allocated to each sub-sector 
proportionate to the number of electors, thereby democratising HK via local 
legislation, without disturbing the BL and without needing the explicit consent 
of Beijing.</p>
<p>The 1200-member Election Committee would then function like the US 
Electoral College that elects the President, and the "Functional Constituencies" 
in LegCo would at least become functional with broader electorates, something 
which various professions including doctors, accountants, teachers, lawyers and 
engineers already enjoy. The tycoons, in our view, will accept this legislative 
change if it avoids a crackdown that would do more harm to their rent-seeking 
economic interests. They will still have economic power, just not direct 
political power.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
				<li><a href="/dbpub/subject.asp?c=135">Emergency Regulations Ordinance</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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