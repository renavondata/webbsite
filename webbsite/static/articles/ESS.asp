
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

<script type="text/javascript">document.title="HK employers must eat this free lunch";</script>

	<div class="summary">An economically illiterate leadership has decided to spray HK$80bn at HK's economy, benefitting employers who had no intention of making lay-offs, by paying the firms up to HK$54k per job. Some firms have even prospered during COVID-19. It's a wasteful way to return hoarded reserves to the economy, but all companies now have a legal duty to shareholders to eat this free lunch. They should resist any Government pressure to not collect it.</div>

<h2 class="center">HK employers must eat this free lunch<br>
<span class="headlinedate">9 April 2020</span></h2>
<p>One of the greatest ironies in what until last year was ranked the "<a href="https://www.heritage.org/index/?version=463" target="_blank">World's freest economy</a>" 
is that its Government is led by economically illiterate people. The
<a href="https://www.coronavirus.gov.hk" target="_blank">COVID-19</a> global 
pandemic and consequent near-shutdown of international and cross-boundary
<a href="https://www.immd.gov.hk/eng/message_from_us/stat_menu.html" target="_blank">passenger traffic</a> 
has undoubtedly impacted a lot of sectors in HK, including tourism and business 
travel, and it is arguable that even in a free market, businesses and people 
should be compensated for their consequential losses, particularly when the 
calamity has led to government-ordered shutdowns of some businesses such as bars 
and gyms, now extended to a 4-week period.</p>
<p>However, the major, HK$80bn component of what the HK Government 
<a href="https://www.info.gov.hk/gia/general/202004/09/P2020040900021.htm" target="_blank">
announced yesterday</a> goes far further 
than compensation - it sprays money indiscriminately over the entire economy, 
doing more for the needless and less for the needy.</p>
<p>Under the Employment Support Scheme (<strong>ESS</strong>), the HK Government will pay employers 50% of 
their wage costs up to a 
subsidy of HK$9k per job per month for 6 months, on condition that the 
employees are not made redundant. That is, they are paying employers to keep 
people in work even if the employer had no intention of laying people off. By contrast, 
the UK under its
<a href="https://www.gov.uk/guidance/check-if-you-could-be-covered-by-the-coronavirus-job-retention-scheme" target="_blank">
Coronavirus Job Retention Scheme</a> (<strong>CJRS</strong>) is only paying 
compensation (80% of salary, up to GBP2,500 per month, for 3 months) in respect 
of employees have been "furloughed", that is, kept on the payroll but not 
working - for example, waiters or factory workers because the restaurants and 
factories are closed. It is a specific condition of CJRS that the employee cannot 
undertake work for the employer while on furlough, so it is automatically 
targeted at sectors which have suffered the most disruption.</p>
<p>HK's approach will result in windfalls for businesses that have been 
unaffected or even done rather 
well during the crisis. For example, the big supermarket chains employ thousands 
of low-wage workers. They've not only been busy restocking shelves 
after panic buying, but are also selling more food than usual as people are 
eating out less, and probably hiring more people 
for home deliveries. There is no real chance of redundancies there, but now the 
HK Government will pay the supermarkets a subsidy of up to HK$54m per 1,000 jobs (a bit 
less if they pay under $18,000 per month). The employees will get their usual 
wage, and the employer and its shareholders will benefit from the subsidy with a 
larger profit than they would otherwise have made.</p>
<p>Similarly, operators of neighbourhood convenience stores are probably 
doing rather well as more people are working from home and popping out for quick 
purchases of snacks and sanitizer. Other beneficiaries include retail banks which, along with insurance firms and stockbrokers, probably 
had no intention of mass layoffs and will now get the same windfall of up to 
HK$54k per employee. And note that HK, which is now only seeing around
<a href="https://covid19.sph.hku.hk/dashboard" target="_blank">5-10 local 
COVID-19 
cases per day</a> (the rest are imported and quarantined), is not in the same 
dire straits as the UK, but has chosen to make these subsidies last 6 
months from the outset rather than 3 months, doubling their cost.</p>
<p>Given the Government's fiscally-insane policy, even if a company is not badly 
affected by COVID-19 or has benefitted like supermarkets have, the company must apply 
for its entitlement, because its directors have a legal duty to shareholders to 
maximise value. That includes legally minimizing their taxes and claiming every 
subsidy to which they are entitled, unless the cost is greater than the subsidy.</p>
<p>We were appalled to hear today that at least one company director has been called by a 
Government department and asked not to apply for its entitlement. Perhaps the 
Government is already beginning to regret the hasty policy-making, but 
such requests for collusion should be politely 
declined. We call on the Government to stop making such calls and make clear 
that it will not seek to intimidate companies into not taking the ESS. Asking 
companies not to take the money is no different to announcing a "voluntary" tax 
and then strong-arming companies into paying it in return for favours.</p>
<p>Webb-site founder David Webb has <a href="../dbpub/webbchips.asp">substantial shareholdings</a> in a number of 
listed businesses which have thousands of HK employees. <strong>We hereby place the 
directors of these listed companies on notice that whatever sector they are in, 
they have a fiduciary duty to shareholders to apply for the ESS to maximise 
shareholder value - so do not even consider placing yourselves at risk of 
shareholder litigation and at a competitive disadvantage by not applying. Your 
competitors will apply.</strong></p>
<p>There are far better ways to disgorge the over HK$1 trillion sucked out of 
the economy and into reserves over the last 22 years, but if the Government is going to 
do it this way, then we must all take what we can get. Look on the bright side - 
at least they are not building another bridge to Macau.</p>
<h3>LegCo Approval</h3>
<p>The package is of course subject to approval by the Legislative Council 
Finance Committee, but can you really imagine the legislators representing 
"Functional Constituencies", each of which has some candy in this cake, rejecting it? There were 
several other items in yesterday's package directly aimed at buying their 
support, such as a $50k handout for each small brokerage firm which elects the 
"Financial Services" legislator and a $30k per-licence handout for each owner of 
a licence for a taxi, non-franchised bus or private hire car in our
<a href="roadcartels.asp">road transport licence cartels</a>. These licences 
should be uncapped and freely available to anyone who wishes to licence a 
vehicle for a token administrative fee, but they 
have become rent-seeking speculative investments and now the Government is 
supporting their value and pandering to the 
owners, because they elect the Transport legislator and 18 seats in the
<a href="gettingTo601.asp">Chief Executive Election Committee</a>.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=8576">HKSAR Election Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2287">HKSAR Executive Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6610">HKSAR Legislative Council</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7491">Chan, Paul Mo Po</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=32">Economics</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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