
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

<script type="text/javascript">document.title="Veto China Resources loans";</script>

	<div class="summary">Six HK-listed subsidiaries of China Resources group want to lend money to each other, to their parent, and to their parent's unlisted children. Webb-site urges independent shareholders to vote this down. VOTE NOW - time is short. China deserves better than a repeat of the Japanese Keiretsu system.</div>

<h2 class="center">Veto China Resources loans<br>
<span class="headlinedate">16 December 2010</span></h2>
<p>Six HK-listed subsidiaries of <a href="../dbpub/orgdata.asp?p=1109">China 
Resources (Holdings) Co Ltd </a>(<strong>CRH</strong>) are seeking approval from 
their independent shareholders to lend money to each other, to CRH, and to 
unlisted companies controlled by CRH. Webb-site urges shareholders to vote down 
the proposals, which require a simple 50% majority of those independent shares 
which vote at the meetings. CRH is prohibited from voting. The listed companies are:</p>
<table class="numtable center">
	<tr>
		<th class="left">Name</th>
		<th class="left">Stock code</th>
		<th class="left">Meeting date</th>
		<th class="left">Info</th>
		<th class="left">% owned<br>by CRH</th>
	</tr>
	<tr>
		<td class="left">China Resources Cement Holdings Ltd</td>
		<td>1313</td>
		<td>28-Dec-2010</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101205/LTN20101205001.pdf" target="_blank">
		Click here</a></td>
		<td>73.34%</td>
	</tr>
	<tr>
		<td class="left">China Resources Enterprise, Ltd</td>
		<td>0291</td>
		<td>22-Dec-2010</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101205/LTN20101205043.pdf" target="_blank">Click here</a></td>
		<td>51.40%</td>
	</tr>
	<tr>
		<td class="left">China Resources Gas Group Ltd</td>
		<td>1193</td>
		<td>22-Dec-2010</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101205/LTN20101205069.pdf" target="_blank">
		Click here</a></td>
		<td>68.18%</td>
	</tr>
	<tr>
		<td class="left">China Resources Land Ltd</td>
		<td>1109</td>
		<td>23-Dec-2010</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101205/LTN20101205025.pdf" target="_blank">
		Click here</a></td>
		<td>65.38%</td>
	</tr>
	<tr>
		<td class="left">China Resources Microelectronics Ltd</td>
		<td>0597</td>
		<td>28-Dec-2010</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101205/LTN20101205067.pdf" target="_blank">
		Click here</a></td>
		<td>60.60%</td>
	</tr>
	<tr>
		<td class="left">China Resources Power Holdings Co Ltd</td>
		<td>0836</td>
		<td>23-Dec-2010</td>
		<td>
		<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101205/LTN20101205029.pdf" target="_blank">
		Click here</a></td>
		<td>64.15%</td>
	</tr>
</table>
<p>CRH is a HK-incorporated wholly-owned subsidiary of China Resources Co., Ltd 
(<strong>CRC</strong>), incorporated in the PRC. All the intercompany loans 
would be guaranteed by CRH (in the case of HK$ and US$) or CRC (in the case of 
RMB). If the borrower is a subsidiary of a listed company, then it will be 
guaranteed by that listed company. All that may seem reassuring, but it still 
exposes the lender to loss if CRH or CRC goes bust. CRC currently has a AAA 
rating issued by a mainland rating agency, China Lianhe Rating Co., Ltd. No 
rating is given for CRH. But ratings, like reputations, can easily be lost - 
just ask shareholders of Enron or AIG.</p>
<p>Lending money to related companies or a parent company is an incredibly bad 
idea and independent shareholders should not accept it. For many years, mainland 
companies, mostly government-controlled, have been asking independent 
shareholders of their HK-listed subsidiaries to approve loans (euphemistically 
called &quot;deposits&quot;) with &quot;group finance companies&quot; controlled by the unlisted 
parent. These proposals always encounter strong opposition, and independent 
shareholders have occasionally succeeded in voting them down, despite any 
state-controlled votes in the free float. One example was
<a href="coswin.asp" target="_blank">China Oilfield Services Ltd</a> 
in 2004. The China Resources proposal takes a further step along this road: 
rather than distributing cash via a group finance company, China Resources wants 
to build a matrix of bilateral loans between the companies.</p>
<p>Listed companies should be financially independent of their parent and of 
their fellow subsidiaries. Shareholders of each company do not benefit from the 
profits of the other companies, and nor should they bear the risk. The China 
Resources group claims that there are seasonal cash flows at some companies 
which match funding needs at other companies. If that is the case, then it 
argues in favour of merging the companies together so that liquidity can be 
pooled between them, and then independent shareholders would benefit from the 
synergies of the combined companies. There may be other good reasons for 
maintaining separate listings which outweigh the synergies of merging them. But 
they cannot have it both ways. So long as they are separate, they should be 
financially independent.</p>
<p>Under the proposals, the listed lender would get a higher interest rate 
than they might get on deposits with independent banks, but that does not 
adequately compensate for the fact that they would be at the mercy of the 
controlling shareholder who in practice can decide whether to call for repayment 
or roll over the loans, depending on where it wants the money to be. 
Furthermore, if listed companies have surplus cash sloshing around, then they 
should pay it out to shareholders as dividends, and finance their short-term 
funding needs from trade finance facilities from the banking system. This would 
reduce the equity tied up in the company and improve return on equity.</p>
<p>No HK-controlled group of listed companies behaves in this way - you do not 
see Cheung Kong and its various listed companies asking for approval to lend 
money to each other or to Li Ka-shing; nor do you see it with any of the other 
tycoon-controlled conglomerates, such as Henderson group, New World group or 
firms controlled by Sun Hung Kai Properties. It is a uniquely mainland thing, 
and if the trend persists, then it could threaten the mainland economy with a 
repeat of the Japanese
<a href="http://en.wikipedia.org/wiki/Keiretsu" target="_blank">Keiretsu system</a>, 
where clusters of listed companies surrounded a group-controlled &quot;main bank&quot;. 
That system had some pretty awful consequences when the Japanese bubble burst in 
the early 1990s and the bad loans piled up. China should learn from its 
neighbour and put its listed companies on a more independent footing.</p>
<p>So, if you hold shares in any of these companies, vote <strong>AGAINST</strong> 
the proposals and <strong>VOTE NOW</strong> - time is very short as the first of 
these meetings is on 22-Dec, only 6 days away. If you are an asset manager, 
don't you dare get on a plane for the holidays until you have directed your 
custodians to vote against this! If you are a retail investor, make the effort - 
call your bank or broker, and get them to vote for you. Every share counts, and 
this could be close. For more information on the voting process, see our
<a href="../pages/howtovote.asp">voting guide</a>.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1109">CHINA RESOURCES (HOLDINGS) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1108">China Resources Beer (Holdings) Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18203">China Resources Building Materials Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2570">China Resources Gas Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2568">CHINA RESOURCES LAND LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21375">China Resources Microelectronics Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18184">CHINA RESOURCES POWER HOLDINGS COMPANY LIMITED</a></li>
				
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