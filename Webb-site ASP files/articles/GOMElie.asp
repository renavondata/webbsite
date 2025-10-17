
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

<script type="text/javascript">document.title="GOME chairman admits: we lied";</script>

	<div class="summary">Electrical retailer GOME, having reached a truce with jailed founder and controlling shareholder Wong Kwong Yu, now puts itself back in the spotlight by Chairman Chen Xiao's confession that it lied to investors in Dec-2008 about the state of affairs of the group. That's a criminal offence. We call on the SFC to investigate. UPDATE: GOME has published a response, which we include with comments.</div>

<h2 class="center">GOME chairman admits: we lied<br>
<span class="headlinedate">22 November 2010</span></h2>
<h3>The story so far</h3>
<p>Back in September, we <a href="gomemandate.asp">wrote</a> about 
the battle for control of
<a href="../dbpub/orgdata.asp?p=4786">GOME Electrical Appliances Holding Limited</a> 
(<strong>GOME</strong>, 0493). Shareholders voted the way we recommended, and 
the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100928/LTN20100928613.pdf" target="_blank">
result</a> was that:</p>
<ul>
	<li><a href="../dbpub/positions.asp?p=15217">Wong Kwong Yu</a> (<strong>Mr 
	Wong</strong>, a.k.a. Huang Guangyu, f.k.a. Wong Chun Kit) was unsuccessful 
	(48:52) in replacing the Chairman
<a href="../dbpub/positions.asp?p=30041">Chen Xiao</a> (<strong>Mr Chen</strong>) 
	and an executive director with his lawyer Mr Zou Xiao Chun (<strong>Mr Zou</strong>) 
	and his sister Ms Huang Yan Hong (<strong>Ms Huang</strong>);</li>
	<li>GOME was successful (55:45) in re-electing the directors nominated by 
	Bain; and</li>
	<li>Mr Wong was successful (55:45) in revoking the general mandate to 
	issue shares without first offering them to existing shareholders</li>
</ul>
<p>Prior to the meeting, Bain converted its bonds into shares and now holds 
9.98% of GOME (not 11.06% - it used the wrong denominator in
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=143335&amp;lang=EN&amp;dia=Y" target="_blank">
its filing</a>).</p>
<p>With a vote that close, clearly the matter was not over, and there was a 
peace to be found. Otherwise, Mr Wong could have continued requisitioning SGMs 
in the hope of getting lucky. Plus, it makes sense for GOME to sit down with Mr 
Wong's representatives and negotiate an injection of the remaining stores 
operated by Mr Wong's private business into GOME, at a price which other 
shareholders, including Bain, can support. That part has not yet happened, but 
on 10-Nov-2010, GOME
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101110/LTN20101110689.pdf" target="_blank">
announced</a> a truce in which Mr Zou will be appointed as an ED and Ms Huang as 
a NED. First they have to enlarge the maximum number of directors from 11 to 13, 
but that should be a formality
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101116/LTN20101116464.pdf" target="_blank">
at the SGM</a> on 17-Dec-2010.</p>
<h3>Mr Chen's confession</h3>
<p>Now, word reaches us from Beijing of an altogether more serious matter, in 
the form of a research report by Matthew Forney's
<a href="http://www.fathomchina.com/" target="_blank">Fathom China Ltd</a>, for
<a href="http://www.gavekal.com/" target="_blank">GaveKal</a>
<a href="http://www.dragonomics.net/" target="_blank">Dragonomics</a>. As we 
said in our article of 7-Sep-2010:</p>
<blockquote>On 10-Dec-2008... GOME reported that &quot;the business, 
operations and relationship with its suppliers has remained normal&quot;. That's 
interesting, because the GOME management now claims in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100823/LTN20100823399.pdf" target="_blank">
SGM circular</a> that there was a &quot;sudden withdrawal of credit facilities&quot; and 
an &quot;acceleration of payment demands by suppliers&quot; which &quot;occurred following the 
arrest and conviction of Mr. Wong&quot;... Similarly, in two letters to 
shareholders published in newspapers on 26-Aug-2010 and 30-Aug-2010, letters 
which GOME has failed to file with HKEx, it states that following Mr Wong's 
arrest, &quot;relations with banks and suppliers were strained almost to breaking.&quot;</blockquote>
<p>In the Fathom China profile on GOME, the researcher asked the Chairman, Mr 
Chen, about these conflicting statements. The report quotes him as saying:</p>
<blockquote>&quot;In fact, the impact was big. I think anybody in that 
situation would have said the same thing. If we'd said what was really 
happening, it would have caused a bigger panic... But we weren't directing those 
comments to our shareholders. They were directed more to our partners, like 
brands and suppliers. There was absolutely a problem, but if you go out and say 
there's a problem, then everybody would be worried.&quot;</blockquote>
<p>There you go. Mr Chen admits that GOME lied when it told investors, in an
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20081210/LTN20081210430.pdf" target="_blank">
announcement</a> filed with the regulators, that the business, operations and 
relationship with its suppliers had remained normal. Mr Chen was CEO and acting 
Chairman at the time of the announcement, and says that he knew it was a lie. It 
is absolutely unacceptable for listed companies to lie in public statements, and 
it is an offence under
<a href="http://www.hklii.org/hk/legis/en/ord/571/s298.html" target="_blank">
Section 298</a> of the Securities and Futures Ordinance,
<a href="http://www.hklii.org/hk/legis/en/ord/571/s303.html" target="_blank">
punishable</a> on indictment by a fine of up to $10m and 10 years in jail. A 
subsequent claim that investors were not supposed to read those statements is no 
defence. Webb-site calls on the SFC to investigate.</p>
<p>Mr Chen wasn't the only member of the board and management who knew how bad 
things were from November 2008 onwards. A video prepared during the shareholder 
battle last August says it all:</p>
<div class="videobox">
<iframe src="https://www.youtube.com/embed/xBxuFa6trsM?rel=0" allowFullScreen></iframe>
</div>
<p>While on the subject of false and misleading statements about a company's 
condition, isn't it about time we saw some charges in the
<a href="../dbpub/articles.asp?p=379">CITIC Pacific</a> case?</p>
<h3>Update, late on 22-Nov-2010:</h3>
<p>Tong Zhao, a director of GOME's public relations firm Brunswick Group Ltd, 
writes &quot;here are the official lines we'll use for media, for 
your information&quot;:</p>
<div class="letterbox">
<p><strong>Responding to comments on Webb-site, referring to a 
Fathom China report on GOME, a GOME spokesperson said:</strong></p>
<p>"In what we believed to be a casual conversation with someone who was writing a report on 
the company and industry, we talked broadly and informally about a period two 
years ago. There is no contradiction in fact between our public statements on 
this matter which we stand by.</p>
<p>On December 10th 2008, a few weeks after 
Mr. Wong's arrest, <strong>the company correctly stated that business and supplier 
relationships remained normal [emphasis added]</strong>. In letters in August 2010 we did indeed talk 
about the credit crunch that came from the sudden withdrawal of credit 
facilities.</p>
<p>This is explained in our presentation to investors also of 
August 2010, where GOME highlighted the steep fall in net credit available. This 
is reflected in public filings at year end 08 and H1 09, showing decline from a 
"normal" level of 3,646 million RMB at Q4 2008 to 2,033 million at Q2 2009.</p>
<p>Mr. Chen in no way meant to imply that what we said on December 10 2008 was 
inaccurate, and point of fact it was not."</p>
</div>
<p>The company's claim tonight that everything was normal on 10-Dec-2008, weeks after Mr 
Wong was arrested, is unfortunately contradicted by the company's own 
statements, made in the video shown above. Sometimes, when you are in a hole, it 
is best to stop digging.</p>
<p>The English subtitles make the 
situation in November and December 2008, including the date of the announcement, very clear:</p>
<blockquote>Chen Xiao, Chairman:
<blockquote>&quot;At the end of 2008, <strong>when Mr Wong's incident took place and he 
was detained</strong> by the Chinese government our company was severely affected. The 
incident put the company under tremendous pressure.&quot;</blockquote></blockquote>
<blockquote>Wang Junzhou, President:
<blockquote>&quot;The company's <strong>immediate</strong> liquidity shortage as 
many banks stopped providing or reduced loans to GOME.&quot;&quot;</blockquote></blockquote>
<blockquote>Fang Wei, Director of Finance:
<blockquote>&quot;Most of the banks that had been cooperating with us <strong>
immediately </strong>stopped extending credit lines to us. We originally had a 
credit line of about 6 billion but <strong>within a week</strong>, it shrank down to 1 billion. 
Our cash position at the time was only about 3 billion. We were facing an 
estimated 5 billion capital shortage. Funds were very tight.&quot;</blockquote></blockquote>
<blockquote>Mu Guixian, Vice President:
<blockquote>&quot;The company's crisis came as a big shock to our suppliers. 
They became uneasy and panicky. They were cautious when supplying to GOME.&quot;</blockquote></blockquote>
<blockquote>Sun Yiding, Vice President:
<blockquote>&quot;The problems <strong>exploded in November 2008</strong> 
causing great deal of difficulties to the company against the macro environment. 
The founder's incident caused instability with our relationships with suppliers, 
banks and our employees. The series of events no doubt caused immense 
difficulties to us.&quot;</blockquote></blockquote>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=379">CITIC Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4786">GOME Retail Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=30041">Chen, Xiao (1958)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15217">Wong, Kwong Yu</a></li>
				
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