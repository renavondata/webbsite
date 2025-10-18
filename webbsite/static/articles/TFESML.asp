
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

<script type="text/javascript">document.title="Breaking: HK Government withholds Task Force report, citing threat to financial markets stability";</script>

	<div class="summary">We asked for the report. They refused. Now we're <i>really</i> wondering what's in it.</div>

<h2 class="center">Breaking: HK Government withholds Task Force report, citing threat to financial markets stability<br>
<span class="headlinedate">29 January 2024</span></h2>
<p>Back on 29-Aug-2023, the HK Government
<a href="https://www.info.gov.hk/gia/general/202308/29/P2023082900493.htm" target="_blank">announced</a> the 
establishment of the Task Force on Enhancing Stock Market Liquidity (<strong>TFESML</strong>), to "comprehensively review 
factors affecting stock market liquidity and make improvement proposals to the Chief Executive [of HK]". TFESML was 
chaired by <a href="../dbpub/positions.asp?p=17837">Carlson Tong Ka Shing</a> and you can see the background of its 
members <a href="../dbpub/officers.asp?p=30483631">in Webb-site Who's Who here</a>. None could really be said to be 
an investor, although one (Ding Chen) runs CSOP Asset Management, which issues index-tracking Exchange-Traded Funds (ETFs) 
and one (Sally Wong Chi Ming) runs the HK Investment Funds Association, which represents issuers of mutual funds.</p>
<p>Anyway, we awaited their report with keen interest. Would they, for example, recognise that the dollar amount of 
liquidity is a function of company valuations, which in turn reflect the discount applied by investors for the lack of 
disclosure, lax reporting deadlines, unbounded <a href="shells.asp">capital-hoarding</a>, lack of
<a href="../dbpub/subject.asp?c=111">class action rights</a>, <a href="../dbpub/subject.asp?c=154">fake INEDs</a> elected by 
controlling shareholders, and so forth? Would they perhaps recognise that racing to the bottom by allowing listings of 
second-class shares with weaker voting rights was the wrong direction? Would they recognise that introducing a 
higher-trust framework is the patriotic thing to do, because the resulting higher equity valuations would lower the cost of 
capital for the nation's issuers and make the PRC economy more competitive?</p>
<p>The next mention of TFESML was in <a href="https://www.policyaddress.gov.hk/2023/en/p70.html" target="_blank">paragraph 71</a> of the 
HK Chief Executive's Policy Address on 25-Oct-2023, when he announced that TFESML had submitted its report and that he 
had accepted its recommendations. What were those recommendations, then? Well, he only listed some of them, including 
reversing the 2021 increase in stamp duty, cutting it back to 0.2% (split 50:50 between buyer and seller) from 0.26% on 
each transaction. Stamp duty is not payable on ETFs, warrants or derivatives, by the way.</p>
<p>The CE would also get Hong Kong Exchanges and Clearing Ltd (<strong>HKEX</strong>, 0388), the Government-controlled 
operator of the monopoly stock exchange, to review its minimum trading spreads. This is leftover business from when 
David Webb, Founder of Webb-site.com, was a shareholder-elected independent director of HKEX from 2003-2008. 
Shareholders have 6 seats on the 13-member board. He did succeed in getting spreads cut to efficient levels for 
higher-priced stocks above HK$5, but for those below that point, the Board <a href="spreadout.asp">backed down</a> 
in the face of opposition from small brokers who hold their own seat in the Legislative Council. Phase "2B" of the 
proposals spread-reductions was not to be, and was cancelled.</p>
<p>So what else was in the report? In the past, it was standard practice to publish the reports of such committees. For 
example, we had the Report of the <a href="pipsireport.asp">Panel of Inquiry into the Penny-Stocks Incident</a> in 2002, followed in 2003 by the Report of the <a href="hkexpublic.asp">Expert Group to Review the 
Operation of the Securities and Futures Market Regulator Structure</a>, which the Government briefly adopted before 
back-tracking. That would have stripped the for-profit HKEX of its regulatory function and unified the administration of 
the Listing Rules with the Takeovers Code under the SFC, as most modern markets do. For-profit regulation is an 
oxymoron.</p>
<p>Hong Kong, unfortunately, is back-tracking on disclosure too, and the TFESML report has not been published. So we 
filed a request for the report under the non-statutory <a href="https://www.access.gov.hk/" target="_blank">Code On Access To 
Information</a> (HK still lacks a freedom of information law and a Government archives law). On 
23-Jan-2024, the Secretary for Financial Services and the Treasury (via a minion) came back to us, rejecting the request. Their reasons for the 
rejection, if genuine, should ring alarm bells. Here they are in full:</p>
<div class="letterbox">
<ol>
	<li>Publishing specific details of market analysis in the report could be interpreted by the market as the 
	Government’s position on market trends and forecast of future performance, which may bring unwanted influence to the 
	market and <strong>prejudice the maintenance of stability in financial markets</strong>. Paragraph 2.8 of the Code 
	applies.</li>
	<li>Premature disclosure of the detailed directions that the market operator and financial regulators were 
	recommended to study may trigger market speculation of specific initiatives and cause <strong>preemptive market 
	movements, which would not be conducive to the maintenance of stability in financial markets</strong>. Paragraph 2.8 
	of the Code also applies.</li>
	<li>The Task Force’s deliberations on specific measures warrant protection and should not be subject to excessive 
	public scrutiny to ensure that the frankness and candour of individual members in tendering their views to the 
	Government can be preserved. Paragraph 2.10 of the Code applies. (our bold)</li>
</ol>
</div>
<p>Reason 3 holds no water, because such reports almost never attribute views to individual members; 
the committee reports as a body, or at most, it will say "some members held view A while others held view B". Reason 1 
is also rather silly, because the report represents the views of TFESML, not the views of the Government. But 
setting that aside, Reason 1 does suggest that the report contains views on "market trends and forecast of future 
performance" which may "prejudice the maintenance of stability in financial markets". What dark outlook does TFESML hold? 
Are the HK markets doomed? Should we be told?</p>
<p>Similarly, in Reason 2, what "detailed directions", other than those disclosed in the Policy Address, did TFESML 
recommend? What "preemptive market movements" threatening the "stability in financial markets" could these 
recommendations (which the CE said he has "accepted") cause? Did they propose a bail-out fund? A ban on short-selling? A 
merger with the Shanghai and Shenzhen Exchanges? Or something sensible, like the abolition of stamp duty on equities?</p>
<p>Sunshine is always the best disinfectant. Unless and until the Government publishes the report, the secrecy in itself 
"may trigger market speculation". Let's see the report and have an open public debate about its recommendations.</p>
<p><em>&copy; Webb-site.com, 2024</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2533599">HKSAR Financial Services and the Treasury Bureau</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30483631">HKSAR Task Force on Enhancing Stock Market Liquidity</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
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