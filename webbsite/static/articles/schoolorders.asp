
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

<script type="text/javascript">document.title="Occupy school suspension order was invalid";</script>

	<div class="summary">We have investigated the Government's actions during the "Occupy" protests and find that it lacked the legal powers to order district-wide class suspensions, and was therefore acting outside the rule of law.</div>

<h2 class="center">Occupy school suspension order was invalid<br>
<span class="headlinedate">13 January 2015</span></h2>
<p><em>Webb-site Reports</em> has investigated the Government's actions during 
the "Occupy" protests and finds that it lacked the legal powers to order 
district-wide class suspensions, and was therefore acting outside the rule of 
law. Cast your mind back to Monday 29-Sep-2014, the 
day after the tear gas flew and the "Occupy" protests began in Admiralty, Mongkok and Causeway Bay. At 02:59, the Education Bureau issued an
<a href="http://www.info.gov.hk/gia/general/201409/29/P201409290100.htm" target="_blank">
announcement</a> that:</p>
<blockquote>"As the traffic was seriously disturbed by 'Occupy 
Central' movement yesterday (September 28) afternoon, the Government anticipates 
that public transport may continue to be affected in the vicinity of Wan Chai 
and Central and Western areas. To safeguard students' safety, the Education 
Bureau announced that classes of all kindergartens, primary schools, secondary 
schools and special schools in the Wan Chai and Central and Western districts 
would be suspended today (September 29). Schools should remain open and arrange 
staff to look after students who might arrive."</blockquote>
<p>You'll notice the sleight of heavy hand there, conflating transport 
disruption with "student's safety". Does the Government have the legal power to 
order a whole district's schools to suspend classes in this way? After all, you 
can imagine the outcry if the Government ordered businesses to close, and 
remember that some of the affected schools were private, fee-charging 
businesses. However, there are children involved here, so there might be special 
powers. So we checked the Education Ordinance.</p>
<p><a href="http://www.hklii.hk/eng/hk/legis/ord/279/s83.html" target="_blank">
Section 83(1)</a> of the Education Ordinance states:</p>
<blockquote>
	<p>"The Permanent Secretary may, if it appears to him that -</p>
		<blockquote><p>(a) there is any danger or risk of danger to persons in 
		any school premises...</p></blockquote>
	<p>by order in writing served on the management authority of the school -</p>
	<blockquote>
		<p>(i) suspend the operation of the school in the school premises or any part of the school premises...;or</p>
		<p>(ii) prohibit the use of any place for the purposes of a school...;or</p>
		<p>(iii) give such directions and make such requirements as he thinks necessary.</p>
	</blockquote>
</blockquote>
<p>You might think that "danger" and "risk of danger" are the same thing, but 
set that minor drafting issue aside. This clause doesn't apply in the Occupy 
case, because none of the school premises was close to Admiralty (certainly not 
within tear gas range), so there was no danger to persons "in school premises", 
and secondly, there was no "order in writing served on the management authority" 
of the schools concerned, just a general broadcast, which would not satisfy the 
requirements of Section 83(1). Thirdly, any such notice given to a school under 
sub-sections (i) or (ii) above must also be published in the
<a href="http://www.gld.gov.hk/egazette/english/gazette/toc.php?Submit=accept" target="_blank">
Gazette</a>, and no such notice was published.</p>
<p>The broadcast covered a huge chunk of HK Island, including schools up 
on The Peak, kilometres away from the protest zone. See the lists for
<a href="http://www.edb.gov.hk/en/student-parents/sch-info/sch-search/schlist-by-district/school-list-wch.html" target="_blank">
Wanchai</a> and
<a href="http://www.edb.gov.hk/en/student-parents/sch-info/sch-search/schlist-by-district/school-list-cw.html" target="_blank">
Central &amp; Western</a> - we count 68 kindergartens, 52 primary/special schools 
and 34 secondary schools, or 154 schools in total. There was no suspension order 
for schools in Yau Tsim Mong District (which includes Mongkok) or Eastern 
District (which includes Causeway Bay).</p>
<p>Alright, you might be thinking, how does the Government order schools to 
close during typhoons and heavy rainstorms? The answer can be found in the next 
sub-section, 83(1A), which says:</p>
<blockquote>
	"(1A) Notwithstanding subsection (1), if it appears to 
	the Permanent Secretary that there is any immediate danger or immediate risk of 
	danger to persons in any school premises <u>due to bad 
	weather</u>, he may, by making public announcements on radio, television or 
	newspapers or by such other means as he thinks fit, suspend the operation of the 
	school in the school premises." (our underline)
</blockquote>
<p>That power was inserted by the Education (Amendment) Ordinance 2001, after 
the Government realised that its "actual practice" of announcing suspensions 
during typhoons lacked any statutory basis. They explained this on page 4 of
<a href="http://www.legco.gov.hk/yr00-01/english/bc/bc58/general/b17_brf.pdf" target="_blank">
this briefing</a> dated 20-Dec-2000. Clearly that clause doesn't empower the 
suspensions during Occupy either. "Bad traffic" is not the same thing as "bad 
weather". If anything, slower traffic reduces road deaths and injuries, so it is 
not a safety issue either.</p>
<p>So on 4-Oct-2014, <em>Webb-site Reports</em> wrote to the Government asking 
them, exactly what was the legal basis for the suspension order? The Education 
Bureau (<strong>EDB</strong>) responded on 6-Oct-2014 claiming that Section 83 
allows that "the Permanent Secretary may, by making public announcements on 
radio, television or newspapers or by such other means as the thinks fit, 
suspend the operation of the school in the school premises". Nice try, but we 
knew that they were quoting selectively from Section 83(1A), which only applies 
to "bad weather". We challenged them on this, and there was deafening silence, 
so we prodded them again on 16-Oct, and they responded over a month later on 
19-Nov-2014 that "our reply is under preparation".</p>
<p>Still silence. The protests were cleared. Christmas came and went. 
Still no answer. So we poked the EDB again on 28-Dec-2014, and this time we 
copied the Ombudsman, complaining about the 83-day delay without any good reason 
under the toothless <a href="http://www.access.gov.hk/" target="_blank">Code on 
Access to Information</a>, which provides for a normal 21-day response deadline. 
That seemed to get them moving. The next day they said "we are seeking advice 
from Director (sic) of Justice and would let you know the result as soon as 
possible". Finally on 30-Dec-2014, presumably with legal advice from the 
Department of Justice, they said:</p>
<blockquote>
	<p>"As you would appreciate, the "Occupy Central" movement 
	involved illegal activities of an unprecedented large scale right from the 
	start. Faced with such a situation, one of the key concerns of the Education 
	Bureau was naturally students' safety. </p>
	<p>The decision to make public 
	announcement of class suspension at the initial period of the "Occupy Central" 
	movement was made out of real and legitimate concern for students' safety. At 
	the time, the traffic conditions in Wanchai and the Central and Western 
	Districts ("Affected Areas") and their vicinity were seriously affected due to, 
	amongst others, blockage of main roads in the Affected Areas. Besides, there was 
	a degree of uncertainty as to how the situation might develop and one simply 
	could not exclude the possibility that the situation might further deteriorate.
	</p>
	<p>In the circumstances, the Education Bureau took the view that there 
	might be danger or risk of danger to students studying in the schools within the 
	Affected Areas if classes were not suspended. For this reason, the Education 
	Bureau made public announcements in respect of class suspension on 29 September, 
	2-3, 5-7 October 2014, but schools were asked to remain open and arrange staff 
	to look after students who might nonetheless return to their schools. Given the 
	exigency of the circumstances prevailing at the time, public announcement was 
	the most effective means to inform the public (especially the students and their 
	parents) as well as the relevant schools of the aforesaid views of the Education 
	Bureau."</p>
</blockquote>
<p>That response still does not give any statutory basis for doing what they 
did, and you will note that they are now trying to backtrack and say that the 
Education Bureau was merely informing the public of its "views". Clearly the 
announcement was not just views, but purported to give an order, saying that 
classes "would be suspended". We also asked the English Schools Foundation for 
their take on this, and on 6-Oct-2014 Belinda Greer, CEO, told Webb-site by 
e-mail: "the decision to suspend classes is in line with the directive from 
EDB".</p>
<p>Ironically, one of the effects of the Government pronouncement was to allow 
thousands of students from 34 secondary schools time to attend the protests in 
Admiralty. Secondary schools
<a href="http://www.info.gov.hk/gia/general/201410/05/P201410050767.htm" target="_blank">
resumed classes</a> on Monday 6-Oct-2014, Primary Schools the
<a href="http://www.info.gov.hk/gia/general/201410/06/P201410060836.htm" target="_blank">
next day</a>, and kindergartens the
<a href="http://www.info.gov.hk/gia/general/201410/08/P201410080843.htm" target="_blank">
day after</a>. It wasn't until 14-Oct-2014 that the first affected road was 
re-opened,
<a href="http://rthk.hk/rthk/news/englishnews/20141014/news_20141014_56_1045533.htm" target="_blank">
Queensway</a>, so whatever disruption there was to traffic was not enough to 
prevent all the affected schools from operating. </p>
<p>In our view, the Government found it politically convenient to go into panic 
mode and shut down the system, causing massive inconvenience to parents and 
guardians who had to make other arrangements to look after them. You will note 
that the Government was careful not to actually order closure, only suspension 
of classes - but in practice many of them did close their doors. The children 
didn't get the education their parents had paid for, and the school buses which 
are mostly paid a term in advance did not run.</p>
<p>It wasn't the first time that the Government had gone beyond its powers in 
the Education Ordinance in purporting to close or suspend schools. On 
11-Jun-2009, after the first local human swine flu case with no identifiable 
link (i.e. they couldn't show that it was imported), the EDB
<a href="http://www.info.gov.hk/gia/general/200906/11/P200906110252.htm" target="_blank">
decreed</a> that all kindergarten and primary schools would be suspended for 14 
days, effectively cutting the school year short by 2 weeks, and meaning that 
many students had to forego end-of-year and in some cases end-of-school 
celebrations.</p>
<h3>Conclusions</h3>
<p>Whatever you think about the reasons for ordering school closures or class 
suspensions, the 
Government must act within its powers under the rule of law, and not purport to 
use powers that it does not have. It could have suggested, recommended or 
advised schools to suspend classes, but if it wants to give orders, then it 
must have powers to make those orders. The Education Ordinance lays out clear 
procedures for directly ordering an individual school management to close or 
suspend classes on the grounds of safety in that school's premises, or for 
broadcasting general suspensions of all schools during bad weather, but not for 
any other purpose. If the Government wishes to amend the Education Ordinance to 
expand its powers, then it should take the matter to the Legislative Council in 
the usual way, not flout the rule of law.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=19">Education</a></li>
				
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