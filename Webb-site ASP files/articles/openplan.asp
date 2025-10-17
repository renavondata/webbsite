
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

<script type="text/javascript">document.title="Town Planning Bill - In reality, only a half way house";</script>

	<div class="summary">Guest writer Nicholas Brooke, Chairman of Brooke International and a member of the Town Planning Board, examines the proposals in the new Town Planning Bill and calls for the meetings of the board to be opened to the public.</div>

<h2 class="center">Town Planning Bill - In reality, only a half way house<br>
<span class="headlinedate">2 February 2000</span></h2>
<p>	The <a href="http://www.info.gov.hk/gia/general/200001/21/0121163.htm" target="_blank"> announcement</a> by the Government that it intends shortly to gazette the somewhat long awaited
<a href="http://www.legco.gov.hk/yr99-00/english/bc/bill_85/general/bill_85.htm" target="_blank"> Town Planning Bill</a> is indeed good news, and whilst we really need to see the small print to be sure of all the implications and ramifications, the
<a href="http://www.plb.gov.hk/bill/index-e.htm" target="_blank"> Information Pamphlet</a> issued by the Planning Department certainly makes the right noises in terms of increased public participation in the process and a more open system. </p>

<p>	What is proposed is, in reality, not all that complex and represents more of a streamlining than a radical overhaul, and it is interesting to ponder why the Bill has been so long in the drafting.  I sense, in fact, that the draft has been on the shelf for some time and that it was more a case that the Administration wanted to pave the way in advance, by holding a series of informal consultations, so as to demonstrate that there is benefit in involving the community early in the planning process and that potentially this could save time, rather than anything of a more fundamental nature. </p>

<p>Certainly there were lessons to be learnt in the case of the Central Wanchai Reclamation, and to an even greater extent with the South East Kowloon Reclamation, when there was inadequate consultation at the right stage i.e. early in the process and this resulted, in the case of Central Wanchai, in major modification and, in the case of South East Kowloon, in a return to the drawing board.  A series of consultations, skillfully managed by the Secretary for Planning and Lands, brought all parties together and, as a result of tapping the views of the community and a participatory team effort, we now have an exciting scheme for Central Wanchai and a revised brief for South East Kowloon. </p>

<p>The Planning Department also has been consulting the public on issues such as the possibility of a business zoning, the three "green" new towns in the New Territories and
<a href="http://www.info.gov.hk/planning/susdev/e_consult_99/index.htm" target="_blank"> sustainable
development</a>; so that, being a little cynical, I cannot help but feel that we were being conditioned to the idea of greater and earlier involvement and the benefits that it would bring. </p>

<h3>More input from the TPB </h3>

<p>The new Bill proposes a number of changes, which no doubt will be debated more fully in the weeks to come.  However from my own perspective, I would pick out the following proposals as being the more significant.  Firstly it is proposed that the
<a href="http://www.info.gov.hk/tpb/" target="_blank"> Town Planning Board</a> may give advice to the Government relating to overall planning for Hong Kong.  It has been a hobby horse of mine for some time that we lack an independent authority with responsibility for strategic planning in Hong Kong; so that if the Town Planning Board is to be allowed to have a say on strategic planning issues, I welcome this wholeheartedly.  My only quarrel would be with the word "may" and would over time like to see "shall" substituted! </p>

<h3>Public to be involved at an earlier stage </h3>

<p>Secondly, in relation to the <a href="http://www.plb.gov.hk/bill/5e.htm" target="_blank"> plan making
process</a>, it is now intended to publish planning studies for public comment prior to the preparation of draft plans and, whilst the period - one month - for submission of representations is tight, there are opportunities later in the process for continued involvement with all representations published for public comment and appearance by concerned parties at a single stage inquiry.  This certainly should address the concerns of those who have hitherto felt that they were not involved early enough in the consultative process and provide the opportunity for those with constructive suggestions and proposals to influence the process at the outset. </p>

<p>Another interesting aspect of the Bill is the proposal to empower the Town Planning Board, as part of the plan making process, to designate certain key areas, where environmental and urban design considerations are of sufficient importance, as Environmentally Sensitive or Special Design Areas.  Again this is very positive, as it will enable a macro rather than micro approach and enable areas, such as the new Harbour waterfront, to be designated in such a fashion and to be master planned and implemented in a comprehensive manner, in terms of land use and the shape, form and design of the buildings to be permitted rather than accepting the piecemeal approach, which has been the pattern hitherto. </p>

<p>	Proposals to make the <a href="http://www.plb.gov.hk/bill/6e.htm" target="_blank"> planning system</a> more open are also to be welcomed, including the intention to publish, for public comment, planning applications for selected "bad neighbour uses" and to require that the applicant for planning permission notifies or secures the consent of the owners of the application site.  Clearly affected parties need to be made aware formally of applications that might affect their property and it is not acceptable to leave this to chance or to the whims of the applicant. </p>

<h3>Performance Bonds will help </h3>

<p>There also is provision to levy a performance bond to ensure full compliance with planning conditions attached to a planning permission and this will be a useful stick, in the case of planning conditions which extend beyond the duration of the project, such as the building of pedestrian footbridges and other facilities outside the application site.  Often these elements can only be implemented subsequent to completion of the development in question, and there is little incentive on the applicant, if he has completed his project and pocketed the proceeds of sale.  A meaningful performance bond certainly should serve to focus the mind and ensure eventual delivery. </p>

<p>Finally on the positive side, there are proposals substantially to increase the level of fines, in the event of unauthorized development; so as to provide a stronger deterrent to those who refuse to play by, or chose to ignore the rules. </p>

<h3>Planning Certificates Dropped </h3>

<p>On the negative side, it is disappointing to note that the Planning Certificate System which would have provided a definitive answer to the type and quantum of development permitted on any site is not to be pursued and has been dropped from the Bill.  The alternative now proposed is that the Building Authority will refuse to approve plans of proposed building works which contravene the provision of the Town Planning Ordinance, which seems little different to the situation today and I suspect that we may not have heard the end of this particular subject.  Certainly to have a Certificate issued by the relevant Authority i.e. the Planning Department which could be produced in support of any General Building Plan submission would appear to bring a far greater degree of certainty to the situation and would enable the applicant to clear that particular hurdle before General Building Plan submission, rather than receiving the message that he is in contravention of the Town Planning Ordinance via the Building Authority, and losing and wasting time in the process. </p>

<h3>TPB should be more open </h3>

<p>	The more significant issue which is not addressed in the Bill is how best to bring greater transparency to the work of the Town Planning Board and I suspect this reflects the fact that the drafting was done some time ago.  Certainly in recent months there has been growing pressure to open the meetings of the Town Planning Board to the public, and similarly there have been views expressed that the Chairman should be a non-official member rather than the Secretary for Planning and Lands or, in his absence, the Director of Planning.  In this latter regard let me say immediately that I am not looking for a job as both the Secretary and the Director perform their role
vigilantly and objectively, and I see no reason to change.  Indeed, if the proceedings of the Board were no longer to take place behind closed doors, the public would see this for themselves and soon realize how carefully and thoroughly the Board considers each application. </p>

<p>I personally would have no problem with a greater degree of transparency and would start by opening to the public the plan production process; so that they can understand what is involved and see and hear how the Board deals with representations and objections.  If this is successful, and I see no reason why it should not be, then I would open up the consideration of individual applications, although respecting that, in certain cases, sensitive commercial considerations, which potentially could have stock market implication, might necessitate a private hearing. </p>

<p>Also whilst the presentation of both sides of the argument and the questioning of the applicant and the Department's representatives could take place under public view, I think the debate that takes place amongst Board members before they reach their decision would have to take place behind close doors.  Logistically, this could present some challenges as it potentially would be very disruptive continually to have to clear the gallery whilst the Board debated its decision.  However perhaps such debate could be consolidated into a single session at the end of each morning or afternoon. </p>

<p>In any event food for thought, in that I sense that the mood of the community is such that the Board should not, and cannot resist understandable pressures from a wide variety of sources to submit its processes and procedures to greater scrutiny.  Although speaking from a personal perspective, I have to say that I think the public would be much re-assured if they were see the Board in operation and for this reason alone I favour at least a trial run.&nbsp; </p>

<p>&copy;<em>  Nicholas Brooke, 2000</em> </p>

<p>The views expressed in this article are those of
the author and not necessarily of <i>Webb-site.com</i>. Nicholas Brooke is
Chairman of <a href="http://www.brookeinternational.com/" target="_blank">Brooke
International</a>, a member of the Town Planning Board and a Fellow of the <a href="http://www.hkis.org.hk/" target="_blank">Hong
Kong Institute of Surveyors</a>.</p>

<p>If <i>you</i> would like to contribute articles to <i>Webb-site.com</i>,
then <a href="../contact/">contact the Editor</a></p>

<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17267">HKSAR Town Planning Board</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=18672">Brooke, Charles Nicholas</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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