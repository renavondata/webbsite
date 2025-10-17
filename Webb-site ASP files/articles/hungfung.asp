
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

<script type="text/javascript">document.title="Money for Nothing";</script>

	<div class="summary">It was a case of "if it can go wrong, it will go wrong" for toy-maker Hung Fung Group Holdings Ltd. This horror story includes a pointless stock split, the "disappearance" of 3 major customers, an investigation by the ICAC over an alleged credit scam, a riot in a factory, an attempted kidnapping, the PRC's Public Security Bureau, and liquidation petitions for various parts of the group.</div>

<h2 class="center">Money for Nothing<br>
<span class="headlinedate">8 August 2001</span></h2>
<p>In Hong Kong, companies have up to 4 months to issue their
annual results (cut last year from 5 months), and you can be sure that the most entertaining ones come out at
the last minute. Wading through the flood of March year-end results at the end
of July, we came across a company which, if you are not one of its suffering
shareholders, will keep
you entertained for hours just thinking about it. </p>

<p><a href="http://www.hungcheong.com.hk/" target="_blank">Hung Fung Group Holdings Ltd</a> (<b>Hung Fung</b>) was floated on the SEHK main board
on 12-Mar-98, in a deal sponsored by Lippo Securities Ltd and co-sponsored by
Dao Heng Securities Ltd and Capital Asset Management Ltd. </p>

<p>Lippo has been absent from the sponsor market for some years -
Hung Fung was one of their last IPOs, close on the heels of the classic GKC
Holdings Ltd - more about that another time. </p>

<p>The warning signs were there if you read the prospectus in
detail. </p>

<h3>Big jump in track record</h3>

<p>First warning sign: look at the track
record of 3 years and 4 months to 31-Jul-97. Turnover in the last 2 years had
grown 13% and 20%, while profits had grown 19% and 26%. But for the year about
to end, 31-Mar-98, the forecast was profits of not less than $44m, up 84%. </p>

<p>Spectacular growth above a trend should normally be discounted.
All too often with small IPOs, the &quot;prospectus year&quot; on which the
stock is priced becomes the best ever year and it is all down-hill from there. </p>

<h3>Thin Board</h3>

<p>Second warning sign: the board was thin - there were only 3 executive
directors, being the 1986 founder Mr Chan Chun Hung (<b>Mr Chan</b>), his wife
Ms Wong Kin Ching, who joined in 1991, and Ms Wong Wan Kuen, who was <i>&quot;responsible
for the financial operation of the Group&quot;</i> but the prospectus did not state any
accounting qualification. She joined the group in 1995. </p>

<p>Of the two &quot;independent non-executive directors&quot;, one,
Mr Au Son Yiu, was a consultant to Dao Heng Securities Ltd, which was one of the
co-sponsors of the IPO. </p>

<p>While we have no particular criticism of Mr Au, we believe that
in general, links between independent directors and sponsors (or any adviser) should be
discouraged, because it may place a director in a conflict of interest if he
feels on the one hand that he should ring the alarm bell but on the other hand
that it may embarrass a sponsor of the deal. </p>

<p>The other INED was Mr Goh Gen Cheung, now Chairman of <a href="http://www.prosticks.com/" target="_blank">ProSticks.com</a>. </p>

<h3>High pre-IPO dividends</h3>

<p>Third, combined net profits in the 40-month track record were
HK$74.3m, and in the last 16 months before the IPO, Mr Chan, who with his wife owned 100% of
the group, took dividends of HK$72m. This left the group dangerously short of
working capital before the IPO. In Nov-97, just after the HK market crashed, the
group borrowed a short term loan of HK$10m from an unnamed finance company (not
a bank). The prospectus states: </p>

<blockquote>

<p>&quot;Should the group fail... to gain access to the net
proceeds of the New Issue, and should it be unable to generate adequate funds
internally or to obtain further banking facilities, the Group may experience
financial difficulties to repay the short term loan&quot;. </p>

</blockquote>

<p>Now the IPO of 50m shares only raised gross proceeds of HK$50m
and net proceeds of $40m, for the minimum 25% public float. So they were raising
less than they had paid in dividends in the last 16 months.&nbsp; </p>

<p>All of this begs the question, why didn't Mr Chan lend the $10m
to the company himself, and why did he need to take the company public? He could
have taken just $32m in dividends and left the remaining $40m in the company, as
much as was raised by the IPO. Perhaps he had other demands on his resources. </p>

<h3>Float flops</h3>

<p>The IPO was 1.02 times subscribed in its public offer - what is
technically known as a &quot;flop&quot;. There were 196 applications, of which
(amazingly) 149 were for 2,000 shares each, satisfying the SEHK requirement for
100 shareholders. Of the 45m shares offered to the public, 10m went to a
Co-sponsor, and 2m each to two underwriters. That meant that demand from
&quot;independent&quot; investors was only 71% of the IPO. </p>

<h3>What next</h3>

<p>The company got its results for Mar-98 out on 26-Aug-98, near
the 5-month deadline. Of course, it met its prospectus forecast for the Mar-98
results (which was made only a month before the year end) recording exactly
$44.6m net profit, up 86%. </p>

<p>The next interim results for six months to Sep-98 showed not 86%
growth but....0.2% growth in turnover and 0.5% growth in net profit. A 1-cent
dividend was paid, totalling $2m. Writing on 30-Dec-98 Mr Chan stated: </p>

<blockquote>

<p>&quot;the outlook for the second half-year [to 31-Mar-99] is
conservatively optimistic&quot;. </p>

</blockquote>

<p>Referring to the US interest rate cuts he wrote: </p>

<blockquote>

<p>&quot;The traditional peak season around Christmas should be
positively affected by such developments&quot; </p>

</blockquote>

<p>He was certainly in a position to know, 5 days after Santa had
done his stuff and weeks after the last Christmas containers packed with toys
left for America.&nbsp; </p>

<h3>First Placing</h3>

<p>On 12-Jul-99, Hung Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990713/LTN19990713047.HTM" target="_blank">placed</a>
19m new shares to Sino Asia Investments Ltd (owned by a Mr Michael Lee) and 5m
new shares to Entrust Ltd (owned by a Mr Arnold Chan), both at $0.52 per share
and both &quot;independent third parties&quot;. The placing agent was Times
Securities Co Ltd. Net proceeds were $12.77m. The placing, at just over half the
IPO price, may be indicative of financial pressure. </p>

<h3>Results disappoint</h3>

<p>The <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990826/LTN19990826043.HTM" target="_blank">results</a>
for the year to Mar-99 were released on 26-Aug-99, again almost at the 5-month
deadline. Turnover grew&nbsp; 7.8% but pre-tax profit fell 39.2%. The net profit
of $43.4m was cushioned by a one-time recovery of $11.3m of excess tax provided
for in prior years. So much for &quot;conservative optimism&quot;. </p>

<p>No dividend was paid, but the company declared a bonus issue of
1 warrant for every 5 shares held, with an exercise price of $0.47 and expiry
28-Sep-01. </p>

<h3>Second Placing</h3>

<p>The interim <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991217/LTN19991217064.HTM" target="_blank">results</a>
for Sep-99 saw turnover up 16.9% but net profit down by 29.7% to $16.7m. No
dividend was paid. In early 2000, the stock began to take off in the heat of
dotmania. On 8-Feb-00 Mr Chan <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000209/LTN20000209051.HTM" target="_blank">placed</a>
20m existing shares at $1.23 through Kingston Securities Ltd, and subscribed 10m
new shares at the same price, making a net sale. </p>

<p>Next, on 5-Mar-00 the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000306/LTN20000306036.HTM" target="_blank">announced</a>
a UPSS (Utterly Pointless Stock-Split) in which its shares were split 10 for 1,
and the board lot was increased ten-fold to 20,000 shares, meaning that the
minimum transaction size (shares are traded in board lots) would remain the
same. Small-caps are in the habit of declaring stock splits and bonus issues of
shares in the mistaken belief that it somehow makes their shares
&quot;cheaper&quot;, overlooking the fact that investors are happy to own blue
chips which trade at prices in tens of dollars. </p>

<p>On 28-Aug-00 (again near the 5-month limit) the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000828/LTN20000828081.HTM" target="_blank">results</a>
for the year to Mar-00 showed turnover up 20.5% but profits down 39.6% to
$26.2m. No dividend was paid. Hung Fung began talking about its Apr-00 <a href="http://www.toysmatch.com/aboutus.html" target="_blank">investment</a>
in <a href="http://www.toysmatch.com/" target="_blank">Toysmatch.com</a>, a toys
portal whose subscription page is to this day is &quot;under construction&quot;.
Hung Fung also stated: </p>

<blockquote>

<p>&quot;in order to strengthen the sales and profitability, the
Group has set up a new trading company - Chaolian Toys Trading Co., Ltd. (&quot;<b>Chaolian</b>&quot;).
Chaolian is backed up by&nbsp; over 500 toys manufacturing factories in the
[PRC]....it is expected that sales orders will be increased and the trading
business will provide a steady turnover and profitability in the next fiscal
year.&quot; </p>

</blockquote>

<p>Chaolian - remember that name, it comes up later in our story.. </p>

<h3>ICAC</h3>

<p>Now things begin to heat up. On Monday 9-Oct-00 Hong Kong's
Independent Commission Against Corruption (<b>ICAC</b>) 
<a target="_blank" href="../codocs/ICAC001009.PDF">announced</a>
that Mr Chan was arrested on 7-Oct-00 <i>&quot;in relation to
a $90 million credit scam allegedly facilitated by bribery involving a bank's
senior staff.&quot;</i> </p>

<p>A 33-year old former assistant general manager of Dao Heng Bank
was arrested on 4-Oct-00 for having allegedly accepted advantages in return for granting credit
facilities to a subsidiary of Hung Fung. </p>

<p>It was alleged that the banker had accepted advantages from Mr
Chan, including free trips to the Mainland and Macau, in return for approving about 36 letter of
credit applications which were based on bogus business transactions with four different
shell companies. </p>

<p>The ICAC said that as a result, credit facilities totalling $90m
were granted to those shell companies between Apr-99 and Dec-99. ICAC
investigation revealed that two sisters, respectively proprietors of the four
shell companies, were Mr Chan's &quot;close associates&quot;. </p>

<p>Chan had allegedly instructed the sisters to withdraw money from
the accounts of the 4 shell companies on several occasions after Dao Heng
remitted the loans, and the funds were transferred to the bank account of Hung
Fung's subsidiary shortly afterwards. ICAC investigations also revealed that in
Sep-98, the then-bank manager had allegedly prepared a favourable report to
recommend that increased credit facilities be extended to Hung Fung's
subsidiary. </p>

<p>As far as we know, the investigation is continuing, and no
charges have been laid. </p>

<p>Someone must have got wind of the arrest, because the Hung Fung
share price fell 61% from $0.044 on 3-Oct-00 to $0.017 on 5-Oct-00, the last day
before the arrest, amid heavy volume. </p>

<p>On 14-Oct-00, Hung Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001016/LTN20001016048.doc" target="_blank">announced</a>
that all 3 executive directors had resigned, and 3 new executive directors were
appointed in their place, all nominated by Mr Chan. The new directors were 2
professional accountants, Mr Tam Sun-wing (<b>Mr Tam</b>) and Mr Allan Ho
Sun-fung (<b>Mr Ho</b>), and the existing accounting manager, who resigned her
directorship 19 days later. </p>

<p>This was followed on 16-Oct-00 by an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001017/LTN20001017038.doc" target="_blank">announcement</a>
in which Mr Chan &quot;confirmed&quot; to the new board that: </p>

<blockquote>

<p>&quot;the Company and its subsidiaries have never received any
monies, assets or credit facilities by illegal means, and that the latest
available unaudited consolidated management accounts of the Group reveal that
the Group still sustains a profitable operation.&quot; </p>

</blockquote>

<p>To back this up, the new board published extracts from the
latest management accounts (to Jul-00, which says something about the internal
reporting problems) showing 4-month turnover of $84.5m and profits before tax of
$2.46m. Balance sheet items were also produced.&nbsp; </p>

<p>The announcement also revealed that Mr Chan pledged 762.84m
shares (about 31% of the company) to Shenyin Wanguo Securities (HK) Ltd and 300m
shares (12%) to Hantec Finance Ltd between 21-Sep-00 and 5-Oct-00 and that none
had been sold. </p>

<h3>Convertible Note</h3>

<p>On 3-Nov-00 Hung Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001103/LTN20001103029.doc" target="_blank">announced</a>
the issue to HK-listed Wang On Group Ltd (<b>Wang On</b>) came in with HK$3m for a 2-year 5%
note&nbsp; convertible at $0.015 per share, representing 7.45% of the enlarged
share capital. Thomas Chan Chun-hong, a director of Wang On, was appointed as an
executive director of Hung Fung. </p>

<p>All of the banks of the Group had suspended or terminated their
credit facilities and some of them wanted their money back. Total debts to banks
and lessors amounted to $126m, and accounts receivable stood at $69m. </p>

<p>The directors also noted that cash and bank balances were down
to $1m compared with $66m in the Jul-00 management accounts. A bank steering
committee would appoint independent investigating accountants and this was
one of the things they would seek to explain. </p>

<p>It also emerged that Mr Chan had pledged his entire 62.7%
holding in Hung Fung to Kingtson Group Holdings Ltd. Disclosure reveal that this
was at least 1/3 owned by a Ms Carman Choi Ka-man. </p>

<p>On 17-Nov-00, Hung Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001121/LTN20001121012.doc" target="_blank">received</a>
a notice from Mr Chan after a High Court order to stop the transfer of the
shares. On 1-Dec-00 the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001204/LTN20001204018.doc" target="_blank">reported</a>
that Mr Chan had repaid the loan to Kingston (disclosures showed this happened
on 24-Nov-00) and on the same day pledged the stock to a new
lender called E-Bigger Investment Ltd which was giving &quot;urgent
and active consideration&quot; to providing the Company with a working capital
loan of HK$30m. That money has not, as far as we know, come through, and the
owners of E-Bigger have not been disclosed.&nbsp; </p>

<h3>Entire board replaced</h3>

<p>On 7-Dec-00, Hung Fung announced that both the independent
non-executive directors had <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001208/LTN20001208043.doc" target="_blank">resigned</a>
along with executive director Mr Tam, who had served just 2 months. Five days
later, Mr Ho <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001213/LTN20001213035.doc" target="_blank">resigned</a>,
meaning that all the executive directors appointed on 11-Oct-00 had now
resigned. The entire board had changed in the space of less than 2 months. </p>

<p>On 7-Dec--00 Mr Charles Lo Ming-chi (<b>Mr Lo</b>) was appointed as executive
Chairman and two new INEDs, Mr Wu Wing Kit and Mr Simon Yuen Chi-choi were
appointed on 7-Dec-00. </p>

<p>Mr Lo is an accountant and an executive director of a small
HK-listed loss-making food and property group called Multi-Asia International
Holdings Ltd. Mr Wu has numerous independent directorships and is or was a partner
with law firm Fred Kan &amp; Co, while Mr Yuen is an accountant. Four days later Mr Richard Chin Wai-keung (<b>Mr
Chin</b>) was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001212/LTN20001212036.doc" target="_blank">appointed</a>
as an executive director. </p>

<p>On 28-Dec-00 Hung Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001229/LTN20001229034.doc" target="_blank">announced</a>
a delay to its interim results because: </p>

<blockquote>

<p>&quot;the accounting records of many subsidiaries and associates
of the Group are incomplete.&quot; </p>

</blockquote>

<h3>Stock suspended</h3>

<p>On 22-Jan-01 the stock was suspended at $0.013 and has not
traded since. </p>

<h3>Factory blockade</h3>
<p>On 28-Mar-01 Hung Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010328/LTN20010328027.doc" target="_blank">released</a>
an update on the now dire situation. They reported that 3 of the 4 accounting
staff had left in Nov-00, and revealed that the then directors had conducted a
visit to the Dongguan <a href="http://www.hungcheong.com.hk/image/frontsight.jpg" target="_blank"> factory</a> (which operated under a processing agreement) in
an attempt to gather accounting records. In a masterpiece of understatement,
they wrote:</p>
<blockquote>
  <p>&quot;As the Factory handles the entire production of toys for the Group, the Directors are of the view that the financial results derived from its production activities may be material to the Group as a whole.&quot;</p>
</blockquote>
<p>No kidding. However, the scouting mission was unsuccessful because</p>
<blockquote>
  <p>&quot;at that time access to its premises was denied by some
  of the Group's PRC creditors who were demanding payment of sums due from the
  Group for raw materials purchased.&quot;</p>
</blockquote>
<p>The blockade was subsequently lifted and the board sent the
auditors to conduct a factory visit at the end of Feb-01. Modest production was
underway, with about $10m of orders in the first quarter of 2001 and sales of
$11.5m in the last quarter of 2000. Bank debts at 31-Dec-00 were estimated at
$126m of which $31m was due in the Mainland. On the assets side, In relation to <b> 3
customers</b>, they
wrote:</p>
<blockquote>
  <p>&quot;Based on information available to the Directors, the Group recorded account receivables of about HK$103 million due from Fei Da Trading Limited, Nan Yue Light Industries Trading Limited and Wei Er Bao Toys Limited, three major PRC debtors of the Group, as at 31 August 2000 which accumulated since April 2000 and remain unsettled up to date.&quot;</p>
</blockquote>
<p>The investigating accountants were named as Deloitte Touche
Tohmatsu. Litigation from customers and bankers was piling up.</p>
<p>Meanwhile on 5-Mar-01, Wang On had sold the $3m convertible note
to an &quot;independent third party&quot;.</p>
<p>On 11-Apr-01 Mr Chin <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010412/LTN20010412090.doc" target="_blank">resigned</a>
his executive role after 4 months on the job and briefly became an
&quot;independent&quot; non-executive director before the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010423/LTN20010423107.doc" target="_blank">realised</a>
that you cannot qualify as independent if you've been an executive, so he's just
a non-executive director.</p>
<p>On 4-Jun-01 Hung Fung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010605/LTN20010605017.doc" target="_blank">announced</a>
that Sin Hua Bank Ltd had petitioned to have Hung Fung and its subsidiary
wound-up for amounts due of $12.2m, while Wing Hang Finance Co Ltd had filed a
writ for $2.28m due.</p>
<h3>Riots, vanishing customers, attempted kidnap</h3>

<p>Results statements from Hung Fung seem to come in pairs - on
26-Jul-01 we got
the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010730/LTN20010730054.doc" target="_blank">interim
results</a> to 30-Sep-00 and the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010730/LTN20010730053.doc" target="_blank">final
results</a> to 31-Mar-01. It now emerged that 9 months earlier, there had been a
riot in the factory in which some of the plant and machinery were
&quot;seriously damaged&quot; and:</p>

<blockquote>

<p>&quot;due to the relocations of the Group's accounting department from Hong Kong to the PRC and a riot in the Group's PRC factory in October 2000, certain underlying books and records of certain of the Company's subsidiaries were either lost, or could not be located&quot;</p>

</blockquote>
<p>In our world, that which cannot be located is best described as
&quot;lost&quot;, a term which might also be applied to the three PRC major
customers of the toys trading business whom we mentioned earlier - the board now
wrote:</p>

<blockquote>
  <p>&quot;The major customers for trading toys were 3 PRC customers and in turn they became the 3 major debtors of the Group. However, upon the Group's attempts to collect the debts from the 3 major PRC debtors when the debts were due, it was found that they had all disappeared and could no longer be located.&quot;</p>

</blockquote>

<p>The 3 vanished &quot;customers&quot; owed $117m to Hung Fung at
31-Oct-00, up from $103m at 31-Aug-00. Since the toys trading business began in
Apr-00, these new customers had never paid their bills. As the board put it, the
customers &quot;were granted particularly favourable terms&quot;.</p>

<p>Now remember that toy trading company, Chaolian, which in Aug-00
Mr Chan said Hung Fung group had &quot;set up&quot;? It certainly was a set-up.
It turns out that Hung Fung did not own it all, but that it was a sole
proprietorship in Chao Zhou, PRC owned by a Mr Lam Man Lung (Mr Lam). Hung Fung
now says:</p>

<blockquote>

<p>&quot;the Group's business relationship with Chaolian ended abruptly in mid-December 2000 when Mr. Lam Man Lung was arrested by the 'gong an' (Public Security Bureau of the PRC) for his involvement in the attempted kidnap of Mr. Chan...
and the demand of a ransom.&quot;</p>

</blockquote>

<p>Well we guess that is the kind of behaviour that would sour a
relationship! Hung Fung wrote off $20m of &quot;unrecoverable inventories&quot;,
financial support to Chaolian and deposits with other toys suppliers made
through Chaolian. Hung Fung also discontinued its investment in Toysmatch.com
and wrote off the $4.3m receivable from it.</p>

<p>It remains unclear whether there is any connection or identity
between the 4 &quot;shell companies&quot; in the ICAC announcement and the 3+1
PRC customers and Chaolian. Perhaps the equation of numbers is a coincidence.</p>

<p>All told, Hung Fung reported a loss for the year of $279m, or
about 11.25 cents per share, 9 times its pre-suspension stock price, leaving it
with net liabilities of $70m. The auditors disclaimed their opinion.</p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5047">CMBC Capital Holdings Limited</a></li>
				
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