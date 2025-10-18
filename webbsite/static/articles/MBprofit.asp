
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

<script type="text/javascript">document.title="The Main Board profit requirement - for whom?";</script>

	<div class="summary">Webb-site responds to the HKEX proposal which further raises the barriers to entry for smaller companies on its monopoly stockmarket and reduces investor choice. Help us out and add your voice!</div>

<h2 class="center">The Main Board profit requirement - for whom?<br>
<span class="headlinedate">14 January 2021</span></h2>
<p>To: The Stock Exchange of Hong Kong Limited (<strong>SEHK</strong>)</p>
<p>This is my response to your
<a href="https://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/2016-Present/November-2020-MB-Profit-Requirement/Consultation-Paper/cp202011.pdf" target="_blank">
consultation paper</a> titled "Main Board Profit Requirement"
<a href="https://www.hkex.com.hk/news/regulatory-announcements/2020/201127news?sc_lang=en" target="_blank">
announced</a> on 27-Nov-2020. I'll keep this brief because, having ignored many 
of my previous submissions, you don't deserve 
much of my remaining time. I also ask any member of the investing public or 
market professional who 
agrees with this submission or has any other views, to write to you at
<a href="mailto:response@hkex.com.hk?subject=Profit Requirement CP">
response@hkex.com.hk</a> with the subject line "Profit Requirement CP", by 
1-Feb-2021.</p>
<ol>
	<li>SEHK, as a wholly-owned by Hong Kong Exchanges and Clearing Ltd (<strong>HKEX</strong>, 
	0388), is a for-profit regulator and also has a statutory monopoly on the 
	operation of a stock market in HK. Nobody else can set up a stock market 
	here. You are also
	<a href="https://www.gld.gov.hk/egazette/pdf/20151908/es22015190837.pdf" target="_blank">
	exempted</a> from abusing your monopoly under the Competition Ordinance.</li>
	<li>Companies, particularly smaller companies, wishing to raise public 
	equity in HK have no other choice, short of being driven into exile on an 
	overseas exchange. As a monopoly, you have a moral Universal Service 
	Obligation (<strong>USO</strong>) to list any company that meets disclosure 
	and governance requirements and is willing to bear the costs of being 
	listed, including appropriate listing fees.</li>
	<li>A minimum market cap has nothing to do with corporate governance. It's 
	an artificial limit on your USO. On 15-Feb-2018 you raised the minimum 
	market cap for new listings from HK$200m to $500m. At the end of 2020
	<a href="../dbpub/mcaphist.asp?e=m&amp;t=s&amp;d=2020-12-31&amp;p=0&amp;s=mcpup">
	there were 779</a> Main Board stocks with market caps below HK$500m, or 36% 
	of all stocks.</li>
	<li>Now you complain that having raised the minimum market cap, some 
	companies are listing on P/Es of 25x the minimum profit of HK$20m, so you 
	want to raise that too. One misconceived regulation begets another. We have 
	certainly seen cases of companies squeaking into the market at HK$500m 
	valuation and the share price promptly collapsing. Promises or indemnities 
	may have been issued to people to take the IPO stock at the required 
	valuation. This is a problem of your own making.</li>
	<li>A minimum profit requirement has nothing to do with corporate governance 
	and little to do with investment risk. Companies which make profits before 
	listing can make losses afterwards. There are hundreds of Main Board 
	companies that make a loss in any given year, some of which have made losses 
	for several years running. You don't relegate them to GEM. They are presumably all suitable to remain 
	Main Board listed 
	as long as they comply with disclosure and governance requirements, and 
	investors are free to invest in them. That's what makes a free market.</li>
	<li>Both the market cap requirement and the profit requirement (or on GEM, 
	the cashflow requirement) are simply targets for fraud or accounting 
	manipulation.</li>
	<li>You now list "<a href="https://www.hkex.com.hk/News/Regulatory-Announcements/2020/2004292news?sc_lang=en" target="_blank">pre-revenue</a>", 
	cashflow-negative, loss-making biotech companies on the Main Board. It has 
	always been possible for infrastructure and mineral exploration companies to 
	list without a profit. Why impose a cashflow or profit requirement on 
	everyone else?</li>
	<li>If public equity investors wish to invest in a small, loss-making company that may one 
	day be a big, profitable company or may simply go bust, who 
	are you to stop them? It's not like you don't list riskier
	<a href="https://www.hkex.com.hk/Global/Exchange/FAQ/Products/Securities/DW?sc_lang=en" target="_blank">
	derivatives</a> that expire worthless on a regular basis.</li>
	<li>So, scrap the market cap and profit requirements. Without that, there is little 
	difference between the GEM and the Main Board. So merge the two, but impose 
	the best features of both on the unified board (as we advocated in a
	<a href="oligarchy.asp">submission</a> on 7-Aug-2017), namely:</li>
</ol>
<blockquote>
<ul>
	<li>Quarterly financial reporting (as required on GEM): more disclosure for 
	the former Main Board companies (only a few of which, including HKEX and all 
	companies with a mainland listing, report quarterly)</li>
	<li>A 3-year clean audit report before listing (up from 2 years on GEM).</li>
	<li>Substantially the same management during the 3-year track record period 
	(up from 2 years on GEM).</li>
	<li>No requirement to conduct a public offering rather than just a 
	placement. Participating in IPOs is not a human right. The Main Board 
	requirement doesn't prevent stocks being manipulated after listing, as is 
	shown by numerous cases. Don't confuse corporate regulation with securities market 
	regulation.</li>
	<li>Leave companies without a 3-year track record to the private equity or 
	venture capital markets.</li>
</ul>
</blockquote>
<ol start="10">
	<li>One would be forgiven for thinking that the title of your paper, "The 
	Main Board Profit Requirement", is actually a requirement that you should 
	stop making losses on listing and regulating small companies. Vetting their 
	prospectuses must take an inordinate amount of resources 	<a href="https://en-rules.hkex.com.hk/rulebook/listing-fees-transaction-levies-new-issues-and-brokerage" target="_blank">
	for a fee</a> of only HK$250k. HKEX
	<a href="https://www.hkex.com.hk/Join-Our-Market/IPO/Listing-with-HKEX?sc_lang=en" target="_blank">
	loves to boast</a> about the amount of money mega-IPOs have raised, and you 
	have bent over backwards to facilitate this by allowing listings of 
	second-class shares in tech giants, undermining corporate governance 
	standards in a race to the bottom, with the support of the HK Government and 
	against the <a href="../codocs/SFC150625.pdf">original objections</a> in 
	2015 of the SFC. You seem much less keen to facilitate fund-raising by small 
	and medium enterprises that will contribute little to your bottom line. The 
	message seems to be "go away until you are profitable, for us". If you don't 
	want to be in the conflicted "business of regulation", then pass it over to 
	the SFC, where it <a href="listingreg.asp">rightfully belongs</a>.</li>
</ol>
<p>Yours sincerely</p>
<p>David M Webb</p>
<p>Founder, Webb-site.com<br>Former elected independent director, HKEX 
(2003-2008)<br>Currently a Deputy Chairman, SFC Takeovers and Mergers Panel.</p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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