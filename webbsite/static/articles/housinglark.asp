
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

<script type="text/javascript">document.title="The Housing Lark";</script>

	<div class="summary">Why does the HK Government continue prosecuting civil servants and educators for maximising their remuneration by claiming rental allowances which, if they didn't own the property, they would be entitled to anyway? Surely people should be paid what they are worth to an employer, not based on what they own. We also look at the tax loophole which incentivises rental allowances in the first place.</div>

<h2 class="center">The Housing Lark<br>
<span class="headlinedate">9 December 2006</span></h2>
<p>Barely a month goes by without reading in the HK press about some teacher or 
civil servant who has been prosecuted, and his or her career wrecked, for 
claiming rental allowances from their employer on a property in which the 
employee, or his family, had a financial interest, against a rule of the rental 
allowance scheme.</p>
<p>Two weeks ago, there were adjacent headlines in a local paper: <i>&quot;Surveyor 
jailed over rent scam&quot;</i> and <i>&quot;Academic guilty of fraud over flat&quot;</i>. In 
the first case, a senior surveyor in the Buildings Department of the Government 
was
<a target="_blank" href="http://www.news.gov.hk/en/category/lawandorder/061127/html/061127en08007.htm">
jailed</a> for 8 months for claiming rental reimbursement on a property which he 
had bought in the name of a nominee. In the second story, the associate dean of 
a university arts faculty was
<a target="_blank" href="http://thestandard.com.hk/news_detail.asp?we_cat=4&art_id=32855&sid=11077375&con_type=1&d_str=20061128">
found</a> to have rented a flat from a company owned by his family. In 2000, the 
acting chief of the Inland Revenue Department was
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=1412&currpage=T">
convicted</a> of a similar offence, and there have been numerous other examples.</p>
<p>The real economic point here has been missed by the Government and the media. 
Why is the pay of our civil servants and teachers based not on the market value 
of the work they do, but on whether or not they own their home? Under such 
schemes, if two people of equal ability and experience are working in the same 
job, but one of them owns his home and the other rents a home from a third 
party, then the employee who rents a home is paid more, and costs the employer 
more, than the one who owns his own home. Faced with such a remuneration 
structure, any employee would rationally seek to maximise his income by renting 
a home and claiming the maximum allowance. Indeed, if we assume (perhaps 
wrongly) that the Government is not overpaying its employees, then anyone who 
doesn't claim a rental allowance is paid below their market value.</p>
<p>To see how silly the rule is, consider that instead of breaking the rule, an 
academic or civil servant can put himself in the same financial position by 
finding two similar flats, one to buy and one to rent. He would buy the first 
property, and rent it out on the open market to an independent third party. He 
would then rent the second property from another independent third party at the 
same rent, and claim reimbursement from the Government or university. He would 
break no rules. This, in essence, is what many educators and civil servants do 
to comply with the rules while at the same time receiving a rental allowance and 
owning a property. When they retire, they can stop renting and move into the 
property they always owned.</p>
<p>So, since the rule against having a financial 
interest in your residence can easily be avoided, why have the rule at all? Just 
to prosecute those who are too stupid to avoid it?</p>
<p>Secondly, why do we have such rental reimbursement schemes in the first 
place? Why not just pay cash and let the employees choose whether to rent or own 
a home? The reason for that can be found in a giant loophole in our taxation 
system. As we have <a target="_blank" href="tax1.asp">noted before</a>, if an 
employer reimburses housing expenses, including, rent, then for salaries tax 
purposes that payment is deemed to be worth only 10% of the employee's other 
cash remuneration. For example, an employee receiving a cash salary of $80,000 
per month and a rental reimbursement of $40,000 per month is taxed on only 
$88,000 of income (before personal allowances) rather than the $120,000 of value 
received, while a colleague of equal rank who gets straight cash of $120,000 
will be taxed on the whole amount. Same job, same total remuneration, different 
tax.</p>
<p>Some of the biggest beneficiaries of this tax loophole are civil servants 
themselves, thousands of whom are housed in quarters owned by the Government or 
in private tenancies for which they are reimbursed. No wonder then, that they 
have not moved to close the loophole.</p>
<p>In the commercial, market-driven sector, unlike the Government or educational 
institutions, employers seldom attach ownership prohibitions to such rental 
reimbursement schemes, because all they are interested in is the total cost of 
employment of the individual. Many are happy to structure the remuneration to 
reduce the overall tax of the employee, because what matters to the employee is 
his net income after tax. It is not unusual, then, for an employee to own a 
private company established to purchase a home. The private company takes out a 
mortgage to buy the home, rents it out to the employer (or the employee who is 
reimbursed), and deducts the interest and other expenses against the rental 
income received from the employer, ensuring that it pays little or no profits 
tax. It's one reason why we have over 567,000 companies
<a target="_blank" href="http://www.cr.gov.hk/en/publications/press20060810.htm">registered</a> 
in Hong Kong, or about 1 for every 10 adults.</p>
<p>The Government should eliminate the tax loophole by taxing all employment 
benefits, whether in cash or kind, on their full market value. In the case of 
housing, whether rented from third parties or related parties, or owned by the 
employer, that would be either the rent paid or the rateable value, whichever is 
higher. Taxing all benefits would remove the tax incentive for rental schemes in 
the first place, so most employers would just pay cash and scrap the schemes. 
Closing the loophole would, or course, result in an increase in tax revenues, 
which should be offset by a reduction in tax rates to neutralise the effect.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=60">Labour</a></li>
				
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