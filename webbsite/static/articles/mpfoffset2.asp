
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

<script type="text/javascript">document.title="Solving the MPF-LSP offset problem, again";</script>

	<div class="summary">The HK Government fails to identify the obvious solution and instead pursues a doomed approach of perpetuating MPF plus LSP. That will either result in taxpayers fully funding a windfall to existing employees or the Government losing a judicial review for overriding the implied terms of existing employment contracts and violating employers' legitimate expectation of not having to pay twice.</div>

<h2 class="center">Solving the MPF-LSP offset problem, again<br>
<span class="headlinedate">30 March 2018</span></h2>

<p>Four years ago, Webb-site proposed a perfectly workable and obvious
<a href="mpflsp.asp">solution</a> to what is known as the MPF-LSP 
offset problem. The Government has ignored the obvious and instead is hell-bent 
on indefinitely maintaining two interventionist and mutually incompatible systems for 
retirement provision - the Mandatory Provident Fund (MPF) and Long Service 
Payment (LSP), both funded by employers, while removing the employer's right to 
offset one against the other, thereby making them pay twice. Now the Government
<a href="http://news.rthk.hk/rthk/en/component/k2/1388711-20180329.htm" target="_blank">
proposes to throw in</a> HK$17.2bn of taxpayers' money to partially subsidise 
the additional cost to employers of paying both, and it won't be enough.</p>
<p>The detailed history is in our <a href="mpflsp.asp">2014 article</a>, 
but let's just be clear about one thing. When employers entered into existing 
employment contracts, they had the clear understanding and legitimate 
expectation that, by setting money aside as contributions to the MPF funds, they 
were paying in advance for their LSP obligations. The Government told them this 
at least 3 times in the Legislative Council, in 1990 and 1992 (during amendments 
to the Employment Ordinance) and in the
<a href="http://www.legco.gov.hk/yr94-95/english/lc_sitg/hansard/h950308.pdf" target="_blank">
8-Mar-1995 debate</a> (p75) on the proposed MPF Schemes Ordinance:</p>
<blockquote>"At present, the employer's contributions to a retirement scheme may 
be set off against any amount he has paid out for severance payments or long 
service payments. Employers do not pay twice. Severance payments and long 
service payments are not designed as supplementary retirement schemes. They are 
intended to be alternatives to these retirement schemes. That is why the 
offsetting provisions exist under the present voluntary system of occupational 
retirement schemes. We do not intend to change it under the MPF."</blockquote>
<p>It has since become a popular misconception, promoted by left-wing media and 
politicians and implicitly endorsed by a back-tracking government, that 
employers are "stealing" or "raiding" money from employees when using the 
employer's accumulated MPF contributions to settle LSP obligations (the <em>
employee's </em>contributions, on the other hand, are never touched). Since the 
MPF was launched in Dec-2000, employers have been pre-funding their LSP 
obligations by paying 5% on top of the salaries they were already paying, unless 
they already had a similar or better voluntary scheme covered by the 
Occupational Retirement Schemes Ordinance. Of course, there are times when the 
LSP is not payable, in particular, if an employer terminates an employee within 
5 years of hiring, or for misconduct, or if&nbsp;she resigns before reaching 
the age of 65, as many do. Then the employer's MPF contributions stay in the MPF 
or ORSO account.</p>
<p>It would be wholly inequitable for the Government, by statute, to move 
the goalposts on existing employment contracts so that an employee, upon 
retiring at 65 or later, would receive both the accumulated funds from the 
employer's MPF contributions as well as an LSP payment of up to HK$390k. 
Subsidising half the extra costs for a few years doesn't make that right.</p>
<h3>The solution, again</h3>
<p>Ultimately, the only way to remove the conflict between the 2 systems is to 
have 1 system or none: either scrapping the MPF, the LSP or both, while 
preserving accrued benefits. If the MPF is to stay, then the LSP should go. The 
expectation of LSP (to the extent that it exceeds the accumulated employer's MPF 
contributions) is implicitly part of existing employment contracts, so those rights should be 
protected, but accruals and the amount offsetable should be frozen on a 
transition date, and after that, there would be no further accruals and all new 
employment contracts would not be subject to LSP. Full portability of all MPF 
contributions should then be introduced to improve efficiency.</p>
<p>Even with the abolition of LSP, the Government would still provide 
social security (CSSA) for those who find themselves unemployed, under 65 and with 
insufficient savings outside the MPF. That would surely be cheaper than throwing 
taxpayers' money at the LSP as proposed.</p>
<h3>Judicial review</h3>
<p>If the Government proceeds with its dual MPF+LSP approach, then it will 
either have to make substantially all the LSP payments until all existing 
employment contracts end, giving a windfall to 
employees, or it will face judicial review from employers who entered into 
contracts in good faith with a legitimate expectation of the making the offset and not 
paying twice. Webb-site, via a perpetually loss-making company, has employed 1 
person in HK since 2003 to help maintain the site's database. We face the 
possibility of eventually having to pay an additional HK$390,000 that the employee never 
expected and for which the employer did not budget, so we would be in a position 
to launch that judicial review, and so would many others.</p>
<h3>Other unintended consequences</h3>
<p>A secondary effect of pursuing the MPF+LSP approach is that for new 
contracts, or when adjusting salaries, employers would have to take into account 
the future cost of paying twice, reducing take-home salary so that they could 
afford the possible payments.</p>
<p>The MPF+LSP would also reduce labour flexibility, because if an 
employee is within a few years of reaching 65, then he is more likely to stick 
around to enjoy the eventual double-payment than resign and forego the LSP.</p>
<p>Finally, as the government proposes a time-limited and reducing subsidy for 
LSP, it would make sense to terminate older employees while the subsidy is 
highest, before hiring them back on new terms which reflect the future costs. So 
the subsidy could end up costing a lot more than the Government estimates.</p>
<h3>One bad intervention leads to another</h3>
<p>The MPF has always been inherently flawed&nbsp; - it should have been named 
"Mandatory Payments of Fees". HK residents have always been good at saving when 
they can, partly because of the low social safety net which encourages 
self-provision, and partly because they are not penalised by taxes on interest, dividends or capital 
gains, unlike savers in other places. The MPF forced employees to divert some of 
their earning capacity into managed funds rather than self-managed savings. 
Remember, what matters to employers is the total cost of employment, not how the 
employee spends or saves it.</p>
<p>By the MPF Schemes Authority's
<a href="http://www.mpfa.org.hk/eng/information_centre/publications/research_reports/files/Investment_Performance_of_the_MPF_System_in_2017-e.pdf" target="_blank">
own reckoning</a>, over its first 17 years to Dec-2017, the internal rate of return (i.e. 
dollar-weighted) averaged 4.8% p.a. net of costs. But
<a href="http://www.censtatd.gov.hk/hkstat/sub/sp270.jsp?tableID=052&amp;ID=0&amp;productType=8" target="_blank">
inflation</a> in the same period averaged 1.8% p.a., leaving a 3% net real 
rate of return. During the same period, asset managers, custodians, 
administrators, trustees, auditors and others took out an average of about 2% 
p.a., so the gross real return was about 5%. Therefore 2/5, or 40% of that real return went in 
costs. By comparison, the Tracker Fund of HK (2800) had a
<a href="/dbpub/ctr.asp?i1=5295&amp;rel=0&amp;d1=2000-12-29" target="_blank">
total return</a> over that period of 7.5% p.a. (ignoring dealing costs), or 
about 5.7% after inflation.</p>
<p>So independent savers could have done far better than pay away 2% per year to 
the industry in a compulsory savings scheme. Thousands of people in HK do 
nothing more productive than manage, sell and administer the MPF funds of 
everyone else. Furthermore, if an MPF victim survives until 65, he can then take 
the lump sum to pay off his debts or bet it all at Happy Valley before falling 
into the social safety net, so if the purpose of MPF was to protect 
spend-thrifts from themselves then it fails.</p>
<p>But it seems that the Government has invested too much political capital in 
the MPF to stop now, and it is compounding the error by perpetuating the 
conflict with LSP. The Government should scrap the LSP scheme. For the detailed 
steps, <a href="mpflsp.asp">see our 2014 article</a>. There's no 
point in repeating the obvious.</p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=60">Labour</a></li>
				
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