
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

<script type="text/javascript">document.title="West Kowloon needs tender care";</script>

	<div class="summary">We urge the board of WKCDA, which was bypassed for months in the planning of the Palace Museum, to put the main architectural services contract out to tender, given that there is still no binding contract with Rocco Yim's company. Let him compete for the work, in line with HK's commitments to free and fair trade under WTO obligations. We estimate the contract size at HK$140m.</div>

<h2 class="center">West Kowloon needs tender care<br>
<span class="headlinedate">6 February 2017</span></h2>

<p>Webb-site has been digging into the West Kowloon Cultural District/Disaster/Desert. The architectural work on the proposed Hong Kong Palace Museum (<strong>HKPM</strong>) 
represents possibly the worst failure to tender a HK Government project since the Cyberport was awarded to Li Ka-Shing's son in 1999, which is ironic, because 
the office-hotel-mall complex retained by the Government is so devoid of technology tenants that the Government has 
moved the <a href="../dbpub/orgdata.asp?p=46752">West Kowloon Cultural District 
Authority</a> (<strong>WKCDA</strong>) there. Perhaps it should now be renamed the "Cultureport".</p>
<p>But it's not too late to tender the HKPM work, because our correspondence with Duncan Pescod 
(<strong>Mr Pescod</strong>), Chief 
Executive of WKCDA, confirms that the main contract for architectural services is 
still under negotiation, so there is no binding obligation on WKCDA to use
<a href="../dbpub/orgdata.asp?p=56932">Rocco Design Architects Ltd</a> (<strong>RDA</strong>) as 
the architect. If the <a href="../dbpub/officers.asp?p=46752&amp;hide=Y">board 
members</a> of WKCDA have any self-respect and influence, they should now order 
the management to tender the work properly. But they don't, of course.</p>
<p>On 23-Dec-2016, WKCDA
<a href="http://www.westkowloon.hk/en/newsroom/news/wkcda-announces-collaboration-arrangement-with-the-palace-museum-to-establish-a-new-museum-in-hong-kong/page/1" target="_blank">
announced</a> the hitherto secret "Project P", stating vaguely that:</p>
<blockquote>"The Board of the WKCDA has endorsed the appointment of Rocco Yim of 
Rocco Design Architects Limited as the architect to carry out the design of the 
HKPM."</blockquote>
<p>Seeing the word "endorsed", we immediately suspected that some earlier 
agreement had been reached, <em>fait accompli</em> - many of the board members had not 
been told about the project until it was well underway. On 3-Jan-2017, we wrote 
to WKCDA asking:</p>
<ol>
	<li>On what date was the appointment made?</li>
	<li>On what date did the WKCDA board endorse the appointment?</li>
	<li>Whether there was any tender or other competitive process for the 
	appointment of the architect, if so the details of that, and if not, why 
	not? We checked your “<a href="http://www.westkowloon.hk/en/the-authority/tender-notices-110" target="_blank">Tender Notices</a>” page but could not find anything 
	related to this.</li>
	<li>Details of the contract awarded to Rocco Design Architects Limited, 
	including the date awarded and the contract amount. We could not find any 
	details on your “<a href="http://www.westkowloon.hk/en/the-authority/awarded-contracts" target="_blank">Awarded Contracts</a>” page.</li>
</ol>
<p>With no reply, on 6-Jan-2017 we threatened to file a complaint with the 
Ombudsman under the Code on Access to Information. Meanwhile, the public 
pressure on the Government for an explanation increased, resulting in a press 
conference on 10-Jan-2017 for which a
<a href="http://gia.info.gov.hk/general/201701/10/P2017011000915_251250_1_1484090345732.pdf" target="_blank">
series of questions and answers</a> was prepared (<strong>Q&amp;A</strong>). On 13-Jan-2017 we received 
<a href="../codocs/Pescod170113OCR.pdf" target="_blank">a letter</a> from Mr Pescod, containing many of the same answers, but with some important 
differences. As the Q&amp;A had by now disclosed, there were in 
fact two contracts at issue:</p>
<ul>
	<li>The first, relatively small contract for HK$4.5m with RDA was "in June 2016 to provide consultancy 
	services in respect of an ongoing study into the future use of the headland 
	site (previously the MPV site)." MPV stands for "Mega-Performance Venue". The 
	board has delegated authority to the 
	management of WKCDA to award such contracts up to HK$5m 
	without specific board approval.</li>
	<li>The second, much larger contract, still under negotiation, is for the main 
	architectural work on 
	the HKPM. Mr Pescod stated that "the Board took a decision to appoint RDA as 
	lead consultant for the HKPM design on 28 November 2016. WKCDA is now 
	finalizing the detailed terms of the consultancy agreement. The Board 
	endorsed the budget for the provision of consultancy services for the design 
	and construction of the project at its meeting held on 10 January 2017".</li>
</ul>
<h3>Criteria revised after decision</h3>
<p>Now on our third question, WKCDA appears to have revised the history. In the 
Q&amp;A on 10-Jan-2017, the Government asked itself question B3:</p>
<blockquote>"Why did the WKCDA 
directly engage [RDA] to take charge of the design of the [HKPM] without open 
tendering, which is contrary to the principle of openness and fairness? Will the 
project be re-tendered?"</blockquote>
<p>We pause to note that you cannot re-tender that which 
was not tendered in the first place. The answers given by the Government and Mr Pescod are shown below, with differences in italics:</p>
<table class="txtable">
	<tr>
		<th>Q&amp;A answer on 10-Jan</th>
		<th>Mr Pescod's answer on 13-Jan</th>
	</tr>
	<tr>
		<td>The WKCDA Management considers that HKPM is a unique museum with 
		very special nature to showcase the precious collections, culture and 
		history of the Palace Museum. WKCDA has the following considerations in 
		engaging the architect for the project:<br><br>(1) A local <em>Chinese 
		architect </em>who must understand Chinese arts and culture;<br>(2) 
		Understands the vision and development of WKCD; and<br>(3) Possesses the expertise 
		gained through designing museums of a similar nature.<br><br><em>Mr 
		Rocco Yim is a local-born Hong Kong architect...</em></td>
		<td><em>In light of the confidential nature of the discussions between 
		the Government, the Palace Museum and Ministries </em>the WKCDA 
		management considers that the HKPM is a unique project, which will be 
		able to showcase the precious collections, culture and history of the 
		Palace Museum <em>in Hong Kong</em>. WKCDA has the following considerations in 
		engaging the architect for the project:<br><br>(1) A local <em>
		architectural firm </em>which understands Chinese arts and culture;<br>
		(2) Understands the vision and development of WKCD; and<br>(3) Possesses
		<em>necessary </em>
		expertise in designing museums of a similar nature.<br>
		<br><em>RDA is a Hong Kong based architectural firm...</em><br></td>
	</tr>
</table>
<p>Notably, Mr Pescod now says that the WKCDA (or rather, its management, not 
the board) chose RDA because it is a local firm, rather than because its leader,
<a href="../dbpub/positions.asp?p=31175">Rocco Yim Sen Kee</a> (<strong>Mr Yim</strong>), is a "local 
Chinese" or "local-born" architect. This comes after the Equal Opportunities 
Commission
<a href="https://www.hongkongfp.com/2017/01/12/hong-kong-palace-museums-chinese-architect-policy-may-violate-discrimination-law-watchdog-warns/" target="_blank">
pointed out</a> on 11-Jan-2017 that selecting an individual based on his race or 
national or ethnic origin may be in breach of the Race Discrimination Ordinance 
(see <a href="http://www.hklii.hk/eng/hk/legis/ord/602/s8.html" target="_blank">
section 8</a>).</p>
<p><a href="../dbpub/positions.asp?p=40475">Carrie Lam Cheng Yuet Ngor</a> 
(<strong>Mrs Lam</strong>), who as Chief Secretary was also Chairman of WKCDA,
<a href="https://www.hongkongfp.com/2017/01/11/architect-preservation-site-wall-collapsed-enlisted-without-tender-design-controversial-palace-museum/" target="_blank">
stated</a> at the press conference on 10-Jan-2017 that she approached Mr Yim in 
May 2016 and later delegated the contact to Mr Pescod. There was never any other 
candidate.</p>
<p><a href="../dbpub/articles.asp?p=1415">The Hong Kong Jockey Club</a>, which 
holds a monopoly 
gambling/tax-collecting franchise, is providing HK$3.5bn of funding 
to WKCDA for the HKPM project. By coincidence, the HKJC
<a href="http://corporate.hkjc.com/corporate/corporate-news/english/2009-03/news_2009032421542.aspx" target="_blank">
appointed</a> RDA in 2009 as Executive Architect on the Central Police Station 
project. That project temporarily stalled in May 2016 when a wall of one of the buildings
<a href="http://www.scmp.com/news/hong-kong/education-community/article/2042747/holes-blamed-historic-hong-kong-police-station" target="_blank">
collapsed</a> after holes were bored in its brick columns. No blame has been 
apportioned amongst the various parties involved.</p>
<p>Webb-site has no doubt that RDA and its leader, Rocco Yim, are qualified for 
the main HKPM job, either by the original criteria or the revised ones. That's not 
the point. RDA is not the only firm in the world that would be qualified, even 
on the narrow and now-revised criteria, and they should have to compete for the 
job. Even if you accept the excuse that the 
initial small contract could not have been tendered because the project was 
still "confidential" (ever heard of non-disclosure agreements?), it is no longer confidential, and that excuse drops away 
for the main contract.</p>
<h3>WKCDA board</h3>
<p>It is worth nothing that the Deputy Chairman of WKCDA,
<a href="../dbpub/positions.asp?p=675">Ronald Joseph Arculli</a>, is now heading 
up Mrs Lam's Chief Executive selection campaign, along with another WKCD board 
member, <a href="../dbpub/positions.asp?p=1886">Bernard Chan Chi Sze</a>. His 
father Robin Chan Yau Hing is one of the "senior advisers" on her campaign.</p>
<h3>The architects cartel</h3>
<p>While we are on the subject of local architects, the Hong Kong Institute of 
Architects (<strong>HKIA</strong>) came under fire from the
<a href="../dbpub/articles.asp?p=2062513">Competition Commission</a> in a
<a href="https://www.compcomm.hk/en/media/press/files/20161128_Competition_Commission_calls_upon_two_professional_associations_EN.pdf" target="_blank">
media release</a> on 28-Nov-2016 for its continuing anti-competitive 
requirements in its
<a href="http://www.hkia.net/en/pdf/codeofconduct.pdf" target="_blank">Code of 
Conduct</a>, including the requirement in Rule 3.1 that members should "uphold 
and apply...the Scale of Professional Charges" - in other words, price-fixing, 
something that we <a href="archifix.asp">wrote about</a> on 
25-Jan-2015. The Scale of Professional Charges has disappeared from its website 
but
<a href="http://web.archive.org/web/20121119042255/http://www.hkia.net/UserFiles/Image/Board%20of%20Practices/Scale%20of%20Professional%20Charges.pdf" target="_blank">
can be found</a> in the internet archive, requiring a fee of 4.5% for "Group I" 
projects (specifically including museums) up to HK$1bn, and "negotiable" above 
that. HKIA is a statutory body, so it is 
exempt from the Competition Ordinance unless and until the Chief Executive of HK 
issues a notice to put them in. However, HKIA's members are not exempt.</p>
<p>For the HK$3.5bn HKPM then, <strong>the fee could be in the region of 4% or 
HK$140m</strong>. WKCDA declined to disclose the budget to Webb-site, claiming 
that it is commercially sensitive information and "in any event, as the contract 
is still being negotiated with RDA there is no formal agreement in place yet".</p>
<h3>WTO obligations</h3>
<p>There is another point on which most of the media have not yet focused. HK 
prides itself on purportedly being an open and free market. It is a member of 
the World Trade Organization and a signatory to the <a href="https://www.wto.org/english/docs_e/legal_e/rev-gpr-94_01_e.htm" target="_blank">
Government Procurement Agreement</a> (<strong>GPA</strong>), which requires open 
tenders above certain thresholds and with certain exceptions. Each member 
commits to its own
<a href="https://www.wto.org/english/tratop_e/gproc_e/gp_app_agree_e.htm" target="_blank">
coverage schedules</a>. In
<a href="https://e-gpa.wto.org/en/Appendix/Details?Agreement=GPA113&amp;Party=HongKongChina" target="_blank">
Hong Kong's case</a>, the goods and services threshold for Government Departments 
in Annex 1 is HK$1.484m. Annex 3 specifies a higher threshold of HK$4.565m for 
good and services procured by five other arms of the Government, namely the 
Airport Authority, Hospital Authority, Housing Authority, Kowloon-Canton Railway 
Corporation (yes, it still exists) and MTR Corporation Ltd (0066). This list has 
not been updated in a long time, so it doesn't specifically include newer 
Government-controlled entities such as:</p>
<ul>
	<li>Competition Commission</li>
	<li>Estate Agents Authority</li>
	<li>Hong Kong Cyberport Management Company Limited </li>
	<li>Hong Kong International Theme Parks Limited (owner of HK Disneyland)</li>
	<li>Hong Kong Science and Technology Parks Corporation</li>
	<li>Insurance Authority</li>
	<li>Mandatory Provident Fund Schemes Authority</li>
	<li>Sale of First-Hand Residential Properties Authority</li>
	<li>Securities and Futures Commission</li>
	<li>West Kowloon Cultural District Authority</li>
</ul>
<p>However, the Government should ensure that all its arms and legs properly 
tender in accordance with the spirit of these commitments. Readers will note 
that the preliminary June contract of HK$4.5m fell just below the HK$4.565m of 
Annex 3 entities, as well as the delegated limit set by the board of HK$5m. The 
much larger main contract would not qualify for a size-exemption.</p>
<p>On 16-Jan-2017, we wrote to WKCDA again. We asked, amongst other things, 
whether the WKCDA considered itself bound by Hong Kong's WTO commitments. Mr Pescod
<a href="../codocs/Pescod170124OCR.pdf" target="_blank">replied in a letter dated 24-Jan-2017</a> that although WKCDA is not named in Annex 3:</p>
<blockquote>"Despite this, WKCDA conducts its procurement activities in 
accordance with the WTO-GPA. The procurement of consultancies is specifically 
excluded from the operation of the WTO-GPA."</blockquote>
<p>By implication, Mr Pescod, for WKCDA, claims that the provision of 
architectural and project management services by RDA amounts to a "consultancy".
<a href="https://e-gpa.wto.org/en/Annex/Details?Agreement=GPA113&amp;Party=HongKongChina&amp;AnnexNo=7&amp;ContentCulture=en" target="_blank">
Annex 7</a> of HK's commitments states that HK's GPA does not cover "All 
consultancy and franchise arrangements". We wrote again, asking, by what stretch 
of the imagination could architectural and project management services 
constitute an exempt "consultancy"? At this point, perhaps fearing a judicial 
review or legislative enquiry, WKCDA responded on 27-Jan-2017:</p>
<blockquote>"As the WTO-GPA is an international treaty we do not believe it is 
appropriate to offer an interpretation of its terms."</blockquote>
<p>Surely, you must have some interpretation in mind, Mr Pescod. Try, for 
example, the approach of the Government's Architectural Services Department - 
<a href="http://www.devb.gov.hk/filemanager/en/content_1010/ArchSDBFT.pdf" target="_blank">here is a list</a> of its expected tenders for Jan-Jun-2017.</p>
<p>Our final question in the second letter was whether we are correct that as the 
main agreement is still under negotiation with RDA, there is currently no contractual 
obligation on WKCDA to use RDA for this work, and therefore the WKCDA board 
could, if it wishes, open the contract to tender. Mr Pescod agreed, writing 
"technically you are correct", but then said that this "should not be taken as 
providing an opportunity for the contract to be put out to tender."</p>
<p>We think that's a matter for the board to decide, Mr Pescod.</p>
<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2062513">COMPETITION COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11574">HONG KONG INSTITUTE OF ARCHITECTS (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=46752">WEST KOWLOON CULTURAL DISTRICT AUTHORITY</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=675">Arculli, Ronald Joseph</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1886">Chan, Bernard Charnwut</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49561">Pescod, Duncan Warren</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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