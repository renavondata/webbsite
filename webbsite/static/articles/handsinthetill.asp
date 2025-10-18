
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

<script type="text/javascript">document.title="Hands in the Till at Dah Hwa";</script>

	<div class="summary">The controlling family shareholder of HK-listed leather trader Dah Hwa International helped themselves to 32% of the shareholders' funds as unsecured interest-free "advances" and the independent directors did not prevent it. This story shows you just how ineffective INEDs can be when they are appointed by controlling shareholders.</div>

<h2 class="center">Hands in the Till at Dah Hwa<br>
<span class="headlinedate">4 February 2002</span></h2>
<p>On 24-Jan-02 HK-listed <a href="http://www.dahhwaleather.com.hk/" target="_blank"> Dah Hwa International (Holdings) Ltd</a> (<b>Dah
Hwa</b>) <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020125/LTN20020125018.doc" target="_blank">announced</a>
that it had <i> &quot;made advances&quot;</i> amounting to HK$49.3m to its controlling
shareholder, D. H. International Ltd (<b>DHI</b>). </p>

<p>This wasn't petty cash - the advances amounted to <b>32.15%</b>
of shareholders' funds as at 31-Mar-01. Under the <a href="http://www.hkex.com.hk/rulereg/listrules/CH14.doc" target="_blank"> Listing Rules</a> on connected
transactions, the advances should have been subject to independent shareholders'
approval. In other words, when the family wants to put its hands in the till,
you have a right to say no. Pretty basic stuff. </p>

<p>Dah Hwa claims that <i>&quot;due to the oversight of the
Company&quot;</i> it failed to comply with that fundamental rule. It must be
pure coincidence that the advances were made <i>&quot;between the period of 4th
April 2000 to 31st March 2001</i>&quot;. That means they began right after the
year end of 31-Mar-00 (and hence did not appear on the balance sheet at that
date). The first working day of that fiscal year was 3-Apr-00, and the next day
(when the advances purportedly started) was Ching Ming bank holiday in Hong
Kong. </p>

<p>The &quot;advances&quot; did not appear separately on the
unaudited interim report balance sheet at 30-Sep-00 either. </p>

<p>At 31-Mar-01, Dah Hwa was 58.26% owned by DHI, which was owned
by a foundation under which the late Chairman and Founder, Mr Lee Deh, his wife
Mrs Lee Shiao Yu Cho and their son Mr John Lee Sam Yuen (<b>John Lee</b>) were beneficiaries. In
other words, the family foundation. These people were 3 of the 4 executive
directors of Dah Hwa. Mr Lee Deh passed away on 17-Dec-01. </p>

<h3>Noted in annual report</h3>

<p>The Dah Hwa annual report for 31-Mar-01 discloses the
advances to DHI for the first time, but makes no mention of the fact that they broke the listing
rules and were not subjected to independent shareholders' approval. The advances were unsecured, interest-free and had
no fixed terms of repayment. Fortunately, they were subsequently repaid (presumably without
interest) on 30-Jul-01. </p>

<p>It must be pure coincidence that the advances were repaid on
30-Jul-01, just one day before the announcement of final audited results for
31-Mar-01. That allows note 18 to the balance sheet to state that the amounts were <i>&quot;subsequently
repaid&quot;. </i>Interestingly, the board meeting to consider and release the
final results was originally scheduled for Sat-28-Jul-01 but was &quot;<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010730/LTN20010730087.HTM" target="_blank">postponed</a>&quot;
to Tues-31-Jul-01, the day after the advances were repaid. </p>

<h3>Failure of INEDs</h3>

<p>The two independent non-executive directors (INEDs) of Dah Hwa
were appointed in 1993, the year of the IPO. They are Mr William Sung Yuen Lam (<b>Mr
Sung</b>) and Mr Cheng Shu Wing (<b>Mr Cheng</b>). Mr Sung is <i> &quot;sole
proprietor of an accountancy firm and has more than 24 years of auditing
experience&quot;</i>. Mr Cheng <i> &quot;holds a bachelor degree in business
administration from Chinese University of Hong Kong and has extensive experience
in the banking and securities industries in Hong Kong&quot;.</i> </p>

<p>So they are pretty qualified, and between them, you would think they would be well aware of the
Listing Rules and the common sense fact that there is a conflict of interest
when a controlling shareholder takes money out of the company. They should have
objected. They should have notified the Stock Exchange and raised it with the
auditors, Deloitte Touche Tohmatsu. </p>

<p>We also believe that auditors in general should have some
responsibility for checking, in the course of their audit, that in respect of
financial matters, the listing rules have been complied with. After all, audited
accounts include some disclosures required under Listing Rules. </p>

<p>These two INEDs,
together with non-executive director Dr Samson Sun Ping Hsu (<b>Dr Sun</b>), formed the
audit committee. The report says: </p>

<blockquote>

<p>&quot;Principal duties of the audit committee include reviewing
and supervising the Group's financial and reporting processes and internal
controls.&quot; </p>

</blockquote>

<p>What kind of &quot;processes and internal controls&quot; could
allow this to happen? The report also states, in standard terms: </p>

<blockquote>

<p>&quot;The Company has complied throughout the year ended 31
March 2001&nbsp; with the Code of Best Practice as set out in <a href="http://www.hkex.com.hk/rulereg/listrules/app14.doc" target="_blank"> Appendix 14</a> of the
[Listing Rules].&quot; </p>

</blockquote>

<p>Um, right - perhaps that should be renamed the &quot;Code of
Worst Allowable Practice&quot;. For investors who are counting on their
INEDs to
look after their interests, you should know that Mr
Cheng is also an independent non-executive director of Texwinca Holdings Ltd,
and an executive director of Yanion International Holdings Ltd.</p>
<p>Investors can be grateful for small mercies - DHI did put the
money back, although Dah Hwa lost interest while it was away and has not been
compensated. But that's not the point. They might never have repaid it, there
was no security, and that is why advances to connected parties require minority
shareholders' approval.</p>

<p>It took nearly 10
months after the year end, and 22 months after the first advance, for the
company to make an announcement regarding this - presumably when someone pointed
out the omission to the Stock Exchange. It seems that a lot of people, including
the audit committee, were asleep at the wheel.&nbsp;</p>

<h3>Heavy provisions</h3>

<p>Dah Hwa has become somewhat accident prone in the last two years
to 31-Mar-01, making provisions for bad and doubtful debts totalling HK$81.71m
on turnover of $482.7m, or 16.9% of sales, and contributing to a net loss of
$120.6m. The audit committee should take a close look at the nature of these
debtors and the credit controls applied. Have they not heard of letters of
credit?</p>

<h3>Previous offence</h3>

<p>This is not the first time Dah Hwa has been in the news. On
16-Oct-01, the SFC successfully <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=01pr123" target="_blank">prosecuted</a>
John Lee, who is the Managing Director of Dah Hwa, and DHI for breach of the
Securities (Disclosure of Interests) Ordinance. They each pleaded guilty to 6
cases of failing to report to the Stock Exchange transactions in massive numbers
of shares between&nbsp; Jun-98 and May-00.</p>

<h3>Conclusion</h3>

<p>We have <a href="INED.asp" target="_blank">called</a> in the
past for independent directors to be elected by independent shareholders, the
people they are supposed to look out for. With DHI holding more than 50% of Dah
Hwa, outside investors have no choice on whether to re-elect the INEDs next time
they come up for re-election. It is entirely up to DHI as to whether they are
retained. So we would call for a vote of no confidence, but it would be
pointless. Instead, we just call on the INEDs to resign.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4815">China Infrastructure Investment Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=9021">Cheng, Shu Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14699">Sun, Samson Ping Hsu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14705">Sung, William Yuen Lam</a></li>
				
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