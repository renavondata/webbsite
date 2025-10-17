
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

<script type="text/javascript">document.title="SFC action is too little, too late for minority shareholders of Luxey (8041)";</script>

	<div class="summary">The SFC seeks disqualification of 2 ex-directors, but fails to seek any recovery of Luxey's HK$350m, 7-fold overpayment in an acquisition from an alleged nominee of then Chairman Joseph Lau. We first documented this case and numerous other suspicious transactions involving Luxey and other listed companies in a series of articles in 2012. This is the only one to see any action, and it falls far short of what is needed to provide a deterrent.</div>

<h2 class="center">SFC action is too little, too late for minority shareholders of Luxey (8041)<br>
<span class="headlinedate">14 April 2019</span></h2>
<p>On 7-Mar-2019, the SFC <a href="../codocs/SFC190307.pdf" target="_blank">
announced</a> that it is seeking orders from the Court of First Instance to 
disqualify 2 former directors of <a href="../dbpub/articles.asp?p=10770">Luxey 
International (Holdings) Ltd</a> (<strong>Luxey</strong>, 8041), namely
<a href="../dbpub/natarts.asp?p=41817">Joseph Lau Chi Yuen</a> (<strong>Mr Lau</strong>) 
and <a href="../dbpub/positions.asp?p=45005">Chung Man Wai</a> (<strong>Mr Chung</strong>) 
in relation to an acquisition 8 years ago. This is an incredibly disappointing 
step given the level of alleged wrong-doing and the time it has taken to bring 
this action, which follows an investigation by Webb-site.com over 7 years ago. 
Too little, too late. The SFC should have done more, as we shall explain.</p>
<p>Mr Lau was Chairman of Luxey from 2008 until 25-Feb-2019 when he resigned 
"due to his other business commitments". Mr Chung was CEO of Luxey from 2008 to 
30-Jun-2014.</p>
<p>In a 6-part series of articles titled "Raking muck" in 2012, Webb-site 
documented numerous suspicious transactions involving Luxey and other listed 
companies. Luxey was then known as "China Post E-Commerce (Holdings) Ltd" (<strong>CPEC</strong>). 
In <a href="muck2012p2.asp">Part 2</a> of that series on 
27-Feb-2012, we wrote about the
<a href="http://www3.hkexnews.hk/listedco/listconews/gem/2011/0106/gln20110106109.pdf" target="_blank">
acquisition</a> by CPEC on 6-Jan-2011 of
<a href="../dbpub/orgdata.asp?p=1850406">Easy Time Trading Ltd</a> (<strong>Easy 
Time</strong>) from <a href="../dbpub/articles.asp?p=1850400">Big Good 
Management Ltd</a> (<strong>Big Good</strong>), wholly-owned by
<a href="../dbpub/natarts.asp?p=1850401">Frankie Ma Hoi Cheuk</a> (<strong>Mr Ma</strong>), 
for HK$390m. Easy Time owned 99% of <a href="../dbpub/orgdata.asp?p=269134">
Ratio Knitting Factory Ltd</a> (<strong>Ratio</strong>), and Mr Ma owned the 
other 1% directly. We noted that the
<a href="http://www3.hkexnews.hk/listedco/listconews/gem/2011/0310/gln20110310053.pdf" target="_blank">
acquisition circular</a> revealed that Mr Ma only paid HK$50.08m to acquire 
Ratio Knitting in Sep-2010 - so 3 months later, he was flipping it to CPEC at 
about 8 times the price.</p>
<p>We also documented a series of connections between Mr Lau and Mr Ma, 
including internet domain records connecting the two. The article ended with a 
set of 9 questions for investigation by the SFC, only one of which is partially 
addressed by the recent announcement, specifically:</p>
<ul>
	<li>Was Mr Ma really independent when he sold Easy Time, owner of Ratio, to 
	CPEC, for almost 8 times what he paid for it? Are he and Mr Lau, both listed 
	as contacts at JLIC, acting in concert to control CPEC?</li>
</ul>
<p>Over 7 years later, the SFC alleges that:</p>
<ul>
	<li>Mr Lau breached his director’s duties to Luxey (then CPEC) by utilising 
	nominees Big Good and its sole shareholder and director, Mr Ma, who acted on 
	his instructions, to acquire Ratio for HK$50.1m before Ratio (through Easy 
	Time) was resold to Luxey for $390m. Lau allegedly obtained a profit or at 
	least part of such profit – namely, the difference between the $50.1m Big 
	Good paid to acquire Ratio and the substantially higher price of $390m for 
	which Luxey acquired Ratio. He also concealed his secret profit and/or 
	material interest in these transactions (<strong>Scheme</strong>).</li>
	<li>As a result of the Scheme, Luxey was deprived of the opportunity to 
	acquire Easy Time or Ratio at a price substantially lower than the 
	consideration of $390m.</li>
	<li>Mr Chung breached his director’s duties to Luxey by failing to make 
	sufficient enquiries about the relationships among Mr Lau, Mr Ma and Big Good and 
	to take steps to prevent Luxey from acquiring Easy Time at a substantially 
	higher price while knowing or ought to have known that the Scheme, if 
	carried out, would result in a loss to Luxey.</li>
	<li>Mr Lau and Mr Chung were culpably responsible for the publication of 
	false statements in Luxey’s announcement and circular relating to the very 
	substantial acquisition in that Big Good and Ma were not disclosed as 
	non-independent third parties and the transaction was not at arm’s length 
	and the terms of the acquisition were not on normal commercial terms, nor 
	were they fair and reasonable and in the interests of Luxey and its 
	shareholders as a whole.</li>
	<li>Mr Lau and Mr Chung, in their capacity as directors of Luxey at the 
	material time, conducted the company’s business or affairs in a manner 
	involving fraud, misfeasance or other misconduct, resulting in Luxey’s 
	shareholders not having been given all the information as they might 
	reasonably expect</li>
</ul>
<p>In seeking disqualification orders, the SFC will need to satisfy the civil 
standard of proof (the balance of probabilities). Given the serious allegations that the two directors caused 
Luxey to overpay by $350m for Ratio, that Mr Lau made a secret profit, and that 
this amounted to "fraud, misfeasance or other misconduct", we assume that the 
SFC has evidence to support its claims. Why then, don't they go for something 
more meaningful that would actually benefit the minority shareholders of Luxey 
rather than just disqualify the 2 former directors from being directors? For 
most potential fraudsters, the risk of being prohibited from managing a public 
company is not a meaningful deterrent.</p>
<p><strong>In our view, the SFC should also have sought a court order under
</strong>
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s214.html" target="_blank"><strong>
Section 214</strong></a><strong> of the SFO that Luxey should bring an action 
against Mr Lau and Mr Ma seeking recovery of the $350m overpayment, assuming the 
two are not bankrupt. Any recovery would benefit Luxey and its shareholders.</strong> </p>
<p>We wonder whether the SFC is now literally too late to do this though: the 
Limitation Ordinance puts a limit of 6 years on civil claims, but under
<a href="http://www.hklii.hk/eng/hk/legis/ord/347/s26.html" target="_blank">
Section 26</a> of that ordinance, the clock "shall not begin to run until the 
plaintiff has discovered the fraud, concealment or mistake (as the case may be) 
or could with reasonable diligence have discovered it". The SFC must be getting 
close to that point if they haven't passed it already.</p>
<p>There is a precedent for such action. A compensation order under section 214
<a href="../dbpub/artlinks.asp?s=6638">was obtained</a> for the first time by 
the SFC in 2012, following action 
<a href="../codocs/SFC080909.pdf" target="_blank">commenced</a> 
in 2008, following our 3-part investigative reporting in 2002 about transactions 
in 1999-2001 by <a href="../dbpub/articles.asp?p=4978">Styland Holdings Ltd</a> 
(<strong>Styland</strong>, 0211). So that took a while too, but they got there 
in the end. The court ordered that the former Chairman and his wife should pay 
HK$85m to Styland and disqualified both for 12 years.</p>
<p>There are still numerous unanswered questions raised in our 2012 articles 
about other transactions involving Luxey and other listed companies. We're not 
holding our breath waiting for action on those.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1850400">Big Good Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2125219">EASY TIME TRADING LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10770">IntelliMark AI International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=269134">RATIO KNITTING FACTORY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=45005">Chung, Eric Man Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=41817">Lau, Joseph Chi Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1850401">Ma, Frankie Hoi Cheuk</a></li>
				
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