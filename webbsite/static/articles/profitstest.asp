
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

<script type="text/javascript">document.title="Suitability in a disclosure-based market";</script>

	<div class="summary">SEHK has announced possible waivers of the profit criteria. We don't object, but the profit test should be scrapped. It has no place in a disclosure-based market, and is no substitute for better accounting disclosure requirements and effective legal remedies and deterrents, all of which HK still sorely lacks. We make proposals for those.</div>

<h2 class="center">Suitability in a disclosure-based market<br>
<span class="headlinedate">8 June 2009</span></h2>
<p>It was another Friday-night 
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/0906052news.htm">policy announcement</a> from the Stock Exchange of 
Hong Kong Ltd (<strong>SEHK</strong>), wholly-owned by 
<a href="../dbpub/orgdata.asp?p=9643">Hong Kong Exchanges and 
Clearing Ltd</a> (0388). Indeed, if an SEHK policy announcement 
comes out any day <em>other</em> than Friday, it's usually some kind of emergency 
or U-turn.</p>
<p>This wasn't an emergency, although they do get bingo points for using the 
word &quot;crisis&quot;, as in &quot;financial&quot;. SEHK said that in certain circumstances it 
&quot;will consider&quot; waiving&nbsp; the profit criteria for main board listing 
applicants, which 
are currently HK$20m of net profit in the latest financial year, and $30m in the 
two preceding years combined.</p>
<p>The circumstances include having made net profit of at least $50m in the last 3 
financial years - so the possible waiver just allows the applicant to have made 
less than $20m in the latest year as long as they made more than the difference 
above $30m in the first 2 years. They also need positive cash flow before 
changes in working capital and tax in the latest financial year.</p>
<p><em>Webb-site.com </em>has no objection to these changes, but the profits 
test system itself has no place as an entry criterion to a disclosure-based 
market. In any given year, there are several hundred existing 
listed companies which neither made a profit nor had positive cash flow, but 
remain listed on the main board - indeed some companies have not made profits 
for many years. Hong Kong is supposed to be a disclosure-based market, where 
investors decide what to buy and how much to pay for it on the basis of 
information provided, not where regulators decide which companies are 
&quot;suitable&quot;. If anything, establishing profit hurdles to listing gives companies 
one more reason to fake 
their accounts.</p>
<p>So the profit criterion should be abolished, and as a corollary to that, the 
Growth Enterprise Market, which primarily exists for companies that can't meet 
the main board profit criterion, should be scrapped too. All existing GEM stocks 
would just become listed stocks. What is far more important is that investors must have adequate information 
on which to base investment decisions - otherwise they have to speculate on what 
they don't know. The Exchange should require that:</p>
<ol>
	<li>the listing applicant was audited by the same firm of auditors throughout the 3-year 
	pre-IPO period and that this firm signs the accountants' report in the 
	prospectus, without qualifying their opinion on trueness and fairness; and
	</li>
	<li>the same audit firm (or in the case of foreign 
	subsidiaries, its related firm) should have audited all the material 
	subsidiaries of the listing applicant in each year; and
	</li>
	<li>all listed companies produce full-format quarterly 
	financial statements, so that investors have enough financial disclosure to 
	make an informed investment decision.
	</li>
</ol>
<p>The first two items should be phased in over the next 3 years, otherwise 
companies which plan to list in 2009-2011 might not be able to meet the &quot;same 
auditor of the group&quot; criterion. So it would apply to 1 year in 2009, 2 years in 
2010 and 3 years in 2011.</p>
<p>A big problem in the past has been big-4 audit firms coming in at the last minute, 
only auditing the final year of the track record, and often not having audited 
the subsidiaries, where skulduggery has been going on. After-the-event auditing 
is impossible - you cannot step into a time machine and go back to do year-end stock-takes and fixed asset verification - you have to rely on the historic data 
you are given, and that may not be reliable. Customers and suppliers from years 
past may also be gone or uncontactable, making it impossible to verify 
invoices and receipts. Cases that spring to mind include
<a href="../dbpub/articles.asp?p=15412">Fu Cheong</a> (Ernst &amp; Young),
<a href="../dbpub/articles.asp?p=13651">Gold Wo</a> (Ernst &amp; Young) and
<a href="../dbpub/articles.asp?p=5141">GKC</a> (Deloitte Touche Tohmatsu). 
Fraud was discovered in each case, but too late to protect investors. Which 
bring us to another issue:</p>
<h3>Auditors have no duty of care to shareholders</h3>
<p>In Jul-06, a brave individual investor
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=53446&amp;currpage=T">
attempted to bring a court action</a> against Ernst &amp; Young, the auditors of 
Gold Wo. The Court of First Instance had no choice but to quote the House of 
Lords case
<a target="_blank" href="http://oxcheps.new.ox.ac.uk/casebook/Resources/CAPARO_1.pdf">
<i>Caparo Industries plc v Dickman and Ors</i> (1990)</a>, in which the auditors 
were held not to owe a duty of care to shareholders of the company, let alone to 
future shareholders who may buy in the market. Their only duty was to the 
company itself. The HK case was accordingly 
&quot;doomed to fail&quot; and was struck out in its entirety.</p>
<p>It is frankly ridiculous that no investor can rely on the audit report in the 
annual report when deciding to invest, or to remain invested. Only legislation 
can change this, as Deputy Judge Ian Carlson said:</p>
<blockquote>
	<p>&quot;What [the plaintiff] seeks is the sort of consumer protection which is 
	available in some of the state jurisdictions of the United States...That 
	position has not been arrived at in Hong Kong.&quot;</p>
</blockquote>
<p>If the Government is serious about establishing a competitive advantage for 
HK, then it should legislate on this, so that auditors carry the can for sloppy 
work. That doesn't escape the directors who are responsible for financial 
statements, but it would also impose a duty of care on auditors to do their job 
properly, and if they knew that they had that duty, they might be a bit more 
careful in their work. But that legislation in itself, would not be sufficient, 
because:</p>
<h3>Secondary-market purchasers cannot rely on the prospectus</h3>
<p>Yes, it sounds amazing, doesn't it? Let's say it again: if you buy shares in 
the market, even on day 1 of trading, you cannot rely on the prospectus. You 
cannot sue the auditors, the sponsors or even the directors if the prospectus 
turns out to be a pack of lies.</p>
<p>On 22-Sep-06 the SFC
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/06/conclusions_prospectus_060922.pdf">
announced</a> that it had abandoned a proposal (Proposal 9 in the
<a target="_blank" href="http://www.sfc.hk/sfcConsultation/EN/sfcConsultFileServlet?name=prospectusregime&amp;type=1&amp;docno=1">Consultation Paper</a> on Possible Reforms to the Prospectus Regime) to allow secondary 
market purchasers to bring claims for fraud in IPO prospectuses. The entire 
price discovery process in the secondary market relies on the truth of the prospectus, and subscribers 
in the IPO have a right of recourse (subject to the limitation below), but 
anyone who purchases shares in the market from that subscriber, even on the 
first day of trading, is on their own, as if the prospectus did not exist. The 
subscriber who sells on day 1 is of course free and clear, and will not claim if 
the issuer subsequently collapses in a smoking heap of fraud, while the 
secondary buyer can't sue the seller because no representation was made by 
him in the market when he sold.</p>
<p>Another SFC proposal that was abandoned was Proposal 10, to remove the 
requirement for subscribers to prove that they actually read and relied on the 
prospectus when making a claim for fraud. Now, how many people can prove what 
they read yesterday, let alone what they read months or years ago? Do they have 
any witnesses? Of course not. Again, the relevant fact is that the IPO was 
priced on the basis of the prospectus and nothing else, and enough people read 
enough of it for the market to set that price. If the prospectus then turns out 
to be fraudulent, no victim should have to prove that they themselves read it. 
It should be enough to show that if the document had been known to be false, 
then the shares would not have fetched the price they did in the primary or 
secondary market. The SFC could not find any such &quot;prove that you read it&quot; 
requirement in Australia, Singapore or the UK.</p>
<h3>Beneficial owners</h3>
<p>Incidentally, all of these rights need to apply to beneficial owners, not 
just registered nominee shareholders. Otherwise we will be caught by the fact 
that nearly all publicly held shares are held in the name of HKSCC Nominees 
Limited, the de facto central depository, which will never bring any court 
action of its own. In turn, many people and institutions hold shares through 
banks, brokers and custodians, who won't take action either.</p>
<h3>Still no class action system</h3>
<p>Of course, all of the above is rather theoretical in the absence of a class action 
system, because no IPO investor alone would find it worth the cost of bringing a 
case even if they had (a) subscribed and held the stock since the IPO and (b) 
could produce a witness to prove that they read the prospectus before 
subscribing. To our knowledge, nobody has ever brought such a case in HK.</p>
<p>So the Government needs to adopt the proposals which the SFC abandoned in 
2006, and we need a class action system. On the latter point, there is now a
<a target="_blank" href="http://www.hkreform.gov.hk/en/projects/class_action.htm">
sub-committee of the Law Reform Commission</a>, chaired by former SFC Chairman
<a href="../dbpub/natperson.asp?p=17082">Anthony Neoh</a>,&nbsp; which is 
considering whether Hong Kong should have a class action system, as Australia 
has had for 20 years. The sub-committee has been running more than 2 years, so it's 
about time they sent out some proposals. Such a system would cover not just 
shareholders but other cases such as consumer product defects or compensation 
for consumer price-rigging after a competition law makes it illegal.</p>
<p>Don't believe the scaremongers who say that Hong Kong would end up like the 
USA with meritless class actions being brought for nuisance value. Hong Kong, 
like many other jurisdictions but unlike the USA, has a &quot;loser pays&quot; costs 
system which means that lawyers would only bring cases, and insurers would only 
fund them, if they had a high probability of success.</p>
<h3>It's never the right time, is it?</h3>
<p>At the end of its announcement, SEHK says:</p>
<blockquote>&quot;We also note that certain market participants have expressed 
the view that the existing profit test may not be a useful indicator of an 
applicant's future performance and questioned its appropriateness as an 
eligibility requirement for listing. The Exchange will review the existing 
profit test and other components of the eligibility requirements at a suitable 
time.&quot;</blockquote>
<p>There you go again - deciding &quot;suitability&quot;. Surely now is a suitable time, 
for all of the above - SEHK should abolish the profits test, and the Government 
should legislate to give 
shareholders rights against auditors, rights to rely on the prospectus in the 
secondary market, and class action ability to enforce those rights. It has been 
repeatedly shown in IPO frauds that front-end criteria like the profits test are 
no substitute for effective legal remedies and deterrents.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15412">FU CHEONG INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5141">GKC HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13651">GOLD WO INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21130">HKSAR Law Reform Commission</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=17082">Neoh, Anthony Francis</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=97">Auditor liability</a></li>
				
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
				<li><a href="/dbpub/subject.asp?c=175">Prospectus liability</a></li>
				
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