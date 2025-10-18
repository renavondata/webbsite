
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

<script type="text/javascript">document.title="Moses Cheng's appointments";</script>

	<div class="summary">A Government press release claims his appointments comply with the 6-board rule - but we count 8 - and a 9th was quietly dropped. He also finds time to hold down 10 other non-executive directorships.</div>

<h2 class="center">Moses Cheng's appointments<br>
<span class="headlinedate">19 July 2009</span></h2>
<p>Browsing through last week's government press releases, as one does, we 
stumbled across a release on 14-Jul-09 titled &quot;<a target="_blank" href="http://www.info.gov.hk/gia/general/200907/14/P200907140215.htm">Moses 
Cheng's appointments</a>&quot;, which says:</p>
<blockquote>&quot;In response to media enquiries about the number of government 
advisory bodies on which Mr Moses Cheng is serving, a government spokesman said 
today (July 14) that Mr Cheng had been appointed to serve on six government 
boards and committees...His recent appointments are in full compliance with the 
six-board rule.&quot;</blockquote>
<p>Actually a government spokesperson didn't say that, because the spokesperson 
doesn't exist - the Government's spin department just does the &quot;make-believe 
spokesperson&quot; thing when they want to write something in a press release without actually having to produce a real person who might later 
be held accountable and might have to answer difficult questions from 
inquisitive journalists. So whenever you see or hear a report that &quot;a Government 
spokesperson said&quot;, what they almost always mean is &quot;a Government press release 
stated...&quot;</p>
<p>But back to the point - how many Government appointments does Moses Cheng Mo 
Chi hold? Our <a href="../dbpub/positions.asp?p=1053&amp;hide=Y">database will 
tell you</a> that the Government is being economical with the truth. Apart from 
the 6 appointments the Government listed, he is also a Government-appointed 
director of <a href="../dbpub/orgdata.asp?p=9643">Hong Kong Exchanges and 
Clearing Ltd</a> (0388) and the Chairman of the
<a target="_blank" href="http://www.info.gov.hk/gia/general/200905/04/P200905040239.htm">
Ma Wan Park Advisory Committee</a> (otherwise known as the Noah's Ark Advisory 
Committee), to which he was jointly nominated by the Government and the 
developer, Sun Hung Kai Properties Ltd. So that makes 8 appointments by our 
count.</p>
<p>He was also re-<a target="_blank" href="http://www.gld.gov.hk/egazette/pdf/20071135/egn200711355567.pdf">appointed</a> 
on 1-Sep-07 for 2 years as a member of the Aviation Development Advisory 
Committee (<strong>ADAC</strong>), but seems to have stepped down from that, 
although we cannot find any announcement of it. Indeed, the
<a target="_blank" href="http://web.archive.org/web/20080210110915/http:/www.thb.gov.hk/eng/boards/transport/air/adac.htm">
internet archive</a> shows him on the committee &quot;As at 1 September 2007&quot; in a 
web page updated on 3-Dec-07 and captured on 10-Feb-08. But if you look at the
<a target="_blank" href="http://www.thb.gov.hk/eng/boards/transport/air/adac.htm">
live page now</a>, you will see that &quot;As at 1 September 2007&quot; he wasn't there. 
The incredible vanishing Moses - then you see him, now you don't. The erasure of 
his name is the only committee difference between the two versions of the web 
page, which was (according to the page) last updated on 12-Jun-09. That was 2 
days after he was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200906/10/P200906100267.htm">
appointed</a> to Chair the Advisory Committee on Post-office Employment for 
Former Chief Executives and Politically Appointed Officials (<strong>ACPEFCEPAO</strong>). 
There, he replaced <a href="justiceflipflop.asp">Justice Flip-flop</a> 
Pang Kin Kee.</p>
<p>Perhaps the Government took him off ADAC to put him on ACPEFCEPAO, in the 
classic committee-shuffling they do. They only have a small circle of trusted 
people to run these committees, so they are constantly reshuffling them in an 
attempt to stay within their own guidelines of 6-year terms and not more than 6 
committees per person - as soon as someone reaches a term limit on one 
committee, she gets appointed to another.</p>
<p><a target="_blank" href="http://sunzi1.lib.hku.hk/hkjo/view/15/1500654.pdf">
Holy Moses</a> is God's gift to committees - he also manages to hold down 
non-executive directorships at 9 other HK-listed companies in addition to HKEx. 
Those 10 directorships currently put him in joint-5th spot for the largest 
number of directorships of HK-listed companies. And we almost forget to mention 
that he also sits on the board of the manager of Cheung Kong's Fortune REIT in 
Singapore.</p>
<p>Incidentally, if the Government claims that HKEx doesn't count towards the 
quota of appointments, then keep in mind that the government has <em>de facto</em> 
control of the board - only a minority of its directors are elected by 
shareholders (6 out of 13), the Chairman has to be approved by the Chief 
Executive of Hong Kong, and the HKEx Chief Executive (who gets an unelected 
directorship thrown in) has to be approved by the SFC. 
And if they say that Ma Wan Park doesn't count, then keep in mind that the 
HK$700m project was built on Government land (they get a 21-year lease) with 
taxpayer's money, because the cost of it was deducted from the land premium 
which SHKP had to pay for the nearby
<a target="_blank" href="http://www.parkisland.com.hk/">Park Island</a> 
residential project (groovy website music, by the way - it sounds like the
<a target="_blank" href="http://www.youtube.com/watch?v=8jr9hPbYmBo">New Seekers</a> 
on Prozac). Perhaps the Government will also set aside cash and land for Muslim 
and Hindu theme parks, and one for atheists (who probably comprise the 
fastest-growing religion on earth) to even things out.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=39117">HKSAR Advisory Committee on Post-office Employment for Former Chief Executives and Politically Appointed Officials</a></li>
				
				<li><a href="/dbpub/articles.asp?p=28707">HKSAR Aviation Development Advisory Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48956">Ma Wan Park Advisory Committee</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1053">Cheng, Moses Mo Chi</a></li>
				
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