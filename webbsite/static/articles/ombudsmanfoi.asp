
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

<script type="text/javascript">document.title="Ombudsman discloses more information";</script>

	<div class="summary">Following pressure from Webb-site, the Ombudsman has today published a summary of the submissions received during its investigations on Access to Information and keeping public archives. The submissions show strong support for legislation. Meanwhile, the wheels at the Law Reform Commission are slowly turning and covering similar ground.</div>

<h2 class="center">Ombudsman discloses more information<br>
<span class="headlinedate">17 April 2014</span></h2>
<p>On 20-Mar-2014, the Office of the Ombudsman released two related
<a href="http://ofomb.ombudsman.hk/abc/en-us/direct_investigations/index" target="_blank">
Direct Investigation Reports</a>, one on the Access to Information (<strong>ATI</strong>) 
regime in HK and the other on Public Records Management in HK. Obviously one 
cannot obtain records from the Government if they have already destroyed them. 
HK lacks laws on both issues.</p>
<p>In the ATI report, they key conclusion is:</p>
<blockquote>&quot;The Ombudsman recommends that Government consider 
introducing a law to underpin citizens right of ATI, covering information held 
by both Bureaus/Departments and public organisations, to be overseen by an 
independent body with enforcement powers.&quot;</blockquote>
<p>The recommendation was not so much &quot;consider introducing&quot; as &quot;introduce&quot;, 
given that it continues &quot;Before such a law is passed, Government should,...&quot; and 
there follows a list of stop-gap measures. Similarly, on public records and 
archives, the Ombudsman &quot;urges the Administration to seriously consider&quot; 
legislation.</p>
<p>As part of the investigation process, there was a poorly-publicised 
invitation on the Ombudsman's web site to submit views. On page 3 of the report, 
there was brief mention that the Ombudsman had received 39 sets of views and 
information from the public, some of which related to both reports. One of those 
submissions was from Webb-site, which you can
<a href="ombudsman130212.asp">read here</a>.</p>
<p>Alright, we thought, what were the other 38 sets of views? But there was 
nothing in the reports on that, and no submissions were published on the 
Ombudsman's web site. So we wrote, asking under the existing
<a href="http://www.access.gov.hk/en/" target="_blank">Code on Access to 
Information</a> for information on the submissions, and for the submissions to 
be published, suitably redacted as to identity for those who wish to remain 
anonymous. Well, it turns out that the Ombudsman, which handles complaints under 
the Code, is not subject to the Code itself. However, they do have a similar
<a href="http://www.ombudsman.hk/en-us/about_this_office/pai.pdf" target="_blank">
Policy on Access to Information</a>. They wrote to us, regarding the 39 submissions:</p>
<blockquote>&quot;Most of them were from individuals; a few from groups/organisations. 
14 submissions were related to public records management and archives; 11 were 
related to access to information; and the remaining 14 covered both topics. All 
submissions were in favour of introducing laws or strengthening measures to 
ensure access to information and/or proper public records management and 
archiving.&quot;</blockquote>
<p>But on our suggestion that they publish the submissions, they wrote:</p>
<blockquote>&quot;As far as our reporting on the two investigations is 
concerned, we do not see a need to compile a compendium of the public views 
received&quot;</blockquote>
<p>Not good enough, we thought. So we wrote again, asking under their &quot;Policy on 
Access to Information&quot; for copies of the 39 submissions, redacted as to 
identity, so that we could publish them. After all, it would be rather ironic 
if, having called for legislation on ATI, the Ombudsman was not willing to 
comply with the spirit of the existing Code. After further cogitation, they came 
up with:</p>
<blockquote>&quot;While having to abide by the secrecy provision of 
section 15(1) of The Ombudsman Ordinance, we now agree that we can provide you 
with a summary of the public views received, as part of our reporting under 
section 15(3) of the Ordinance&quot;</blockquote>
<p>Well that's progress! So today (17-Apr-2014), the Ombudsman has sent us, and 
appended to both reports, the <a href="../codocs/DI238&246PublicSubmissions.pdf">
summary of public submissions</a>. From reading this, you can see that there is, 
unsurprisingly, strong public support for laws on both access to information and 
public record keeping. At least one of the submissions would have come from the
<a href="../dbpub/orgdata.asp?p=1865449" target="_blank">Archives Action Group 
Ltd</a>.</p>
<p>So what is the Government doing about this? Well, on 14-Jan-2013, 10 days 
after the start of the Ombudsman's investigation, the Secretary for Justice
<a href="http://www.doj.gov.hk/eng/public/pr/20130114_pr1.html" target="_blank">
announced</a> that in Dec-2012, the Law Reform Commission had &quot;decided to 
establish&quot; two sub-committees. Moving in a gradual and orderly (read: glacial) 
way, 5 months later in May-2013, the LRC set up the
<a href="http://www.hkreform.gov.hk/en/members/accesstoinfo.htm" target="_blank">
Access to Information sub-committee</a> and in Jun-2013 the
<a href="http://www.hkreform.gov.hk/en/members/archiveslaw.htm" target="_blank">
Archives Law sub-committee</a>.&nbsp; The sub-committees are to &quot;conduct 
detailed reviews of the local situation and comprehensive comparative studies of 
the relevant laws in overseas jurisdictions&quot;. Perhaps they should read the 
Ombudsman's reports, because much or most of this work has already been done, 
and duplicating that effort is a waste of taxpayer's money.</p>
<p>There is no announced schedule for when the LRC sub-committees will report.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=21130">HKSAR Law Reform Commission</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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