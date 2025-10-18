
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

<script type="text/javascript">document.title="A closer look at Maxim's";</script>

	<div class="summary">Recent filings reveal the true profits of Hongkong Caterers Ltd, the 50% owner of Maxim's run by the Wu family, and how they take out a substantial management fee from Maxim's on top of the 50% of profits. We also estimate that about 1 in 7 dollars of HK restaurant receipts go to the Maxim's group. Annie Wu has only a 0.33% stake of HC, although her parents and siblings control an estimated 18.6%.</div>

<h2 class="center">A closer look at Maxim's<br>
<span class="headlinedate">11 October 2019</span></h2>
<p>There has been, shall we say, quite a lot of attention recently paid to 
<a href="../dbpub/officers.asp?p=17824">Maxim's Caterers Ltd</a> (<strong>Maxim's</strong>), HK's largest restaurant group, 
due to comments on the HK protests by <a href="../dbpub/positions.asp?p=11333">
Annie Wu Suk Ching</a> (<strong>Ms Wu</strong>), a daughter of
<a href="../dbpub/positions.asp?p=26258">James Wu Jim Tak</a> (<strong>James Wu</strong>) 
who with his late brother Wu Shun Tak (<strong>S T Wu</strong>) co-founded 
Maxim's, regarding the HK protests.</p>
<p>Maxim's has taken steps to distance itself from Ms Wu's comments,
<a href="https://www.scmp.com/print/news/hong-kong/politics/article/3030225/hong-kong-protests-maxims-group-distances-itself-rioters" target="_blank">
stating</a> on 24-Sep that she "does not hold any position at the company, nor 
is she involved in any managerial decisions". She yesterday went further, 
<a href="https://www.scmp.com/print/news/hong-kong/politics/article/3032415/founders-daughter-hits-out-hong-kong-protesters-over" target="_blank">stating</a> "I absolutely have no links with Maxim's personally because I don’t work 
at Maxim's".</p>
<p>Well, not quite. She has an indirect financial interest, revealed in 
recent corporate filings. As at 30-Sep-2019, she was the registered shareholder 
of 100 shares (0.33%) of <a href="../dbpub/orgdata.asp?p=158032">Hongkong 
Caterers Ltd</a> (<strong>HC</strong>), which owns 50% of Maxim's. It doesn't 
sound like much, but Maxim's is so large that HC was able to pay dividends of 
HK$13,000 per share for the year to 31-Mar-2019, so her dividends are HK$1.3m. The other half of 
Maxim's is owned by <a href="../dbpub/articles.asp?p=1210">Dairy Farm 
International Holdings Ltd</a> (<strong>DF</strong>), a Jardine group company.</p>
<p>We note that the largest single shareholder of HC is a company of 
unknown domicile, JETCO Investment &amp; Management Ltd (<strong>JETCO</strong>), 
which holds 3,780 shares (12.6%). The share register puts it at a HK residential 
address with James Wu (315 shares) and his wife Eugenia (875). Shareholders also 
at that address are: Wilson Wu (100), Victor Wu Wai Tat (100), Ms Wu (100), Anna 
Wu Suk Fun (100), Adeline Wu Suk Ki (100) and Anita Wu Suk Yuen (100) who are 
likely all siblings. So we estimate that this branch of the family has 5,570 
shares (18.6%) of HC. We don't know whether Ms Wu has any shareholding in JETCO.</p>
<p>HC is an unlisted but public company, so we have obtained its
<a href="../codocs/HKCaterers1903fsOCR.pdf" target="_blank">accounts</a> for the 
year ended 31-Mar-2019, filed 2 days ago. As Maxim's is by far its biggest 
asset, Note 4(c) of the HC accounts has to show the key figures of Maxim's. This 
shows that Maxim's had turnover of HK$20.27bn in the 2018 calendar year, and 
made a post-tax profit of $1,678m, on net assets of $7.04bn. That's a decent 
8.3% net profit margin on revenue, and a 23.8% return on equity.</p>
<h3>The management fee and directors' takeout</h3>
<p>HC also earned a "catering management fee" from Maxim's of HK$372.6m, or 
about 1.84% of Maxim's turnover. HC reports "catering managers' operating 
expenses" of HK$249.7m. However, a large portion of that must be directors' 
remuneration, which amounted to HK$194.8m for the year, including HK$169.7m of 
"salaries and allowances" (note 21). There were just 5 directors of HC during 
the financial year, of which 1 passed away on 16-Jan-2019. 3 of the others are co-founder 
James Wu, Michael Wu Wei Kuo (Chairman of Maxim's and grandson S T Wu) and 
Wilson Wu Wai Tsuen (<strong>Wilson Wu</strong>), also an Executive Director of 
Maxim's and son of James Wu. So it appears that unlike DF, the 
Wu family, via directorships of HC, rakes in a substantial annual fee on top of 
HC's 50% share of 
Maxim's profits.</p>
<p>After the directors' takeout, overall, HC reported a net profit for the year 
of HK$893.1m.</p>
<h3>Maxim's estimated HK market share</h3>
<p>According to the HKSAR Census and Statistics Department, total
<a href="https://www.censtatd.gov.hk/hkstat/sub/sp320.jsp?productCode=D5600088" target="_blank">
HK restaurant receipts</a> in 2018 (including restaurants, fast food shops and 
bars) were HK$119.6bn. Maxim's does have some business in Macau, Malaysia, 
Thailand, Vietnam, Cambodia, Singapore (including the Starbucks franchise) and 
Mainland China. No geographic breakdown is available but based on the
<a href="https://www.maxims.com.hk" target="_blank">group web site</a> we assume 
about 80% of turnover, or $16.2bn, is still in HK. That would give Maxim's a 
13.5% market share of HK restaurant receipts. Put another way, about 1 in every 
7 HK restaurant dollars go to Maxim's. That would mean HK's citizens spend about 
HK$44m per day in Maxim's, or about $6 per citizen per day.</p>
<p>By comparison, <a href="../dbpub/articles.asp?p=651">Cafe de Coral 
Holdings Ltd</a> (0341) reported HK revenue of HK$7.36bn in the year to 
31-Mar-2019, and <a href="../dbpub/orgdata.asp?p=4830">Fairwood Holdings Ltd</a> 
(0052) turned over HK$2.84bn at its HK restaurants. So Maxim's is bigger than 
both combined.</p>
<h3>Stop the violence, and return to peaceful protest for democracy</h3>
<p>We take this opportunity to urge an end to the violence against any business 
or person in HK and to return the streets and the protests to the peaceful 
millions who turned out on 16-Jun-2019. We have
<a href="outcome.asp#CV">already explained</a> how the HKSAR 
Government can respond to the underlying democratic deficit by proposing local 
electoral reform, democratising the Legislative Council's small-circle 
Functional Constituencies and the Chief Executive Election Committee through 
local legislation to abolish corporate voting and replace it with 
one-worker-one-vote.</p>
<p>Restuarant workers should of course have that 
vote, in the Catering sub-sector and Functional Constituency, replacing their 
corporate employers. We also call on restaurateurs, including Maxim's, to come 
out in favour of that electoral reform and give up their corporate votes, 
because it means an economic recovery rather than a hard crackdown that would 
surely decrease the public appetite for eating at their restaurants.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=651">CAFE DE CORAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1210">DFI Retail Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4830">FAIRWOOD HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=158032">HONGKONG CATERERS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17824">MAXIM'S CATERERS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11333">Wu, Annie Suk Ching</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=26258">Wu, James Jim Tak</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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