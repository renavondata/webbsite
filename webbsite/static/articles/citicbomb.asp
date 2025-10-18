
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

<script type="text/javascript">document.title="CITIC Pacific's time bomb";</script>

	<div class="summary">Why did CITIC Pacific's board wait 6 weeks before telling investors that it had a huge exposure to exotic foreign exchange forward contracts? What does this say about the quality of its board, and the independent directors on its audit committee who, according to a separate statement by the Chairman, found time to complete an investigation of the incident even before the incident was announced?</div>

<h2 class="center">CITIC Pacific's time bomb<br>
<span class="headlinedate">20 October 2008</span></h2>
<p>It turns out that little old ladies buying minibonds aren't the only ones to 
have been taken in by structured financial products. Hang Seng Index member (for 
now) CITIC Pacific Ltd (<strong>CP</strong>, 0267.HK) stunned the market this 
evening with the extremely late
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081020/LTN20081020225.pdf">announcement</a> that they are sitting on realised and unrealised losses of 
HK$15.5bn (US$1.99bn), due to foreign exchange exposures the Company was aware 
of six weeks ago (although the losses have grown) but had failed to tell 
investors until now.</p>
<p>The losses involve exotic foreign exchange forward contracts such as <em>
&quot;dual currency target redemption forward contracts&quot;</em>, where they get a 
limited upside (due to a knock-out clause) and an unlimited downside, being 
required to take the weaker of the Australian dollar and Euro. Another series of
<em>&quot;AUD target redemption forward contracts&quot;</em> involves receiving up to 
AUD9.05bn in monthly instalments up to October 2010. The counterparty bank(s) 
for these contracts have not been disclosed, and CP did not say when the 
contracts were entered into. They should tell investors how long this time-bomb 
was ticking. If the exposure pre-dates the interim report for 30-Jun-08 or even 
the audited annual report for 31-Dec-07 then it raises additional questions. On 
this, the two reports said (p120 of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080403/LTN20080403163.pdf">
annual report</a>):</p>
<blockquote>&quot;The functional currency and future cash flow for Group's 
Australian Iron Ore Mining project is denominated in USD. Substantial portion of 
the project infrastructure / pre-completion operating expenditure is projected 
to be denominated in non-USD currencies. Foreign exchange forward contracts and 
structured forward instruments are employed to hedge or minimise the non-USD 
currency exposure.&quot;</blockquote>
<p>There was no sensitivity analysis to FX movements in the annual report. In 
the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080908/LTN20080908164.pdf">
interim report</a> (p10) it adds:</p>
<blockquote>&quot;As at 30 June 2008, outstanding foreign exchange forward 
contracts and structured forward instruments amounted to HK$3.9 billion (31 
December 2007: HK$3.5 billion)&quot;</blockquote>
<p>CP says it became aware of the situation on 7-Sep-08 (a Sunday). Since then, 
the shares have fallen 41.7% while the HSI has fallen 23.1%. At yesterday's 
suspension price of $14.52, the company was valued at HK$31.84bn, so the loss is 
almost half of its market value. Net tangible assets were $55.2bn, so the loss 
is about 28% of that.</p>
<p>It cannot have taken 6 weeks to understand the basic financial parameters of 
the contracts the company had signed and the magnitude of money at risk, even if 
detailed valuations of options embedded in the derivatives were not available, 
and even if the amount of losses was a moving target as the Australian Dollar 
and Euro slumped against the US dollar. The board should have disclosed what 
they knew, when they knew it.</p>
<p>It is mind-boggling that the board could sit on this information for so long. 
CP's Managing Director, Henry Fan Hung-ling (<strong>Mr Fan</strong>), is also a 
member of Hong Kong's cabinet and a Government-appointed director of Hong Kong 
Exchanges and Clearing Ltd (<strong>HKEx</strong>, 0388.HK), which owns the 
Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>), which regulates listed 
companies. He also chairs the Mandatory Provident Fund Schemes Authority, which 
regulates retirement savings schemes, and the SFC's Takeovers and Mergers Panel 
(of which your editor is a member). Another Executive Director of CP, Vernon 
Moore, who has today been appointed Finance Director, was a member of the 
Listing Committee for several years until 16-May-03 and is a member of the new 
Financial Reporting Council (which investigates problems with financial 
reporting) and the Securities and Futures Appeals Tribunal.&nbsp; Surely they 
and their fellow directors are aware of
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_13.pdf">
Listing Rule 13.09</a> which requires prompt disclosure of price-sensitive 
information.</p>
<p>CP Chairman Larry Yung Chi-kin (<strong>Mr Yung</strong>) also digs the 
company deeper into the regulatory hole - outside of the official announcement, 
he has put out his own
<a target="_blank" href="../codocs/0267_chairman081020.pdf">statement</a> in a 
press release, which provides further information that should have been 
contained in the announcement filed with SEHK.</p>
<p>In the statement, he discloses that<em> &quot;after senior management discovered 
the problem last month, a special board meeting was held to discuss the issue, 
and the Audit committee was authorised to begin an independent investigation&quot;</em>, 
which has already concluded. It says something about the quality of the INEDs 
that they did not require the company to immediately announce the situation 
before embarking on their investigation as to how it arose. You don't wait for 
the investigator's report before disclosing a plane crash.</p>
<p>There was no mention of the audit committee or its investigation in the 
Announcement. The press release also contains a summary of the audit committee's 
findings. It alleges:</p>
<ul>
	<li>&quot;The Group Finance Director [Mr Leslie Chang Li Hsien, who 
	resigned today] failed to follow the Group's hedging policy and failed to 
	follow the Group's set procedure to obtain prior approval of the Chairman 
	before conducting the FX transactions, thereby exceeding his authority 
	limits; and</li>
	<li>&quot;The Group Financial Controller [Mr Chau Chi Yin, who 
	resigned today] failed to act as a check and balance and in oversight. In 
	particular, he failed to bring to the attention of the Chairman any unusual 
	hedging transactions.&quot;</li>
</ul>
<p>Incidentally, the biographies in the annual report call Mr Chang a Deputy 
Managing Director, not Finance Director, while Mr Chau was called an Executive 
Director, not Financial Controller. When were these titles and responsibilities 
assumed? What you will see in the annual report under &quot;senior management&quot; (the 
next layer below the board) is that Ms Frances Yung Ming-fong is &quot;Director, 
Group Finance&quot; - but apparently, not Group Finance Director. Did she know what 
was going on, or is her title misleading? She's the Chairman's daughter.</p>
<p>Apart from apportioning blame which was not allocated in the announcement, Mr 
Yung's statement also reveals that CP's auditor, PricewaterhouseCoopers, has 
been <em>&quot;invited...to study ways to improve the Group's internal control. Their 
recommendations have been accepted in full and will be implemented&quot;.</em></p>
<p>So CP had time to do all of this while still keeping investors in the dark. 
It's shocking. The credit rating agencies will probably need to put the 
company's rating under review for downgrade. CP says PRC state-owned CITIC 
Group, which owns 29% of CP, has <em>&quot;indicated its full support as always to 
the Company&quot;</em> and <em>&quot;has agreed to coordinate to arrange a standby loan 
facility of USD1.5 billion&quot;</em>. It remains to be seen whether the loan can 
actually be arranged. And what does &quot;full support&quot; mean - is CITIC Group going 
to guarantee CP's borrowings?</p>
<p>This episode has revealed deeply defective internal controls at a member of 
Hong Kong's blue-chip index, as well as disregard for the need and obligation to 
promptly inform investors of price-sensitive information. Investors should 
attach a discount for this, as should credit ratings agencies.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=379">CITIC Limited (HK)</a></li>
				
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