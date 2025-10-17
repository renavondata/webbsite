
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

<script type="text/javascript">document.title="The coming end of Webb-site";</script>

	<div class="summary">Unfortunately, there are going to be some more changes around here. Our founder explains why. Updated 17-Mar-2025: thanks for all the good wishes and stand by for a data and software dump.</div>

<h2 class="center">The coming end of Webb-site<br>
<span class="headlinedate">12 February 2025</span></h2>
<p class="revisedate">Updated 17-Mar-2025</p>
<p>Dear Readers,</p>
<p>When I <a href="editor200608.asp">disclosed</a> my metastatic prostate cancer in Jun-2020, I didn't 
expect to live as long as I now have - the
<a href="https://www.hopkinsmedicine.org/health/conditions-and-diseases/prostate-cancer/prostate-cancer-prognosis" target="_blank">
5-year survival</a> (which I am now approaching) is about 30%. However, after exhausting 4 lines of therapy and 
resorting to experimental treatments that are only available overseas, I have now reached the point where outcomes are 
measured in months rather than years and my symptoms and side-effects are making it harder to function. I hope to reach 
60 in August and all I want for my birthday is another one, but before I become more dysfunctional, I need to make plans 
for the orderly conclusion of this pro bono, loss-making work rather than leave managing it as a burden for my family. 
One of the few benefits of knowing that you're dying is being able to plan the end on your own terms.</p>
<p>The <a href="https://webb-site.com/dbpub">Webb-site Database</a> has grown over the years to include an enormous amount of material. 
Much of it is collected by automated methods - I kept up my coding skills from the 1980s when I wrote books and games 
for the first generation of home computers. But even in the dawning era of artificial intelligence, there are some 
datasets which (so far) can only be accurately maintained by human judgment, for example, carefully parsing corporate 
announcements to determine which individual has been appointed to a board, as many individuals share the same name and 
no ID numbers are disclosed. Similarly, we track the membership of over 800 HK <a href="https://webb-site.com/dbpub/cat.asp?c=3">statutory</a> 
and <a href="https://webb-site.com/dbpub/cat.asp?c=7">advisory</a> bodies - everything from the Executive and Legislative Councils down to 
the Dogs and Cats Classification Board.</p>
<p>So a loyal assistant whom I have employed for 22 years has been maintaining anything that I can't automate. All-in, 
I've spent over HK$10m since 2003 building and operating the database, not counting the considerable opportunity cost of 
my own time. I know that the database has been useful to journalists, regulators, researchers and of course investors, 
as they have often told me so.</p>
<p>A lot has happened since my cancer diagnosis, which came just after HK quarantined its borders for COVID. Since then, 
I deciphered the pseudo-disclosure on who received over HK$90bn of hand-outs under the so-called
<a href="https://webb-site.com/dbpub/esstop.asp">Employment Support Scheme</a>, draining a substantial portion of HK's fiscal reserves. I 
also tracked <a href="https://webb-site.com/dbpub/vax.asp">vaccination rates</a>, <a href="https://webb-site.com/dbpub/hkpax.asp">immigration data</a> and
<a href="https://webb-site.com/dbpub/HKflightscan.asp">airport flight statistics</a>, which we continue to collect. I've also been 
collecting data on <a href="https://webb-site.com/dbpub/jail.asp">HK prisoners</a>, a record 39% of whom (at 30-Sep-2024) are unconvicted 
and on remand - presumed innocent under law. And I've built a complete history of the <a href="https://webb-site.com/dbpub/govac.asp">HKSAR 
Government Accounts</a> from Apr-1998 to Mar-2024, with thousands of line items. Of course, I've also made more time for 
family, and managed to visit numerous places after the borders reopened. The bucket list is still long, but time is 
short. </p>
<p>In 2020, I did explore moving the Webb-site Database to the University of Hong Kong (our oldest university), where a 
fully-staffed "Webb Centre for Public Transparency" could build a much larger database around it, including datasets 
from PhD researchers on social, economic, health and legal matters in the Asia region. The Centre would have been 
apolitical, expressing no opinion other than to advocate accessibility of public data, and would have included 
representation from other HK universities to encourage collaboration. I and other donors would have made substantial 
contributions to the endowment needed to launch it. The relevant faculty heads were all in favour, but in a 
post-National Security Law environment, the detailed proposal was rejected by the university's "Senior Management Team". 
You can draw your own conclusions about why that might be.</p>
<p>In 2024, I <a href="paybase.asp">launched</a> a pilot project to crowd-source data collection on HK 
directors' pay from annual reports stretching back to 2005. After an initial flurry of interest, a handful of diligent 
volunteers continue with this work, but it is clear to me that this is not a viable way to expand the data collection 
effort to other datasets that we manually maintain. Even if it were, someone would have to maintain the server and 
software and arbitrate disputes.</p>
<p>So that leaves me out of options and nearly out of time. Accordingly, I plan the following steps:</p>
<ol>
	<li>All manual data collection by my assistant on <a href="https://webb-site.com/dbpub/#hkboards">directors</a> and supervisors of HK-listed 
	companies and their <a href="https://webb-site.com/dbpub/roles.asp">advisers</a> (bankers, lawyers, auditors, financial advisors etc) 
	will cease, effective 31-Mar-2025.</li>
	<li>The directors' pay database project will continue for financial year-ends up to 31-Dec-2024 (the Listing Rules 
	deadline for publishing the annual reports is 30-Apr-2025). I ask the volunteers to focus on completing and 
	verifying the dataset from 2005 to 2024. I will then make the full dataset available for download.</li>
	<li>Automated data collection (for example, the <a href="https://webb-site.com/ccass/bigchanges.asp">CCASS Analysis System</a>,
	<a href="https://webb-site.com/dbpub/SFClicount.asp">SFC licensees</a>, <a href="https://webb-site.com/dbpub/hksolfirms.asp">HK law firms</a>) will 
	continue until the first annual expiry date (31-Oct) for the Webb-site server (in New York State) after my death, 
	but individual datasets may cease earlier if the collection software breaks and I am either dead or too ill to 
	update it.</li>
	<li>When the server shuts down, Webb-site (including all the <a href="index.html">editorial content</a> since 
	foundation in 1998) will disappear, but most of our articles can be found in the
	<a href="https://web.archive.org/web/20250000000000*/Webb-site.com" target="_blank">Internet Archive</a>, which will 
	hopefully keep running for much longer.</li>
</ol>
<p>Webb-site and I have, in my judgment, achieved a lot of what I set out to do when I founded it in 1998, but much remains 
unresolved and new economic problems have arisen in HK since then, particularly arising from excessive central planning, 
intervention and government spending in what was once a very free market economy, but also ongoing protection of vested 
interests which inhibits reforms that would benefit the economy and the people of HK. Much of this is in the <a href="index.html">
subject archive</a>, but I'll try to leave behind some thoughts on this with a few more articles before I check out, 
health permitting.</p>
<p><em>Carpe diem, and Ga Yau!</em></p>
<p>David M Webb<br>Founder, Webb-site.com</p>
<h3>Update, 17-Mar-2025</h3>
<p>First, I've been overwhelmed by the thousands of people who have taken the time to 
send me tributes and good wishes by email and social media since this announcement. 
Some of them have moved me to tears. While I 
don't have time to respond to everyone individually, I want you to know that each one of 
them means a lot to me and for my family to know how much my work has meant to others.</p>
<p>I have also received over 100 requests and offers to take forward 
Webb-site.com Reports, the Webb-site Database and its mission to enhance 
corporate and economic governance and public transparency in some way. I guess 
I've been doing something right since 1998. Well, I won't allow anyone to carry 
on Webb-site.com itself, because I would not want it potentially polluted or 
corrupted with clickbait, crypto-scams or worse, or used to advocate something 
of which I would not have approved. The editorial side of it has to die with me.</p>
<p>However, the Webb-site Database is a different matter, and as my final 
gift to the public interest, I plan to leave all of it, together with my self-developed collection software, in a public repository, so that 
everyone who is interested now or in the future can take it forward. I won't be 
liable for what you do with it, and it will be under the
<a href="https://creativecommons.org/share-your-work/cclicenses/" target="_blank">
Creative Commons CC-BY licence</a>, a wide licence which allows 
commercialisiation and only requires attribution for the foundational database. 
It is my hope that at least one public-interest entity will see merit in 
continuing to collect data and make it freely available. Before I do this, I 
will need to clean out certain internal data that I have never made public, but 
I hope to get a first dump done in April, health permitting.</p>
<p><em>&copy; Webb-site.com, 2025</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=11118">UNIVERSITY OF HONG KONG (THE)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=35">Immigration</a></li>
				
		</ul>
	<hr>
<p><a href="https://webb-site.com/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="https://webb-site.com/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="https://webb-site.com/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="shutdown.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>