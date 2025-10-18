
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

<script type="text/javascript">document.title="GP Nanowreck";</script>

	<div class="summary">In this side story to Part 3, we tell you about the convicted criminal who the SFC alleges was behind the IPO of GP Nanotechnology, which was one of the pre-IPO customers of B M Intelligence. We now publish the complaint filed by Webb-site.com in 2002 which triggered the investigation, and ask whether the SFC's action to disqualify directors is sufficient, given the alleged false and misleading disclosures.</div>

<h2 class="center">GP Nanowreck<br>
<span class="headlinedate">23 June 2009</span></h2>
<div class="summary">
This is a side-piece to our <a href="CBRT.asp">story</a> on B M Intelligence, now known as China 
Bio-Med Regeneration Technology (8158).</div>
<ul class="navlist">
	<li><a href="CBRT.asp">Main story</a></li>
	<li><a href="semtech.asp">Semtech</a></li>
	<li id="livebutton">GP Nanotechnology</li>
</ul>
<div class="clear"></div>
<p>As we explain in our main story, <a href="../dbpub/orgdata.asp?p=13754">China Bio-Med 
Regeneration Technology Ltd</a> (<strong>CBRT</strong>, 8158, formerly known as &quot;B M 
Intelligence International Ltd&quot;) was originally in the business of providing 
pre-IPO advice and structuring for companies applying for listing. One of these 
clients was <a href="../dbpub/articles.asp?p=13826">GP Nanotechnology Group Ltd</a> (<strong>GPN</strong>, 
8152, delisted) which was listed on 17-Jul-01, the day before CBRT itself.&nbsp;</p>
<p>Webb-site.com quietly filed a
<a target="_blank" href="../codocs/Complaint021027.pdf">complaint</a> against 
GPN on 27-Oct-02 (which we are now publishing) and this&nbsp;eventually led to 
action by the Stock Exchange and the SFC. Our complaint focussed on the lack of 
explanation surrounding $19.3m of &quot;short-term loans receivable&quot; and &quot;deposits 
made for acquisition of investments&quot; of $14.0m in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020326/e_8152frp-20020326q4.pdf">
2001 annual report</a>, which together amounted to 76% of the IPO proceeds. In 
response, &quot;clarification announcements&quot; were issued on
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030114/GLN20030114012.PDF">
14-Jan-03</a> and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030305/GLN20030305010.PDF">
5-Mar-03</a>. Five months later the stock was suspended, and delisted on 
10-Jun-05.</p>
<p>The clarification announcements mentioned, amongst five suspect transactions, 
that on 2-Jul-01, just after listing, GPN had signed a &quot;consultancy agreement&quot; 
with Global Essence Holdings Ltd (<strong>Global Essence</strong>), to identify 
acquisition targets in the PRC. GPN had made advances of $9.43m to Global 
Essence from Mar-2001 to Dec-2001. Global Essence was 99.9999% owned by Richest 
Resources Ltd, of which 50% was jointly-owned by Mr Cheung Long Chung and Mr 
Cheung Kin Cho.</p>
<p>But that wasn't the whole story. The SFC has since obtained court orders against 
two of the GPN directors disqualifying them from future listed company 
directorships for gross incompetence. The
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=63506&amp;currpage=T">
statement of agreed facts</a> in the case against Mr 
<a href="../dbpub/positions.asp?p=2303">Ong Hong Hoon</a> (<strong>Mr Ong</strong>) on 27-Nov-08 referred to 
the purported controlling shareholder at IPO, Ms 
<a href="../dbpub/natperson.asp?p=16338">Wong Yau Ming</a> (<strong>Ms Wong</strong>), 
the ex-wife of Executive Director Kwong Chun Kau. It said:</p>
<blockquote>
	<p>&quot;Although [Ms Wong] was, on the face of the matter, the 
	ultimate controlling shareholder of the Company, in fact Cheung Long Chung 
	(&quot;Cheung&quot;) was at all material times the real, de facto, controller of the 
	Company. Wong was represented throughout the listing process of the Company By 
	Cheung acting as her &quot;adviser&quot;...</p>
	<p>The executive directors of the Company...at all material times 
	acted, in relation to the business affairs of the company, under or in 
	accordance with the directions or instructions of Cheung, who was neither a 
	director nor a shareholder of the Company.</p>
	<p>Cheung has a criminal record in Hong Kong for offences of 
	false accounting, for which he was sentenced to seven years imprisonment in May 
	1984. Cheung was also a bankrupt who was discharged from bankruptcy in 1999&quot;</p>
</blockquote>
<p>The false accounting conviction which the statement refers to was in relation 
to a licensed Deposit-Taking Company called Current Finance Ltd which was owned 
by Cheung and his wife, which was taking deposits and then lending the money to 
him and his related companies, in breach of the regulations which limit lending 
to directors and related companies of DTCs, using bogus loan agreements with 
stooges to cover it up. When the DTC collapsed in 1983, it owned $37m to 
depositors but had only $7.4m of assets. The details are in the
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=1967&amp;currpage=T">
judgment</a> on his unsuccessful appeal against sentence in 1985.</p>
<p>The statement of agreed facts said that, according to a schedule provided by 
GPN, it had advanced a total of $6.41m to Global Essence by 11-Jul-01, before 
the IPO and before the &quot;consultancy agreement&quot; was signed. The statement also 
said that there was no evidence that Global Essence has ever produced to GPN any 
feasibility reports for acquisitions had been claimed in the announcements. 
Further, it was stated that minutes were produced of a board meeting on 
31-Dec-01 to ratify various transactions, but the board meeting was not actually held.</p>
<p>There was a similar action against Mr <a href="../dbpub/positions.asp?p=14971">Chow Chun Kwong</a> 
(<strong>Mr Chow</strong>), the Finance Director of GPN, who resigned on 
28-Feb-05. He was
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=64225&amp;currpage=T">
banned</a> from serving as a director or manager of a listed company or its 
subsidiaries for 6 years from 20-Feb-09. Incidentally, he was also an INED of <a href="../dbpub/orgdata.asp?p=17410">PME 
Group Ltd</a> (0379) from 23-Sep-02 (before its IPO)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030528/LTN20030528077.pdf">
until</a> 28-May-03.</p>
<p>Both Mr Ong and Mr Chow have agreed as part of their settlement to give evidence 
consistent with the agreed facts in the SFC's applications to disqualify 
three other directors if needed. As far as we know, those cases have yet to be 
heard.</p>
<p>If and when the other directors are prosecuted, based on the statements 
of agreed facts so far, it appears to us that they should be facing charges of false 
and misleading disclosure in the prospectus and the clarification announcements 
(which carry criminal penalties), 
and not merely an action to temporarily prohibit them from being directors. 
Investors deserve better than that.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=13754">China Regenerative Medicine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13826">GP NANOTECHNOLOGY GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=47154">Cheung, Long Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14971">Chow, Chun Kwong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2303">Ong, Hong Hoon</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16338">Wong, Yau Ming</a></li>
				
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