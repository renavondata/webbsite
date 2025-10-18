
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

<script type="text/javascript">document.title="Decision Time";</script>

	<div class="summary">As the shareholder meetings of C&W and HKT draw nearer, we take a look at the details of the takeover document. If you are an HKT shareholder, watch out for a sting in the offer alternatives. If you are a C&W shareholder, consider the real value of the huge PCCW stake your company will be getting. We also review the debt burden PCCW will be under and find a few surprises in the offer document.</div>

<h2 class="center">Decision Time<br>
<span class="headlinedate">9 June 2000</span></h2>
<p>The company that has generated the highest share of media
coverage in the last year in Hong Kong is Pacific Century Cyberworks (<b>PCCW</b>).
No wonder then that it has occupied a proportionate share of our coverage. We
are almost bored with speaking to the media about it, as one of the very few
commentators who offer an alternative view to the many investment banks who have
promoted and distributed the stock. We also <a href="starless.asp" target="_blank">broke
the story</a> on the Star TV joint venture agreement with HKT, and correctly
predicted that it would <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000605/LTN20000605025.doc" target="_blank">collapse</a>
(Word format). </p>

<p>Now it is time for shareholders of Cable &amp; Wireless plc (<b>C&amp;W</b>)
and C&amp;W HKT to decide on the takeover offer, at their meetings on 13-Jun-00
and 3-Jul-00 respectively. </p>

<h3>The Sting in the Offer</h3>

<p>If you are an HKT shareholder, watch out. We have already
explained how you can <a href="hktscheme.asp" target="_blank">make your vote
count</a> by getting onto the shareholders' register and becoming a
&quot;member&quot; of the company. But let's assume you don't bother, and that
the scheme is approved. </p>

<p>The basic terms of the offer, for each HKT share, are:</p>
<blockquote>
  <p>0.7116 PCCW shares and HK$7.23 in cash (the &quot;<b>Combination
  Alternative</b>&quot;); or</p>
  <p>1.1 PCCW shares (the &quot;<b>Share Alternative</b>&quot;).</p>
</blockquote>
<p>You (or more likely, your broker or custodian) will receive a
&quot;Form of Election&quot; which allows you to choose between the Share
Alternative and the &quot;Combination Alternative&quot;. Kind of like the rock
and the hard place. There is also something
called the &quot;Mix and Match&quot; (in other words, a bit of each) but you can
in most cases safely ignore that because it will only make financial sense to go
for one of the two alternatives, depending on the PCCW share price. </p>

<p>As we explained back in March, all that you need to know is
that if the PCCW share price is less than HK$18.62 per share (as it has been
since 31-Mar-00), then the <b> Combination Alternative</b> is worth more than the Share
Alternative. If you elect for the Combination Alternative, then you should also
make the &quot;<b>Increased Cash Election</b>&quot; in respect of all your holding.
This allows you to effectively swap some of your new PCCW shares for cash at
HK$18.62 per share, at the expense of those who take the Share Alternative. So
you'll get fewer of those shares and more cash. That is exactly what C&amp;W,
which owns 54% of HKT, has undertaken to do (subject to its shareholders'
approval of the sale). </p>

<p>But here's the <a href="../sounds/ricochet.wav">sting</a>: the offer has been structured so that
those shareholders who do nothing will <b>automatically</b> get the Share
Alternative. </p>

<p>Based on yesterday's closing price of HK$14.70 per PCCW share, the
combination alternative is worth HK$17.69 per share but the all-share offer is
worth only HK$16.17. So wake up and smell the offer - or you will suffer an 8.6%
loss. If you
snooze, you lose - and C&amp;W (and anyone else who makes the Increased Cash
Election) benefits by getting more cash and fewer shares. </p>

<p>The deadline for returning the Form of Election is 4pm on
8-Aug-00 (or such later time as may be announced). Your broker or custodian may
set a slightly earlier deadline. You do not have to (and should not) return the
Form of Election with your voting instructions for the Court Meeting of HKT which
takes place on 3-Jul-00. We say &quot;should not&quot; because you do not know
what the PCCW share price will do between now and 8-Aug. You should delay making
that decision until the latest possible time, but don't forget it! </p>

<h3>Increased placing size by C&amp;W</h3>

<p>With its 6,592m shares in HKT, C&amp;W can expect to receive up
to 4,691m shares in PCCW (assuming everyone logically elects for the Combination
Alternative) worth <b>US$8.84bn</b> at yesterday's price and giving C&amp;W
22.2% of PCCW. They plan to swap US$0.5bn of that for new shares in CMGI (some
people never learn). </p>

<p>In the original 29-Feb-00 announcement (back when PCCW was
riding high at $22.15), it was stated that C&amp;W intended to sell
&quot;approximately 4%&quot; of PCCW's enlarged issued share capital as soon as
practicable after the merger. The merger document reveals that this has quietly
been increased to <b> 4.9%</b> of PCCW, by means of a &quot;supplemental letter
agreement&quot; dated 26-May-00, the same day as the merger document went out.
It may not sound like much, but 0.9% of the company will be about 190m shares.
That's an extra US$358m of stock to hit the market, raising the total placing
size to about 1,037m shares, or <b> US$1.95bn</b> at current prices. </p>

<p>Furthermore, the placing size
can be increased subject to the agreement of PCCW &quot;not to be unreasonably withheld
or delayed&quot;. The residual holding of C&amp;W could be as much as US$6.39bn.
They've undertaken not to sell that for 6 months after the deal completes, but
then they can sell another 50% (<b>US$3.2bn</b>) in the next 6 months. China
Telecom, which owns around 11.3% of HKT, is also not regarded as a long-term
holder. They will get 934m shares in PCCW worth <b>US$1.76bn</b>. Finally, the
Government of HK owns around 8% of HKT and they have stated their intention to
sell down most of the stock they bought in Aug-98. </p>

<p>HKT's public shareholders may do well to jump the gun in this
race, and take the cash in the market before the merger completes.&nbsp; </p>

<h3>The Investment Portfolio</h3>

<p>PCCW's meteoric investment portfolio has, like all good meteors,
been burning up as it descends through the stratosphere. Only a few charred
remains will be left when it hits the ground (or as chartists would say,
&quot;forms a bottom&quot;). Here we take a look at the principal listed
investments.</p>

<h4>CMGI </h4>

<p>PCCW's largest investment to date has been a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990924/LTN19990924034.HTM" target="_blank">share
swap</a> with CMGI in which PCCW received 8,115,942 shares in CMGI (split
adjusted). That deal was done at an effective US$43.13 per share, putting a book
value of $350m on the stock. The shares soared to a high of $163.50, and at
PCCW's last accounting date of 31-Mar-00, the shares closed at $113.31 and the
stake was worth US$920m, accounting for 85% of the market value of PCCW's
long-term investment securities at 31-Mar-00. </p>

<p>The shares <a href="http://www.quicken.com/investments/quotes/?symbol=CMGI" target="_blank">closed
yesterday</a> at $60.44, valuing the stake at US$491m, so they have
lost $429m, or 47% in market value since the end of March. </p>

<p>On the other side of the swap, CMGI received PCCW shares at
HK$6.05 per share, which are worth US$846m<b> </b>at yesterday's close. </p>

<h4>SoftNet Systems </h4>

<p>Another investment was a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991014/LTN19991014027.HTM" target="_blank">cash
subscription</a> of US$128.8m in 5m shares in Nasdaq-listed <a href="http://www.softnet.com/" target="_blank">SoftNet
Systems, Inc</a> at US$25.75 per share. At PCCW's&nbsp; 31-Mar-00 period end,
the shares closed at $29.25 and the stake was worth $146m. </p>

<p> Softnet's shares <a href="http://www.quicken.com/investments/quotes/?symbol=SOFN" target="_blank">closed
yesterday</a> at $13.375, valuing the stake at US$67m, so they have lost $79m,
or 54% in market value since the end of March. </p>

<h4>Hikari Tsushin International </h4>

<p>PCCW subscribed for 933.6m shares at HK$0.225 per share of <a href="http://www.goldenpower.com.hk/" target="_blank">Hikari
Tsushin International</a> (<b>HTI</b>, formerly Golden Power) for a 20% stake
alongside Japanese bubble stock Hikari Tsushin, which took 51%. The shares shot
up and reached $5.05 on 14-Feb-00 (the day the subscription was approved by
shareholders) and have now crashed 90% to $0.51 at yesterday's close. </p>

<p>At PCCW's 31-Mar-00 period end, the shares closed at $1.81 and
their stake was worth US$217m. At yesterday's close the stake was worth just US$61m,
a loss of US$156m or 72% since the period end. HTI is accounted for as an
associate of PCCW rather than an investment. </p>

<p>As you can see from the web site, HTI has done almost nothing
since the takeover and is still just a battery maker with a pile of cash. Given
the problems faced by its Japanese parent, there must be a fair chance that we
shall see another change of control of HTI - perhaps PCCW will buy Hikari
Tsushin's 51% stake in HTI, and use the company as a shell for one of its
spin-offs. </p>

<p>Meanwhile in Japan, things are even worse. In support of the
hypothesis that investment skills are not always inherited, on 10-Feb-00 PCCW
Chairman Richard Li <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000214/LTN20000214096.HTM" target="_blank">swapped</a>
US$1bn of existing shares in PCCW (then trading at HK$23.40) for US$1bn worth of
stock in Hikari Tsushin, then trading at Y213,000. Now they are
about Y5,400, down about 97.4%, and Li's billion has shrunk to about US$26m. Let's
be thankful he didn't make that investment through PCCW. </p>

<h4>Tom.com </h4>

<p>PCCW subscribed for 121m shares in <a href="tomfoolery.asp" target="_blank">Tom.com</a>
at HK$1.07 per share prior to its IPO, for a total cost of US$16.6m. At
31-Mar-00 Tom.com closed at $10.80, valuing the stake at US$168m. </p>

<p>The shares closed yesterday at HK$5.90, valuing the stake at
US$92m, so they have lost $76m, or 45% in market value since the end of March.
PCCW has undertaken not to sell the shares before 1-Sep-00. </p>

<h4>Summary </h4>

<p>Since 31-Mar-00, the market value of PCCW's 4 biggest listed
holdings has fallen by <b>US$740m</b>, or about 51%, from US$1,451m to US$711m. </p>

<h3>Is the SoftNet Systems stake for sale?</h3>

<p>It is interesting to note that, under HK accounting standards,
there are now two categories of investments held by PCCW. These are &quot;Investment
Securities&quot; meaning securities &quot;<i>intended to be held on a continuing basis</i>&quot;
(these used to be known as long term investments), and &quot;Other Investments&quot; which is everything else.
Investment Securities are held at cost less
any provision for impairment, whereas Other Investments are carried at fair
value (in other words, market value if they are listed). </p>

<p>&quot;Other Investments&quot; at 31-Mar-00 included only HK$5.5m of HK-listed stock at market value, so we can infer that Tom.com is
held as an &quot;Investment Security&quot;. This plus the value of the CMGI
stake add up almost exactly to the quoted market value of listed stocks held as
(long-term) &quot;Investment Securities&quot;, which implies that the stake in
SoftNet is held under &quot;Other Investments&quot;. Other Investments listed overseas had a market value of
HK$1.15bn (US$148m) which almost matches the value of the SoftNet stake. </p>

<p>It would seem that the stake of some 18% in SoftNet does
not qualify as &quot;intended to be held on a continuing basis&quot;. That is
surprising given that the two companies are supposed to be working together on
helping Asian cable TV stations to upgrade their networks to broadband
satellite-based connectivity as described in this <a href="http://www.softnet.com/coinfo/press/00_03_02.html" target="_blank">press
release</a>. </p>

<p>Another note from the accounts reveals that: </p>

<blockquote>

<p>&quot;In 1999, the PCCW Group entered into certain derivative contracts with a third
party with the effect of fixing the Group's gains on certain quoted other
investments within certain specified ranges... and will be settled in 2003&quot;. </p>

</blockquote>

<p>Since the bulk of such investment appears to be in SoftNet, that wording
would imply that PCCW has bought a put option (to limit its downside) and sold a
call option (which limits the upside) on at least part of the stake. The options
would have different strike prices (the put being lower than the call price).
This theory is supported by the fact that between 31-Mar and 5-May, the value of
the SoftNet stake fell by about HK$646m, but the decline in the value of
&quot;other investments&quot; as stated in the accounts was only HK$218m,
presumably offset by the hedge. </p>

<p>It hardly shows confidence in SoftNet if PCCW has chosen to
forego its potential gains on the stock in return for downside protection. We
wonder who sold the put option and bought the call option from PCCW, and whether
they have hedged their position by shorting the SoftNet stock. </p>

<p>As collateral for these derivatives, PCCW has pledged the shares
of a subsidiary which holds investments with a carrying value of US$408m - so
large that it must include the stake in CMGI and some other investments. </p>

<h3>Expenses</h3>

<p>The takeover document discloses that the estimated expenses of
the deal (mostly on a multitude of financial advisers, lawyers and accountants
as well as printing) will amount to a huge <b>US$130m</b>. </p>

<p>But wait - that figure excludes the fees relating to the US$12bn
loan facility. According to the Facility Agreement seen by <i>Webb-site.com</i>,
the loan also carries a &quot;standby fee&quot; of 0.1% per month (currently
US$12m per month) from the end of February until the loan is drawn down around
15-Aug-00. Call that another US$66m. The reported underwriting fee of 0.35% and
the front-end fee of 0.70% adds another US$126m. </p>

<p>Pretty soon it starts to add up to real money - some <b>US$322m</b>
in fees and expenses, before you even start to pay interest. </p>

<h3>That Gearing</h3>

<p>The US$12bn loan is reported to carry an interest margin of 1.15%
above LIBOR (the London interbank rate) which is currently about 6.2%. So
they'll be paying interest at a rate of 7.35%, or around US$882m per annum until
the loan is reduced. </p>

<p>Bankers will look at it as an &quot;all-in&quot; yield
(including fees) of 2.20% above LIBOR, 8.4%, and that's the kind of cost of money you
can expect when PCCW comes back to the debt market to refinance the loan, or
perhaps a little less if they can complete various issues of subordinated
convertible debt to reduce the bank risk. </p>

<p>Perhaps the weakest aspect of the merged PCCW-HKT will be the
amount of debt it has to carry. In recent statements, Linus Cheung, HKT's CEO,
has flip-flopped on whether the company will be willing to sell off controlling
stakes in HKT's businesses, but it seems certain that they will at least have to
sell minority stakes or other assets to pay back the debt. </p>

<p>At 31-Mar-00 PCCW had cash of about US$1.75bn and short-term
bank loans and bank debt of about US$100m.&nbsp; At the same time, HKT had cash
of about US$2.46bn and bank debt of about US$300m. The final dividend of HKT
will absorb U$702m, and the payout under the takeover will absorb US$11.32bn.
Expenses of the takeover will absorb another US$322m (see above). </p>

<p>Add all that up, and you have a net debt of around US$8.53bn. </p>

<p>PCCW has also previously &quot;earmarked&quot; about HK$2,945m (US$378m)
of its cash for investment in joint ventures with CMGI in Asia, out of the proceeds of a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000126/LTN20000126013.HTM" target="_blank"> placing</a> conducted on
25-Jan-00. If that money is still set aside, then that increases net debt to <b>$8.91bn</b>. </p>

<p>That figure almost exactly matches the US$9bn &quot;Tranche
B&quot; of the US$12bn loan facility PCCW has obtained. That facility expires on
28-Feb-01 and only 30% of it can be extended. </p>

<p>It then becomes crucial that PCCW's memorandum of understanding
with Telstra actually proceeds. PCCW will borrow US$1.5bn from Telstra in the
form of a convertible note, which can be used to repay part of the bank loan. It
will also sell a 40% interest in the mobile phone business of HKT to Telstra for
a further US$1.5bn. </p>

<p>That should take the bank debt temporarily down to US$6bn. But
we haven't begun to talk about the cost of building the satellite broadband
network or investing in third generation mobile network. The company may also
have to bid for its 3G license (see today's <a href="3g.asp" target="_blank">other
story</a>). And not to mention the US1.5bn cost of building the Cyberport -
whoops, we just did. </p>

<p>The Telstra note has a conversion price of HK$23.69 per share,
and we would be surprised to see the shares trading above that level when the
loan note comes up for its first (50%) redemption in 4 years' time. That price
would value the company (post-HKT) at US$67bn. So think of the loan note as
debt. </p>

<h3>Hang Seng Index</h3>

<p>It seems near certain that HKT will be replaced in the 33-stock
Hang Seng Index by PCCW, so the market should already have factored that into
the price. You can expect that announcement just as soon as the merger is
approved. However, most fund managers do not track the HSI, but use other more
representative indices such as the MSCI series. PCCW is already in the MSCI
index, with a 50% market weighting. Expect that to go up to 100% after C&amp;W
has finished dumping the stock to increase the free float. </p>

<p>The only major fund which is known to track the HSI is the
Tracker Fund, and that is not large enough to have a sustained effect on the
price. Part of its necessary holding in PCCW will come from its existing holding
in HKT. </p>

<h3>Valuation</h3>

<p>A well known US investment bank (perhaps the only one that isn't
advising on some aspect of the deal) has recently restated a price target of <b>HK$35</b>
on PCCW, implying a post-merger valuation of <b>US$100bn</b>. They made that a
12-month &quot;strategic value&quot; target back in January. Seven months to go
guys... </p>

<p>We maintain our <a href="pccwhktstrip.asp#valuation" target="_blank">previous
valuation</a> of <b>HK$6</b> per share (assuming the deal proceeds), valuing the
company (post-HKT) at <b>US$17bn</b>. That includes $21.9bn for HKT, less the
$11.3bn of cash to pay out on the takeover, for a net contribution of US$10.6bn.
The other $6.4bn comes from PCCW's property assets, cash, investment portfolio
and future profits from the Cyberport development, and US$2bn thrown in for the
net present value of future profits from Network of the World. </p>

<p>That's really the only major subjective part of the valuation -
do you think it is worth another US$83bn? Even yesterday's price of $14.70
implies a valuation of some US$27bn on NOW. </p>

<h3>A Generous Gift</h3>
<p>Never let it be said that Mr Li is not generous. On 30-Mar-00,
while advisers were slaving away on the Scheme of Arrangement document, his Pacific
Century Group Holdings Ltd transferred 11,275,000 shares in PCCW (then worth
US$27m) to an undisclosed third party as a gift. </p>

<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=375">CABLE & WIRELESS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=368">PCCW-HKT Limited</a></li>
				
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