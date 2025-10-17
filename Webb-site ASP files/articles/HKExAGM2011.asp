
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

<script type="text/javascript">document.title="HKEx adopts VAMPIRE mandate";</script>

	<div class="summary">Webb-site is pleased to note that HKEx, seeking its first general mandate in 7 years, is now complying with VAMPIRE limits of 5% issued for cash and a maximum 5% discount. Having set an example, SEHK should now amend the Listing Rules and bring the market up to international best practice. HKEx has also unbundled amendments to the Articles of Association, and is not repeating last year's fiasco.</div>

<h2 class="center">HKEx adopts VAMPIRE mandate<br>
<span class="headlinedate">29 March 2011</span></h2>
<p>Long-time readers will recall the launch in 2003 of our ongoing campaign to 
cut the general issue mandate, in the form of Project VAMPIRE - Vote Against 
Mandate for Placings, Issues by Rights Excepted. This is the
<a href="../dbpub/subject.asp?c=173">battle for pre-emptive rights</a> in HK - if 
a company needs to issue shares for cash, then it should offer the discounted 
shares to all shareholders in a rights issue, rather than transferring the value 
of that discount to chosen investors, diluting existing owners in terms of both 
value and voting rights, without their consent.</p>
<p>VAMPIRE calls for investors to vote against general mandates unless:</p>
<ul>
	<li>the mandate to issue shares for cash, other than by a rights issue, is 
	for not more than 5% of the outstanding shares at the time of the mandate; 
	and</li>
	<li>the discount for shares issued other than by a rights issue does not 
	exceed 5%; and</li>
	<li>the total mandate, including non-cash issues, such as shares issued to a 
	vendor in an acquisition, can remain up to 20%.</li>
</ul>
<p>Also in 2003, our <a href="../dbpub/subject.asp?c=172">Project Poll</a> 
forced the blue chips to start counting their votes properly (one vote per 
share, rather than on a show of hands), and we were then able to show how 
investors have been voting on the mandate. Poll voting finally became mandatory 
for all HK-listed companies on 1-Jan-2009. On average, investors
<a href="vampireproven.asp">vote more than 2 to 1 against</a> the 
mandate. The mandate only gets approved because of the votes of a controlling 
shareholder who elects the entire board which proposes the mandate in the first place.</p>
<p>In 2004, <a href="../dbpub/orgdata.asp?p=9643">Hong Kong Exchanges and 
Clearing Limited</a> (<strong>HKEx</strong>, 0388) went ahead with its usual 
request for a full 20% placing mandate and
<a href="hkexbeavampire.asp">almost lost</a> the vote, by 53:47. 
Your editor was an elected independent non-executive director of HKEx at the 
time, and opposed the mandate. Until now, that was the last time they asked for 
a mandate. HKEx is an unusual animal in that although the Government only owns 
about 5.8% of it, shareholders can only elect 6/13 of the board, with the rest 
appointed and approved by Government. So the Government controls the board, but 
shareholders call the shots on the general mandate.</p>
<p>This year, for the first time in 7 years, HKEx is seeking a general mandate.
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110316/LTN20110316317.pdf" target="_blank">
Click here</a> for the circular. Webb-site is pleased to note that the proposal 
complies with the requirements of Project VAMPIRE - HKEx is seeking approval to 
issue up to 5% new shares for cash, up to 10% new shares in total (including 
non-cash issues) and a discount limit of 5%. Investors should vote in favour of 
this proposal, Resolution 6.</p>
<h3>Now reform the mandate Listing Rules</h3>
<p>A 100% subsidiary of HKEx, The Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>), 
makes the Listing Rules, including the rules on the maximum allowed placing 
mandate - currently 20%, with a discount limit of 20% except in &quot;exceptional 
circumstances&quot;. In early 2008, SEHK consulted the market on tightening the 
general mandate, but <a href="issuemandate.asp">dropped the proposal</a> 
in Oct-2009, citing &quot;current facts and circumstances&quot;. </p>
<p>Now that its parent, HKEx, has set an example by adopting a VAMPIRE-compliant 
general mandate, SEHK should look again at reforming the Listing Rules and cutting the general 
mandate for all listed companies. The standards for pre-emptive rights were
<a href="http://www.pre-emptiongroup.org.uk/" target="_blank">set 
in the UK in 1987</a>. Almost a quarter of a century later, it is about time 
that HK caught up and stopped allowing directors of HK-listed companies to pick 
and choose shareholders, diluting existing shareholders against their 
will.</p>
<h3>Proposed changes to Articles</h3>
<p>Webb-site is also pleased to note that there is no repeat of last year's
<a href="HKExAGM2010.asp">outrageous proposal</a> to allow the 
passing of written board resolutions with the signature of a majority of 
directors, i.e. a paper board meeting without debate. Investors (excluding the 
Government) <a href="HKExresult2010.asp">voted that down</a> by 
70:30. We also note that HKEx has this year divided proposed changes to its 
Articles of Association into 3 separate resolutions on separate issues rather 
than bundling them all together as it did last year, which was in breach of
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/appendix_14.pdf" target="_blank">
Code Provision E.1.1</a>. Shareholders should vote in favour of the proposals, 
Resolutions 8, 9 and 10. 
We note that in paragraph 257 of SEHK's recent
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2010124.pdf" target="_blank">
consultation paper</a> on corporate governance aspects of the Listing Rules, it 
said:</p>
<blockquote>&quot;If resolutions are &quot;bundled&quot; there is a possibility that the 
significance of a resolution may be hidden from shareholders by less 
controversial resolutions in the same bundle. For example a resolution on a 
controversial matter on a change to an issuer's articles of association may be 
bundled with several uncontroversial administrative amendments on the same 
subject.&quot;</blockquote>
<p>Lesson learned!</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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