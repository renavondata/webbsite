
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

<script type="text/javascript">document.title="Some bubbles for New Year";</script>

	<div class="summary">With the exchange shut for 2014, we take a close look at two bubbles and the other listed companies surrounding them.</div>

<h2 class="center">Some bubbles for New Year<br>
<span class="headlinedate">31 December 2014</span></h2>
<p>The HK stock exchange shut at noon today, so let's take a New Year's Eve 
virtual stroll around the market. We'll start with
<a href="../dbpub/str.asp?i=11215">Finsoft Corporation</a> (<strong>Finsoft</strong>, 
8018), which ends 2014 as the 9th largest company by market value on the GEM 
board, at HK$4940m. We'll then explain how that is connected to financial 
advisory firm <a href="../dbpub/orgdata.asp?p=58895">Convoy Financial Holdings 
Ltd</a> (<strong>Convoy</strong>, 1019) and to a closed-end investment company,
<a href="../dbpub/orgdata.asp?p=63313">China New Economy Fund Ltd</a> (<strong>CNEF</strong>, 
0080). Finally, we'll make a special mention of
<a href="../dbpub/articles.asp?p=1894">Hanergy Thin Film Power Group Ltd</a> (<strong>Hanergy</strong>, 
0566), a HK$117bn (US$15.1bn) bubble at today's record daily high of $2.81, 
which makes it the 38th largest HK-listed stock.</p>
<p>So pour yourself a glass of bubbly and enjoy...</p>
<h3>About Finsoft</h3>
<p>Finsoft was listed on 26-Sep-2013 after a placing of 50m shares (25%) at 
HK$0.82 each ($0.082 split-adjusted), raising $41m gross but only $28.6m after 
expenses. The
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2013/0925/GLN20130925003.pdf" target="_blank">
announcement</a> of allotments and concentration warning shows that the top 10 
placees took 96% of the deal (24% of Finsoft) while 149 placees owned a combined 
1% of Finsoft. On day one, the depository (CCASS) positions looked
<a href="../ccass/choldings.asp?d=2013-09-26&amp;i=11215">like this</a>.</p>
<p>At listing, the principal business of Finsoft was &quot;the development, sale and 
lease of financial trading software solutions&quot; to stockbrokers and banks in HK. 
The main subsidiary, <a href="../dbpub/orgdata.asp?p=146623">iAsia Online 
Systems Ltd</a> (<strong>iAsia (BVI)</strong>), was incorporated on 9-Jan-2001 
and was listed before, as a subsidiary of what was then called &quot;iAsia Technology 
Ltd&quot; and is now called <a href="../dbpub/articles.asp?p=13553">Value Convergence 
Holdings Ltd</a> (<strong>VC</strong>, 0821). VC was first listed on GEM on 
9-Apr-2001. On 19-Mar-2004, having acquired a financial services business and 
become a subsidiary of <a href="../dbpub/articles.asp?p=1019">Melco 
International Development Ltd</a> (<strong>Melco</strong>, 0200), VC
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2004/0423/GLN20040423011.pdf" target="_blank">
sold</a> the original loss-making iAsia group, including iAsia (BVI), to Melco 
for HK$27.9m. Skip forward 5 years, and on 23-Feb-2009, Melco
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/0223/LTN20090223358.pdf" target="_blank">
sold</a> 80% of iAsia (BVI) to <a href="../dbpub/positions.asp?p=19969">Ringo 
Chan Sek Keung</a> (<strong>Ringo Chan</strong>) for HK$12m, payable in 3 
installments over 2 years, with a call option to buy the remaining 20% for 
HK$3m, which he exercised on 14-Jul-2010. So the whole business cost him HK$15m. </p>
<p>Earlier, Ringo Chan was the founder in 1998 of a company called &quot;Wafer 
Systems Limited&quot;, a network systems integrator which listed on GEM on 
17-May-2002 and in 2007 was taken over by Melco, now known as
<a href="../dbpub/articles.asp?p=15999">MelcoLot Ltd</a> (8198).</p>
<p>Two and a bit years after buying iAsia (BVI) from Melco, Ringo Chan began 
preparing it for listing. On 26-Nov-2012, he injected iAsia (BVI) into a new 
empty BVI shell, <a href="../dbpub/orgdata.asp?p=2363770">Luster Wealth Ltd</a> 
(<strong>Luster Wealth</strong>) and reduced his holding to 85% by allocating 
15% to 4 members of management, of which 6.5% each went to Chief Technology 
Officer <a href="../dbpub/positions.asp?p=2134429">Samson Lai Wai Ho</a> (<strong>Mr 
Lai</strong>) and Chief Operating Officer
<a href="../dbpub/positions.asp?p=2134428">Li Hoi Kong</a>, and 1% each to 2 
senior managers. The next day, Ringo Chan sold 7.5% to &quot;strategic investor&quot;
<a href="../dbpub/positions.asp?p=33620">Kwok Shun Tim</a> (<strong>Mr Kwok</strong>) 
for HK$2.4m, implying a valuation of $32m for the group, or $0.0213 per Finsoft 
share today (split-adjusted).</p>
<p>10 months later in the IPO, the Finsoft shares were valued at almost 4 times 
that, but you ain't seen nothin' yet. With such a concentrated ownership, the 
price was easily ramped by persons unknown, closing at $5.23 ($0.523 
split-adjusted) on 26-Sep-2013, its first day of listing, up 538% from the 
placing price. That valued Finsoft at HK$1046m, or about 93 times the profit it 
made in 2012, 26 times its net tangible assets and 25 times the value when Mr 
Kwok invested 10 months earlier. Post-listing, Luster Wealth owned 69.38%, Mr 
Kwok owned 5.63% and the &quot;public&quot; owned 25% of Finsoft.</p>
<p>But you still ain't seen nothin' yet.</p>
<p>On 24-Jan-2014, CTO and ED Mr Lai
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0121/GLN20140121043.pdf" target="_blank">
resigned</a> to spend more time with his family. You might wonder what happened 
to his shares in Luster Wealth, so read on. On 2-May-2014, Finsoft shares split 
10:1. On 19-May-2014, Ringo Chan
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0519/GLN20140519025.pdf" target="_blank">
sold</a> 9.6% of Luster Wealth (96 shares) to 2 unnamed purchasers in 
unspecified proportions, for HK$49,284,000, which represents $0.37 per split 
Finsoft share. The closing market price that day was $0.70. Ringo Chan then 
owned 75.4% of Luster Wealth. 4 weeks later, on 17-Jun-2014, Luster Wealth
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0617/GLN20140617023.pdf" target="_blank">
distributed</a> the underlying Finsoft shares to two of its shareholders by 
repurchasing their Luster Wealth shares. Prior to that, &quot;Shareholder A&quot; and 
&quot;Shareholder B&quot; held 9.5% and 6.6% of Luster Wealth respectively. As a result of 
the repurchase, &quot;Shareholder A&quot; held 131,812,500 shares (6.59%) of Finsoft, and 
&quot;Shareholder B&quot; owned 91,575,000 shares (4.58%).</p>
<h3>&quot;Shareholder A&quot; is Convoy</h3>
<p>Finsoft didn't say who Shareholders A and B were, but in the case of 
&quot;Shareholder A&quot;, as it owned over 5% of Finsoft, it had to make a filing made 3 
days later
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=238764" target="_blank">
which shows</a> that it is a 100% subsidiary of Convoy, which appears to have
<a href="../ccass/chldchg.asp?i=11215&amp;d=2014-07-02">deposited</a> the 
shares into CCASS on 2-Jul-2014 via Sun Hung Kai Investment Services Ltd, and 
has been steadily selling since then,
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=245956" target="_blank">
cutting below</a> 6% on 25-Sep-2014 but still owning at least 5% (100m shares).</p>
<p class="regbox">Update 9-Jan-2015: we should add that since Convoy 
apparently acquired 95 shares in Luster Wealth on 19-May-2014, which were later 
converted into the Finsoft shares, Convoy should have announced this as Inside 
Information under the SFO and as a Disclosable Transaction under the Listing 
Rules. The consideration paid at $0.37 per underlying Finsoft share for 
131,812,500 shares is HK$48.77m, while the 5-day average market capitalisation 
of Convoy prior to 19-May-2014 was $608.46m, so the &quot;consideration ratio&quot; is 
8.02%, making it a Disclosable Transaction under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_14.pdf" target="_blank">
Listing Rule 14.08</a>. Treating the price paid as the &quot;fair value&quot; of the 
assets acquired, the &quot;assets ratio&quot; is also over 5%.</p>
<p>After the distribution of Finsoft shares to Convoy and Shareholder B, 
the price took off again, rising from $0.53 on 17-Jun-2014 to a high of $2.51 on 
26-Sep-2014, the first anniversary of listing. At today's closing price of 
$2.47, Finsoft is valued at HK$4940m (US$637m), or about 110 times its net 
tangible assets of $45.0m at 30-Jun-2014, so the downside is huge. We 
deliberately waited until this afternoon to publish this article, to see how far 
whoever is manipulating the stock would push it at the year-end, when portfolio 
valuations count. The answer: up 12.3% today, up 20.5% in 2 days and up 44.4% 
this month.</p>
<p>In Convoy's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0925/LTN20140925206.pdf" target="_blank">
interim report</a> for the 6 months to 30-Jun-2014, it booked a net profit of 
HK$130.5m, but note 4 shows that this was almost entirely due to $125.9m of 
&quot;fair value gains on equity investments&quot;. Note 13 shows listed equity 
investments of HK$246.2m.</p>
<p>Based on a holding of 131.8125m shares in Finsoft at the closing price of 
$1.37 on 30-Jun-2014, these were valued at $180.6m, or 33.0% of Convoy's net 
tangible assets of $547.0m. As we noted above, the shares in Luster Wealth were 
sold by Ringo Chan at an effective price of $0.37 per Finsoft share, so that is 
probably what Convoy paid for them, and the gain is $1.00 per share, or $131.8m, 
which is close to the $125.9m portfolio net gain reported by Convoy.</p>
<p>The word &quot;Finsoft&quot; does not appear anywhere in Convoy's interim report, and 
they do not even admit that almost all the group profit came from a single 
unrealised gain in one massively inflated stock. But what you <em>will</em> find 
is the following hogwash on page 12:</p>
<blockquote>
&quot;The Group recorded realised and unrealised fair value 
gain on equity investments and dividend income of approximately HK$126.8 million 
for the period ended 30 June 2014. The significant increase in revenue from 
proprietary investment business was mainly due to good performance of our 
investment portfolio, reflecting our strong and experienced investment team and 
effective investment diversification strategies, which help investing in a 
diversified portfolio of listed equities. This can help mitigating equity price 
risk and generating income under volatile market condition.&quot;
</blockquote>
<p>The SFC should investigate Convoy and its directors for making this false and 
misleading statement. By our reckoning, the Finsoft stake accounted for 73% of 
the &quot;diversified portfolio&quot; at the period end. That is not diversified at all. 
We pause to state the obvious irony here: Convoy group is one of HK's largest 
peddlers of &quot;independent financial advice&quot; to individuals. You know, helping 
them to balance their financial risks, that sort of thing.</p>
<p>With no subsequent filings, we assume Convoy still owns between 5% and 
5.99% of Finsoft, so let's take the lower figure of 5% (100m shares) and today's 
closing price of $2.47. That gives them a 6-month paper gain of $1.10 per share, 
or $110m in total, and values the shares at at least $247m. We wonder whether 
the auditors will agree with that figure as being &quot;fair value&quot;. </p>
<p>On 30-Apr-2013, Mr Kwok, the pre-IPO &quot;strategic investor&quot; in Finsoft, was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0430/LTN20130430818.pdf" target="_blank">
appointed</a> as an ED of Convoy. On 23-Apr-2014, Mr Kwok stepped down from ED 
to NED of Convoy, and on 2-Jul-2014, he resigned as director.</p>
<h3>&quot;Shareholder B&quot; is CNEF</h3>
<p>Now, what happened to former Finsoft CTO Mr Lai's shares of Luster Wealth? 
Remember, he held 65 shares (6.5%) at the IPO, but by 17-Jun-2014, &quot;Shareholder 
B&quot; held 66 shares (6.6%), which may include 1 share acquired from Ringo Chan a 
month earlier. The remaining shares of Luster Wealth are still held by the 
original shareholders. </p>
<p>Shareholder B is almost certainly CNEF, because according to 
its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0925/LTN20140925152.pdf" target="_blank">
interim report</a> at 30-Jun-2014, it held 91.575m shares (4.58%) of Finsoft, 
acquired at a cost of $33.883m ($0.37 per share), which matches the price at which Ringo Chan sold his shares in Luster Wealth. CNEF probably bought Mr Lai's 
shares. CNEF appears to have
<a href="../ccass/chldchg.asp?i=11215&amp;d=2014-07-03">deposited</a> the 
shares into CCASS on 3-Jul-2014 via HSBC, a major custodian.</p>
<p>As a result of the inflation of the Finsoft price, at 30-Jun-2014, CNEF's 
holding was valued at HK$124.542m (at $1.36) and it booked an unrealised gain of 
$90.66m. without which, CNEF would have made a loss for the half-year. While 
acknowledging Finsoft (which is more than Convoy did), CNEF claimed:</p>
<blockquote>&quot;the Company deployed a timely and appropriate investment 
approach in response to the ever-changing market sentiment and government policy 
so that net assets under its management recorded a substantial increase&quot;.</blockquote>
<p>Ah yes, such wisdom, such skill, such crap! Finsoft accounted for 38.4% of 
CNEF's NAV at 30-Jun-2014. <a href="../dbpub/positions.asp?p=57798">Tony Tai Man 
Hin</a>, the CFO and Company Secretary of CNEF, is an INED of Finsoft since its 
IPO.</p>
<h3>Mr Kwok cashes out</h3>
<p>Meanwhile Mr Kwok appears to have
<a href="../ccass/chldchg.asp?i=11215&amp;d=2014-06-11">deposited</a> his 
112.5m Finsoft shares into CCASS via Gransing Securities Co Ltd on 11-Jun-2014. 
2 days later, he
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=63865" target="_blank">
sold them</a> in an off-market transaction at $0.365, cashing in $41.06m for his 
original $2.4m investment. The shares
<a href="../ccass/chldchg.asp?i=11215&amp;d=2014-06-17">moved </a>to custody 
of Fordjoy Securities and Futures Ltd on 17-Jun-2014.</p>
<h3>Dealmatch</h3>
<p>In 2013, Finsoft set up what it called a &quot;referral business&quot; segment, to 
&quot;source, identify and refer prospective deal opportunities to interested 
parties&quot;. On 3-Oct-2013, in incorporated Dealmatch.com Limited in HK, although 
it doesn't even own the domain in its name - it owns a similar HK domain,
<a href="http://www.dealmatch.com.hk/" target="_blank">dealmatch.com.hk</a>. 
This segment booked HK$2.2m of revenue in 2013 (all in the 4th quarter) and a 
$0.978m profit. Finsoft also set up a licensed money-lender, Finsoft Finance 
Ltd, which began making loans in the first half of 2014, with $2.2m outstanding 
at 30-Jun-2014.</p>
<p>In the first 9 months of 2014, Finsoft booked revenue from &quot;referral 
services&quot; of $6.91m. Now look at the Dealmatch site (<a href="http://web.archive.org/web/20141229102516/http://www.dealmatch.com.hk/" target="_blank">captured 
here</a>). It lists 3 &quot;New Projects&quot; which are apparently deals it has clinched 
in 2014, presumably generating referral fees. The largest deal by far is &quot;Dr Vio 
&amp; Partners&quot; at $400m, and the second-largest is &quot;Megafit&quot; at a purported $45m. 
Well we can link both of these indirectly to Convoy.</p>
<p>For Dr Vio &amp; Partners, <a href="../dbpub/articles.asp?p=11691">Town Health 
International Medical Group Ltd</a> (<strong>Town Health</strong>, 3886) is the 
buyer of 94.3% for HK$409.3m as
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0612/LTN20140612184.pdf" target="_blank">
announced</a> on 12-Jun-2014. At that time, Town Health owned 25.07% of Convoy. 
A
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0820/LTN20140820671.pdf" target="_blank">
circular</a> went out on 21-Aug-2014 and the deal was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0925/LTN20140925249.pdf" target="_blank">
approved</a> by shareholders on 25-Sep-2014.</p>
<p>For &quot;Megafit&quot;, on 16-Aug-2014, <a href="../dbpub/articles.asp?p=4789">China 
Renji Medical Group Ltd</a> (<strong>CRM</strong>, 0648)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0817/LTN20140817021.pdf" target="_blank">
signed</a> an MoU to buy a 55% stake in Mega Fitness (Shanghai) Investments Ltd, 
which operates a chain of sports and fitness outlets in the PRC under the &quot;Megafit&quot; 
brand. The MoU was followed by a formal
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0827/LTN20140827973.PDF" target="_blank">
acquisition agreement</a> on 27-Aug-2014, with a price tag of HK$35m (not $45m 
as displayed on the Dealmatch site). The deal has still not completed - a 
circular has been repeatedly delayed and is
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1128/LTN20141128909.pdf" target="_blank">
due out today</a>.</p>
<p>On 9-Oct-2014, CRM
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1009/LTN20141009776.pdf" target="_blank">
launched</a> a placing of convertible bonds via Win Fung Securities Ltd in two 
equal tranches of HK$43.34m, of which the first tranche was done under the 
general mandate without the need for shareholders' approval. Each tranche is 
convertible into shares equivalent to 12.12% of the existing shares. Tranche 1 
was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1031/LTN20141031967.pdf" target="_blank">
completed</a> on 31-Oct-2014, and the sole subscriber was &quot;Hyrdra Capital SPC 
for and on behalf of SP#2&quot;. A
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=248196" target="_blank">
disclosure of interest</a> shows that Convoy, via a 70% subsidiary, DRL Capital 
Investment Management Ltd, has a deemed interest in this investment.</p>
<p>It may not surprise you to learn that Town Health was a shareholder of CNEF, 
building up to 28.15% by 1-Mar-2013. It held that position until 15-May-2014, 
then sold down below 5% over the next 5 days. Also at 30-Jun-2014, CNEF held 
16.816% of Hyrdra Capital SPC at a book cost of HK$37.5m.</p>
<h3>About Convoy</h3>
<p>Convoy was listed on 13-Jul-2010 after an IPO of 100m shares (25%) at 
HK$1.20, raising $103.0m net, after having paid out dividends of HK$72.0m in 
2009. Initially they listed only part of the group, Convoy Financial Services 
Ltd, which peddles Investment-Linked Assurance Schemes (ILAS) and Mandatory 
Provident Fund (MPF) products. A separate company,
<a href="../dbpub/orgdata.asp?p=44749">Convoy Asset Management Ltd</a> (<strong>CAM</strong>), 
sells investment funds.</p>
<p>On 16-Feb-2011, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/0217/LTN20110217005.pdf" target="_blank">
announced</a> a placement of 3 series of unlisted 1-year warrants to subscribe 
new shares, 30m at $1.60, 15m at $1.80 and 5m at $2.00, totaling 50m shares at 
an average of $1.70, compared with the closing price of $1.59. The price per 
warrant was just $0.02, so the whole exercise raised on $1.0m gross, and it 
doesn't take a binomial pricing model to tell you that this was far below the 
fair value of the warrants. Convoy's stock price headed downwards though, and 
the warrants all expired unexercised on 23-Feb-2012.</p>
<p>Never mind, try again. On 25-Feb-2013, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0225/LTN20130225487.pdf" target="_blank">
announced</a> a placement of 80m unlisted 5-year warrants in 2 equal tranches, 
exercisable starting from 1-Jan-2015 and 1-Jan-2016 respectively. The placement 
price was just $0.01 per warrant, with an exercise price of $1.41, the closing 
price that day, so it raised just $0.6m gross. Again, this makes no sense; a 
5-year at-the-money call option is worth vastly more than 1 cent.</p>
<p>On 26-Mar-2013, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0326/LTN20130326816.pdf" target="_blank">
agreed</a> to issue 19m new shares at $2.30 to Town Health. Because the warrant 
issue had already blown the 20% general mandate, the shares were issued under a 
specific mandate at an EGM and the subscription
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0523/LTN20130523358.pdf" target="_blank">
completed</a> on 23-May-2013.</p>
<p>On 24-Jul-2013, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0724/LTN20130724540.pdf" target="_blank">
launched</a> a placing via <a href="../dbpub/adviserships.asp?p=44712">Astrum 
Capital Management Ltd</a> (<strong>Astrum</strong>) to issue 44m shares at 
$1.85, raising $78m for the purposes of money lending and proprietary 
investment. The placing
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0812/LTN20130812229.pdf" target="_blank">
completed</a> on 12-Aug-2013. The next day Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0813/LTN20130813774.pdf" target="_blank">
lent</a> HK$33m at 12% p.a. for 5 months to a subsidiary of an unnamed main 
board company, and by 30-Jun-2014 it had $146m of loans receivable, or about 27% 
of its net tangible assets.</p>
<p>On 30-Sep-2013, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/1001/LTN20131001027.pdf" target="_blank">
agreed</a> to buy CAM from its parent Convoy Financial Group Ltd (<strong>CFG</strong>) 
for HK$30m and to buy Kerberos (Nominee) Ltd from Convoy Inc. (a substantial 
shareholder of CFG) for $0.101m, both satisfied with new Convoy shares issued at 
$1.87 each. According to <a href="../dbpub/SFClicount.asp?d=2014-12-30">
Webb-site Who's Who</a>, CAM had 1162 SFC-licensed persons as at 30-Dec-2014, 
more than any other SFC-licensed firm. These are mostly self-employed 
&quot;consultants&quot;, not employees, and they may do other things. An acquisition
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/1121/LTN20131121620.pdf" target="_blank">
circular</a> went out on 22-Nov-2013 and the deal was eventually
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0303/LTN201403031778.pdf" target="_blank">
completed</a> on 3-Mar-2014. </p>
<p>Meanwhile on 2-Dec-2013, CFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/1202/LTN201312021890.pdf" target="_blank">
sold</a> 148m Convoy shares at $1.50, slashing its holding from 59.16% to 
27.20%. The placing agent was RHB OSK Securities Hong Kong Ltd, and Town Health 
took 46.934m shares, increasing its holding from 4.54% to 14.67%, while RHB 
Asset Management Sdn Bhd took 36.116m shares (7.80%).</p>
<p>On 8-May-2014, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0508/LTN201405081193.pdf" target="_blank">
launched</a> a placing of 39.8m shares at $1.15 via Kingston Securities Ltd for 
&quot;general working capital and for business development&quot; which
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0527/LTN20140527266.pdf" target="_blank">
completed</a> on 27-May-2014.</p>
<p>On 5-Jun-2014, Town Health bought 46.116m Convoy shares (8.89%) on market at 
$1.55, increasing its stake from 16.19% to 25.07%.</p>
<p>On 30-Sep-2014, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0930/LTN201409301033.pdf" target="_blank">
launched</a> another placing via Astrum, issuing 95.82m shares at $1.00 to raise 
$92.2m net. That
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1015/LTN20141015354.pdf" target="_blank">
completed</a> on 15-Oct-2014. The following month, on 26-Nov-2014, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1126/LTN20141126745.pdf" target="_blank">
lent</a> US$12.26m (HK$95.0m) to an unnamed &quot;limited partnership in the Cayman 
Islands&quot; for 2 years at 10.75% p.a., secured by a share mortgage in respect of 
&quot;certain shares of a company incorporated in the Cayman Islands&quot;. They didn't 
say whether it is listed. This replaced an earlier US$3.59m loan made by Convoy 
to the same borrower on 3-Jun-2014.</p>
<p>On 9-Dec-2014, Convoy
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1209/LTN20141209922.pdf" target="_blank">
lent</a> HK$55m to an individual (human) borrower for 6 months at 15% p.a., 
secured against &quot;certain shares&quot; of a company listed on the HK main board. They 
didn't say which company, or what the loan-to-value ratio is. </p>
<p>On 21-Nov-2014, CFG
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=250063" target="_blank">
disposed</a> of its remaining 138,964,104 shares (22.61%) of Convoy for cash 
off-market at $0.78, the previous day's closing price. 2 of the EDs acquired 
disclosable (over 5%) holdings on the same day at the same price.
<a href="../dbpub/positions.asp?p=44748">Mark Mak Kwong Yiu</a>, who has been 
promoted to CEO of Convoy effective 1-Jan-2015,
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=163502" target="_blank">
acquired</a> 5.26% and Chairman <a href="../dbpub/positions.asp?p=58896">Wong 
Lee Man</a>
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=163503" target="_blank">
acquired</a> 5.54%. They probably
<a href="../ccass/chldchg.asp?i=6059&amp;d=2014-12-16">withdrew</a> those 
shares from CCASS on 16-Dec-2014.</p>
<h3>Hanergy</h3>
<p>On 13-Jun-2014, <a href="../dbpub/positions.asp?p=20802">Ronnie Hui Ka Wah</a> 
(<strong>Dr Hui</strong>) was appointed as ED of Convoy. He was an ED of Town 
Health from 7-Nov-2007 to 30-May-2011. He then became CEO of
<a href="../dbpub/orgdata.asp?p=1894">Hanergy Thin Film Power Group Ltd</a> (<strong>Hanergy</strong>, 
0566) from 3-Aug-2011 until 4-Mar-2013 when he became its Finance Director, 
resigning on 15-May-2014. After leaving Hanergy, Dr Hui rejoined Town Health as 
co-CEO on 3-Jun-2014 rising to CEO on 22-Jul-2014.</p>
<p>Hanergy in our view is a huge HK$117bn (US$15.1bn) bubble at today's record 
high closing price of $2.81, but we'll save the full story for another day.</p>
<p>Oh alright, we can't resist. We'll summarise by saying that Hanergy's 
enormous profit margins depend on the goodwill of its only customer which is 
also its parent group and which takes a long time to pay for its products. 
Hanergy makes equipment and turnkey production lines for the manufacture of 
solar photovoltaic modules. In 2013 it booked a gross profit of HK$2666m on 
sales of $3274m, or 81.4%, and a net profit of $2069m.</p>
<p>Hanergy accounts for revenue and profits on a &quot;percentage of completion 
basis&quot;, which is earlier than actual invoicing. At 30-Jun-2014, Hanergy had net 
tangible assets of HK$8,023m, of which $4157m was gross amounts due from 
contracts with Hanergy Affiliates (revenue which had not been billed) and $1914m 
was receivables from Hanergy Affiliates. It had also made prepayments to Hanergy 
Affiliates of $1540m for photovoltaic modules for solar power plants (Hanergy is 
going downstream), most of which had not been delivered. Add that all up and you 
see that $7611m, or 95% of the net tangible assets, are accounts with Hanergy's 
parent group. So not only is Hanergy in a bubble at 15 times its NTAV, but most 
of the NTAV depends on its parent group not defaulting. The listed company pays 
its parent in advance, but gets paid in arrears, heavily supporting its parent.</p>
<p>Solar energy may be part of a sustainable future, but Hanergy's stock price 
won't be.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=44712">Astrum Capital Management Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63313">China New Economy Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56848">CONVOY FINANCIAL SERVICES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58895">Convoy Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2140683">Dealmatch.com Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2019649">Finsoft Financial Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1894">Hanergy Thin Film Power Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=146623">iAsia Online Systems Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2363770">Luster Wealth Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1019">MELCO INTERNATIONAL DEVELOPMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=44749">OnePlatform Asset Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4789">SoftMedx Healthcare Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11691">Town Health International Medical Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13553">VALUE CONVERGENCE HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=20802">Hui, Ronnie Ka Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=33620">Kwok, Tim Shun Tim</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2134429">Lai, Samson Wai Ho</a></li>
				
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