
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

<script type="text/javascript">document.title="Observations on Next Digital (0282)";</script>

	<div class="summary">A Financial Inspector has not been appointed in HK since last century, before the SFC gained new powers under the SFO in 2003. Now, Financial Secretary Paul Chan, who will neither confirm nor deny plans to run for CE, is throwing this redundant tool at Next Digital.</div>

<h2 class="center">Observations on Next Digital (0282)<br>
<span class="headlinedate">28 July 2021</span></h2>
<p>This evening, Financial Secretary <a href="../dbpub/natarts.asp?p=7491">Paul Chan Mo Po</a> (<strong>Mr Chan</strong>) 
has
<a href="https://www.info.gov.hk/gia/general/202107/28/P2021072800734.htm" target="_blank">
invoked his power</a> under
<a href="https://www.hklii.hk/eng/hk/legis/ord/622/s841.html" target="_blank">
Section 841</a> of the Companies Ordinance to appoint a Financial Inspector (<strong>FI</strong>) to 
investigate the affairs of <a href="../dbpub/articles.asp?p=1832">Next Digital Ltd</a> (<strong>NDL</strong>, 0282). Let's 
just carefully make a number of points on this:</p>
<ol>
	<li>There has been no such appointment in over 22 years since 22-Apr-1999, 
	when the then Financial Secretary
	<a href="https://www.info.gov.hk/gia/general/199904/22/0422150.htm" target="_blank">
	appointed</a> an FI to investigate the collapse of
	<a href="../dbpub/articles.asp?p=834">Peregrine Investments Holdings Ltd</a>.</li>
	<li>The use of this power, in respect of listed companies, has fallen into 
	abeyance after 1-Apr-2003, when the stronger powers of the Securities and 
	Futures Commission came into effect under the Securities and Futures 
	Ordinance. Since then, it has been the SFC which investigates listed 
	companies and frequently obtains disqualification orders against directors 
	in the courts. The SFC can take cases of false or misleading disclosure to 
	the Market Misconduct Tribunal (MMT) on a civil basis, or to the courts on a 
	criminal basis (via the Department of Justice for the higher courts). They 
	can also take non-disclosure to the MMT on a civil basis, resulting in 
	fines and disqualifications.</li>
	<li>All that an FI can do is write a report after 
	using powers to obtain evidence (including compulsory interviews). Pursuant 
	to
	<a href="https://www.hklii.hk/eng/hk/legis/ord/622/s862.html" target="_blank">
	Section 862</a> of CO, the report is admissible as evidence in civil (but 
	not criminal) proceedings, including disqualification proceedings. While the 
	power to appoint an FI remains on the books, in our view there is no good 
	reason to resurrect its use against listed companies or their directors, as 
	this is something that the SFC already deals with. Indeed, the Government 
	itself made this point
	<a href="https://www.info.gov.hk/gia/general/200912/09/P200912090192.htm" target="_blank">
	on 9-Dec-2009 in response</a> to a question by then-legislator (now ExCo 
	member) Ronny Tong Ka Wah, following the
	<a href="../dbpub/articles.asp?p=379">CITIC Pacific Ltd</a> (0267) debacle. An FI would only be 
	appropriate for private companies which are beyond the SFC's purview. The 
	SFC has tonight
	<a href="https://apps.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=21PR80" target="_blank">
	confirmed</a> that it "has been making a series of formal enquiries" into 
	NDL.</li>
	<li>Tonight's announcement mentions the delay in publication of NDL's 
	results - that is a matter for the Stock Exchange, not the FS. The delay is 
	unsurprising given that the NDL group's business was severely disrupted by 
	the closure of Apple Daily HK (<strong>ADHK</strong>), which came after its 
	offices were raided and several of ADHK's staff were arrested under the 
	National Security Law. As the HK newspaper is no longer a going concern, 
	accounting adjustments, including impairments, will need to be made. The 
	online Taiwan Apple Daily continues.</li>
	<li>Memorably, after the arrests on 17-Jun-2021, then Secretary for 
	Security <a href="../dbpub/positions.asp?p=1952426">John Lee Ka Chiu</a> (now Chief Secretary)
	<a href="https://news.rthk.hk/rthk/en/component/k2/1596300-20210617.htm" target="_blank">
	warned the public</a> to cut all ties with the group. Is it any wonder then, 
	that the group's HK bankers took that seriously, and reportedly refused to 
	process inbound or outbound payments for companies in the group, such as 
	payments from newsagents or for paper and ink? We have no reason to 
	disbelieve the NDL earlier
	<a href="https://www1.hkexnews.hk/listedco/listconews/sehk/2021/0526/2021052601069.pdf" target="_blank">
	announcement</a> of 26-May-2021 that it had sufficient working capital, but 
	when the Government subsequently tells people to stop dealing with your 
	business, that's a game-changer, indeed, game-over. If NDL had any cash 
	outside of its ADHK subsidiary (at the parent level or in its Taiwan 
	subsidiaries), it would not have been in the interests of NDL's shareholders 
	or creditors to throw good money after bad by pumping it into ADHK.</li>
	<li>We note that in recent days, Mr Chan has been
	<a href="https://www.scmp.com/news/hong-kong/hong-kong-economy/article/3142340/paul-chan-housing-hong-kong-has-land-must-cut-red" target="_blank">
	giving interview</a>(s) on a range of topics beyond his normal purview, 
	while neither confirming nor denying plans to run in the forthcoming Chief 
	Executive "election". You have to understand that 
	no potential candidate would want to start the clock on election expenses or 
	trigger equal-time media rules by declaring an intention to run at this 
	point, particularly if he/she is still in office and hasn't been given the 
	go-ahead by Beijing. Similarly, Chief Executive Carrie Lam Cheng Yuet Ngor 
	has also suddenly started being more media-accessible, even
	<a href="https://www.youtube.com/watch?v=JNcKFDGN3cY" target="_blank">
	appearing</a> on RTHK's English Backchat programme, although without the 
	back-chat, as exceptionally, callers and direct listeners' questions were 
	not allowed on that episode.</li>
	<li>In our view, tonight's announcement smacks of political grandstanding 
	ahead of a possible "election contest" between Mr Chan and Mrs Lam. Whether 
	they run, and the outcome, is of 
	course a matter for Beijing, but the cost of appointing an FI is a matter 
	for the public purse, and one that will likely duplicate the efforts of the 
	SFC.</li>
	<li>Although we normally don't disclose shareholdings below the statutory 5% 
	disclosure threshold, we'll make an exception now that the stock is 
	suspended and tell you that Webb-site Founder David Webb sold his last 
	shares in NDL in Aug-2019. At that point we judged that HK was going to 
	tip towards authoritarianism (see "<a href="outcome.asp">The 
	most likely outcome for HK</a>, 3-Sep-2019) and it would have been 
	inconsistent with that view to expect ADHK to survive the 
	crackdown.</li>
</ol>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=379">CITIC Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1832">NEXT DIGITAL LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=31364">Chan, Clement Kam Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7491">Chan, Paul Mo Po</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=25073">Tong, Ronny Ka Wah</a></li>
				
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