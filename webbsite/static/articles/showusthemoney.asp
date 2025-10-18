
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

<script type="text/javascript">document.title="Listing Rules Review Part 4: Show us the Money";</script>

	<div class="summary">In Part 4 of our review of the proposed Listing Rule changes, we look at the proposals on financial reporting, including the long-awaited move to quarterly statements. When directors and controlling shareholders know what is going on daily, why shouldn't all other shareholders be told quarterly? Suggestions from HSBC and others that the market, for its own good, shouldn't be told too much too often, are disingenuous nonsense.</div>

<h2 class="center">Listing Rules Review Part 4: Show us the Money<br>
<span class="headlinedate">28 March 2002</span></h2>
<p>The first three articles in this series contained heavy
criticism of the Stock Exchange of Hong Kong Ltd (<b>SEHK</b>) for bending to
the tycoons' wishes and putting form over substance. We told you in <a href="displacement.asp"> Part 1</a> how
they proposed no limits on dilutive non-pre-emptive share issues, in <a href="boardgames.asp"> Part 2</a> that
they do not want independent shareholders to elect independent directors, and in
<a href="countthevotes.asp">Part 3</a> on how they think counting 1 vote per share is a waste of time and should
only occur on certain occasions. Now for credit where it is due: on financial
reporting, they've actually got it almost right - and that means they are
running into opposition from the issuers. </p>

<h3>Background</h3>

<p>The vast majority of HK-listed companies have a controlling
shareholder, or group of shareholders, who are represented on the board. As a
consequence, that shareholder has daily access to any information they want from
the company. This creates what is known as &quot;information asymmetry&quot;
amongst shareholders -
or put simply, they know some things that you don't. Of the 33 companies in the
Hang Seng Index, only one (HSBC Holdings plc) has no controlling shareholder,
and that is a UK company with a head office in London. </p>

<p>Several of the incentives to voluntary disclosure, which exist
in markets such as the UK and US, are nearly absent in Hong Kong. Most of the
difference is due to the fact that US and UK blue chips are normally
&quot;diversely held&quot; with no controlling shareholder, and also to the
different legal system in the US. For example: </p>

<ul>
  <li>
    <p>since there is no controlling shareholder to dilute, equity
    is often used as a currency for acquisitions or expansion - so it is
    important to maintain a strong share price;</li>
  <li>
    <p>conversely, management who ignore their shareholders and let
    their share price drift down are at risk of being taken over and losing
    their jobs (the market for corporate control is open);</li>
  <li>
    <p>a strong share price supports the value of management share
    options; and</li>
  <li>
    <p>in the US case, management can easily find themselves in
    receipt of a class action if they trade the company's shares in the
    knowledge of undisclosed information.</li>
</ul>
<p>As a consequence, diversely held companies are more likely to
put out a stream of voluntary disclosure well above the minimum regulatory
requirement, such as trading statements, profit warnings, announcements of new
contracts and business development. </p>

<p>In a controlled-company market such as HK, most companies do no
more than the
minimum required disclosure. Others go through occasional bursts of transparency
when they want your money, and then lapse into opacity when the need has passed,
and often begin expropriating it for the benefit of connected persons. Consequently, compulsory
financial statements represent your main source of information flow on the performance
of a HK-listed company, unless of course you are the controlling
shareholder. </p>

<h3>Quarterly Reporting</h3>

<p>Having read the background, you will appreciate why the SEHK's
proposal to require quarterly reporting represents such a major
breakthrough. This issue has been on the drawing board for many years, and was
last mooted by way of a question in a 
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/paper/conpaper2.htm" target="_blank">1998
consultation paper</a>. <i>Webb-site.com</i> at the time made a <a href="findoscons.asp" target="_blank">submission</a>
in support of quarterly reporting. </p>

<p>However, like so many reforms, the issuers successfully blocked
it and it went no further. This has been the history of Hong Kong corporate
governance, a reform process dominated by family-controlled issuers in which investors
are unrepresented. The <a href="../HAMS/" target="_blank">HAMS Proposal</a>
seeks to level the playing field with investor representation, and government
response to this is still awaited. </p>

<p>In early 2001, the China Securities Regulatory Commission
(<b>CSRC</b>) which regulates the two mainland markets, announced that quarterly
reporting would be introduced from 2002 onwards. Shock, horror! Hong Kong has
been overtaken by mainland China. Clearly, something had to be done. So thanks
to the CSRC, the quarterly reporting proposal is now back in the Hong Kong market. </p>

<p>Let's be clear - any company that doesn't know where it stands
financially on at least a monthly basis, should not be allowed to take public
money and be listed in the first place. They should all have monthly
management accounts, so producing every third set of those accounts for public consumption as an
unaudited
quarterly report should not be a major exercise in accounting. </p>

<p>Reviewing those accounts with auditors (not a full audit) and
having them passed under the noses of the audit committee (including independent
directors) is again, something that should be happening whether or not they are
published. Producing a
management discussion and analysis (MD&amp;A) of those accounts should not be
difficult either, and is necessary for the independent directors to understand
the figures provided by management. </p>

<p>Right from its launch in Nov-99, companies listed on the Growth
Enterprise Market (<b>GEM</b>) have had to report unaudited quarterly results
within 45 days of the period end, the same as for US markets. So GEM has
demonstrated that even for small companies with limited resources, quarterly
reporting is achievable and not prohibitively expensive. </p>

<p>The larger the group, the more capable they should be of
building modern accounting systems. Low-margin businesses such as retailers
normally know even on a daily or weekly basis how much money has passed through
their tills and goods through their warehouses. They have to, in order to
squeeze a profit. Banks are little different - they are highly leveraged
companies with tight supervision from central banks and highly computerised
systems which calculate accrued interest daily, and market positions in their
trading arms often minute by minute. </p>

<p>David Eldon, a director of HSBC and chairman of its local
banking subsidiary, has complained that it would mean <i>&quot;many more board
meetings and many more auditing committee meetings, and much more work for the
company's accountants and external auditors&quot;</i> - but this indicates that
independent directors at HSBC only see internal accounts twice a year and cannot
cope with a doubling of this work load. Shame on you Mr Eldon - it sets a poor
example to your borrowers if you think it is acceptable for independent
directors to have such a minimal knowledge of their business. </p>

<p>Some of the basket cases of Hong Kong corporate governance,
which have resulted in large write-offs by your bank and others, could have been
prevented if truly independent directors had more frequent oversight of the
accounts. Such comments also make us wonder just what kind of accounts your loan
officers receive from highly geared borrowers - do they not receive management
accounts more often than half-yearly? Assuming the answer is yes, then you
appreciate the value of frequent reporting in monitoring your loans - so why
don't investors deserve the same in monitoring their equities? Investors, after
all, rank behind lenders in a liquidation, and so have even riskier positions.
And if the answer is no, then we'll take our deposits elsewhere. </p>

<p>HSBC purports to be a global banking group and competes with
firms like Citicorp, Chase and Bank of America who have been quarterly reporting
in the US for as long as anyone can remember. If they do it, why shouldn't you? </p>

<p>Mr Eldon proposes that quarterly reporting should be
&quot;recommended&quot; but voluntary, which misses the point - companies have
always been at liberty to report as often as they like, as long as they comply
with the minimum. And a very few (CLP Holdings and Legend, for example) do
report quarterly. Mr Eldon hastens to add that if it were voluntary, HSBC would
not report. This is very disappointing from a company that has regularly won
corporate governance awards in Hong Kong, not least because as a UK-listed
company, it has to conform to generally higher standards on matters such as
disclosure of directors' pay and non-pre-emptive share issues. </p>

<h3>Less information - more speculation</h3>
<p>Some opponents of more frequent disclosure, including Mr Eldon
and Ronnie Chan (controlling shareholder of Hang Lung Group and former director
of Enron), have suggested that quarterly reporting forces managers to focus on
short-term plans to achieve better quarterly profits, rather than concentrate on
developing long-term strategies. Such opponents fail to explain why corporate
America, which has been reporting quarterly for decades, has been so successful
- did it really make them pursue the &quot;wrong&quot; strategies at the expense
of the long-term? Their record of strong economic growth and financial
performance suggests the opposite.</p>

<p>Take those arguments to their logical extreme, and one could
argue that even interim and annual reporting disrupts business planning for the
long-term - so let's cut back reports to every five years, more in line with the
business cycle. Between five-yearly reports, investors would simply have to
speculate on what the company is doing and how it is performing financially,
trading on rumour, hearsay and inside information. And there you see the problem
- lack of transparency promotes speculative investor behaviour. The increased
uncertainty also increases the discount factor on future earnings that must be
used when assessing the fair value of stocks, and that in turn lowers P/Es and
increases the cost of capital for issuers. </p>

<h3>Quarterly reporting did not cause Enronitis</h3>

<p>There are certainly managers in corporate America who have been
abusing loopholes in accounting standards, shifting exposures and losses off
balance sheet, and &quot;smoothing&quot; the quarterly earnings by means of
provisions and other subjective adjustments. This points to weaknesses in
accounting standards, not to problems with the frequency of reporting. Even if
companies had been reporting only yearly, the same problems would exist with the
accounting standards. It has become popular to invoke the name of Enron in every
debate, but this one doesn't stick. In fact, Enron's problems first came to
light with the 3rd quarter results of 2001 - so without quarterly reporting, the
insiders might have been able to cover up their problems for an extra 3 months
(and keep selling their stock) before the bomb dropped. </p>

<h3>How frequent is enough?</h3>

<p>It would be wrong to presume that quarterly reporting is
necessarily optimal. As information technology has improved, the time and effort
needed for beancounters to count their beans has improved with it. But there is
certainly a trade-off between frequency and cost of reporting. There is a case
of diminishing returns - the information content is roughly proportional to the
time it covers. We would not learn a great deal more about companies if they
reported hourly or daily rather than weekly or monthly - and the CEO would spend
all his time doing investor presentations. But let it be noted that a number of
industries have some form of monthly reporting already - for example, we get
passenger and cargo load factors from the local airlines, and hotels report
occupancy rates to their association which aggregates them and reports them to
the public. The investment funds association also reports monthly sales and
redemptions of mutual funds, and so do motor dealers for new vehicle sales. In
America, retailers produce same-store sales comparisons after holiday weekends
at the drop of a hat. These figures are readily extracted from management
information systems. </p>

<p>Now don't worry, we are not advocating mandatory monthly
reporting at this stage. We think the costs would outweigh the benefits - we are
just pointing out that quarterly reporting is far from extreme and still leaves
information time-lag between managers and investors. </p>

<h3>Timing of reports</h3>

<p>The SEHK has proposed a 45-day deadline for quarterly reports,
the same as for the GEM, and also proposes shortening the reporting deadline for
interim (half-year) results from 3 months to 2 months after the period end, and
the annual results from 4 months to 3 months. These last two deadlines are in
fact what they proposed in 
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/paper/conpaper2.htm" target="_blank">1998
consultation paper</a>, only to back off under tycoon pressure. Instead, we got
a modicum of progress - the annual results deadline was shortened last year from
5 months to 4 months. As of today, we only have to wait another month to find
out what some companies did last year. Meanwhile, America prepares for its first
quarter results. </p>

<p><i>Webb-site.com</i> <a href="findoscons.asp" target="_blank">supported</a>
these changes in 1998, and we support them now. GEM companies have demonstrated
that Hong Kong is not in some way &quot;different&quot; and that they can report
quarterly in 45 days just as US companies do. We also suggest that the ultimate
goal (next time) for half-year (interim) reports should be the same 45 days,
because their content should be the same. The second quarter should be no more
difficult than the first or third quarter. But for now, let them take the extra
2 weeks. </p>

<h3>Content</h3>

<p>On the content of reports, this is where the SEHK has got itself
tied up in confusing knots and at the same time seeks to compress the
information. It proposes to have 4 different types of non-annual reports. These
are &quot;quarterly results&quot;, &quot;quarterly report&quot;, &quot;
half-year results&quot; and &quot;half-year report&quot;. As if that wasn't
enough, they also propose a new &quot;summary half-year report&quot;, containing
the same information as the half-year results, but a bit less than the half-year
report, which would be mailed to those who did not choose to receive a full
half-year report. </p>

<p>This is a recipe for chaos and confusion. The idea of summary
reports derives from the treatment of annual reports. After the wave of UK
privatisations in the 1980s resulted in millions of shareholders for companies
like British Telecom, the authorities realised that the vast majority would not
be able to read and understand a hundred-page annual report, and that it would
be kinder to forests and cheaper for companies to print a summary report and
make the full version available on request. The Hong Kong authorities adopted
this approach about a year ago after the MTRC float had the same consequences. </p>

<p>That's all well and good, but in the case of interim reports,
which are seldom that lengthy anyway, it is hardly worthwhile to produce the
dumbed-down version. Furthermore, since all reporting is moving to electronic
filing, and the requirement for newspaper paid announcements will soon be
dropped (and never existed on GEM), this is no longer about saving space and
money in advertising. The web places no restriction on space, so it make little
sense to have two versions of the quarterly and interim reports. </p>

<h4>Give us full balance sheets </h4>

<p>On the content of quarterly reports, the SEHK proposes
&quot;balance sheet information&quot; but not actually a full balance sheet.
Instead, they suggest a condensed version. For example, there is a requirement
for &quot;current assets&quot; rather than the usual breakdown of a figure into
debtors, inventory, cash on hand, investments and so on. This is both secretive
and bizarre, because they propose separate disclosure of bank borrowings, so you
can find out how much debt they have, but not how much cash or net debt (cash
minus debt). </p>

<p>Let's cut straight to the chase. There is no reason why
quarterly reports (3 times a year, including the 2nd quarter) cannot show a full
balance sheet, which the company must have internally in order to work out the
profit and loss account (income statement). One follows from the other. Secrecy
and obfuscation of the balance sheet just promotes information asymmetry between
insiders and outsiders. Enron did at least demonstrate that. </p>

<h4>Give us full quarterly cashflow statements </h4>

<p>The SEHK also proposes that quarterly reports should not require
cashflow statements. Again, since all companies have a balance sheet and profit
and loss account, producing the cashflow statement is a fairly simple exercise
which will add great value to the information. The cashflow statement is more
important than ever, since after recent changes in accounting standards, the
number of non-cash items in the profit and loss account, such as goodwill
write-offs and fluctuations in investment valuations and contingent liabilities,
makes the income statement very different from cash earnings. </p>

<p>And give us proper cashflow statements - the ones we get today
in interim reports are so condensed as to be pretty meaningless. It's like
looking at Victoria Harbour from the Peak on a typical smoggy day - you get the
general outline but you have no idea what's underneath. </p>

<p>To see what we mean, compare the level of detail in the cashflow
statement from Hang Lung Group's <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020322/0010/F111.pdf" target="_blank">interim
report</a> with the one from its <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011107/0010/F119.pdf" target="_blank">annual
report</a> - and notice that the annual report also comes with a note (a) which
explains in a separate table how operating cashflow differs from operating
profit. We're not singling out Hang Lung here - they are no different from most
other companies in this respect. </p>

<p>You are beginning to see a theme emerging - the &quot;break them
in gently&quot; school of thought in the SEHK Listing Committee - as if they
were saying &quot;if we really have to propose quarterly reporting because the
mainland is doing it, then let's just be seen to do a bit of it, and then object
like crazy to doing it in the first place.&quot;&nbsp; </p>

<h4>Not a Mini-MD&amp;A </h4>

<p>Another piece of &quot;not too much disclosure&quot; is the SEHK
proposal that quarterly results, quarterly reports and half-year results should
have: </p>

<blockquote>

<p>&quot;a fair review of business developments which will be less
detailed than the management discussion and analysis required for a full
half-year report. However, such review of business developments should still
enable an user (sic) to gain an understanding of the underlying trends in an
issuer's business&quot;. </p>

</blockquote>

<p>This is incredibly vague - and conjures up the idea of
statements like &quot;things are going well this quarter, the outlook is good,
and we'll tell you more in the interim report&quot;. </p>

<p>Once again this proposal exhibits the controlled-company
tendency to secrecy. We believe each quarterly report (including the second
quarter) should have the full management discussion and analysis. It should not
take that long for management to write a report on what the numbers mean and the
business outlook, and the audit committee of independent directors would need
that information from management to help them understand the numbers anyway, so
take the extra step and publish it. </p>

<h4>Disclosure of interests </h4>

<p>The SEHK proposes not to require disclosure of directors' and
substantial shareholders' shareholdings in quarterly reports. They propose to
drop this requirement from the GEM. We disagree. Investors are entitled to know
what directors and major shareholders have been doing with their shareholdings,
because that is a proxy for the information advantage that insiders have over
outsiders. They see monthly management accounts, they know what the order book
looks like, they know what you don't, and their dealing behaviour incorporates
that information. It is theoretically possible to glean the shareholding data
from the <a href="http://www.hkex.com.hk/listedco/sdi/sdicalendar.asp" target="_blank">daily
transactions disclosures</a>, but in practice this takes hours for each company
and is not a substitute for a quarterly snapshot. So for all 3 quarters and the
annual report, we should receive a full table of shareholdings. </p>

<h3>Submissions procedure</h3>

<p>There you are, enough said. We want three quarterly reports each
year, with full balance sheets and cashflow statements, a proper management
discussion and analysis, and disclosure of shareholdings. We want them within 45
days after each quarter, and an annual report within 3 months after the year
end. </p>

<p>The submissions deadline for this consultation exercise is
22-Apr-02, so after the Easter break we will be setting up the usual <i>Webb-site.com</i>
electronic submission system for our readers to make their own views and support
known to the SEHK. If you want what we want, then you'll have to back us up.
This is one set of votes the SEHK will have to count! </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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