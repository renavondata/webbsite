
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

<script type="text/javascript">document.title="Take the GM out of GOME";</script>

	<div class="summary">Webb-site looks at the governance battle at GOME (0493), which culminates in an SGM on 28-Sep-2010 for which we give our voting recommendations. We also examine the claims in the SFC's civil action against Wong Kwong Yu.</div>

<h2 class="center">Take the GM out of GOME<br>
<span class="headlinedate">7 September 2010</span></h2>
<p>As many readers will be aware, the incumbent management of
<a href="../dbpub/orgdata.asp?p=4786">GOME Electrical Appliances Holding Limited</a> 
(<strong>GOME</strong>, 0493), led by its Chairman
<a href="../dbpub/positions.asp?p=30041">Chen Xiao</a> (<strong>Mr Chen</strong>), is now in a 
governance battle with former Chairman <a href="../dbpub/positions.asp?p=15217">Wong Kwong Yu</a> (also 
known by the pinyin spelling of Huang Guangyu and formerly known as Wong Chun 
Kit) (<strong>Mr Wong</strong>) and his wife 
<a href="../dbpub/positions.asp?p=15916">Du Juan</a> (<strong>Ms 
Du</strong>). This battle will culminate in a Special General Meeting (<strong>SGM</strong>) 
to be held on 28-Sep-2010, and this article contains Webb-site's voting 
recommendations.</p>
<h3>The players</h3>
<p>Mr Chen is the former Chairman and President of
<a href="../dbpub/orgdata.asp?p=30040">China Paradise Electronics Retail Ltd</a>, 
which GOME
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060829/LTN20060829080.pdf" target="_blank">
acquired</a> in late 2006 after a brief listing. Shareholders of China Paradise 
received about 25.02% of the enlarged issued share capital of GOME. Mr Chen 
currently
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=98775&amp;lang=EN&amp;dia=Y" target="_blank">
controls</a> about 1.38% of GOME. In the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100830/LTN20100830653.pdf" target="_blank">
interim report</a> at 30-Jun-2010, one NED holds 0.01%, and other directors hold 
some minor share options which will have no material impact on the outcome of 
the battle even if exercised.</p>
<p>Mr Wong is the largest shareholder of GOME. At 30-Jun-2010, he held his 33.98% 
interest in GOME via two wholly-owned companies, 
Shinning Crown Holdings Inc. (<strong>Shinning</strong>) and Shine Group Ltd (<strong>Shine</strong>), 
plus two companies wholly-owned by his wife. From 24-Aug-2010 to 31-Aug-010 
Shinning has
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=142395&amp;lang=EN&amp;dia=Y" target="_blank">
increased</a> its stake in the market from 28.22% to 30.22%. Mr Wong has not 
filed any increase in his deemed interest (indeed, his
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=64938&amp;lang=EN&amp;dia=Y" target="_blank">
last filing</a> dates back to 23-Apr-2008, before a 4:1 share split), but if his 
and his wife's other holdings are unchanged, then his interest has increased to 
35.98%. Under the &quot;creeper rule&quot; of the
<a href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H587" target="_blank">
Takeover Code</a> (Rule 26.1(c) and (d)), a person cannot increase his stake by 
more than 2% in a 12-month period without triggering a general offer, so that is 
as far as he can go for now. Incidentally, his failure to file disclosures lines 
him up for a <a href="sdibreaches.asp">quiet parking ticket</a> at 
the magistracy.</p>
<p>On 7-Jun-2009, GOME
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090622/LTN20090622141.pdf" target="_blank">
agreed</a> to issue Convertible Bonds to Bain Capital Glory Ltd, owned by a fund 
managed by Bain Capital Investors, LLC (<strong>Bain</strong>), for about 
US$233m (denominated as CNY1,590m). The bonds pay interest at 5% p.a. 
semi-annually, are due 3-Aug-2016, and are redeemable in US$ at a 12% compound 
annual rate of return less the interest paid. They are convertible at HK$1.108 
per share, using a fixed exchange rate of HKD1=CNY0.88, into 1,627,924,595 
shares.</p>
<p>GOME also agreed to appoint 3 directors nominated by Bain and to use 
its best endeavours to procure that the nominated directors are not removed 
before the expiration of the maximum term, other than a removal proposed by the 
shareholders which shall not be initiated, solicited or recommended by GOME. A 
breach of that covenant, or certain others, would give Bain the right to redeem 
the bonds at 1.5x the principal or an IRR of 25% p.a., whichever is higher. This 
clause came into play at the AGM on 11-May-2010, when Mr Wong
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100512/LTN20100512019.pdf" target="_blank">
voted against</a> the re-election of the 3 Bain nominees, resulting in their 
removal. Immediately after the AGM, the board of GOME
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100512/LTN20100512021.pdf" target="_blank">
re-appointed</a> the same directors to avoid triggering the redemption right. 
However, if Mr Wong, as a shareholder, were to propose the removal of the 
nominated directors, then that would appear to fall within the exemption to the 
covenant.</p>
<p>The fact that GOME entered into such terms, tying its hands on board 
composition with someone who isn't even a shareholder, is questionable corporate 
governance in itself. In the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100823/LTN20100823399.pdf" target="_blank">
circular</a> dated 23-Aug-2010, convening the SGM, GOME said that Bain has 
confirmed that it &quot;plans&quot; to exercise its conversion rights at least 5 business 
days prior to the SGM. So at least they will now become a shareholder, taking 
equity risk without the fallback of high-yield redemption rights, and the rights 
to protected board seats will now drop away. Based on the
<a href="../dbpub/outstanding.asp?i=976">current issued shares</a>, Bain 
will receive 9.76% of the enlarged capital, and Mr Wong will be diluted to 
32.47%. He will then be free to increase his stake to 34.47% without triggering 
an offer.</p>
<h3>Mr Wong's conviction</h3>
<p>On 18-May-2010 Mr Wong was
<a href="http://www.chinadaily.com.cn/china/2010-05/19/content_9866895.htm" target="_blank">
sentenced</a> by a mainland court to 14 years in jail for &quot;illegal business 
dealings, insider trading and corporate bribery&quot; while his wife received a 3.5 
year jail term. She was
<a href="http://www.chinadaily.com.cn/china/2010-08/31/content_11232159.htm" target="_blank">
released</a> last week after her sentence was reprieved, but his appeal was 
rejected and his sentence was confirmed. They were fined CNY800m and CNY200m respectively. The insider 
trading related to Beijing Centergate Technologies (Holding) Co Ltd (<strong>Centergate</strong>), 
a Shenzhen-listed stock, of which he was also a substantial shareholder, and 
Shanghai-listed Sanlian Commercial Co Ltd (<strong>Sanlian</strong>), another 
retailer. Centergate, GOME, and another of his companies, Beijing Pengrun Real 
Estate Development Co (<strong>Pengrun</strong>), were also involved in bribing 
officials, in the total amount of CNY4.56m. GOME and Pengrun were fined CNY5m 
and CNY1.2m respectively.</p>
<p>We note that on 1-Mar-2008, GOME acquired 27m unlisted shares, or 10.69% of Sanlian 
at CNY19.9 or a total of CNY537.3m, becoming its largest shareholder. By 
31-Dec-2008, the market price had collapsed to CNY4.03, resulting in a RMB449.6m 
impairment loss. The price recovered to CNY5.68 at 31-Dec-2009.</p>
<p>Mr Wong is also the subject of a civil action by the SFC, on the back of 
which GOME has recently launched its own action. Let's take a look at the 
background to that.</p>
<h3>Sales and buybacks</h3>
<p>On 20-Sep-2007, Mr Wong (via Shine) sold 170m shares at HK$13.74 
(split-adjusted: 680m at $3.435) in a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080420/LTN20080420130.pdf" target="_blank">
placing</a> via CICC, cutting his stake from 48.06% to 42.84% and raising 
HK$2,336m gross. On 18-Apr-2008, Mr Wong (via Shinning) sold 125.43m shares at 
HK$17.00 (split-adjusted: 501.72m at $4.25)&nbsp; in a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080420/LTN20080420130.pdf" target="_blank">
placing</a> via Goldman Sachs, cutting his stake from 39.48% to 35.55% and 
raising $2,132m gross.</p>
<p>In between those two placings, on 28-Jan-2008, Mr Wong (via Shine)
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=61156&amp;lang=EN&amp;dia=Y" target="_blank">
transferred</a> 50m shares (pre-split), or 1.51% of GOME, to his wife's 
wholly-owned company. On the same day, he and Shine 
transferred 900,087 and 136,037,394 shares (pre-split) or 4.15% of GOME, to 
other &quot;family members&quot;, according to a GOME
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080201/LTN20080201264.pdf" target="_blank">
announcement</a> of 1-Feb-2008. Those relatives did not include his wife or 
minor children, because his disclosed interest
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=61159&amp;lang=EN&amp;dia=Y" target="_blank">
dropped</a> by the same amount.</p>
<p>Between 22-Jan-2008 and 5-Feb-2008, GOME
<a href="../dbpub/buybacks.asp?i=976">repurchased</a> on-market 129.8m of 
its shares for $2,237m at an average price of $17.23 (split-adjusted: 519.2m at $4.31). 
Earlier, on 9-Jan-2008, they had reached a closing high of $20.70 
(split-adjusted: $5.175).</p>
<p>On 7-Aug-2009, the SFC
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=09PR109" target="_blank">
announced</a> that it had obtained an interim injunction from the HK High Court 
to freeze assets of Mr Wong, Ms Du, Shinning and Shine up to $1,655m. Three days 
earlier, the SFC commenced civil proceedings against the two, alleging 
securities fraud. Unfortunately, the <em>ex parte</em> hearing was held in 
Chambers and not open to the public, so the full details of the claim have not 
been published. At a
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=67509&amp;currpage=T" target="_blank">
hearing</a> on 8-Sep-2009, the injunction was
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=09PR129" target="_blank">
continued</a> against Mr Wong and Ms Du. Shinning and Shine have lodged a total 
of 779,255,678 shares with the court.</p>
<p>According to the SFC announcement, it alleges that Mr Wong and Ms Du organised the share repurchases 
to use company funds to &quot;buy shares originally held by Wong&quot; so that he could 
&quot;use the proceeds to repay a HK$2.4bn personal loan from a financial 
institution&quot; and that the share repurchase:</p>
<ul>
	<li>had a negative impact on GOME's financial position and was not in the 
	best interests of the company and its shareholders;</li>
	<li>provided the demand for GOME shares and stabilised its share price 
	when Wong disposed of his shares, thereby enabling him to earn more from his 
	share sale;</li>
	<li>caused a loss of about HK$1.6bn to GOME and its shareholders</li>
</ul>
<p>Of course, these allegations have yet to be tested in court. There are 
several areas which will need to be clarified. If his disclosures of dealings, 
as filed, are correct, then Mr Wong did not sell any shares on the market 
himself, but transferred them to family members. So it appears that the SFC is 
alleging that he benefitted from subsequent sales of the shares by those family 
members, who presumably passed the proceeds back to him.</p>
<p>Non-statutory
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_10.pdf" target="_blank">
Listing Rule 10.06(2)(c)</a> states &quot;an issuer shall not knowingly purchase its 
shares from a connected person and a connected person shall not knowingly sell 
shares to the issuer, on the Exchange&quot;. However, for individuals under this 
rule, the
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_1.pdf" target="_blank">
definition</a> of &quot;connected person&quot; does not extend to relatives other than a 
spouse, or a minor child. Based on the filings, he does not appear to have 
breached that rule, unless it can be shown that he was the beneficial seller and 
the vendors were mere nominees. The transactions might, however, have breached 
the
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_14a.pdf" target="_blank">
Chapter 14A</a> Listing Rules on connected transactions, where the definition of 
&quot;connected person&quot; includes a broader class of relatives, but there is an 
exemption in Rule 14A.31(5) for on-market repurchases, unless the connected 
person knowingly sells shares to the listed company. That might be rather hard 
to prove, since you would have to show that the vendor knew that a particular 
buying broker in the market was acting for the listed company itself, and not 
for anyone else.</p>
<p>However, the SFC is not the enforcer of the Listing Rules, which carry no 
financial penalties. The SFC's 
allegations are much more serious, claiming that the buybacks caused GOME a loss 
of HK$1.6bn. The SFC will need to show that the market price was higher than it 
would have been without the buybacks. It may have some difficulty proving this 
given that after the buybacks ended, the share price remained quite buoyant. 
From 5-Feb-2008 to 18-Apr-2008 (the day before the 
placing that evening), the daily <a href="../dbpub/hpu.asp?i=976">closing 
price</a> of the shares rose 3.7% from $17.62 to $18.28. In the same period, the 
total return on the Hang Seng Index was -1.8%. So the stock out-performed, and 
this was apparently a price at which willing buyers were willing to purchase 
shares.</p>
<p>Not only that, but the market absorbed (split-adjusted) 501.72m shares in the placing 
by Mr Wong's on 
18-Apr-2008 at $4.25, only 1.3% below the average buyback price, even though the 
placees knew that he was the seller. That was the 
day after the 2007 results came out. All of this rather contradicts the notion 
that the market price was artificial. If the buybacks yielded a higher price 
than he could have achieved with a larger placing in Apr-2008, it was at most a 
marginal difference, not a $1.6bn difference.</p>
<p>Given that the buybacks at an average $4.31 (post-split) cost $2.24bn and the 
SFC is alleging a loss of about $1.6bn, they appear to be basing their claim on 
an approximately 71% fall in the share price. From the last day of buybacks, the shares did indeed slide 
74.6% from $4.405 (split-adjusted) to close at $1.12 on 21-Nov-2008, the last 
day of trading before a long-term
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20081124/LTN20081124092.pdf" target="_blank">
suspension</a> after rumours of Mr Wong's arrest circulated. They also accrued 
dividends of $0.0565 per share. However, In the same period, which included the 
onset of the global financial crisis, the total return on the HSI was -47.3%. In 
the same period, the Shanghai Composite Index plunged a similar amount as the 
mainland <a href="incredibubble.asp">stock market bubble</a> burst, 
cooling consumer demand. GOME also reported a
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=70113&amp;con_type=1" target="_blank">
weaker-than-expected</a> outlook with its first-half results. So a large part of 
the fall in the share price had nothing to do with the actions of GOME or Mr 
Wong.</p>
<p>To say that the share buybacks caused the subsequent loss in market 
value of those shares would be a reversal of the arrow of time. Apart from not 
causing the global financial crisis, the bursting of the mainland market bubble, 
and the deteriorating retail environment, Mr Wong could not have known in 
Feb-2008 that he was going to be arrested and charged with economic crimes 9 
months later, setting off a confidence crisis in GOME. Investors feared that 
this signalled some kind of fraud inside the company - after all, there had been 
plenty of precedents for this. After Mr Wong's arrest and detention, the board &quot;<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20081224/LTN20081224432.pdf" target="_blank">suspended 
his executive duties</a>&quot; and his wife resigned as a director, both on 
23-Dec-2008. He
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090119/LTN20090119067.pdf" target="_blank">
resigned</a> as a director on 16-Jan-2009.</p>
<p>On 10-Dec-2008, GOME
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20081210/LTN20081210430.pdf" target="_blank">
announced</a> that it had appointed Ernst &amp; Young (<strong>E&amp;Y</strong>) to 
review internal controls and past transactions. At the time, GOME also reported 
that &quot;the business, operations and relationship with its suppliers has remained 
normal&quot;. That's interesting, because the GOME management now claims in the SGM 
circular that there was a &quot;sudden withdrawal of credit facilities&quot; and an 
&quot;acceleration of payment demands by suppliers&quot; which &quot;occurred following the 
arrest and conviction of Mr. Wong&quot;. That claim is inconsistent with the previous 
statements, and keep in mind that he wasn't convicted until 18-May-2010, just 4 
months ago - so their claim is that these problems persisted after that. These 
claims are contradicted by the healthy 2010 interim report which includes claims 
of a close relationship with suppliers. Similarly, in two letters to 
shareholders published in newspapers on 26-Aug-2010 and 30-Aug-2010, letters 
which GOME has failed to file with HKEx, it states that following Mr Wong's 
arrest, &quot;relations with banks and suppliers were strained almost to breaking.&quot;</p>
<p>On 22-Jun-2009, GOME announced the outcome of the E&amp;Y investigation. Based on 
this, the board concluded that there were no material deficiencies in the 
internal controls system and there had not been any misappropriation of funds or 
assets. They did not express any concerns about the share buybacks, presumably 
because they had none.</p>
<p>It was only on the evening of 5-Aug-2010, a full year after the SFC launched 
its action, that GOME
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100805/LTN20100805636.pdf" target="_blank">
announced</a> that &quot;following an internal investigation over the past few 
months&quot; the board had resolved to sue Mr Wong, and GOME had filed a writ that 
day, for compensation for his alleged breach of fiduciary duties as a director 
of GOME relating to the buybacks. The previous evening, GOME had received a 
letter from Shinning requisitioning the SGM which is now scheduled. GOME did not 
say exactly when the board decided to sue Mr Wong, but stated that the 
requisition was received after that decision.</p>
<h3>&nbsp;The SGM - our recommendations</h3>
<p>At the SGM, GOME is proposing the re-election of the 3 Bain-nominated 
directors, whom it re-appointed right after the AGM. This is procedural - 
directors appointed by the board can only serve until the next general meeting. 
On the other hand, Mr Wong is seeking the removal of Mr Chen and Mr Sun Yi Ding 
(<strong>Mr Sun</strong>), and the appointment of Zou Xiao Chun (<strong>Mr Zou</strong>, 
Mr Wong's lawyer) and Huang Yan Hong (<strong>Ms Huang</strong>, Mr Wong's 
sister).</p>
<p>The choice for independent shareholders seems fairly clear on this - do you 
want candidates nominated by, and in one case related to, a convicted criminal 
who is now serving a long jail term, albeit for crimes mostly unrelated to the 
company, or will you support directors who have been running the company with 
some modicum of apparent success, and non-executive directors whose interests 
will be broadly aligned (after bond conversion) with those of other 
shareholders? We don't know any of them personally and your editor holds no 
shares in this company, but Webb-site recommends that shareholders vote <strong>
AGAINST resolutions 5, 6, 7 and 8</strong> proposed by Mr Wong, relating to the 
removal of Mr Chen and Mr Sun and the appointment of Mr Zou and Ms Huang. We 
also recommend in favour of the re-election of the three Bain directors <strong>
(FOR resolutions 1, 2, and 3), but only if Bain honours its &quot;plan&quot; to convert 
the bonds into shares before the AGM. </strong>We see no reason why bondholders 
who could bring the company to its knees with onerous redemption rights should 
be entitled to board representation. </p>
<p>That only leaves resolution 4, proposed by Mr Wong, to revoke the general 
mandate to issue new shares for cash without offering them to existing 
shareholders first. For many years, independent shareholders in HK-listed 
companies have been voting by a substantial majority against the general 
mandate, and Webb-site has championed this cause through Project VAMPIRE (Vote 
Against Mandate for Placings, Issues by Rights Excepted), launched in 2003. See 
our <a href="../dbpub/subject.asp?c=173">articles on pre-emption rights and the 
general mandate</a> for the history. It is only the lax Listing Rules and the 
controlling shareholders of HK companies which allow this situation to continue, 
by routinely giving themselves a mandate as directors to pick and choose the 
shareholders, thereby inverting the chain of governance.</p>
<p>So we find it rather amusing when a former Chairman and controlling 
shareholder, now on the outside of a company, decides that the general mandate 
that he used to enjoy granting himself is no longer a good idea. In fact, even 
at the 2010 AGM, he voted in favour of the issue mandate, as can be seen in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100512/LTN20100512019.pdf" target="_blank">
voting results</a>. GOME attributed the opposition to the election of the Bain 
directors to &quot;2 affiliated shareholders holding in aggregate 4,758,453,890 
shares&quot;. That is slightly less than the holding attributed to Shinning and Shine 
in the annual report, but we'll take that figure for these purposes. Removing 
them from the &quot;in favour&quot; vote, we can see that other shareholders voted 54.5% 
against the mandate. Adding the 2 shareholders back to the opposition, the vote 
would have been 77.5% against the mandate, and these figures are probably even 
higher if Mr Wong voted all his holding.</p>
<img class="center" alt="AGM 2010" src="../images/gomegm.gif">
<p>We see no reason why independent shareholders should change their opposition 
to the issue mandate. All the usual excuses for the general mandate are trotted 
out by the GOME management, and none of them holds any water. If GOME needs to 
raise cash (it does not claim such need), then it should conduct a rights issue 
and offer the shares to all shareholders. If there is a particular strategic 
investor to whom GOME wishes to issue shares, then it can seek shareholders' 
approval for that in the future. If it wants to issue shares in exchange for an 
acquisition, then it can seek approval at the time. It doesn't take long to do a 
rights issue or seek a specific approval. GOME can conduct a rights issue up to 
1 new share for every 2 held without shareholders' approval.</p>
<p>Webb-site.com recommends that independent shareholders <strong>vote FOR 
resolution 4, to cancel the general mandate</strong>. Take the GM out of GOME.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=30040">China Paradise Electronics Retail Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4786">GOME Retail Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=15916">Du, Juan (1972)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15217">Wong, Kwong Yu</a></li>
				
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