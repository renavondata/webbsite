
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

<script type="text/javascript">document.title="Huarong and the Chung Nam Network";</script>

	<div class="summary">Webb-site can reveal another SFC investigation underway involving dealings in Pak Wing (8316). The manipulation of this GEM bubble reveals another connection between China Huarong (2799) and what we call the "Chung Nam Network". The more we scrutinise Huarong, the worse it looks. Will the State end up bailing out the bailer?</div>

<h2 class="center">Huarong and the Chung Nam Network<br>
<span class="headlinedate">3 October 2018</span></h2>

<p>In a pair of <a href="../codocs/GN7174-5-2018.pdf" target="_blank">Gazette 
Notices</a> published on Friday 28-Sep-2018 (but dated 17-Sep-2018), the SFC 
ordered 2 brokers to take action against an unnamed male "Client". One 
broker, <a href="../dbpub/articles.asp?p=1893006">Zhongtai International Securities Ltd</a> (<strong>Zhongtai</strong>), was 
ordered to freeze HK$2.9m of assets in the Client's account. At 31-Aug-2018, he 
had more than that, some HK$1.97m of cash and $10.15m of shares at Zhongtai. The other 
broker, <a href="../dbpub/articles.asp?p=14367">Get Nice Securities Ltd</a> (<strong>Get Nice</strong>), was prohibited from 
accepting any last-minute buy orders for the shares of a listed company from 
15:59-16:00. This may seem like small beer, but bear with us and you will see 
why it is important.</p>
<p>In its reasons, the SFC states that the daily closing share price of "a 
certain listed corporation" increased 64.2% from $1.34 on 25-May-2018 to $2.20 
on 1-Jun-2018. Webb-site can reveal that the only company that fits this 
description is <a href="../dbpub/articles.asp?p=2332221">Pak Wing Group 
(Holdings) Ltd</a> (<strong>PW</strong>, 8316).</p>
<p>PW is a loss-making construction foundation sub-contracter, listed on GEM on 
10-Aug-2015 following a placing of 200m shares (25%) at $0.35 in which the top 10 placees received 
96.13% of the placing shares or 24.03% of the company. The 2 co-founders 
retained 75% (37.5% each). The concentrated stock took off and reached a daily 
closing high of $7.75 on 5-Feb-2016, briefly valuing the firm at HK$6.2bn or 
about 94x then net assets.</p>
<p>On 22-Aug-2016, a year and 12 days after listing, the founders
<a href="../dbpub/artlinks.asp?s=13096">borrowed</a> against their shares from 
Imperium Credit Ltd, a money-lender owned by Mr
<a href="../dbpub/positions.asp?p=45716">Cheng Ting Kong</a>, who is also the 
Chairman of <a href="../dbpub/articles.asp?p=12509">Sun International Group Ltd</a> 
(8029) and <a href="../dbpub/articles.asp?p=30060">Imperium Group Global 
Holdings Ltd</a> (0776). On 6-Mar-2017 the pair sold their 75% stake to 
then-27-year-old Mr Zhang Weijie (<strong>Mr Zhang</strong>) for HK$0.50 per 
share or $300m in total, triggering a
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2017/0306/GLN20170306109.pdf" target="_blank">
general offer</a> made and financed by <a href="../dbpub/orgdata.asp?p=50799">
Freeman Securities Ltd</a> (<strong>FS</strong>) on his behalf. Despite being at 
a substantial discount to the inflated market price, there were acceptances, 
raising Mr Zhang's stake to 84.32% on 19-May-2017 when the offer closed.</p>
<p>On 10-Jul-2017, FS then <a href="../dbpub/artlinks.asp?s=13097">arranged</a> 
a placing of the 74.52m excess shares at $0.50 (the same as the takeover price) 
to purportedly restore the free float to 25%. We can see in our
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=14989&amp;d=2017-07-13">
CCASS system</a> that the shares moved on the settlement date from FS to
<a href="../dbpub/orgdata.asp?p=20730">Win Wind Securities Ltd</a> (<strong>WW</strong>). 
We pause to note that FS is owned by <a href="../dbpub/articles.asp?p=4997">
Freeman Fintech Corp Ltd</a> (0279) and WW is owned by
<a href="../dbpub/articles.asp?p=1843">Enerchina Holdings Ltd</a> (0662). Both 
are in what we call the "Chung Nam Network" that we have covered extensively 
over the years. Avoid them.</p>
<h3>Huarong, again</h3>
<p>Now here's where we circle back to
<a href="yangfreeze.asp" target="_blank">Monday's story</a>, on massive 
state-controlled <a href="../dbpub/articles.asp?p=2417308">
China Huarong Asset Management Co Ltd</a> (<strong>Huarong</strong>, 2799), the 
bad-debt manager, or possible the bad debt-manager. The 
more we scrutinise Huarong, the worse it looks. Ironically for a company that 
was originally set up by the State to bail out a State-owned bank before 
listing, it now looks possible that the State will end up having to bail out 
Huarong too, or otherwise trigger a cascade of losses at the other (state-owned) 
entities which have lent to Huarong.</p>
<p>You 
will recall that Mr Yang Zhihui, missing Chairman of
<a href="../dbpub/articles.asp?p=16166">Landing International Development Ltd</a> 
(<strong>Landing</strong>, 0582, which should perhaps be renamed "Crash 
Landing") is suspected by the SFC of causing HK$10.17bn of losses to Huarong in 
"2 suspicious transactions stemming from a loan facility indirectly granted" to 
him by Huarong. The SFC didn't explain what they mean by "indirectly granted", 
but we do know that his 50.48% stake in Landing is frozen and held via
<a href="../dbpub/articles.asp?p=12651">Satinu Markets Ltd</a> (<strong>Satinu</strong>), 
another member of the Chung Nam Network. He has probably borrowed against the 
stake, perhaps indirectly from Huarong.</p>
<p>On 30-Aug-2017, PW 
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2017/0831/GLN20170831001.pdf" target="_blank">announced</a> that 
Mr Zhang had pledged 67% of PW as security for a loan. They didn't name the 
lender, but a
<a href="http://di.hkex.com.hk/filing/di/NSForm2.aspx?fn=337339" target="_blank">
disclosure of interest</a> shows that it is China Huarong Macau (HK) Investment 
Holdings Ltd. That entity is a HK company wholly-owned by a Macau company (hence 
the confusing name), which in turn is 51% owned by Huarong.</p>
<p>The Macau entity, China Huarong (Macau) International Company Limited (<strong>Huarong 
Macau</strong>),
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/1228/LTN20161228404.pdf" target="_blank">
commenced business</a> on 28-Dec-2016, launched with much Belt-and-Road fanfare, 
with Mr <a href="../dbpub/natarts.asp?p=2487286">Lai Xiaomin</a>, then Chairman 
of Huarong, presiding at the
<a href="http://www.chamc.com.cn/en/News/HuarongNews/2017/62848.shtml" target="_blank">
opening ceremony</a>. Huarong Macau has 3 other obscure shareholders. 4 months later, 
Lai Xiaomin resigned to be investigated for alleged 
corruption. We note that the Deputy General Manager of Huarong Macau from 
Dec-2016 to Apr-2017 was Mr <a href="../dbpub/positions.asp?p=2568731">Lai Jinyu</a>. 
He was an ED of fellow subsidiary <a href="../dbpub/articles.asp?p=3449">Huarong 
International Financial Holdings Ltd</a> (0993) where he was promoted to CEO on 
13-Apr-2017,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0411/LTN20180411589.pdf" target="_blank">
resigning</a> on 11-Apr-2018 "due to work rearrangement". That was 6 days before 
Lai Xiaomin resigned. We wonder where they are now.</p>
<h3>The pump and dump in PW</h3>
<p>Now, back to the Gazette Notices. We don't know who the Client is, but the 
SFC says that he was the "dominant buyer" of PW shares, buying 84.2% of the volume 
in the 5-day period from 28-May-2018 to 1-Jun-2018, when the price ramped up. In 
fact the volume over that period was only 380,000 shares (0.0475%), so we can 
infer that he bought 320,000 shares and indeed this matches the increase in the 
CCASS account of Zhongtai
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=14989&amp;sc=&amp;d1=2018-05-29&amp;d=2018-06-05">
over the settlement period</a>.</p>
<p>The SFC states that in the prior week, on 23-May and 24-May, the Client 
"acquired over 30 million Listco shares" at an average of $0.52. We can see that 
in an off-market transaction on 23-May
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=14989&amp;sc=&amp;d1=2018-05-24&amp;d=2018-05-25">
settled on 25-May</a>, Freeman's custody balance dropped 41.09m shares, of which 
26.09m went to Get Nice and 15m to another broker, CIS Securities Asset 
Management Ltd, formerly known as "Convoy Investment Services Ltd" (yes, them). We presume that was for a different buyer. Then the next day, 
Zhongtai's
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=14989&amp;sc=&amp;d1=2018-05-25&amp;d=2018-05-28">
balance increased</a> 4.10m, against in sales via Freeman, this time on-market. 
So that makes 30.19m PW shares transferred to Zhongtai in the 2-day period, 
consistent with the SFC's statement.</p>
<p>Finally, the SFC states that from 4-Jun to 6-Jun, the Client sold "over 4 
million shares" through the two brokers, at an average price of $2.11, making a 
profit of about HK$2.9m. After closing at $2.46 on 4-Jun, the stock slid to 
$1.15 on 6-Jun, below the $1.34 price at which the Client allegedly began 
ramping the stock.</p>
<h3>What goes around...</h3>
<p>Now remember Mr Zhang's post-takeover placing at $0.50 to cut his holding to 
75%, via Freeman to clients of WW? We've
<a href="../ccass/chistory.asp?i=14989&amp;part=235">tracked those shares</a>, 
and can see that there were small, normal on-market sales up 
to 28-Sep-2017, reducing the total at WW from 74.52m shares to 63.66m shares. 
After that, there were a number of off-market movements from WW to Satinu, with 
5.502m shares <a href="../ccass/chldchg.asp?i=14989&amp;d=2017-10-19">moving</a> 
on 19-Oct-2017, then 7.452m (exactly 10% of the placed shares)
<a href="../ccass/chldchg.asp?i=14989&amp;d=2017-10-20">moving</a> the next 
day, 6.532m <a href="../ccass/chldchg.asp?i=14989&amp;d=2018-04-11">moving</a> 
on 11-Apr-2018, and 5.102m
<a href="../ccass/chldchg.asp?i=14989&amp;d=2018-05-16">moving</a> on 
16-May-2018. On 23-May-2018, 7.452m shares were
<a href="../ccass/chldchg.asp?i=14989&amp;d=2018-05-23">removed</a> from 
Satinu and withdrawn from CCASS. The net result was 7.452m shares outside CCASS, 
17.136m at Satinu and 39.072m still at WW, totalling 63.66m shares.</p>
<p>Why does this matter? Because acording to a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20180611E00134" target="_blank">
disclosure of interest</a>, on 7-Jun-2018 (the day after the Client allegedly 
dumped shares), Freeman bought 63.66m shares (7.95% 
of PW) for cash at $1.25 per share, 2.5 times the original placing price, and
<a href="../ccass/chldchg.asp?i=14989&amp;d=2018-06-07">we can see</a> that 
these shares were transferred in CCASS to FS on the same day from WW, Satinu, WW 
and back into CCASS. The numbers match perfectly.</p>
<p>The Freeman purchase values all 800m shares of PW at exactly HK$1bn, which is about HK$1bn 
more than the net assets of PW - yes, in the
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2018/0814/GLN20180814089.pdf" target="_blank">
quarterly report</a> at 30-Jun-2018, it had negative net assets of -HK$0.71m, 
and is being kept solvent only by loans from its past and present 
directors.</p>
<p>The share price closed at $0.95 on 2-Oct-2018, which still values PW at 
HK$760m. We wonder how much Huarong Macau has lent Mr Zhang against the stock, 
and who were the placees that were lucky enough to benefit from a 150% gain at 
the expense of Freeman's long-suffering shareholders?</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=50799">Arta Global Markets Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4997">Arta TechFin Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2417308">China CITIC Financial Asset Management Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2332221">China Hongbao Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22233809">China Huarong (Macau) International Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2685417">CHINA XINZHI MACAU (HK) INVESTMENT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14367">GET NICE SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1843">Oshidori International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20730">Oshidori Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12651">SEEKERS MARKETS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16166">Shin Hwa World Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3449">XinKong International Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1893006">ZHONGTAI INTERNATIONAL SECURITIES LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=45716">Cheng, Ting Kong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2568731">Lai, Jinyu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2487286">Lai, Xiaomin (1962)</a></li>
				
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