
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

<script type="text/javascript">document.title="E. Quat's degrees don't equate";</script>

	<div class="summary">Legislator "Dr" Elizabeth Quat has not one but three "degrees", including her doctorate, from a defunct degree mill once run out of a bungalow in Hilo, Hawaii. We also look into the characters behind it.</div>

<h2 class="center">E. Quat's degrees don't equate<br>
<span class="headlinedate">11 April 2014</span></h2>
<p>It's time to take down another legislator for overstating their 
qualifications. Readers may recall that in 2005, Webb-site asked LegCo's Committee on 
Member's Interests to investigate the degree-mill qualifications of &quot;Dr&quot;
<a href="../dbpub/natarts.asp?p=8040">Philip Wong Yu-hong</a>. They 
<a href="http://www.legco.gov.hk/yr04-05/english/cmi/minutes/cm050419.pdf" target="_blank">decided</a> that 
the matter was outside their jurisdiction, and that the Advisory Guidelines on 
Matters of Ethics are unenforceable. However, as a result of our complaint, the 
Committee did eventually amend the guidelines in 2005, so that the
<a href="http://www.legco.gov.hk/general/english/cmi/advisory_1216.pdf" target="_blank">
current version</a> states:</p>
<blockquote>&quot;A Member should ensure that the personal information 
(e.g. qualifications) he provides to the Council (including the Legislative 
Council Secretariat) is correct and true.&quot;</blockquote>
<p>Now, fast forward to 2014, and &quot;Dr&quot; The Honourable
<a href="../dbpub/positions.asp?p=28771">Elizabeth Quat 
Pui Fan</a>, JP of the <a href="../dbpub/articles.asp?p=4689">Democratic 
Alliance for the Betterment and Progress of HK</a>, claims on her
<a href="http://www.legco.gov.hk/general/english/members/yr12-16/qe.htm" target="_blank">LegCo 
biography page</a> to be a &quot;Doctor of Philosophy (Management)&quot;. In biographies 
elsewhere on the internet, in her election biography for the Chief Executive 
Election Committee, she also
<a href="http://www.it20.org/bio_eng/elizabeth_quat_5.htm" target="_blank">claimed</a> a 
&quot;BBA and MBA in Marketing&quot;. But nowhere 
could we find a statement of where these qualifications were obtained. So 
Webb-site wrote to her office, and her assistant replied that the degrees were:</p>
<ul>
	<li>1993 Bachelor in Business Administration (Greenwich University, Hawaii)</li>
	<li>1994 Master of Business Administration (Greenwich University, Hawaii)</li>
	<li>1996 Doctor of Philosophy, Management (Greenwich University, Hawaii)</li>
</ul>
<p>Ah yes, Greenwich University, Hawaii. We can tell you a thing or two about 
that. In no way is it related to the legitimate
<a href="http://www.gre.ac.uk/" target="_blank">University of Greenwich</a> 
(formerly Thames Polytechnic) in England. Greenwich University, Inc. (<strong>GUI</strong>) 
was
<a href="http://hbe.ehawaii.gov/documents/business.pdf?fileNumber=78341D1" target="_blank">
incorporated</a> in Hawaii on 2-Feb-1990. It never received any 
accreditation from an accreditation body recognised by the US Department of 
Education. That makes it a degree mill by our measure. Its officers included Marjorie Fishman, Pauline Butler and one &quot;John 
Walsh of Brannagh&quot; (<strong>John Walsh</strong>). It operated out of
<a href="https://www.google.com/maps/@19.721354,-155.089682,3a,75y,46.2h,90t/data=!3m4!1e1!3m2!1slf4_WnuQry1w1lnyY5N6Xg!2e0" target="_blank">
this bungalow</a> at 103 Kapiolani Street, Hilo, Hawaii, then home of Douglass L 
Capogrossi, President of Greenwich University (yes, that's Douglass with two esses).</p>
<a href="https://www.youtube.com/watch?v=T6fVDAjs9f0" target="_blank">
<img class="center" alt="Greenwich University, Hawaii" src="../images/GreenwichU.jpg"></a>
<p class="center"><strong>Greenwich University, Hawaii</strong></p>
<p>Quite pretty, we are sure you will agree - but it doesn't look like the head 
office of a university, distance-learning or otherwise. Another entity with the same officers at the same address was United 
Pacific Corporation (<strong>UPC</strong>),
<a href="http://hbe.ehawaii.gov/documents/business.pdf?fileNumber=79144D1" target="_blank">
incorporated</a> on 2-Apr-1990, 2 months after GUI. UPC had multiple trade names 
including United Pacific University, Sterling School of Business, Pacific 
International University, Greenwich University Centre for European Studies (from 
22-Oct-1991) and &quot;Greenwich University&quot; (from 22-Jul-2003), all of which have 
expired.&nbsp; The last filings for both GUI and UPC were in 2003 and they were 
involuntarily dissolved after 3 years of delinquency.</p>
<p>By the way, on 4-Mar-2014 we asked Ms Quat's office for the title of, and a 
copy of, her doctoral thesis, or where one could be found. Nothing has been 
forthcoming.</p>
<h3>Norfolk Island</h3>
<p>After Ms Quat obtained her &quot;degrees&quot; from Hawaii, in 1998 Greenwich 
University moved to
<a href="http://en.wikipedia.org/wiki/Norfolk_Island" target="_blank">Norfolk Island</a>, an 
external territory in the Commonwealth of Australia, which since 1979 had been allowed a 
higher degree of 
autonomy, so to speak. In the 2011 census, the island had a population of 2302 
people, of whom 78% were residents. Many can trace their heritage to
<a href="http://en.wikipedia.org/wiki/Mutiny_on_the_Bounty_(history)" target="_blank">
mutineers of The Bounty</a>, whose descendants settled from Pitcairn to Norfolk 
Island in 1856. Prior to that it had been a penal colony.</p>
<p>According to his own biographies on
<a href="http://www.linkedin.com/pub/sir-john-walsh-of-brannagh/b/b41/213" target="_blank">
Linked In</a> and the
<a href="http://www.vicbar.com.au/profile?1807" target="_blank">Victorian Bar</a> 
of Australia, John Walsh has been &quot;Chancellor Emeritus&quot; of Greenwich University 
since 1989 and President of Norfolk Island Bar Association since 1994. We have 
been unable to locate any other members of that association, nor a web site for 
it. John Walsh has also been appointed to various Norfolk Island positions, 
including as a
<a href="http://www.info.gov.nf/gazette/2003/2003_08_03_GazetteNo36.doc" target="_blank">
senior member</a> of the Administrative Review Tribunal and as
<a href="http://www.info.gov.nf/gazette/2003/2003_07_04_GazetteNo31.doc" target="_blank">
deputy chairman</a> of the <a href="http://www.gaming.gov.nf/" target="_blank">Gaming Authority</a>. In 2004 elections he was
<a href="http://www.info.gov.nf/gazette/2004/2004_10_01_GazetteNo48.doc" target="_blank">
nominated</a> and
<a href="http://www.info.gov.nf/gazette/2004/2004_10_22_GazetteNo51.doc" target="_blank">
ran unsuccessfully</a> for the 9-member
<a href="http://en.wikipedia.org/wiki/Norfolk_Legislative_Assembly" target="_blank">Norfolk 
Legislative Assembly</a>. He also
<a href="http://www.humanitad.org/team/146/" target="_blank">calls himself</a> 
the &quot;Duke de Ronceray Sir John Francis Patrick Cyril Colclough Walsh of Brannagh&quot; 
and &quot;Marquis de Segre, Count de Bauge et de Fontevrault, Viscount de Fontevrault, 
Baron de Beaufort&quot;. Honestly, we don't make this stuff up.</p>
<p>As part of the migration from Hawaii to Norfolk Island, a company, Greenwich 
University Pty Ltd (<strong>GUNI</strong>), was registered under the Norfolk 
Island Companies Act. GUNI persuaded the Legislative Assembly to 
pass the 2-page
<a href="../codocs/Education(GreenwichUniversity)Regulations1998.pdf" target="_blank">Education (Greenwich University) Regulations 1998</a> 
(<strong>GU Regulations</strong>), and these were 
quickly upgraded to the nearly-identical
<a href="../codocs/GreenwichUniversityAct1998.pdf" target="_blank">Greenwich University Act 1998</a> 
(<strong>GU Act</strong>), which was assented to by the island's then 
Administrator, Anthony John Messner, on 9-Dec-1998 pursuant to Section 21 of the
<a href="http://www.austlii.edu.au/au/legis/cth/consol_act/nia1979158/" target="_blank">
Norfolk Island Act 1979</a>. Prior to that, the Hansard records only the 
briefest
<a href="http://www.info.gov.nf/hansard/8thAssembly%205%20May%201997/1998_09_16.doc" target="_blank">
discussion</a>, in the assembly on 16-Sep-1998. </p>
<p>There was no academic accreditation process for this enactment, and the 
external <a href="http://www.regional.gov.au/territories/" target="_blank">
Territories</a> of Australia, including Norfolk Island, were not subject to 
Australian federal education policy, a loophole that was not rectified until 
2002. So GUNI never appeared in the
<a href="http://www.aqf.edu.au/" target="_blank">Australian Qualifications 
Framework</a> register and as such, did not have Australian academic 
accreditation. On 2-Dec-2002, the Federal Government of Australia enacted the
<a href="http://www.comlaw.gov.au/Details/C2004A01049" target="_blank">Higher 
Education Legislation Amendment Act (No. 3) 2002</a>, to regulate the use of the 
title &quot;university&quot; and the delivery of higher education in the external 
Territories. This overrode the GU Act, which no longer has any effect, although 
it remains on the Norfolk Island statute book. As a result, rather than seek to 
qualify, GUNI shut down.</p>
<p>The Internet Archive contains a copy of the GUNI web site at
<a href="http://web.archive.org/web/19990424163227/http://www.greenwich.edu/" target="_blank">
greenwich.edu</a> on 24-Apr-1999. According to that, &quot;Chancellor&quot; John Walsh 
states that his Juris Doctor and PhD in International Law were earned at
<a href="http://en.wikipedia.org/wiki/Columbia_Pacific_University" target="_blank">
Columbia Pacific University</a>, another defunct entity that operated without 
USDE-recognised accreditation.</p>
<p>The GU Regulations and GU Act both mention an earlier entity, the 
International Institute for Advanced Studies (<strong>IIAS</strong>). This is a 
non-profit corporation
<a href="https://www.sos.mo.gov/BusinessEntity/soskb/Corp.asp?650085" target="_blank">
incorporated</a> in Missouri, USA on 26-Jul-1973 and known until 17-Nov-1978 as 
&quot;Occidental University of St Louis&quot;. The GU Regulations and GU Act provided for 
GUNI to &quot;undertake on Norfolk Island the administrative and academic functions 
of&quot; GUI and IIAS.</p>
<p>The Texas Higher Education Coordinating Board (CB) has a
<a href="http://www.thecb.state.tx.us/index.cfm?objectid=EF4C3C3B-EB44-4381-6673F760B3946FBB" target="_blank">
list of institutions whose degrees are illegal to use in Texas</a>. Against 
&quot;Greenwich University&quot; of Hawaii, Norfolk Island and California it notes &quot;No 
accreditation from a CB recognized accreditor. Closed by Australian Government.&quot;</p>
<h3>Akamai University</h3>
<p>And what about Douglass Capogrossi? He is now President of another 
institution,
<a href="http://www.akamaiuniversity.us/aboutus.html" target="_blank">Akamai 
University</a>,
<a href="http://hbe.ehawaii.gov/documents/business.pdf?fileNumber=200648D2" target="_blank">
incorporated</a> in Hawaii on 30-May-2002, just months after GUNI shut down, 
with galactic headquarters at 187 Kino'ole Street, Hilo (<a href="https://www.google.com/maps/place/187+Kinoole+St/@19.723842,-155.088227,3a,90y,71h,90t/data=!3m4!1e1!3m2!1sDIaGfbhAKZ8k5BjnetKRQQ!2e0!4m2!3m1!1s0x79524b5640cd5483:0x9359a97dc0540eb3!6m1!1e1" target="_blank">see 
it here</a>). Akamai University is
<a href="http://www.akamaiuniversity.us/accreditation.html" target="_blank">not 
accredited</a> by a body recognised by the US Department of Education. And
<a href="https://www.youtube.com/watch?v=xpIGubt5e4U" target="_blank">here they 
are on YouTube</a> in Penang, Malaysia, at the 2013 &quot;Commencement Ceremony&quot;. You 
can't keep a good man down.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4689">DEMOCRATIC ALLIANCE FOR THE BETTERMENT AND PROGRESS OF HONG KONG</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2215860">GREENWICH UNIVERSITY, INC.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2215859">INTERNATIONAL INSTITUTE FOR ADVANCED STUDIES</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=28771">Quat, Elizabeth Pui Fan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=33133336">Walsh of Brannagh, John</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=124">Degrees</a></li>
				
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