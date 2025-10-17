
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

<script type="text/javascript">document.title="Webb-site Who's Who covers HK solicitors";</script>

	<div class="summary">After a lot of coding over Christmas pudding and more than a dash of brandy butter, we are pleased to launch a new section of our database, monitoring HK lawyers. Now you can answer questions such as: Which are the biggest law firms? Who is the longest-practising solicitor? Who moved jobs this month? How many were admitted in other jurisdictions before or after HK? How many HK solicitors work for the SFC?</div>

<h2 class="center">Webb-site Who's Who covers HK solicitors<br>
<span class="headlinedate">12 January 2018</span></h2>

<p>Many Webb-site users will be familiar with <a href="../dbpub" target="_blank">Webb-site Who's 
Who</a> (<strong>WWW</strong>), HK's leading database on companies, organisations and people. WWW 
includes, amongst other things, all
<a href="../dbpub/leagueDirsHK.asp" target="_blank">HK-listed company directors</a> since 1990 and all 
<a href="../dbpub/SFClicount.asp" target="_blank">SFC-licensed firms</a> 
and people since 1-Apr-2003 when the Securities and Futures Ordinance took 
effect. We also include all members of the
<a href="../dbpub/officers.asp?p=8576&amp;hide=N" target="_blank">HKSAR Election Committee</a> since 
inception in 1996, the 
<a href="../dbpub/officers.asp?p=2287&amp;hide=Y" target="_blank">Executive Council</a>, 
<a href="../dbpub/officers.asp?p=2287&amp;hide=Y" target="_blank">Legislative Council</a>, 
<a href="../dbpub/cat.asp?c=1" target="_blank">District Councils</a> 
since 1999, the <a href="../dbpub/cat.asp?c=72" target="_blank">Judiciary</a>, and the members of all HK 
<a href="../dbpub/cat.asp?c=3" target="_blank">statutory</a> and 
<a href="../dbpub/cat.asp?c=7" target="_blank">advisory</a> 
bodies.</p>
<p>Today, we are pleased to launch coverage and analysis of HK solicitors and 
their firms, using data collected from the
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_firm.asp" target="_blank">
Law List</a> published by the Law Society (which, for the avoidance of doubt, 
has not given us any special access). This was a difficult project programmed by 
your Editor fuelled by a lot of Christmas pudding, given that the Law Society 
web pages do not have consistent identity codes for each lawyer and firm (they 
keep renumbering), also given that surnames and given names are not shown 
separately and names of law firms are often shown back-to-front.</p>
<p>Here is a brief guide to the pages launched today. In each page, click column headings to 
sort the tables.</p>
<ul>
	<li><a href="../dbpub/HKsolfirms.asp" target="_blank">HK law firms</a> lists 
	all firms with their numbers of practising HK solicitors, with tallies of 
	Partners, Assistant Solicitors, Consultants and Sole Proprietors. Currently 
	this shows that the largest law firm is Deacons with 193 professionals. The 
	firm with the most partners is Mayer Brown JSM with 64. There are 892 firms, 
	of which 424 are sole proprietorships and 186 of those have no other 
	solicitors on staff. Between them there are 6,943 positions, although some 
	people hold a position at more than 1 law firm. The top 78 firms by size 
	account for half of the positions.</li>
	<li><a href="../dbpub/HKsolsadmhk.asp" target="_blank">Solicitors in 
	HK law firms by year of admission to HK</a> shows that of the 6,776 
	solicitors in HK law firms, a whopping 507 were admitted as solicitors in 
	2016. By comparison, only 146 admitted in 2006 are still practising in HK 
	law firms. There is of course a survivor bias in these data. Some people 
	leave law firms to work for non-law firms, others simply take time out,&nbsp; 
	move overseas or die. Keep in mind that there are also a lot of solicitors 
	who qualified in other places before being admitted in HK. Still, the data 
	show that half of the current HK lawyers in law firms were admitted since 
	2005. You can also filter by role. For example, if we look at
	<a href="../dbpub/hksolsadmhk.asp?p=1">partners</a> separately, we see that 
	of 2,246 people who are partners in one or more law firm, the largest 
	cohorts are 111 admitted in 1997 and 110 in 1996.</li>
	<li><a href="../dbpub/hksols.asp" target="_blank">Solicitors in HK law firms</a> 
	is a more detailed look, showing every person's role in every law firm. The 
	award for the earliest-admitted person still practising in a law firm goes 
	to Irene Ngan Kit Ling, daughter of the founder of China Motor Bus. She was 
	admitted in Sep-1956, which was over a year before the space age began with 
	the launch of Sputnik in Oct-1957.</li>
	<li><a href="../dbpub/hksolsmoves.asp" target="_blank">Moves in HK law firms</a> 
	shows the 100 most recent "legal moves" detected by our system. These 
	include intra-firm movements such as promotion of an Assistant Solicitor to 
	Partner, or a person who steps down as Partner to become a Consultant, or 
	leaves one firm and/or joins another. The table is sorted by recency. We can't 
	be sure of the exact dates when moves take place, only when we first detect 
	them in the Law List, so we are only showing these to the nearest month 
	unless separately disclosed.</li>
	<li><a href="../dbpub/hksolsadmos.asp">HK solicitors admitted overseas</a> 
	shows which other jurisdictions HK's current lawyers (whether practising or 
	not) have been admitted in, how many in each place, and of those, how many 
	were admitted there before being admitted in HK, or afterwards. 
	Unsurprisingly, 3,402 HK solicitors have been admitted in England &amp; Wales, 
	of whom 40.7% were admitted there before HK. In second place is New South 
	Wales, Australia with 409, of whom 84.6% were admitted there before HK. Of 
	the 69 jurisdictions we found, 19 have only 1 lawyer admitted in HK, 
	including plucky little Nauru, the World's third-smallest state after the 
	Vatican and Monaco. Note that this list does not include "Foreign Lawyers" 
	who work in HK but do not practise HK law. We have found those to be too difficult 
	to automatically track for now. Click on any jurisdiction to see the HK 
	solicitors who were admitted there. For example,
	<a href="../dbpub/HKsolsdom.asp?dom=317">these 24 people</a> have been 
	admitted to the District of Columbia, USA.</li>
	<li><a href="../dbpub/hksolemps.asp" target="_blank">Non-law firms with HK 
	solicitors</a> shows a list of known non-law firms which employ HK 
	solicitors, whether practising or not. Topping the list is the Securities 
	and Futures Commission with 67 (including its CEO), followed by HSBC with 55 
	and HKEX and Standard Chartered currently tied at 30. This list is 
	inherently incomplete, because not all Law Society members report their 
	affiliations. Some who are non-practising probably forget to pay their 
	membership fees and drop off the list altogether but could still return. 
	Others report such a vague employer-name that we cannot identify a relevant 
	legal entity to associate them with in our database. When we find them, they 
	are shown as "Solicitor" in our positions database, but that should not be 
	taken to mean that is their main role at the company involved. They may also 
	be a CEO or CFO for example.</li>
</ul>
<p>The database will be updated regularly, and after a period of time we will be 
able to show time-series data such as the number of solicitors in each law firm 
over time, so we will add those features. In the meantime, if you have any 
additional feature requests, <a href="../contact/">let us know</a>.</p>
<p>We encourage all professional bodies in whose professionals the public 
places its trust to be more transparent with their professional registers. We 
would, for example, like to produce a similar analysis of professional 
accountants, but their affiliations are not published by the HKICPA, so we cannot 
tell you what the headcount, turnover rate or experience of people working at 
audit firms is.</p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10811">LAW SOCIETY OF HONG KONG (THE)</a></li>
				
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