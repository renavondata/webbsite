
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

<script type="text/javascript">document.title="HK Government intervenes in journalism";</script>

	<div class="summary">Was overseas coverage of HK's Handover anniversary too much and too positive? Webb-site.com exposes the Hong Kong Government's junket journalism programme, spending taxpayers' money flying journalists here, putting them up in 5-star hotels, and biasing the coverage of HK affairs.</div>

<h2 class="center">HK Government intervenes in journalism<br>
<span class="headlinedate">14 July 2007</span></h2>
<p>If you live outside HK and felt the wave of coverage of the tenth anniversary 
of the Hong Kong Handover, there's a reason why the coverage was that bit more 
extensive, and more positive, than you might have expected.</p>
<p><i>Webb-site.com</i> has learned that the Hong Kong Government engages in 
junket journalism, spending taxpayers' money to fly journalists here, usually 
business class, and put them up in 5-star hotels while they write about HK. This 
intervention inevitably introduces bias to the coverage of important issues such 
as constitutional reform, economic policies, and other public affairs. It is why 
many of the more respectable media around the world have strict policies against 
accepting such payments, and a clear separation between advertising and 
editorial departments. When the subject you are writing about starts paying your 
expenses, sure, you might go home and bite the hand that fed you, by writing 
critical coverage, but you are less likely to do so, particularly if you hope 
for a return expenses-paid visit to this metropolis of the Far East. That tilts 
the coverage in the Government's favour.</p>
<p>Perhaps for obvious reasons, we've never seen this practice mentioned in the 
media, but the Government's <a target="_blank" href="http://www.isd.gov.hk/">
Information Services Department</a> (<b>ISD</b>) shamelessly assures us that it 
is a long-standing practice of over 25 years and not just something for the 
Handover or its anniversary. We first became aware of the practice when the ISD 
approached your editor in late May seeking interviews on behalf of some of these 
journalists. In view of the Handover anniversary, as well as the 10th 
anniversary of the Asian Financial crisis and the current Chinese market bubble, 
we had been receiving a lot more media interest than usual, and had indeed given 
extensive interviews to a number of media organisations both from HK and 
overseas.</p>
<p>We checked with sources at several international media, including the 
Financial Times, Bloomberg, Dow Jones and the New York Times, who confirmed that 
their in-house rules prohibit the acceptance of such payments in cash or in 
kind. The only exception, in current affairs coverage, would be to accept 
transportation if there was no other way to get to a place, such as a war zone 
or a polar expedition. Some of our sources noted that travel-writers were 
excepted from the policy if they were reviewing a product or service, such as a 
hotel or an airline, and disclosed that it was not paid for in their articles.</p>
<p>For example, the
<a target="_blank" href="http://www.nytco.com/press/ethics.html#paying">New York 
Times ethics policy</a> on &quot;Paying our own way&quot; states:</p>
<blockquote>
	<p>&quot;30. When we as journalists entertain news sources (including government 
	officials) or travel to cover them, our company pays the expenses....</p>
	<p>31. Staff members may not accept free or discounted transportation and 
	lodging except where special circumstances give little or no choice. Such 
	special cases include certain military or scientific expeditions and other 
	trips for which alternative arrangements would be impractical...&quot;</p>
</blockquote>
<p>A page full of ethics policies from other US publications can be found on the
<a target="_blank" href="http://www.asne.org/index.cfm?id=387">American Society 
of Newspaper Editors</a> site. Similarly, the
<a target="_blank" href="http://www.spj.org/ethicscode.asp">Society of 
Professional Journalists' ethics code</a> also states:</p>
<blockquote>
	<p>&quot;Journalists should:<br>
	- Avoid conflicts of interest, real or perceived...<br>
	- <b>Refuse gifts, favors, fees, free travel and special treatment</b>....,<br>
	- Disclose unavoidable conflicts...<br>
	- <b>Deny favored treatment to advertisers </b>and special interests and 
	resist their pressure to influence news coverage...&quot; (emphasis added)&quot;</p>
</blockquote>
<p>That last point on advertising brings us onto another kind of sponsorship: 
&quot;tied advertising&quot;. The Government's ISD wrote to us asking for an interview on 
behalf of journalists for The Australian newspaper, saying:</p>
<blockquote>
	<p>&quot;The Information Services Department has entered a partnership agreement 
	with <i>The Australian</i> to produce a Special Report on Hong Kong...&quot;</p>
</blockquote>
<div class="leftpicbox" style="max-width:300px">
	<a href="http://theaustralian.news.com.au/index/0,25201,39918,00.html" target="_blank">
	<img alt="" src="../images/TAUS0026_HongKong_300x250.gif"></a>
</div>
<p>When we declined the interview on the grounds that it sounded like an advertorial or 
sponsored report which could be biased, the ISD denied it, responding:</p>
<blockquote>
	<p>&quot;Our partnership simply means that we, the Government, is putting an 
	advert in the paper. We are not paying for or sponsoring a supplement.&quot;</p>
</blockquote>
<p>Ah, so if there had been no paid advertising, then the newspaper would have 
done a special report anyway? Somehow, we doubt it. Judge for yourself - their
<a target="_blank" href="http://theaustralian.news.com.au/index/0,25201,39918,00.html">
Hong Kong Special Report</a> is here.</p>
<p>Next up, ISD asked us for interviews with two journalists from provincial UK 
papers - the <a target="_blank" href="http://www.yorkshirepost.co.uk/">Yorkshire 
Post</a>, which is based in Leeds, and the
<a target="_blank" href="http://www.westerndailypress.co.uk/">Western Daily 
Press</a>, of Bristol. Both were to be flown in and lodged for 6 nights at HK 
Government expense. Now you might wonder, even if you accept sponsored 
journalism, what the regional press could possibly add to the coverage by the UK 
national media. What did we get for our dollars? Predictably, in the main
<a target="_blank" href="http://www.yorkshirepost.co.uk/business?articleid=2999362">
story</a> in the Yorkshire Post, it homes in on Yorkshire's legendary 
connections with Hong Kong. Apparently, <i>&quot;Yorkshire entrepreneurs are playing 
key roles in [Hong Kong's] revival&quot;</i>. Thank goodness - where would we be 
without them? We learn that local property guru Nick Brooke was born in Leeds 
(there's a separate
<a target="_blank" href="http://www.yorkshirepost.co.uk/ViewArticle.aspx?SectionID=4096&articleid=2963018">
piece</a> on him), while a leasing manager with Sino Land comes from Shipley, 
West Yorkshire. And we learn that Bradford &amp; Bingley is a member of the British 
Chamber of Commerce here. Gripping stuff. Of course, if we had granted an 
interview, they would no doubt have mentioned that your editor David Webb spent 
six years of his childhood in Yorkshire - it made us what we are today. In 
another
<a target="_blank" href="http://www.yorkshirepost.co.uk/ViewArticle.aspx?SectionID=56&articleid=2931541">
article</a>, we learn that Oasis Airlines CEO Steve Miller hails from Darlington 
(almost in Yorkshire) and Oasis might fly direct to Doncaster's
<a target="_blank" href="http://en.wikipedia.org/wiki/Robin_Hood_Airport_Doncaster_Sheffield">
Robin Hood Airport</a> <i>&quot;if the market is there&quot;</i>. Don't hold your breath.</p>
<p>Meanwhile in Bristol, the Western Daily Press produced a series of articles 
on 28-Jun which look like an advertorial supplement, covering various businesses 
from that area who do business in HK, including
<a target="_blank" href="http://www.westerndailypress.co.uk/displayNode.jsp?nodeId=145809&command=displayContent&sourceNode=145792&contentPK=17677132&moduleName=InternalSearch&formname=sidebarsearch">
HSBC</a>, and with a
<a target="_blank" href="http://www.westerndailypress.co.uk/displayNode.jsp?nodeId=145809&command=displayContent&sourceNode=145792&contentPK=17677116&moduleName=InternalSearch&formname=sidebarsearch">
foreword</a> by Christopher Hammerbeck of the British Chamber of Commerce in HK.</p>
<p>In written e-mail answers, the ISD told us that so far this year up to 
mid-June, their Government department had sponsored 25 journalists, including 10 
who came in a group to cover preparations for the Olympic Equestrian events in 
2008. You know, the horse sideshow that the Government claims not to be spending 
any money on? Flights are usually at business class, and the Government has 
contracts (awarded by annual tender) with the luxury
<a target="_blank" href="http://www.shangri-la.com/en/property/hongkong/islandshangrila">
Island Shangri-la</a>, where &quot;most of our guests&quot; stay, and the somewhat cheaper
<a target="_blank" href="http://www.southpacifichotel.com.hk/">South Pacific 
Hotel</a> in Causeway Bay. The ISD's budget for sponsored journalists is 
HK$1.26m in 2007/8, the same as the previous year. The amounts the Government 
spends on overseas newspaper advertising are probably far greater, but the ISD 
couldn't put a figure on it.</p>
<p>The junket journalists seldom, if ever, disclose in their coverage that they 
have been financed by the Government. We Googled the phrase &quot;
<a target="_blank" href="http://www.google.com/search?q=%22guest+of+the+hong+kong+government%22">guest 
of the Hong Kong government</a>&quot; and the only matches it came up with were 
disclosures by overseas legislators (as required in their parliamentary rules) 
or think-tank members. We regard that kind of expenditure as acceptable if it is 
disclosed and intended to promote Hong Kong's interests. For example, the 
Government may want to lobby on visa-free access for its citizens to overseas 
countries, or against trade barriers being erected through overseas legislation. 
Put that down as good inter-governmental relations - it has nothing to do with 
journalism.</p>
<p>While we have no objection to the ISD helping arrange interviews for 
journalists who visit and pay their own costs, your editor rejected all requests 
by the ISD for interviews by Government-funded journalists, because we do not 
wish to encourage the practice, which would lead to our comments being used in 
biased coverage. We have a lot of good things to say about HK (it is our home 
after all), but we also say a lot of critical things about Government policy, 
and we do not want to run the risk of biased journalists using only our positive 
comments.</p>
<p>Not only does Government sponsorship distort journalism, but it also distorts 
the economics of the media. If there is a story in HK worth covering, then the 
overseas media will send journalists here on their own dollar, or even base them 
here. In fact, junket journalism disincentivises the media from basing 
correspondents in HK. Why pay high rents, when the Government will pay to fly 
your journalists in?</p>
<p>No doubt there are other Governments that adopt such practices, particularly 
in Asia, but that doesn't make it right. It is essential that crucial issues 
such as electoral and constitutional reform, land policy, immigration policy and 
fiscal reform receive fair and unbiased coverage in the media both here and 
overseas. Spending taxpayers' money on it should be outlawed.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=158">Journalism</a></li>
				
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