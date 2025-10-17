
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

<script type="text/javascript">document.title="CPG interference: HK's Ministry of Truth on Article 22";</script>

	<div class="summary">In an act straight out of George Orwell's 1984, the HK Govt's news agency has been caught modifying and backdating a press release to comply with the Central People's Government's Liaison Office view that it is not a CPG department and not subject to Article 22 of the Basic Law. It actually makes no difference: if the CPG itself interferes in matters which are within HK's autonomy under the Basic Law, then it undermines "Two Systems".</div>

<h2 class="center">CPG interference: HK's Ministry of Truth on Article 22<br>
<span class="headlinedate">20 April 2020</span></h2>
<p>There was political drama in HK this weekend, not just the
<a href="https://news.rthk.hk/rthk/en/component/k2/1521362-20200418.htm" target="_blank">
mass arrest</a> of 15 pro-democracy leaders, but also over whether the Liaison Office 
of the Central People's Government in the HKSAR (<strong>LOCPG</strong>) is 
bound by 
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_2.html" target="_blank">Article 22</a> of the Basic Law, which requires in its first two 
paragraphs:</p>
<blockquote>"No department of the Central People's Government and no province, 
autonomous region, or municipality directly under the Central Government may 
interfere in the affairs which the Hong Kong Special Administrative Region 
administers on its own in accordance with this Law.</blockquote>
<blockquote>If there is a need for departments of the Central Government, or for 
provinces, autonomous regions, or municipalities directly under the Central 
Government to set up offices in the Hong Kong Special Administrative Region, 
they must obtain the consent of the government of the Region and the approval of 
the Central People's Government."</blockquote>
<p>The HKSAR Government (<strong>HKSARG</strong>) issued an English press release with timestamp 21:05 on 
18-Apr-2020 stating:</p>
<blockquote>"The LOCPG is one of the three organisations set up in the HKSAR by 
the Central Government in accordance with Article 22(2) of the Basic Law"</blockquote>
<p>Now you might think that a Government web site titled
<a href="https://www.info.gov.hk/gia/ISD_public_Calendar_en.html" target="_blank">
News Archives: Press Release</a> would have a copy of this press release in its 
archive. You'd be wrong. To find the original press release, we have to go to 
the Google cache and store a <a href="http://archive.is/yejjH" target="_blank">
copy in archive.is</a>, so that you can see it when the cache fades.</p>
<p>Instead, in place of the original, there is a
<a href="https://www.info.gov.hk/gia/general/202004/18/P2020041800802.htm" target="_blank">
revised press release</a>, backdated to the same timestamp of 21:05, in which 
the references to Article 22 have been removed. The Information Services 
Department (<strong>ISD</strong>) of the HKSARG should be renamed the "<a href="https://en.wikipedia.org/wiki/Ministries_of_Nineteen_Eighty-Four#Ministry_of_Truth" target="_blank">Ministry 
of Truth</a>" in honour of George Orwell's 1984, for its ability to change its 
own archive by overwriting and backdating press releases.</p>
<p>The revised version was issued at 23:47 that night, nearly 3 hours 
later. Three hours may not seem like much in the arc of history - but there's a 
principle at stake - what if the Government goes back and modifies public press 
releases it made last week, last month or last year, altering or just deleting 
embarrassing older press releases to fit its latest views on important issues?</p>
<p>We only know the time of the second version thanks to a screenshot shown on TVB's evening news yesterday, which gives 
you a behind-the-curtain glimpse of the
<a href="https://www.isdnews.gov.hk/subscriber/loginpage?lang=0" target="_blank">
Government News &amp; Media Information System</a> (<strong>GNMIS</strong>), which 
is available only to journalists approved by ISD with a password. Yes - it's one 
ISD, two news archives. </p>
<img style="border:thin black solid" alt="GNMIS" class="center" src="../images/GNMIS200418.jpg">
<p>Not only that, but at 01:22 on Sunday morning, while most 
of us were asleep, the ISD rushed out
<a href="https://www.info.gov.hk/gia/general/202004/19/P2020041900045.htm" target="_blank">another press release</a>, clarifying that the 
LOCPG is not, in fact (or rather, in Orwellian
<a href="https://en.wikipedia.org/wiki/Newspeak" target="_blank">Newspeak</a>) a 
CPG department as referred to in Article 22(2) of the Basic Law.</p>
<p>That leaves us with the obvious question: if there is no interference in the 
HKSARG's running of HK affairs, then why would the HKSARG need to rewrite 
history to conform with the
<a href="https://www.scmp.com/print/news/hong-kong/politics/article/3080506/beijings-liaison-office-says-it-has-right-handle-hong-kong" target="_blank">latest view of the LOCPG</a> that 
it is not 
bound by Article 22?</p>
<p>Department or not, this is really a distinction without a difference - 
if the Basic Law allows the CPG itself, but not any of its departments, to interfere in matters 
which the HKSARG "administers on its own", then that undermines the "high 
degree of autonomy" promised by the Basic Law and the
<a href="https://www.cmab.gov.hk/en/issues/jd2.htm" target="_blank">Sino-British 
Joint Declaration</a>.</p>
<p>The HKSARG's latest position goes against its earlier advice to the Legislative Council,
<a href="https://www.legco.gov.hk/yr06-07/english/panels/ca/papers/ca0123cb2-898-2-e.pdf" target="_blank">
submitted</a> in January 2007. The advice "provides information on the offices set up 
in the [HKSAR] by the [CPG] under Article 22 of the Basic Law" and names three, 
including LOCPG.</p>
<p>Incidentally, in their wisdom, the drafters of the Basic Law didn't put 
section or paragraph numbers in its Articles, so you have to count the 
paragraphs to find Article 22(2).</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2533654">HKSAR Information Services Department</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
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