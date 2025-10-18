
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

<script type="text/javascript">document.title="Hong Kong Building and Demolition";</script>

	<div class="summary">HKBLA (0145) has been a perennial cash shell. After 3 takeovers, its 
foundations now appear to be under threat as its cash pile gets depleted on 
dubious transactions, including investment in Byford and an "earnest deposit". It appears to have become part of a network which includes at least 9 other listed companies.</div>

<h2 class="center">Hong Kong Building and Demolition<br>
<span class="headlinedate">10 December 2009</span></h2>
<p><a href="../dbpub/orgdata.asp?p=1677">Hong Kong Building and Loan Agency Ltd</a> 
(<strong>HKBLA</strong>, 0145) has been a perennial cash shell, bouncing around 
the market between different controlling shareholders for several years without 
doing very much inbetween. Now, 
its foundations appear to be under threat as its cash pile gets depleted on 
dubious transactions. It appears to have become part of a network of companies 
which also involves:</p>
<ul>
	<li><a href="../dbpub/articles.asp?p=13901">China Fortune Group Ltd</a> (<strong>China Fortune</strong>, 0290)</li>
	<li><a href="../dbpub/articles.asp?p=4873">Asia Energy Logistics Group Ltd</a> (<strong>AEL</strong>, 0351)</li>
	<li><a href="../dbpub/articles.asp?p=17410">PME Group Ltd</a> (0379)</li>
	<li><a href="../dbpub/articles.asp?p=16766">China Public Procurement Ltd</a> (<strong>CPP</strong>, 1094)</li>
	<li><a href="../dbpub/articles.asp?p=23491">ZZNode Technologies Co Ltd</a> (2371)</li>
	<li><a href="../dbpub/articles.asp?p=18154">Heng Xin China Holdings Ltd</a>	(8046)</li>
	<li><a href="../dbpub/articles.asp?p=10787">China Railway Logistics Ltd</a>	(8089)</li>
	<li><a href="../dbpub/articles.asp?p=13754">China Bio-Med Regeneration Technology Ltd</a> (8158)</li>
	<li><a href="../dbpub/articles.asp?p=18177">Byford International Ltd</a> (<strong>Byford</strong>, 8272)</li>
</ul>
<p>Investors should avoid all these stocks.</p>
<h3>Three takeovers</h3>
<p>First, a brief recap of the changes of ownership.</p>
<h4>Bid 1</h4>
<p>On 18-Jun-05, <a href="../dbpub/articles.asp?p=1672">Lippo China Resources Ltd</a> (0156)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050706/LTN20050706123.pdf">
agreed</a> to sell 74.8% of HKBLA to United Asia Finance Ltd (<strong>UAF</strong>) 
for HK$184m, or about $1.0932 per share. UAF was a private HK company which 
was 50.91% owned by <a href="../dbpub/articles.asp?p=2117">Allied Group Ltd</a> (0373), 7.27% owned by
<a href="../dbpub/articles.asp?p=425">Sun Hung Kai &amp; Co. 
Ltd</a> (0086) and the rest by 4 other shareholders. SHK was in turn 74.99% owned by 
Allied Group. The price represented a premium of about <strong>$20m</strong>, or 
about 12%, to the net asset value of about $0.97 per share at 31-Dec-04. The 
deal
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050913/LTN20050913038.pdf">
completed</a> on 12-Sep-05, triggering a general offer.</p>
<h4>Bid 2</h4>
<p>On 11-May-07, UAF
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070515/LTN20070515065.pdf">
agreed</a> to sell 74.99% of HKBLA for $1.475 per share, or about $248.9m, to Mercurius Partners, LLP (<strong>Mercurius</strong>), which was wholly-owned by 
<a href="../dbpub/positions.asp?p=25322">John Zwaanstra</a> and his family. The price was a premium of about <strong>$75m</strong>, or about 
43.2%, to the net asset value of HKBLA at 31-Dec-06 of $1.03 per share. $20m was 
paid on signing, and the rest on
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070531/LTN20070531187.pdf">
completion</a> on 31-May-07, triggering a general offer.</p>
<h4>Bid 3</h4>
<p>On 21-Aug-09, Mercurius
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090828/LTN20090828592.pdf">
agreed</a> to sell 75.00% of HKBLA to <a href="../dbpub/positions.asp?p=51250">
Nelson Tang Yu Ming</a> (<strong>Mr Tang</strong>) for $308.8m, or $1.83 per 
share. 10% was paid on signing, 30% a week later, and the rest on
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090925/LTN20090925606.pdf">
completion</a> on 25-Sep-09, which triggering a general offer. The price was a 
premium of about <strong>$137m</strong>, or 79.4%, to the net asset value of 
$1.02 per share at 31-Dec-08.</p>
<p>As you can see from the above 3 deals, the listing value of a shell in HK, in 
terms of the premium over book value, has been on the rise.</p>
<p>Mr Tang is the MD of Shikumen Capital Management Ltd and a responsible 
officer of <a href="../dbpub/officers.asp?p=51252">Shikumen Capital Management 
(HK) Ltd</a> (<strong>Shikumen</strong>). Until 31-Jan-07, he was a licensed 
representative of <a href="../dbpub/orgdata.asp?p=33642">PMA Investment Advisors 
Ltd</a>. Shikumen was incorporated on 1-Jun-07 and commenced licensed operations 
on 7-Sep-07 with 3 Responsible Officers: Mr Tang, Ulric Leung Yuk Lun, formerly 
an RO of SAIL Advisors Ltd, and&nbsp; Jeffrey Lau Chun Hung, formerly a 
Representative RO of Och-Ziff Capital Management Hong Kong Ltd.</p>
<h3>Under new management</h3>
<p>When the takeover was first announced, Mr Tang intended to become an 
executive director of HKBLA, but on 2-Oct-09 (when the offer document was 
posted) he was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091002/LTN200910021198.pdf">appointed</a> as a non-executive director. He also nominated two EDs, 
Mr <a href="../dbpub/positions.asp?p=24799">Chan Chun Wai</a> and
<a href="../dbpub/positions.asp?p=52137">Wilson Lau Yu Fung</a>, and three 
INEDs: <a href="../dbpub/positions.asp?p=9900">Lawrence Yu Kam Kee</a> (<strong>Mr 
Yu</strong>), Mr <a href="../dbpub/positions.asp?p=22517">Chan Chi Yuen</a> and
<a href="../dbpub/positions.asp?p=31597">Au Tin Fung</a> (<strong>Mr Au</strong>) 
who were appointed on the same day.</p>
<p>Two of these people have a connection to
CPP: Mr Chan Chun Wai and Mr Au were both appointed as INED of CPP on 
27-Aug-07.&nbsp; We warned readers about CPP in our
<a href="cpp.asp">article</a> on 3-Jul-09. Mr Chan resigned on 
7-Aug-09 &quot;due to the increase in his own business commitment&quot;. Mr Au
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090930/LTN20090930417.pdf">resigned</a> on 30-Sep-09 
&quot;due the the pursuit of his own business&quot;. They weren't too busy to join HKBLA 
though.</p>
<p>Mr Au was also an INED of China Fortune (formerly China 
Conservational Power Holdings Ltd) from 23-Dec-05 to 10-May-06. Mr Chan Chi Yuen 
is also an INED of AEL (formerly China Sciences Conservational Power 
Ltd) since 30-Sep-04. As you can guess from the former names, the two companies were once 
related.</p>
<p>On 20-Oct-09, 3 days before the offer closed, 56m shares were
<a href="../ccass/chldchg.asp?i=249&amp;d=2009-10-20&amp;hide=">
withdrawn</a> from CCASS from the account of Sun Hung Kai Investment Services 
Ltd (<strong>SHKIS</strong>), which is a fellow subsidiary of Sun Hung Kai 
Financial Ltd, which made the offer on behalf of Mr Tang. </p>
<p>Mr Au wasn't independent of HKBLA for long - he became an executive director 
on 23-Oct-09, as soon as the takeover offer
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091023/LTN20091023415.pdf">
closed</a>, leaving the company with only two INEDs. The Listing Rules require 
three. Mr Tang became non-executive Chairman on the same day. Only 0.26% of 
HKBLA was tendered to the offer, giving Mr Tang 75.26%. He only needed to sell 
the 575,000 tendered shares to restore the float, but on 4-Nov-09 he
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091105/LTN20091105782.pdf">
launched</a> a placing via SHKIS, selling 56.5m shares (25.12%) at $1.83, 
cutting his stake to 50.14%.</p>
<p>It appears that SHKIS passed the entire placing on to 
<a href="../dbpub/articles.asp?p=16123">Kingston Securities Ltd</a> 
(<strong>Kingston</strong>), which
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=125321&amp;lang=EN&amp;dia=Y">
disclosed</a> an interest in 56.5m shares effective 6-Nov-09, disposing of it on 
10-Nov-09.</p>
<p>The placing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091110/LTN20091110587.pdf">
completed</a> on 10-Nov-09, when our
<a href="../ccass/chldchg.asp?d=2009-11-10&amp;hide=&amp;sort=chngdn&amp;i=249">
CCASS Analysis shows</a> shares moved from SHKIS to Kingston. However, on 
6-Nov-09 Kingston had already
<a href="../ccass/chldchg.asp?d=2009-11-06&amp;hide=&amp;sort=chngdn&amp;i=249">
taken delivery</a> of about another 56m shares from SHKIS, possibly shares which 
belong to Mr Tang. So as a result, 73.89% of the company is in CCASS, but the
<a href="../ccass/choldings.asp?i=249&amp;d=2009-12-04;hide=&amp;sort=chngdn">
top 10 CCASS accounts</a> hold 68.53%. We suspect there is very concentrated 
ownership.</p>
<p>The withdrawal from SHKIS on 20-Oct-09 and the transfer from SHKIS to 
Kingston on 6-Nov-09 suggest that Mr Tang 
may have pledged all his shares - otherwise why not leave them with SHKIS?</p>
<h3>Unsecured advance of $58m to a BVI shell </h3>
<p>On 9-Nov-09, HKBLA
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091109/LTN20091109485.pdf">
made</a> an unsecured advance of HK$58m as &quot;earnest deposit&quot; to a BVI company, 
the owner of which was not disclosed, in relation to a possible investment in 
the equity or debt of <a href="../dbpub/orgdata.asp?p=55409">New Smart Financial 
Group Ltd</a> (<strong>NSFG</strong>, HK), for which there is not yet any 
contract, only an MoU. NSFG is purportedly &quot;part of a credit guarantee joint 
venture in the PRC&quot;. This appears to be a start-up, because a check of the HK 
registry shows that it was a shelf company incorporated on 27-Mar-09 and 
adopting its present name on 19-Jun-09, less than 5 months before this 
announcement.</p>
<p>You might think that HKBLA should at least have obtained security over 
Target's shares, but it didn't, and nor was the money placed in escrow.</p>
<h3>Investment of $70m in Byford </h3>
<p>On 30-Nov-09, HKBLA
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091201/LTN200912011042.pdf">
acquired</a> 119.3m shares (4.97%) of Byford &quot;in the open 
market&quot; for $70.4m, or about $0.59 per share. We warned readers on 1-Jun-09 about the
<a href="byfordbubble.asp">Byford Bubble</a> and on 18-Sep-09 about 
a <a href="byfordloan.asp">100% margin loan</a> it had made to an 
anonymous BVI company. The stock remains in a bubble, closing on Friday with a 
share price of $0.62 and a market cap of $1.49bn compared with net assets of 
just $90.9m at 31-Jul-09, or about $0.038 per share.</p>
<p>Our CCASS Analysis service shows that the shares purchased by HKBLA
<a href="../ccass/chldchg.asp?i=3408&amp;d=2009-12-02&amp;hide=&amp;sort=chngdn">
moved</a> from the custody of Fortune (HK) Securities Ltd (<strong>Fortune 
Securities</strong>, which is owned by China Fortune) to Kingston Securities Ltd 
on the settlement date of 2-Dec-09. The controlling shareholding in Byford is 
pledged to Kingston Finance Ltd, a sister of Kingston Securities.</p>
<p>The gross assets of HKBLA at 30-Jun-09 were $232.5m, so the investment 
acquired represents 30.3% of gross assets, which is more than 25%. You might 
think that would make it a Major Transaction under the Listing Rules, but it 
doesn't, because when the company is buying shares, the Listing Rules look at 
the attributable gross assets underneath the shares, and since Byford is a bubble stock, 
the attributable assets are far less than the purchase price.</p>
<p class="regbox"><strong>Policy issue: this is a yawning 
gap in the Listing Rules - the class tests in
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_14.pdf">
Chapter 14</a> should look at the purchase price relative to the listed 
company's assets - that's what costs shareholders their money. </strong></p>
<p>So why did HKBLA buy Byford shares?</p>
<blockquote>&quot;In consideration of the possible investment in energy and 
natural resources related business and the recent market price of Byford, the 
Directors consider that the Acquisition would enable the Group to generate a 
good return and capture the potential capital gain in the future.&quot;</blockquote>
<p>Byford is no PetroChina. The most that can be said about the shell's &quot;energy 
and natural resources related business&quot; is that on 19-Aug-09 it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090819/GLN20090819049.pdf">
signed</a> a non-binding MoU with a BVI company called New Success Asia Ltd, the 
owner of which was not disclosed, in relation to &quot;making equity investment, 
setting up joint venture, financing and/or providing technical assistance in the 
Projects&quot;. And what are the &quot;Projects&quot;? This word was defined as &quot;NSAL has 
entered into an exclusive option agreement with [an entity, for which no 
English name was given] in relation to an investment in energy and natural 
resources related business&quot;. Over 3 months later, nothing more has been said 
about this.</p>
<h3>Ni Rong Kun</h3>
<p>On 1-Dec-09, an individual called &quot;Ni Rong Kun&quot;
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=35169&amp;lang=EN&amp;dia=Y">
acquired</a> 11m shares (4.91%) of HKBLA in an off-market transaction at $3.20, 
increasing his/her stake from 4.80% to 9.71%. Ni Rong Kun is also a
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=33958&amp;lang=EN&amp;dia=Y">
subscriber</a> of $25m of convertible bonds (with an option for $25m more) in 
the $300m/$600m issue by <a href="../dbpub/articles.asp?p=13553">Value 
Convergence Holdings Ltd</a> (<strong>VC</strong>, 0821), in which China Fortune is also a 
$100m/$200m subscriber. For more on VC, see our
<a target="_blank" href="valuedivergence2.asp">separate story</a> today.</p>
<h3>Mr Yu resigns for a novel reason</h3>
<p>On 2-Dec-09 Mr Yu
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091202/LTN20091202946.pdf">
resigned</a> as INED of HKBLA &quot;due to his intention to concentrate on his own 
business for unexpected engagements&quot;. What on Earth does that mean? Is he in the 
business of unexpected engagements? He only served for 2 months. His departure 
left only one INED. Whatever the reason for his resignation, he's still got 4 
other listed company directorships.</p>
<h3>Cash dwindling fast</h3>
<p>At 30-Jun-09, before the change of management, HKBLA's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090928/LTN20090928659.pdf">
interim report</a> shows net assets of $231.7m or $1.03 per share, including 
$189m of cash and $34m of mortgage-backed securities. That cash has been rapidly 
depleted by the unsecured &quot;earnest deposit&quot; and the investment in Byford's 
bubble stock, absorbing about $128m, so there's probably only about $61m of cash 
left, or $95m if they have liquidated the mortgage-backed securities. Of course, 
HK does not have quarterly reporting, so the next time you see a balance sheet 
will be some time in the spring of 2010.</p>
<p>Despite this, HKBLA closed yesterday (9-Dec-09) at $3.45, valuing the company at 
HK$776.3m, or about 3.35 times the last published net assets.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4873">ASIA ENERGY LOGISTICS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1677">CCIAM Future Energy Limited (b1964-11-28)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16766">Cherish Sunshine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17410">China Ever Grand Financial Leasing Group Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13754">China Regenerative Medicine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18177">Chinese Food and Beverage Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51252">Chinese Strategic Asset Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10787">Chinese Strategic Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23491">Chuanglian Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18154">Heng Xin China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55409">New Smart Financial Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13553">VALUE CONVERGENCE HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=31597">Au, Edmund Tin Fung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22517">Chan, Chi Yuen (1966)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=24799">Chan, Chun Wai (1969)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=52137">Lau, Wilson Yu Fung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=51250">Tang, Nelson Yu Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9900">Yu, Lawrence Kam Kee</a></li>
				
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