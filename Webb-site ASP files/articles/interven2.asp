
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

<script type="text/javascript">document.title="Intervention Returns";</script>

	<div class="summary">We look at the HK Government's surprise disclosure of 5.9% of HKEx, where it might go next, and how it quietly scrapped a 5% benchmark on the Exchange Fund weighting in HK stocks, leaving it as the 2nd-biggest investor after the mainland Government. With about HK$1 trillion of surplus liquid assets, whatever happened to Donald Tsang's "big market, small government"? We call on the Government to return its surplus capital to the people with a 10-year program of deliberate budgeted deficits.</div>

<h2 class="center">Intervention Returns<br>
<span class="headlinedate">10 September 2007</span></h2>
<p>Forget positive non-interventionism. On Friday evening, 7-Sep-07, the Hong 
Kong Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/200709/07/P200709070259.htm">
announced</a> that it had purchased through the Hong Kong Monetary Authority (<b>HKMA</b>), 
over an unspecified period, 5.88% of Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>, 
0388), the owner of the stock exchange, futures exchange and their respective 
clearing houses in Hong Kong. At the record-high closing price of $158 per 
share, the stake is worth about HK$9.93bn (US$1.27bn).</p>
<p>Your editor, David Webb, has been an elected independent non-executive 
director of HKEx since 15-Apr-03.</p>
<p>Later on Friday evening, the Government-appointed Chairman of HKEx, Ronald Arculli, who is also a member of the Government's Executive Council, issued a
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2007/070907news.htm">
statement</a> expressing his &quot;appreciation&quot; for the Government's confidence in 
HKEx. That statement was not endorsed by the board, as we hadn't even been 
informed. We doubt that the Executive Council knew in advance either.</p>
<h3>Intervention</h3>
<p>This is the first time that the Government has disclosed any action in the 
local stock market since the Aug-98 intervention in which the HKMA
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/press/1998/981026e.htm">
spent</a> HK$118bn (US$15.1bn) of the public's money buying about 15% of the 
free float of the Hang Seng Index members at the time.</p>
<p>On 3-Mar-99, the HKMA
<a target="_blank" href="http://www.info.gov.hk/gia/general/199903/03/0303209.htm">
announced</a> the adoption of a new long-term asset allocation strategy in which 
the &quot;benchmark&quot; weighting would be 20% in global equities (up from 10%) of which 
5% would be in HK equities (up from zero before the intervention). This 
represented a fundamental Government policy shift as the HKMA had, until then, 
avoided conflicts of interest by holding only overseas equities, although the 
HKSAR Land Fund (set up to manage half of the pre-handover land premium 
revenues) did have a relatively small equity portfolio. The Land Fund assets 
were eventually transferred to the HKMA.</p>
<p>Under the 1999 allocation strategy, half of the Exchange Fund's HK equities 
would be managed as an index-tracking portfolio replicating the HSI, while the 
other half would be actively managed to allow some &quot;modest deviations&quot; from the 
HSI.</p>
<p>Then-Financial Secretary Donald Tsang, in his budget speech that day,
<a target="_blank" href="http://www.info.gov.hk/gia/general/199903/03/0303133.htm">
said</a> that this would involve cutting the holdings of HK equities from 17% to 
5% of the Exchange Fund portfolio. They eventually did this by creating the
<a target="_blank" href="../dbpub/articles.asp?p=51819">Tracker Fund of Hong Kong</a> (<b>TraHK</b>, 
2800) an open-ended unit trust which was used to gradually tap the surplus 
equity portfolio back into the market.</p>
<p>On 16-Sep-02, when the final tap issue of TraHK was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200209/16/0916249.htm">
announced</a>, HKMA said that its remaining holdings of HK equities would be 
about 5.3% of the portfolio, close to the published benchmark. On 3-Dec-02, with 
the tap issue completed, the HKMA
<a target="_blank" href="http://www.info.gov.hk/gia/general/200212/03/1203190.htm">
announced</a> that Exchange Fund Investment Limited (<b>EFIL</b>), a subsidiary 
with a separate board which was set up to manage the HK equity holdings, would 
be wound up, and the remaining portfolio transferred back to the HKMA.</p>
<h3>Benchmark dropped</h3>
<p>Almost as soon as EFIL was gone, quietly, without any announcement, the 
Exchange Fund Advisory Committee endorsed <i>&quot;with effect from&quot;</i> Jan-03, a 
change in the benchmark. It is not clear when they actually decided on this, and 
the earliest reference we can find to it is on
<a target="_blank" href="http://www.info.gov.hk/hkma/ar2003/english/pdf/Reserves.pdf">
page 87</a> of the annual report published over a year later on 5-May-04. Under 
the revised benchmark, 77% of the fund is allocated to bonds and 23% to 
equities. There was no mention of any change to the 5% weighting of HK equities, 
but it appears that this benchmark was dropped, and as a consequence, <b>the 
HKMA has allowed its portfolio allocation to the HK stock market to more than 
double from the 5% benchmark to 10.4%</b> as follows:</p>
<img class="center" alt="" src="../images/interv3.gif">
<p>The HSI has risen sharply since the SARS bottom of 2003, and our analysis 
shows that the HKMA has, since the start of 2003, been riding its HK 
equity gains and reinvesting most of the dividends in HSI stocks, rather than 
limiting its portfolio allocation to 5% by selling as the market rose. Along the 
way, it must have adjusted the portfolio to remove stocks which have left the 
index and add the new constituents. <b>HKEx was added to the HSI on 4-Dec-06, so 
that was probably when HKEx was first added to the Exchange Fund portfolio.</b></p>
<h3>The second-biggest investor in HK</h3>
<p>The total return on the HSI so far this year (to 7-Sep-07) is 22.95%, so 
assuming that they are sticking to the previously-announced policy of investing 
the HK portfolio only in HSI constituents, and are still riding the gains, then 
we estimate that the HKMA portfolio has grown since 31-Dec-06 from $122.4bn to 
about <b>$150bn as of 7-Sep-07</b>, excluding the additional purchases of HKEx.
<b>The HKMA's dollar exposure to HK equities has tripled since the end of 2002.
</b>By comparison, TraHK held $26.8bn at 30-Jun-07, so the HKMA's holdings are 
now almost 6 times as large as the fund it created.</p>
<p>That, plus its $91bn stake in MTRC, makes the HK Government the 
second-largest single investor in the Hong Kong stock market, after the mainland 
Government (which has controlling stake in numerous companies worth trillions).</p>
<h3>Weightings</h3>
<p>As of 7-Sep-07, prior to the index adjustment explained below, HKEx had a 
weighting of 2.83% in the HSI, and HKEx had a market value of HK$168.9bn, so if 
the Exchange Fund just held an index weighting of HKEx, then it would have owned 
about $4.25bn of HKEx shares, or about 2.5% of HKEx.</p>
<p>&quot;Sources&quot;
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=1&art_id=53093&sid=15286164&con_type=1">
told the media</a> on Friday that the Government had &quot;recently&quot; purchased 15.72m 
shares (1.47%) at an average $155.22 per share for $2.44bn. Virtually all of 
that must have been on Friday, when the stock closed at a record $158.00. Prior 
to Friday, it had never traded above $149.9. The purchases amounted to a 
one-third increase in the stake.</p>
<p>Part of Friday's purchases may be explained by the adjustment in the HSI 
index constituent weightings which took place after the market closed on Friday 
night, in which the weighting of HKEx was increased due to the application 
of the third and final phase of the
<a target="_blank" href="http://main.hsi.com.hk/hsicom/announce/20070813e_a.pdf">
free float and capping adjustments</a>. HKEx has a Free-float Adjustment Factor 
(FAF) of 100%, whereas stocks with controlling shareholders have lower FAFs 
after Friday, reflecting the percentage of shares not held by controlling 
shareholders or subject to lock-ups. Also, stock weightings are now capped at 
15%, down from 20% before Friday.</p>
<p>Based on Friday's closing prices and the new FAFs, we estimate that the 
$150bn of HSI stocks held by the Exchange Fund translates into 3.2% of the free 
float of each stock, apart from the stake in HSBC (with an FAF of 100%), where 
the stake would be cut to about 1.4% due to the 15% weighting cap. <b>This means 
that the Exchange Fund would own about 3.2% of each of HKEx, Bank of East Asia, 
Sinopec H-shares, Swire Pacific &quot;A&quot; shares and China Life H-shares, </b>which 
all have FAFs of 100%, 2.7% of Esprit, 2.4% of CLP and PCCW, and so on.</p>
<p>So we can see that the Government has, at some point since HKEx joined the 
index on 11-Sep-06, decided to increase its stake way above what an index 
weighting would justify.</p>
<p>According to annual reports, including 2006, the HKMA manages its equity 
portfolios <i>&quot;exclusively through external fund managers&quot;</i> - in other words, 
it does not pick stocks, to distance itself from the market. Clearly the 
Government has deviated from this exclusivity by deciding itself to invest 
further in HKEx.</p>
<h3>Disclosure was &quot;voluntary&quot;</h3>
<p>The Government has, on several occasions, claimed that it is exempt from the 
Securities and Futures Ordinance, and therefore, unlike other investors, has no 
disclosure obligations when its holdings exceed 5% of a company. We strongly 
disagree with that interpretation of the law, because it creates an unlevel 
playing field in our markets, but it has never been tested in court and we 
assume that the Government still holds that view, so Friday's disclosure was 
voluntary.</p>
<p>If the Government's interpretation is correct, then that &quot;State immunity&quot; 
also extends to PRC Government organs, so they might have undisclosed holdings 
over 5% of HK-listed companies too.</p>
<p>We wrote about this problem in the context of the 1998 market intervention 
and in our article <a target="_blank" href="abovethelaw.asp">State Securities 
Above the Law</a> regarding the MTRC, where the Government voluntarily discloses 
in annual reports the shares held by the Financial Secretary and by the Exchange 
Fund, but does not disclose include shares held by other entities under 
Government control.</p>
<p>So although the Government has disclosed the HKMA's position in HKEx, there 
is no guarantee that it will continue to disclose changes in its position, or do 
so on time, and other Government entities or statutory bodies may also hold 
shares in HKEx. For example, the Housing Authority, after it sold the Link REIT,
<a target="_blank" href="http://www.info.gov.hk/gia/general/200701/09/P200701090141.htm">
announced</a> on 9-Jan-07 that it would put HK$12.5bn into global equities, 
including HK. Another big holder is the Subsidized Schools Provident Fund, 
managed by the Treasury, which at 31-May-07
<a target="_blank" href="http://www.edb.gov.hk/FileManager/EN/Content_262/fbsspf-0507%20eng.pdf">
held</a> $14.6bn in HK equities.</p>
<p>We call on the Government to amend the Securities and Futures Ordinance (<b>SFO</b>) 
to expressly provide that it binds the Government. Until they do, any claim to 
be operating a level playing field in HK is hogwash.</p>
<h3>Takeover protection built-in</h3>
<p>So why did the Government buy these shares? The first thing we can rule out 
is takeover protection. The Government has no need to hold any shares in HKEx in 
order to protect it from hostile takeover, because HKEx is already a 
Government-controlled company, for three reasons:</p>
<ol>
	<li>Under
	<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/4722c80ef0bacdf148256bba00119f4c">
	Section 61</a> of the Securities and Futures Ordinance, no person can hold 
	more than 5% of HKEx without the written approval of the Securities and 
	Futures Commission (<b>SFC</b>), after consulting the 
	Financial Secretary. If a person breaks the law and buys the shares anyway, 
	then the SFC can prevent that shareholder's votes from counting in any 
	shareholder meeting, leaving them powerless.</li>
	<li>Even if the SFC stood back and allowed someone, or a group of 
	unaffiliated shareholders, to acquire more than 50% of the company, 
	shareholders are only allowed to elect 6 out of the 13 directors, so the 
	shareholders would not get control of the board. Take it from us, although 
	there is healthy debate and discussion, the Government ultimately always 
	gets what it wants in the HKEx boardroom, even if the Government-appointed 
	directors have to do U-turns to get it.</li>
	<li>A large part of the value of HKEx is attributable to its current and 
	future listings of mainland Chinese companies, the largest of which are 
	controlled by the mainland Government. Nobody would want to take over HKEx 
	without Beijing's consent, as it could result in the loss of business, 
	reducing value. And if Beijing consents, then surely the HKSAR Government 
	would follow.</li>
</ol>
<h3>Votes in a merger or acquisition</h3>
<p>Another reason suggested to the media by Government &quot;sources&quot; is that the 
Government's holding would buy them some say in the event that one day HKEx were 
to merge with one or both of the mainland exchanges. At the current shareholding 
level, that makes no sense. HKEx shareholders would of course support any 
proposal that was in their best interests and enhanced value, whereas if they 
were offered a clearly value-destroying proposal, then they would vote it down. 
Unless the proposal was just marginally bad, 5.9% would not make any difference 
to the outcome. So if that is the Government's real concern, and they want to 
position themselves to railroad a bad deal through, then they will have to buy a 
much larger stake in HKEx (perhaps 29.9%, avoiding the 30% takeover bid 
threshold), at considerable expense to taxpayers, and then take a loss on it.</p>
<h3>Votes in an election</h3>
<p>One possible motive that bears more weight is xenophobic paranoia, possibly 
transmitted from Beijing, which may have difficulty accepting the notion of 
genuinely independent directors, even in a minority, on the board of HKEx. 
Beijing closely controls the Shanghai and Shenzhen exchanges via the China 
Securities Regulatory Commission.</p>
<p>At each AGM of HKEx, 2 of the 6 elected seats on the board of HKEx are 
available for election for a 3-year term. Your editor was elected in 2003 and 
re-elected in 2006. As readers will recall, in 2006 Christine Loh Kung-wai, 
former legislator and head of the Civic Exchange think tank,
<a target="_blank" href="HKExElection2006.asp">ran with us on a joint ticket</a>, 
contested by casino tycoonlet Lawrence Ho Yau-lung, incumbent director Dannis 
Lee Jor-hung, and one other former broker.</p>
<p>When the votes were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060427/LTN20060427020.PDF">
counted</a>, shareholders saw fit to return your editor to office with (modesty 
aside) the largest net vote of any contested election at HKEx, and also elected 
Ms Loh. Mr Ho came a distant third, and the other two candidates had negative 
net votes.</p>
<p>At the next AGM in 2008, the terms of Bill Kwok Chi-Piu and Vincent Marshall 
Lee Kwan-ho will expire and they may stand for re-election, along with any other 
candidates.</p>
<p>The Government's stake could be the swing vote in a future contested 
election, but would not be anywhere near enough to negate the support we 
received last time around. If that is their goal, then they would need a much 
larger stake. It hardly seems worth it.</p>
<h3>Conclusions</h3>
<p>Whatever the real reasons for the Government's purchase, it sends a very 
negative signal to the market as a whole, and increases uncertainty. Until now, 
the Government had not visibly intervened in the market since 1998. How much of 
HKEx do they intend to buy, and when? Will they tell us if they have bought or 
sold more? Are they willing to underpin the share price with further purchases 
if the stock falls? What other stocks do they intend to buy?</p>
<p>The increasing exposure of the Exchange Fund to HK Equities, now estimated at 
HK$150bn (before the increase in HKEx) or 3.2% of the free float of each company 
in the HSI, is also worrying on two levels. First, it puts the Government in a 
position of conflict of interest in relation to the companies it invests in at 
the same time as dealing with them, taxing them and regulating them, and second, 
it also means that in the event of a financial crisis in HK, the Exchange Fund 
will be piling up investment losses at the same time.</p>
<p>On conflicts of interest, take, for example, the electricity companies with 
which the Government is negotiating a new scheme of control which may reduce 
their fat returns, or the property developers with which it negotiates land 
premiums, or the telecom company it regulates on interconnection tariffs with 
mobile operators.</p>
<p>As for investment risk, in the 2007 budget speech, the Government
<a target="_blank" href="http://www.budget.gov.hk/2007/eng/budget34.htm">said</a> 
that it would adopt &quot;let's pretend&quot; accounting by taking the average of the 
actual gains or losses on its investments (in the Exchange Fund) over a 6-year 
period (in the fiscal reserves), subject to a minimum guaranteed return. This is just accounting trickery. In effect, 
the Exchange Fund becomes an off-balance-sheet buffer to the real world of gains 
and losses, and any loss it suffers will take 6 years to trickle through to the 
reported budget deficit of the Government. They probably made this change this with an eye to 
the increasing equity exposure of the Exchange Fund, which will increase 
volatility of returns.</p>
<h3>Over-capitalised Government</h3>
<p>There really is no need to have any equity exposure at all. We often have to 
call on listed companies to return surplus capital to shareholders rather then 
punting the stock market. The same applies to the Government: it has surplus 
funds and should return them to the community in the form of revenue reductions 
(tax, rates and duties), not invest them in the market. If the Government were a 
person and money were fat, then this patient is grossly obese.</p>
<p>The amount needed by the Exchange Fund to back the currency board, about 
HK$297bn, is only a fraction of the $1,274bn in there now (<a target="_blank" href="http://www.info.gov.hk/hkma/eng/press/2007/20070831e3.htm">31-Jul-07 
figures</a>). In summary, right now, the Government has about HK$1 trillion in 
excess liquid savings. Whatever happened to Donald Tsang's policy of
<a target="_blank" href="http://www.news.gov.hk/en/category/ontherecord/060919/html/060919en11001.htm">
big market, small government</a>?</p>
<p>It would take several years to tap the surplus capital back into the economy 
with deliberate, budgeted deficits - say an average $100bn per year (in 2007 
dollars) over the next 10 years - a huge revenue cut relative to the $168bn of 
taxes, rates and duties in the
<a target="_blank" href="http://www.try.gov.hk/internet/pde_accrual_accounts_2005_06.pdf">
year to Mar-06</a>. Alternatively, some of the money could be used to upgrade 
our education and health systems. After depleting the surplus capital and 
tapering the deliberate deficit back to neutral in 2017, the revenue base (or in 
corporate terms, cash flow) of the Government, and its substantial fixed asset 
base (land, buildings and infrastructure) would still leave it ample borrowing 
capacity to handle future cyclical budget deficits. During the tapping out of 
the surplus, the stimulative effect of lower taxes would attract new business to 
HK.</p>
<p>This ridiculous hoarding of public wealth cannot continue indefinitely. It's 
time for a complete rethink of the Government's financial management.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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