
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

<script type="text/javascript">document.title="Leslie Cheng, Burkes and Turks";</script>

	<div class="summary">It appears that the FRC and HKICPA, in its recent action against Leslie Cheng & Co, missed the elephant in the accounts of Luxey (8041). 6 listed companies are keeping him on board, 3 as chairman of their audit committees. And then there's his doctorate...</div>

<h2 class="center">Leslie Cheng, Burkes and Turks<br>
<span class="headlinedate">16 January 2016</span></h2>
<p>It's not been a good month for accountant
<a href="../dbpub/positions.asp?p=11483">Leslie Cheng Chi Pang</a> (<strong>Mr 
Cheng</strong>), proprietor of Leslie Cheng &amp; Co. On 8-Jan-2016, the HKICPA
<a href="../codocs/HKICPA160108.pdf" target="_blank">announced</a>, in its own 
leisurely way, that 3 weeks earlier a Disciplinary Committee fined him and his 
firm HK$100k and HK$200k respectively in relation to bad work on the
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2010/0326/GLN20100326041.pdf" target="_blank">
2009 audit</a> of the firm's first and only HK-listed audit client,
<a href="../dbpub/articles.asp?p=10770">Luxey International (Holdings) Ltd</a> (<strong>Luxey</strong>, 
8041), formerly known as China-Post E-Commerce (Holdings) Ltd. They must also 
pay costs of $280,788.70, taking the total to $580,788.70. The audit fee was 
HK$500k by the way, so as long as they don't screw up too often, they can afford 
it. HKICPA fines in general, capped at $500k and often just a few thousand 
dollars, are far too small to act as a deterrent.</p>
<p>We wrote a lot about Luxey under its old name in "<a href="muck2012p2.asp">Raking 
muck, Part 2</a>", 27-Feb-2012, questioning the huge valuations on acquisitions 
of 53% of iKanTV Ltd (now Luxey Online Solutions Ltd) and 20% of Info-Source 
Media Ltd.</p>
<p>According to the HKICPA, a complaint was filed with the 
<a href="../dbpub/articles.asp?p=37187">Financial Reporting 
Council</a> (possibly by the SFC or SEHK). The FRC's Audit Investigation Board 
issued a report dated 8-Aug-2013 which was sent to the HKICPA on 17-Sep-2013. 
Incidentally, that FRC/AIB report, like many others, has still not been 
published. Both of the acquisitions are mentioned in the HKICPA disciplinary 
committee's reasons statement, although the case focuses on accounting treatment 
of the shares issued for the deals, rather than the ludicrous valuations of the 
assets acquired.</p>
<h3>Impossible valuation</h3>
<p>The 2009 goodwill impairment test for the acquisitions adopted a 5-year 
cash flow budget followed by a 50% growth rate and a discount rate of just 
1% p.a.. Simple maths: if you extrapolate indefinitely with 
a discount rate less than the growth rate, then you get an infinite valuation - 
each successive year's cash flow has a net present value greater than the 
previous year. Even if the extrapolation was not perpetual, the discount rate 
was not realistic as it was less than the risk-free long-term interest rate at 
the time. Apparently the auditor thought this was reasonable, and the FRC/AIB 
did not question it either. So here's the humongous grey mammoth in that room, <strong>which 
we call on the FRC to investigate</strong>:</p>
<a href="https://www.youtube.com/watch?v=vccYZjRvJ0M" target="_blank">
<img class="center" alt="Mission Impossible!" src="../images/LuxeyDiscount.png"></a>
<p>Mr Cheng was the "engagement quality control reviewer" on the audit, while 
the engagement partner was <a href="../dbpub/natarts.asp?p=2183673">Wong Wing 
Hong</a> (<strong>Mr Wong</strong>), who in December 2013 was
<a href="../codocs/HKICPA131220a.pdf" target="_blank">removed</a> from the 
HKICPA register for 6 months following his conviction for defrauding Toys R Us 
in a refund scam. So Mr Wong was not involved in the latest sanctions.</p>
<h3>Carry on, Mr Cheng</h3>
<p>According to the 2003
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2003/1030/LTN20031030076.htm" target="_blank">
annual report</a> of <a href="../dbpub/articles.asp?p=4937">NWS Holdings Ltd</a> 
(0659), Mr Cheng joined the New World Group in 1992.&nbsp;On 3-Mar-2003, 
following a group reorganisation, he and another person, Tommy Cheung Chin 
Cheung, were both appointed as Chief Executives (but not directors) of
<a href="../dbpub/officers.asp?p=4937">NWS Holdings Ltd</a> (<strong>NWSH</strong>, 
0659). Somewhat confusingly though, there was a third simultaneous Chief 
Executive, Chan Kam Ling, who was appointed as Executive Director and CEO on 
29-Jan-2003. Three Chief Executives, seriously? The 2005
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2005/1028/0659/EWF115.pdf" target="_blank">
directors' report</a> records that Mr Cheng ceased to be a Chief Executive of 
NWSH with effect from 12-Mar-2005. His biography no longer appeared in the 
report. Nowadays he holds himself out as having been "The" definitive Chief 
Executive of NWSH, but it is clear that he was "a" chief executive, one of 2 or 
3 concurrently serving.</p>
<p>Mr Cheng has no less than 6 current directorships of HK-listed companies. Two 
of them are as NED - <a href="../dbpub/articles.asp?p=1833">Build King Holdings 
Ltd</a> (<strong>Build King</strong>, 0240) and
<a href="../dbpub/articles.asp?p=5009">Wai Kee Holdings Ltd</a> (<strong>Wai Kee</strong>, 
0610). Those are a legacy of his New World role, representing their 
shareholding. The other 4 are as INED. He is Chairman of the audit committees of
<a href="../dbpub/articles.asp?p=35079">Fortune Sun (China) Holdings Ltd</a> (<strong>Fortune 
Sun</strong>, 0352), <a href="../dbpub/articles.asp?p=32582">Nine Dragons Paper 
(Holdings) Ltd</a> (<strong>NDP</strong>, 2689) and
<a href="../dbpub/articles.asp?p=34303">Tianjin Port Development Holdings Ltd</a> 
(<strong>TPD</strong>, 3382). He is a member of the audit committee of
<a href="../dbpub/articles.asp?p=30900">China Ting Group Holdings Ltd</a> (<strong>China 
Ting</strong>, 3398).</p>
<p>In the latest year, he was paid HK$168k by Build King, $368k by Wai Kee, 
$153k by Fortune Sun, $487k by NDP, $545k by TPD and $240k by China Ting. Even 
an accountant of his ability will be able to add that up to $1.961m. All six 
companies have now made announcements that they see no impact on Mr Cheng's 
duties from the fact that the HKICPA has fined him and his firm for auditing 
problems. Four of them are apparently happy to keep him chairing or serving on 
their audit committees, despite his adjudged incompetence. As the Disciplinary 
Committee put it, "it is not alleged that anybody suffered any actual loss as a 
result of the incompetent work of the Respondents". So that's alright then!</p>
<h3>Doctor who?</h3>
<p>We've saved the best for last though. You will notice that we've been calling 
him Mr Cheng, but in all 6 companies' reports, he calls himself "Dr Cheng". 
Build King, Wai Kee and NDP each say in their annual reports that he:</p>
<blockquote>"holds...a doctorate degree of philosophy in Business 
Management"</blockquote>
<p>But it doesn't say where from. So we look at TPD, which says in its annual 
reports that he:</p>
<blockquote>"obtained... a Doctorate degree of Philosophy in Business 
Management and a master's degree in business administration from Burkes 
University and Heriot-Watt University in the United Kingdom in 2003 and 1997 
respectively."</blockquote>
<p>Fortune Sun makes a similar claim. Only China Ting discloses that the 
purported doctorate was an "honorary" one, but it doesn't say where from.</p>
<p>There has never been a "Burkes University" in the UK, nor a university for 
berks. Perhaps the operators of this outfit were inspired by Burke's Peerage, 
the book of British <a href="https://en.wikipedia.org/wiki/Toff" target="_blank">
toffs</a>. However, there was an entity claiming to operate from the Turks and 
Caicos Islands (<strong>T&amp;C</strong>), a British Overseas Territory in the 
Caribbean with a resident population small enough to fit into Hong Kong Stadium. 
"Burkes University" once had a web site, captured in the Internet Archive
<a href="https://web.archive.org/web/20021216100307/http://www.burkes-university.org.uk/" target="_blank">
starting 16-Dec-2002</a>, claiming that it was founded in the T&amp;C in 1977 and 
was a "State-Approved Open and Distance Learning University". The "Chancellor" 
was a "<a href="https://web.archive.org/web/20030823154203/http://www.burkes-university.org.uk/chancellor.html" target="_blank">Prof. 
Dr. Solomon Heineken</a>", who probably doesn't exist but we'll buy him a beer 
if he does. </p>
<p>The T&amp;C companies registry is not online so we have been unable to 
check whether a company by that name ever existed. According to Section 3(2) of 
the
<a href="http://www.tciyellowpages.com/templates/jt006_j15/images/tcilegislation/Universities%20And%20Colleges%20Ordinance.pdf" target="_blank">
Universities and Colleges Ordinance of the T&amp;C</a>, 1998 edition, no institution 
shall operate as a university in T&amp;C without a license issued by the Minister of 
Education. Under Section 4(2), anyone who claims to have received a degree from 
such an institution while it was unlicensed is guilty of an offence and liable 
to a fine of $1,000 and imprisonment for 6 months, if they happen to visit the 
T&amp;C, one presumes. Looking at the web archive, we cannot find any claim on the 
site that "Burkes University" had such a licence.</p>
<p>On the web site, "Burkes University" also claimed to be accredited by the 
"Association of Open and Distance Education". You guessed it - that too has a 
defunct web site, the earliest capture in the Internet Archive is
<a href="https://web.archive.org/web/20031206035044/http://www.aode.org/pages/1/index.htm" target="_blank">
on 20-Dec-2003</a>. The last capture is on 31-Aug-2004. We cannot find any other 
trace of it.</p>
<p>So who else holds a doctorate from "Burkes University"? Well, there's "Dr"
<a href="../dbpub/positions.asp?p=17680">Lo Kou Hong</a>, Co-Chairman and 
founder of Lo's Enviro-Pro Holdings Ltd, now known as
<a href="../dbpub/articles.asp?p=17678">Xinhua News Media Holdings Ltd</a> 
(0309) who
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0730/LTN20150730171.pdf" target="_blank">
claims</a> to have been awarded an honorary doctorate degree in Business 
Management in 2003 by Burkes University, the same year as Mr Cheng. There is 
also "Dr" <a href="../dbpub/natperson.asp?p=5038">Angela Ng Wai Yung</a>, a 
senior manager of <a href="../dbpub/articles.asp?p=3436">Neway Group Holdings 
Ltd</a> (0055) and wife of the founder. The 2014
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0428/LTN20150428496.pdf" target="_blank">
annual report</a> claims that she has an "Honorary doctor of philosophy degree 
in Business Management from Burkes University, the British West Indies, United 
Kingdom". She too has been claiming that since 2003.</p>
<p>There are also a handful of Burkes' Honorary Doctors in India - you 
know who you are. Take them off your web site before we identify you.</p>
<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=37187">Accounting and Financial Reporting Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1833">BUILD KING HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30900">CHINA TING GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4937">CTF Services Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=35079">Fortune Sun (China) Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6184">HONG KONG INSTITUTE OF CERTIFIED PUBLIC ACCOUNTANTS</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10770">IntelliMark AI International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32591">Leslie Cheng & Co.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3436">Neway Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32582">Nine Dragons Paper (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=34303">Tianjin Port Development Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5009">WAI KEE HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17678">Xinhua News Media Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11483">Cheng, Leslie Chi Pang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17680">Lo, Kou Hong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5038">Ng, Angela Wai Yung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2183673">Wong, Wing Hong (HKICPA:F06719 / F04543)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=124">Degrees</a></li>
				
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