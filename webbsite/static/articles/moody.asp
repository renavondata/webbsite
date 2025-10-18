
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

<script type="text/javascript">document.title="SFAT's red flag on Moody's chills negative research";</script>

	<div class="summary">We look at what the SFAT's ruling and the SFC's action says about the future of Hong Kong as a place in which freedom of debate and negative criticism is becoming increasingly difficult.</div>

<h2 class="center">SFAT's red flag on Moody's chills negative research<br>
<span class="headlinedate">8 April 2016</span></h2>

<p>On 31-Mar-2016, the <a href="/dbpub/orgdata.asp?p=18729">Securities and Futures Appeals Tribunal</a> 
(<strong>SFAT</strong>) handed down its
<a href="../codocs/SFAT160331.pdf" target="_blank">Determination</a> in the 
appeal of <a href="/dbpub/orgdata.asp?p=131541">Moody's Investors Service Hong Kong Ltd</a> against the SFC's decision to 
reprimand it and fine it HK$23m. The Tribunal partially upheld the SFC's 
findings and reduced the fine to HK$11m, as
<a href="../codocs/SFC160405.pdf" target="_blank">announced</a> by the SFC on 
5-Apr-2016. The findings relate to a Moody's
<a href="https://www.moodys.com/research/Moodys-Accounting-and-governance-warning-signs-for-emerging-market-companies--PR_222323" target="_blank">
media release</a> titled "Accounting and governance warning signs for emerging 
market companies" and an accompanying
<a href="http://members.zkiz.com/storage/1610/6c2dPBC_134306.pdf" target="_blank">
report</a> published on 11-Jul-2011 titled "Red Flags for Emerging-Market 
Companies: A Focus on China".</p>
<p>Webb-site agrees with part of the judgment, that the SFC had jurisdiction as 
licensor, and that the licensing system imposes a constitutionally necessary 
restriction on free speech for a legitimate purpose. However, we find other parts, and the SFC 
and SFAT's general approach to exercising this restriction, deeply disturbing. It sets far too 
high a floor on the acceptable standards of critical research and will have a 
chilling effect on negative criticism of companies in Hong Kong, in a market in 
which there is little enough of that already. This approach is part of a pattern 
that indicates a regulatory bias against negative criticism and short-selling. 
That pattern includes a <a href="short2.asp">reporting threshold</a> 
of 0.02% for any short position, on a weekly basis, versus a 5% disclosure 
threshold for long positions.</p>
<p>If Moody's (or anyone) had published a "Green flags report" singling 
out those companies (positive outliers) which it thinks have exceptionally good 
accounting and governance, causing their share and bond prices to go up, would 
the SFC have clobbered them for minor errors in the flags? </p>
<p>As we explain below, the SFAT also displays a lack of understanding of 
what drives credit ratings and what investors expect from licensed researchers. 
Perhaps this was to be expected: the SFAT was Chaired by a senior Judge,
<a href="../dbpub/positions.asp?p=29934">Michael John Hartmann</a>, with 2 lay 
members, Dr <a href="../dbpub/positions.asp?p=57349">Billy Mak Sui Choi</a> (<strong>Dr 
Mak</strong>), an academic, and Ms <a href="../dbpub/positions.asp?p=77747">Ding 
Chen</a> (<strong>Ms Ding</strong>). Dr Mak also sits on the SFC's Academic and 
Accreditation Advisory Committee and several government bodies.</p>
<p>Of the three, only Ms Ding might have market experience, as CEO of 
mainland-controlled CSOP 
Asset Management Ltd, which sells ETFs in and out of the mainland market.
<a href="http://video.cnbc.com/gallery/?video=3000388899" target="_blank">Here 
she is on CNBC on 16-Jun-2015</a> (Tuesday morning, HK time) at the top of the 
mainland bubble, promoting CSOP's newly-launched HK-listed (3147) ETF on the 
Shenzhen ChiNext market as the "future of China". She remarked that the PEG (P/E 
to earnings growth) ratio was "not that expensive - only 4.6". Perhaps the SFC 
should look into whether that was a false and misleading statement. Could any 
licensed professional, with due diligence, reasonably call a PEG ratio of 4.6 in 
a market trading at over 100 times historic earnings "not that expensive"? But 
then, the SFC has never acted against anyone who has been overly bullish in 
their opinions.</p>
<p>The ETF is <a href="/dbpub/ctr.asp?i1=13991&amp;rel=0&amp;d1=2015-06-12">down 45.6%</a>   since then. Ms Ding also sits on the high-level SFC Advisory 
Committee (appointed by the Financial Secretary), the SFC Process Review Panel 
(appointed by the Chief Executive of HK) and the SFC Products Advisory Committee 
(appointed by the SFC), amongst other bodies.</p>
<p>So what about the Moody's report?</p>
<h3>About 1.2% wrong</h3>
<p>Investors don't expect perfection in research, or anything close to it. They understand 
that any analyst whose buy or sell recommendations are correct more than about 
51% of the time can out-perform the market and thereby add value to a portfolio. 
They understand that analysts can make mistakes. The Moody's report was an 
application of binary "red flag" framework to 61 companies across 20 separate 
binary tests - each of which produced a flag or no-flag result.</p>
<p>Moody's did not claim to have done any multiple regression analysis, 
statistical significance tests or back-testing of flags as predictors of 
subsequent credit ratings or stock performance. It was a point-in-time study. 
Moody's did not attempt to weight the flags, and in our view that was sensible, 
because with only 61 companies in several groups, the sample sizes would be too 
small to produce statistically significant results. It was a fairly simple 
exercise and was presented as such, highlighting "risks that may warrant further 
investigation".</p>
<p>That's 1220 tests and results, although the report only published the 
detailed flags for the 49 "high yield" (rated below Baa3) companies, of which 26 
were property developers. And how many mistakes in this matrix did 
Moody's make? Just 12, as shown on page 67 of the report, including 4 
mathematical errors, 6 input errors, and 2 cases where a newly created 
management role was mistaken as a change of senior management. Of course it 
would have been better to be perfect, but on the 49 companies with 980 tests, that is 
about a 1.2% error rate which any 
reasonable reader can live with.</p>
<p>Reading through the 82 page ruling, we note that the SFC and the Tribunal repeatedly emphasised that 
Moody's had said that there was "limited correlation in China between lower 
credit ratings and larger numbers of red flags" and sought to conclude from this 
that the report should not have been issued, or that those companies with the 
most red flags should not have been singled out. The word "correlation" appears 
18 times in the SFAT report. Moody's noted that:</p>
<blockquote>"In China, property companies with lower ratings do not tend to have 
a greater number of red flags. However, a degree of correlation exists for 
non-property firms..."</blockquote>
<p>But here's what the SFAT seems to have missed. Moody's was looking at "accounting and governance 
warning signs". A badly-run but well-capitalised company (or government) will 
naturally have a better credit rating than a badly-run under-capitalised company 
(or government), because what credit ratings are supposed to measure is the 
probability of default on the debt and interest obligations, not the governance 
or accounting quality. Put simply, it is the probability of running out of cash. 
So it is unsurprising that there was only a small correlation between <em>
current</em> credit ratings and red flags. Of the 5 areas into which the flags 
were grouped, only 2 of them could be said to relate to credit 
worthiness, involving big capital investments or a mismatch between cashflows 
and accounting profits.</p>
<p>Secondly, it is unsurprising that property companies had no visible 
correlation - because they have real assets (land and buildings) which tend to 
provide more comfort for creditors than say, a mineral exploration company or a 
retailer.</p>
<p>For these reasons alone, it is obvious to an educated reader that the 
red flags were a very different exercise to then-current credit ratings and that 
the correlation between flags and credit ratings <em>should</em> be low, but it 
does not follow that the flags were meaningless and that the report was somehow 
misleading.</p>
<p>Credit ratings are not static over time. A badly-run, well-capitalised 
company may eventually burn through its capital and find it harder to raise more 
equity to refill the coffers. Remember that debt 
ranks ahead of equity on a liquidation, so the red flags are of even greater 
concern to equity investors than creditors.</p>
<h3>How did they do?</h3>
<p>If the Moody's report was so shoddy, you would think that the red-flagged 
companies would have rebounded from the criticism by now, and that the market 
commentators who
<a href="http://www.reuters.com/article/us-china-accounting-idUSTRE76K29L20110721" target="_blank">
quickly disagreed</a> with Moody's (as they were entitled to do) would have been 
proven right. Nearly 5 years later, let's take a look at whether the pudding was 
worth eating.</p>
<p>Moody's identified 6 companies which were "negative outliers" with the 
greatest number of red flags, of which 5 were in the non-property group which, 
Moody's had noted, had some correlation between flags and credit ratings. Of the 
6 companies, 5 were listed in HK (not 4 as the SFAT says):
<a href="../dbpub/orgdata.asp?p=59790">West China Cement Ltd</a> (2233), <a href="../dbpub/orgdata.asp?p=60983">
Winsway Enterprises Holdings Ltd</a> (1733, then "Winsway Coking Coal Holdings 
Ltd"), <a href="../dbpub/orgdata.asp?p=49466">China Lumena New Materials Corp</a> 
(0067), <a href="../dbpub/orgdata.asp?p=41012">Hidili Industry International 
Development Ltd</a> (1393) and <a href="../dbpub/orgdata.asp?p=53913">Longfor 
Properties Co Ltd</a> (0960). So how did they do - was there any predictive 
value?
<a href="/dbpub/ctr.asp?i1=6130&amp;i2=6204&amp;i3=5134&amp;i4=4900&amp;i5=5480&amp;rel=0&amp;d1=2011-07-11" target="_blank">
Click here</a> to see the graphs, or look at this table of returns from 
11-Jul-2011 to 7-Apr-2016:</p>
<table class="numtable center fcl c2l">
	<tr>
		<th>Stock<br>code</th>
		<th>Name</th>
		<th>Webb-site<br>Total<br>Return</th>
	</tr>
	<tr>
		<td>2233</td>
		<td>West China Cement</td>
		<td>-38.24%</td>
	</tr>
	<tr>
		<td>1733</td>
		<td>Winsway</td>
		<td>-98.33%*</td>
	</tr>
	<tr>
		<td>0067</td>
		<td>China Lumena</td>
		<td>-55.02%*</td>
	</tr>
	<tr>
		<td>1393</td>
		<td>Hidili Industry</td>
		<td>-96.88%*</td>
	</tr>
	<tr>
		<td>0960</td>
		<td>Longfor Properties</td>
		<td>-10.07%</td>
	</tr>
	<tr>
		<td>2800</td>
		<td>The Tracker Fund of HK</td>
		<td>+5.14%</td>
	</tr>
</table>
<p>The performance is actually worse than it looks. Did you spot the asterisks? 
That means the stock is suspended from trading.</p>
<p>Winsway and Hidili were both suspended on 1-Apr-2016 for failing to publish 
their 2015 results on time. Winsway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0508/LTN201505081076.pdf" target="_blank">
defaulted</a> on its offshore bonds on 8-May-2015 and is now in the middle of a 
debt restructuring exercise. Hidili began defaulting on its onshore debts in 
Jun-2015, but didn't
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1030/LTN201510301106.pdf" target="_blank">
say so</a> until 30-Oct-2015, and is now in
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0311/LTN20160311917.pdf" target="_blank">
negotiations</a> for debt restructuring.</p>
<p>China Lumena has been
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0328/LTN20140328290.PDF" target="_blank">
suspended</a> since 10:56 on 25-Mar-2014 as it was unable to produce its 2013 
results on time and to answer criticisms in two research reports. Webb-site
<a href="westralian.asp">warned readers</a> about this company back 
on 25-May-2010, over a year before the Moody's report. On 4-Mar-2015, 
provisional liquidators were
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0304/LTN20150304581.pdf" target="_blank">
appointed</a>, and on 2-Jul-2015, the INEDs
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0702/LTN201507021473.pdf" target="_blank">
all quit</a>. The 2013 results are still not published, and the second stage of 
delisting has just expired, so it is one step away from delisting. </p>
<p>And that just leaves US-listed LDK Solar Co Ltd, which
<a href="http://www.reuters.com/article/ldk-bond-idUSL5N0D31CU20130416" target="_blank">
began defaulting</a> on its bonds in 2013 and
<a href="http://www.bloomberg.com/news/articles/2014-10-21/ldk-solar-affiliates-file-for-u-s-bankuptcy-protection" target="_blank">
filed for bankruptcy protection</a> on 21-Oct-2014.</p>
<p>So that's a pretty impressive hit-rate for Moody's with 4 of the 6 "negative 
outliers" defaulting on their debts within 4 years, and the other 2 having 
massively under-performed the stock market, even though one of them, West China 
Cement, is now under a takeover offer. Tell us again, what was wrong with the 
red flags report?</p>
<h3>Explanations</h3>
<p>Moody's chose to keep its report to a relatively brief 25 pages (including 
disclaimers). Except for the 6 outliers, it did not provide a detailed 
explanation or analysis for each of the 1220 tests performed or the 980 tests on 
the High Yield companies. The SFAT wrote:</p>
<blockquote>"the Tribunal has little difficulty in concluding that, in its 
failure to provide commentary on all of the red flags, Moody's not only made it 
impossible for readers to accurately assess the significance of the flags in 
context but, by that fact, created and unfair, unclear and misleading picture of 
creditworthiness of a material number of the companies allocated red flags. As 
such, its failure constitute a breach of General Principle 1 of the Code of 
Conduct..."</blockquote>
<p>In our view, that strays into micro-management of how a research firm chooses 
to present its work. The methodology of the 20 tests was adequately described in 
Appendix 1 of the Moody's report. It is unreasonable to say to researchers who 
compile such surveys of the corporate landscape that they must either publish 
all of their workings on each test, or no report at all. Having seen the flags, 
given that they were all based on public disclosures, it was possible for any 
reader who wished to dig further to do so on her own, and to verify the findings 
herself. Moody's had also made it clear that it was not ascribing weightings to 
the flags, and that they were only areas warranting further investigation.</p>
<h3>Jurisdiction and free speech</h3>
<p>We agree with the Tribunal's conclusion that Moody's was carrying out a 
licensed function by publishing the report under its name and in connection with 
its credit ratings. If a different unlicensed company (perhaps a fellow 
subsidiary) or a publication like Webb-site Reports, had published the report 
instead, making it clearer that the flags were not themselves credit ratings, 
then the SFC would not have had jurisdiction as licensor, but that was not the 
case. It was unfortunate that Moody's chose to attack the SFC's jurisdiction 
rather than just confronting the allegation head-on.</p>
<p>We also agree that, if you are writing as a licensed entity, then you are 
held to higher standards than the general public in your comments. The freedom 
of speech is not absolute, and there is a legitimate purpose fulfilled by 
imposing minimum standards so that customers can rely on the licensing system as 
providing some basic level of informed and skilled research - otherwise there 
would be little point in a licensing system. So the licensing system, in itself, 
is not a constitutionally unnecessary restriction on Basic Law/Bill of Rights 
free speech. But that does not mean that research should be flawless or that 
standards should be set so high as to deter research for fear of minor errors 
causing regulatory sanctions.</p>
<h3>Conclusions</h3>
<p>Could the report have been better-written, and clearer in the limitations of 
its findings? Yes it could. Could the flag-tests have been better than 98.8% 
correct? Yes, they could. Was the report of a lower standard than all the other 
pieces of (mostly positive) research that the SFC has allowed to circulate 
without interference? Certainly not. That's what makes a market - and research 
firms rise and fall based on the quality of their output. We liked 
the Moody's report, and we want to see more of that kind of critical research - 
but what licensed firm will now dare to publish such a report if the 
regulator is going to pick it apart afterwards and then slam them with a fine 
and potential loss of licenses for the individuals involved?</p>
<p>If listed companies disagree with research reports, they are of course 
entitled to respond with rebuttals, clarifications of their past disclosures or 
explanations, to ask for corrections, or even to sue for libel or defamation. As 
far as we know, none of the companies involved has sued - the criticism wasn't 
that far wrong.</p>
<p>Not only has the SFC pursued a licensee's report, they have also gone after 
an unlicensed person in the Market Misconduct Tribunal for expressing his 
negative opinions about a company while putting his money where his mouth was 
and being short: Andrew Left, of Citron Research, writing about
<a href="../dbpub/articles.asp?p=44714">Evergrande Real Estate Group Ltd</a> 
(3333). The verdict in that case (also Chaired by Justice Hartmann) is awaited. In our view, unless the SFC can 
show that Mr Left didn't believe what he was saying, then the statement of his 
opinion cannot be false - however wrong his opinion turned out to be.</p>
<p>The SFC, and now the SFAT, has done Hong Kong a disservice by chilling 
negative criticism of companies, thereby skewing the market even further towards 
positive research. "Sell-side" investment banks world-wide tend to withdraw 
coverage of a stock or use euphemisms rather than issue a sell note on a 
potential client. They will say "reduce", "hold", or "buy on weakness" (when it 
goes down) rather than say "sell". Hong Kong sits on the doorstep of a country 
which stamps out all forms of criticism. We need to strengthen and encourage, 
not weaken, freedom of debate and criticism of companies. </p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=44714">China Evergrande Group</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49466">China Lumena New Materials Corp.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=60983">E-Commodities Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41012">Hidili Industry International Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=53913">Longfor Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=131541">Moody's Investors Service Hong Kong Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59790">WEST CHINA CEMENT LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=77747">Ding, Chen (SFC:ARN081)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29934">Hartmann, Michael John</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2362187">Left, Andrew Edward</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=57349">Mak, Billy Sui Choi</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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