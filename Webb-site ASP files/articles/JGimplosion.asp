
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

<script type="text/javascript">document.title="The Joint Global implosion";</script>

	<div class="summary">A collapse in a hub of the "Chung Nam Network" has wiped about HK$2bn off the balance sheets of at least 11 listed companies, many of which never announced that they had invested in it. We piece together an ugly jigsaw and call on the SFC to investigate and HKEX to wake up and require announcements.</div>

<h2 class="center">The Joint Global implosion<br>
<span class="headlinedate">30 September 2016</span></h2>

<p>There's been an implosion in an unlisted hub at the heart of what 
we call the "Chung Nam Network", a galaxy of listed companies that investors 
would do well to avoid, wiping out about HK$2bn of value from the books of at 
least 11 listed companies. This is a complicated story involving scrutiny of 
dozens of corporate disclosures to piece together a jigsaw on which regulators 
should now act, so bear with us.</p>
<h3>The birth of Joint Global</h3>
<p>On 15-Sep-2015, 11 shareholders, including at least 9 listed companies as we 
will deduce below, agreed to pool their 
shareholdings of a Cayman Islands company called
<a href="../dbpub/orgdata.asp?p=1895956">HEC Capital Limited</a> (<strong>HECC</strong>), 
one of the unlisted hubs in the Chung Nam Network, injecting the shares into a new holding company in the Marshall Islands called
<a href="../dbpub/orgdata.asp?p=2565686">Joint Global Ltd</a> (<strong>JG</strong>). 
No announcements were made at the time by any of the listed companies involved, 
several of which we believe breached the Listing Rules by staying silent on the 
notifiable transactions. We know this now only because a few of the listed companies made disclosures 
in their subsequent annual reports. Incidentally, the
<a href="https://en.wikipedia.org/wiki/Marshall_Islands" target="_blank">
Marshall Islands</a> are better known for explosions than implosions, as a 
former US nuclear test site, including
<a href="https://en.wikipedia.org/wiki/Bikini_Atoll" target="_blank">Bikini 
Atoll</a>, after which the swimsuit was named. But we digress.</p>
<p>Note 18(ii) of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0421/LTN20160421841.pdf" target="_blank">
2015 annual accounts</a> of <a href="../dbpub/articles.asp?p=1365">GT Group 
Holdings Ltd</a> (<strong>GT</strong>, 0263) discloses that in Sep-2015, it 
agreed with 10 unnamed "independent third parties" to establish JG, swapping 
each share held in HECC for a share in JG. This deal completed on 2-Oct-2015, 
and GT's 36.5m shares were 12.98% of JG. The value of those shares was put at 
HK$215m or about $5.89 per share, the same as a year earlier.</p>
<p class="regbox">Regulatory note: in our view, GT's acquisition of the stake in 
JG and the disposal of the stake in HECC should have been treated at least as a 
Discloseable Transaction under the Listing Rules, because HK$215m was more than 
5% of GT's total assets at 31-Dec-2014 and possibly as a Major Transaction as it 
was about 25.4% of the 5-day average market capitalisation prior to the 
transaction date.</p>
<p>Note 20(b) of the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0425/ltn20160425003.pdf">
2015 annual accounts</a> of <a href="../dbpub/articles.asp?p=3286">Mason 
Financial Holdings Ltd</a> (<strong>Mason</strong>, 
0273) discloses that in Sep-2015, it swapped 12m shares (1.15%) of HECC for 4.27% 
of JG, valued at HK$90m. It had acquired the HECC shares by first, in Jul-2015, agreeing to paying 
HK$100m in cash to HECC for 12% of Gold Mountain Ltd (<strong>Gold Mountain</strong>) 
and then, the next month, agreeing to sell it back to HECC in exchange for 12m 
HECC shares valued at HK$90m, or $7.50 per HECC share, booking a $10m loss. Both 
transactions were undisclosed until the annual report. </p>
<p>HECC had purchased 100% of Gold Mountain, which had a forestry business, for 
HK$720m from <a href="../dbpub/articles.asp?p=4822">China Innovative Finance 
Group Ltd</a> (<strong>CIFG</strong>, 0412) in a transaction
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0521/LTN20150521857.pdf" target="_blank">
agreed</a> on 21-May-2015 and
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0805/LTN201508051076.pdf" target="_blank">
completed</a> on 5-Aug-2015. So it appears that in the middle of this, HECC had 
sought funding from Mason, the net result being that Mason put HK$100m into 
HECC.</p>
<p>Note 18(a) of the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0420/LTN20160420299.pdf" target="_blank">
2015 annual accounts</a> of <a href="../dbpub/articles.asp?p=13425">Dragonite 
International Ltd</a> (<strong>Dragonite</strong>, 0329) states that on 
15-Sep-2015, it pooled its interests in "Company A" with 10 other shareholders 
to set up "Company C" which would own <strong>26.96%</strong> of "Company A". Dragonite had 
swapped its 2.40% of Company A for 8.89% of Company C. After Webb-site 
complained to the Stock Exchange about this cryptic description, Dragonite
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0511/ltn20160511394.pdf" target="_blank">
announced</a> that Company A was HECC and Company C was JG. It also said that JG 
would own 281.2m HECC shares and that the issue completed on 2-Oct-2015.</p>
<p class="regbox">Regulatory note: in our view, Dragonite's acquisition of the stake in JG and the disposal of the 
stake in HECC should have been treated as a Discloseable Transaction under the 
Listing Rules, because each stake was valued at 
HK$137.5m ($5.50 per share) which is more than 5% of Dragonite's total assets at 31-Dec-2014 
and more than 5% of its 5-day average market capitalisation prior to the 
transaction. The late announcement made no admission of this. Once again, the 
for-profit Stock Exchange doesn't seem to care.</p>
<p>Dragonite subscribed 
its 25m HECC shares at $5.50 each on 16-Sep-2014,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2014/0916/LTN20140916683.pdf" target="_blank">
announced</a> then as a Discloseable Transaction. Dragonite claimed that its 
8.89% stake in JG "might facilitate [Dragonite] to be in a better position to 
have an influence over the corporate actions of [HECC]" - but it failed to say how 
this might be the case - for example, whether it has any representation on the 
board of directors of JG, or whether any decisions of JG require Dragonite's 
approval. We guess not.</p>
<p>Note 16(d) of the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0428/LTN201604281275.pdf" target="_blank">
2015 annual accounts</a> of <a href="../dbpub/articles.asp?p=14229">Rentian 
Technology Holdings Ltd</a> (<strong>Rentian</strong>, 0885) discloses that on 
15-Sep-2015, it swapped its HECC shares for shares in JG, converting 1.73% of 
HECC 
to 6.40% of JG, both valued at HK$95.464m. Incidentally, the number of shares is erroneously 
stated as 108m. It should be 18m. So the book value was about $5.30 per share. Note 11 (a) of Rentian's 2016
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0829/LTN20160829940.pdf" target="_blank">
interim results</a> states that in the first half of 2016, it disposed of its stake in 
JG to an "independent third party" in exchange for other unnamed HK-listed 
shares valued at HK$95m. Lucky them, depending on what they got in return.</p>
<p>Note 20(b) of the 31-Mar-2016
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0714/LTN20160714133.pdf" target="_blank">
annual accounts</a> of CIFG discloses that during the year, it subscribed 56.8m 
shares of JG for HK$340.8m, or $6 per share. Although described as a 
"subscription", this was in practice an asset swap of HECC shares for JG shares. 
Looking back, on 12-Jun-2014 in a Discloseable Transaction, CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2014/0612/LTN20140612667.pdf" target="_blank">
subscribed</a> HK$228m for 38m HECC shares, increasing its holding to 56.8m 
shares. Incidentally, that was the day after HECC had
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=238066" target="_blank">
cut its stake</a> in CIFG from 15.59% to 8.51%, thereby avoiding the connected 
transaction rules as its holding was now below 10%.</p>
<p class="regbox">Regulatory note: in our view, CIFG's disposal of the HECC shares and the acquisition of 
the JG shares should have been at least a Discloseable Transaction under the 
Listing Rules, because the $340.8m value amounts to more than 5% of the total assets 
of CIFG at 31-Mar-2015.</p>
<p>Note 21(a) of the 31-Mar-2016
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0725/LTN20160725390.pdf" target="_blank">
annual accounts</a> of <a href="../dbpub/articles.asp?p=4813">NetMind Financial 
Holdings Ltd</a> (<strong>NetMind</strong>, 0985) refers only to "Company A" but 
we can be sure that this is JG. It describes the agreement in which it swapped 
its 23.8m shares in HECC for 8.46% of JG. It also states that subsequently (up 
to the year-end), JG issued 8.4m shares to a new investor, diluting NetMind to 
8.22%. It also states that JG "purchased" another 47,138,400 shares of HECC 
"through borrowing", increasing JG's shareholding from 26.96% to 30.11% of HECC 
by 31-Mar-2016. This is consistent with an increase in the outstanding shares of 
HECC of the same amount, so the shares were probably new.</p>
<p>So that's 6 of the 11 original shareholders of JG identified: GT, Mason Dragonite, CIFG, Rentian 
and NetMind. We'll deduce 3 more of the founders below.</p>
<p>Note 10 of the 2016 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0828/LTN20160828009.pdf" target="_blank">interim results</a> of 
<a href="../dbpub/articles.asp?p=4778">Imagi International Holdings Ltd</a> 
(<strong>Imagi</strong>, 0585) discloses that on 2-Mar-2016, it subscribed for 
6.2m shares of JG for HK$45.198m, or HK$7.29 per share.</p>
<p>Note 4(v) of the 2016
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0929/LTN20160929417.pdf" target="_blank">
interim report</a> of <a href="../dbpub/articles.asp?p=17131">
National Investments Fund Ltd</a> (<strong>NIF</strong>, 1227) discloses that on 
14-Jan-2016, it entered into an agreement with JG which resulted in a holding of 
0.78% of JG at a cost of HK$16.038m and the transaction completed the next day. 
We assume this is a subscription. It accounts for 2.2m shares of JG at $7.29 
each.</p>
<h3>The implosion</h3>
<p>In its
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0829/ltn201608291094.pdf" target="_blank">
interim results</a> for 30-Jun-2016, GT made a startling admission. It's shares 
in JG were now, in its view, not just worth less, but worthless, and GT has 
taken a full HK$215m impairment charge. Note 7 states:</p>
<blockquote>"Taking into account the unaudited net asset value of Joint Global 
as at 30 June 2016, and other relevant factors, full impairment of the value of 
the investment in Joint Global was made as at 30 June 2016."</blockquote>
<p>Meanwhile, in the 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0826/LTN201608261081.pdf" target="_blank">
interim results</a> of Mason at the same date, Note 7(a) records an impairment of HK$84.521m 
against its $90m investment in JG, reducing it to $5.479m, or about $0.457 per 
share. It states:</p>
<blockquote>"The investment has generated substantial losses and the directors 
are of the opinion that the probability to recover fully the investment would be 
remote. An impairment loss of HK$84,521,000 has been recognised in profit or 
loss in view of significant and prolonged decline in the carrying value of 
available-for-sale financial asset."</blockquote>
<p>Dragonite in its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0826/LTN20160826998.pdf" target="_blank">
2016 interim results</a> states that its $137.5m stake was 
impaired by HK$126.074m "with reference to the latest available financial 
statements" of JG, reducing it to $11.426m, also about $0.457 per share.</p>
<p>NIF, in Note 4 of its 2016
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0929/LTN20160929417.pdf" target="_blank">
interim report</a>, states that the net assets attributable to its 0.78% stake 
in JG are HK$1.763m, but it has reduced the fair value to $1.100m (about $0.49 
per share), implying a loss of 93.1% in less than 6 months since it subscribed 
to JG.</p>
<p>Oh dear. That means that the other shareholders of JG will need to write off 
all or most of their investments too.</p>
<h3>Enerchina's stake in HECC</h3>
<p>One HECC shareholder that did <em>not</em> inject its shares into JG is <a href="../dbpub/articles.asp?p=1843">Enerchina 
Holdings Ltd</a> (<strong>Enerchina</strong>, 0622), which holds 83,333,333 
shares of HECC in its books at cost of HK$500m, or $6 per share. In Note 11(i) 
of Enerchina's
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0819/ltn20160819959.pdf" target="_blank">
interim results</a> at 30-Jun-2016, there was no change in the book value, and 
the HECC stake had been diluted only slightly from 7.99% at 31-Dec-2015 to 7.56% 
at 30-Jun-2016. From this, we can deduce that HECC has <em>not</em> been on a 
share-issuing binge in the half-year, with outstanding shares only increasing by 
about 5.7% from about 1043m at 31-Dec-2015 to 1102m at 30-Jun-2016.</p>
<p>So unless Enerchina has got its accounting wrong, we can assume that HECC's 
net asset value per share has not been materially impaired during the half year.</p>
<h3>Two more probable JG holders</h3>
<p><a href="../dbpub/articles.asp?p=37610">Enterprise Development Holdings Ltd</a> (<strong>ED</strong>, 1808) is probably 
another victim of the JG implosion. On 8-Oct-0214, it
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2014/1008/ltn201410081265.pdf" target="_blank">
subscribed</a> HK$48m for 8m HECC shares at $6 each. The 2015
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0422/LTN20160422824.pdf" target="_blank">
annual report</a>, note 17, records unlisted equities at cost but doesn't say 
what they are. We suspect by then ED had swapped its HECC shares for JG shares, 
because the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0920/LTN20160920311.pdf" target="_blank">
interim report</a> at 30-Jun-2016 uses nearly identical language to GT in Note 
11:</p>
<blockquote>"Taking into account the unaudited net asset value of the particular 
investee as at 30 June 2016, and other relevant factors, full impairment of the 
value of the investment in the particular investee was made at 30 June 2016".</blockquote>
<p>So we'll make ED the 7th of the original 11 shareholders of JG that we have 
identified.</p>
<p class="regbox">Regulatory note: the only difference between the ED and GT 
statements is the replacement of the words "Joint Global" with "the particular 
investee". That's because ED never admitted to having swapped its shares in HECC 
for shares in JG, which should have been a Discloseable Transaction under the 
Listing Rules because $48m was more than 5% of ED's total assets at 31-Dec-2014 and 
more than 5% of ED's market capitalisation prior to the asset swap.</p>
<p>We can also infer that <a href="../dbpub/articles.asp?p=34306">Hao Tian 
Development Group Ltd</a> (<strong>HTD</strong>, 0474) is another casualty of 
the JG implosion. On 18-Sep-2012, it subscribed HK$30m for 5m HECC shares at $6 
each, then on 22-Jul-2013 it
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2013/0722/LTN20130722482.pdf" target="_blank">
bought</a> 45m shares at $6 each for HK$270m from Ristora Investments Ltd (<strong>Ristora</strong>, 
of which more below). HTD booked these at $272m, presumably including fees, 
taking the total book value of the 50m shares to $302m. Although the investment 
was not named in subsequent reports, nothing changed in the "unlisted equity 
securities" until the HTD
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0721/LTN20160721535.pdf" target="_blank">
annual accounts</a> at 31-Mar-2016, where we see in Note 21 an impairment loss 
of $265.178m, slashing book value from $302m to $36.822m or $0.73644 per share. 
Assuming Enerchina is correct that HECC is not impaired, HTD probably holds 
shares in JG rather than HECC.</p>
<p>So that makes HTD the 8th of the original 11 shareholders of JG.</p>
<p class="regbox">Regulatory note: if HTD swapped its 50m shares of HECC for 50m 
shares of JG on 15-Sep-2015, then this should have been a Disclosable 
Transaction under the Listing Rules because $302m was more than 5% of HTD's 
5-day average market capitalisation.</p>
<h3>When did the implosion occur?</h3>
<p>We know that Imagi paid $7.29 per JG share as 
recently as 2-Mar-2016, so either it massively overpaid, or the implosion appears to have occurred 
in the last 29 days of the first quarter, based on HTD's impairment at 
31-Mar-2016. At the latest price of $7.29, the original 281.2m shares swapped by 
the original 11 shareholders of JG were worth <strong>$2050m</strong>, but at 
the apparent NAV of $0.457 per share at 30-Jun-2016, they are now only worth 
$128.5m. Nearly HK$2bn of value just vaporised.</p>
<p>Remember that when JG was formed, it held a 26.96% stake in HECC, so the whole of HECC was 
implicitly worth <strong>$7603m</strong>.</p>
<p>So how exactly did JG lose so much value? Join us as we investigate further.</p>
<p>First, we need to explain another unlisted network hub,
<a href="../dbpub/orgdata.asp?p=2284096">Freewill Holdings Ltd</a> (<strong>Freewill</strong>, 
Marshall Islands).</p>
<h3>About Freewill</h3>
<p>On 
20-Jun-2014, <a href="../dbpub/articles.asp?p=1287">Freeman Fintech Corporation Ltd</a> (<strong>Freeman</strong>, 
0279) and Mason (then known as "Willie International Holdings Ltd") pooled their 
HECC shares into a new vehicle, Freewill (presumably named after the two firms). 
At the time, Freeman and Mason owned 18.74% and 9.96% of HECC respectively, so the combined 
holding of Freewill was 267,113,988 shares (28.70%) of HECC, and Freeman and 
Mason owned 65.3% and 34.7% of Freewill respectively. The Freeman announcement is
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0620/LTN20140620524.pdf" target="_blank">
here</a> and the Mason announcement is
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0620/LTN20140620695.pdf" target="_blank">
here</a>.</p>
<p>On 2-Jul-2015, <a href="../dbpub/articles.asp?p=5047">Skyway Securities Group Ltd</a> (<strong>Skyway</strong>, 1141)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/0702/LTN201507022394.pdf" target="_blank">
subscribed</a> 80m shares of Freewill for HK$440m. At the same time, Enerchina subscribed 38m shares of Freewill for HK$209m. Both deals, at 
$5.50 per share, were
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/0702/LTN201507022420.pdf" target="_blank">
announced</a> by Freeman. This implicitly valued the HEC shares at $5.50 each.</p>
<p>As a result, Freewill was now a 4-way hub, owned 
45.29% by Freeman, 24.07% by Mason, 20.77% by Skyway and 9.87% by Enerchina. The 
announcements also disclosed that Freewill's unchanged number of shares in HECC 
had accreted to 29.04% (presumably due to a small share buyback by HECC) and Freewill 
also owned a HK money-lender, <a href="../dbpub/orgdata.asp?p=1254753">Longtop 
Enterprises Ltd</a> (<strong>Longtop</strong>).</p>
<p>We pause to note that on 17-Jun-2015, <a href="../dbpub/articles.asp?p=17131">
National Investments Fund Ltd</a> (<strong>NIF</strong>, 1227) borrowed HK$30m 
from Longtop, secured by 8.2m shares (0.89%) of HECC and 210 shares (5.11%) of 
Co-Lead Holdings Ltd (<strong>Co-Lead</strong>). On 28-Jul-2015, these shares 
were transferred to Longtop to settle HK$22.5m of the debt. This was disclosed 
in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0428/LTN20160428907.pdf" target="_blank">
2015 annual report</a> of NIF, notes 19 and 26.</p>
<p>Next, on 17-Jul-2015, <a href="../dbpub/articles.asp?p=1887051">China Opto Holdings Ltd</a> (<strong>China Opto</strong>, 
1332)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0717/LTN20150717983.pdf" target="_blank">
subscribed</a> 14.55m shares of Freewill for HK$80.025m, or $5.50 per share. 
Also, between 2-Jul and 17-Jul, Mason subscribed another 22m Freewill shares for 
$121m. So after this deal, Freewill was now a 5-way hub, owned 41.37% by 
Freeman, 27.20% by Mason, 18.97% by Skyway, 9.01% by Enerchina and 3.45% by 
China Opto, and it had raised HK$850.025m in cash. By this stage, Freewill owned 
32.49% of HECC. It also held 16.49% of <a href="../dbpub/articles.asp?p=54460">Cordoba Homes Ltd</a> (<strong>Cordoba</strong>, 
BVI).</p>
<p>On 24-Nov-2015, Dragonite joined the party,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1124/LTN20151124588.pdf" target="_blank">
buying</a> 32,727,273 existing shares of Freewill for HK$180m ($5.50 per share) 
from <a href="../dbpub/articles.asp?p=1904667">HEC Development Ltd</a> (<strong>HECD</strong>, BVI), which before that owned 
116m Freewill shares. Previous filings show that HECD was 100%-owned by HECC, 
although this was not disclosed in the announcement.</p>
<p class="regbox">Regulatory note: it is unclear how HECD acquired these 
Freewill shares and from 
whom, but they were issued by Freewill in Sep-2015, according to Note 18 of 
Mason's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0425/LTN20160425003.pdf" target="_blank">
2015 annual accounts</a>. That note says that the resulting dilution of Mason's 
stake from 27.20% to 21.33% caused it a loss of HK$133.742m. That implies a huge 
discount of about $491.7m in the issue price of those 116m shares, or a discount 
of $4.24 per share relative to the net asset value of Freewill. According to 
Dragonite, at 30-Sep-2015, the unaudited NAV of Freewill was $6.34 per share. 
The SFC should investigate why this discount was granted and to whom.</p>
<p>At 24-Nov-2015, Freewill owned <strong>32.99%</strong> of HECC.</p>
<p>At 31-Dec-2015, Mason's share of the net assets of Freewill was 
$485.872m, or about $4.236 per Freewill share.</p>
<p>Note 14 of Freeman's 31-Mar-2016
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0728/LTN20160728015.pdf" target="_blank">
annual accounts</a> shows that the net assets of Freewill were $2,222.1m, or 
about $4.054 per Freewill share.</p>
<h3>Skyway - the 9th JG member</h3>
<p>From the Freewill analysis, we can infer that Skyway is probably the 9th victim of the JG 
implosion as follows.</p>
<p>On 30-Jun-2014 Skyway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0630/LTN201406301216.pdf" target="_blank">
subscribed</a> HK$228m for 38m shares (then 3.92%) of HECC at $6 per share. This 
added to 3m shares that it subscribed on 22-Jan-2013 (see note 22 of the 2013
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0729/LTN20130729274.pdf" target="_blank">
annual accounts</a>) at the same price, making a total book cost of $246m for 
41m shares (then 4.23%).</p>
<p>The Skyway
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0721/LTN20160721497.pdf" target="_blank">
annual accounts</a> at 31-Mar-2016 made an impairment charge of $327.782m on two 
unnamed investees.&nbsp; The available-for-sale investments in Note 20 are 
Freewill (book cost $440m) and either JG or HECC (book cost $228m). We know from 
Freeman that the NAV of Freewill had declined from Skyway's subscription price 
of $5.50 to about $4.054, so if that is what Skyway used to assess its stake in 
Freewill, then the impairment on Freewill would be $115.68m. That leaves an 
impairment of $212.102m on JG or HECC, slashing the book value to $33.898m or $0.827 per 
share.</p>
<p class="regbox">Regulatory note: if Skyway was one of the 11 shareholders who 
agreed to swap its shares in HECC for shares in JG on 15-Sep-2015, then at $228m 
this should have been a Discloseable Transaction under the Listing Rules, being 
more than 5% of total assets and more than 5% of market capitalisation.</p>
<h3>Freewill and JG ownership</h3>
<p>In the 6 months to 30-Jun-2016, according to Mason's
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0826/LTN201608261081.pdf" target="_blank">
interim results</a>, Freewill issued another 35.4m shares to several investors. 
Mason's 20.01% share of net assets of Freewill was booked at $448.102m at 
30-Jun-2016, implying NAV of $3.907 per Freewill share and $2239m for 100% of 
Freewill. Meanwhile, in Enerchina's
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0926/LTN20160926884.pdf" target="_blank">
interim report</a> for the same date, it booked an impairment loss and reduced 
the value of its 38m Freewill shares to $4.20 per share.</p>
<p>Note 10 of the 30-Jun-2016
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0828/LTN20160828009.pdf" target="_blank">
interim results</a> of Imagi discloses that on 2-Mar-2016, it subscribed 7.5m 
shares of Freewill for HK$37.725m, or $5.03 per share.</p>
<p>Note 4(vii) of NIF's
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0929/LTN20160929417.pdf" target="_blank">
interim report</a> at 30-Jun-2016 discloses that on 14-Jan-2016 (the same day it 
invested in JG and in 2 other companies in the network) it entered into an 
agreement with Freewill which resulted in a 0.54% stake at a cost of HK$15.95m 
and the deal completed the next day. We'll assume that is a subscription. The 
stake amounts to about 3.1m Freewill shares.</p>
<p>Webb-site calculates that there were 573,063,988 Freewill shares at the end of 
that period. So in summary, at 30-Jun-2016, the holders of Freewill were:</p>
<table class="numtable fcl center">
	<tr>
		<th>Name</th>
		<th>% of Freewill</th>
	</tr>
	<tr>
		<td>Freeman (0279)</td>
		<td>30.44</td>
	</tr>
	<tr>
		<td>Mason (0273)</td>
		<td>20.01</td>
	</tr>
	<tr>
		<td>HECC</td>
		<td>14.53</td>
	</tr>
	<tr>
		<td>Skyway (1141)</td>
		<td>13.96</td>
	</tr>
	<tr>
		<td>Enerchina (0622)</td>
		<td>6.63</td>
	</tr>
	<tr>
		<td>Dragonite (0329)</td>
		<td>5.71</td>
	</tr>
	<tr>
		<td>China Opto (1332)</td>
		<td>2.54</td>
	</tr>
	<tr>
		<td>Imagi (0585)</td>
		<td>1.31</td>
	</tr>
	<tr>
		<td>NIF (1227)</td>
		<td>0.54</td>
	</tr>
	<tr>
		<td>Others</td>
		<td>4.33</td>
	</tr>
	<tr class="total">
		<td>Total</td>
		<td>100.00</td>
	</tr>
</table>
<p>So now you see there were two hubs holdings HECC shares: JG, which held 
30.11% at 31-Mar-2016, and Freewill. Based on the NetMind and Enerchina data, we 
calculate that Freewill's stake, if unchanged since 24-Nov-2015, would have been 
diluted to about 24.50% at 31-Mar-2016.</p>
<p>From the above analysis, Webb-site calculates that there were 
289,600,000 JG shares at 31-Mar-2016 and it was owned as follows:</p>
<table class="numtable fcl center">
	<tr>
		<th>Name</th>
		<th>% of JG</th>
	</tr>
	<tr>
		<td>CIFG (0412)</td>
		<td>19.61</td>
	</tr>
	<tr>
		<td>HTD (0474)</td>
		<td>17.27</td>
	</tr>
	<tr>
		<td>Skyway (1141)</td>
		<td>14.16</td>
	</tr>
	<tr>
		<td>GT (0263)</td>
		<td>12.60</td>
	</tr>
	<tr>
		<td>Dragonite (0329)</td>
		<td>8.63</td>
	</tr>
	<tr>
		<td>NetMind (0985)</td>
		<td>8.22</td>
	</tr>
	<tr>
		<td>Rentian (0885)</td>
		<td>6.22</td>
	</tr>
	<tr>
		<td>Mason (0273)</td>
		<td>4.14</td>
	</tr>
	<tr>
		<td>ED (1808)</td>
		<td>2.76</td>
	</tr>
	<tr>
		<td>Imagi (0585)</td>
		<td>2.14</td>
	</tr>
	<tr>
		<td>NIF (1227)</td>
		<td>0.78</td>
	</tr>
	<tr>
		<td>Others</td>
		<td>3.47</td>
	</tr>
	<tr class="total">
		<td>Total</td>
		<td>100.00</td>
	</tr>
</table>
<p>So, again how did JG implode, while apparently leaving HECC relatively 
unscathed?</p>
<h3>Ownership changes in HECC</h3>
<p>What we can tell you is that the stakes in HECC have been shifting in the last 
few months and JG has disposed of part or all of its holding in HECC.</p>
<p>The trail of evidence is as follows. On 29-Feb-2016, Imagi
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0229/LTN20160229970.pdf" target="_blank">
announced</a> a deal in which it would issue 1.9bn new shares (16.01%) to HECC in 
exchange for 455.5m shares (0.62%) of <a href="../dbpub/articles.asp?p=4918">
HengTen Networks Group Ltd</a> (<strong>HengTen</strong>, 0136). HECC duly filed 
a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=293849" target="_blank">
disclosure of interest</a> in the Imagi shares at that date, but there were no 
shareholders with 1/3 or more of HECC who made filings of a deemed interest. </p>
<p>However, effective 7-Mar-2016, that changed, when 
<a href="../dbpub/orgdata.asp?p=2576240">Easy Rider Investments Ltd</a> 
(<strong>Easy Rider</strong>)
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=294378" target="_blank">
made a filing</a> disclosing an interest of 57.57% in HECC and hence an interest 
in the same Imagi shares.
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=77894" target="_blank">
A filing</a> at the same date shows that
<a href="../dbpub/natperson.asp?p=10035">Karen Lo Ki Yan</a> (<strong>Ms Lo</strong>), 
via her wholly-owned company, Ristora, 
owned 55% of Easy Rider, while
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=294375" target="_blank">
another filing</a> shows that Freewill owned the other 45% of Easy Rider. So 
apparently, Ms Lo and Freewill had pooled their stakes in HECC.</p>
<p>The next day, 8-Mar-2016, 
there was some movement, perhaps a dilution, which resulted in Easy Rider's 
stake in HECC reducing from 57.57% to 55.08%,
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=294462" target="_blank">
shown in this filing</a>.</p>
<p>The next change came on 25-Apr-2016, when Easy Rider's stake in HECC jumped 
to 84.23%, an additional 29.15%, as shown in
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=297977" target="_blank">
this filing</a>. We already know from Enerchina's accounts that HECC's 
outstanding shares only grew by about 5.7% in the first half of 2016, so this 
additional stake must have come partly or entirely by acquiring existing HECC shares. 
Furthermore, since Enerchina owns 7.56% of HECC, and Easy Rider now owned 
84.23%, that only leaves 8.21%, so JG must by then have disposed of most or all of its stake.</p>
<p>Also by that date, Ms Lo's stake in Easy Rider had
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=78758" target="_blank">
increased</a> from 55% to 70.97%, while Freewill was
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=298007" target="_blank">
reduced</a> from 45% to 29.03%. So Freewill's attributable stake in HECC barely 
changed, from 24.79% on 8-Mar-2016 to 24.45% on 25-Apr-2016. It seems likely 
that Ms Lo injected funding into Easy Rider to purchase the HECC shares (or 
equivalently, injected the shares) in exchange for new shares in Easy Rider.</p>
<p>We know from Schedule 1 of a
<a href="../codocs/HECsubpn120918OCR.pdf" target="_blank">subscription agreement</a> 
dated 18-Sep-2012 that Ms Lo, via Ristora, then held 151.25m HECC shares. On 22-Jul-2013, Ristora
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0722/LTN20130722482.pdf" target="_blank">
sold</a> 45m HECC shares to HTD for HK$270m, cutting 
her stake to 106.25m shares. That would be about 10.2% of HECC at 31-Dec-2015, 
if she still held them.</p>
<p>Ms Lo is the spouse of <a href="../dbpub/natarts.asp?p=20431">Eugene Chuang 
Yue Chien</a>, who
<a href="http://hk.asiatatler.com/tatler-list/500list/eugene-chuang" target="_blank">
according to Tatler</a> is the "Chairman Emeritus and Founder" of HECC.</p>
<h3>Back to JG</h3>
<p>The 
question that the SFC should be investigating is how did JG lose so much money 
so fast? Who were its directors? Given that Enerchina regards its HECC shares as 
unimpaired, did JG sell the HECC shares for less than they were worth, or did JG 
make some other atrocious investment(s) that eroded the NAV of JG and forced the 
sale of HECC, and to whom were the shares sold? The above analysis shows that 
directly or indirectly, Easy Rider ended up acquiring JG's shares in HECC and JG 
ended up nearly worthless.</p>
<p>The other scenario is of course that HECC has indeed lost value itself, in 
which case Enerchina needs to make an impairment provision.</p>
<p>Given the opacity of this network, that is as far as Webb-site can go with 
public data. It is time for the SFC to step in and use its statutory powers of 
investigation on JG and its listed corporate shareholders. They should also be 
looking at the apparent dilution of Freewill at a massive discount, which 
damaged its listed corporate shareholders.</p>
<p>Meanwhile, the Stock Exchange should get off its backside and get 
the listed companies in the "regulatory note" boxes above to make the 
proper announcements about their asset swaps, and sanction them for failing to have done so.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=34306">Aceso Life Science Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5047">CMBC Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4813">CST Holding (HK) Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2576240">Easy Rider Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=37610">Enterprise Development Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2284096">Freewill Holdings Limited (MH)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1365">GT GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1895956">HEC Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2565686">Joint Global Limited (MH)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3286">MASON GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17131">National Investments Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13425">OCI International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1843">Oshidori International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14229">Rentian Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63737">Ristora Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4822">SHANDONG HI-SPEED HOLDINGS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1887051">Touyun Biotech Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=20431">Chuang, Eugene Yue Chien</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10035">Lo, Karen Ki Yan</a></li>
				
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