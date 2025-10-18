
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

<script type="text/javascript">document.title="The bubbles in CNN";</script>

	<div class="summary">We warn investors of 3 bubbles amounting to HK$20.0bn (US$2.58bn) in the "Chung Nam Network" of listed companies, Heritage (0412), Rising Dev (1004) and Mascotte (0136) and look at a blatantly bad decision by the board of Hao Tian (0474), and an undisclosed Very Substantial Acquisition by that company. One of the bubbles is even a Russian doll "double bubble" - one owns the other.</div>

<h2 class="center">The bubbles in CNN<br>
<span class="headlinedate">8 January 2015</span></h2>
<p>No, this is not about a TV network. We're going to take you on a tour of what 
we call the Chung Nam Network (<strong>CNN</strong>), involving numerous 
HK-listed companies which do very little but trade with each other and in each 
other's stocks, sucking in cash from the markets and creating occasional 
bubbles. In many cases, the cross-shareholdings are kept below the 10% level at 
which the Stock Exchange would treat them as connected parties, and often below 
the 5% level at which disclosures of interests must be filed by law, so not all 
of it is visible, but we can sometimes spot sub-5% shareholdings in financial 
statements.</p>
<p>We'll tell you about 3 stock bubbles amounting to HK$20.0bn (US$2.58bn) - but the key message 
is to avoid any stock in the CNN. If they were the last stocks in the universe, 
we wouldn't buy them. We'll also mention a fourth bubble outside 
the network.</p>
<h3>Hao Tian</h3>
<p>We'll start with CNN member <a href="../dbpub/articles.asp?p=34306">Hao Tian 
Development Group Ltd</a> (<strong>HTD</strong>, 0474) for an example of what we 
regard as one of the most blatantly false and misleading statements of 2014.</p>
<p>On 4-Jul-2014, HTD
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0704/LTN201407041100.pdf" target="_blank">
announced</a> the grant of a 2-year call option over 240m shares (3.00%) of
<a href="../dbpub/articles.asp?p=15154">Imperial Pacific International Holdings 
Ltd</a> (<strong>Imperial</strong>, 1076) to one Jiang Jianhui (&#23004;&#24314;&#36637;) for HK$5m, 
or about $0.02083 per option share, at an exercise price of $0.55 per share, a 
discount of 22.5% to the market price of $0.71. Yes, you read that right. The 
options had an intrinsic value of $0.16 per share plus the time value of the 
option, but he/she was paying only $0.02083. At the time, HTD owned 276m Imperial 
shares, for which it had paid $0.166 per share. We have no idea who Mr/Ms Jiang 
is. </p>
<p>So what was the reason for granting the option? HTD said:</p>
<blockquote>"The Call Option Deed provides the Group with the right 
to sell the Option Shares at the Exercise Price, which is higher than the 
average per share cost for acquisition of the Option Shares, allowing the Group 
to hedge against a possible fall in the value of the Option Shares"</blockquote>
<p>Which is completely false, of course. They had sold a call option, not bought 
a put option. What it should have said is:</p>
<blockquote>"The Call Option Deed provides the Optionholder with the 
right to buy the Option Shares at the Exercise Price, which he/she will probably 
do by expiry if the market price is higher than the exercise price, 
allowing the Group to give up the upside while remaining exposed to a possible 
fall in the value of the Option Shares"</blockquote>
<p>The Directors (their names
<a href="../dbpub/officers.asp?p=34306&amp;hide=Y&amp;d=2014-07-04">are here</a>) 
considered this to be on "normal commercial terms" and fair and reasonable". 
Now, because of fair value accounting, the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1205/LTN20141205305.pdf" target="_blank">
interim report</a> for the 6 months to 30-Sep-2014 had to tell you just how 
unreasonable this was. Note 
12(iii) on page 44 shows that based on the directors' own assumptions, when the 
option was granted, it was worth HK$73.763m, resulting in an instant loss of 
$68.763m. By 30-Sep-2014, the market price of Imperial had risen to $1.64, and 
the option was worth HK$270.713m, resulting in a further loss of HK$196.95m, or 
a total book loss of $265.713m.</p>
<p>In our view, no reasonable board could say that selling something worth 
$73.8m for $5m was "fair and reasonable". It is what lawyers call
<a href="http://en.wikipedia.org/wiki/Associated_Provincial_Picture_Houses_Ltd_v_Wednesbury_Corp" target="_blank">
Wednesbury Unreasonable</a> and, if HK <a href="../dbpub/subject.asp?c=111">
allowed class actions</a> (which it doesn't) then shareholders would have a good 
chance of successfully suing the directors for breach of fiduciary duty.</p>
<p>Imperial is not part of the CNN by the way, but it is a bubble 
surrounding a Macau junket operation and a casino project in Saipan, Northern 
Mariana Islands. <a href="imperialbubble.asp">Click here</a> for our side piece 
on that.</p>
<h3>Heritage</h3>
<p>On 28-Jul-2014, HTD
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=241917" target="_blank">
bought</a> 575.25m shares of another CNN member,
<a href="../dbpub/orgdata.asp?p=4822">Heritage International Holdings Ltd</a> (<strong>Heritage</strong>, 
0412) off-market at $0.94, and the next day it
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=242063" target="_blank">
bought</a> 240m shares off-market at $1.00, for a total of 815.25m shares 
(28.87%) a total cost or "consideration" of $780.7m. Some of these probably came 
from HEC Capital Ltd, which
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=242005" target="_blank">
disposed</a> of 100m shares at $1.00 on 28-Jul-2014, and
<a href="../dbpub/articles.asp?p=3286">Willie International Holdings Ltd</a> (<strong>Willie</strong>, 
0273) which
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=242288" target="_blank">
disposed</a> of 25m shares at $1.00, both cutting below 5%. Our guess is that 
the other shares probably came from other companies in the CNN which each held 
less than 5%.</p>
<h3>Undisclosed Very Substantial Acquisition</h3>
<p>The 5-day average price of HTD up to 28-Jul-2014 was $0.1538, so its market capitalisation was $610.9m. Divide that into the consideration and you get a 
"consideration ratio" of 128%, which makes it a Very Substantial 
Acquisition under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_14.pdf" target="_blank">
Rule 14.08</a> of the Listing Rules, but HTD did not make any announcement about 
this or obtain shareholders' approval.</p>
<p>Since then, Heritage has done a 1:2 bonus issue, so HTD now owns 
1,222.875m shares. The HTD
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1205/LTN20141205305.pdf" target="_blank">
interim report</a> disagrees though. It says in note 17 that HTD bought 740m 
shares, or 1110m shares (26.20%) after the bonus issue. The gap is not 
explained. Meanwhile, the Heritage
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1208/LTN20141208320.pdf" target="_blank">
interim report</a> at 30-Sep-2014 says that HTD owns the full 28.87%.</p>
<p>The HTD report also says that HTD "has irrevocably undertaken to 
Heritage that the Group shall not participate or otherwise exercise any 
influence" over Heritage, which handily allows HTD to account for this as an 
investment at market value rather than as an associate. There's been no 
announcement from Heritage about HTD becoming its largest shareholder or the 
undertaking.</p>
<p>By 30-Sep-2014, Heritage shares, after the bonus issue, had shot up to $2.10, 
valuing HTD's stake at $2568m, which explains most of the huge "fair value gain 
on investments held for trading" of $1596m booked in the interim results. At 
yesterday's closing price of $1.52, HTD's stake is worth HK$1859m, while HTD had a market 
value of HK$946m. Don't get too excited though, because Heritage is in a bubble 
as we explain later in this article.</p>
<h3>Freeman Corp Ltd</h3>
<p>On 6-Oct-2014, <a href="../dbpub/orgdata.asp?p=2280645">Freeman Corp Ltd</a> 
(<strong>FC</strong>, Cayman) bought 100m shares (2.36%) of Heritage at $2.00 
off-market, increasing from 4.97% to 7.33%. FC is majority-owned by
<a href="../dbpub/articles.asp?p=4997">Freeman Financial Corp Ltd</a> (<strong>Freeman</strong>, 
0279). FC is one of two large unlisted companies at the core of the network, 
what we'll call "hubs", the other being <a href="../dbpub/orgdata.asp?p=1895956">
HEC Capital Ltd</a> (<strong>HECC</strong>, Cayman). The listed companies pump 
money into the unlisted hubs, which own brokerages and trade the stocks of the 
members, either for the hub's own account or as agents of the companies.</p>
<p>HECC is the older hub and owns <a href="../dbpub/articles.asp?p=12651">HEC 
Securities Ltd</a> (formerly Chung Nam Securities Ltd, hence the network name), 
while FC owns <a href="../dbpub/orgdata.asp?p=50799">Freeman Securities Ltd</a>. 
The whole thing is a moving target, but as of 26-Nov-2014, according to page 9 
of a Freeman
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2014/1126/LTN20141126051.pdf" target="_blank">
circular</a>, FC was owned by the network as follows:</p>
<table class="numtable center">
	<tr>
		<th class="left">Shareholder</th>
		<th>Stock code</th>
		<th>Stake %</th>
	</tr>
	<tr>
		<td class="left">Freeman</td>
		<td>0279</td>
		<td>60.52</td>
	</tr>
	<tr>
		<td class="left">Willie</td>
		<td>0273</td>
		<td>23.86</td>
	</tr>
	<tr>
		<td class="left">
<a href="../dbpub/articles.asp?p=14229">Forefront Group Ltd</a> (<strong>Forefront</strong>)</td>
		<td>0885</td>
		<td>7.16</td>
	</tr>
	<tr>
		<td class="left"> <a href="../dbpub/articles.asp?p=13425">Dragonite International 
Ltd</a> (<strong>Dragonite</strong>)</td>
		<td>0329</td>
		<td>4.37</td>
	</tr>
	<tr>
		<td class="left">
<a href="../dbpub/articles.asp?p=4788">China Jinhai International Group Ltd</a> 
(<strong>China Jinhai</strong>)</td>
		<td>0139</td>
		<td>2.41</td>
	</tr>
	<tr>
		<td class="left"> <a href="../dbpub/articles.asp?p=17131">
National Investments Fund Ltd</a> (<strong>NIF</strong>)</td>
		<td>1227</td>
		<td>1.67</td>
	</tr>
	<tr>
		<td class="left">Total</td>
		<td>&nbsp;</td>
		<td>100.00</td>
	</tr>
</table>

<h3>&nbsp;</h3>
<h3>Heritage and Rising Development: one bubble inside another</h3>
<div class="rightpicbox" style="max-width:300px">
	<a href="../dbpub/str.asp?i=1030"><img alt="" src="../images/0412tr150107.png"></a>
</div>
<p>Heritage 
had a <a href="../dbpub/ctr.asp?i1=1030&amp;rel=0&amp;d1=12/31/2013">Webb-site 
Total Return</a> of 368.37% in 2014, so you might think there was something good 
going on there, but in our view, it is one tightly-held bubble around another. A 
double bubble! In the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1208/LTN20141208320.pdf" target="_blank">
interim report</a> at 30-Sep-2014, it had net tangible assets (<strong>NTA</strong>) 
of HK$750.5m, or $0.177 per share, compared with a share price on that date of 
$2.10. Of the NTA, $340.8m was unlisted equities, including at least $288m
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0612/LTN20140612667.pdf" target="_blank">
injected</a> into HECC on 12-Jun-2014, and $461.5m of unnamed listed equity 
investments at market value.</p>
<p>Note 25 of the Heritage
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0715/LTN20140715401.pdf" target="_blank">
annual report</a> at 31-Mar-2014 reveals that Heritage then owned 4.58% of
<a href="../dbpub/articles.asp?p=3017">Rising Development Holdings Ltd</a> (<strong>Rising 
Dev</strong>, 1004), below the 5% disclosure threshold. That's about 68.07m 
shares, then worth about HK$293m at $4.30 per share. By 30-Sep-2014, Rising Dev 
had risen to $6.90, so if Heritage still held it, the gain was about $177m and 
the stock was worth about $470m. That roughly fits, because Heritage booked 
unrealised gains on investments of $167.95m for the period.</p>
<p>Rising Dev's stock split 4:1 on 19-Dec-2014, and closed at $1.24 yesterday, so it 
is down by 28% since 30-Sep-2014. That knocks about $132m off the value of 
Heritage's stake already. We'll add back deferred profits tax because this is a 
"trading" position, so the Heritage NTA is down by about $110m, reducing it to about $640m 
or $0.151 per share. </p>
<p>Yesterday (7-Jan-2014) Heritage closed at $1.52. It plans to split 4:1 on 
23-Jan-2015. The market capitalisation is <strong>HK$6439m</strong>, but that is 
about <strong>10.1 times its pro forma NTA</strong>, and as we have shown, the 
NTA depends mainly on just two assets: shares in HECC and Rising Dev, which is 
in a bubble itself.</p>
<div class="rightpicbox" style="max-width:300px">
	<a href="../dbpub/str.asp?i=389"><img alt="" src="../images/1004tr150107.png"></a>
</div>	
<p>
Rising 
Dev has generated a certain amount of excitement by buying or planning to buy 
various solar power plants in China, but you just need to focus on one key page 
in the New Year's Eve deal
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1230/LTN20141230474.pdf" target="_blank">
circular</a>: that's the pro forma adjusted NTA on page 213 of the PDF, which 
shows $430.1m, or $0.0616 per share. The rest is just hot air. After that deal, 
there will be 6988m shares in issue. At yesterday's closing price of $1.24, that 
values Rising Dev at about <strong>HK$8665m</strong>, or about <strong>20.1 
times NTA</strong>.</p>
<p>So like Russian dolls, you've got one bubble inside another. It's really 
quite clever. If you valued the Rising Dev shares that Heritage owns based on 
the underlying NTA of $0.0616 per share, then the stake would be worth about 
$17m, making the Heritage price look even more ridiculous.</p>
<p>Following a complaint from Webb-site, the SFC recently
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1029/LTN20141029476.PDF" target="_blank">
warned</a> the market that at 10-Oct-2014, a small group of 20 shareholders held 
93.71% of Rising Dev. In other words, it has probably been cornered. Rising Dev 
had a Webb-site Total Return of 537.97% in 2014, and you can see the comparison 
with Heritage in
<a href="../dbpub/ctr.asp?i1=389&amp;i2=1030&amp;rel=0&amp;d1=12/31/2013">
this chart</a>.</p>
<p>Network hub FC
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=252836" target="_blank">
owns</a> 6.41% of Rising Dev at 19-Dec-2014.</p>
<p>Rising Dev started life as a fur trader, listing on 9-Oct-1997. On 
22-Jul-2007 <a href="../dbpub/articles.asp?p=14774">Lai Leong</a> (<strong>Mr 
Lai</strong>)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2007/0730/LTN20070730982.pdf" target="_blank">
agreed to buy</a> 71.63% of the company from its founders for H$K400.2m, 
triggering a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2007/0831/LTN20070831015.pdf" target="_blank">
general offer</a> on completion.</p>
<p>Chairman Mr Lai now owns 23.74%, and one Cao Zhiying (<span id="lblDChiName"><strong>Cao</strong>, 
&#26361;&#24535;&#40367;) apparently</span>
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=65927" target="_blank">
bought</a> 16.15% (now 960m shares) off-market for $1560m (US$200m) on 
29-Sep-2014. This was part of a sale of a 20.86% sale by Mr Lai. We have no idea 
who Mr/Ms Cao is. Another outsider is Huang Rulun (<span id="lblDChiName0">&#40643;&#22914;&#35542;) 
who also calls himself "Wang Rulan" on his
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=67290">disclosure form</a>, 
who increased from 4.49% to 7.79% of Heritage on 13-Dec-2014. Maybe it is
<a href="http://www.forbes.com/profile/huang-rulun/" target="_blank">this guy</a>.</span></p>
<h3>CST Mining</h3>
<p>Another company at the periphery of the CNN that has bought into both the Heritage 
and Rising Dev bubbles is <a href="../dbpub/orgdata.asp?p=4813">CST Mining Group Ltd</a> (<strong>CST Mining</strong>, 
0985), which owned below 5% of Heritage until 3-Nov-2014, when it
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=248700" target="_blank">
bought</a> 210m shares (4.96%) off-market at HK$2.00, a total of HK$420m, 
raising its stake to 9.81%. No vendor was visible.</p>
<p>Similarly, on 16-Dec-2014, CST Mining became a disclosed shareholder of 
Rising Dev,
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=252789" target="_blank">
buying</a> 50m shares (3.37%) at $5.33, raising its stake from 4.37% to 7.74%. 
After the stock split, it owns 460m shares.</p>
<p>CST Mining also held 23.8m shares in network hub HECC at 30-Sep-2014, or 2.38% of the 
issued shares.</p>
<h3>Mission Capital</h3>
<div class="rightpicbox" style="max-width:300px">
	<a href="../dbpub/str.asp?i=979"><img alt="" src="../images/0139tr150107.png"></a>
</div>
<p>Another CNN member that holds or held both the Heritage and Rising Dev bubbles is
<a href="../dbpub/orgdata.asp?p=5047">Mission Capital Holdings Ltd</a> (<strong>MC</strong>, 
1141). Note 12 of its interim report at 30-Sep-2014 shows that it held 59.4m 
shares (4.00%) of Rising Dev, then worth HK$409.9m, and 190,037,500 shares 
(4.49%) of Heritage, then worth HK$399.1m. MC also held 457.34m shares (11.14%) 
of China Jinhai (then known as "ICube Technology Holdings Ltd") then worth 
$411.6m. It has since cut below 5% of China Jinhai, dumping during a price 
collapse on 21-24-Oct-2014.</p>
<p>Unmentioned in the report is that MC also holds 9.64% of Willie, having
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=244483" target="_blank">
increased</a> its holding from 4.99% on 3-Sep-2014, buying 35m shares off-market 
at $1.50. Those shares probably came from <a href="../dbpub/articles.asp?p=9176">
Unity Investments Holdings Ltd</a> (<strong>Unity</strong>, 0913) which
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=244307" target="_blank">
sold</a> all its 55m shares off-market at the same price on the same day. Unity 
is a closed-end investment company in the CNN. After a bonus issue, MC held 
90.75m Willie shares at 30-Sep-2014, then worth $127.0m. After an effective 15:1 
split, MC now holds 1361.25m Willie shares, still 9.64%.</p>
<p>Mission also
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0630/LTN201406301216.pdf" target="_blank">
injected</a> HK$228m into network hub HECC on 30-Jun-2014, increasing its 
holding to 41m shares (then 4.23%), with a book value of $246m at 30-Sep-2014.</p>
<p>Add that all up and you get at least $1594m of CNN investments in the balance 
sheet, and there are probably more.</p>
<h4>Cordoba Homes</h4>
<p>On 6-Jan-2015, MC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0106/LTN201501061413.pdf" target="_blank">
agreed</a> to subscribe 22m shares (5.46%) of
<a href="../dbpub/orgdata.asp?p=54460">Cordoba Homes Ltd</a> (<strong>Cordoba</strong>, 
BVI) for HK$103.4m. The announcement doesn't say who owns Cordoba, but at the 
last disclosure on 18-Sep-2012, it was 100% owned by HECC. This will be reduced 
to 94.54% by the subscription. Watch out for more companies in the CNN to start 
investing in Cordoba, which is involved in residential and commercial properties 
in HK, artwork, paintings and money-lending. HECC
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=253373">owns</a> 9.19% 
of MC, just avoiding the 10% threshold at which this would be a connected 
transaction.</p>
<p>The proposed investment comes 19 days after MC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1219/LTN20141219035.pdf" target="_blank">
announced</a> on 18-Dec-2014 a proposed 1:2 open offer of new shares at $0.10 to 
raise $209.66m, underwritten by HEC Securities Ltd, which is also owned by HECC.</p>
<h3>Unity</h3>
<p>According to its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0908/LTN20140908484.pdf" target="_blank">
interim report</a> at 30-Jun-2014, Unity owned 4.97% of Heritage, just below the 
disclosure threshold. That was worth about $95m. According to a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0911/LTN20140911961.pdf" target="_blank">
circular</a> dated 12-Sep-2014 which gave further information on the 30-Jun-2014 
positions, Unity held 4.91% of Forefront, 3.60% of Mission Capital (then Poly 
Capital Holdings Ltd), 0.32% of Rising Dev and 1.34% of Mascotte, which brings 
us on to:</p>
<h3>Mascotte bubble</h3>
<div class="rightpicbox">
	<a href="../dbpub/str.asp?i=1154"><img alt="" src="../images/0136tr150107.png"></a>
</div>
<p>Another bubble in the CNN is <a href="../dbpub/articles.asp?p=4918">Mascotte Holdings Ltd</a> (<strong>Mascotte</strong>, 0136). At 
31-Dec-2014, it had about 26.893bn shares outstanding, or more than 3 per person 
on the planet. There were also $700m of bonds outstanding which are convertible 
at $0.09 per share into another 7.778bn shares. The total then is 34.671bn 
shares worth <strong>HK$4854m</strong> at yesterday's closing price of $0.14.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1208/LTN20141208175.pdf" target="_blank">
interim report</a> at 30-Sep-2014 shows a net tangible deficit of $41.6m. Add 
back the convertible bond liability component of $52.2m and you've got $10.7m. 
On 29-Dec-2014, Mascotte
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1229/LTN20141229534.pdf" target="_blank">
granted</a> 200m 10-year options to "certain employees", all of whom chose to
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1230/LTN20141230419.pdf" target="_blank">
exercise</a> them the next day, at an exercise price of $0.134, raising $26.8m, 
and taking pro forma NTA to $37.5m, or about $0.00108 per share. So Mascotte is 
trading at about <strong>129 times NTA</strong>.</p>
<p>At 30-Dec-2014, network hub FC
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=254110" target="_blank">
owned</a> 1564m shares (5.82%) of Mascotte,
<a href="../dbpub/natarts.asp?p=1434">Andrew Liu</a>
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=67633" target="_blank">
owned</a> 3344m shares (12.43%) and Nexus Emerging Opportunities Fund SPC (<strong>Nexus</strong>) 
owned 1000m shares (3.72%). <a href="../dbpub/natarts.asp?p=66787">Viola Mak Siu 
Hang</a> and Nexus each owned $350m of convertible bonds.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=34306">Aceso Life Science Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4997">Arta TechFin Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4918">China Ruyi Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3017">China Smarter Energy Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5047">CMBC Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4813">CST Holding (HK) Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2280645">Freeman Corporation Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9176">Harbour Digital Asset Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1895956">HEC Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15154">Imperial Pacific International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3286">MASON GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17131">National Investments Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13425">OCI International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14229">Rentian Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4822">SHANDONG HI-SPEED HOLDINGS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4788">Smart Fish Wealthlink Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2293223">Jiang, Jianhui</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14774">Lai, Leong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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