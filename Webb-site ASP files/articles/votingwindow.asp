
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

<script type="text/javascript">document.title="HKEx cuts hit corporate governance of whole market";</script>

	<div class="summary">A circular slipped out by an HKEx subsidiary, HKSCC, will slash the effective voting window for general meetings, reducing the participation of institutional investors in important decisions such as acquisitions, connected transactions and dilutive share issues. We urge HKEx to rethink this deeply damaging move.</div>

<h2 class="center">HKEx cuts hit corporate governance of whole market<br>
<span class="headlinedate">18 April 2016</span></h2>

<p><a href="../dbpub/orgdata.asp?p=499">Hong Kong Securities Clearing Co Ltd</a> 
(<strong>HKSCC</strong>), the lucrative monopoly clearing company owned by
<a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388) slipped out a
<a href="http://www.hkex.com.hk/eng/market/partcir/hkscc/2016/Documents/ce_070_2016.pdf" target="_blank">
<strong>circular</strong></a> on 31-Mar-2016 containing some nasty news for 
investors which will undermine corporate governance by knocking 2 working days 
out of an already-short voting window for important meetings.</p>
<h3>Background</h3>
<p>HKSCC runs <strong>CCASS</strong>, the Central Clearing and Automated 
Settlement System. In order to trade shares on The Stock Exchange of Hong Kong 
Ltd, also owned by HKEx, the shares must be deposited into CCASS and placed on 
the share register in the name of HKSCC Nominees Limited (<strong>HKSCCN</strong>), 
making this HK's <em>de facto</em> central depository. The vast majority of 
publicly-owned shares (not held by controlling shareholders and directors) are 
held by HKSCCN on behalf of CCASS Participants comprising banks, brokers, 
custodians and direct "<a href="http://www.hkex.com.hk/eng/prod/clr/sec_clrsett/ipacctsvc/acctsvc_page.htm" target="_blank">Investor 
Participants</a>" like your editor.</p>
<p>So when the time comes to vote in an Annual General Meeting (<strong>AGM</strong>) 
or Extraordinary/Special General Meeting (<strong>SGM</strong>), investors 
who wish to vote must give instructions via HKSCC to vote the shares held by 
HKSCCN. Alternatively, if the investor wishes to attend the meeting, then she 
must instruct HKSCCN to appoint her as its "corporate representative" or proxy 
in respect of the number of shares it holds on her behalf.</p>
<p>In practice, for meetings in HK, HKSCC has normally sent a representative to 
the meeting to carry out the instructions of CCASS Participants, voting for and 
against resolutions according to the total number of shares instructed in each 
direction. This has the benefit that CCASS Participants can give instructions up 
to 4.15pm on the last working day before the meeting, either to vote the shares, 
or to appoint a person to attend as corporate representative.</p>
<p>CCASS Participants that are banks, brokers and custodians must add 
their own processing time and impose a deadline on clients for instructions. HK 
custodians often act as sub-custodians to global master custodians, who in turn 
must add processing time and impose a deadline on the institutional clients they 
serve around the world.</p>
<p>Of course, being the central depository means that when meetings are 
held simultaneously, HKSCC needs enough manpower, temporary or otherwise, to 
handle this load and attend the meetings.</p>
<h3>The circular</h3>
<p>Now, in the circular, HKSCC has announced that during what it calls "peak 
season" in May and June, there are so many AGMs that it will simply give up 
sending its own representatives to any of them, and not just to the AGMs, which 
handle relatively mundane business and have at least 21 calendar days' notice, 
but also to the SGMs, which can be called on only 14 calendar days' notice. It 
will therefor shorten the voting window by requiring instructions 3 business days before 
the meeting, so that it can submit a proxy form instead by the usual proxy 
deadline of 48 hours before the meeting. It says that this is:</p>
<blockquote>"To ensure HKSCC have sufficient capacity and consistent 
approach to act on the voting instructions for all shareholders' meetings held 
during the peak season"</blockquote>
<p>That's ridiculous, because they have a steady flow of SGMs all year round, so 
they should be capable of attending those at any time. These meetings handle 
important and often contentious business such as acquisitions, disposals, 
massively dilutive share issues, privatisations and connected transactions. Keep 
in mind that retail investor voting is already very low because the 
SFC does not require HK intermediaries (banks and brokers) to seek and 
facilitate voting 
instructions from their clients. So the bulk of independent votes are cast by 
institutional investors. These are the investors who are most likely to be 
impacted by a shorter voting window.</p>
<p>A master custodian will typically set a deadline of 3 to 5 working days 
before the HKSCC voting cut-off. 14 calendar days is never more than 10 working days, so that leaves 5 to 7 working days, or less if 
the period straddles holidays. So cutting 2 working days off this window could 
leave institutions with only 3 working days to read a circular and decide how to 
vote. Many of them rely on proxy advisory firms such as ISS and Glass Lewis, 
which in turn need time to produce their advice. The proxy advisors often hold 
standing orders to vote their clients' shares according to this advice unless 
the client intervenes. Such intervention becomes less likely if clients have 
less time to countermand the advice.</p>
<p>
<a href="https://www.issgovernance.com/iss-appoints-shinbo-won-as-head-of-asia-pacific-ex-japan-research/" target="_blank">
Shinbo Won</a>, Head of Asia-Pacific (Ex-Japan) Research at ISS, told <em>
Webb-site Reports</em>:</p>
<blockquote>"assuming that custodians will reflect this change on their own 
cutoff dates, shareholders will be significantly impacted as it will reduce the 
time they have to review the agenda and make informed voting decisions. This 
change is not in the best interest of one of HKSCC’s key stakeholders, the 
investors."</blockquote>
<p>HKSCC has also shortened the deadline for investors who wish to attend the 
meeting in person. They will no longer be appointed as corporate representatives 
but instead they will be appointed as proxies of HKSCCN, so the deadline for 
that will also be 3 business days before the meeting instead of 1 business day 
at present.</p>
<p>Incidentally, even in peak season, there is a natural limit to the number of 
meetings that will be held simultaneously, due to the finite supply of meeting 
rooms in hotels and elsewhere.</p>
<h3>Conflict of interest</h3>
<p>This move clearly has the effect of reducing the costs and increasing the 
profits of HKSCC, which 
otherwise has to maintain staff, or hire temporary staff, to handle the 
additional meetings of the peak season. It has handled the workload every year 
until now, so this was not a problem in the past. We suspect that this will be 
used as a stepping stone to complete abolition of sending HKSCC staff to 
shareholder meetings, and the shorter deadline will apply all year round.</p>
<p>HKSCC is a monopoly and the Government has
<a href="http://www.hklii.hk/eng/hk/legis/reg/619B/sch.html" target="_blank">
exempted it</a> (and HKEx and its other key subsidiaries) from the Competition 
Ordinance. The SFC's approval is needed for any tariff changes but it cannot compel HKEx and 
its subsidiaries to reduce tariffs. HKSCC makes an enormous profit margin partly 
by charging an anachronistic "scrip fee" of $1.50 on every board lot of increase 
in a CCASS Participant's position in a stock on successive book closure dates, 
despite the fact that the shares are only circulating within the computer system of CCASS, so it pays almost no scrip fees to registrars for production of 
physical share certificates. The HKSCC scrip fee is disproportionately expensive if the 
stocks you own have low-value board lots (see
<a href="/dbpub/mcap.asp?e=a&amp;t=s&amp;s=ltvup" target="_blank">table here</a>). 
Currently 266 stocks have a board lot worth less than HK$1000, so the scrip fee 
is more than 0.15% or more, and 600 stocks are below $2000.</p>
<p>Scrimping on staff (or even firing the surplus if they stop attending 
meetings all year round) will boost the HKSCC profit margin even further, but this 
comes at the expense of corporate governance for the whole market. We urge HKEx 
and HKSCC to rethink this deeply damaging move, and <em>at the very least</em>, 
to provide full coverage of all SGMs in Hong Kong and allow 
participants to vote or appoint representatives up to the day before the meeting 
as in the past.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=499">HONG KONG SECURITIES CLEARING COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
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