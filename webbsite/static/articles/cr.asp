
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

<script type="text/javascript">document.title="Companies Registry illegally overcharged users HK$3.6bn";</script>

	<div class="summary">The CFA has ruled that Trading Funds must not seek distributable profit or pay "notional tax". Webb-site finds that the Companies Registry has overcharged users HK$3.6bn since 1998, making up to a 94% return on fixed assets against a target 5.7%. The illegal excess should now be returned by waiving fees, including scrapping the Great Paywall of HK on corporate information. It should not take another judicial review to do so.</div>

<h2 class="center">Companies Registry illegally overcharged users HK$3.6bn<br>
<span class="headlinedate">19 November 2018</span></h2>

<p>Webb-site is celebrating its 20th anniversary this month, and over the years, 
we have frequently criticised the opacity of the 
<a href="../dbpub/articles.asp?p=2322557">Hong Kong Companies Registry</a> 
and its obscene monopoly profits, generated from excessive filing fees and from 
the Great Paywall of Hong Kong on corporate information, against the public interest.</p>
<p>The Companies 
Registry Trading Fund (<strong>CRTF</strong>) is a government department 
converted on 1-Aug-1993 to a "Trading 
Fund" (<strong>TF</strong>) under the
<a href="http://www.hklii.hk/eng/hk/legis/ord/430/" target="_blank">Trading 
Funds Ordinance</a> (<strong>TFO</strong>) to provide a government service.</p>
<p>On 27-Dec-2017, 
the Court of Final Appeal, in a judgment (<a href="https://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=112877" target="_blank">FACV11/2017</a>) 
involving another TF (the Communications Authority), confirmed what we had long believed: 
the registry as a government service was supposed to cover its costs, not make a 
stonking great profit. As the economies of scale kicked in with increasing 
usage (<a href="https://webb-site.com/dbpub/incHKannual.asp" target="_blank">statistics 
here</a>), it should have cut its tariff, but failed to do so. The CFA ruling states 
that unless 
the enabling legislation includes the purpose of making a profit or levying a 
tax, then a TF cannot budget to make a distributable profit or pay a 
"tax" to the Government, as the CRTF did.</p>
<p>Like the Telecommunications Ordinance, the
<a href="http://www.hklii.hk/eng/hk/legis/ord/622/" target="_blank">Companies 
Ordinance</a> does not authorise the imposition of any tax, so the CFA's ruling applies to 
the Companies Registry too. Put simply, then, the Companies Registry has 
illegally overcharged users 
by failing to revise its fee scales over the years to produce revenue in line 
with its costs, including a reasonable return on fixed assets. TFO <a href="http://www.hklii.hk/eng/hk/legis/ord/430/s6.html" target="_blank">
Section 6(6)</a> requires the general manager of a TF (in this case, the 
Registrar of Companies) to manage it with the objectives of:</p>
<ol type="a">
	<li>providing an efficient and effective operation that meets an appropriate 
	standard of service;</li>
	<li>within a reasonable time, meeting expenses incurred in the provision of 
	the government service and financing liabilities of the trading fund out of 
	the income of the trading fund, taking one year with another; and</li>
	<li>achieving a reasonable return, as determined by the Financial Secretary, 
	on the fixed assets employed.</li>
</ol>
<p>Upon establishment by an
<a href="http://www.hklii.hk/eng/hk/legis/reg/430B/empowering.html" target="_blank">
enabling resolution</a> of the Legislative Council passed on 1-Jun-1993, the Government transferred 
the registry's assets into the 
CRTF financed by 
a Government loan of HK$276.7m and capital of $138.46m, in other words, 2 parts 
debt to 1 part equity, so that the CRTF could then "pay back" the loan out of its 
surplus in 10 equal annual instalments of $27.67m up to 1-Aug-2004, with 
interest. As
<a href="http://www.hklii.hk/eng/hk/legis/ord/430/s2.html">TFO s2(1)</a> states, 
a TF is "an accounting entity within the Government (but not having a separate 
legal existence)", so this is largely just an accounting exercise - the TF is 
not a company.</p>
<p>The "reasonable return" on fixed assets set by the Financial Secretary (<strong>FS</strong>) 
for the CRTF started at 10%, based on profit after paying "notional tax" to the 
Government. For years up to 31-Mar-2006, this target return was calculated 
including interest income but excluding interest expenses, but for the year to 
31-Mar-2007 onwards, it was redefined to be the profit after "notional tax" 
excluding interest income and expenses, although by then there were no interest 
expenses, because the Government loan had been repaid. In the same year, the FS cut the 
"reasonable return" to 8.3%, 
perhaps to offset the exclusion of interest income from the calculation. We're 
going to be generous in our calculations and assume that from 1998 to 2006, the 
target rate of profit excluding interest income was still 10%.</p>
<p>As we all know, the risk-free HK$ rate plunged during the global financial 
crisis of 2008-9, but the FS left the "reasonable return" at 8.3% 
until 2013, then cut it to 6.7% until 2017 and finally 5.7% in the latest 
2017/18 year. Now that the CFA has ruled that it was unlawful for the CRTF to be 
paying "notional" tax and dividends to the Government, the correct calculation 
of return is profit before interest income, divided by fixed assets (which are 
averaged between the year-ends). Webb-site has examined the accounts and 
recalculated the returns, and we can tell you that in each of the last 20 years, 
the CRTF exceeded the target return, in most years by massive amounts. Just 
look at this:</p>
<img class="center" src="../images/cr.png" alt="20 years of illegal profits at the Companies Registry">
<p>Based on the target rates of return set by the FS, the total 
target profit for the 20-year period was HK$681m, but the actual profit was 
$3401m, and that is in "money of the day" (<strong>MOTD</strong>) - not allowing for the return that 
customers could have made on the overpayments. So the excess MOTD profit is about 
HK$2.72bn. Total revenue during that period was HK$8.02bn, so users were 
overcharged by an average of 51%. In the most recent year 2017/18, the revenue 
was $648m and the target return (5.7% of average fixed assets) was $19.4m, but 
the actual surplus was $319m, so users were overcharged by 86% and fees would need to be cut by 46% just to achieve the 
target return, and then cut some more because when you lower fees, you attract 
more business at the margin. That's before we begin to contemplate refunding the 
historic overpayments.</p>
<p>These surpluses were not accidental - it was obvious from 2005 onwards 
that they were overshooting the target, making a 21.4% pre-tax return on fixed 
assets that year, and they have not looked back since then, rising to a record 
94.2% in 2017 and 93.6% in 2018. The registry adopted a 30% dividend "payout" to 
Government until 2005, then 50% until 2008 and finally 100% from 2009 to 2017, 
because the cash was piling up so fast. Investment in fixed assets has been no 
faster than depreciation charged against income; the fixed assets have actually 
fallen from about $420m in 1998 to $341m in 2018, despite the introduction of 
electronic incorporation, filing and search facilities. So it cannot reasonably 
be argued that the CR needs to hoard reserves for future development. They can 
pay as they go.</p>
<p>After the CFA ruling in Dec-2017, the 2017 dividend provision was 
reversed in the
<a href="https://www.cr.gov.hk/docs/ar/2018/full_report_e.pdf" target="_blank">
2017/18 accounts</a> and they have stopped paying tax and dividends, instead 
hoarding the cash, part of which is now deposited in the Exchange Fund run by 
the HK Monetary Authority and the rest in banks. At 31-Mar-2018, the cash and deposits amounted 
to <strong>HK$1.19bn</strong>, and it is growing at the rate of about $6m of 
profits per week plus interest.</p>
<h3>What the Government owes the Companies Registry</h3>
<p>The "dividends" and "tax" unlawfully taken by Government in the last 20 
years are HK$2,007m and $508m in MOTD respectively, plus interest. As the Government charged interest 
on its loan at the HK Prime (Best Lending) Rate, it is only reasonable that they 
should also pay the same rate of interest back to the CRTF on the amounts they 
took, compounded over the last 20 years. We've done that calculation, and we 
estimate the total amount due at <strong>HK$3.54bn</strong> as of 31-Mar-2018, 
plus interest since then.</p>
<h3>What the Companies Registry owes the public</h3>
<p>Of course, the purpose of returning the illegal tax and dividends is not to 
stuff the coffers of the CRTF even further, but to return it to the public, 
who were overcharged in the first place. Applying the same Prime interest rates 
to the cumulative annual excess profits over the last 20 years brings us to a 
total owed to the customers at 31-Mar-2018 of <strong>HK$3.64bn</strong>, in 
2018 dollars. Now 
although Webb-site has been using the registry all of that time, not everyone has - 
companies paid fees and then dissolved, and newer companies came along later, so 
it is impractical to identify everyone who was overcharged and the amount on each transaction.</p>
<p>In the circumstances, after recovering the money from the Government treasury, 
the morally right thing for the CRTF to do is to return it to current and future 
users by waiving all fees until the surplus is returned, with interest 
accumulating on the remaining balance until it is fully returned. The operating 
costs of the registry were $347m in 2017/18, so allowing for a bit of cost 
inflation and a 5.7% annual return on fixed assets, it would take about 8-9 
years to return the overpayment with a full fee waiver.</p>
<p>By our reckoning, at 31-Mar-2018 the registry only owes the public about 
$100m more than it paid the Government, so it can still keep about HK$1.1bn of 
its cash pile for its future development. That represents the cumulative "reasonable 
return" that it should have made over the last 20 years, for future investment, 
and goodness knows, they could start by improving
<a href="https://www.icris.cr.gov.hk" target="_blank">ICRIS</a>, the medieval 
internet search system.</p>
<h3>Tear down the Great Paywall of Hong Kong&nbsp;</h3>
<p>Of course, waiving all fees, including search fees, would have another huge 
benefit: transparency, in the fight against <a href="tangwingkei.asp">fraud</a>, corruption and money-laundering. The 
Great Paywall of Hong Kong would be torn down, opening up corporate records to 
full scrutiny by the media and public, and bringing HK into line with leading jurisdictions such as the UK and New Zealand which charge nothing for 
public data. Once the paywall is removed, the registry 
should stay open forever. There is only a trivial cost in making electronic 
records available to the public, because the Government would store them 
electronically even if they were not open. The public cost of fraud, corruption and financial 
crime is far greater. The same applies to the Land Registry.</p>
<p>We call upon the Government to do the right thing. Pay back the money you 
took illegally, and return it to users of the Companies Registry by waiving 
their fees - and do it 
before someone brings a judicial review of your failure to do so, almost a year 
after the highest court in the land ruled against this extortionate behaviour.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1866279">COMMUNICATIONS AUTHORITY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2322557">HKSAR Companies Registry</a></li>
				
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