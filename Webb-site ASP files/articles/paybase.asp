
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://webb-site.com/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="../index.html" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="https://webb-site.com/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="https://webb-site.com/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="https://webb-site.com/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
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
			<form class="box4b" method="post" action="https://webb-site.com/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="https://webb-site.com/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="https://webb-site.com/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="https://webb-site.com/dbpub/orgdata.asp" method="get" name="f1">
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
		<li><a href="../index.html">Home</a></li>
		<li><a href="https://webb-site.com/dbpub/">Database</a></li>
		<li><a href="https://webb-site.com/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="https://webb-site.com/webbmail/login.asp">Log in</a></li>
				
				<li><a href="https://webb-site.com/webbmail/join.asp">Sign up</a></li>
				<li><a href="https://webb-site.com/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
		<li><a href="https://webb-site.com/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="https://webb-site.com/pages/howtovote.asp">How to vote</a></li>
				<li><a href="https://webb-site.com/library/">Reference library</a></li>
				<li><a href="https://webb-site.com/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/vote/">Polls</a></li>
		<li><a href="https://webb-site.com/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="https://webb-site.com/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="https://webb-site.com/HAMS/">HAMS proposal</a></li>
				<li><a href="https://webb-site.com/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="PECSregister.asp">PECS register</a></li>
				<li><a href="https://webb-site.com/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="https://webb-site.com/books/">Webb-Books</a></li>
				<li><a href="https://webb-site.com/news/">Old newsletters</a></li>
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="https://webb-site.com/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="https://webb-site.com/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/pages/about.asp">About</a>
			<ul>
				<li><a href="https://webb-site.com/pages/aboutus.asp">About us</a></li>
				<li><a href="https://webb-site.com/photos/">Webb-Photos</a></li>
				<li><a href="https://webb-site.com/pages/mediaroom.asp">Media room</a></li>
				<li><a href="https://webb-site.com/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/contact/">Contact</a></li>
		<li><a href="https://webb-site.com/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="https://webb-site.com/pages/hkradio.asp">Radio</a>
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
		<li><a href="https://webb-site.com/pages/TV.asp">TV</a>
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

<script type="text/javascript">document.title="Help maintain the Webb-site Database";</script>

	<div class="summary">We are commencing the transition of the Webb-site Database to a crowd-sourced model. Whether it survives our Founder's doom depends on whether you, the users, are willing to volunteer your time, in a "Webbipedia" crowd-sourcing of corporate data. So please get involved, and you may get a free lunch at the end of the year.</div>

<h2 class="center">Help maintain the Webb-site Database<br>
<span class="headlinedate">19 May 2024</span></h2>
<p>Dear User,</p>
<p>I have now survived 4 years since my <a href="editor200608.asp">cancer diagnosis</a> and while I am still 
relatively well, my treatment options are narrowing and I would be seriously impressed if I get another 4. I could also 
worsen the HK budget deficit as I will qualify for nearly-free public transport from 29-Aug-2025. I live and breathe 
to be 60.</p>
<p>So now I am working on plans to allow the <a href="https://webb-site.com/dbpub/">Webb-site 
Database</a> to continue after my death, failing which, it will shut down when I do. Today, I am launching the pilot project in that plan, to crowd-source 
manual data collection. If you each volunteer a small amount of time, you should all benefit from the result for a long 
time to come. Think of it as a sort of Webbipedia for corporate data. You've been enjoying all my <em>pro bono</em> work 
for free since 1998, but whether Webb-site continues is up to you. If we get enough volunteers then we can expand the 
crowd-sourcing to handle other parts of the database, such as tracking the changes in <a href="https://webb-site.com/dbpub/roles.asp">
auditors and corporate lawyers</a>. Anything that cannot be automated.</p>
<p>I've recently built a new "Board Pay" feature for the database, to collect the pay of directors and supervisors of all 
HK-listed companies since mandatory disclosure on a named basis began for
<a href="https://www.hkex.com.hk/-/media/HKEX-Market/News/News-Release/2004/0401303news/0401304news.pdf" target="_blank">
years starting 1-Jul-2004 or later</a>. At the end of 2005,
<a href="https://webb-site.com/dbpub/listingtrend.asp">there were</a> 1,134 companies with primary listings in HK and now there are 2,591. 
With these data, we could output pages of analysis of trends in pay, amounts paid to so-called independent directors 
(aggregated across all their directorships), total board pay as a percentage of market cap, highest and lowest-paid 
boards, and so on. Are investors getting value for money? Let's find out. But first, we need a complete dataset.</p>
<p>The pay is disclosed in annual accounts, in tables of various formats in PDF documents. As far as we know, the 
only <em>accurate and reliable</em> way to extract the data is by hand. We'll make it easy though. Our editing system 
has hyperlinks to every annual report, and our directorships database goes all the way back to 1990 (over 33 years), so 
all you have to do is find the right page and transcribe the data against a short list of possible names.</p>
<p>We've been testing this system with a small group of volunteer editors over the last few weeks, refining it along the 
way. During that time, we have processed a few hundred reports. Each report takes around 3-4 minutes once you're 
familiar with the system.</p>
<p>You might wonder why the data are not filed in machine-readable
<a href="https://www.xbrl.org/the-standard/what/what-is-xbrl/" target="_blank">XBRL format</a>, like SEC filings in the 
USA and 64 other countries. The HK <a href="https://webb-site.com/dbpub/pay.asp?p=503">Securities and Futures Commission</a> (SFC) did establish an industry-wide 
<a href="https://www.sfc.hk/-/media/doc/EN/speeches/public/quartely/apr_jun05.pdf#page=10" target="_blank">XBRL 
Preparatory Working Group</a>, but that was in the first half of 2005, so it would now be 19 years old and presumably died 
in infancy. The SFC last mentioned it in the Mar-2006 annual report.</p>
<h3>Volunteer to be an editor, win a free lunch</h3>
<p>So, please volunteer to edit the Webb-site database and make a contribution to corporate transparency in HK! You can get started 
within minutes. If you don't already have a Webb-site user account, <a href="https://webb-site.com/webbmail/join.asp">sign up at this link</a> 
(you will need to verify your email address), 
then <a href="https://webb-site.com/webbmail/username.asp">pick a username</a> and click the "Volunteer" button. You will then 
automatically have access to the board pay editing system.</p>
<p>We don't collect your real name or any personal data. You can choose any username that you like if 
it isn't already taken. Usernames are only displayed within the editing system, not on the public pages.</p>
<p>After an editor has submitted the pay data for 1 company-year, if another editor agrees with it, then it will be 
automatically published without any intervention from Webb-site staff. The most active editors (shown in a league table 
in the editing site) will be promoted in rank 
and be able to correct the work of others.</p>
<p>And there's one more thing: at the end of this year, I will invite the top 2 editors (by number of reports submitted) 
to lunch with me at the Hong Kong Club, if I am medically able. So get to it!</p>
<p>David M. Webb</p>
<p>Founder, Webb-site.com</p>
<p><em>&copy; Webb-site.com, 2024</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
		</ul>
	<hr>
<p><a href="https://webb-site.com/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="https://webb-site.com/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="https://webb-site.com/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="paybase.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>