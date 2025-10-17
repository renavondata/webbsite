
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

<script type="text/javascript">document.title="The welfare claims ratio";</script>

	<div class="summary">UPDATED 21-Oct: a newspaper columnist who opposes means-testing of the proposed Old Age Living Allowance recently claimed that it is an "open secret" that most of the elderly who qualify for fruit money don't claim it. We put that urban myth to rest with detailed estimates showing at least a 90% claims ratio.</div>

<h2 class="center">The welfare claims ratio<br>
<span class="headlinedate">17 October 2012</span></h2>
<p class="revisedate">(updated 21-Oct-2012)</p>
<p>Do HK people claim their entitlements? Writing about the proposed Old Age Living 
Allowance in SCMP last Friday, 12-Oct-2012,
<a href="../dbpub/positions.asp?p=11588">Albert Cheng King-hon (aka Jing-han)</a>, 
who opposes means-testing, said:</p>
<blockquote>&quot;The additional financial burden, if means testing is waived, 
is over-exaggerated by the government, because it's an open secret that most of 
the elderly who qualify for the &quot;fruit money&quot; do not claim it.&quot;</blockquote>
<p>That statement, which formed the core of his argument, is false. The actual 
claims ratio for elderly welfare is over 90%, as we will show below. The only 
&quot;open secret&quot; here is that Mr Cheng does not check his facts before mouthing off. 
HK's elderly are not as irrational as he thinks. He's probably not the first 
person to make this claim though, so let's set this urban myth to rest.</p>
<p>Now, keep in mind that there are three mutually-exclusive benefits that a 
person aged 70+ could receive, in ascending order of value: either Old Age 
Allowance, also known as &quot;fruit money&quot; (<strong>OAA</strong>), or Disability 
Allowance (<strong>DA</strong>), or the means-tested Comprehensive Social 
Security Assistance (<strong>CSSA</strong>). You cannot have more than one of 
these. You need to satisfy disability tests for DA (there are two levels), and a 
financial means-test for CSSA, but the fruit money is not means-tested over 70.</p>
<h3>The eligible over-70 population</h3>
<p>Thanks to the 5-yearly <a href="http://www.census2011.gov.hk" target="_blank">
Census</a> which took place in 2011, we have some accurate data to work with 
(they have a neat
<a href="http://www.census2011.gov.hk/en/build-your-census-tables.html" target="_blank">
roll-your-own tables</a> feature, by the way - geek heaven). The most recent 
date for which consistent OAA and DA figures are available is 31-Mar-2011, so 
we'll work with that, because the propensity to claim won't have changed much 
since then. The Census was conducted as at 3 a.m. on 30-Jun-2011 (<strong>Census 
Moment</strong>), but we can roll back 3 months based on known growth rates.</p>
<p>For statistical purposes, the resident population of HK is divided into
<strong>Usual Residents</strong> and <strong>Mobile Residents</strong>. Usual 
Residents comprise:</p>
<ul>
	<li>Permanent Residents (<strong>PRs</strong>, with right of abode) who had 
	stayed in HK for at least half of the 6 months before or after the Census 
	Moment; and</li>
	<li>Non-permanent residents (ID card holders, including Foreign Domestic 
	Helpers) who were in HK at the Census Moment.</li>
</ul>
<p>&quot;Mobile Residents&quot; are defined as:</p>
<ul>
	<li>PRs who were not Usual Residents but were in HK for at least 1 month but 
	less than 3 months during the 6 months before or after the Census Moment, 
	regardless of whether they were here at the Census Moment (in fact, the 
	Census questionnaire asked people about their expectation for the second 
	half of the year). This means that they spent at least 6 months of the 
	census year outside HK. At the 2011 Census Moment, there were 212,235 Mobile 
	Residents, of whom only 40,359 (19.0%) were in HK.</li>
</ul>
<p>The Census also provides data on population excluding Foreign Domestic 
helpers (<strong>FDHs</strong>). You wouldn't expect many FDHs over 70, but 
there were actually 38 in the Census, of whom 7 were aged 75 and 1 was aged 82! 
At the Census Moment, there were 706,974 over-70 non-FDH residents, 
of whom 20,689 were Mobile Residents. For example, these Mobile Residents 
include PRs (including non-Chinese) who have retired overseas but stay with 
children in HK for a total of at least 1 month in either half of the year.</p>
<p>The OAA, DA and CSSA rules impose
<a href="http://www.swd.gov.hk/doc/social-sec/Residence_eng_01022011.pdf" target="_blank">
two requirements</a> which mean that only part of the 70+ population is 
eligible, even for OAA. They must be:</p>
<ul>
	<li>resident in HK for at least seven years (unless qualified before 
	1-Jan-2004, when this requirement was introduced); and</li>
	<li>in the case of OAA and DA, resident in HK continuously for the 1 year 
	immediately prior to application, with total absences of not more than 56 days</li>
</ul>
<p>So Mobile Residents don't qualify unless they stayed in HK for at least 1 
year (less 56 days) some time after reaching 69, or met the criterion after 
reaching 65 and passed the means test between 65-69. We will therefore assume 
that 80% of Mobile Residents over 70 have not qualified for benefits under 
current rules.</p>
<p>The Census also gives the number of years of residence in HK, in 
ranges. Of the resident population of 706,974 over-70s at the Census Moment, 
3,914 had lived in HK less than 7 years in their life. A few of them may have 
been PRs by birth but are now included in Mobile Residents, and a few of them 
may have qualified by being resident and over 70 before 2004 (and hence over 
77.5 at the Census Moment) but we estimate that 90% of them are not qualified 
for OAA.</p>
<p>Finally, the growth rate in the over-70s is currently about 1% p.a., or 0.25% 
in 3 months. So our best estimate of the population of eligible over-70s at our 
measurement date of 31-Mar-2011 is as follows:</p>
<img class="center" alt="" src="../images/eligible70.gif">
<p>Rounding, we can say about <strong>685,200</strong> people were eligible to 
claim. This number will also include a number of Usual Residents who still don't 
meet the 1-year (less 56 days) residency requirement, and some people whose 
applications for OAA are pending.</p>
<h3>Number of OAA recipients over 70</h3>
<p>According to
	<a href="http://www.swd.gov.hk/doc/res_stat/swdfig2011.pdf" target="_blank">
	figures</a> from the Social Welfare Department, at 31-Mar-2011 there were
<strong>437,002</strong> people on &quot;Higher&quot; OAA (i.e. over 70). In fact the 
payments of &quot;Normal&quot; OAA (for aged 65-69) and &quot;Higher&quot; OAA (for 70+), which 
historically were different, are now the same $1090 per month, but the Higher 
OAA is not means tested.</p>
<h3>Number of DA recipients over 70</h3>
<p>According to a
	<a href="http://www.info.gov.hk/gia/general/201104/13/P201104130093.htm" target="_blank">
	Legco answer</a>, at 31-Mar-2011 there were <strong>49,775</strong> people 
aged 70+ on DA.</p>
<h3>Number of CSSA recipients over 70</h3>
<p>In the 2011 Census, of people over 60, 52.4% were over 70. According to a 
Government
<a href="http://www.statistics.gov.hk/pub/B71209FB2012XXXXB0100.pdf" target="_blank">
statistical report</a> in Sep-2012, the number of CSSA recipients over 60 has 
been relatively stable since 2004, and declining as a share of the elderly 
population from 17.4% at the end of 2004 to 13.5% at the end of 2011. It was 
188,283 at 31-Dec-2010 and 187,099 at 31-Dec-2011. Interpolating, we get 187,991 
on 31-Mar-2011.</p>
<p>We cannot find separate data for those CSSA recipients who were over 70. So 
apportioning the over-60 figures according to the age of the population and rounding to 100, 
about <strong>98,500</strong> people over 70 were on CSSA at 31-Mar-2011. The 
figure is probably higher, because older retirees are more likely to run out of 
money and apply for CSSA than people aged 60-69 who are either still working or 
recently retired, and because people over 70 had lower lifetime earnings on 
average than those aged 60-69, due to the rising post-war economy. <strong>We 
call on the Social Welfare Department to publish better data for CSSA recipients 
by age, grouped in 5-year age bands.</strong></p>
<p class="regbox"><strong>UPDATED 21-Oct-2012<br></strong>A reader has pointed 
us to a paper from the Government to Legco, which unfortunately the Government 
chose to produce in Chinese only, which is why we didn't find it before. The 
paper is &quot;<a href="http://www.legco.gov.hk/yr11-12/chinese/panels/ws/ws_rp/papers/ws_rp1031cb2-1814-1-c.pdf" target="_blank">Administration's 
consolidated response to deputations' requests for the provision of statistical 
information relating to retirement protection (Chinese version only)</a>&quot; and in 
answer 14 on pages 5-6 you will find a table breaking down the number of over-60 
CSSA recipients by age groups at 31-Mar-2011. This tells us that there were 
187,487 CSSA recipients aged 60+, of whom 159,076 were over 65, of whom <strong>
131,835</strong> were over 70. In answer 18 on pages 6-7, you can see that the 
number of CSSA recipients aged 65+ has been stable since 2004.</p>
<h3>Final calculation</h3>
<p><strong>UPDATED 21-Oct-2012:</strong></p>
<p>Altogether then, OAA+DA+CSSA = 618,612 recipients at 31-Mar-2011. 
That is <strong>about 90.3%</strong> of eligible persons. Of the remaining 
population, 
some of them still would still not qualify for OAA because:</p>
<ul>
	<li>although they are Usual Residents (having spent over 3 months in HK in 
	either half of 2011), they have not spent a whole year in HK with less than 
	56 days away since turning 70 - for example, people who spend a lot of time 
	at an overseas holiday home or visit their overseas children; or</li>
	<li>they are in jail or detention</li>
</ul>
<p>There would also be some residents who recently turned 70 and were in the 
process of applying (approval is not instant), or will do so at some point in 
future.</p>
<p>So the total claims ratio is at least 90.3% and probably higher. A 2006
<a href="http://www.cop.gov.hk/eng/pdf/Brief_Need_eng.pdf" target="_blank">
Government paper</a> for the Commission on Poverty put the figure at 91% at the 
end of 2005. That was before the 42% increase in OAA from $705to $1000 per month 
on 1-Feb-2009, which surely made it more attractive.</p>
<p>Fewer than 9.7% of eligible persons over 70 do not claim a benefit. Now, that is just with a benefit of $1,090 per month on the 
table. If it is doubled to the proposed OALA of $2,200 ($26,400 per year), or 
more, then the claims rate will surely be higher - but whether it is 90%, 95% or 
98% really doesn't make a difference to the fundamental point in our article &quot;<a href="oala.asp">Help 
the needy, not the needless</a>&quot; last week. Non-means-tested handouts are 
financially unsustainable.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11588">Cheng, Albert Jinghan</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=24">Social welfare</a></li>
				
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