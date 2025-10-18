
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

<script type="text/javascript">document.title="Second submission to LegCo on DSD";</script>

	<div class="summary">This morning's session with public delegations, in which a junior civil servant was fielded, leaves a number of fundamental policy questions to be answered by the principal officials. Here they are.</div>

<h2 class="center">Second submission to LegCo on DSD<br>
<span class="headlinedate">13 June 2013</span></h2>
<p>To: all members of the Bills Committee on Stamp Duty (Amendment) Bill 2013<br>
Legislative Council</p>
<p>This morning (<a href="http://webcast.legco.gov.hk" target="_blank">video 
here</a>) 28 delegations (including Webb-site.com) spoke for 3 minutes 
each on Double Stamp Duty to 8-11 legislators (at various times) on the
<a href="http://www.legco.gov.hk/yr12-13/english/bc/bc05/general/bc05_mem.htm" target="_blank">
Bills Committee</a> and to an Administration delegation led by
<a href="http://www.directory.gov.hk/details.jsp?lang=eng&amp;dn=cn%3D1143007367%2Cou%3DFSTB%2Cou%3DPeople%2Co%3DGOVERNMENT%2Cc%3DHK&amp;accept_disclaimer=yes" target="_blank">
Mable Chan</a>, &quot;Deputy Secretary for Financial Services and the Treasury 
(Treasury) 2&quot;, who has perfected the administrative art of responding to 
Legislators' questions without answering them. She was completely unflustered by 
opposition from delegations and legislators and will make a great 
Principal Official in about 10 years' time.</p>
<p>The Government did not have the respect or courage to send the Financial Secretary 
or the Secretary for Financial Services and the Treasury, or even his 
Under-Secretary, to respond to delegations' views and legislators' questions. 
Civil servants like Mable Chan (or her boss, the Permanent Secretary) are not 
Principal Officials and are not responsible for policy - they just administer 
it. The following questions on policy went 
unanswered, so <strong>please require the Administration to answer these 
questions</strong>:</p>
<ol>
	<li>If DSD is intended to target speculators, then why is there no exemption 
	for buyers who are not speculators? Such persons include businesses buying 
	office or retail premises for their own occupancy.</li>
	<li>Why not refund DSD to any business with a Business Registration at the 
	address of the purchased property, proving owner-occupation?</li>
	<li>Why not refund DSD to any person who owns the property for a specified 
	time, such as 2 years, the same threshold as the original Special Stamp 
	Duty, or 3 years, as proposed in the revised Special Stamp Duty (<strong>SSD</strong>)? Even if you hold for 100 years, there is no refund of DSD. Indeed, if 
	anti-speculation is the goal, then why not just apply SSD (on resales) to 
	commercial property and forget doubling the up-front duty?</li>
	<li>Why is DSD described by Government as a &quot;demand-side measure&quot;? If the 
	stamp duty was payable by the vendor out of gross proceeds, with exactly the 
	same financial effects, then wouldn't the 
	Government call it a &quot;supply-side measure&quot; (* example below)? In fact it is 
	neither, it is a volume-suppressing measure. The higher transaction cost 
	simply depresses the volume of transactions. Sellers are less willing to 
	sell, and buyers are less willing to buy, because the Government is 
	taking 8.5% out of the middle.</li>
	<li>As DSD is not driven by revenue-raising, then its purpose must be to 
	address some social harm (as cigarette taxes do) by modifying behaviour. 
	Otherwise it is not a legitimate tax. So why is an increase in market volume 
	harmful to the economy or public interest? Can the same be said when the 
	volume of the stock market increases? Particularly, why is a higher volume 
	of commercial property transactions bad for the economy or society at large? 
	After all, it generates work in estate agents, lawyers, advertising and 
	printing and indicates liquidity for those who wish to sell or buy 
	properties. Whom does it hurt?</li>
	<li>In its
	<a href="http://www.legco.gov.hk/yr12-13/english/bills/brief/b10_brf.pdf" target="_blank">
	briefing paper</a>, the Administration has noted an increase in volumes and 
	an increase in prices, but has not produced any evidence to show causation&nbsp; 
	- that is, that higher volume causes higher prices. It doesn't. Why then, 
	does the administration seek to suppress volumes? </li>
	<li>If there is no harm to society from higher volumes of commercial 
	property transactions, then how is DSD a legitimate tax rather than a 
	penalty for exercising a Basic Law right (<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">Article 
	105</a>) to acquire, use and dispose of property (including real estate)? 
	That is, how is it constitutional to penalise people for exercising their 
	Basic Law rights to transfer property, the exercise of which causes no 
	demonstrable harm to society?</li>
	<li>
	<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_1.html" target="_blank">
	Article 5</a> of the Basic Law promises that &quot;the previous capitalist system 
	and way of life shall remain unchanged for 50 years&quot; and Article 11 states 
	that &quot;No law enacted by the legislature of the [HKSAR] shall contravene this 
	[Basic Law]&quot;. Now the Administration seeks to modify commercial behaviour by 
	imposing deterrent taxes on transfers of property, without any public 
	benefit, because, in its opinion, buyers engaging in such transactions are 
	too &quot;exuberant&quot; (presumably, the Administration regards sellers as 
	sensible). How is this proposed law consistent with the &quot;previous capitalist 
	system&quot; in which buyers, owners and sellers were free to take their own 
	risks without
	<a href="http://en.wikipedia.org/wiki/Paternalism" target="_blank">
	paternalistic</a> intervention by the state?</li>
</ol>
<p>* Example: if stamp duty was payable by the seller on the gross price, then a 
sale at $10.85m with DSD of $850k (7.83%) would be financially identical (to all 
parties) to a sale at $10.00m in which the buyer pays $850k of DSD (8.50%). In 
both cases, the buyer pays $10.85m net, the seller receives $10.00m net, and the 
Government receives $850k in stamp duty.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=131">Double Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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