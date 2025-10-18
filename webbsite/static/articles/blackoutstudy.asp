
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

<script type="text/javascript">document.title="The HKICS blackout study";</script>

	<div class="summary">In a side-piece to our <a href="../articles/LC2009.asp">story</a> on the Listing Committee, we look at the flaws in the study commissioned by the Institute of Chartered Secretaries after they opposed the backout extension, from none other than the brother of the Secretary for Financial Services, whose bureau lobbied to overturn the rule.</div>

<h2 class="center">The HKICS blackout study<br>
<span class="headlinedate">8 June 2009</span></h2>
<p>If you are not complete bored by the insider dealing blackout saga, then you may 
have read lovable local curmudgeon Jake van der Kamp ranting in 
a local newspaper a month ago that the Listing Committee (<strong>LC</strong>) had got it all wrong, that 94.6% of the 
respondents to an <a href="../vote/result.asp?p=25">opinion poll</a> on this 
site were also wrong, and that the information possessed by insiders ahead of 
results announcements (but after the year has ended) is of no advantage at all 
in their dealing decisions. He based these comments on a flawed
<a target="_blank" href="http://www.hkics.org.hk/media/publication/attachment/PUBLICATION_A_2309_Stock_price_performance_subsequent_to_directors'_dealing.pdf">
study</a> commissioned by the <a href="../dbpub/officers.asp?p=49514&amp;hide=Y">
Hong Kong Institute of Chartered Secretaries</a> (<strong>HKICS</strong>). What he didn't mention is that 
HKICS commissioned this study after having put 
their name in that famous tycoon-backed newspaper advertisement opposing the 
blackout extension in the first place.</p>
<p>The HKICS President is currently <a href="../dbpub/positions.asp?p=49513">
Natalia Seng Sze Ka Mee</a>, who is executive director of
<a href="../dbpub/orgdata.asp?p=16637">Tricor Group</a>, a subsidiary of The 
Bank of East Asia Co Ltd, the Chief Executive of which,
<a href="../dbpub/natarts.asp?p=49">David Li Kwok-Po</a>, was a
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=76386&amp;con_type=1">
vocal critic</a> of the blackout extension - and he should know a thing or two 
about insider dealing after buying his way out of SEC charges in the Dow Jones 
case. A Vice-President of HKICS is <a href="../dbpub/positions.asp?p=49515">
April Chan Yiu Wai Yee</a>, Company Secretary of CLP Holdings Ltd, which also
<a target="_blank" href="https://www.clpgroup.com/CorpGov/ConsuResp/Documents/Extension%20of%20Black%20Out%20Period%20for%20Dirs%20Dealing-23.12.08.pdf">
opposed</a> the extended blackout. Another director of Tricor,
<a href="../dbpub/positions.asp?p=49525">Diana Chung Miu Yin</a>, sits on the 
HKICS Council, as does <a href="../dbpub/positions.asp?p=11279">Edith Shih</a>, 
Company Secretary of Hutchison Whampoa Ltd,
<a href="../dbpub/positions.asp?p=49530">Polly Wong Oi Yee</a>, Company 
Secretary of Dynamic Holdings Ltd, <a href="../dbpub/positions.asp?p=37667">
Seaman Kwok Siu Man</a>, Company Secretary of S E A Holdings Ltd, and
<a href="../dbpub/positions.asp?p=22512">Richard Leung Wai Keung</a>, INED of 
Asia Standard Hotel Group Ltd and Asia Standard International Group Ltd. so we 
count at least 7 Council members (out of 13) whose employers or companies openly opposed the 
blackout extension.</p>
<p>The study did not adjust for the size of 
transactions (you would think bets would be larger when the information 
advantage is higher), nor 
did it eliminate noise such as rights issue entitlements, open offer 
entitlements and bonus issues, all 
of which result in an involuntary increase in a director's nominal share interests without an 
active purchase. It is not even clear whether the study adjusted for dividends 
and other non-cash distributions, which add to returns.</p>
<p>The returns were also calculated relative to the Hang Seng Index, which is 
not necessarily the most reliable benchmark, particularly for the vast majority 
of companies (by number) which are not in it, handy though it is. It only
<a target="_blank" href="http://www.hsi.com.hk/HSI-Net/static/revamp/contents/en/news/pressRelease/20090508e.pdf">
covers about 69%</a> of the market value. The choice of benchmark is important 
in market-adjusted performance studies, because if it is not in line with the 
average performance of all stocks in the survey then it can give skewed results.</p>
<p>The study examined post-results returns from day 1 to day 14 after the 
results announcement (it did not say whether this was trading days or calendar 
days) - but for companies which announce during the lunchtime halt, they should 
have been including day zero, when the information hits the price in the 
afternoon session. It may also be the case that positive earnings surprises are 
more likely to be released at lunchtime, to get the best media coverage, whereas 
negative earnings shocks are more likely to be released at night, avoiding 
publicity. So a safer study would have measured the returns from dealing date 
(i.e. at least 1 month before results) until 14 days after the results.</p>
<p>Furthermore, the study adopted an aggressive statistical significance level 
of 0.1%. That means that a finding was only considered significant if it could 
happen by pure chance only 1 in 1000 times. By analogy, the study would only 
consider a tossed coin to be biased if it came up with 21 heads or tails in a 
row (a 1 in 1024 probability) whereas most studies would look at the 5% (1 in 
20, or more than 5 heads/tails in a row) or 1% (1 in 100, or more than 7 
heads/tails in a row) levels. We assuming they are talking about
<a target="_blank" href="http://en.wikipedia.org/wiki/One-tailed">two-tailed</a> 
significance levels, but the study doesn't say.</p>
<p>Anyway, despite the deficiencies, the study showed that 
directors who sell shares before results announcements out-perform the market, 
and more so (by an average 7.8%) if they do it 3-4 months before the results 
announcement, before the rest of the market can get wind of the bad news. They 
also out-perform by selling after results announcements (before the next 
period-end), but not by as much, in our view because their inside information 
advantage is smaller. The study found no significant advantage for purchases, 
but that is probably because of the deficiencies in the methodology outlined 
above.</p>
<p>From any common sense perspective, information can never have negative value, 
and the greater the information advantage you have, the more likely you are to 
make money if you deal on it. It doesn't take a study for investors to know 
that.</p>
<h3>The study's author</h3>
<p>The study was conducted by Professor <a href="../dbpub/positions.asp?p=27471">
Chan Ka Lok</a> of HKUST Business School. He also endorsed the methodology in a
<a target="_blank" href="http://www.mpfa.org.hk/english/quicklinks/quicklinks_pub/files/FullReportEng.pdf">
study</a> of 5-year MPF returns from Apr-2001 to Mar-2006, which conveniently 
focused on dollar-weighted returns, which weren't as bad as the actual fund 
performance on a price basis, because the tech bubble was still deflating in the 
first 2 years of the study when the MPF had just started, and then the market 
rallied sharply from the SARS/ gulf war lows of 2003 when there was more money 
accumulated in the MPF system (it only started in Dec-2000). </p>
<p>That piece of MPFA propaganda, largely designed to deflect attention from
<a href="mpfcost.asp">criticisms</a> of total expense ratios, also 
contained howlers such as &quot;the annualized dollar-weighted return...was 
calculated by multiplying monthly IRR by 12&quot;. Will someone please explain 
compounding to this man, who incidentally, is the brother of Secretary for 
Financial Services and the Treasury Bureau,
<a href="../dbpub/positions.asp?p=18733">Ceajer Chan Ka Keung</a> (aka K C 
Chan). The FSTB was of course heavily involved in lobbying the Stock Exchange 
and its Listing Committee to undo its extended blackout rule. Ceajer would enjoy 
reading his brother's report.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=49514">Hong Kong Chartered Governance Institute (The)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=18733">Chan, Ceajer Ka Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=27471">Chan, Ka Lok (1962)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
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