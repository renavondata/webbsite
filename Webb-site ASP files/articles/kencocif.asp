
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

<script type="text/javascript">document.title="The Baron Network";</script>

	<div class="summary">In another exclusive, Webb-site.com blows the lid off a network of cross-holdings involving Kenfair (0223), Cosmopolitan (0120), GR Investment (0310), Golden Resources (0677) and China Investment Fund (0612), probably involving multiple breaches of Listing Rules and possibly the Takeover Code, but as yet there has been no regulatory action.</div>

<h2 class="center">The Baron Network<br>
<span class="headlinedate">14 April 2004</span></h2>
<div class="regbox">
  <p><b>Correction, 21-Apr-04</b></p>
  <p>In the original version of this article, we 
  suggested that China Investment Fund was in breach of a Listing Rule 
  requirement that not less than 25% of its shares be held by the public. We 
  were wrong - believe it or not, investment companies listed under Chapter 21, 
  including CIF, are exempt from this rule, so there is no ongoing requirement 
  that they have shares in public hands. We withdraw the suggestion and 
  have amended the article accordingly.
</div>
<p>In our article <a target="_blank" href="kunfair.asp">Kunfair 
Transactions</a> on 28-Jan-03 we  warned you about strange events at exhibition 
organiser <a target="_blank" href="../dbpub/articles.asp?p=15471">Kenfair 
International (Holdings) Ltd</a> (<b>Kenfair</b>, 0223), the IPO of which was 
sponsored by Baron Capital Ltd (<b>Baron Capital</b>).</p>

<p>Things have gotten a lot worse since then, and now <i>
Webb-site.com</i> can reveal how  a network of cross-holdings has been built in the last year which 
involves five listed companies, one listed warrant and probably multiple 
breaches of the Listing Rules and even the Takeover Code. And so far, the 
regulators at HKEx and SFC have done nothing to stop it. Even as we write, one of the 
companies has launched another equity fund raising.</p>

<p>It will take a while to explain all this, but first, a picture 
may help whet your appetite:</p>

<img class="center" alt="" src="../images/kencoc1.gif">

<p>OK, that's the fun part over with, now where shall we start?</p>

<h3>China Investment Fund - background</h3>

<p>China Investment Fund Co Ltd (<b>CIF</b>, 0612) is a closed-end 
investment company listed on 2-Jan-02 under Chapter 21 of the Listing Rules.</p>

<p class="regbox">Regulatory note: Chapter 21 is one of the weakest areas of the 
rules, and we've written in the past about the problems - see our article on
<a target="_blank" href="chinatreasure.asp">China Treasure's Love for Yanion</a>, 
for further information.</p>

<p>60m 
CIF shares were issued at HK$0.50 each in an IPO, raising $26.01m net of expenses. 
Prior to the IPO, 20m shares had been issued at the same price, of which 16m 
(20%) were subscribed by then 
Chairman of CIF, Terry Hung Fung (<b>Mr Hung</b>).</p>
<p>The listing sponsor was Baron Capital and the investment 
manager was Baron Asset Management Ltd (<b>Baron AM</b>), which was then wholly-owned by Joseph 
Wan Chuen Chung (<b>Joseph Wan</b>), one of the stars of our story. In 1998, 
following an inquiry into the behaviour of his firm, Goldwyn Capital, the SFC
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=090398">
suspended</a> Joseph Wan's investment adviser licence for 12 months, but you 
can't keep a good man down, and he has more than made up for lost time since 
then. Baron Capital and Baron AM are now subsidiaries of Baron 
Strategic Holdings Ltd (<b>Baron</b>), a BVI company 50% owned by Joseph Wan and 50% by his wife, Mak Wai Chun (<b>Ms Mak</b>).</p>
<p>When CIF was floated, Baron AM didn't yet have a licence, so the interim investment manager 
was Hantec Asset Management Ltd, which is wholly-owned by Hantec Investment Holdings Ltd (<b>Hantec</b>, 
0111). HT Securities Ltd, also owned by Hantec, was lead manager of CIF's IPO. You may recall that Hantec Capital Ltd, 
yet another subsidiary, was the independent financial adviser to Kenfair in a highly 
questionable
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030115/LTN20030115033.PDF">
transaction</a> with Baron group last year.</p>
<p>Alexander Wan Chuen Hing (<b>Alexander Wan</b>), 
brother of Joseph Wan, has been an executive director of CIF since 30-Nov-01, 
before the IPO. He's also been the &quot;IT Business Director&quot; of Kenfair since 2002, 
but not on the board of directors.</p>
<p>In a curiously worded
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021216/LTN20021216132.pdf">
announcement</a>, CIF said on 16-Dec-02 that Mr Hung's office as Chairman had been <i>
&quot;vacated&quot;</i> and his employment <i>&quot;terminated&quot;</i> with effect from 16-Dec-02. 
Not exactly a warm goodbye.</p>
<p>The 2002
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030408/LTN20030408073.htm">
annual report</a> shows that CIF had done almost nothing with its money for a 
year. In the first half of the year it invested HK$3.16m in 10m shares of mainland 
property developer Zhong Hua International Holdings Ltd (<b>Zhong Hua</b>, 
1064) which by year end had fallen 59.5%, resulting in a loss of $1.88m. Apart 
from that, it had racked up operating expenses of $4.21m including directors' 
pay of $1.24m, and as a result it was down to $30.05m of net assets, of which 
94.9% was in cash. NAV per share was $0.376, 24.8% below the IPO price.</p>
<p>In a pure coincidence, Charles Koo Ming Yan was an INED of Zhong Hua until 11-May-99 
and was an INED of CIF from 23-Oct-01 to 30-Jun-03.</p>
<p>By the 30-Jun-03
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030908/00612/EWF101.pdf">
interim report</a>, CIF had made no further investments and had successfully 
shrunk its net assets by a further 6.3% to $28.15m ($0.352 per share), mostly by 
operating expenses. 94.4% of net assets were cash. We'll come back to CIF later 
in the story, but first...</p>

<h3>A brief history of Cosmo</h3>

<p>The next network player to introduce you to is Cosmopolitan 
International Holdings Ltd (<b>Cosmo</b>, 0120) which was once controlled by Eric Hotung, grandson of the 
late and famous comprador Robert Hotung. Unfortunately Cosmo made all 
the wrong bets on US tech stocks during the bubble and racked up
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010801/LTN20010801066.htm">losses</a> of 
HK$198m in the 15 months to 31-Mar-01, and together with property write-downs, 
this reduced net assets from $359.1m to just $140.4m. By 
then, Mr Hotung had lent the company $115.6m to keep it afloat, interest free.</p>

<p>In the year to 31-Mar-02, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020730/LTN20020730081.htm">lost</a> another $45.1m. 
mostly on its investments which were nearly all liquidated by the balance sheet 
date. Write-downs on property values further reduced NAV to $71.1m, down over 
80% from the figure at 31-Dec-99.</p>

<p>On 19-Apr-02, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020419/LTN20020419126.doc">
announced</a> a placing of 9m new shares (7.65% of the enlarged company) at 
$0.58 each to Ms Shirley Chong Sok Un. The placing agent was Shenyin Wanguo 
Capital (H.K.) Ltd, of which she was CEO until 18-Jul-00. The issue price was a 
25.64% discount to market price, and despite it being a single-placee deal, the 
brokerage got a fee of 2.5%.</p>

<h3>Change of Control of Cosmo</h3>

<p>On 16-Dec-02, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021217/LTN20021217033.doc">
announced</a> a restructuring in which Gold Capital Ltd (<b>Gold Capital</b>), a 
BVI company, would subscribe 176.5m new shares at $0.31 per share, leaving Gold 
Capital with 60% of Cosmo.  The gross subscription was $54.72m but just $49m after expenses, 
presumably including advisers' fees. As was made clear in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030217/LTN20030217045.pdf">
circular</a> of 14-Feb-03, this plus cash in the company was enough to repay the 
$54m outstanding loan from Mr Hotung. One of the financial advisers to Cosmo was 
Baron Capital. </p>

<p>The subscription price was a 31.1% discount to the market price 
before the announcement, and a 52.3% discount to the net asset value at 
30-Sep-02, but the circular also included an independent devaluation of Cosmo's 
investment properties, reducing NAV to $35.7m or $0.30 per share. The deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030304/LTN20030304016.doc">
approved</a> by independent shareholders on 3-Mar-03, and completed on 5-Mar-03.</p>

<p>Gold Capital was owned by a 
number of individuals, including 51.67% held by Emmanuel Kao Chu Chee, a partner 
of law firm
<a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/member_firm.asp?id=30401">
Kao, Lee &amp; Yip</a>, and 7.5% by Robert Ma Ching Chung (<b>Mr Ma</b>). On 
23-Dec-03 Mr Ma 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031223/LTN20031223133.pdf">bought out</a> all the other shareholders of Gold Capital.</p>

<h3>New board at Cosmo</h3>

<p>As is so often the case, upon completion of the change of 
control, all the directors (including the independent non-executive directors) 
resigned and new ones were appointed.</p>

<p class="regbox">Regulatory note: INEDs in Hong Kong really have no independence 
because controlling shareholders (of whom they are supposed to be independent) 
are allowed to vote on the INEDs election. So the INEDs come and go with the 
controlling shareholders.</p>

<p>One of the two new INEDs of Cosmo was Sunny Lok 
Shing Kwan (<b>Mr Lok</b>), who has been an INED of CIF since 23-Oct-01, before 
the fund's IPO. He is also an INED of <a target="_blank" href="../dbpub/articles.asp?p=16414">LeRoi Holdings Ltd</a> (0221), the 
stock of which has been suspended since 27-Feb-04. LeRoi is reportedly involved 
in an ICAC 
investigation. Mr Lok was also an Executive Director of 
<a target="_blank" href="../dbpub/articles.asp?p=5014">Asia 
Resources Holdings Ltd</a> (0899) from 16-Oct-00 to 23-Jan-01.</p>

<p>The other new INED of Cosmo was Mr Tang Ping Sum (<b>Mr Tang</b>), the Deputy 
Chairman and General Manager of Hantec, which later did placing work for Cosmo.</p>

<p>On 5-Mar-03, Cosmo
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030305/LTN20030305070.doc">
announced</a> a placing by Gold Capital of 17.2m shares in the market at $0.31 
per share through &quot;Ping On Securities Ltd&quot;, now known as Ping An Securities Ltd 
(<b>Ping An</b>), which is a subsidiary of Baron. This placing,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030310/LTN20030310087.pdf">
completed</a> on 10-Mar-03, was necessary to restore the free float to 25.01%, 
and left Gold Capital with 54.2%.</p>

<h3>Cosmo and GR Investment swap shares</h3>

<p>Three weeks after the change of control at Cosmo, the deal-making 
began, and assisted by Baron, a network of companies began to spin a web of 
cross-holdings. On 28-Mar-03, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030331/LTN20030331027.pdf">
announced</a> it would &quot;subscribe&quot; for 115,230,120 shares (10.67% of the 
enlarged capital) of <a target="_blank" href="../dbpub/articles.asp?p=1458">GR Investment International Ltd</a> (<b>GRI</b>, 0310), 
which is yet another investment company listed under Chapter 21 of the Listing 
Rules back in 1992.</p>

<p>However, Cosmo wasn't &quot;subscribing&quot; in cash. Instead, it was 
issuing 23,840,733 new shares (7.50% of the enlarged Cosmo) to GRI, which just 
happened to round up Cosmo's issued share capital to exactly 318,000,000 shares. 
It was in fact a share swap, in which you could just as validly say that GRI was 
&quot;subscribing&quot; shares in Cosmo. The notional price was $0.29 
per Cosmo share, and $0.06 per GRI share.</p>

<p>The financial advisor to Cosmo was Baron Capital, and at the 
same time, Baron AM agreed to subscribe cash at $0.06 per 
share for 64,749,790 new GRI shares (6.00% of the enlarged GRI) at a total cost 
of $3.88m. The deal was completed on 29-Apr-03.</p>

<p>Prior to the deal, the largest shareholder of GRI was  
Golden Resources Development International Ltd (<b>GRD</b>, 0677), with 28.45%, 
which was diluted to 23.70% by the subscription. In a cross-holding, GRI owns 
5.10% of GRD.</p>

<h3>Market Choice</h3>

<p>GRD and GRI also have an unlisted BVI investment vehicle called 
Market Choice Investments Ltd, 40% owned by GRD and 20% by GRI. We don't know 
what that company owns, or who owns the other 40%, but we do know that according 
to GRI's accounts, at 31-Dec-03, the 20% stake was worth $13m, implying that 
Market Choice was worth about <b>$65m</b>. Perhaps it owns stakes in some of the 
companies in this article.</p>

<h3>GRD invests in Cosmo</h3>

<p>Building the network of cross-holdings, on 9-Apr-03, while the 
Cosmo/GRI share swap was pending, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030409/LTN20030409105.pdf">
announced</a> that GRD would subscribe $8.747m cash for a one-year zero-coupon 
convertible note in Cosmo, convertible at $0.25 per share, an 8.7% premium to 
market price and a 0.99% discount to the 10-day average. The note was issued on 
19-May-03. The financial adviser to Cosmo was again Baron Capital.</p>

<p>The underlying Cosmo shares were equivalent to 11.9% of the issued 
shares. GRD converted $1.5m of the note on 7-Jul-03 and has also bought and sold 
shares in the market, and taken up its entitlements in an open offer of Cosmo. 
By 9-Feb-04, the latest available data, GRD owned 2.71% of Cosmo and held a 
6.49% interest through the remaining $7.247m of convertible note.</p>

<h3>GRI makes an open offer</h3>

<p>On 30-Apr-03, the day after the share swap with Cosmo was 
completed, GRI's stock was suspended, until the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030507/LTN20030507012.pdf">
announcement</a> on 6-May-03 that GRI would make a 10:1 consolidation of its 
shares, and an open offer of 3 new shares for every share held at par value of 
$0.10 per consolidated share, a 72.0% discount to the 10-day average price. The 
&quot;manager&quot; of the deal was Baron Capital, and the underwriters were GRD, Baron 
Capital, and Ping An, for a fee of 1.5%.</p>

<p>GRD undertook to take up its entitlement and had priority in the 
underwriting for just enough shares to raise its stake up from 23.71% to 29.96%, 
just below the takeover threshold, to reverse the effect of the dilution which 
had taken place in the Cosmo/GRI share swap.</p>

<p class="regbox">Regulatory note: deep discount open offers are a form of 
minority shareholder abuse, because unlike in a rights issue, there is no 
ability for shareholders to sell their entitlements. The only option is for them 
to sell their shares before the shares go ex-entitlement. For this reason, the 
UK Listing Authority under
<a target="_blank" href="http://www.fsa.gov.uk/pubs/ukla/chapt04-3.pdf">UK 
Listing Rule 4.26</a> limits the issue discount of open offers to 10% against 
market price. But Hong Kong has no such rule, and it is a glaring loophole which 
leaves shareholders with a gun to their head - give us your money and take up 
your entitlements, or get massively diluted.</p>

<p>The net proceeds of <b>$31m</b> were intended for making investments in 
HK-listed securities. The offer
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030715/LTN20030715108.pdf">
closed</a> on 10-Jul-03 75.50% subscribed, and GRD's wishes were fulfilled, 
raising its stake to 29.96%, while&nbsp; Baron ended up with 18.12% of GRI, 
including the 6% it already held before the open offer. On 17-Feb-04, the 18.12% stake in GRI was transferred from Baron 
to International Securities Investments Ltd (<b>ISI</b>), a wholly-owned Samoan 
company, which in turn was transferred to Ms Mak, the wife of Joseph Wan, on 
20-Feb-04.</p>

<p>Cosmo took up its open offer entitlements and then sold 17m 
shares at $0.136 on 19-Sep-03 in an off-market transaction, reducing its holding 
to 6.74% of GRI, the latest known stake.</p>

<h3>No General Offer for GRI</h3>

<p class="regbox">Regulatory note: so now we have GRI which is 29.96% owned by GRD, 18.12% owned by 
Joseph Wan's wife, and 6.74% by Cosmo. If GRD was acting in concert with either Baron 
or Cosmo or both, as all the relationships in this article suggest, then the concert party would have breached the takeover 
threshold and a general offer would be required for GRI. The three parties 
together hold 54.82% of GRI. We raised this possibility with the SFC on 8-Mar-04 
but there has been no public action so far.</p>

<h3>Cosmo makes an open offer</h3>

<p>On 27-Jun-03, Cosmo, again advised by Baron Capital,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030627/LTN20030627095.pdf">
announced</a> an open offer of 2 new shares for every 5 shares held at $0.10 per 
share, a deep discount of 45.1% to the 10-day average price and 58.0 % to the 
net asset value at 31-Mar-03, raising about <b>$12m</b> net of expenses.</p>

<p>Gold Capital, which at that time still held 51.25% of Cosmo, 
took up its entitlements, while Baron Capital underwrote the rest for a 2.5% 
fee. The offer raised $12m net of expenses intended for investments in the 
property market. GRI also took up its entitlement, maintaining its stake at 
7.36%.</p>

<p>The offer
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030811/LTN20030811088.pdf">
closed</a> on 6-Aug-03 65.81% subscribed, and Baron ended up with 9.77% of 
Cosmo. Baron has since sold down its Cosmo holding in a number of off-market 
sales to unknown parties, dropping below the 5% radar on 
4-Sep-03, when it held 21,866,092 shares (4.82% of Cosmo). On 15-Sep-03, Gold 
Capital bought 16,356,092 Cosmo shares in an off-market transaction at $0.205 
per share, and it 
seems statistically likely that these came from Baron, given that the last 4 
digits of the holdings match (the board lot is 20,000 shares).</p>

<h3>Kenfair loads up on Cosmo</h3>

<p>Cosmo wasn't through with raising cash. On 1-Sep-03, it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030902/LTN20030902047.pdf">
announced</a> a best-efforts placing of 42m new shares through Hantec Capital 
Ltd, wholly owned by Hantec, at $0.15 per share. You will recall that the Deputy Chairman and General 
Manager of Hantec, is an &quot;independent&quot; non-executive director of 
Cosmo.</p>

<p>Despite being a non-underwritten deal, the broker received a 2.5% 
commission on the placing. On 11-Sep-03, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030911/LTN20030911102.pdf">
announced</a> that the placing would be increased to up to 80m shares. By now, 
as the market price had risen, the placing discount to market price had 
increased to 26.83%. On 2-Oct-03, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031002/LTN20031002086.pdf">
announced</a> that the placing had been completed on 30-Sep-03, with 78.5m 
shares being issued, raising about <b>$11.4m</b> net of expenses.</p>
<p>According to SFO filings, Kenfair took 38m of the placing 
shares, and Senta Wong (<b>Mr Wong</b>), Chairman and CEO of Wong's Kong King 
International (Holdings) Ltd (0532) took 40m shares. However, Mr Wong didn't 
hold them for long. On 10-Dec-03, he disposed of the whole lot at $0.21 per 
share for a swift 40% profit, and Kenfair acquired 40m shares at $0.21. Assuming 
these off-market trades were the same shares, Kenfair had ended up with 78m out 
of the 78.5m shares, or 99.4% of the placing. The other 0.5m shares were probably placed 
with 4 or more third parties in order to satisfy the Stock Exchange requirement 
of not less than 6 placees, failing which the placees would have to be named.</p>

<p class="regbox">Regulatory note: this example demonstrates why the general issue 
mandate is such a bad idea. It is practically impossible for the regulators and 
investors to be sure that shares issued to selected placees at generous 
discounts are actually going to genuinely independent investors. Its another 
reason to vote against the general mandate for every listed company you own, unless it 
complies with the recommendations of <a target="_blank" href="vampire1.asp">
Project Vampire</a>, or until the Listing Rules are amended to require it.</p>

<p>Meanwhile, on 11-Nov-03, Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031112/LTN20031112027.pdf">
announced</a> that Gold Capital, which held 50.02% of Cosmo, would place up to 
115m existing shares (21.6%) on a best efforts basis through Ping An at $0.20 per share.  According to 
SFO filings, of the final placing of 111.9m shares, Kenfair acquired 14.8m of these Cosmo shares, 
and GRI acquired 19.4m shares, taking its stake in Cosmo up to the current level 
of 9.92%. We don't know who took the rest of the placing. </p>
<p>As a result of these deals, between 29-Sep-03 and 10-Dec-03, 
Kenfair had acquired a total of 92.8m shares (17.44%) of Cosmo for 
$17.06m, an average of $0.184 per share.</p>

<p class="regbox">Regulatory note: the consideration amounted to 23.10% of 
Kenfair's net tangible assets at 31-Mar-03, more than the 15% threshold, so it 
appears that Kenfair has breached the Listing Rules by failing to treat the 
acquisition of the 17.44% stake in Cosmo as a &quot;Discloseable 
Transaction&quot; under the Listing Rules, which would require an announcement and 
a shareholders' circular. We reported this to SEHK on 7-Mar-04 but there has 
been no public action as yet.</p>

<h3>The Takeover of CIF</h3>
<p>On 15-Sep-03, CIF
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030915/LTN20030915121.pdf">
announced</a> that Cosmo had that day purchased 20.896m existing shares 
(26.12%) of CIF from several shareholders at $0.35 per share, a 69.9% premium to 
the market price, but close to the net asset value at 31-Aug-03 of $0.34 per 
share, for a total of $7.31m. The six vendors included three departing 
directors. The market price jumped 72.3% on the news, closing at $0.355 on the 
first day, 16-Sep-03, close to net asset value.</p>
<p>The only remaining substantial shareholder was former Chairman Mr 
Hung, with 15.996m shares (19.995%). On 29-Sep-03 in off-market 
transactions, he disposed of his entire holding at $0.315 per share, and ISI, wholly owned by Baron, purchased the same number of 
shares at the same price. On 20-Feb-04, ISI 
was transferred from Baron to Ms Mak, the wife of Joseph Wan.</p>

<p>According to SFO filings, on 3 days between 17-19-Sep-03, Kenfair bought 15.436m shares (19.3%) of CIF in the market, at an average of 
$0.347 per share for a total cost of HK$5.358m. No announcement was made.</p>

<p>Cosmo also topped up its CIF stake in the market on 
19-Sep-03, buying 2m shares at an average $0.328 to reach 28.62%, just below the 
takeover threshold of 30%. Then on 24-25-Sep-03 it sold 5m shares, cutting it's 
stake to 22.37%. The latest information is a holding of 22.41% on 19-Mar-04.</p>

<h3>No General Offer for CIF</h3>
<p>So after the dust had settled, at 29-Sep-03, Kenfair, Baron and 
Cosmo owned a total of 61.66% of CIF. If any 2 of these 3 parties were 
acting in concert (as their other cross-shareholdings and relationships 
suggest), then the 30% takeover threshold had been breached and a general offer 
was due at up to $0.35 per share. But no offer was forthcoming.</p>

<p class="regbox">Regulatory note: we reported this possible breach of the 
Takeover Code to the SFC on 8-Mar-04 but there has been no public action so 
far.</p>

<p>You will recall that it was on 29-Sep-03 that Kenfair began 
amassing its stake in Cosmo by participating in a placing first announced 
on 1-Sep-03. A triangle was being built. By 10-Dec-03, Kenfair owned 17.44% of 
Cosmo, and the two companies owned 41.67% of CIF between them.</p>
<p>Apart from Kenfair, two other individuals were acquiring CIF 
shares in the market. On 16-Sep-03 and 19-Sep-03, Lam Sai Mann acquired a total 
of 7.6m shares (9.50%) at an average of $0.347 per share, and from 22-25-Sep-03, 
Lenda Cheng Fat Ning acquired 14.396m shares (18.00%) at an average of $0.319 
per share. We do not know anything about these individuals or why they see CIF 
as such a good bet.</p>
<p>As a result, the holdings in CIF are now highly concentrated, 
with 5 shareholders, Baron, Cosmo, Kenfair, Lenda Cheng Fat Ning and Lam Sai 
Mann in aggregate holding 89.19% and the rest of the public holding just 10.81% 
of CIF. </p>

<h3>Kenfair issues listed warrants</h3>

<p>On 17-Oct-03, Kenfair
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031020/LTN20031020025.pdf">
announced</a> a private placing of 43.16m warrants (stock code: 0633) at $0.58 
per warrant, raising $24m net of expenses. Each warrant carries the right to 
subscribe 1 share at $0.69 per share. That was a 55.5% discount to the market 
price of $1.55. The combined purchase and exercise price of $1.27 was an 18% 
discount to the market. The shares underlying the warrants are equivalent to 20% 
of the existing issued shares, the maximum allowed under the Listing Rules.</p>

<p>The placing was underwritten by Ping An and Hantec International 
Finance Group Ltd for a fee of 3% of the placing price. Joseph Wan's brother, 
Thomas Wan Chuen Fai, was an INED of Kenfair until 10-Dec-02, and as Joseph Wan 
was an ultimate beneficial owner of Ping An, the underwriting was a connected 
transaction, which was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031124/LTN20031124067.pdf">
approved</a> on 24-Nov-03. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031125/LTN20031125054.pdf">
prospectus</a> was issued on 25-Nov-03 and the warrants were issued on 2-Dec-03 
and listed on 5-Dec-03. They expire on 2-Dec-05.</p>

<h3>Warrant issue cornered</h3>

<p>So who bought the warrants? You won't be surprised to learn from 
SFO filings that Cosmo bought 18m of them, or 41.71% of the issue, for $10.44m. 
Cosmo also owns 300,000 Kenfair shares (0.14%), taking its total discloseable 
interest in Kenfair to 8.48%. </p>

<p>And what about the rest of the warrants? Well SFO filings show that Baron took 21.284m, or 
49.31% of the issue. So altogether, Cosmo and Baron had bought <b>91.02%</b> of the 
warrant issue, and still managed to get it listed! Since there were &quot;not less 
than 100&quot; placees, the other 98 or more must have shared just 8.98% of the 
issue. Needless to say, none of this was announced by Kenfair or Cosmo.</p>

<p class="regbox">Regulatory note: apparently the Listing Rules did not require 
any announcement of the fact that Baron had ended up with such a large portion 
of the warrants it underwrote, nor of the concentration of ownership of the 
warrants. We believe that the rules should be amended to provide much greater 
disclosure of the distribution of placements.</p>

<h3>The money-go-round</h3>

<p>You will notice that Cosmo had now spent about $11m on Kenfair 
shares and warrants, and about $6.4m on its stake in CIF, for a total of about 
$17.4m. This was not dissimilar to the total $23.4m raised in its earlier 
placing through Hantec and open offer arranged by Baron.</p>

<p>You will also notice that the net proceeds of the warrant issue 
for Kenfair were $24m. Remember that by 
19-Sep-03, Kenfair had spent $5.36m buying 19.30% of CIF, and they went on to 
spend $17.06m between 29-Sep-03 and 10-Dec-03 buying 17.44%&nbsp;of Cosmo. So 
altogether, they had spent $22.42m on these two companies in the Baron network, 
which is almost the same as the $24m received from the issue of the warrants.</p>

<p>Around we go in circles.</p>

<p class="regbox">Regulatory note: one of the frustrating things about this kind 
of investment research is that banks and brokers in Hong Kong are exempt from the 5% 
disclosure threshold in respect of security interests in shares. So we cannot 
know, for example, whether Hantec or anyone else has provided loans to any of 
the shareholders in this story, secured by the underlying shares. The 
traditional argument for this exemption has been to protect the commercial 
interests of the lenders, but we think that is far outweighed by investors' need 
to know. The exemption should be scrapped.</p>

<h3>GRD buys into Kenfair</h3>

<p>SFO filings show that by 2-Mar-04, Baron's holding had reduced 
slightly to 20.356m warrants. Then on 29-Mar-04, it disposed of the entire 
holding at $0.84 per warrant in an off-market transaction, for a total price of 
 
$17.10m - and guess who the purchaser was? SFO filings reveal that it was GRD, so 
it now has a 9.43% derivative interest in Kenfair.</p>

<h3>CIF auditors quit</h3>

<p>On 11-Feb-04, six weeks after the year end, Deloitte Touche 
Tohmatsu
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040219/LTN20040219031.pdf">
resigned</a> as auditors of CIF, and were replaced on 17-Feb-04 by Charles Chan, 
Ip &amp; Fung CPA Ltd (<b>CCIF</b>). CIF gave the usual reason of audit fee 
reduction. CCIF is also the auditor of Cosmo.</p>

<h3>Sinox, CIF, Cosmo and GRI</h3>

<p>On 22-Sep-03, CIF
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030922/LTN20030922153.pdf">
announced</a> the appointment of Sannio Ng Hong Cheung (<b>Mr Ng</b>) as an 
executive director. No information was given on him, but according to an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020321/ltn20020321023.doc">
announcement</a> of <a target="_blank" href="../dbpub/articles.asp?p=14910">Radford Capital 
Investment Ltd</a> (<b>Radford</b>, 0901) on 20-Mar-02, Mr Ng was a director of 
Sinox Fund Management Ltd (<b>Sinox</b>) and the other director of Sinox was 
Michael Yu Tat Chi (<b>Mr Yu</b>). So what, you might think?</p>

<p>Well, Sinox has been the investment manager of GRI since 1998. 
Sinox was also the investment manager of <a target="_blank" href="../dbpub/articles.asp?p=9176">
Unity Investments Holdings Ltd</a> (<b>Unity</b>, 0913) from 28-Apr-03 to 
5-Nov-03 and of Radford from 29-Apr-02 to 3-Nov-03.</p>

<p>On 9-Mar-04 Cosmo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040310/LTN20040310047.pdf">
announced</a> that Mr Yu had been appointed as an executive director. So of the 
two directors of Sinox, one is now an executive director of CIF and the other is 
an executive director of Cosmo, which owns 22.37% of CIF.</p>

<p>Oh and by the way, on 26-Aug-03, Ronald Yan Mou Keung (<b>Mr Yan</b>) 
was appointed as an INED of CIF. He has been an INED of GRI since 2-Feb-00.</p>

<h3>More to come</h3>

<p>There's another extremely complex network involving Unity and 
Radford, both of which are &quot;Chapter 21&quot; investment companies, together with 
about a dozen other listed companies, but it is beyond the scope of this 
article.</p>

<p>To give you a hint, we'll tell you that the only asset of CIF 
we've been able to identify, apart from the holding in Zhong Hua, is a 0.64% 
stake in Hennabun Management Inc., the largest shareholder of which is
<a target="_blank" href="../dbpub/articles.asp?p=3286">China United International Holdings Ltd</a> 
(0273).</p>

<h3>Thin boards</h3>

<p>The board of CIF now comprises just two executive directors, 
Mr Ng (of Sinox) and Alexander Wan (whose brother Joseph runs Baron), and 
two INEDs, Mr Lok (who is an INED of Cosmo) and Mr Yan, who is an INED of GRI.</p>

<p>The board of Cosmo now comprises just two executive directors 
and two INEDs. The EDs are Mr Yu (of Sinox) and Mr Wong Hong Kit, who was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040401/LTN20040401038.pdf">
appointed</a> on 1-Apr-04 and is also the Finance Director of Billybala Holdings 
Ltd (<b>Billybala</b> 8117). The INEDs are Mr Lok and Mr Tang, the Deputy 
Chairman of Hantec.</p>

<p>You won't be surprised to learn that Baron Capital and Hantec 
Capital were the independent financial advisers to Billybala when it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040225/GLN20040225016.pdf">
taken over</a> earlier this year.</p>

<h3>CIF launches open offer</h3>

<p>On 4-Mar-04, CIF
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040305/LTN20040305018.pdf">
announced</a> a massive open offer of 5 new shares for every share held at 
$0.125 per share, a 50% discount to market price. You guessed it, the deal is 
managed and underwritten by Baron Capital. The issue of 400m shares will raise 
<b>$48.5m</b> net of expenses, to be used <i>&quot;in making investments in the PRC, Hong 
Kong and/or overseas&quot;</i> - in other words, anywhere on Earth. And just in case 
that isn't vague enough, they threw in <i>&quot;and for general working capital 
purposes&quot;</i>.</p>

<p>The announcement contained a misleading table which showed that 
&quot;Ip Ki Cheung&quot; owned 14,396,000 shares, or 17.995% of CIF. In fact, Mr Ip 
doesn't own them at all. He owns 50% of Capital Concord Profits Ltd (<b>CCP</b>), 
a BVI company which owns 50.05% of Kenfair, which owns the shares in CIF. The 
other 50% of CCP is owned by two other executive directors of Kenfair.</p>

<p class="regbox">Regulatory note: we pointed out the error in the shareholding 
table to the Stock Exchange on 8-Mar-04, but no public action has been taken. The error 
was repeated on page 20 of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040322/LTN20040322068.pdf">
offer document</a> dated 22-Mar-04, which would have been cleared by the stock 
exchange before publication. We reported the error again, on 22-Mar-04, but no 
public action has been taken.</p>

<p>More to the point, CIF has not even invested the money from its 
IPO, and there 
is a network of companies surrounding it even though they all claim to be 
independent and that none of them controls it. So except for Baron, all the 
other shareholders were able to vote at the meeting on 8-Apr-04 and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040414/LTN20040414029.pdf">approved</a> the deal.</p>

<p>Unless the regulators intervene, the public shareholders of CIF 
are about to face a difficult choice - either pay up or get massively diluted. 
But remember, the investment manager of CIF is owned by Baron, which arranged 
most of the above cross-holdings. What do you think CIF will do with the money?</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15351">Carmen Century Investment Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15352">CINDA INTERNATIONAL ASSET MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2233">COSMOPOLITAN INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15471">Elife Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4845">GOLDEN RESOURCES DEVELOPMENT INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9845">Joy Silver Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1458">Prosperity Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13001">Wealth Legend Asset Management Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=3062">Koo, Charles Ming Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20291">Mak, Wai Chun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15126">Ng, Sannio Hon Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16632">Wan, Alexander Chuen Hing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15885">Wan, Joseph Chuen Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20866">Wong, Hon Kit (SFC:AHF688)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10066">Yan, Ronald Mou Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15123">Yu, Michael Tat Chi</a></li>
				
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