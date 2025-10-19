
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

<script type="text/javascript">document.title="A deeper dive into CMBC, CSPT and FWF";</script>

	<div class="summary">After raw-nerve responses from CMBC Capital (1141) and China Soft Power Technology (0139) to our Huarong-CMB network diagram, we zoom in on their network and also look at CMBC's exposure to the controller of 3 more listed companies.</div>

<h2 class="center">A deeper dive into CMBC, CSPT and FWF<br>
<span class="headlinedate">21 October 2018</span></h2>

<p>Two of the companies in Friday's <a href="huarongcmb.asp">
Huarong-CMB network</a> diagram made defensive announcements that night.</p>
<h3>CMBC</h3>
<p>In its Friday
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/1019/LTN20181019958.pdf" target="_blank">
announcement</a>, CMBC Capital Holdings Ltd (<strong>CMBC</strong>, 1141) 
reminds the market that, since 30-Jun-2018, its parent group, 
<a href="../dbpub/articles.asp?p=9318">China Minsheng 
Banking Corp Ltd</a> (<strong>CMB</strong>, 1988) has subscribed 1.35bn new shares 
at HK$0.363 per share for proceeds of HK$490m, a deal which
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/1015/LTN20181015960.pdf" target="_blank">
completed</a> on 15-Oct-2018. The subscription was first
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0704/LTN20180704003.pdf" target="_blank">
announced</a> on 3-Jul-2018, alongside a smaller "best efforts" placing to 
independent parties of up to 830m new shares at the same price. </p>
<p>The issue price represented a 19.5% discount (close to the maximum 20%) to 
the 5-day average closing price before the placing. The four placing agents, 
despite the discount and their "best efforts", only procured placees for 577.22m 
shares, 69.5% of the target amount. The placing
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0720/LTN201807201119.pdf" target="_blank">
completed</a> on 20-Jul-2018, raising HK$205m net. The placed shares represented 
1.25% of the enlarged shares. These facts are omitted from yesterday's 
announcement. CMBC instead states:</p>
<blockquote>"The completion of the Placing of New Shares and the Subscription of 
New Shares demonstrated the full confidence of relevant investors and the 
controlling shareholder in the future development of the Company."</blockquote>
<p>None of the placees has been identified. The subscription by CMB represents 
only 2.83% of the enlarged shares. CMBC also states that based on the 
30-Jun-2018 interim report and the two equity issues, its pro forma net assets 
are HK$1791m. True, although pro forma net tangible assets (<strong>NTA</strong>) 
are slightly lower at HK$1769m. However, they fail to mention that there are now 
47.706bn shares in issue, so there are net assets of only $0.0375/share and net 
tangible assets of <strong>$0.0371</strong> per share, and in our view, the 
shares 
should be trading at a discount to NTA.</p>
<p>The shares closed on Friday at $0.34, or 9.16x NTA. If that's not a 
bubble then we don't know what is. This isn't our first bubble warning on CMBC. 
In <a href="../dbpub/artlinks.asp?s=12888">a post</a> back on 10-May-2018, when 
the shares were at $0.53, we warned the market that the stock was then trading 
at about 19x its NTA. The price has dropped 35.8% since then.</p>
<p>The balance sheet at 30-Jun-2018 included $3492m of loans and advances, and 
$3375m of financial assets, of which $2470m were debt investments and $455m were 
listed equities. None of the debt or equity issuers were identified in the 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/1001/LTN20181001029.pdf" target="_blank">interim report</a>. There were also margin loans of $957m, of which the largest 
client represented 19%. The margin loans were secured on pledged securities of 
$3937m. We don't know whether any of the pledged securities were shares in CMBC 
itself and whether any of the clients took shares in the placing.</p>
<p>As we mentioned on Friday, CMBC relies heavily on financial support 
from CMB. We should add that on 2-Aug-2018, CMB
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0810/LTN20180810631.pdf" target="_blank">
increased</a> its credit line to HK$8bn. The bigger question is why CMB, a bank 
with a <a href="http://hk.cmbc.com.cn/" target="_blank">HK banking licence</a>, 
needs to set up a separate listed entity to make loans. Does this put the loans 
into a separate approval process, perhaps? Are there things that CMBC can do, 
that CMB cannot? And who has benefitted from the bubble in CMBC's share price?</p>
<h4>Macrolink</h4>
<p>One of the companies that we didn't fit into Friday's diagram is Macrolink 
International Holdings Ltd (<strong>MIH</strong>), controlled by
<a href="../dbpub/positions.asp?p=20458">Fu Kwan</a> (<strong>Mr Fu</strong>). 
On 9-May-2018, CMBC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0510/LTN20180510005.pdf" target="_blank">
granted</a> a HK$430m (US$55m) margin loan facility to MIH, guaranteed by Mr Fu. This came on top of loans that it has granted since 8-Dec-2017 to 
MIH and Macro-Link International Investment Co., Ltd (BVI), an affiliate of MIH. The 
last announced loan, on 7-May-2018, was for US$30m of loan notes, and prior to 
that, there were 2 loans: <a href="../dbpub/artlinks.asp?s=12889">US$40m on 
13-Apr-2018</a> and US$30m on 8-Dec-2017. This takes the total exposure to Mr 
Fu's companies to 
US$125m (HK$975m), or about 55% of CMBC's pro forma NTA.</p>
<p>Mr Fu controls 29.2% of <a href="../dbpub/articles.asp?p=41806">Dongyue Group 
Ltd</a> (<strong>Dongyue</strong>, 0189),&nbsp; 67.8% of
<a href="../dbpub/articles.asp?p=9618">Macrolink Capital Holdings Ltd</a> (0758) 
and 46.19% of <a href="../dbpub/articles.asp?p=4954">New Silkroad 
Culturaltainment Ltd</a> (0472). The name itself is entertaining - or desperate, 
definitely one of those. On 
9-May-2014, Dongyue subscribed RMB1bn for a 2% stake in
<a href="../dbpub/orgdata.asp?p=2364818">China MinSheng Investment Group Corp 
Ltd</a>, a PRC private entity "principally engaged in equity investment and 
assets management".</p>
<h3>CSPT</h3>
<p>In its Friday
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/1019/LTN201810191142.pdf" target="_blank">
announcement</a>, China Soft Power Technology Holdings Ltd (<strong>CSPT</strong>, 
0139) admits that it did borrow from a wholly-owned subsidiary of
<a href="../dbpub/orgdata.asp?p=2564077">China Huarong Overseas Investment 
Holdings Co Ltd</a> (<strong>Huarong Overseas</strong>) while it was buying 
shares in CMBC, but "the loan was fully repaid in July 2018". We checked, and 
this is indeed supported by a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20180717E00365&amp;lang=EN" target="_blank">
disclosure of interest</a> as of 12-Jul-2018 in which Huarong Overseas ceased to 
have a security interest in 1.8bn shares of CMBC, which had been pledged to it 
by Main Purpose Investments Ltd and Desert Gold Ltd, two 100% subsidiaries of 
CSPT.</p>
<p>CSPT says the purchases of shares in CMBC since Oct-2017 were "funded 
by the internal resources of the Company" - but its resources of course included 
borrowings from Huarong Overseas, to which it pledged 1.8bn CMBC shares, as 
shown in disclosures of interest
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20170929E00186lang=EN" target="_blank">
by Huarong Overseas</a> and
<a href="http://di.hkex.com.hk/filing/di/NSForm2.aspx?fn=334729&amp;lang=EN" target="_blank">
by CSPT</a> on 5-Jul-2017.</p>
<p>However, we should also note that our diagram showed a loan facility to CSPT 
from Future World Financial Holdings Ltd (<strong>FWF</strong>, 0572) of 
HK$150m. That was outdated, because on 25-Apr-2018, FWF
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0425/LTN201804251626.pdf" target="_blank">
announced</a> that it was increasing the unsecured loan facility to HK$270m, or 
HK$291.6m including 8% p.a. interest in arrears. This was announced on the same 
day that FWF completed the acquisition from CSPT of a company which owns a house 
at 1 Lincoln Road, Kowloon Tong, in exchange for new FWF shares, increasing 
CSPT's holding in FWF to 18.78%.</p>
<p>In the other leg of the cross-holding, FWF owns 7.27% of CSPT and has a 
securities margin account at CSPT's 100%-owned broker, Central Wealth Securities 
Investment Ltd (<a href="/ccass/cholder.asp?part=1105&amp;d=10/19/2018&amp;z=0&amp;sort=valndn" target="_blank">CCASS 
holdings here</a>), with a maximum margin loan of HK$100m. FWF owns 4.39% of CMBC at 
30-Jun-2018. The connected transactions with CSPT, including the expanded loan 
facility, were approved in an EGM of FWF on 6-Aug-2018.</p>
<p>The Chairman of CSPT, <a href="../dbpub/positions.asp?p=2667713">Chen 
Xiaodong</a>, is CEO of FWF. His cousin
<a href="../dbpub/positions.asp?p=11668319">Cai Linzhan</a> is an ED (formerly 
CEO) of FWF. Mr Chen's aunt <a href="../dbpub/positions.asp?p=2495139">Ada Lee 
Chau Man</a> is an ED of CSPT. Another individual, Mr
<a href="../dbpub/positions.asp?p=2325877">Yu Qingrui</a>, is an ED of both CSPT 
and FWF.</p>
<h3>The underlying NTA</h3>
<p>
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0917/LTN20180917281.pdf" target="_blank">At 30-Jun-2018</a>, CSPT had net tangible assets (<strong>NTA</strong>) of 
HK$2430m. This included 3870m shares (then 8.45%) of CMBC, with a then market 
value of $1761m at $0.455/share. However, based on the pro forma NTA of CMBC at 
$0.0371/share calculated above, CSPT's stake would only be worth $143.5m. 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0926/LTN20180926465.pdf" target="_blank">On the 
same date</a>, FWF had NTA of HK$1631m. That included 2093m shares (then 4.57%) of 
CMBC, with a then market value of $952.2m. Again, based on the pro forma NTA of 
CMBC, those would only be worth HK$77.6m.</p>
<p>Next, we need to adjust for the FWF-CSPT cross-holdings. It may take you a 
moment to get your head around this. When two companies issue shares to each 
other in a share swap, no cash comes out of the market, and no value is added to 
the underlying net assets of the two companies, but by accounting magic, each of 
them records an increase in their balance sheet net assets, based on the market 
value of the cross-holdings, because there is no increase in liabilities. 
However, if someone then comes along and buys all the external shares of both 
companies apart from the cross-holdings, then they would own the entire 
underlying assets of both companies and the cross-holdings would cancel out. The 
same would happen if the two companies merged, each receiving shares in a Newco 
which would own them both. In astronomical terms, a cross-holding between two 
companies is like the gravitational pull between binary stars. If A and B owned 
90% of each other's shares, then the outside holders of A would have a 52.6% 
interest in the assets of A and a 47.4% interest in the assets of B, and vice 
versa. The stronger the cross-holding, the closer they are to a
<a href="https://www.youtube.com/watch?v=sgkDoSbHHVU" target="_blank">full 
merger</a> (or a
<a href="https://www.space.com/40797-neutron-star-crash-gravitational-waves-black-hole.html" target="_blank">
black hole</a>, depending on size).</p>
<p>A perfect example of such a share swap actually comes 
from FWF and CSPT, which by coincidence had similar share prices at one point, 
so on 27-Jul-2017, <a href="../dbpub/artlinks.asp?s=13211">they issued 470m 
shares to each other</a> valued at $0.11 each.</p>
<p>We'll spare you the maths, but the result of eliminating the FWF/CSPT cross-holdings 
to calculate the underlying NTA per share based on the external shares is shown 
below.</p>
<img class="center" alt="CMBC, FWF and CSPT underlying NTA" src="../images/CMBCFWFCSPT.png">
<p>In our view, all of these stocks should trade at substantial discounts to 
underlying NTA because of their corporate governance history. The only thing 
that might compensate for this in the case of the small ones (CSPT and FWF) is 
the listing value or shell potential, but don't hold your breath waiting for 
that, as the regulators are cracking down on such transactions.</p>
<p>Oh and there's one more thing about FWF: the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0828/LTN20180828007.pdf" target="_blank">
interim results</a> for 30-Jun-2018 reveal that it has drunk the 
<a href="../dbpub/subject.asp?c=120">crypto 
Kool-Aid</a>. On 20-Feb-2018, it bought 470 Bitcoins from a "security customer" for 
HK$41.5m, or about US$11,287 per Bitcoin. On 2-Mar-2018, the group and the 
unnamed customer "mutually agreed to set off the payables due to each other". 
FWF lost HK$18.352m on the bet up to 30-Jun-2018.</p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2364818">China Minsheng Investment Group Corp., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2564077">China XinZhi Overseas Investment Holdings Co., Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5047">CMBC Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41806">DONGYUE GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17463">Future World Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9618">Macrolink Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4954">New Silkroad Culturaltainment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12807813">Simply Moment International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4788">Smart Fish Wealthlink Holdings Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=120">Crypto-tokens</a></li>
				
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