
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

<script type="text/javascript">document.title="Faster and quarterly financial reporting";</script>

	<div class="summary">We need your help! After trying once in 1998 and again in 2002, Hong Kong is again proposing faster financial reporting and mandatory quarterly reporting, to catch up with the rest of Asia, including mainland China, where quarterly reports have been mandatory since the start of 2003. With your support, we hope to overcome vested interests this time. Please take our opinion poll!</div>

<h2 class="center">Faster and quarterly financial reporting<br>
<span class="headlinedate">24 September 2007</span></h2>
<p style="text-align: center"><b>
<a target="_blank" href="../vote/poll.asp?p=20">Please take our 
Financial Reporting Poll</a></b></p>

<p>In a consultation paper published on 31-Aug-07, the Stock Exchange of Hong 
Kong Ltd (the <b>Exchange</b>)<sup><a href="#1">1</a></sup> has proposed the 
introduction of mandatory quarterly reporting for companies listed on its main 
board. This reporting frequency would bring the main board into line with the 
Exchange's 
Growth Enterprises Market (<b>GEM</b>), which has required quarterly reporting 
since it was launched in 1999, and with the rest of Asia, where HK is now the 
last significant market not to require it. Mainland China's CSRC has required 
quarterly reporting by all listed companies since the first quarter of 2003.</p>
<p>Long-time readers will recall that mandatory quarterly reporting was last
<a target="_blank" href="showusthemoney.asp">proposed</a> by the Exchange in its 
Jan-02 consultation, which included other proposals on corporate governance. 
Several of these proposals, including quarterly reporting, were abandoned a year 
later under pressure from vested interests. The Exchange justified its back-pedalling 
with a <a target="_blank" href="investorsignored.asp">distorted analysis</a> of 
responses, in which it counted 337 responses submitted by the public through a 
submission form on <i>Webb-site-com</i> as a single response, while counting 
responses from listed issuers and their advisers separately, and concluded that 
a 60% majority were opposed to quarterly reporting. If the public's responses 
had been counted, then overall, 82% of responses supported mandatory quarterly 
reporting, and 81% supported a 45-day deadline.</p>
<h3>Key factors</h3>
<p>The factors in relation to information disclosure in general are quite simple 
and relate to frequency, detail, speed, value and cost.</p>
<ul>
	<li><b>Value</b>: information is the basis of all rational decisions, 
	including investment decisions. Less 
	information increases uncertainty and risk, and investors 
	accordingly discount the price they are willing to pay for shares. That 
	increases the cost of capital for issuers, and makes them less competitive.</li>
	<li><b>Speed</b>: Information decays over time. Faster disclosure increases 
	information value. The older the information is, the less 
	relevant and reliable it is in an investment evaluation. Insiders usually have 
	fresher information than outsiders. Any company that can't produce monthly 
	management accounts for insiders shouldn't, in our view, be listed.</li>
	<li><b>Frequency</b>: The more frequent 
	the disclosure is, the lower the average age of the information over any 
	period of time, and the less variation in that age. More frequent disclosure 
	reduces the gap, or &quot;information asymmetry&quot;, and reduces the risk of loss through insider dealing. 
	See the chart later in this article.</li>
	<li><b>Detail</b>: The more detail in financial disclosures, the greater 
	their value, but with 
	diminishing returns the deeper you go. New information (assuming it is truthful) never has negative value 
	(except in the world of
	<a target="_blank" href="http://www.damtp.cam.ac.uk/user/jono/negative-information.html">
	quantum mechanics</a>). Otherwise, by reading it, a completely ignorant 
	person could come to know less than nothing. At 
	worst, it has vanishingly small value . For example, the number of 
	paperclips on a CEO's desk might tell you whether he is a tidy person, which 
	is of little value unless you happen to know whether companies with tidy 
	CEOs outperform on average.</li>
	<li><b>Cost</b>: The cost of gathering and publishing information is always greater than 
	zero, but improvements in technology (such as accounting software and 
	electronic resource planning) and publication (electronic disclosure) 
	reduce this. If the cost of publishing information is greater than its 
	value, then shareholders are worse off financially. That's why companies 
	don't publish financial statements every day (although a retail CEO might 
	well get daily sales figures).</li>
</ul>
<h3>Current situation</h3>
<p>For companies that report on or close to the current deadlines of 3 months 
for interim results and 4 months for annual results, the average age of balance 
sheet information throughout the year is about 6.5 months, ranging from 3 months 
just after the interim results to 10 months just before the annual results. For 
example, if a company has a December year-end and reports on 30th April, then 
the last financial information you have before that is the condensed balance 
sheet in the interim report for the 6 months to June, 10 months earlier. Not 
only that, but the period you are looking at actually began 16 months ago, and 
so the average age of the income statement is 13 months old. When you get the 
full-year results on 30th April, you can work out the second half-year, and 
again, that began on 1st July, 10 months ago, and its mid-point was 7 months 
ago. Throughout the year then, the average age of income statement data is 9.5 
months.</p>
<p>As a result, investors spend a large part of each year in the dark, and the 
lights are dim even when they come on. It's a crapshoot, so it is no wonder 
investors treat the market like a casino. They trade on rumour or, if they can get it, inside information 
(sometimes the same thing). That's one of 
the reasons why fund managers and investment bank analysts spend so much time on 
company visits and talking to management, rather than just analysing publicly 
available information. Faster and more frequent reporting would make the playing 
field more level, and the professionals would have to work harder at their own 
research.</p>
<h3>The new proposals</h3>
<p>The consultation paper now proposes two changes on frequency and speed, all 
of which were first proposed in a
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/conpaper2.htm">
consultation paper in Dec-98</a> and again in Jan-02, but were not implemented 
on either occasion:</p>
<ul>
	<li>To require interim results within 60 days (or 2 months) and annual 
	results within 90 days (or 3 months). This will reduce the average 
	balance-sheet age from 6.5 months to 5.5 months, and the average income 
	statement age from 9.5 months to 8.5 months.</li>
	<li>To require mandatory quarterly reporting within 45 days (1st and 3rd 
	quarters). Together with the first proposal, this will cut the average 
	balance sheet age to 3.5 months, and the average income statement age (based 
	on the mid-point of the latest reported quarter) will be cut to 5 months.</li>
</ul>
<p>We support the general direction of these proposals, but they don't go far enough. 
They are deficient in the following respects:</p>
<h4>1. Even more condensed</h4>
<p>The Exchange proposes to <i>&quot;keep the content of the quarterly reports to a 
minimum&quot;</i> (para 62). They make it sound like a vaccination - &quot;don't 
worry, this won't hurt much&quot;.</p>
<p>The half-year financial statements have always been 
&quot;condensed&quot; - the income statement, balance sheet and 
cashflow statement show fewer lines and less information than the annual 
statements. In particular, we find the interim cashflow statement of many 
companies is often so condensed as to be meaningless. Now, the Exchange is 
proposing that the quarterly statements should be <i>even more</i> condensed than the 
interims. Pages 22-24 of the paper show what they have in mind - they should 
call it &quot;very condensed&quot;. For example, there would be a single total for 
&quot;current assets&quot;, without the normal breakdown between cash, receivables, 
inventory and investments, and a single total for current liabilities, without 
the detail of accounts payable, bank loans, and so on. It would be impossible to 
work out many of the most basic ratios of financial analysis, such as net debt, 
the quick ratio, debtor days and so forth. It's about as dense as a black hole, 
from which no information escapes.</p>
<p>All that this achieves is to hide details which the company must already have 
in order to produce the totals in the first place. You can't reach a sum without 
the parts. So it doesn't save them any material work. This is not a time-saving 
proposal, but a secrecy proposal.</p>
<p><b>In our view, the quarterly financial statements should be at the same standard of 
detail as the interim statements. In 
other words, there should be 3 quarterly statements in the same format. We also 
believe that the level of detail should be almost the same as for annual financial statements, 
except for the following:</b></p>
<ul>
	<li>No requirement to audit the 3 quarterly statements. Either the audit 
	committee or the auditor should review them, in line with the current 
	requirement for interim results.</li>
	<li>No requirement to revalue property assets, goodwill or other intangibles 
	(such as licences, trademarks or copyrights) each quarter, so long as the 
	directors are of the view that there has been no material change in 
	valuations. Since these valuations are subjective anyway, they can judge 
	whether to update the valuations.</li>
	<li>No requirement for a breakdown of directors' and senior management's 
	remuneration in the 3 quarterly results</li>
	<li>No requirement for lists of all the subsidiaries and associates - just a 
	list of additions and removals for the quarter</li>
	<li>No requirement for list of investment properties - just a list of 
	additions and removals for the quarter</li>
</ul>
<p>The Exchange also proposes not to require a list of shareholdings of 
directors and substantial shareholdings or share buybacks in quarterly reports, as are currently 
found in interims. We find that information valuable, as it is a snapshot 
tabulation which is far more readable than the mish-mash of individual 
disclosures, using obscure codes, that can be found on the HKEx search page. It 
should be included in quarterly reports, as it is on the GEM.</p>
<p>To be clear, when we talk about the &quot;same format&quot; for financial statements, 
we are <u>not</u> suggesting that the other parts of an annual report, outside 
of the financial statements, need to appear quarterly. That would be overkill, 
as little of this (such as biographies and corporate governance) changes from 
quarter to quarter. All that is needed are the financial statements and a 
management discussion and analysis, including comments on current trading and 
prospects.</p>
<h4>2. Timing</h4>
<p>We see no reason for allowing 60 days (that is, an extra 15 days) for the 2nd 
quarterly results. It takes no more time to consolidate your accounts for the 
second quarter than it does for the first or third quarters. <b>So we propose that 
all three quarters should be produced within 45 days of the quarter end. That is 
the same as the GEM since its launch in 1999.</b></p>
<p><b>3. Means of publication</b></p>
<p>Hard copy documents consume enormous amounts of paper as well as energy in 
printing them, transporting them and mailing them. They clog mail-boxes and 
landfills. They also increase the cost of being listed in Hong Kong. It is time 
for the Exchange to take the next step in the publication methods for financial 
reports and shareholder circulars. For several years, the Listing Rules have 
contained a process by which companies can invite registered shareholders to opt 
out of receiving hard copies, and instead receive e-mail notification or simply 
rely on a web site. However, many companies have not taken advantage of this, 
because those that do have found a very low response rate to the mail-in form, 
and there is an administration cost attached to the opt-out process. In short, 
it is probably cheaper to print and mail to everyone than to run an opt-out 
process.</p>
<p>The Exchange should now move from an opt-out process to an opt-in process, 
whereby companies can write to shareholders once and say &quot;until we hear from 
you, we will assume that you do not require hard copies&quot;. A shareholder could 
still opt-in to receive hard copies at any time. In doing this, we must be 
careful not to further disenfranchise investors from voting, so unless a 
shareholder has provided an e-mail address, they should still be sent hard 
copies of proxy forms whenever a shareholder meeting is called, together with a 
note which offers a printed circular and tells them where they can download it 
instead, and how to opt for e-mail notification in future.</p>
<p><b>The Exchange proposes that there should be no requirement for printed 
quarterly reports. We agree, but we think this should include the 2nd quarter, 
to be consistent with our proposal that all three quarterly reports should have 
the same format and content.</b></p>
<h3>Comparison</h3>
<p>Below is a chart which shows the staleness of the balance sheet data for a 
company which discloses on the deadlines. We show the current reporting (black 
line), the faster interim and annual reports the Exchange proposes, the 
Exchange's additional proposals for two quarterly reports (blue line) and our 
proposal for three quarterly reports (red line). As you can see, simply 
accelerating interim and annual reports by a month doesn't do much - you still 
find yourself eating stale bread most of the year. Quarterly reporting is the 
key to getting fresh bread.</p>
<p>The red line produces 3 equal cycles where the balance sheet ranges from 1.5 
to 4.5 months old with an average of 3 months, followed by a longer wait for the 
year-end results, while the balance sheet age climbs to 6 months in the last 
6-week period. That last part can't be resolved unless we introduce a 4th 
quarter unaudited result, ahead of the annual audited results. Singapore is one 
place which does this, requiring unaudited annual results within 45 days, but 
allowing 3 months for annual reports with audit.</p>
<img class="center" alt="" src="../images/quarte1.gif">
<h3>No more delays</h3>
<p>The Exchange notes that the large-caps of Hong Kong (which it defines as over 
HK$10bn (US$1.28bn) at 31-Dec-06) already report faster on average than the small-caps, for 
both interim and final results. It then makes an illogical leap by saying that 
companies below this size <i>&quot;will require additional time to prepare for the 
new deadline.&quot;</i> And further suggests that small caps need more time than 
large caps to 
prepare for quarterly reporting. </p>
<p>There is no evidence to support this. GEM companies, most of which 
are small, have all been reporting three quarters (including interims) within 45 
days and annually within 90 days since 1999. If they can do it with their 
limited resources, and usually with operations in the mainland, then so can 
main-board small-caps. In reality, there are other reasons for slow reporting by 
companies:</p>
<ul>
	<li>The Listing Rules allow insiders to keep 
	dealing until 1 month before the results come out. By delaying the results, 
	they have more time for insider dealing, including share trading and option 
	grants. Of course, if a regulator can prove that insider dealers knew that the results 
	would surprise the market (negatively or positively), then it can still take 
	action, but the burden of proof is much higher than for the 1-month closed 
	period. We've been making this point for years and the Exchange has yet to 
	close the loophole. Dealing should be prohibited from the period end until 
	the results are announced.</li>
	<li>Competitive secrecy - they don't want competing businesses to see their 
	results any sooner than they see their competitors' results.</li>
	<li>General disregard for minority shareholder interests - most of these 
	companies have a controlling shareholder, so there is no risk of a hostile 
	bid, and if they are not in capital-raising mode, then they see no reason to 
	do more than the minimum required by Listing Rules. They may even be happy 
	to see their share price discounted, so that the controller can increase its 
	shareholding over time or privatise the company.</li>
</ul>
<p>There is a precedent for the introduction of faster reporting in HK, and it 
didn't take long. On 16-May-00, the Exchange
<a target="_blank" href="http://www.irasia.com.hk/regbod/hk/sehk/press/p000516.htm">
announced</a> that annual reports would be required within 4 months of the year 
end, versus 5 months previously, and that (shock, horror) interim reports would 
have to include balance sheets and cashflow statements. The rules took effect 
for all companies, large and small, for periods ending on or after 1-Jul-00. In 
practice, that meant that companies with Dec-00 year-ends had to get their next 
annual report out by 30-Apr-01. <b>They all had less than 8 months to prepare.</b> 
Compliance was high, and the companies which put their results out at the last 
moment were the same ones as before - they had just brought it forward by a 
month when required to.</p>
<p>Not only does the Exchange propose discriminating between large and smaller 
companies, but it also proposes, in effect, to discriminate based on their 
year-ends, by introducing the faster interim reporting requirements for Jun-08 
(Jun-10 for smaller companies) faster annual reports for Dec-08 (Dec-10 for 
smaller companies), and quarterly reports for Sep-08 (Sep-10 for smaller 
companies). That means that if you have a June year-end, then you won't have to 
produce your first &quot;faster&quot; report until the interim period for Dec-08 (Dec-10 
for smaller companies).</p>
<p><b>In our view, the rule changes should take effect for all companies at the 
same time, regardless of their financial year-end. That is, the rules should 
take effect for quarterly, interim (2nd quarter) and annual reports for all 
periods ending on or after 30-Jun-08. Even then, this will all be taking effect 
almost 10 years after it was first proposed.</b></p>
<h3>We need your support</h3>
<p>Despite being the last man standing in Asia, getting quarterly reporting 
won't be an easy win. Already there are rumblings from the Chambers of Vested 
Interests that quarterly reporting is more information than investors can 
handle. They say that the additional information will increase uncertainty and 
hence volatility. In their quantum minds, information really does have negative 
value. We'd all speculate less if we didn't have so much information. Indeed, it 
follows from this twisted logic that if we had no information, or perhaps 
5-yearly reporting rather than quarterly reporting, then nobody would speculate 
at all. They also suggest that management will behave in a short-term fashion if 
they have to report more often. That's hardly likely to be the case when the 
management is, or is appointed by, the controlling shareholder - they will 
continue to seek long-term value, at least for themselves, if not for everyone 
else. Perhaps what they are really afraid of is that the share price might 
better reflect the actual state of affairs if people had better information, and 
that would make it harder for insiders to exploit mis-pricing.</p>
<p>Accountants, of course, are unlikely to be jumping for joy either at the idea 
of having to work harder during the peak seasons for results. Senior partners 
must be agonising over the thought of their profit margins being hit with a 
higher headcount. But the Government should be happy that it creates more jobs 
in the profession.</p>
<p>The last time we asked you to send submissions through our site, 5 years ago, 
the submissions weren't counted. So we don't propose to do that again, although 
you can make a full submission if you want. Instead, we will use our opinion 
polling system, and present the result of that poll to the Exchange. Hopefully, 
through sheer weight of numbers, they will not ignore public opinion this time. 
So please, support our poll. </p>
<p style="text-align: center"><b>
<a target="_blank" href="../vote/poll.asp?p=20">Please take our 
Financial Reporting Poll</a></b></p>
<p>Notes:</p>
<p><a id="1">1</a>. The Exchange is a wholly-owned subsidiary of Hong Kong 
Exchanges and Clearing Ltd (<b>HKEx</b>, 0388). As an elected independent 
non-executive director of HKEx, your editor David Webb has no role in listing 
matters, which are handled by the Exchange and its Listing Committee of outside members.</p>

<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=177">Quarterly financial reporting</a></li>
				
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