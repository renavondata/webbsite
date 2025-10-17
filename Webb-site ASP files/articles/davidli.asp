
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

<script type="text/javascript">document.title="Resign, Mr Li";</script>

	<div class="summary">Early today HK time, avoiding local press coverage, the US SEC announced David Li's HK$63.2m settlement of charges of insider tipping  in the Dow Jones case. We call on him to do the honourable thing and resign as a member of Hong Kong's cabinet and legislature.</div>

<h2 class="center">Resign, Mr Li<br>
<span class="headlinedate">6 February 2008</span></h2>
<p class="center"><strong><a target="_blank" href="../vote/result.asp?p=21">Opinion poll 
results</a> </strong></p>
<p>With almost perfect timing (if you are a defendant), the United States 
Securities and Exchange Commission early this morning Hong Kong time
<a target="_blank" href="http://www.sec.gov/news/press/2008/2008-11.htm">
announced</a> that it had charged David Li Kwok Po (<strong>Mr Li</strong>), a 
former director of <a target="_blank" href="http://www.dowjones.com/">Dow Jones 
&amp; Company, Inc.</a> and reached a settlement with him in the case. The 
announcement came too late to catch this morning's newspapers, most of which 
will not publish on Thursday or Friday due to the Chinese new year holidays. </p>
<p>Mr Li was charged with illegally tipping off close friend Michael Leung Kai 
Hung (<strong>Mr Leung</strong>) who, through his daughter Charlotte Leung Ka On 
and her husband Wong Kan King (<strong>Mr Wong</strong>), then allegedly engaged 
in illegal insider dealing, buying 415,000 Dow Jones shares worth US$15m before 
the announcement of the takeover offer by Rupert Murdoch's News Corp. They stood 
to make a profit of US$8m if they had not been caught. The SEC also charged that 
Mr Wong bought 2,000 Dow Jones shares for his own account, with a potential 
profit of US$40k. </p>
<p>As is customary in such settlements, without denying or admitting the 
allegations, Mr Li agreed to pay a civil penalty of US$8.1m (HK$63.2m), Mr Leung 
agreed to pay US$8.1m in disgorgement of profits plus a penalty of US$8.1m, and 
Mr Wong agreed to pay US$40k in disgorgement plus a penalty of US$40k. In Mr 
Li's case, the settlement is more than twice his 2006 remuneration of HK$27.0m 
(US$3.47m) as Chairman and CEO of <a target="_blank" href="http://www.hkbea.com">
The Bank of East Asia, Limited</a> (<strong>BEA</strong>, 0023).</p>
<p>The
<a target="_blank" href="http://www.sec.gov/litigation/complaints/2008/comp20447.pdf">
full complaint</a> in this case makes fascinating reading. Start on page 7 at 
paragraph 26 for the details. According to the SEC, Mr Li, as a non-executive 
director of Dow Jones, learned of News Corp's $60 per share offer on the evening 
of 12-Apr-07, HK time, and the next morning, Fri-13-Apr-07, Mr Li and Mr Leung 
travelled together on a flight to Shanghai, during which Mr Li tipped off Mr 
Leung. Soon after arriving in Shanghai, Mr Leung called his son-in-law, Mr Wong, 
who began making phone calls to his broker Merrill Lynch. When the US market 
opened later that day, they began buying shares in Dow Jones, totaling 200,000 
shares over 4 days to 17-Apr-07 at an average of $35.88.</p>
<p>The complaint continues that 13 days later, on 30-Apr-07, Mr Wong bought, at 
Mr Leung's instructions, a further 215,000 shares at an average of $36.374. The 
next day, at about 11:13&nbsp; in New York, CNBC broke the news of the takeover 
offer, and the stock was halted at about 11:22. It jumped to a closing price of 
$56.20 after Dow Jones
<a target="_blank" href="http://www.dowjones.com/Pressroom/PressReleases/Other/US/2007/0501_US_DowJones_625.htm">
confirmed</a> the offer and trading recommenced.</p>
<h3>The Executive and Legislative Council</h3>
<p>Mr Li's close friends also include Hong Kong Chief Executive Donald Tsang Yam 
Kuen (<strong>Mr Tsang</strong>). Mr Li was the Chairman of Mr Tsang's 
&quot;election&quot; campaign in both 2005 and 2007, sending
<a target="_blank" href="../codocs/DTwhipround2007.pdf">fund-raising letters</a> 
to the great and the good of HK, and himself donating. As many readers will 
know, Hong Kong's Chief Executive is chosen by a small-circle committee of 800 
people dominated by tycoons with a smattering of Beijing-friendly left-wingers. 
We covered the fund-raising in detail in our article
<a target="_blank" href="donsdonations.asp">Don's Donations</a> 
(7-May-07). After Mr Tsang was nominated unopposed in 2005 as Chief Executive, 
he appointed Mr Li to his cabinet, known as the Executive Council, on 1-Nov-05. 
This is Hong Kong's highest policy-making body. After Mr Tsang's re-election, on 
1-Jul-07 Mr Li was awarded HK's highest gong, the Grand Bauhinia Medal, which is 
normally reserved for Beijing-friendly tycoons, retired judges of our highest 
court, and former Chief Executives and Chief Secretaries (the number two 
position in HK). Only 42 GBMs have been awarded, and at least 10 are now dead.</p>
<p>Since 1985, Mr Li has also been a member of the Legislative Council, 
representing the Banking functional constituency&nbsp; - another of HK's 
small-circle elections with an electorate consisting of authorised banks.</p>
<h3>Resignation is the honourable course</h3>
<p>Mr Li's US$8.1m settlement of the alleged insider tipping case brings into 
question his continued role in the cabinet and legislature. If a member of 
George Bush or Gordon Brown's cabinet entered a settlement in such a case, he 
would surely resign. If a member of the US Senate or House of Representatives 
were involved, he would also resign. As a cabinet member, Mr Li is privy to all 
sorts of confidential and potentially price-sensitive information about Hong 
Kong affairs, and he also has input in shaping policy. He has a duty of 
confidentiality which the SEC claims he had trouble keeping in the Dow Jones 
case. Mr Li should do the honourable thing, and avoid undermining the reputation 
of Hong Kong's cabinet and legislature. He should resign.</p>
<p>He did not admit or deny wrong-doing, but if he was that confident of his 
defence, then he would have fought the case and cleared his name rather than 
settle it. Politicians, however well-connected, should not be allowed to retain 
their positions by buying their way out of allegations. If he doesn't go, then 
it underlines how unaccountable Hong Kong's cabinet and functional 
constituencies are.</p>
<p>As a secondary matter, under the Banking Ordinance, the Hong Kong Monetary 
Authority has a duty to review, in the light of the SEC's allegations, whether 
Mr Li is a fit and proper person to be Chairman and Chief Executive of a 
licensed bank, BEA (see paragraphs 4.11 to 4.18 of
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/public/gta2002/Chapter%204.pdf">
Chapter 4</a> of the HKMA's
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/public/gta2002/toc.htm">
Guide to Authorization</a>). There are also 10 other HK-listed companies in 
which he sits as an independent non-executive director - he ranks equal 4th as 
one of the busiest INEDs in Hong Kong, as well as serving on overseas boards. 
They should all reconsider whether Mr Li is an asset to their boards.</p>

<p class="center"><strong><a target="_blank" href="../vote/result.asp?p=21">Opinion poll 
results</a> </strong></p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=377">BANK OF EAST ASIA, LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2287">HKSAR Executive Council</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=3114">Leung, Michael Kai Hung (1942)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49">Li, David Kwok Po</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20634">Wong Leung, Charlotte Ka On</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=39454">Wong, Kan King</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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