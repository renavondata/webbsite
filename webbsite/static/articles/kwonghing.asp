
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

<script type="text/javascript">document.title="Kwong Hing's History";</script>

	<div class="summary">With Kwong Hing (1131) in the news over an ICAC investigation into alleged bribery and share price manipulation, Webb-site.com takes a look at the sordid history of this company, including its wasting of money on dotcoms and its long relationship with financial services firm Kingsway (0188). Our story also features CIL (0479), Yue Fung (0965) and Dynamic Global (0231).</div>

<h2 class="center">Kwong Hing's History<br>
<span class="headlinedate">9 March 2004</span></h2>
<p><a target="_blank" href="http://www.kwonghing.com">Kwong Hing International Holdings Ltd</a> (<b>Kwong Hing</b>, 1131) 
has been in the news the past few days as the Independent Commission Against Corruption 
(<b>ICAC</b>)
<a target="_blank" href="../codocs/ICAC040227.pdf">arrested</a> 
one of Kwong Hing's executive directors on 27-Feb-04 for alleged corruption in relation to suspected 
share&nbsp; price manipulation.</p>

<p>According to the ICAC, in Jul-03, an executive director of the 
listed company, through the arrangement of a director and an investment adviser 
of a financial institution, allegedly struck a corrupt deal with a fund manager 
for arranging the funds managed by him to buy over 10 million shares of the 
company. It was suspected that over HK$2m had been shared between the fund 
manager and the two middlemen as rewards.</p>

<p>It was also alleged that the  executive director of the 
listed company had offered a cash payment to a research executive of another 
financial institution for the latter to publish a favourable research report on 
the listed company.</p>

<p>The financial institution was identified by media as SBI 
E2-Capital (which is 49% owned by <a target="_blank" href="../dbpub/articles.asp?p=4848">E2-Capital 
Holdings Ltd</a>, 0378, 49% owned by <a target="_blank" href="../dbpub/articles.asp?p=4789">Softbank 
Investment International (Strategic) Ltd</a>, 0648 and 2% by Mr Wong Sin Just). 
The firm has sacked investment banking director Louis Lin and suspended senior 
vice president
<a target="_blank" href="http://www.e2capital.com/bio_detail.asp?sid=35&deptname=OpenOffering+Technology&dcode=ibn">Vincent Yum</a>. The research 
executive involved in the investigation is
Nicholas Tan Chye Seng, who has been suspended by UBS Securities Asia Ltd.</p>

<p>He is reportedly the son of Mr Tan Heng Chew, Deputy Chairman of 
Kuala Lumpur-listed Tan Chong Motor Holdings Bhd. Tan Heng Chew is a son of the late Mr Tan Yuet Foh, who co-founded the group 
with his brother Tan Kim Hor in 1957 when they won the Nissan distribution 
franchise. The group is named after their father, the late Mr Tan Chong.</p>

<p>A few years ago a family dispute ended up in court in which the 
Tan Kim Hor side, who held 45% of the private holding 
company which controls the group, Tan Chong Consolidated Bhd, 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010620/LTN20010620015.doc">petitioned</a> the court to have it wound up. 
The Tan Yuet Foh side, with 55%, successfully opposed the case and it was struck 
out. Despite this, Tan Kim Hor remains Chairman of HK-listed
<a target="_blank" href="http://www.tcil.com.sg">Tan Chong International Ltd</a> 
(0693) which owns the non-Malaysian motor business and is controlled by Tan Chong 
Consolidated Bhd. None of this has anything to do with Kwong Hing but we thought 
you'd enjoy the digression.</p>

<p>Going back to the Kwong Hing investigation, we still don't know who 
the fund manager in question is. Anyway, this incident provides an opportunity for us to tell you about some 
of the ways Kwong Hing has squandered shareholders' money in the past. Into the 
time machine we go...</p>

<h3>IPO</h3>

<p>Kwong Hing was engaged in the provision of fabric knitting, 
bleaching, dyeing and setting services when it went public. It was listed on 
19-Mar-97, following an IPO sponsored by Standard Chartered Asia Ltd, of 45m 
shares at HK$1.20 each. Scrip-adjusted, that's about $1.93 in today's terms, so 
after six years, the stock, suspended at $1.61, is 17% below its IPO price. But 
it's been up and down more often than the lifts in Exchange Square since then.</p>

<p>A 
quarter of the offer was old shares sold by the controlling shareholder, while 
the company issued 33.75m new shares to raise <b>$33.23m</b> net of expenses, and the 
public ended up with 30%. So the controlling shareholder raised <b>$13.5m</b> before expenses. 
Not only that, but on 20-Feb-97, just 15 days before the prospectus was 
published, the group paid a special dividend of <b>$30m</b> to the controlling 
shareholder, an amount which is almost equivalent to the IPO proceeds. So you 
see that this company did not need to go public for funding reasons - it could 
have retained the special dividend instead.</p>

<p class="regbox">Investment tip: this is a classic warning sign for investors - when you see an 
IPO where the controllers end up with large amounts of cash from share sales and/or 
pre-IPO dividends, ask yourselves why 
you should buy what they are selling. Sometimes there is a good reason, but 
often there is not.</p>

<h3>First placing</h3>

<p>On 25-Sep-97, only 6 days after the 6-month post-IPO lock-up 
period expired, Kwong Hing did the first of several placings under the general 
mandate, issuing the maximum-allowed 30m shares (equivalent to 20% of the 
existing shares) at $1.30 (scrip-adjusted, $2.091) per share and raising $38.41m 
net of expenses. The placing agent was <a target="_blank" href="../dbpub/articles.asp?p=938">South 
China Securities Ltd</a>.</p>

<p>Strangely enough, given that the market was crashing at the 
time, the stock then took off, reaching a high in Sep-97 of $1.75 
(scrip-adjusted $2.815) and in Oct-97 of $3.60 (scrip-adjusted $5.791). By 
comparison, the Hang 
Seng Index fell 29.4% in Oct-97.</p>

<h3>First bonus issue</h3>

<p>So Kwong Hing proposed a bonus issue of 2 new shares for every 
share held, which was approved at an SGM on 24-Nov-97. This is just as well, 
because the stock had already been trading ex-bonus since 14-Nov-97.</p>

<p class="regbox">Regulatory note: we often wonder why the Stock Exchange allows 
trading to take go ex-entitlements before they have been approved by 
shareholders - it is a recipe for chaos if approval is not forthcoming and all 
the trades have been done on the wrong basis.</p>

<h3>Second bonus issue and SFC investigation</h3>

<p>The stock continued its nose-bleeding ascent, reaching a high in Mar-98 of 
$1.39 (scrip-adjusted $6.707). </p>

<p>On 27-Mar-98 Kwong Hing announced another bonus issue, this time 
1 new share for each share held. Trading began ex-bonus on 16-Apr-98, but didn't 
last long. The stock closed the morning session up 28.7% at $0.74 
(scrip-adjusted, $7.142) and was then suspended while the SFC launched an 
investigation into what was obviously a stock-ramping operation by persons 
unknown. No charges were ever brought.</p>

<p>The bonus issue was approved at an SGM on 24-Apr-98, but the 
shares went into the deep freeze for 6 months and did not begin trading again 
until 26-Oct-98, when Kwong Hing <a target="_blank" href="../codocs/1131_981026a.pdf">
announced</a> that the SFC had found that from 2-Mar-98 to 16-Apr-98, the public 
float of the shares appeared to be concentrated in the hands of seven traders 
who the SFC believed were both connected with each other and acting in unison. 
By the time of the suspension, the SFC estimated that 6 traders held 28.87% of 
Kwong Hing, leaving just 12.8% held by the rest of the public. The announcement 
pointed out that the p/e of the stock was now 34.9x.</p>

<p>The stock then crashed, reaching a low in Mar-99 of $0.077 
(scrip-adjusted, $0.743), down 90% from its high.</p>

<h3>Acumen</h3>

<p>It wasn't long though before the price was ramped again, by 
persons unknown. On 21-Jun-99, Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19990622/LTN19990622026.HTM">
announced</a>:</p>

<blockquote>

<p>&quot;the Company will still concentrate on its core textile business 
but because of Company's business acumen the Company would try to explore any 
opportunity which has good development potential within its ability, those might 
include the information provider business&quot;</p>

</blockquote>

<p class="regbox">Investment tip: this is another classic warning sign to investors - when a 
management which has been successful in one area of commerce infers that it will 
be good at something completely unrelated, the inference is usually wrong.</p>

<p>Kwong Hing said they might invest HK$7.75m (US$1m) in such a 
business, or less than 5% of net assets. But then on 6-Jul-99 they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19990707/LTN19990707020.HTM">
said</a> that they were negotiating to acquire a controlling interest in a 
private internet content provider, which could be a notifiable transaction 
(priced at over 15% of net assets). The next day, they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19990708/LTN19990708040.HTM">
gave</a> a few more details, including the fact that the content provider was in 
the mainland, and said they were thinking about doing a placing of warrants. 
That week, the share price reached a high of $0.96 (split adjusted, $9.265) up 
1147% in 4 months.</p>

<p>Nothing then happened until 20-Sep-99 when Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19990921/LTN1999092articles.asp?p=2471">
said</a> discussions had been terminated. The share price closed that week at 
$0.182 (scrip adjusted $1.757), down 81% from the high.</p>

<h3>Three placings in 2 months</h3>

<p>On 12-Nov-99, Kwong Hing, reacting to press articles,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19991115/LTN19991115031.HTM">
said</a> it was considering a placing. On 16-Nov-99, it 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19991117/LTN19991117019.HTM">announced</a> a placing of 
90m shares at $0.17 (scrip adjusted, $1.641), raising <b>$14.97m</b> net of expenses, 
through <a target="_blank" href="../dbpub/articles.asp?p=11839">Kingsway SW Securities Ltd</a> (<b>Kingsway 
Securities</b>), the first of several transactions involving this firm. $10m was 
to be used for repayment of borrowings and the rest for general working capital.</p>

<p>On 6-Dec-99, Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19991207/LTN19991207020.HTM">
said</a> it was in a very preliminary study to subscribe shares in a private 
telecommunication business. On 9-Dec-99, following another press report, it said 
it was considering <i>&quot;equity fund raising activities excluding rights issue&quot;.</i></p>

<p>A week later, on 13-Dec-99, Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19991214/LTN19991214034.HTM">
announced</a> a placing of 118m shares at $0.172 (scrip adjusted, $1.660) again 
through Kingsway Securities, raising <b>$19.80m</b> net of expenses. The company 
said about half would be used for repayment of loans from financial institutions 
and the rest for working capital.</p>

<p>On 20-Dec-99 Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19991221/LTN19991221036.HTM">
said</a> it had conditionally agreed to invest HK$30m in news shares 
representing 4.3% of Star Digitel Ltd (<b>SDL</b>). Prior to the proposed issue, 
SDL was 71%  owned by Electric World Holdings Ltd, the major shareholder of which was Mr Wong Kam Fu, 
who had bought SDL from the company he formerly controlled, China Online 
(Bermuda) Ltd (0383). According to the announcement, SDL was the majority equity holder of 
several Sino-foreign joint ventures which leased equipment and provided 
consultancy services to various mobile-phone companies which operated networks 
named the Great Wall Networks in Beijing, Gansu, Guangdong, Hainan, Hebei, 
Shandong, Sichuan and Yunnan. Although they didn't mention it, the Chinese 
partner in these networks was an arm of the People's Liberation Army.</p>

<p>On 8-Jan-00, Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000110/LTN20000110047.HTM">
announced</a> its third placing in less than 2 months, again underwritten by 
Kingsway Securities, of 138m shares at $0.20 (scrip adjusted $1.93), raising <b>$27m</b> net of expenses. This time, they 
planned to use $11m on - shock horror - their core textile business! $5m would 
go to bank repayments and the rest to working capital.</p>

<p>On 27-Mar-00, the deal to subscribe 4.3% of SDL was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000329/LTN20000329042.HTM">terminated</a>, 
partly because a winding-up petition against SDL had not been withdrawn. No payment had been made by Kwong Hing.</p>

<h3>Kwong Hing and Victory Tech</h3>

<p>Now the story gets really interesting. Remember, we are in the 
middle of the dotcom bubble. Textiles just doesn't cut it any more. So on 
29-May-00, Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000530/LTN20000530032.doc">
announced</a> that it had conditionally agreed to buy 15% of Victory Tech 
Investment Ltd (<b>Victory Tech</b>), a company with a couple of web sites which 
cannot be found today. One wholly-owned site was &quot;Airlodge.com&quot;, a <i>&quot;one-stop 
on-line travel agent in Hong Kong and the Greater China region&quot;</i> and the 
other, 80%-owned site was the snappily named &quot;Cult-ture.com&quot;, which was <i>&quot;a 
web-based music studio and an interactive realm for musicians, artists and music 
lovers&quot;</i>. If you want to know what these sites looked like just before they 
were taken down, just for curiosity's sake, you can use the great web archive at
<a target="_blank" href="http://www.archive.org">www.archive.org</a>.</p>

<p>Victory Tech was incorporated on 
22-Sep-99 and was still wearing nappies. It had had no audited accounts, but for 
the first 6 months of its life to 31-Mar-00, it had unaudited losses of HK$685k 
and at that date had net assets of HK$1,315k. This implies the total investment 
to set it up was HK$2m.</p>

<p>For 15% of this unique trophy asset, Kwong Hing was willing to 
pay $33m, implying a valuation of $220m, or 110 times the initial investment 6 
months earlier. This was to be satisfied by issuing 132m shares at $0.20 each.</p>

<p>The vendors of Victory Tech were Kingsway Electronic Services 
Ltd (<b>Kingsway ESL</b>) for 12%, and Ivan Wong Chi Keung (<b>Mr Wong</b>), for 
3%, who prior to the deal, owned 80% and 20% of Victory Tech respectively. The 
announcement didn't say who owns Kingsway ESL, but the Kingsway name was not a 
coincidence, as you will see later.</p>

<p>If Mr Wong's name seems familiar, that's because he was featured 
in last week's story <a target="_blank" href="grandfield1.asp">Cooking with Gas</a> 
about how he sold an interest in another questionable transaction to 
<a target="_blank" href="../dbpub/articles.asp?p=4802">Grand Field 
Group Holdings Ltd</a> (0115).</p>

<p>On 4-Jul-00, the deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000705/LTN20000705029.doc">
revised</a> so that Kwong Hing would initially buy just 7% of Victory Tech with 
an option to buy another 8% at the same price per share. The consideration for 
the first tranche was reduced pro rata, to <b>$15.4m</b>, satisfied by the issue of 77m 
shares. The first tranche was completed on 20-Jul-00, but the option was never 
exercised.</p>

<h3>CIL and Victory Tech</h3>

<p>Kwong Hing wasn't the only listed company to fall in love with 
Victory Tech. On 28-Aug-00, <a target="_blank" href="../dbpub/articles.asp?p=1368">CIL Holdings Ltd</a> (<b>CIL</b>, 0479), a debt-ridden 
company which by then was in prolonged breach of the Listing Rules for not 
publishing any accounts since those for 31-Dec-98,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000829/LTN20000829029.doc">
announced</a> that it had still found time to engage in biting off two pieces of 
Victory Tech. It had bought &quot;about 10%&quot; on 5-Jun-00 for $25m payable by cash, in 
3 instalments with the last due on 6-Jun-01.</p>

<p>In a second deal, it was now buying 9.96% for $24.9m, to be 
satisfied by issuing 249m CIL shares (7.37% of the enlarged CIL) at $0.10 per 
share (par value).</p>

<p>The Vendors in the second sale to CIL were HK Weaver Group Ltd 
(7.968%) and Mr Wong (1.992%). The ultimate parent of HK Weaver Group Ltd was 
<a target="_blank" href="http://www.kingsway-group.com/">Kingsway International Holdings Ltd</a>, 
(<b>Kingsway IHL, </b>TSX:KIH) the Toronto-listed parent of Kingsway 
Securities. Presumably Kingsway IHL also controlled Kingsway ESL, the vendor to 
Kwong Hing. Kingsway IHL also has a HK-listed subsidiary,
<a target="_blank" href="../dbpub/articles.asp?p=11839">SW Kingsway Capital Holdings Ltd</a> (0188).</p>

<p>As a result of these deals, CIL had a stake of 19.96% in Victory Tech, just 
below the 20% at which it would have to treat Victory Tech as an associate.</p>

<p class="regbox">Investment tip: this 
is an old wheeze - if you are an acquiring company and stay below 20% of the investee company, then you can record the holding in your accounts as an 
&quot;investment&quot; (on the grounds that you have no significant control over the 
business) and only record any dividend income from the holding, rather than 
reporting your share of its losses, as an &quot;associate&quot;.</p>

<p>CIL justified the price it paid based on a valuation by
<a target="_blank" href="http://www.chesterton.com.hk/">Chesterton Petty</a> of 
$255m for Victory Tech as at 29-May-00. This valuer was involved in a number of 
other dotcom valuations, including two we have written about for proposed 
acquisitions by <a target="_blank" href="../dbpub/articles.asp?p=2992">Yue Fung International Group Holding Ltd</a> 
(<b>Yue Fung</b>, 0965) and
<a target="_blank" href="centsibility.asp">Pacific Challenge</a> (now New Times 
Group Holdings Ltd, 0166).</p>

<h3>A Yue Fung connection?</h3>

<p>Our <a target="_blank" href="yuefung.asp">story</a> of 23-Nov-00 
was about a deal by Yue Fung to buy 17.5% of an &quot;online trading business&quot; called 
Slough Technology Ltd based on a valuation of more than 1,000 times its start-up 
capital. Deep in that article, you'll see that a spokesman for Chesterton Petty 
said that their instructions to value the business had come from a Mr Ivan Wong. 
Could that be the same person as the Ivan Wong Chi Keung behind Victory Tech, or 
just a coincidence?</p>

<p>In perhaps another coincidence, on 24-Dec-02, Yue Fung
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021224/LTN20021224090.pdf">
replaced</a> both its independent non-executive directors, and one of the 
replacements was a &quot;Mr Wong Chi Keung&quot;. Both replacements joined the audit 
committee. Could that be the same person as Mr Ivan Wong Chi Keung, the person 
behind Victory Tech? Or could it be the same as the mystery &quot;Ivan Wong&quot; referred 
to by Chesterton Petty? Or just pure coincidence? The INED replacements took place a week 
after the ICAC raided Yue Fung and two related companies in a graft investigation. 
The <i>&quot;investigation into the company and a number of its directors&quot;</i> was 
confirmed by Yue Fung in an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021220/LTN20021220114.pdf">
announcement</a> dated 20-Dec-02.</p>

<p>Prompted by the ICAC
<a target="_blank" href="../codocs/ICAC021217.pdf">investigation</a>, on 28-Feb-03 Yue Fung
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030228/LTN20030228107.pdf">
said</a> that on 7-Jan-03 it had set up an <i>&quot;independent committee&quot;</i> 
comprising both INEDs (including Wong Chi Keung) and an executive director <i>
&quot;to furnish an independent report&quot;</i> on <i>&quot;a special review of the matters 
including but not limited to certain related party transactions&quot;. </i>On 10-Apr-03 Yue Fung
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030425/LTN20030425109.doc">
went</a> into provisional liquidation. 
There has been no further news about the independent committee's independent 
report or the ICAC investigation.</p>

<h3>Fairyoung and Victory Tech</h3>

<p>Now back to the storyline. Remember we started by talking about Kwong 
Hing's stake in Victory Tech, and then got sidetracked into CIL's stake in the 
same company. But wait! Mr Wong and Kingsway were not yet finished selling 
bits of Victory Tech.</p>

<p>On 18-Sep-00 Fairyoung Holdings Ltd (<b>Fairyoung</b>, now
<a target="_blank" href="../dbpub/articles.asp?p=532">Dynamic Global Holdings Ltd</a>, 0231)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000919/LTN20000919028.doc">
announced</a> that it&nbsp; would buy 2% of Victory Tech for HK$5m. Again, the 
vendors were HK Weaver Group Ltd (controlled by Kingsway IHL) and Mr Wong in the 
same ratio of 80:20. The deal was settled by the issue of 22,727,272 Fairyoung 
shares (1.68% of the enlarged company) at $0.22 each.</p>

<p>The Chairman and controlling shareholder of Fairyoung at the 
time was John Chan Boon Ning. On 23-Nov-00 he
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20001127/LTN20001127023.doc">
resigned</a> to face criminal charges for stealing $81m from an associated 
company of Fairyoung and false accounting. He was convicted and on 19-Dec-01 he 
was jailed for 6 years.</p>

<h3>Kwong Hing writes off Victory Tech</h3>

<p>OK, this is becoming more than a light read, so let's get back 
to Kwong Hing, which you will recall, was buying 7% of Victory Tech from 
Kingsway ESL and Mr Wong for 77m Kwong Hing shares at $0.20 each, or $15.4m in 
total.</p>

<p>Close inspection of the Kwong Hing annual report for the year to 
31-Mar-01 reveals that in fact, when the deal closed on 20-Jul-00, it was only 
booked at $0.12 per share, or $9.24m. All except $10k of this was written off in 
the same year.</p>

<h3>China Medicine On-line</h3>

<p>Another revelation in the Mar-01 annual report was that some time in the second half of the 
financial year, Kwong Hing had acquired 40% of a company called Global Network 
Holdings Ltd (<b>GNH</b>), which in turn owned 8% of another called China 
Medicine On-line Company Ltd (<b>CMOL</b>). So Kwong Hing had an effective 
interest of just <b>3.2%</b> of CMOL. For this, they had paid <b>$39.93m</b> in 
cold hard cash, which implies that CMOL was worth about <b>$1,248m</b>! For 
Kwong Hing, the purchase was equivalent to 13.5% of the previous year's net 
assets, so it was below the 15% disclosure threshold and this was the first time 
we had heard about it. The lucky vendor was never disclosed.</p>

<p>The same year, Kwong Hing recorded a loss of $13.277m as &quot;share 
of loss of an associate&quot;, due to the write-down of the stake in CMOL.</p>

<p class="regbox">Investment tip: here you see an investment disguised as an 
associate. The rules say that you can report the &quot;share of net assets of 
associate&quot; but in fact, the associate only owns an investment in another 
company, so the associate's net assets are basically just the book value of the 
investment.</p>

<p>Kwong Hing offered no explanation in its report for what CMOL 
actually did for a living, or why Kwong Hing had invested in it, or who it had bought 
the stake from, or what 
the net assets of CMOL actually were.</p>

<p>In the accounts for the year to 31-Mar-02, Kwong Hing wrote off 
another $19.997m on CMOL. As a 
result, the 3.2% stake was carried forward at $6.656m, implying that CMOL was 
still worth HK$208m.</p>

<p>
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030729/01131/f112.pdf">
N</a><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030729/01131/f112.pdf">ote 
25</a> of the accounts for the year to 31-Mar-03 reveals that Kwong Hing disposed of its interest in ATX Ltd, which owned the stakes in 
GNH and Victory Tech. Although the price on the deal was $7.7m, resulting in a 
gain of $1.029m, only $0.67m was in cash and the other $7.03m was in <i>&quot;other 
receivables&quot;</i>, whatever that means. The purchaser was not identified, and we 
don't know whether the receivables have been collected.</p>

<h3>Placing and Rights Issue</h3>

<p>On 18-Nov-01 Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20011120/LTN20011120015.doc">announced</a> another placing, again through 
Kingsway. This one was a bit different, because the controlling shareholders 
sold 181.1m shares and subscribed 322.2m shares both at $0.05 per share (scrip 
adjusted: $0.483), thereby 
maintaining their percentage stake in Kwong Hing by counter-acting the dilution.</p>

<p class="regbox">Regulatory note: we've explained
<a target="_blank" href="placing.asp">before</a> in 1999 how the Listing Rules have a 
special pre-emptive right for controlling shareholders, but not for anyone else, 
who gets diluted by placings. 5 years later, this privilege is being scrapped, 
and with effect from 31-Mar-04, &quot;top-up&quot; placings will only allow the controller 
to subscribe as many new shares as it sells old shares in the placing. For 
little  crumbs of regulatory reform we are grateful - better late than never.</p>

<p>The placing raised <b>$16.11m</b> net of expenses. But that, 
apparently, was not enough, so on 9-Jan-02 Kwong Hing announced a 1 for 1 rights 
issue at $0.04 per share (having already exhausted the placing mandate last time 
around). This time they raised <b>$75m</b> net of expenses. The rights issue was 
underwritten by Kingsway and was fully subscribed when it completed on 5-Mar-02.</p>

<h3>Lactobacillus</h3>

<p>Between 8-Nov-02 and 19-Nov-02 the share price jumped 106% to 
$0.105 (scrip adjusted $1.05), and this triggered an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021120/LTN20021120066.doc">
announcement</a> by Kwong Hing on 19-Nov-02 that it was planning another 
investment. Oh no, what now? A week later, they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021126/LTN20021126093.doc">
announced</a> details. By now the price had risen to $0.196 (scrip adjusted 
$1.96), up 284% in 18 days.</p>

<p>They proposed to buy a 9.8% stake in a company called Yakudo 
Group Holdings Ltd (<b>Yakudo</b>) for HK$39.975m, to be satisfied by the issue 
of 533m Kwong Hing shares (12.12% of the enlarged company) at $0.075 each to the 
vendor, Mr Lee Tao Kuang, <i>&quot;a businessman in Taiwan engaged in the production 
and sale of consumer products&quot;</i>.. The implied valuation of Yakudo was 
HK$416.4m. Prior to the deal, the vendor owned 69.14% of Yakudo, while <i>
&quot;independent third parties&quot;</i> held 30.86%. Yakudo had a 100% PRC subsidiary 
which was <i>&quot;engaged in the production, selling and distribution of 
lactobacillus drinks in the PRC&quot;</i>.</p>

<p>Yakudo was only incorporated on 16-May-01 and by 30-Jun-02 it 
had notched up losses of $5.97m. The consolidated net asset value was $74.0m. So 
Kwong Hing was proposing to buy a 9.6% stake in a loss-making company, in a 
business that had no connection to textiles, and at 5.6x net asset value.</p>

<p>On 31-Dec-02, the deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021231/LTN20021231077.doc">
aborted</a>. Thank heavens for small mercies. The share price had fallen back to 
$0.073 before the deal was scrapped, down 62.8% from the announcement of the 
deal terms. The lactobacillus episode leaves a nasty taste in investors' mouths.</p>

<p>If you cast your mind back to the beginning of this story, you 
will see a pattern emerging, of rapid price rises, followed by deal 
announcements, and then subsequent price collapses.</p>

<h3>Consolidation</h3>

<p>On 12-Feb-03 Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030212/LTN20030212086.doc">
announced</a> a 10:1 consolidation of the shares, which became effective on 
19-Mar-03</p>

<h3>At last, a textile-related acquisition</h3>

<p>On 29-Aug-03 Kwong Hing
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030901/LTN20030901021.pdf">
announced</a> the acquisition of 70% of South Season Industrial Co Ltd (<b>South 
Season</b>) for HK$24.5m cash from Mr Chiu Ka Lun. Prior to the deal he owned 
82% and the remaining 18% were held by an <i>&quot;independent third party&quot;</i>. 
South Season was engaged in the <i>&quot;trading of garments in Hong Kong&quot;</i>. The 
vendor warranted that it would have net tangible assets of $10m at completion, 
and the company recorded a profit of $9.646m in 2002, down 17% from a year 
earlier.</p>

<p>Although Kwong Hing is in the textile business, it is upstream, 
making knitted fabrics rather than garments. But at least there is some 
connection. Whether this deal represents a momentary return to core business 
after wasting money on dotcoms and flirting with phone networks and 
lactobacillus drinks remains to be seen.</p>

<p>Investors would be well advised to stay clear of such behaviour.&nbsp; </p>

<p>On 14-Jul-03
<a target="_blank" href="http://www.arisaig.com.sg/">Arisaig</a> Greater China 
Fund became a disclosed shareholder with 5.1% of Kwong Hing. This rose to 10.16% 
by 19-Sep-03. A spokesperson for Arisaig confirmed to <i>Webb-site.com</i> that 
the firm and its staff are not involved in the ICAC investigation.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3003">Agritrade Resources Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1368">CIL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=532">Ping An Securities Group (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11839">Sunwah Kingsway Capital Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2992">YUE FUNG INTERNATIONAL GROUP HOLDING LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=14331">Wong, Ivan Chi Keung</a></li>
				
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