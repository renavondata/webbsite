
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

<script type="text/javascript">document.title="Imagi bubble";</script>

	<div class="summary">We issue a bubble warning on Imagi (0585), up 616% in 4 days on turnover of 185% of the company. The confusing timetable, with a 10:1 consolidation yet to come, has likely contributed to more chaos than we have seen since Asian Citrus. The market price implies a valuation of 33.2 times book value, or a premium of HK$17.3bn (US$2.23bn). We think a discount would be more appropriate, for the characters involved.</div>

<h2 class="center">Imagi bubble<br>
<span class="headlinedate">14 April 2010</span></h2>
<p>Investors should beware of a bubble in the share price of
<a href="../dbpub/orgdata.asp?p=4778">Imagi International Holdings Ltd</a> (<strong>Imagi</strong>, 
0585). The company is in the middle of a reorganisation; since last Friday 
(9-Apr-2010), the stock has been trading ex-rights, even though the rights issue 
is still conditional on shareholders' approval at a Special General Meeting to 
be held on Friday (16-Apr-2010). There is also a 10 to 1 consolidation (a 
reverse stock split) due to take effect on Monday (19-Apr-2010), if approved at 
Friday's SGM. The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100324/LTN20100324009.pdf" target="_blank">
circular</a> is here.</p>
<p>What some investors may not understand is that the rights issue is 4 new 
shares at HK$0.07 for each <u>consolidated</u> share held. 
That's equivalent to 4 pre-consolidation shares at $0.007 for each 
pre-consolidation share. Tonight (14-Apr-2010) the stock closed at $0.242, so 
the rights issue is at a <strong>97.1% discount</strong> to the current, 
ex-rights share price. Adjusting for the rights issue, the stock has risen from 
$0.0338 last Thursday (the day before it went ex-rights), up 616% in 4 trading 
days. Turnover in the stock has been extremely heavy, with 6.67bn shares traded 
in 4 days, equivalent to about 185% of the current issued share capital. We 
haven't seen this much chaos since <a href="asiancitrus.asp">Asian 
Citrus</a>. We did suggest to the Stock Exchange last Friday that they require 
the company to clarify the basis of the rights issue, but they haven't.</p>
<p>If you are confused by having two different ex-dates, then maybe that's the 
intent. As we have <a href="openoffers.asp">said before</a>, 
allowing trading ex-entitlements, including dividends, rights issues or other 
distributions, before the distribution has even been approved by shareholders, 
is a recipe for disorderly and unfair markets. In our opinion poll last 
September, 85% of respondents <a href="../vote/result.asp?p=34">agreed</a> that 
this should be abolished, but it hasn't happened yet. They should have gone &quot;ex&quot; 
both the rights issue and the consolidation on the same day.</p>
<p>The rights issue is expected to comprise about 1.44bn shares, raising $100.8m 
gross. In addition, Idea Talent Ltd (<strong>Idea Talent</strong>, BVI) will 
subscribe 1.88bn consolidated shares at HK$0.07, raising $131.6m gross. Idea 
Talent is 60% owned by <a href="../dbpub/positions.asp?p=833">Francis Leung Pak 
To</a>, who was MD of <a href="../dbpub/articles.asp?p=834">Peregrine 
Investments Holdings Ltd</a> until it imploded in 1998, and 40% owned by
<a href="../dbpub/positions.asp?p=2923">Mico Chung Cho Yee</a>, an executive 
director of <a href="../dbpub/articles.asp?p=2925">PCCW Ltd</a> since before it 
was PCCW. Mr Leung is also now back in business with
<a href="../dbpub/natperson.asp?p=794">Larry Yung Chi Kin</a>, the hapless former 
Chairman of <a href="../dbpub/articles.asp?p=379">CITIC Pacific Ltd</a> until it 
almost blew up in 2008 over forex losses, the police investigation of which is 
ongoing. Mr Yung, through CITIC Pacific, was one of the early backers of 
Peregrine.</p>
<p>Idea Talent may also subscribe up to 988m consolidated shares at $0.07, 
called &quot;Top-up Shares&quot; in the circular, within 45 days of completion of the main 
deal, such that its post-deal holding (including any shares it receives as a 
rights issue sub-underwriter) reaches a majority 52.5%. That would raise $69.16m 
(not $79m as stated in the circular). As if that wasn't enough, Idea Talent will 
also have an option to subscribe another 1.5bn shares at $0.08 within 1 year 
after completion of the first share subscription, raising $120m.</p>
<p>There are also a bunch of &quot;Core Creditors&quot; who have lent money to Imagi. Two 
of these are Cayman funds: the Trophy Fund (and its wholly-owned subsidiary 
Goodyear Group Ltd) and the Trophy LV Master Fund. Both are &quot;managed&quot; by Trophy 
Asset Management Ltd (Cayman), which is owned by
<a href="../dbpub/positions.asp?p=30503">Kenneth Hung Kam Biu</a> (<strong>Mr 
Hung</strong>). The two funds are also &quot;advised&quot; by
<a href="../dbpub/officers.asp?p=30502">Winnington Capital Ltd</a> (HK), which 
is owned 50% each by Mr Hung and his wife, Jocelyn Chu. The third creditor is 
Fortunate City Investment Ltd (<strong>FCI</strong>, BVI). FCI was wholly-owned 
by Mr Hung but he disposed of it to a secret &quot;independent third party&quot; in 
Nov-2009.</p>
<p>The creditors are owed a total of HK$241m, which will be settled by paying 
them US$9m (HK$69.75m) in cash plus 790m shares plus an option to subscribe 400m 
shares at $0.08 for 1 year after the subscription completes, raising $32m. The 
two Trophy funds hold about 18.2% of Imagi between them, but they have agreed 
not to take up any of their rights, nor to sell their rights, so these will be 
available for excess applications. Given the massive discount, there is likely 
to be a heavy over-subscription of those.</p>
<h3>Bubble wrap</h3>
<p>Let's wrap this up. If all of the Top-up Shares are issued, and all the 
options granted to Idea Talent and the Core Creditors are exercised (which is 
likely if the <u>consolidated</u> share price stays above 
$0.08), then there will be 7,358,759,190 <u>consolidated</u> 
shares in issue (p44 of the circular). At the current price of $2.42 per 
consolidated share, that implies a market value of HK$17.81bn. By comparison, 
the pro forma net tangible assets, shown in Appendix II of the circular, will be 
$318.8m, plus the proceeds of the Top-up Shares and Options, making $540m, or 
about <strong>$0.073</strong> per share. So the market is implying <strong>33.2 
times book value, or a premium of HK$17.27bn (US$2.23bn)</strong>. Given the 
huge destruction of shareholder value at Peregrine and PCCW, we think a 
discount to net asset value for the incoming management would be fairer than the 
premium. That suggests an eventual 97% downside from the current price.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=834">PEREGRINE INVESTMENTS HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2923">Chung, Mico Cho Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=833">Leung, Francis Pak To</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=794">Yung, Larry Chi Kin</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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