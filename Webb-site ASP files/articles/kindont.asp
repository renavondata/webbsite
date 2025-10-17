
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

<script type="text/javascript">document.title="Kin Don't";</script>

	<div class="summary">We have a rule of thumb when investing in small-caps: if a stock is going to implode, it will usually do so within the first 2 years after listing. Suit maker Kin Don provides an excellent example of this. Enjoy this horror story of questionable announcements, timely directors' dealings and several demonstrations of how to exploit Hong Kong's weak regulatory framework.</div>

<h2 class="center">Kin Don't<br>
<span class="headlinedate">1 September 2000</span></h2>
<p>There's a rule of thumb we use when investing in small-caps: if
a stock is going to implode, it will usually do so within the first 2 years
after listing. So invest in a fresh IPO at your peril - nothing in the rules
will protect you from disaster. </p>

<p>With this little maxim in mind, here is the story of Kin Don
Holdings Limited (<b>Kin Don</b>), maker and distributor of men's suits,
leatherware, leather goods and accessories in the PRC. This stunning IPO was brought to you
by sponsor BNP Prime Peregrine and listed on 9-Sep-98, almost 2 years ago. </p>

<p>On paper, the track record looked good - turnover and profits
had been growing steadily in the track record period (3 years to 30-Nov-98 and 4
months to 31-Mar-98) and the company forecast a net profit of not less than
$110m for the year ending 30-Nov-99. In the event, that was the first and only
profit Kin Don has recorded as a public company, coming in at $111.48m, up 19.7%
on the previous year. Auditors Ernst &amp; Young gave a clean audit report. </p>

<p>However, look back at the prospectus and we see that the company
paid out dividends of $208.15m during the track record period, representing 83%
of net profits. They then raised only $76m of net proceeds in the IPO - in other
words, the company did not appear to need public money for expansion when it
could have retained profits instead. On top of that, two pre-existing shareholders
sold 30% of the shares on offer in the IPO, raising $37.5m gross. </p>

<p>After flotation, Kin Don was 56.1% owned by Keen Intelligence
Corporation (<b>KIC</b>) which was 92% owned by Kin Don's Chairman Mr Au Tung
Chi (<b>Mr Au</b>) and 8% by his youngest brother Mr Ou Tong De. </p>

<h3>IPO flop</h3>

<p>The IPO was not what you'd call popular. Only 60 public
applications were received. Anyone who wanted $5m or less of stock&nbsp; (known
as Pool A) got all that they wanted, since it was only 90% subscribed. In Pool
B, the other 5 applications ensured that the public offer was over-subscribed by
30%. They would have failed to make the required minimum 100 shareholders, but
fortunately 360 employees (mostly PRC production and warehouse staff) applied
for a total of 986,000 shares&nbsp; - just 8% of the amount available for the
employee tranche. </p>

<h3>The corporate finance specialist</h3>

<p>On 6-May-99, KIC gifted 19m shares, or 3.8% of Kin Don, to
corporate finance specialist Kenneth Kon Hiu-king, an Executive Director of Kin
Don. Mr Kon had joined the group in Jan-98 ahead of the Sep-98 float, and was
responsible for the corporate planning, development and the finances of the
group. At the time of the flotation, he was also an Executive Director of
HK-listed Dan Form Holdings Company Ltd (0271). </p>

<p>Also on 6-May-99, KIC sold 11m shares in an off-market
transaction at $1.00 each to an unknown party. Market volume that day was only
3.30m shares, and the stock closed at $1.12. </p>

<h3>Directors resign</h3>

<p>Four brothers of the Chairman (all surnamed Ou) were also on the
board at the time of the IPO. Mr Au's elder brother, Mr Ou Tong Shu, was responsible
for <i> &quot;the day to day financial and operational management of the Group's
production in the PRC&quot;</i>, and joined in 1993. A younger brother, Ou Tong Hui,
was responsible for <i> &quot;production planning and day to day management of the
Group's production facilities in the PRC&quot; </i>and joined in 1990<i>.</i> </p>

<p>Both of these jobs were pretty important, you might think. The
directors' report dated 23-Apr-99 stated that (in the usual way) both men would retire by rotation at
the Annual General Meeting and, being eligible, would offer themselves for
re-election. Such a re-election would be a foregone conclusion since Mr Au was
the controlling shareholder. </p>

<p>However, a month later, at the AGM on 26-May-99, the two
brothers <u>did not</u> offer themselves for re-election. Obviously they had
changed their minds. They owned a total of 100% of the shares of a company
called Luminous Corporation (<b>Luminous</b>), which owned 49.5m shares of Kin Don, or <b>9.9%</b>
of the issued shares. As soon as the brothers left the board, their
shareholdings as directors were no longer discloseable, and as they held less
than 10%, the holding was not discloseable as a &quot;substantial
shareholding&quot; either. </p>

<p>This normally sleepy stock then came to life, with volume
jumping on 22-Jun-99 to 7.57m shares and the price rising 16.0% to $1.52. The
next day, it rose to $1.65 on volume of&nbsp; 39.63m shares, or 7.9% of the
company. </p>

<p>Finally on 24-Jun-99 the stock was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990624/LTN19990624054.HTM" target="_blank">suspended</a>
pending an announcement: </p>

<blockquote>

<p>&quot;to clarify certain today's newspaper articles concerning a
fund raising exercise made by the Company and/or the sale of the controlling
shareholder's interest in the Company&quot; </p>

</blockquote>
<p>In the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990625/LTN19990625041.HTM" target="_blank">announcement</a>,
the directors said they were not aware of any reason for the recent increases in
the price and trading volume, and: </p>

<blockquote>
  <p>&quot;Furthermore, the Directors and [<b>KIC</b>]... and their
  respective associates also have not recently entered into any formal agreement
  and are not in discussion of an agreement for the sale of their interests in
  [Kin Don].&quot; </p>

</blockquote>

<p>You should note that your &quot;associates&quot; as defined in the
Listing Rules does not include your brothers and sisters. Trading resumed on Friday 25-Jun-99 with very heavy volume of
183.71m shares (equivalent to 36.7% of the company) and the stock crashed 45.7%
to close at $0.88. Once again, the SEHK required an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990628/LTN19990628027.HTM" target="_blank">announcement</a>,
which was dated 26-Jun-99. This time, the directors maintained that the previous
announcement was still accurate, and then gave a lecture on the merits of the
stock: </p>

<blockquote>

<p>&quot;As disclosed in the Company's annual report for the year
ended 30 November 1998, the Group recorded a profit attributable to the
shareholders of about HK$111 million and consolidated net assets of about HK$195
million with earnings per Share of HK$25.75 cents each. The shareholders and the
public are therefore recommended to make their investment decisions based on the
actual business performance and prospects of the Company.&quot; </p>

</blockquote>

<p>That would all be encouraging stuff, but note that this announcement
was made over 3 weeks after the half-year end of Kin Don, 31-May-99. You will
later see why this is significant. </p>

<p>On 29-Jun-99 the <i>South China Morning Post </i>reported that
&quot;rumours last week suggested Kin Don was about to place 60 million shares
at $1.38 per share, but the placing turned out to be a private placing of
existing shares&quot;. </p>

<p>We do not know whether these shares included any of the 49.5m shares
held by the Ou brothers' company, Luminous, since as ex-directors their shareholdings
were no longer discloseable. </p>

<p><b>Note to regulators: </b>The solution to this problem is to amend the Securities
(Disclosure of Interests) Ordinance (which are currently being redrafted into
the combined SFC Bill) so that the obligation of disclosure persists for a
reasonable period of time (say 1 year) after ceasing to be a director, unless
that person dies in the meantime. This would prevent people &quot;board
hopping&quot; to avoid disclosure of imminent stock transactions. The 1-year
period would be the same as that applied under the connected transaction rules. </p>

<h3>Interim results</h3>

<p>On 18-Aug-99 Mr Wei Cheng Wen (<b>Mr Wei</b>) was appointed as
an Executive Director of Kin Don. </p>

<p>On 30-Aug-99, just 1 day short of the 3-month deadline, the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990830/LTN19990830058.HTM" target="_blank">interim
results</a> of Kin Don were released. Oh dear. Turnover for the 6 months to
31-May-99 was down 25%, and the company had plunged into a net loss of $42.809m
compared with a profit of $52.662m in the same period in the previous year. </p>

<p>This was after provisions for accounts receivable of $15m and
provisions for inventories of $43m. </p>

<p>It makes you wonder just why the directors were so bullish in
reminding investors of the previous year's results in that announcement on
25-Jun-99, over 3 weeks after the period ended. </p>

<p>On 1-Sep-99 Ou Tong Guo and Mr Kon (the corporate finance
specialist who had been gifted 19m shares less than 4 months earlier) resigned,
while a Mr Poon Chi Fai (<b>Mr Poon</b>) was appointed as an independent
non-executive director. All we know about him is that he is a Justice of the Peace. </p>

<p>Things were not looking up in Mr Au's private investments
either. On 16-May-99 the SCMP reported that a flat believed to be owned by Mr Au
was up for sale. Not just any flat, but a 3,902 sq ft penthouse duplex in the
harbour-front <a href="http://www.centamap.com/scripts/esrimap.dll?name=cent&amp;lg=B5&amp;tp=1&amp;cx=835859.141030526&amp;cy=816005.222535016&amp;zm=4&amp;sx=&amp;sy=&amp;sl=&amp;ss=0&amp;mx=835859.141030526&amp;my=815858.672531964&amp;ms=2&amp;ly=&amp;lb=&amp;lp=&amp;vm=&amp;ck=1&amp;ca=1&amp;cb=0&amp;mt=&amp;ts=0&amp;za=0&amp;zb=0&amp;click.x=408&amp;click.y=513" target="_blank"> Convention Plaza</a> luxury apartment block. Mr Au was believed to
have bought the flat for $77m in May-97, near the top of the market. A case of
harbour hubris, perhaps. </p>

<p>In the event, the flat was not sold and it later emerged that it
was owned by a company called Kin Don (China) Ltd, which is owned 55%
by Mr Au, 30% by Ou Tong Guo and 15% by Ou Tong Shu. </p>

<h3>KIC pledges its stock</h3>

<p>On 12-Oct-99, KIC pledged its remaining 250.5m shares (then
50.1% of Kin Don) to a company called Magical Eyes Ltd (<b>Magical Eyes</b>), in which a company
called Polytec
Holdings International Ltd was also interested (more about that later). This information was in a
statutory disclosure printed by the Stock Exchange on 20-Oct-99. </p>

<p>Months later, it emerged that the loan was in the amount of $35m, or about $0.14 per
share, that it was due after six months on 12-Apr-00, and that the interest rate was a whopping
24% p.a. - not a sign of a strong credit. A second legal charge was also granted
on the Convention Plaza apartment (presumably behind a first mortgage from a
bank). </p>

<h3>Two Placings</h3>

<p>In between the pledge by KIC and its disclosure, Kin Don
Holdings <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991015/LTN19991015043.HTM" target="_blank">agreed</a>
on 14-Oct-99 to place 65m new shares at $0.20 each through <a href="http://www.koffman.com.hk/" target="_blank">Koffman
Securities</a> to &quot;more than six independent investors&quot;. No mention of
the pledge by KIC was made in that announcement. </p>

<p>On 3-Nov-99, Philip Lam Kwing Sun (<b>Mr Lam</b>) was appointed
as an Executive Director of Kin Don. </p>

<p>You might be wondering who Mr Wei, Mr Poon and Mr Lam are.
Unfortunately, the Listing Rules do not require any biographical information to
be disclosed on directors upon their appointment, only if they are still on
board in the next annual report. In fact, issuers are not even required to
publish an announcement - a simple &quot;<i>press release or such other method
as the issuer thinks fit</i>&quot; will do. In practice, most publish a simple
notice of appointment. So new directors might as well be from Mars, for all you
know about them. This is a loophole because it allows directors (particularly
so-called &quot;independent&quot; ones) to hop in and out of the boardroom
between annual reports and avoid any disclosure except of their name. </p>

<p>We liken
this to quantum fluctuations in a vacuum, where under Heisenberg's uncertainty
principle, short-lived particles can jump in and out of existence without
violating the conservation of energy. Quantum directors are similarly transient.
But we digress... </p>

<p>Perhaps at this stage, having seen the shares lose over two
thirds of their IPO price, the board of Kin Don felt things couldn't get much worse.
Seeking motivation, they awarded 4 directors options over 44m shares at an
exercise price of $0.255 and exercisable from 4-Nov-99 to 18-Aug-08. </p>

<p>Next, on 5-Nov-99, another placing was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991108/LTN19991108042.HTM" target="_blank">announced</a>
(by now the KIC pledge had been disclosed), again through Koffman Securities, this
time for 35m new shares at the same price of $0.20, taking the total of the two
placings to 100m shares, or 20% of the previous issued share capital. That
reached the limit on new issues under the standard general mandate granted to
the board at the AGM. The stated purpose of both issues, raising a total of <b>
$19.24m</b> net, was to repay borrowings and for general working capital. </p>

<p>Even with the share capital enlarged by the placings, the option
grant was equivalent to a hefty 7.7% of the issued shares (the maximum allowed
is 10%). Of the 44m options, 14m went to each of Mr Au and his brother Ou Tong
De, while 8m went to each of Mr Lam and Mr Wei. </p>

<h3>Li Yang Joint Venture</h3>

<p>On 20-Dec-99 Kin Don announced a joint venture with Li Yang
Advertising Public Relations (HK) Limited (<b>LYAPR</b>). Kin Don and LYAPR had
established a JV on 28-Jul-99 called Li Yang Broadcasting &amp;
Advertising (HK) Ltd (<b>JV1</b>). This in turn would enter into a 50:50 joint
venture with Beijing Li Yang Advertising Co Ltd (<b>BLYA</b>) to establish a
second-level mainland JV called Bright International Advertisement Co Ltd (<b>JV2</b>). </p>

<p>Both LYAPR and BLYA were controlled by Mr Li Yang, a <i> &quot;well
known television programme host and dubber in the PRC&quot;</i>. BLYA was appointed
as the exclusive advertising agent and advertisement issuer of a television
channel in the PRC for an initial term of 3 years from Sep-99 with first refusal
for a further term of 5 years. For a nominal fee of $1, these rights would be
transferred to JV2. The unnamed TV channel is broadcast through the network of
Beijing Cable Television <i> &quot;with an estimated viewers of more than 20 million
covering Beijing, Hebei and Tianjin&quot;</i>. </p>

<p>This was a somewhat lopsided funding arrangement.&nbsp; Kin Don
was to contribute a total of $50m cash for 48% of JV1 <u>and</u> give it a $30m
interest-free loan, while LYAPR would contribute <i> &quot;production equipment and
machineries valued at HK$18m as appraised by an independent valuer on
3-Jul-98&quot;</i> in return for 52% of JV1. So Kin Don would have a 24%
interest in JV2. </p>

<p>LYBA would contribute RMB25m (HK$23.5m) in cash to the registered capital
of JV2, while BLYA would contribute the same amount <i> &quot;by way of injection of
tangible and intangible assets&quot;</i>. It was not clear what JV1 would do
with the rest of the $80m. </p>

<h3>Silver Galaxy</h3>

<p>Kin Don's $80m total contribution to JV1 was due in instalments - $40m
by 30-Dec-99 and $40m (including the $30m loan) by 31-Jan-00. </p>

<p>Given Kin Don's recent losses, you might wonder where all that
money would come from. On the same day, a Cayman Islands company called Silver
Galaxy Investment Ltd (<b>SG</b>) agreed to advance on 30-Dec-99 an unsecured
loan to Kin Don of <b> HK$42m</b> at an interest rate of 5% over HIBOR, repayable on
31-Mar-00. Silver Galaxy also had the right to elect, prior to drawdown, for
repayment of part or all of the loan in the form of new shares at the one-month
prior average market price, subject to a cap of $0.72 per share. Alternatively,
Silver Galaxy could choose convertible bonds. </p>

<p>In the event, on 30-Dec-99 SG <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000104/LTN20000104084.HTM" target="_blank">elected</a>
for half of the loan to be repayable in shares at $0.3645 per share, and the
other $21m in cash. At that time, it was disclosed that <i>&quot;substantially
all the profits of [SG] is indirectly owned by a Japanese company which is
principally engaged in securities business&quot;</i>. SG <i>&quot;indicated that
it may dispose of the [new] shares after their issue&quot;.</i> </p>

<h3>Out of Options</h3>

<p>On 30-Dec-99 (the day the first instalment on JV2 was due) Mr Au exercised part of his options, putting $3m
into the company, and the remaining $0.57m for the rest of his options went in 3
weeks later on 19-Jan-00.&nbsp; </p>

<h3>Third Placing</h3>

<p>On 14-Jan-00 Kin Don <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000117/LTN20000117055.HTM" target="_blank">agreed</a>
to place 150m new shares at $0.28 per share, a discount of 19% to the market
price. This represented 24.1% of the existing issued shares. The placing agents
were Hantec Securities Co. Ltd (<b>Hantec</b>) for 80m shares, and Ever-Long
Securities Co. Ltd (<b>Ever-Long</b>) for 70m shares. A placing fee of 2.5% was
paid. </p>

<p>What later emerged is that Hantec is wholly-owned by Mr Johnny Or
Wai Sheun (<b>Mr Or</b>) who is Chairman of Polytec Group, and that Magical Eyes
(the lender to KIC) is indirectly (presumably vial Polytec) wholly-owned by his
family trust. In other words, the lender to KIC, which had a security interest
in the controlling shareholding, was also the placing agent to Kin Don. </p>

<p>Polytec is a private group principally engaged in textile and
garment manufacturing, property development and investment in Hong Kong and
Macau. Mr Or is also a director of <a href="http://www.nwi.com.hk/projects/portfolio_power6.html" target="_blank">Campanhia
de Electricidade de Macau</a>, the Macau electricity monopoly. </p>

<p>Ever-Long is wholly owned by HK-listed <a href="http://www.styland.com/" target="_blank">Styland
Holdings Ltd</a>, headed by Kenneth Cheung Chi Shing. Mr Cheung was recently in
the news on 11-Aug-00 when former fund manager Kevin Lee Kwok-wing was jailed
for 6 years after being convicted of (amongst other things) accepting $4m in
bribes from Mr Cheung in Mar-93 in return for arranging for Rockerfeller &amp;
Co (Far East) Ltd (of which Mr Lee was Managing Director) to purchase shares in
Styland. No charges have been laid against Mr Cheung. </p>

<h3>Issue of Convertible Debentures</h3>

<p>On 22-Jan-00 Kin Don <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000124/LTN20000124074.HTM" target="_blank">announced</a>
an issue of US$5m (<b>HK$39m</b>) of unsecured convertible debentures due 31-Dec-03. The stated purpose of the issue was to refinance the Silver
Galaxy loan and to partly fund the $40m outstanding obligations to JV1. </p>

<p> The
subscriber was a Cayman Islands company called Stone Church LLC. No information
was given on its &quot;independent third party&quot; owners. The loan was
unsecured. Completion of the subscription took place on 29-Feb-00. </p>

<p>The interest rate was 3%, while the formula for calculating the conversion price was
horrendously complicated. The conversion price may be 130% of the average
closing price over the 20 days prior to completion (that works out to
$0.504725), but it also depends on the market price at the time of exercise. </p>

<p>If the average of the 5 worst days' share prices in the 20 days
prior to a conversion taking place is less than $0.504725, then the conversion
price is reduced to 88% of that average or $0.1892 (the <b>Stipulated Price</b>),
whichever is higher. All this is after some simplification by <i>Webb-site.com</i>! </p>

<p>Crucially, in the event that the shares fall to the Stipulated Price or
less for 10 days in a row, the debenture holder can require redemption of the
bond at 115% of face value plus accrued interest. </p>

<h3>Another bridging loan</h3>

<p>On 2-Feb-00, Kin Don <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000203/LTN20000203063.HTM" target="_blank">announced</a>
that the second $40m due to JV2 by 31-Jan-00 had been deferred. The $10m for
equity was deferred just by 1 day, while the $30m shareholders loan was deferred
until 2-Mar-00. Apparently cashflow was getting tight, partly because the
circular seeking shareholders' approvals for the third placing and the
convertible debenture issue had still not gone out, so the issue money was not
available. </p>

<p>To fund the $10m, Kin Don borrowed another <b> $10m</b> from SG,
repayable a month later at an interest rate of HIBOR+5%. The agreement provided
that if the loan was not repaid, then SG would have the right to convert the
debt into part of the stake in JV1 at cost. </p>

<p>Kin Don then owned 48% of JV1, but had not yet advanced the
$30m shareholder's loan. A supplemental agreement provided that if the money was
not paid by 2-Mar-00 then the JV1 partner could take back 18% of JV1 (based on
an $80m valuation for 48% of JV1, implying a <b>$333m</b> valuation on JV2). </p>

<p>No announcement has been made on whether the $30m was in fact
paid. </p>

<h3>The brothers cash out</h3>

<p>Ou Tong De exercised his share options on 11-Feb-00 and the
other two directors exercised their options the next day, over 2 months since
Kin Don's year end of 30-Nov-99. So much for long-term incentives. By now, the
stock price had recovered on the back of the &quot;treasure hunt&quot; for shell
situations that accompanied dot-com fever in the market. </p>

<p>Mr Wei sold 2m of his 8m option shares in the market between
15-Feb-00 and 17-Feb-00 at prices between $0.45-$0.43, then Mr Au purchased the
balance of 6m shares on 17-Feb-00 at $0.425.&nbsp; </p>

<p>Ou Tong De sold his 14m option shares in the market between
17-Feb-00 and 29-Feb-00 at prices between $0.435 and $0.295. </p>

<p>Mr Lam sold 2.66m option shares in the market between 21-Feb-00
and 24-Feb-00 between $0.428 and $0.375, then Mr Au purchased the balance of
5.34m on 2-Mar-00 at $0.29. </p>

<p>We have previously explained in our <a href="../pages/loopholes.asp#DelayInsider" target="_blank">loopholes</a>
section how the Listing Rules incentivise companies to delay their results so that
directors can deal, since the cut-off is one month prior to the results. The
solution is to prohibit dealings from one month after the period end, to
incentivise early release of the results.&nbsp; </p>

<p>As you can see, at this stage Mr Au was still putting money into
the shares, not taking it out as his fellow directors had done. Remember that
his main holding, through KIC, was pledged to Mr Or's company as security for a
loan. It was
probably important to maintain the value of the collateral for the loan, and
also if the price fell too far, then Kin Don's convertible debenture would become
repayable too. </p>

<h3>Man over-board</h3>

<p>The two original independent non-executive directors (INEDs) of
Kin Don, Ms Margaret Man and Mr Fan Jia Yan, both resigned on 1-Mar-00. One of
the vacancies was filled by solicitor Robert Ip Chun Chung, who is also an INED
of Ecopro Hi-Tech Holdings Ltd, a NED of Sen Hong Resources Holdings Ltd, as
well as being an Executive Director of Wing Lee International Holdings Ltd. </p>

<p>On 14-Mar-00 Mr Au was granted 3.75m share options exercisable
until 18-Aug-08 at $0.235 per share. He exercised them on on 23-Mar-00. </p>

<h3>Results overdue</h3>

<p>While the other directors were cashing in their share options, the
30-Nov-99 financial year-end had passed, and the 5-month deadline for reporting
the results was approaching. On 28-Apr-00, the last possible day, Kin Don <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000428/LTN20000428030.doc" target="_blank">announced</a>
(Word format) that it could not produce audited results
as: </p>

<blockquote>

<p>&quot;Due to relocation of the Group's PRC office during the
past year, we had significant staff and manager turnover in the accounts
department&quot; </p>

</blockquote>

<p>Pity that they didn't have significant turnover in the accounts
themselves. In the unaudited results released instead, turnover dropped 25%
to $300.2m and earnings crashed to a net loss of $155.6m. The provisions
incurred in the first half of the year for accounts receivable had increased by
$10m. </p>

<p>The board set itself the target of announcing the final results
and dispatching the annual report by 31-May-00. </p>

<p>Sure enough, on 31-May-00 came <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000531/LTN20000531013.doc" target="_blank">another
delay</a> (Word format), this time to 30-Jun-00. 6 months
after the year-end, the directors wrote: </p>

<blockquote>

<p>&quot;The auditors have advised that they have not yet obtained
all the necessary information in finalising their audit...&quot; </p>

</blockquote>

<p>By 30-Jun-00, the problem was getting more specific. The <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000703/LTN20000703031.doc" target="_blank">announcement</a>
(Word format) said: </p>

<blockquote>

<p>&quot;The auditors have not yet obtained all the necessary
information and supporting documents (including in the areas of going concern
consideration, sales - accounts receivable and purchase - inventory&quot; </p>

</blockquote>

<p>&quot;Going concern consideration&quot; is accountant-speak for
deciding whether it is fair to assume that the business is still viable based on
its financial position - that is, whether it is still a &quot;going
concern&quot;. Once again, the results were delayed to 15-Aug-00. </p>

<h3>The return of Mr Or</h3>

<p>Remember the lender who had made a $35m loan to KIC, the
controlling shareholder, secured on its 250.5m shares in Kin Don? Well now, $30m
of the debt was overdue, and Mr Or was back with a full-blown rescue proposal to
take control. </p>

<p>On 29-Jun-00 his BVI company, Marble King International Ltd (<b>Marble
King</b>) conditionally <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000630/LTN20000630035.doc" target="_blank">agreed</a>
to subscribe 1,200m shares at $0.05 each, injecting $60m for 56% of the enlarged
company. </p>

<p>Marble King also agreed to
subscribe 3,400m convertible preference shares at $0.05 each, but only 10% of
the principal would be paid on completion, or $17m. The company cannot call up
the remaining 90% - it is entirely optional on the part of the holder. In the meantime, the
paid-up amount bears interest at 5% and all shares are redeemable. </p>

<p>This effectively means that Marble King would subscribe 340m
redeemable convertible preference shares and get 3,060m share options thrown in. </p>

<p><b>Note to regulators:</b> The technique neatly sidesteps the
Listing Rule that limits outstanding share options (excluding executive options)
to 20% of the issued capital. The same system was used recently by tobacco
tycoon Charles Ho Tsu- kwok when he took over Perfect Treasure Holdings and renamed it
Global China Technology Group. </p>

<p>This financing technique also ensures that there will still be
over 25% of the ordinary shares in public hands, while
the convertible preference shares are an option on future new shares if the
company expands. The original (pre-rescue) shareholders would be diluted down
from 100% to 17% of the company. </p>

<p>So initially, Mr Or was to inject $77m gross into Kin Don. The
deal was conditional upon Marble King being reasonably satisfied that the net
tangible assets of Kin Don at 31-May-00 were not less than $20m. The company
disclosed that at 31-Mar-00, it had outstanding debts of $157m, so gearing was
up to 785%. </p>

<p>On 18-Jul-00, the deal was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000720/LTN20000720022.doc" target="_blank">scrapped</a> because the condition was not fulfilled. So we know that net assets at
31-May-00 were less than $20m, or $0.021 per share.&nbsp; </p>

<p>On 24-Jul-00, Robert Ip Chun Chung resigned as an INED, having
lasted just under 5 months. He was replaced on the same day by Mr Liu Kwong Sang, a
Certified Public Accountant. </p>

<h3>End Game</h3>

<p>Things went from bad to worse. On 15-Aug-00, the Nov-99 results
were again <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000816/LTN20000816026.doc" target="_blank">delayed</a>
to 30-Sep-00. Hey - why not just wait and publish two years in one go? </p>

<p>At the same time, Kin Don announced that Stone Church LLC, the
holder of outstanding convertible debentures of US$3.75m, had written on
8-Aug-00 and demanded its money back, because the stock price had fallen below
the Stipulated Price ($0.1892) for 10 consecutive days. Incidentally, it seems
that US$1.25m of the debenture had already been converted. Kin Don said that it
did not have the resources to redeem the outstanding bonds. </p>

<p><b>Note to regulators:</b> HK Listing Rules do not require
punctual disclosure of conversions and option or warrant exercises, so it is
impossible to know how many shares are in issue without trotting down to the
registrar and asking them. This makes life more fun for people running stock
indexes since they don't always know from day to day what the correct market
capitalisation weightings are. </p>

<p>By this stage, Mr Or was evidently losing patience, and Magical
Eyes began to liquidate KIC's holdings of 250.5m shares in the market, starting
on 7-Aug-00 to 9-Aug-00 with 5,172,000 shares. </p>

<p>Magical Eyes <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000818/LTN20000818015.doc" target="_blank">sold</a>
the remaining 245.328m shares &quot;in the market&quot; on 17-Aug-00. The price
was $0.095 per share, or $23.3m in total. You'll
never guess who bought them. OK, maybe you <i> have </i> guessed - it was Marble King, Mr
Or's other company, as <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000823/LTN20000823014.doc" target="_blank">announced</a>
on 22-Aug-00. Mr Or is now the proud owner of 26% of Kin Don. </p>

<p>What next? It depends to some extent on exactly how bad things
are in Kin Don, how the losses were incurred, and what kind of shape Polytec is
in (very little is known about this private group). We can expect some kind of
restructuring proposal in which, if suitable for listing, Polytec could be
injected into Kin Don. </p>

<p>For long-term shareholders (if there are any) this provides
little solace. The shares closed yesterday at $0.097, down 90.3% from the IPO
price. The only dividend ever paid was 3.4 cents for the year to 30-Nov-98, and
the
company has net assets of less than $0.027 per share. The shares are now trading
on &quot;hope&quot; value alone. </p>

<p>As we remarked at the outset, cases like this provide a strong
reason to avoid small-cap IPOs until the companies are tried and tested in the
market. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9572">BNP PARIBAS CAPITAL (ASIA PACIFIC) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7091">POLYTEC ASSET HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11256">Au, Tung Chi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8798">Kon, Kenneth Hiu King</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11253">Or, Johnny Wai Sheun</a></li>
				
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