
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

<script type="text/javascript">document.title="Breaking: SFC freezes up to HK$10.17bn of assets in 3 brokers";</script>

	<div class="summary">Webb-site has deduced that these are assets of Mr Yang Zhihui, missing Chairman and majority shareholder of Landing (0582), and that he is reasonably suspected of fraud causing losses of HK$10.17bn to China Huarong (2799), the ex-Chairman of which is under a corruption investigation in China. We also turn the spotlight on China Goldjoy (1282) which was an enthusiastic buyer of Landing at prices far higher than its Chairman paid beforehand.</div>

<h2 class="center">Breaking: SFC freezes up to HK$10.17bn of assets in 3 brokers<br>
<span class="headlinedate">1 October 2018</span></h2>

<p>In a set of <a href="../codocs/GN7176-8-2018.pdf" target="_blank">Gazette Notices</a> published on Friday (28-Sep-2018) but dated 
17-Sep-2018, the SFC has ordered 3 brokers to freeze assets of a male individual 
(referred to only as "the <strong>Person</strong>") up to an amount of 
HK$10,168,752,898 (about US$1.3bn) which, based on our records, is the largest 
ever such order. The SFC has not yet made any announcement of the action.</p>
<p>The SFC states that according to "current findings from our investigation", 
it suspects that the Person "orchestrated fraudulent schemes by colluding with 
certain personnel of the management of a listed company and/or its subsidiaries 
(the <strong>Group</strong>) in 2 suspicious transactions stemming from a loan 
facility indirectly granted to the Person by the listed company". It reasonably 
suspects that:</p>
<ol>
	<li>
	<blockquote>"the Person might have colluded with persons within the 
	management of the Group to engage in a scheme to defraud the Group by 
	procuring the listed company’s subsidiary to purchase from the Person’s 
	wholly owned company, shares of another listed company on terms which were 
	unfavourable to the purchaser and inconsistent with the purported underlying 
	purpose of the transaction...the true purpose was to enable the Person to 
	profit from the transaction at the expense of the Group"; and</blockquote>
	</li>
	<li>
	<blockquote>"the Person colluded with persons within the management of the 
	Group to enable him to sell, via his wholly owned company, a substantial 
	interest in another non-listed company to certain funds subscribed by the 
	Group at a significant overvalue, defrauding the Group to make significant 
	profits for himself to the detriment of the Group.</blockquote>
	</li>
</ol>
<p>The SFC states that "the Group through these suspicious acquisitions might 
have suffered aggregate losses of approximately HK$10.17 billion". The Person 
has securities and cash at the 3 brokers of HK$4.64bn, some way short of that 
amount. A further clue to the Person's identity is given:</p>
<blockquote>"The Person is the Chairman of a listed company. The company 
purportedly lost contact with the Person and recent news reports appear to 
indicate that the Person might be abroad or under investigation in the PRC as a 
suspect in a corruption case."</blockquote>
<h3>Mr Yang and Huarong</h3>
<p>The SFC's notice, together with other public data, gives Webb-site enough to 
deduce that the Person is <a href="../dbpub/positions.asp?p=2102280">Yang Zhihui</a> (<strong>Mr Yang</strong>), 
the Chairman and (for now) controlling shareholder of casino operator <a href="../dbpub/articles.asp?p=16166">Landing International 
Development Ltd</a> (<strong>Landing</strong>, 0582), which has a casino on the 
South Korean island of Jeju, and
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0807/LTN201808071011.pdf" target="_blank">
is/was hoping</a> to build one in the Philippines.</p>
<p>On 23-Aug-2018, Landing
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0823/LTN20180823552.pdf" target="_blank">
announced</a> that it had been "unable to contact or reach" Mr Yang. The next 
day, mainland financial site Caixin
<a href="https://www.caixinglobal.com/2018-08-24/businessman-with-huarong-link-reported-detained-101318162.html" target="_blank">
reported</a> that he had been detained on arrival in Cambodia to visit a casino. 
His whereabouts since then is unknown. His likely identity and other data also lead us to the 
conclusion that the listed company that suffered the HK$10.17bn loss is <a href="../dbpub/articles.asp?p=2417308">China Huarong Asset Management Co., 
Ltd</a> (<strong>Huarong</strong>, 2799), as we show below.</p>
<p>Huarong is a massive state-controlled company established on 1-Nov-1999 as one of 
four "Asset Management Companies", each of which took over 
and managed the bad loans of a state-owned bank, in this case, ICBC, before the 
big 4 banks were listed. On 19-Apr-2018, Huarong
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0420/LTN20180420033.pdf" target="_blank">
announced</a> that Mr Lai Xiaomin had resigned 2 days earlier as Chairman and 
director for unstated "personal reasons". The truth was that he is under 
investigation for "serious discipline violations" - the State's euphemism for 
corruption, as
<a href="http://www.ccdi.gov.cn/yaowen/201804/t20180418_170187.html" target="_blank">
announced</a> by the Central Commission for Discipline Inspection (<strong>CCDI</strong>) 
on 17-Apr-2018.</p>
<p>We don't know whether the SFC and CCDI are cooperating on their respective 
investigations.</p>
<h3>The first transaction</h3>
<p>The first transaction listed by the SFC is consistent with the sale on 29-Dec-2015 by Mr Yang's 
wholly-owned company of 145.7m shares (29.4%) of 
Telefield International (Holdings) Ltd (<strong>Telefield</strong>, now known as 
<a href="../dbpub/orgdata.asp?p=63638">China Healthcare Enterprise Group Ltd</a>, 1143). Telefield
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1229/LTN20151229887.pdf" target="_blank">
announced</a> this on the day of the transaction. The buyers were subsidiaries 
of Huarong, which had its HK IPO just 2 
months earlier.</p>
<p>The sale price was $9.9 per share ($0.99 adjusted for a subsequent 10:1 
split), a total of HK$1442m excluding costs. We can see the settlement in the
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=6581&amp;sc=&amp;d1=2015-12-29&amp;d=2015-12-30">
Webb-site CCASS Analysis System</a>, with 145.7m shares moving from
<a href="../dbpub/articles.asp?p=16123">Kingston Securities Ltd</a> (<strong>Kingston</strong>) 
to Partners Capital Securities Ltd (<strong>PCS</strong>) on 30-Dec-2015. In the 
two months before this, the market price of Telefield had surged 409% from $2.16 
on 4-Nov-2015 to $11.00 on the transaction date, including a jump on the day of 
Huarong's purchase from $6.70 to $11.00 ($1.10 split-adjusted), providing a 
rather convenient reference price for the transaction. That remains its record daily 
closing high, valuing the company at HK$5451m.</p>
<p>By comparison, in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0425/LTN201604251063.pdf" target="_blank">
annual report</a> at 31-Dec-2015, Telefield had net assets of HK$554m and made a 
net loss of HK$1.8m for the year. So it was trading at 9.84x NAV. Mr Yang's 
purchase price for the Telefield shares was $2.031 ($0.2031 split-adjusted) in a 
takeover
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0811/LTN20150811955.pdf" target="_blank">
announced</a> on 22-May-2015 that
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1104/LTN201511041126.pdf" target="_blank">
closed</a> on 4-Nov-2015. Kingston made the general offer on his behalf.</p>
<p>&nbsp;It is also 
notable that 2 working days after the offer closed, on 9-Nov-2015, Kingston
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1109/LTN20151109767.pdf" target="_blank">
arranged a placing</a> of 79.7m new Telefield shares at $2.44, which was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1127/LTN20151127796.pdf" target="_blank">
completed</a> on 27-Nov-2015. That diluted Mr Yang's stake from 71.50% to 
60.00%, before his sale of 29.4% to Huarong at more than 4x the placing price. 
The stock closed on Friday (28-Sep-2018) at $0.063, down 94.3% from the record 
high.</p>
<p>The Telefield shares bought by Huarong were held and disposed of in two 
batches:</p>
<ul>
	<li>738.4m post-split shares (14.9%) were held by "Partners Special 
	Investments Fund SP2" (<strong>PSIF</strong>), managed by
	<a href="../dbpub/orgdata.asp?p=22231638">PH Investment Management Ltd</a> (<strong>PHI</strong>) 
	which is owned by Partners Financial Holdings Ltd (<strong>PFH</strong>). On 
	11-Oct-2017,&nbsp; the entire interest in PSIF was
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20180108E00344" target="_blank">
	transferred</a> by Huarong to a third party, "Peak Achiever Limited", for an 
	undisclosed consideration. That entity was probably owned by PHI, because a 
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20171221E00295" target="_blank">filing</a> by PFH states that PHI sold PSIF "to a third party" on 20-Dec-2017. 
	As of 28-Sep-2018, the shares are still in the CCASS account of
	<a href="../ccass/chistory.asp?i=6581&amp;part=386">Partners Capital 
	Securities Ltd</a> and no third party has claimed an interest in those 
	shares.</li>
	<li>Two days later on 13-Oct-2017, Huarong
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20180108E00347" target="_blank">
	sold</a> its remaining 718.6m shares (14.5%) for "assets other than cash" 
	valued at $0.198 per share, taking an 80% loss on the investment. The buyer 
	of the second stake was "Hearts Capital SPC - Hearts SP2", which is 
	ultimately 70% owned by <a href="../dbpub/natperson.asp?p=12113006">Cao 
	Longbing</a> (<strong>Mr Cao</strong>) and is managed by
	<a href="../dbpub/officers.asp?p=2492857">Long Asia Asset Management (HK) 
	Ltd</a>. Those shares
	<a href="../ccass/chldchg.asp?i=6581&amp;d=2017-10-13">moved</a> from 
	PCS to Long Asia Securities Ltd on the same day. We don't know what assets 
	Huarong received in return.</li>
</ul>
<p>Overall then, based on the price of the asset swap with Hearts Capital, we 
estimate that Huarong lost 80% of its investment, or about <strong>HK$1154m</strong>.</p>
<h3>The second transaction</h3>
<p>By subtraction, the second transaction, involving the sale by Mr Yang of a "substantial interest" in a "non-listed company", 
is alleged to have caused Huarong a loss of about HK$9.02bn.</p>
<p>Huarong has such a huge, highly-geared balance sheet that under HK 
Listing Rules, it has never yet made an acquisition 
that rises to the threshold of a "notifiable transaction", so we can't point to 
any particular investment as the possible purchase from Mr Yang. In its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0927/LTN20180927699.pdf" target="_blank">
interim report</a> at 30-Jun-2018, 
it had total assets of CNY1845bn (then US$279bn) but it's shareholders equity 
was a more modest CNY119bn. The H-shares of Huarong account for 64.1% of 
Huarong's equity. Since Mr Lai's arrest, the shares have dropped 54.7% from 
HK$3.18 to $1.44, valuing the equity at HK$56.26bn (CNY63.9bn).</p>
<p>As Mr Yang's sale was of a "non-listed company", there aren't any 
clues there either. Suffice to say that if Huarong lost $9.02bn on an 
acquisition from Mr Yang, 
then the deal was at least that size. The SFC says that the sale was to "certain funds subscribed by" Huarong. 
In the <a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0831/LTN20180831031.pdf" target="_blank">
half-year results</a> for 30-Jun-2018, Huarong reported a plunge in profit 
attributable to equity holders to just CNY0.684bn from CNY13.360bn the previous 
year and stated:</p>
<blockquote>"On 17 April, 2018, the relevant authorities in Mainland China 
instigated a disciplinary investigation into the former chairman of the Company. 
The Company has been closely co-operating with the relevant authorities... In this context, the Company has decided to initiate 
its own internal investigation, including into the structure of certain fund 
investments and loans, and their valuation and recoverability."</blockquote>
<h3>Mr Yang's brokers</h3>
<p>The 3 brokers where Mr Yang's assets are frozen are
<a href="../dbpub/articles.asp?p=12651">Satinu Markets Ltd</a> (<strong>Satinu</strong>), 
Kingston and HSBC Broking Securities (Asia) Ltd. We can 
see from the CCASS data that Satinu has custody of 1,481,567,297 shares (50.48%) 
of Landing, which exactly matches Mr Yang's declared stake. These are worth 
HK$3734m at Friday's closing price of $2.52. The stock is down 56.5% since he 
disappeared in August. The shares were moved to Satinu, then known as "Enerchina 
Securities Limited" on 19-Dec-2017, as Webb-site
<a href="../dbpub/artlinks.asp?s=12582">noted</a> the next day, stating that "we could be in for a hard Landing". 
Split-adjusted, the stock was at $14.00 on the transfer day.</p>
<p>Satinu, once known as "Chung Nam Securities Ltd", is a broker in what we call 
the "Chung Nam Network", a cross-holding web of listed companies, BVI hubs, brokers and 
loss-making joint ventures between the listed companies that we have written 
about extensively over the years. Avoid them all.</p>
<p>We note that although the assets are frozen, the SFC's notice permits the 
brokers to "deal with or dispose of securities in the Accounts to cover the 
negative cash balance in the Accounts". This appears to imply that if the broker 
has provided margin loans (a negative cash balance) then it can still dump the 
stock to recover them.</p>
<p>Mr Yang still holds 1516.34m shares (25.5%) of Telefield (now known as China 
Healthcare Enterprise Group Ltd). These are probably held in his account at 
Kingston, which has custody of 32.93%
<a href="../ccass/choldings.asp?sort=holddn&amp;i=6581&amp;sc=&amp;d=2018-09-28">
as shown in CCASS</a>.</p>
<h3>One more thing</h3>
<p>There's another big player in Landing which deserves some attention:
<a href="../dbpub/articles.asp?p=58558">China Goldjoy Group Ltd</a> (<strong>CG</strong>, 
1282), controlled by its Chairman Yao Jianhui (<strong>Mr Yao</strong>). Its 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0914/LTN20180914773.pdf" target="_blank">interim report</a> at 30-Jun-2018 shows a holding of 4.71% of Landing, just below 
the 5% shareholding disclosure threshold, then valued at HK$829.7m at $6.00 per 
share. The stock has dropped 58% to $2.52 since then, so that's a book loss of 
$481m for CG since 30-Jun.</p>
<p>Apart from CG's holding in Landing, based on Landing's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0917/LTN20180917301.pdf" target="_blank">
interim report</a>, Mr Yao has a private holding in Landing of about 2.85% which 
takes his total interest to 7.56%. Our analysis indicates that he subscribed 
HK$297m for 3,960,060,000 shares (then 2.69%) of Landing at $0.075 (79,201,200 at $3.75 
split-adjusted) in a placing by Kingston <a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0831/LTN201708311309.pdf" target="_blank">
launched</a> on 31-Aug-2017. That completed on 14-Sep-2017, and we can see that
<a href="../ccass/chistory.asp?i=3458&amp;part=411">he holds</a> those 
shares via CCB International Securities Ltd. CG acquired shares at much higher 
prices than that - as it announced on
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0105/LTN201801051202.pdf" target="_blank">
5-Jan-2018</a>, <a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0228/LTN201802281397.pdf" target="_blank">
28-Feb-2018</a>,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0306/LTN201803061290.pdf" target="_blank">
6-Mar-2018</a> and
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0308/LTN20180308871.pdf" target="_blank">
8-Mar-2018</a>. For the 4 transactions that it announced, the average price was 
$16.50 per Landing share after consolidation, so it has lost 84.7% on those 
purchases. We can safely predict that China Goldjoy offers neither gold nor joy, 
just misery.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2417308">China CITIC Financial Asset Management Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63638">China Energy Storage Technology Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50861">HSBC BROKING SECURITIES (ASIA) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2492857">Innov Harbor Asset Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=25606">PARTNERS CAPITAL SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22231636">Partners Financial Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58558">Renze Harvest International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12651">SEEKERS MARKETS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16166">Shin Hwa World Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=12113006">Cao, Longbing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2487286">Lai, Xiaomin (1962)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2102280">Yang, Zhihui (1972)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2458432">Yao, Jianhui (1972)</a></li>
				
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