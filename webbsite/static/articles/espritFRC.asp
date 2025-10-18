
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

<script type="text/javascript">document.title="FRC probably investigating Esprit";</script>

	<div class="summary">The Government has appointed a standby Chairman and two temporary members of the Financial Reporting Council, to deal with potential conflicts of interest for its Chairman, John Poon Cho Ming, and other members. We connect the dots.</div>

<h2 class="center">FRC probably investigating Esprit<br>
<span class="headlinedate">20 September 2015</span></h2>
<p class="revisedate"><a href="#update2">Update 2</a>, 26-Sep-2015</p>
<p>On Friday (18-Sep-2015), the HK Government
<a href="http://www.info.gov.hk/gia/general/201509/18/P201509180411.htm" target="_blank">
announced</a> that the Chief Executive has appointed
<a href="../dbpub/positions.asp?p=38165">Nicholas Robert Sallnow-Smith</a> (<strong>Mr 
Sallnow-Smith</strong>) as acting Chairman of the
<a href="../dbpub/articles.asp?p=37187">Financial Reporting Council</a> (<strong>FRC</strong>) 
from this Monday until the end of November, in the event that the incumbent 
Chairman, <a href="../dbpub/positions.asp?p=2398">John Poon Cho Ming</a> (<strong>Mr 
Poon</strong>), &quot;is not able to perform the functions of his office as Chairman 
as a result of his disclosure of interests&quot;.</p>
<p>Mr Sallnow-Smith has been a regular member of the FRC since 1-Dec-2012, so 
his first term expires at the end of November but will probably be renewed.</p>
<p>This standby role is a highly unusual step and would only be necessary if Mr 
Poon had a conflict of interests due to an &quot;investigation&quot; by the Audit 
Investigation Board (<strong>AIB</strong>) into possible auditing and reporting regularities in a 
HK-listed entitiy, or an &quot;enquiry&quot; by the Financial Reporting Review Committee 
(<strong>FRRC</strong>) into possible non-compliance with accounting requirements by a listed entity. 
Both committees sit under the FRC.</p>
<p>Looking at <em>Webb-site Who's Who</em>, which covers all directors of listed 
entities since 1990, the only listed entity with which Mr Poon has been 
associated in the last 16 years is <a href="../dbpub/officers.asp?p=2795">Esprit 
Holdings Ltd</a> (<strong>Esprit</strong>, 0330), of which he was Deputy 
Chairman and Finance Director until 20-Jul-2008. So it seems highly likely that 
an investigation is underway into the accounts of Esprit. Once a market darling, 
the retailer is now very much out of fashion, having topped out with the market on 30-Oct-2007 
with a market capitalisation of HK$161bn. Since then, the
<a href="../dbpub/ctr.asp?i1=1038&amp;i2=5295&amp;rel=0&amp;d1=10/31/2007" target="_blank">
total return</a> is -92.12%, compared with -8.85% on the Tracker Fund of HK.</p>
<p>Under
<a href="http://www.hklii.hk/eng/hk/legis/ord/588/sch2.html" target="_blank">
Schedule 2, para 6(4)</a> of the FRC Ordinance, the quorum for a meeting of the 
FRC is 2/3 of its members. There are currently 11 members (including the CEO of 
the FRC and the Registrar of Companies), so at least 8 must be present. 
Obviously anyone with a conflict of interests cannot attend, so if Mr Poon is 
conflicted, then they need 8 out of 10. But it is worse than that, because two 
other members would have a potential conflict if the FRC was discussing Esprit:</p>
<ul>
	<li><a href="../dbpub/positions.asp?p=37645">Chew Fook Aun</a> (<strong>Mr 
Chew</strong>) was Finance Director of Esprit from 1-Feb-2009 to 1-Jun-2012. 
It's a small world, because before 
joining Esprit, until 16-Jan-2009 Mr Chew was the Finance Director of
	<a href="../dbpub/officers.asp?p=24824">Link Asset Management Limited</a>, the 
manager of <a href="../dbpub/orgdata.asp?p=24834">Link REIT</a> (0823), of which 
Mr Sallnow-Smith has been INED and Chairman since 1-Apr-2007.</li>
	<li><a href="../dbpub/positions.asp?p=14390">Wong Kai Man</a> (<strong>Mr 
	Wong</strong>), was an audit partner of PricewaterhouseCoopers until 
	mid-2005, and PwC has been auditor of Esprit since 1995. If the FRC is 
	investigating Esprit, we don't know how far back the investigation of its 
	audit or accounts may go. </li>
</ul>
<p>With Mr Poon, Mr Chew and Mr Wong potentially conflicted out, that would 
reduce the FRC quorum to 8 out of 8, so it would only take one member to be unavailable and the FRC would have no 
quorum and could not make decisions on matters of Esprit. That's probably why 
the Government has also appointed two &quot;temporary members&quot; from Monday until 
30-Nov-2017, to &quot;serve on a rotating basis in the event that the FRC is not able 
to meet the statutory quorum for a meeting in which any of the appointed members 
cannot perform the functions of his office as member as a result of his 
disclosure of interests.&quot;</p>
<p>The temporary members are <a href="../dbpub/positions.asp?p=28678">Vincent 
Duhamel</a> and <a href="../dbpub/positions.asp?p=54605">Wong Tak Jun</a>, 
Dean of the business school and a Chair Professor of accounting at CUHK. Prof Wong should know accounting 
problems when he sees them, having served as an INED and Audit Committee 
Chairman of the doomed <a href="../dbpub/articles.asp?p=54574">China Forestry 
Holdings Co Ltd</a> (0930) from its 2008 IPO. That stock was suspended on 26-Jan-2011 
with a market value of HK$9.03bn and the company is now in liquidation after a 
second set of books were found at its main subsidiary. He 
stepped down as Chairman of the audit committee on 5-Jul-2011 and resigned as 
director on 1-Aug-2012.</p>
<h3><a name="update1"></a>Update, 21-Sep-2015</h3>
<p>This evening Esprit has
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0921/LTN20150921517.pdf" target="_blank">
announced</a> that it has not been notified by, or received any communication 
from, the FRC relating to any investigation of the Company by the FRC.</p>
<p>Comment: it would be helpful if the FRC would make an announcement too 
explaining exactly what conflict of interests Mr Poon has. In order for a formal 
investigation by the AIB or an enquiry by the FRRC to be initiated, the Council 
of the FRC must make a decision under
<a href="http://www.hklii.hk/eng/hk/legis/ord/588/s23.html" target="_blank">
Section 23</a> or
<a href="http://www.hklii.hk/eng/hk/legis/ord/588/s40.html" target="_blank">
Section 40</a> of the FRC Ordinance respectively. It can only make a decision if 
it has a quorum. Therefore it is entirely possible that a listed company would 
be unaware of a pending investigation until after such a decision is made. 
Matters concerning listed company accounts are often referred to the executive 
staff of the FRC by the Stock Exchange or SFC, at which point the FRC staff 
would need to gather information and present it to the Council for a decision on 
whether to launch an investigation or enquiry.</p>
<h3><a name="update2"></a>Update, 26-Sep2015</h3>
<p>We have just found on the FRC web site (which has no visible mailing list 
subscription system) a
<a href="http://www.frc.org.hk/pdf_20150922/Press%20Release%20(Eng).pdf" target="_blank">
press release</a> dated 22-Sep-2015 responding to &quot;recent market speculations 
and news reporting&quot;. The FRC does not specify what conflict Mr Poon has, but 
refers to
<a href="http://www.hklii.hk/eng/hk/legis/ord/588/s57.html" target="_blank">
Section 53</a> of the FRC Ordinance regarding conflicts of interest, which it 
describe as &quot;very broad, and covers even very remote conflicts, for example 
being a client or former client of an accounting firm&quot;.</p>
<p>Perhaps Mr Poon has a private company with an auditor and that auditor 
is under investigation in relation to another listed company. On further 
analysis, the entity under investigation can't be PwC, given that PwC also 
audits Link REIT, of which Mr Sallnow-Smith is Chairman, otherwise he would have 
a conflict too.</p>
<p>The FRC also says that &quot;similar appointments have been made before - in 
January 2014.&quot; The 
<a href="http://www.frc.org.hk/en/content07_01.php" target="_blank">press 
releases page</a> of the FRC web site has nothing on those appointments, but we 
have checked the Government Information Services Department web site and find
<a href="http://www.info.gov.hk/gia/general/201401/30/P201401300184.htm" target="_blank">
this press release</a> dated 30-Jan-2014 in which Mr Sallnow-Smith was appointed 
acting Chairman for 11 months from 31-Jan-2014 to 14-Dec-2014, which coincides 
with the end of Mr Poon's then-current term. At that time the Government also 
appointed 3 temporary members from 31-Jan-2014 to 30-Nov-2015. So it appears 
that there are currently 5 temporary members, of which 3 appointments expire at 
the end of November.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=37187">Accounting and Financial Reporting Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=54574">CHINA FORESTRY HOLDINGS CO., LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2795">ESPRIT HOLDINGS LIMITED (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=24824">Link Asset Management Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=24834">Link Real Estate Investment Trust</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=37645">Chew, Fook Aun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=28678">Duhamel, Vincent</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2398">Poon, John Cho Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=38165">Sallnow-Smith, Nicholas Robert</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14390">Wong, Kai Man (1950)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=54605">Wong, Tak Jun</a></li>
				
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