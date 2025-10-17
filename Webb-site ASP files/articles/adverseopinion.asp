
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

<script type="text/javascript">document.title="HKEX: shoot patients to prevent illness";</script>

	<div class="summary">HKEX's proposal to suspend and then delist companies with disclaimed audits works against investor interests in several ways while doing nothing to address the root causes of corporate illness. In a partial revival of the 2002 Penny Stocks proposals, the self-interest of HKEX in ditching unprofitable business cannot be ignored. We again call for the regulatory function to be transferred to the SFC and HKEX's monopoly to be abolished. Only when there is competition can they pick and choose their customers. HKEX fails to name the 43 firms that would have been suspended on their 2017 audits. Answers by Tuesday morning, please!</div>

<h2 class="center">HKEX: shoot patients to prevent illness<br>
<span class="headlinedate">30 September 2018</span></h2>

<p>On Friday (28-Sep-2018), HKEX (0388)
<a href="https://www.hkex.com.hk/News/News-Release/2018/180928news?sc_lang=en" target="_blank">
announced</a> a proposal to change the Listing Rules to suspend trading in 
shares of companies where the auditor issues a disclaimer of opinion or 
<span lang="x-none"></span>an 
adverse opinion on the financial statements. This comes after a recent
<a href="https://www.hkex.com.hk/News/News-Release/2018/180525news?sc_lang=en" target="_blank">
rule change</a> which allows the Exchange to delist a company if it has been 
suspended for 18 months on the Main Board, or only 12 months on the 
GEM.</p>
<p>HKEX and the SFC (which approved the delisting change) appear to believe that 
the way to improve (or euphemistically, "maintain") "market quality and 
reputation" is to more quickly delist suspended companies, and in combination 
with that, to make it easier to suspend them in the first place. This is a 
complete fallacy. In medical terms, it is a belief that the incidence of 
disease, accidents or self-harm can be reduced by walking around the intensive 
care ward and shooting the patients. Put simply, this confuses cause and 
effect.</p>
<p>The result of this corporate euthanasia is to penalise minority 
shareholders who might have had at least some recovery of their investment if 
the company had been able to work through its difficulties, perhaps with fresh 
capital, new management or the acquisition of a new line of business, and emerge 
from its corporate coma to satisfy the requirements for resumption of trading, 
if necessary by being treated as a new listing applicant.</p>
<p>Some victims are in fact perfectly healthy and their shares are suspended not 
because of any internal corporate problem but because their public float has 
fallen below the 15% threshold due to purchases by large (often 
minority) shareholders, allowing the Exchange to suspend the stock and depriving the 
remaining minorities of a market for their shares. That can happen even if the 
remaining float has a market value exceeding the entire market value of some 
other small listed companies. It makes no sense whatsoever and we've called 
before to <a href="../dbpub/subject.asp?c=176">scrap the public float rule</a>. 
The disclosure of large shareholdings and the resultant float is sufficient 
information for investors on this point.</p>
<p>By the Exchange's own data, there were 50 long-suspended issuers whose 
securities resumed trading between 2012 and 2016. Of these, 46 resumed trading 
within 36 months. By cutting the recovery period to 18 months (the new Main Board rule), 
only 33 of them would have survived, and in 12 months (the new GEM rule) only 26 
would have survived.</p>
<p>If HKEX, the SFC and Government really want to address the root causes of corporate illness, then there are plenty of ways to improve HK's laws and Listing Rules - for example, by prohibiting controlling shareholders from 
voting in the elections of so-called <a href="../dbpub/subject.asp?c=154">
"independent" non-executive directors</a>, giving the INEDs a proper mandate and 
accountability by having them elected or removed by independent shareholders 
alone; by introducing legal <a href="../dbpub/subject.asp?c=111">class action 
rights</a> for shareholders and allowing contingent legal fees and litigation 
funding; by preventing directors from picking shareholders via the
<a href="../dbpub/subject.asp?c=173">general issue mandate</a>; and by
<a href="PRR.asp" target="../articles/prr.asp">requiring banks and 
brokers</a> to seek voting instructions for client shares they hold, 
facilitating the retail investor vote.</p>
<h3>The proposals</h3>
<p>The latest proposals take the corporate cleansing campaign one step further, by shoving 
more patients into the intensive care ward. The regulators are aware that some 
companies publish their results on time (avoiding suspensions for late filing), 
but for various reasons, their auditors either disclaim their opinion on the 
accounts or (rarely) give an "adverse opinion" that the accounts are not a true 
and fair view.</p>
<p>According to the
<a href="https://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/2016-Present/September-2018-Adverse-Audit-Opinion/Consultation-Paper/cp201809.pdf?la=en" target="_blank">
consultation paper</a>, for periods ending in 2017, 43 issuers received a 
disclaimer of opinion (excluding 14 long-suspended companies), or about 2% of
<a href="../dbpub/listingtrend.asp">listed companies by number</a>. There were 
none with an "adverse opinion". 13 of the 43 were disclaimed only because of 
their financial difficulties leading to doubt about whether they should be 
accounted for on a "going concern" basis.</p>
<p>You might think that given the purported concern of the Exchange, it would 
have included a list of these companies in the paper or elsewhere, to give 
investors fair warning that if the companies' 2019 audits are disclaimed, they 
will be suspended and probably delisted. Perhaps by making them harder to 
find, the Exchange is seeking to avoid a repeat of the infamous
<a href="../dbpub/articles.asp?p=38146">Penny-Stocks Incident</a> of 26-Jul-2002 when 
stocks were dumped on misguided delisting proposals announced the night before, one of which was to delist 
companies with a disclaimer or adverse audit opinion. Yes, 16 years later, part 
of that proposal is back - but these days all proposals are announced on Friday 
nights to avoid immediate market reaction.</p>
<p>However, although there is no list of disclaimed opinions, the Exchange does maintain a list of filings under the broader 
category of "<a href="http://www.hkexnews.hk/reports/auditorreport/ncms/auditorreport_anntdate_des.htm" target="_blank">Auditors' 
Reports with "Qualified Opinion" and/or Explanatory Paragraph</a>" so 
journalists or other readers can wade through that to find the ones with "disclaimer of opinion". 
Alternatively, you can search for the exact phrase "disclaimer of opinion" on 
the page at
<a href="http://search.hkexnews.hk/eng/EPSSearch.aspx" target="_blank">this link</a>. 
Perhaps someone would be kind enough to <a href="../contact">send us a list</a> 
of the doomed companies before trading resumes on Tuesday.</p>
<p>To be clear, a "qualified opinion" is not a disclaimer, merely an opinion that 
the accounts are true and fair but with a qualification. The milder "Explanatory 
Paragraph" is just an audit report with an emphasis on some matter that does not 
amount to a qualification.</p>
<p>To be sure, companies with disclaimed audit reports should be treated with 
extreme caution by investors, but anyone who does their homework on a company 
before investing will see the disclaimer. For those who don't, as a further step, the 
Exchange could add a "D" suffix to the short name of the stock, to warn 
investors of the risk - after all, they are doing that now in the 15-character 
short names with the "W" flag for second-class shares with inferior voting 
rights in companies such as "XIAOMI-W" (1810) and "MEITUAN-W" (3690).</p>
<p>Meanwhile, if the SFC suspects wrongdoing by directors of listed companies, 
it can launch a formal investigation and if necessary intervene and 
petition the courts to wind up the company or order other remedies, in which 
case the stock would likely be suspended anyway. If the SFC suspects that 
directors are withholding material Inside Information, then that is Market 
Misconduct and the SFC can direct a suspension until the situation is remedied. 
But if they lack sufficient suspicion (let alone evidence) of wrongdoing to act, 
then it is not fair to suspend and delist the stock and destroy the interests of 
minority shareholders in the process, or to deprive a financially distressed 
company of an opportunity to recapitalise. Nobody has to buy such a distressed 
stock if they don't want to, but the regulators appear biased towards protecting 
those who don't own it rather than those who do.</p>
<h3>Auditor pressure and opinion-shopping</h3>
<p>There would be another consequence of this proposal. It would increase the 
pressure on auditors, from the directors who hire them, not to issue a 
disclaimer of opinion, as it would be like issuing a (suspended) corporate death 
sentence. This pressure would sometimes result in a milder "qualified opinion" 
just to retain or win the audit business, and that would be against the interest 
of investors who deserve to know what the auditor really thinks rather than what 
it is paid to think. So by linking 
the audit reports to the listing status, the proposal works against the 
principles of an informed, disclosure-based market.</p>
<h3>Squeeze-outs</h3>
<p>For some controlling shareholders, the prospect of a mandatory suspension and 
delisting would be music to their ears. It would put them in a position to buy 
out the minority shareholders, now deprived of a market for their shares and the 
disclosures required by the Listing Rules, at a knock-down price. The controller 
would avoid the normal delisting approvals needed under Rule 2.2 of the
<a href="https://www.sfc.hk/web/EN/assets/components/codes/files-current/web/codes/the-codes-on-takeovers-and-mergers-and-share-buy-backs/the-codes-on-takeovers-and-mergers-and-share-buy-backs.pdf" target="_blank">
Takeovers Code</a>, even if the company is still regarded as a "public company" by the 
SFC.</p>
<h3>HKEX's conflict of interest</h3>
<p>Finally, let's not ignore the financial interest that HKEX has in these 
proposals. It makes the vast majority of its monopolistic profit on the trading, 
clearing and settlement fees of larger listed companies in HK and the 
derivatives linked to them. From HKEX's perspective, small troubled companies 
are loss-makers, because they consume a disproportionate amount of regulatory 
staff-hours relative to the overall fees they generate. Ranked by size, on the 
Main Board at the end of September, 344 companies (18% of 1881) accounted for 90% of the
<a href="../dbpub/mcaphist.asp?e=m&amp;t=s&amp;d=2018-09-28&amp;p=0&amp;s=mcpdn" target="_blank">
market value</a>. Including GEM and Secondary listings, 362 companies (16% of 
2268) accounted for 90% of the
<a href="../dbpub/mcaphist.asp?e=a&amp;t=s&amp;d=2018-09-28&amp;p=0&amp;s=mcpdn">
market value</a>. Their proportion of turnover and transaction fees is even 
greater than 90% because the market-value figure includes many large H-share 
issuers, most of 
which have nearly 100% free float (the mainland A-shares not being counted 
towards market value).</p>
<p>The regulatory staff-hours 
consumed by small companies in financial or other difficulties can be dispensed 
with if they are quickly delisted rather than rehabilitated, thereby boosting 
profits for HKEX and its shareholders, including the Government. Put simply, it 
is cheaper to kill the patients than to cure them.</p>
<p>Since the <a href="../dbpub/articles.asp?p=38148">Expert Group Report</a> of 
2003, the Exchange and the Government have refused to address the inherent conflict of 
interest in being a for-profit regulator, by transferring Listing regulation to the SFC. 
Even a half-baked proposal (which we <a href="listingreg.asp">
supported</a> as a step in the right direction) to transfer regulatory reform to 
a 50:50 committee between HKEX and SFC was
<a href="listing170915.asp">shot down</a>.</p>
<p>The Exchange remains a statutory monopoly stock market and HKEX remains 
exempt from the Competition Ordinance, so there are no alternative exchanges and 
no competition to drive down exchange fees. If there were, then HKEX and the 
other exchanges could make commercial decisions on which stocks to trade, and the actual listing would be a matter for the SFC, as it is for 
the UK's Financial Conduct Authority and the USA's Securities and Exchange 
Commission, separating the listing regulation from the trading venues. That 
would be the smart approach - but then HK was never the
<a href="https://www.smartcity.gov.hk/" target="_blank">Smart City</a> that it claims 
to be.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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