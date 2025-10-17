
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

<script type="text/javascript">document.title="Avoiding the Logjam";</script>

	<div class="summary">Hong Kong is gradually being submerged in a landslide of printed IPO prospectuses, some running to almost 1,000 pages in bilingual form. Webb-site.com proposes a solution which can be quickly implemented and avoids a long wait for enabling legislation.</div>

<h2 class="center">Avoiding the Logjam<br>
<span class="headlinedate">26 September 2006</span></h2>
<p>It's autumn, and the leaves on the trees are gradually turning brown. Or at 
least, they would be, if the trees hadn't already been chopped down, pulped and 
turned into tonnes of prospectuses which are now clogging our landfills.</p>

<p>Never in the field of investing has so much paper been handed out to so many 
people who read so little of it. Now you might wonder why banks, which are 
generally pretty rational, do this. The answer can be found in the
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&Start=32.1.1&Count=700&Expand=32.1">
Hong Kong Companies Ordinance</a> (<b>CO</b>) which requires, in
<a href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/d0dd6821863ec1db48256f5f000c516b">
s</a><a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/d0dd6821863ec1db48256f5f000c516b">ection 
38(3)</a> (in the case of companies incorporated in HK) and
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/966bd9ff2c32380448256f5f000c518c">
section 342(3)</a> (for companies incorporated outside HK), that each 
application form issued in HK must be accompanied by a prospectus. You can have 
more than one form, of course, but you must be given a prospectus.</p>

<p>There are good reasons for providing a prospectus with each form - the 
idea is that it will encourage people to actually read about what they are about 
to sink their money into, rather than just blindly following tycoons (some of 
whom may be in hock to the bank that is floating) or blindly buying a stock 
because everyone else is. However, this law was written before we had the 
internet, and there was no practical alternative to printing prospectuses. In 
the 21st century, all prospectuses are available online, and most people have 
access to the internet at their home, office or library. So the information can 
be provided electronically.</p>
<div class="centerpicbox" style="max-width:703px">
	<img class="center" alt="" src="../images/prospectusjam.jpg">
	<p>Early investment bankers are seen here preparing for the IPO of HSBC...</p>
</div>
<p>In a
<a target="_blank" href="http://eapp01.sfc.hk/apps/cf/ProspectusRegime.nsf/eng/Download/1/$FILE/prospectus_regime_consult_eng.pdf">
consultation paper</a> published on 29-Aug-05, the SFC proposed (page 40, 
Proposal 14) that prospectuses be allowed to incorporate information by 
reference to material located outside the prospectus, in a central online 
repository. For listed (but not unlisted) companies, a repository already exists, on the
<a target="_blank" href="http://www.hkex.com.hk/listedco/listconews/search/search_active_main.asp">
HKEx web site</a>, although the consultation paper chose to ignore it. In a
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/06/conclusions_prospectus_060922.pdf">
conclusions paper</a> published last Friday, 22-Sep-06, the SFC said they would 
go ahead with the proposal. Unfortunately, they propose to do it by amending the 
CO, which could take years, based on past legislative efforts and the logjam of 
other proposals awaiting legislation. <i>Webb-site.com</i> proposes an easier 
and faster way to achieve almost the same effect.</p>
<p>
	The SFC's 
	proposal to allow incorporation by reference is very similar to abridging a 
	prospectus.
	<a title="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/f944096ac5ea0e6b48256f5f000c5172" style="color: blue; text-decoration: underline; text-underline: single" target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/f944096ac5ea0e6b48256f5f000c5172">
	Section 38B(2A)(a)</a> of the CO allows the SFC, by notice in the government 
	Gazette, to specify the form and manner of publication of an abridged 
	version of &quot;a prospectus, or any class of prospectuses&quot;. This is a general 
	notice rather than case-specific (case-specific powers are delegated to 
	SEHK). So the SFC could issue a Gazette notice 
	containing a list of items which may be omitted in an abridged prospectus 
	issued by &quot;any listing applicant&quot; (being a class of prospectuses), provided 
	the information is contained in the full prospectus made available elsewhere. The most obvious items are:</p>
<ul>
	<li>The accountants' report</li>
	<li>The valuation report(s)</li>
	<li>The statutory &amp; general information section</li>
</ul>
<p>In other words, the fat at the back of the prospectus. This &quot;inclusion by reference&quot; 
	is a cleaner solution than attempting to summarise a full prospectus, 
	because it avoids increasing the risk of&nbsp;liability for omission of material 
	information. The abridged prospectus would state that applications should 
	only be made on the basis of the full prospectus, copies of which are 
	available at a specific location.</p>
<p>As regards 
	the obligation to hand out prospectuses with application forms,
	<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/820010b58b76867748256f5f000c5170">
	Section 38A(2)</a> and
	<a title="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/4dfcb6dc88af19ff48256f5f000c518f" style="color: blue; text-decoration: underline; text-underline: single" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/4dfcb6dc88af19ff48256f5f000c518f">
	Section 342A(2)</a> of the CO allow the SFC, by notice in the Gazette, and 
	subject to such conditions&nbsp;as it thinks fit, to exempt &quot;any class of 
	companies&quot; or &quot;any class of prospectuses issued by companies&quot;, from any 
	requirement of the relevant provisions of the CO, if compliance with the 
	requirement is &quot;unduly burdensome&quot;, as long as it will not &quot;prejudice the 
	interest of the investing public&quot;. It is certainly &quot;unduly burdensome&quot; and 
	environmentally wasteful to have to print and hand out so many full 
	prospectuses in the internet age.</p>
<p>
	It is 
	therefore open to the SFC, by notice in the Gazette, to define a class of 
	companies as those which are seeking listing on SEHK, and then to exempt 
	them from the requirement of distributing a full prospectus with the 
	application forms, on condition that (a) they distribute an abridged 
	prospectus&nbsp;with the application form and (b) they make available at at least 
	one urban location in HK, printed copies of the full prospectus. 
	This will ensure that the interest of the investing public is not prejudiced 
	by the exemption.<p>We 
	think that is the fastest way forward, as it avoids the need to wait for an amendment 
	to the 
	CO, which could easily take 2-3 years. So in summary, the steps are:</p>
<ol>
	<li>SFC issues a Gazette notice under s38B(2A)(a) of the CO to state what parts 
		of a prospectus required by the Listing Rules can be omitted in an 
		abridged prospectus.</li>
	<li>SFC issues a Gazette notice under s342A(2) of the CO exempting listing 
		applicants from the requirement to hand out a full prospectus with each 
		application form on condition that an abridged prospectus which complies 
		with the Listing Rules&nbsp;is handed out with each application form and 
		a full prospectus is available elsewhere.</li>
</ol>
<p>
	Stock Exchange	<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/CH12.doc">
	Listing&nbsp;Rule 12.11</a> already contains procedures by which listing 
	documents (which would include an abridged or full prospectus) can also be 
	made available on CD-ROM, as long as the printed version remains available 
	in HK.<p>As a member of the 
	SFC's Public Shareholders Group, your editor will pursue this proposal with 
	the SFC.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
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