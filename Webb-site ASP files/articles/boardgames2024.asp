
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://webb-site.com/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="../index.html" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="https://webb-site.com/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="https://webb-site.com/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="https://webb-site.com/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
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
			<form class="box4b" method="post" action="https://webb-site.com/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="https://webb-site.com/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="https://webb-site.com/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="https://webb-site.com/dbpub/orgdata.asp" method="get" name="f1">
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
		<li><a href="../index.html">Home</a></li>
		<li><a href="https://webb-site.com/dbpub/">Database</a></li>
		<li><a href="https://webb-site.com/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="https://webb-site.com/webbmail/login.asp">Log in</a></li>
				
				<li><a href="https://webb-site.com/webbmail/join.asp">Sign up</a></li>
				<li><a href="https://webb-site.com/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
		<li><a href="https://webb-site.com/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="https://webb-site.com/pages/howtovote.asp">How to vote</a></li>
				<li><a href="https://webb-site.com/library/">Reference library</a></li>
				<li><a href="https://webb-site.com/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/vote/">Polls</a></li>
		<li><a href="https://webb-site.com/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="https://webb-site.com/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="https://webb-site.com/HAMS/">HAMS proposal</a></li>
				<li><a href="https://webb-site.com/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="PECSregister.asp">PECS register</a></li>
				<li><a href="https://webb-site.com/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="https://webb-site.com/books/">Webb-Books</a></li>
				<li><a href="https://webb-site.com/news/">Old newsletters</a></li>
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="https://webb-site.com/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="https://webb-site.com/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/pages/about.asp">About</a>
			<ul>
				<li><a href="https://webb-site.com/pages/aboutus.asp">About us</a></li>
				<li><a href="https://webb-site.com/photos/">Webb-Photos</a></li>
				<li><a href="https://webb-site.com/pages/mediaroom.asp">Media room</a></li>
				<li><a href="https://webb-site.com/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/contact/">Contact</a></li>
		<li><a href="https://webb-site.com/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="https://webb-site.com/pages/hkradio.asp">Radio</a>
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
		<li><a href="https://webb-site.com/pages/TV.asp">TV</a>
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

<script type="text/javascript">document.title="Meaningless board games at HKEX, and how the UK FCA has just made an awful mistake";</script>

	<div class="summary">We review the proposals for a 6-seat and 9-year limit on so-called INEDs, along with other changes that do nothing to address HK's corporate governance deficit. Meanwhile, a slow-motion disaster is underway in the UK as it scraps fundamental investor rights.</div>

<h2 class="center">Meaningless board games at HKEX, and how the UK FCA has just made an awful mistake<br>
<span class="headlinedate">28 July 2024</span></h2>
<p>Over the last quarter century, Webb-site has <a href="https://webb-site.com/dbpub/subject.asp?c=154">written repeatedly</a> about the 
fundamental problem with Hong Kong's so-called Independent Non-Executive Directors (<strong>INEDs</strong>): they are 
not independent. Nearly all (about 90%) of HK-listed companies have controlling shareholders, and these controllers vote 
to elect the INEDs. So the INEDs are only as independent and competent as the controlling shareholders want them to be. 
Even the good INEDs (and there are a few) serve at the pleasure of the individual, family or Government that controls 
the company.</p>
<h3>INEDs should be elected by Independent Shareholders</h3>
<p>All of this could be simply solved with a rule change requiring that on the election of any candidate (whether 
proposed by the board, or by shareholders), the controlling shareholders and those directors who are non-INEDs must 
abstain, leaving the decision to independent shareholders. Their electoral mandate would empower INEDs to ask the 
difficult boardroom questions that they should be asking if they are performing their duties properly, without fear of 
removal by controlling shareholders. Remember, in HK the board is only required to have at least one-third of its seats 
occupied by INEDs, so the controller can still call the shots through the other seats.</p>
<p>Each of the INEDs should also be required to confirm, in each annual report, whether he/she is satisfied with the 
corporate governance and if not, what the issues are. Remember that it is the INEDs who are supposed to opine on whether 
transactions between the company and its controlling shareholder are "fair and reasonable" and whether to accept 
a privatisation offer, from the same controller who currently elects them. The whole system is a charade and it would be 
better if regulators just admitted that under this system, there are no INEDs, only NEDs.</p>
<p>In its latest proposals
<a href="https://www.hkex.com.hk/News/Regulatory-Announcements/2024/240614news?sc_lang=en" target="_blank">announced</a> 
on 14-Jun-2024, Hong Kong Exchanges and Clearing Ltd (<strong>HKEX</strong>, 0388) via its subsidiary The Stock Exchange 
of Hong Kong Ltd (<strong>SEHK</strong>) does nothing to address this problem and instead engages once again in 
rearranging the deck chairs on the Titanic, oblivious to how this poor standard of governance is driving investors away 
from HK, lowering valuations, increasing cost of capital and undermining the prosperity of our country (China). A lower 
cost of capital would make the nation more competitive.</p>
<p>Instead of addressing the election process, SEHK proposes cosmetic changes including that nobody should have more 
than 6 HK-listed issuer directorships and that no INED can serve more than 9 years, both rules to become effective at 
the AGMs to be held in 2028, and allowing them to come back on board after a 2-year cooling-off period, so they could 
serve 18 years out of 20 or 27 out of 31.</p>
<p>Predictably, the <a href="https://webb-site.com/dbpub/orgdata.asp?p=17399">Chamber of Hong Kong Listed Companies</a> (<strong>CHKLC</strong>) 
came out last week to
<a href="https://finance.yahoo.com/news/hong-kong-companies-hkex-micromanaging-093000849.html" target="_blank">oppose</a> 
even these reforms, accusing SEHK of micromanagement. They do have a point: it would be far better to allow independent 
shareholders in each case to decide whether a candidate has too many jobs or has served too long. With an independent 
shareholder vote on the elections, that would be the case. A crappy INED with only 1 board seat would still be crappy 
from day one - there's no reason to think that they would only be crappy after 9 years or when they have more than 6 
jobs.</p>
<p>It's worth noting, however, that SEHK has chosen the 6-seat limit to affect
<a href="https://webb-site.com/dbpub/dirsHKPerPerson.asp?sort=cntdn&amp;d=2023-12-31">only 23 people</a> as of 31-Dec-2023. If they had set 
the limit at 3 (the limit in mainland China) then 270 people would be "over-boarding".</p>
<h3>The Blackout Rule and quarterly reporting</h3>
<p>Incidentally, despite its name, don't assume that CHKLC is representative of HK-listed companies. It only has 224 
companies in its <a href="https://chklc.org/full-members" target="_blank">membership</a>, many of them sharing the same 
controlling shareholders, or about 8.5% of the <a href="https://webb-site.com/dbpub/listingtrend.asp">2,625 current HK-listed companies</a>. 
It is very much a fringe group with a committee <a href="https://chklc.org/general-committee" target="_blank">populated</a> 
by representatives of HK property tycoons, although a few other large companies have, perhaps accidentally, signed up. 
CHKLC's <a href="https://webb-site.com/dbpub/articles.asp?p=17399">history</a> includes opposing in 2009 the "Blackout Rule" which proposed 
a ban on directors' share-dealing from the end of the financial period until the results were published. They
<a href="https://www.hkex.com.hk/news/news-release/2009/090212news?sc_lang=en" target="_blank">succeeded</a>, and to 
this day, there's an incentive to release results at the last possible moment so that directors have longer to deal in 
the shares (until 2 months before annual results, 1 month before half-year results).</p>
<p>The Listing Committee, in reversing its decision to implement the Blackout Rule, did state: "To ensure a 
regular flow of timely information concerning issuers’ financial performance and position, the Listing Committee 
believes that the Listing Rules should be enhanced to require issuers to report to the market on a quarterly basis." 
That was of course quietly dropped, and the requirement for quarterly reporting on the junior GEM board was
<a href="https://www.hkex.com.hk/News/Regulatory-Announcements/2023/2312152news?sc_lang=en" target="_blank">abolished 
effective 1-Jan-2024</a>.</p>
<p>The regulators' theory is that the deterrent of being taken by the SFC to the Market Misconduct Tribunal (<strong>MMT</strong>) for withholding Inside 
Information is sufficient to incentivise voluntary financial updates.&nbsp; It isn't. The MMT,
<a href="https://webb-site.com/dbpub/officers.asp?p=29802&amp;hide=Y">chaired by retired judges</a>, operates with sloth-like 
speed and can only handle a handful of cases per year, including insider-dealing cases. We continue to frequently see full-year "profit warnings" from listed 
companies some 8 months after their previous half-year ended, revealing earnings surprises (usually negative) that 
should have been obvious much earlier to any competent board receiving monthly management accounts. Some institutional 
investors and brokers rather like this system because they can get inside information through company visits and 
calls, but that leaves other investors out in the cold, degrading market quality.</p>
<p>Quarterly reporting remains a "Recommended Best Practice" (<strong>RBP</strong>) in
<a href="https://en-rules.hkex.com.hk/rulebook/d15" target="_blank">paragraph D.1.5</a> of the Code on Corporate 
Governance. RBPs are "comply or don't explain", and apart from HKEX itself, almost zero HK-listed companies voluntarily 
report quarterly. If you see a HK-listed company reporting quarterly, then it is usually because it has an overseas 
listing - including mainland China, where quarterly reporting has been mandatory since 2003, and USA.</p>
<h3>Genders</h3>
<p>In other proposals, SEHK proposes a "Code Provision" (comply or explain) that the Nomination Committee should have 
different (at least 2) genders. This is meaningless given that the Nomination Committee on a controlled board normally 
only considers a single candidate put forward by the controlling shareholder. There is no real recruitment process, the 
jobs are not advertised, and independent shareholders are not consulted on possible INED candidates. In any event, in 
our view, boards should obtain the best mixture of skills and experience they can get regardless of sex, gender, race, sexual 
preference, number of legs or any other irrelevant characteristic.</p>
<p>As part of a previous review, SEHK has already passed
<a href="https://en-rules.hkex.com.hk/rulebook/1392" target="_blank">Listing Rule 13.92</a> requiring boards to have at 
least 2 genders by the end of 2024. That may be politically correct, but the peer-reviewed academic literature 
provides
<a href="https://knowledge.wharton.upenn.edu/article/will-gender-diversity-boards-really-boost-company-performance/" target="_blank">
no statistical evidence</a> that such rules significantly improve corporate performance. Anyway, at least as far as 
INEDs are concerned, if the decision is left to independent shareholders then they can decide for themselves whether to 
elect a man to an 
all-female board, or a foreigner to an all-Chinese board, or vice versa.</p>
<h3>Capital discipline</h3>
<p>In another crucial area, SEHK makes no material progress on getting cash-hoarding companies to return surplus capital 
to shareholders. Back in 2016, <a href="shells.asp">we proposed</a> a simple "cash shell test" that would 
require that any company with more than 50% of its audited net tangible assets held as net cash or liquid investments 
should be required to propose a distribution of the excess, for independent shareholders' approval at the AGM. If a 
board can persuade independent shareholders that it is in their interest <em>not</em> to have the money back then the 
resolution would be vetoed. The cash shell test would provide the sort of capital discipline for which regulators in 
Japan, South Korea and
<a href="https://www.reuters.com/world/china/china-push-company-dividends-should-attract-investment-says-regulator-2024-05-23/" target="_blank">Mainland China</a> have recently been calling. 50% is a rather generous limit which would capture relatively few 
companies but it would at least put a cap on the extent of capital hoarding, boost returns on equity and make HK more 
attractive to outside investors who would have less risk of being caught in a "value trap".</p>
<p>Instead, SEHK proposes that companies which have a dividend policy should explain what factors they take into 
account. Such a requirement is easily satisfied with meaningless boilerplate text, and places no obligation on capital 
hoarders to change their ways.</p>
<h3>Board navel-gazing</h3>
<p>SEHK also proposes a Code Provision (comply or explain) requiring boards to conduct a "board performance review" every 2 years. This 
is yet another piece of window-dressing that will, if it ever becomes mandatory, simply increase the costs of being 
listed and create a gravy train for consultants who are hired to tell the board that they are doing a good job. 
Shareholders and INEDs should be the judge of that, if the INEDs are ever elected by independent shareholders. Indeed, 
SEHK seems to have pulled this proposal out of the oven in such a half-baked state that it doesn't know what it wants, 
and simply says "we will provide further guidance on the areas to be covered in a board performance review" in paragraph 
65 of the
<a href="https://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/2016-Present/June-2024-Review-of-CG-Code/Consultation-Paper/cp202406.pdf" target="_blank">
Consultation Paper</a>.</p>
<h3>Conclusions</h3>
<p>These feeble proposals will do nothing to enhance corporate governance in HK and attract investors back to our market. 
The <a href="https://webb-site.com/vote/result.asp?p=39">opinion poll we conducted in 2011</a> on the election of INEDs is as valid now as 
it was then, so we won't bother to repeat it. HKEX, with the staunch support of the HKSAR Government which controls the 
majority of its board, continues to dodge the real issues and has spent most of the last decade weakening the rules in 
the mistaken belief that the consequently higher-risk, lower-valuation market will somehow attract high quality listings.</p>
<h3>Meanwhile in the UK</h3>
<p>That's not how markets work, and on that subject, we should just mention with sadness that the UK's Financial Conduct 
Authority has embarked on exactly this course,
<a href="https://www.fca.org.uk/news/press-releases/fca-overhauls-listing-rules-boost-growth-and-innovation-uk-stock-markets" target="_blank">
scrapping</a> its "Premium Listing" category and no longer requiring independent shareholders' approval for connected 
transactions with controlling shareholders, despite
<a href="https://www.icgn.org/sites/default/files/2024-06/Letter%20to%20Chair%20Ashley%20Alder,%20FCA.pdf" target="_blank">widespread opposition</a> 
from institutional investors. Both the new and previous UK Governments appear to have drunk the Kool-Aid from City 
lawyers and bankers who see their IPO gravy train drying up, but attracting companies that see the lack of checks and 
balances on their behaviour as being the worth the discount for risk will only dilute market quality and increase the 
UK's cost of capital.</p>
<p>If that were to happen in HK, it would be disastrous - allowing controllers of listed companies to inject or strip 
out assets, or borrow money from the company, on any terms that are not 
<a href="https://en.wikipedia.org/wiki/Associated_Provincial_Picture_Houses_Ltd_v_Wednesbury_Corporation" target="_blank">completely 
absurd</a>, backed up by an opinion from a cheap adviser and nodded through by INEDs 
elected by the same controllers. The UK will come to regret this choice. New UK Chancellor Rachel Reeves claimed that it 
would bring the UK "in line with international counterparts" (read:USA), but that conveniently overlooks that the USA 
has a much stronger litigation and class-action system that deters egregious behaviour and often motivates companies to 
seek independent shareholders' approval anyway.</p>
<hr>
Want to make a 
submission to HKEX? E-mail <a href="mailto:response@hkex.com.hk">response@hkex.com.hk</a>. You won't find that address 
in the consultation paper - they try to force you to use a
<a href="https://surveys.hkex.com.hk/jfe/form/SV_ekBBc34CpYvcKdU" target="_blank">survey form</a> instead.<p><em>&copy; Webb-site.com, 2024</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=17399">CHAMBER OF HONG KONG LISTED COMPANIES (THE)</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=29802">HKSAR Market Misconduct Tribunal</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=825">STOCK EXCHANGE OF HONG KONG LIMITED (THE)</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=32114928">UK Financial Conduct Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=129">Dividends</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=154">Independent Non-Executive Directors</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=164">Listing rules</a></li>
				
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=177">Quarterly financial reporting</a></li>
				
		</ul>
	<hr>
<p><a href="https://webb-site.com/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="https://webb-site.com/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="https://webb-site.com/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="boardgames2024.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>