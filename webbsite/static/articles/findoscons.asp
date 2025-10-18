
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<style>
ol {
	list-style-type:lower-roman
}
</style>
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

<script type="text/javascript">document.title="Submission to SEHK on Financial Disclosure consultation";</script>

<h2 class="center">Submission to SEHK on Financial Disclosure consultation<br>
<span class="headlinedate">17 January 1999</span></h2>
<p style="text-align:justify">What
follows was our submission to the Stock Exchange
of Hong Kong in response to its paper &quot;<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/paper/conpaper2.htm" target="_blank">Market
Consultation Policy Paper on Financial Disclosure</a>&quot; dated December 1998.
The numbering follows that of the questions in paragraph 5 of that paper, to
which you will need to refer in order to understand the answers.</p>
<hr>
<h3>A. Interim Financial Reporting</h3>
<ol>
	<li>Yes</li>
	<li>Yes. Note: interest expense and depreciation/amortisation should
	 be disclosed in 2 separate items, not aggregated as might be inferred 
	 from the proposal in Appendix 2.</li>
	<li> No. There is no need for transitional arrangements,
	since issuers should have sufficient accounting records to be able to produce
	the comparative statement.</li>
	<li>No.</li>
	<li>No. Valuations can be expensive and time consuming -
no doubt Mr. C.Y. Leung, an Executive Councilor whose firm of the same name now
has the lion's share of the valuation work in Hong Kong, would be delighted by
the proposal. However, I think on balance that interim professional valuations
are an unnecessary step. Instead, directors should be required to make any
adjustments that they consider appropriate to the last year-end valuation in
order to reflect market conditions (including transacted prices in similar
properties) at the interim date. In other words, a directors' valuation.
Similarly, the notes in the interim report should also show the market value of
listed investments (as well as book value) at the interim date, as they do in
the full-year accounts.</li>
<li><p>Yes, two months for interims is more than adequate.
	This is proven by the fact that highly complicated groups such as HSBC are able
	to report their interim results within 2 months. However, companies would
	probably have difficulty complying if you want auditors to review the interim
	reports, since this would take perhaps 1-2 weeks depending on the depth of work
	that the auditors are expected to do. They would not be given the statements to
	review until the directors had finished preparing them, and therefor hundreds of
	companies would need the major accounting firms to work in a very tight period,
	basically in August (when holiday season is high) and November. The accounting
	firms may not have sufficient resources to handle such a surge of work.</p>
	<p>Yes, 3 months for final results is also adequate, and will still allow the audit
	work to be spread within the 2nd and 3rd months, so the accounting firms should
	be able to cope. I presume that you will require the announcement of results to
	include a balance sheet and notes, so that we don't have to wait until the
	annual report is printed.</p>
	<p>It is not clear whether the proposal refers to the timing of the
	preliminary announcement of interim results, or of the interim report itself.
	Currently, there is a 3-month limit for the announcement (para 11(1)(a) of the
	Listing Agreement), but it only says &quot;as soon as practicable&quot; for the
	interim report (para 11(1)(c)). It is time to remove the distinction, by making
	sure that the announcement contains the <u>full content</u> of the interim
	report (including the shareholding data which is currently the only difference
	between them). Then the interim report, which can be sent to shareholders when
	it is ready, will contain nothing new.</p>
	<p>Conversely, the 5-month deadline for sending annual reports is set out in para 8(1) but
	there is no specific deadline for the preliminary announcement of results.
	Presumably you are suggesting that there be a 3 month deadline for the <u>announcement</u>,
	in which case the announcement must include the balance sheet.</p>
</li>
</ol>
<h4>Announcement system</h4>
<p>Inevitably, companies will also moan about the cost of printing extra information (balance
sheets, cashflow statements etc) in larger spaces in the newspapers, while the
newspapers will benefit from increased advertising revenue. What we really need
is for the SEHK to catch up with the 20th century before it's over, and start
publishing all announcements, interim reports, annual reports, circulars and
prospectuses on the Web. For an example of what can be done, look no further
than Singapore (<a href="http://www.ses.com.sg/">www.ses.com.sg</a>)
which site is already well-developed. Eventually, it should be possible to make
newspaper publication voluntary, as the public has web access.</p>
<p>The Web-based news system should include a full and searchable archive as it
accumulates. The whole thing must be free of charge, paid for out of the levy
from trading and from listing fees.</p>
<ol start="7">
<li>Yes, it is appropriate to introduce quarterly
	reporting. The data should already be available to management on at least a
	monthly basis (or else they do not have adequate controls) so I see no reason
	why it cannot be made public. Thousands of US companies seem to have no problem
	with this, and HK should not be any different. As with interim reports, I don't
	think an audit is necessary. The deadline would ideally be 45 days, but many
	companies may claim difficulties, particularly with China operations, so you had
	better start with 2 months, the same deadline as interim reports, since the work
	involved is the same.</li>
<li>No. See also A(vi) above. Perhaps the Exchange leans
	towards having an interim audit, or audit review, with the aim of reducing the
	risk of fraud by the executive directors. I do not believe that audit reviews
	(as compared with a full audit) are likely to help much. If directors are going
	to defraud a company then they will probably also make it difficult to detect
	without full access to the books and physical assets (such as stock taking),
	which would take you towards a full audit. To fully audit the interim report
	would make it as time consuming and costly as the annual audit. Instead, take
	comfort from the fact that expanded disclosure requirements should improve
	transparency, which in itself is a deterrent to fraud.</li>
</ol>

<h3>B. Financial Disclosure by Conglomerates</h3>
<ol>
	<li>Yes. In addition, I believe all listed issuers, not
		just financial conglomerates, should disclose their off-balance sheet financial
		assets and liabilities. For example, many ordinary companies take out interest
		rate or currency swaps, or futures, in the course of their treasury management.
		Others (such as metal traders) might use commodity futures to hedge. We should
		be told what the value of these positions is at the balance sheet date. There
		was a famous case involving Metalgesellschaft in Germany, which exposed
		horrendous futures-related losses a few years ago.
	</li>
	<li><p>No. There is no point in trying to define the
		intangible. Most of the disclosure items would simply not be applicable unless
		financial activities, such as money lending, or stock market investment, are
		being undertaken. So requiring every company to comply with them would not place
		an undue burden on those who have no such activities. Hence I think the
		disclosure rule should apply to all companies.</p>
		<p>If you seek to apply the rules only to &quot;financial conglomerates&quot; then
		some companies will find a way to avoid being classified as such. Better to
		apply the rule to everybody. If you take a percentage-of-profits test, then the
		test doesn't work if the activity makes a loss, or if it takes a lot of risk but
		doesn't make much profit. Similarly, off-balance sheet assets wouldn't count in
		the net assets test, and borrowing could offset assets, reducing the net assets
		involved but increasing the risk to the issuer. Finally, if you seek to limit
		only to larger companies ($1bn of assets or $300m deposits) then you are
		basically saying that smaller companies should have lower disclosure standards,
		which is hardly fair to the investors in them.</p>
	</li>
	<li>Yes.</li>
</ol>
<h3>C. Management Discussion and Analysis</h3>
<ol>
	<li>Yes. One thing the Exchange should have realised long
	ago, is that in Hong Kong, family controlled companies have little incentive to
	volunteer information to their investors. The only time they want to stimulate
	interest in the shares is if they want to use further equity financing or sell
	down. Therefor, if we put &quot;guidance&quot; in the rules, it will often be
	ignored. The current rule is so tentative as to be a waste of space. It reads
	<i>guidance on those matters which the directors may wish to consider</i>...&quot;.
	It looks like it was watered down from a stronger initial draft!</li>
	<li>Yes.</li>
	<li>Yes.</li>
	<li>Yes. As well as commenting on orders in hand (which,
	for most companies other than manufacturers, is meaningless) the directors
	should comment on &quot;current trading&quot; since the period end. Retailers,
	for example, know what their sales are doing daily or weekly. This would bring
	the report &quot;up to date&quot;.</li>
</ol>
<h3>D. Timely Public Disclosure</h3>
<ol>
	<li>Yes.</li>
	<li>Yes.</li>
	<li>Yes.</li>
	<li><p>Yes, this would help in certain cases. For example,
	item (c) talks about &quot;significant&quot; new investments. It would be
	appropriate to introduce a threshold at 5% of profit or net assets which would
	require a press announcement, but not a circular to shareholders. That is, it
	would be a &quot;notifiable transaction&quot; but not a &quot;discloseable
	transaction&quot;. You had better rename the latter, so there is no confusion
	about disclosure threshold. So we would have 5%: notifiable, 15%: material, 50%:
	major, 100%: very substantial.</p>
	<p>For profit variation, the problem with comparison to last year is that profits can
	vary by large percentages, particularly if last year's figure was close to zero
	(on either side of it) or negative. So percentage tests are not helpful. I would
	suggest that you require (a) immediate disclosure of any item which would be
	treated in the accounts as an &quot;<u>exceptional</u>&quot; profit or loss
	(such as a provision for diminution in the value of investments, or a large bad
	debt write-off) and (b) announcement if the directors believe that the median of
	analysts' forecasts for the current year is more than 10% different from the
	likely outcome. Of course, this pre-supposes that there are analysts covering
	the company, which is not always the case. Directors should take reasonable
	steps to inform themselves of what analysts are saying. This should be easy,
	because the directors will know which research firms cover the company, as they
	talk to them.</p>
	<p>By requiring early disclosure of exceptional items, you remove a lot of the
	potential for nasty (or even pleasant) surprises in the results.</p></li>
	<li>See (iv) above.</li>
</ol>
<p><em>&copy; Webb-site.com, 1999</em></p>
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