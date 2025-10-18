
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

<script type="text/javascript">document.title="Kingston (1031): things you should know";</script>

	<div class="summary">Even after today's plunge, Kingston is trading at 13.2x net tangible assets of $0.508 per share, 70.8x trailing earnings, and is heavily dependent on low-cost loans from its majority shareholder. Don't bet on that continuing. We also look at the extent of its margin lending to controlling shareholders of large numbers of other listed companies.</div>

<h2 class="center">Kingston (1031): things you should know<br>
<span class="headlinedate">30 January 2018</span></h2>

<p>There's a few things that investors should be aware of when considering
<a href="../dbpub/articles.asp?p=4977">Kingston Financial Group Ltd</a> (<strong>Kingston</strong>, 
1031). The stock fell 16.61% today to $6.73, following last night's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0129/LTN20180129385.PDF" target="_blank">
concentration warning</a> from the SFC, that the top 20 holders have 91.653% of 
the shares as at 8-Jan-2018. That warning was long-overdue, in our view.</p>
<ul>
	<li>Kingston has 13.614bn outstanding ordinary shares. It also has 3.75bn 
	non-redeemable convertible preference shares (<strong>CPS</strong>), which 
	were issued on 1-Apr-2011 as part-payment for the acquisition of Kingston 
	Capital Asia Ltd (<strong>KCA</strong>) from
	<a href="../dbpub/natarts.asp?p=8770">Pollyanna Chu Lee Yuet Wah</a> (<strong>Mrs 
	Chu</strong>) and her mother Ma Siu Fong (<strong>Ms Ma</strong>), to 
	prevent the family owning more than 75% of the ordinary shares and thereby 
	satisfy the 25% free float requirement under the Listing Rules. Each CPS 
	pays the same dividend as an ordinary share but has no voting rights. There 
	is no deadline for conversion.</li>
	<li>There were originally 5.25bn CPS, but some have converted. When all 
	remaining 3.75bn CPS have converted, there will be 17.364bn shares, so the 
	true market capitalisation of Kingston is HK$116.9bn at today's closing 
	price. Mrs Chu owns 74.61% of the ordinary shares and all of the CPS, so her 
	combined stake is 80.09% of Kingston.</li>
	<li>Based on the
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/1228/LTN20171228350.pdf" target="_blank">
	interim report</a>, at 30-Sep-2017, Kingston had net tangible assets (<strong>NTA</strong>) 
	of just HK$8.813bn, or about HK$0.508 per share including CPS. That is not 
	the "NAV" figure you will see on many trading screens, which only use 
	ordinary shares as the denominator, and which include HK$11.00bn of goodwill 
	on the acquisition of KCA and $0.28bn of other intangibles, being subsurface 
	mineral exploration rights in Saskatchewan, Canada, acquired in a bad-loan
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0602/LTN20130602027.pdf" target="_blank">
	settlement</a> in 2013. Kingston has not pursued exploration and didn't make 
	any comment on the asset in its subsequent annual reports.</li>
	<li>Consequently, even after today's plunge, the stock is trading at 13.2x 
	NTA. If it were to trade at NTA, then the stock would drop 92.5% from here.</li>
	<li>In the year to 31-Mar-2017, Kingston had shareholders' profit of 
	HK$1,485m, or $0.0855 per share, leaving the stock on a historic P/E of 
	78.7 at tonight's closing price. Adjusting for the subsequent 6 months' 
	results, the trailing twelve month earnings are $1,649m, or $0.0950 per 
	share. Even then, the P/E is a whopping 70.8.</li>
	<li>But even then, readers should note that about 73% of Kingston's 
	"adjusted EBITDA" in the interim results comes from margin and IPO 
	financing. This business charges interest rates to customers of 
	"approximately Hong Kong Dollar Prime rate plus 3%", or about 8%, but 
	benefits from a very low cost of financing, the bulk of which is provided by 
	Mrs Chu and her family, as follows.</li>
	<li>At 30-Sep-2017, Kingston had margin financing loans outstanding of 
	HK$21.89bn. These were secured on securities pledged as collateral of 
	HK$79.70bn. In the Webb-site CCASS Analysis System we can see all the CCASS
	<a href="../ccass/cholder.asp?part=150&amp;d=9/29/2017&amp;z=0&amp;sort=valndn">
	custody positions</a> of Kingston Securities Ltd (<strong>KS</strong>, the 
	100% brokerage subsidiary of Kingston) at 29-Sep-2017, totalling about 
	$98.1bn. That includes 51.93% of <a href="../dbpub/articles.asp?p=2195958">
	Tianhe Chemicals Group Ltd</a> (1619) valued at $15.1bn based on the stock 
	price when it was suspended on 26-Mar-2015.</li>
	<li>Our system shows that as at 29-Sep-2018, KS had
	<a href="../ccass/cholder.asp?part=150&amp;d=1/29/2018&amp;z=0&amp;sort=stakdn">
	CCASS custody</a> of more than 30% of 58 listed companies. These likely 
	represent controlling shareholders, many of whom have pledged the securities 
	as collateral for loans. If such large custody positions were just an 
	aggregate of shares held by small investors, then there would be significant 
	holdings of popular stocks such as HSBC (0005), Tencent (0700) or HKEX 
	(0388), but to the nearest 0.01%, the KS CCASS holdings in those blue-chips 
	are currently 0.00%, 0.00% and 0.03% respectively. Kingston also holds 
	between 20% and 30% of the shares in 25 more companies, taking the total of 
	holdings above 20% to 83 companies.</li>
	<li>Looking at the
	<a href="../ccass/choldings.asp?sort=holddn&amp;i=1254&amp;sc=&amp;d=2018-01-29">
	CCASS snapshot</a> of Kingston's ordinary shares, only 18.20% is in CCASS, 
	leaving 81.80% outside. That is 7.19% more than Mrs Chu's known holdings of 
	74.61%.</li>
	<li>Of the 18.20% which is in CCASS, 12.53% of it, or more than two-thirds, 
	is held via KS. Despite the valuation, it seems that KS clients particularly 
	like the company, relative to clients of other firms.
	<a href="../ccass/chistory.asp?i=1254&amp;part=150">Here's the history</a> 
	of that holding.</li>
	<li>The vast bulk of Kingston's debt funding is provided by Mrs Chu and her 
	family. At 30-Sep-2017, Kingston had total borrowings of $16.00bn, of which 
	bank borrowings were HK$4.19bn (26.2%), while amounts due to the Chu family 
	totalled HK$11.81bn (73.8%).</li>
	<li>Of this, $1.190bn due to Better Sino Ltd (wholly-owned by Mrs Chu) was 
	interest free, while another $1.075bn due to Mrs Chu personally bore 
	interest at 3% p.a.. A further $8.847bn owed to <a href="../dbpub/orgdata.asp?p=25548">
	Kingston Finance Ltd</a> (which she wholly-owns) bore interest at just 2% 
	p.a.. A further $0.7bn was subordinated (meaning, it ranks behind other 
	creditors), of which $300m owed to Mrs Chu and $150m owed to her father Lee 
	Wai Man (aka Lee Sui Fok, Lee Shiu Fook, <strong>Mr Lee</strong>) both bore 
	interest at 1.5%, while $250m owed to Mr Lee bore interest at P+1%. None of 
	these loans were secured, probably because if they had been, then the loans 
	would require independent shareholders' approval.</li>
	<li>Bank money market loans and revolving loans of HK$3.26bn bore interest 
	at 0.91% to 2.57% p.a. and were secured on $9.16bn of margin clients' 
	securities and a few minor assets, while a HK$775m bank floating-rate term 
	loan bore interest at 2.86% to 3.32% p.a..</li>
	<li>Interest expenses of Kingston in the 6-month period totalled $143.32m, 
	equivalent to an overall annualised rate on the average debt at the start 
	and end of the period of about 2.1% p.a..</li>
</ul>
<p>The family wealth appears to originate from Mr Lee's Macau VIP room 
operations. According to a
<a href="http://www.goldenresortsgroup.com/en/media_press/050609PhotoRelease_Cocktail.pdf" target="_blank">
2005 press release</a>, Mr Lee was involved in the Macau casino industry since 
1990 and founded the "Gold Club" VIP rooms at the Lisboa Casino, before which he 
was a "consultant for Caesar's Palace Las Vegas". In 2005, Kingston called Mr 
Lee "the leading VIP Room operator in Macau". Perhaps this promises an endless 
stream of financial support with low-cost loans to the listed company via Mrs Chu's 
Kingston Finance, but we wouldn't bet on it.</p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=25548">KINGSTON FINANCE LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4977">Kingston Financial Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2195958">Tianhe Chemicals Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8770">Chu Lee, Pollyanna Yuet Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=24956">Lee, Wai Man (1929)</a></li>
				
		</ul>
	<hr>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="#top">Back to top</a></p>
<hr>
</div>

<p>&nbsp;</p>
</body>
</html>