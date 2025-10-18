
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

<script type="text/javascript">document.title="M&C on the Cheap";</script>

	<div class="summary">In the second value-reducing transaction in 14 months, CDL Hotels is proposing to sell its majority stake in Millennium & Copthorne Hotels to parent City Developments. Takeovers normally command a premium, but CDL wants to pay a large discount, and then distribute the cash back out of CDLH. We look at this blatant attempt to buy off CDLH minorities with their own money, and at the timing of an option grant which would land the directors a profit of over HK$114m.</div>

<h2 class="center">M&C on the Cheap<br>
<span class="headlinedate">14 July 2000</span></h2>
<p class="revisedate">Revised 15-Jul-00</p>

<p>On 26-Jun-00 Hong Kong listed CDL Hotels International Ltd (<b>CDLH</b>) <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000627/LTN20000627031.doc" target="_blank">announced</a>
(Word format) its second restructuring in 14 months. </p>

<p>CDLH is proposing to sell its 52.4% stake in UK-listed <a href="http://www.mill-cop.com/" target="_blank">
Millennium &amp; Copthorne Hotels plc</a> (<b>M&amp;C</b>) to its Singapore-listed
parent, <a href="http://www.cdl.com.sg/" target="_blank"> City Developments Limited</a> (<b>CDL</b>) for HK$6,100m (GBP522m). This
represents about <b> GBP3.534</b> per share in cash. The transaction is a
&quot;connected transaction&quot; and therefore is subject to independent shareholders'
approval. </p>

<p>Conditional on the sale, CDLH will distribute between $7,210m
and $7,610m to its shareholders (including CDL) by way of a capital reduction.
This is equivalent to between HK$3.38-$3.49 per current share in CDLH. </p>

<p>Now normally when a company is taken over, it commands a
substantial premium to market price. M&amp;C has a hotel portfolio of 115 hotels
with 30,500 rooms in 13 countries. Several of these hotels are partly or
wholly-owned by third parties and managed by M&amp;C, so the net book value
does not include the future profits from the management contracts. Therefore,
assuming valuations have not changed since the year-end, if CDLH were to market
its majority stake in M&amp;C then it could expect bids from other hotel
companies at net book value or higher. </p>

<p>If you are a shareholder of CDLH, watch carefully. The M&amp;C
net book value at 31-Dec-99 was <b> GBP4.683</b> per share. That is <b>32.5% more </b>than
what CDL is offering you for control of M&amp;C. We also note that the assets of
M&amp;C include companies acquired from CDLH in the 1999 restructuring at a
discount of some $1,736m (then GBP139m) to valuation, or another GBP0.493 per
share. That would take net assets up to <b>GBP5.176</b> per share, which is <b>46%
more</b> than what CDL is offering. In addition, some of the original M&amp;C
properties are held at cost or at older valuations. </p>

<p>Even the market price of M&amp;C,
without a takeover premium, was yesterday (13-Jul-00) GBP4.105 (it was GBP3.985 just before
the announcement). That's16% more than what CDLH is offering. CDLH is 54.2% owned by CDL. The public and others (including
<a href="http://www.hongleong-group.com.sg/" target="_blank">
Hong Leong Singapore</a>, the controlling shareholder of CDL) own 45.8% of CDLH.
Let's look at how much value the public is losing here. </p>

<p>The public effectively own
45.8% of the 147.78m shares in M&amp;C which are held by CDLH. That's about
67.69m shares. They are being offered GBP3.534 per share, but in a sale it
would likely fetch at least GBP4.683 per share, being the net book value. The
difference of GBP1.149 per share amounts to a total disadvantage of GBP77.8m (<b>HK$908m</b>).
If you include the valuations of the assets acquired from CDLH in 1999, then the
difference is GBP1.642 per share, for a total discount of GBP111m (<b>HK$1,298m</b>). </p>

<p>To put it in terms of CDLH, that's a value-loss to public
shareholders of around <b>HK$1.37 per share of CDLH</b>. That's the value that
CDLH shareholders will give up if they approve this deal. </p>

<h3>Share options</h3>

<p>It gets worse. The announcement of the deal includes reference
to the 187.12m outstanding executive share options in CDLH. A check of the
accounts reveals only 91.02m outstanding at the end of 1999. Further checking
reveals that of the 96.1m&nbsp; options granted since the year end (net of any
which have been exercised or lapsed) <b> 87m </b> of these options were granted to the directors of CDLH
in late February (they were disclosed on 1-Mar-00 and 2-Mar-00), just 4 months
before this restructuring was announced. </p>

<p>That's equivalent to <b>4.2%</b> of the issued shares of CDLH. Of course,
we assume they had no intention back in March of proposing this transaction
(including the capital distribution) since otherwise the granting of options
would have been illegal insider dealing. </p>

<p>The new options give the right to subscribe $2.06 per new share
between 13-Mar-00 and 14-Jan-05, and the directors who got the options are:<br>
 </p>
<table class="numtable center">
	<tr>
		<td class="left"><i>Name</i></td>
		<td><i>Options granted<br>(m)</i></td>
	</tr>
	<tr>
		<td class="left">Kwek Leng Beng</td>
		<td>25</td>
	</tr>
	<tr>
		<td class="left">Kwek Leng Peck</td>
		<td>16</td>
	</tr>
	<tr>
		<td class="left">Wong Hong Ren</td>
		<td>12</td>
	</tr>
	<tr>
		<td class="left">Kwek Leng Joo</td>
		<td>10</td>
	</tr>
	<tr>
		<td class="left">Miguel Ko</td>
		<td>10</td>
	</tr>
	<tr>
		<td class="left">Gan Khai Choon</td>
		<td>8</td>
	</tr>
	<tr>
		<td class="left">Lawrence Yip Wai Lam</td>
		<td>4</td>
	</tr>
	<tr>
		<td class="left">Tan I Tong</td>
		<td>2</td>
	</tr>
	<tr>
		<td class="left"><b>Total</b></td>
		<td><b>87</b></td>
	</tr>
</table>
<p>Just by exercising the options, the directors will receive
HK$3.38-3.49 per share in the distribution, compared with the exercise price of
$2.06, and they will still own the shares afterwards. That hands them an instant gain of
between <b>HK$114.8m and HK$124.4m</b>, at the expense of all the other
shareholders (incuding CDL itself). The possible exercise of the share options is the reason for the
variation in the amount of the distribution, but all rational option holders
will exercise, and that puts the likely distribution per share at the lower end of the range. </p>

<p>On top of that, the directors already held 67m options at $2.24
per share granted on 13-Oct-97 and exercisable until 14-Sep-02 (equivalent to
3.2% of CDLH). These will yield
a further gain of at least <b>$76.4m</b> from the distribution. So the board
will walk away with at least <b>$191.2m</b> clear cash profit on their options
as well as the resulting shares in CDLH. </p>

<p>Kwek Leng Beng is the Chairman and MD, Kwek Leng Joo is his
brother, Kwek Leng Joo is their cousin, and Gan Khai Choon is their
brother-in-law. The Kwek family controls CDL through the privately-held Hong
Leong Investment Holdings Pte Ltd. </p>

<p>Outside of the family, Miguel Ko is the Deputy Chairman and CEO
of CDLH. Wong Hong Ren is a non-executive director of CDLH and is the Group Investment Manager of Hong Leong Management
Services Pte Ltd. Lawrence Yip is the
finance man, and Tan I Tong is a non-executive director who also sits on other
boards in the Hong Leong group. </p>

<h3>Was the option limit broken?</h3>

<p>On first glance, it seems that the Stock Exchange limit on the
granting of options, traditionally 10% of the issued shares (excluding those
issued when options are exercised) under all schemes in a 10-year period, may
have been broken. At least 32m options were granted in 1994, 19.05m in 1995, 1m
in 1996 and 90.225m in 1997. Together with at least 96.1m since the end of 1999,
that makes a total of 238.375m options. </p>

<p>Now of these options,12.13m were exercised between 1-Jan-95 and
the end of 1999, so we must exclude those. The latest issued share capital is
about 2,064m shares, less the exercised options leaves 2,052m. By comparison,
the options granted are 11.5% of this figure. Has the limit been broken? </p>

<h3>Directors' dealings</h3>

<p>Miguel Ko became CEO of CDLH on 18-Jan-00 having been an
Independent Non-executive Director since Aug-93. He had no shareholdings at the
end of 1999 but, before and after the option grant, he bought 1m shares between
8-Feb-00 and 10-Feb-00 (which were not publicly disclosed until 1-Mar-00) and
another 2m between 27-Mar-00 and 5-Apr-00, at an overall average price of only
$2.18 per share. The distribution will net him up to <b>$3.93m </b>of cash
profit on those shares. </p>

<h3>Scrip Dividend</h3>

<p>Meanwhile, CDLH declared a scrip dividend with a cash
alternative in relation to its final dividend of 6 cents per share for 1999.
Those who elected for cash lost out, because just 4 days after the scrip was
allotted, the proposed sale and capital distribution were announced. Needless to
say, CDL took the scrip, and they could argue that since this was the default
option, they did not take any action on the basis of the planned proposal.
Still, other shareholders may wish they had known about it before electing for
cash. </p>

<h3>Alternatives</h3>

<p>The independent non-executive directors (INEDs) of CDLH are Mr Lo Ka Shui (head of the
GEM Listing Committee and deputy chairman of <a href="http://www.greateagle.com.hk/" target="_blank"> Great
Eagle</a>), and Mr Jackson Lee
(also known as Li Chik Sin), who is a director of Singapore-listed <a href="http://www.metro.com.sg/" target="_blank"> Metro
Holdings Ltd</a> and <a href="http://www.hongfok.com.sg/" target="_blank"> Hong Fok Corp
Ltd</a>. It is the INEDs' job to advise independent
shareholders how to vote. These guys are going to have a tough job.
Incidentally, Mr Lo won't have far to go; CDLH's head office is 5 floors below
its landlord Great Eagle's in <a href="http://www.greateagle.com.hk/properties/001.html" target="_blank"> Great Eagle
Centre</a>, Wanchai. </p>

<p>The INEDs are being advised by Platinum
Securities Co Ltd. In the course of reaching their opinion on the transaction,
the INEDs and their advisers would in our opinion be negligent if they did not consider the
following two alternatives: </p>

<h4>Option 1</h4>

<p>If CDLH wishes to sell M&amp;C, then why not put it up for sale
in the general market and invite bids? It would almost certainly fetch more than
CDL is offering. If CDL wanted to buy it, they could bid for it too. The proceeds could then be distributed to shareholders of CDLH.
It seems impossible to argue that the terms of the proposed sale to CDL are
&quot;fair and reasonable&quot; if a better offer can be obtained in the open
market, so let's settle it that way.</p>

<h4>Option 2</h4>
<p>Alternatively, if CDL wishes to retain a stake in CDLH, then why
not give all shareholders that choice, by distributing the shares in M&amp;C to
all shareholders of CDLH. As a result, CDL would receive about 28.4% of M&amp;C, but it
could top this up by making a general offer to the other shareholders of CDLH to purchase
the M&amp;C shares from them. They may find some takers, because not everyone
wants UK-listed shares. The offer would have to be better than CDLH
shareholders could get by selling their M&amp;C shares in the UK market, instead
of the discount they are currently being offered.</p>
<p>If CDL chose not to increase their holding, then M&amp;C would
be 67.3% publicly held (and 4.3% by Hong Leong) and would be a potential
takeover target. That should result in a market re-rating of M&amp;C nearer to
net asset value.</p>
<h3>Not the first time</h3>
<p>Of course, we know why CDL will not like either of our options -
they would remove
some or all of the discount that CDL wants to receive under the current proposal. It
would invite takeover bids for M&amp;C, and it would increase shareholder value.
That's not CDLH's style.</p>
<p>Back in Apr-99, the companies comprising the Asia Pacific hotel
interests of CDLH were injected into M&amp;C for GBP436m (HK$5,446m) including
shareholders' loans of $508m. The net price for the equity was therefore
$4,938m. However, the net book value of the companies (adjusting for Mar-99 and Apr-99
appraisals of hotels) was HK$6,674m. So the discount of <b>$1,736m </b>represented
26% of net assets acquired.</p>
<p>CDLH held 52.5% of M&amp;C and maintained
this by using part of the proceeds to take up a rights issue in full. As a
result, CDLH suffered the discount on the 47.5% of the Asia Pacific Companies
that they effectively sold.</p>
<p>That discount amounted to <b>HK$825m</b>. At that time, CDL had no
conflict of interest on that deal and was able to vote it through. However,
M&amp;C took the acquired assets into their books at acquisition cost, not at
market value. So CDL now benefits from that discount (unless values have
declined).</p>
<p>And guess what - the Independent Adviser on the deal was
Platinum Securities Co Ltd, the same expert that will be advising the
independent directors this time.</p>

<h3>Just say no</h3>

<p>If you are a CDLH shareholder, it may seem that, with the shares
having fallen so far, trading at a big discount to net asset value, that the
cash distribution is a bribe worth taking in return for approving the deal. We
don't think so. They are effectively offering you your own money at a discount.
Independent shareholders would do better to press the company to distribute the
shares in M&amp;C, or put the M&amp;C majority stake up for sale in the open
market, rather than sell control of it to CDL at a discount. <b>Vote against the
transaction.</b> </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=702">China Tian Yuan Healthcare Group Limited</a></li>
				
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