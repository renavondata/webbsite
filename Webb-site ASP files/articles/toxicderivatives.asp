
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

<script type="text/javascript">document.title="Deutsche Bank's toxic derivatives";</script>

	<div class="summary">Two years ago, we successfully deterred the issuance of further toxic convertibles by listed companies in Hong Kong. Now we find that another bank is peddling toxic derivatives to small listed companies, including three small, apparently cash-rich, HK-listed industrial companies from Fujian. Both sides are to blame. Listed companies should only use derivatives to reduce risk, not to increase it, and banks should not be selling such unsuitable and toxic products to unsophisticated clients.</div>

<h2 class="center">Deutsche Bank's toxic derivatives<br>
<span class="headlinedate">30 November 2007</span></h2>
<p>Readers may recall our article of 8-Jun-05,
<a target="_blank" href="toxicon.asp"><span lang="en-gb">CSFB's</span> 
Toxic Convertibles</a>, in which we detailed a series of value-destroying toxic 
convertibles in which the companies issued bonds with a floating conversion 
price to the investment bank. CSFB (now Credit Suisse) made a textbook public relations response, 
<a target="_blank" href="../codocs/CSFBresponse.pdf">huffing and puffing</a> 
and 
&quot;seeking legal advice&quot; over our article, which also put the media at 
risk if they reported what we said. But the bank never sued. Our article was right, and what we said was fair comment.</p>
<p>The passage of time shows that our article had the desired effect - Credit 
Suisse has 
not done another of these deals in HK, and we have not seen a single convertible 
bond issued by a HK-listed company with a floating conversion price since then. 
A few have &quot;reset&quot; clauses, allowing the conversion price to be reset downwards 
at one or more fixed times (typically on the anniversary of issue), but none is 
floating. Some of the issuers featured in our article, including
<a target="_blank" href="../dbpub/articles.asp?p=2078">EganaGoldpfeil</a> (0048) and
<a target="_blank" href="../dbpub/articles.asp?p=15854">Tack Fat</a> (0928) have since 
been found to have other problems.</p>
<p>We subsequently found vindication in a
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/surveys/07/exchange_audit_report_070404.pdf">
report</a> by the Securities and Futures Commission on the 2005 work of the 
Stock Exchange Listing Division. In the report, dated Dec-06 but not
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=07PR55">
published</a> until 4-Apr-07, the SFC said (para. 48, p.12):</p>
<blockquote>
	<p>&quot;In the last few years, several companies issued a particular type of 
	convertible note, now commonly referred to as &quot;toxic convertibles&quot;... In the 
	absence of other factors, each conversion is likely to lead to a reduction 
	of the issuer's share price and an increase in the number of shares into 
	which the remaining notes can be converted, resulting (because of the 
	falling share price) in a spiral of further dilution of existing 
	shareholders and reduction in share prices. In the worst-case scenario, the 
	notes are converted into shares at the par value and the convertible 
	noteholders may end up holding almost all the company's shares.&quot;</p>
</blockquote>
<p>Credit Suisse has cleaned up its act, but unfortunately that 
episode has not deterred at least one of its competitors from hawking exotic products to 
small and unsophisticated companies, despite the reputational risk such behaviour carries, as we will show in this story. These are not the products 
that you see many large companies buying, for the simply reason that they know 
better.</p>
<p><a target="_blank" href="http://www.db.com">Deustche Bank</a> (<b>DB</b>) has 
sold products to at least three (there may be others) small listed companies, 
all industrial stocks from Fujian, and all of which have surplus cash on their 
balance sheets. Whether they have also sold such products to private bank 
clients we do not know.&nbsp; These products are highly complex with no liquid market 
and no easy way for the client to price them. The products are similar in each 
case, so we will start with the company we know best. Later in this article, we'll cover some more companies which have bought complex 
derivatives from unnamed banks.</p>
<h3>Sinotronics</h3>
<p>Sinotronics Holdings Ltd (<b>Sinotronics</b>, 1195) is a maker of printed 
circuit boards based in Fujian. At 30-Dec-06, it had net cash of RMB382m. In note 5(a) of its 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071031/LTN20071031009.pdf">financial statements</a> for the 
year ended 30-Jun-07, Sinotronics disclosed that the &quot;finance costs&quot; in its 
income statement included fair value losses on derivative financial instruments 
of RMB38.959m. This knocked about 22% off its pre-tax profit for the year.</p>
<p>Note 24 discloses that there were two products involved. The first, in 
Feb-07, is a 5-year swap 
with a notional amount of HK$390m (US$50m). Sinotronics gets an up-front payment 
of 10% of that, or HK$39m. Sinotronics pays 9% p.a. on the notional amount for the 5-year term (on a 
semi-annual basis), and the bank pays an introductory or &quot;teaser&quot; rate of 7% p.a. for the 
first 6 months. After that, for the next 4.5 years, the bank pays 7% p.a. multiplied 
by a fraction between 1 and zero, representing the proportion of the days in 
each half-year period in which the 10-year HKD Swap Rate is greater than the 
2-year HKD Swap Rate.</p>
<p>We pause to explain for non-professional readers, the &quot;Swap Rate&quot; is the 
fixed interest rate which can be achieved in return for an obligation to pay the 
prevailing floating interest rate throughout the period of the swap. It is 
usually very close to the yield on a top-rated bond for the same period.</p>
<p>So what this product was betting on is that the &quot;yield curve&quot; (a graph 
plotting the yield against the maturity of bonds) curves upwards. When the 
2-year rate is greater than the 10-year rate, then the curve is pointing downwards, 
and this is known as an
<a target="_blank" href="http://money.cnn.com/2005/12/27/news/economy/inverted_yield_curve/index.htm">
inverted yield curve</a>, which happens from time to time, often preceding 
economic recessions.</p>
<p>In its English presentation to Sinotronics, a company run by mainlanders, DB 
presented a rather attractive graph of the &quot;Effective Funding Cost of Upfront 
Cash&quot;. It sounds just a like a loan, doesn't it? The graph plotted &quot;internal 
cost of funding&quot; versus &quot;Number of Inversion Days&quot;. Here's the graph, so you can 
judge for yourself:</p>
<img class="center" alt="" src="../images/DBfundingCostGraph2.jpg">
<p>Notice how that curve seems to take a gentle &quot;S&quot; shape and taper off as time 
goes on, reaching 8% with 150 days inversion? That might seem like quite a good 
deal to someone with little understanding. After all, 150 days is nearly a 
half-year period, so presumably that's about as bad as it can get, and paying 8% 
isn't too bad if you can get a better return on the funds. You might even get 
lucky and only have a funding cost of 0%.</p>
<p>But wait. That graph is, in our view, highly deceptive. First of all, notice 
that the x-axis is not linear - the chart shows equal spacing between 0, 30, 100 
and 150 days. That's why you see a kink in the curve. Second, and most 
importantly, the only way we could reproduce that graph is by realising that 150 
days is not part of a half-year, but part of the entire 5-year period, based on 
calendar days. So what you are seeing is only a tiny part of a graph which 
should extend out for the maximum 1825 days (ignoring leap days).</p>
<p>We ran the calculations on a spreadsheet, attempting to replicate this graph, 
and produced a very similar graph for the first 150 days, using the same 
non-linear spacing on the x-axis:</p>
<img class="center" alt="" src="../images/toxicd1.gif">
<p>That's close enough. But now look what happens if you use a linear scale, and 
show the full possible range of outcomes in the 5-year period:</p>
<img class="center" alt="" src="../images/toxicd2.gif">
<p>This shows the toxic downside of the DB derivative. In the worst case, if the 
yield curve is inverted throughout the 5-year period, then in return for the 
$39m upfront payment, after paying a net $3.9m for the first half-year, the client pays $35.1m per year (9% of the notional 
amount), resulting in a loss of $122.85m, with an internal rate of return for 
the bank (and cost to its client) of about 79% per year. Even if the curve is 
only inverted for 20% of the time (365 days), the funding cost rises to 20% per year, 
far more than the firm would have to pay for bank borrowings.</p>
<p>The area in the DB graph is just that bit in the blue box (looks rather like 
their logo, doesn't it?) - the rest was 
not shown to the client. Incidentally, throughout the presentation, DB refers to
<i>&quot;client&quot;</i> but in the disclaimer on the back page (if the client can read 
English) the client becomes just a <i>&quot;counterparty&quot;</i> and there we find the 
attempted get-out words <i>&quot;in making this evaluation you are not relying on any 
recommendation or statement by us&quot;</i>. The contract we have seen has 
similar disclaimers. However, a court might take the view that if a client was 
incapable of reading English, and had signed an English contract based on an 
English presentation book and a verbal presentation from a bank, then he was 
entitled to rely on the verbal explanations he was given by the bank's 
salespersons, and if those contradicted the contract then it might be voidable.</p>
<p>Now of course, we all hope that markets will remain normal, and the yield 
curve will not be inverted for long, but the downside risk in terms of funding 
cost makes this nothing more than a highly leveraged gamble. There is almost no 
upside (the best case is a funding IRR of 0%) and horrendous downside.</p>
<h3>The second product</h3>
<p>As if one sale wasn't enough, DB in April sold Sinotronics a second product, 
with a notional amount of US$100m and an up-front payment to the client of 
US$10m. In this 5-year deal, the bank pays 8% p.a. of the notional amount 
semi-annually, while the client pays 10% for the first half-year, and then it 
gets complex. In each half-year period, you take the year-on-year change in the 
&quot;Deutsche Bank Pan-Asian Forward Rate Bias Index&quot; (which as you guessed, is 
produced by DB). You then subtract 1% from that return, and multiply it by 5, 
and then subtract that from 10%. The result is capped at 13% with a floor of 0%.</p>
<p>Is that clear? As Alan Greenspan once said, &quot;If I have made myself clear, 
then I have misspoken&quot;. DB describes the product in its pitch as <i>&quot;this simple 
swap&quot;</i>.</p>
<p>For non-professionals, a
<a target="_blank" href="http://en.wikipedia.org/wiki/Forward_rate_agreement">
forward rate agreement</a>, or FRA, is an agreement between two parties to 
settle the difference between an agreed (fixed) level of interest and an actual 
future level of interest, determined from the market on a future effective date. 
For example, Anna might expect that in six months' time, the one-year LIBOR 
(London Interbank Offered Rate) will be 4%, so she agrees with Bob that in 
six months time she will pay him (or he will pay her) the difference between 4% 
and the actual one-year LIBOR on that date. Since the interest difference is 
known at the start of the lending period (the effective date of the contract), 
the payment is made on the effective date, discounted for the interest it would 
earn up to the end of the period. Except, of course, that Anna and Bob are 
ordinary people who wouldn't have a clue what an FRA is.</p>
<p>Now according to the presentation, money markets are not efficient, and <i>
&quot;forward rates have a large tendency to over-predict the future realised 
interest rates&quot;</i>. In other words, the actual future rates turn out to be not 
as high as the prices in the FRA market predict. There are several academic 
papers out there suggesting this, but most of them are focused on forward foreign 
exchange rates rather than interest rates themselves. Regardless of the details 
of this supposedly golden opportunity, whenever a bank tells 
you they have discovered a systemic (rather than brief) mis-pricing of 
markets, and have packaged it up in order to provide access to clients, your 
response should be:</p>
<ul>
	<li>So why don't you exploit it yourself? Are you short of money?</li>
	<li>If the anomaly is well-known, then how come it has not already been 
	removed by arbitrageurs such as hedge funds and banks?</li>
</ul>
<p>So on the basis of the Forward Rate Bias theory, DB created a series of 
indices, one of which is the Pan Asian index, covering the equally weighted 
average of Thailand, South Korea, Taiwan, Malaysia, Singapore and Hong Kong. In 
each market, the index is based on receiving the 12-month forward 12-month 
Interest Rate Swap contract, holding it for 3 months, and then unwinding it as a 
9-month forward contract and starting again. Any gain resulting from the 
difference between those rates is added to the index. We don't know how liquid such 
markets are or where they get the quotes from, but lets assume they are 
legitimate.</p>
<p>If however, this anomaly is removed (that is, markets are efficient after 
all), then the index becomes a flat line with zero long-run return, in which 
case the formula in this toxic product becomes 10-5*(0-1)=15%, so the cap of 
13% applies. From that you deduct the 8% paid by the bank to the client, leaving 
a net rate of 5%. That's on the notional amount of the product, so in return for 
an up-front payment of US$10m, the client has to pay US$1m after six months, and 
then US$5m p.a. for 4.5 years, for a total net loss of US$13.5m 
(HK$105m).</p>
<p>That's an internal rate of return for the bank (and cost to the client) of 
39.0% per year. This is something that DB described as the <i>&quot;worst case scenario&quot;</i> 
in its presentation, but it is in fact a scenario which would be expected if 
markets are efficient. They would have to be inefficient to the tune of more 
than 0.4% per year before the funding cost starts to decline from 39% p.a.. 
Incidentally, DB calculated the worst-case IRR at 35.82%, but that implies they 
used a 
semi-annual rate. IRRs are conventionally quoted on an annual percentage rate 
(APR) basis. DB didn't include a graph of IRR in its presentation, so we 
are producing one to show you:</p>
<img class="center" alt="" src="../images/toxicd3.gif">
<p>As the graph shows, it is only if the index gains 0.9% annually that the IRR 
comes down to a reasonable funding cost of about 7.7% p.a.&nbsp; To get the IRR down to zero, the index would need to return 
1% per year, indicating a substantial mis-pricing of the FRA market. Beyond 
that, there is the theoretical potential for the client to make a profit of up 
to US$35m if the markets are inefficient to the extent of 3% per year, but 
reality is highly unlikely to produce that. DB claimed that its index has returned 
1.18% p.a. since inception in Aug-99. However, most of that was in the earlier years 
up to Mid-2003, when central banks were aggressively cutting interest rates after the 
tech bubble burst. It is not surprising that during that period, the FRA market 
over-predicted rates, as the central banks cut rates more sharply than the market 
expected.</p>
<h3>Stupidity discount</h3>
<p>This is the second time that Sinotronics has bought a toxic deal - it was one 
of the issuers of toxic convertibles to CSFB. That
<a target="_blank" href="toxicon.asp#Sinotronics">deal</a> was 
eventually ended in Jul-06 when, by agreement, Credit Suisse agreed not to 
require an additional tranche of bonds to be issued, and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060720/LTN20060720088.pdf">
converted</a> the first tranche at $0.909 per share, expanding the share base by 
85.544m shares, or 18.3%, and sold them for $1.02 each (close to market price) 
to the controlling shareholder, Lin Wan Qaing (<b>Mr Lin</b>). Mr Lin has 
since sold 140m shares, cutting his stake from 66.6% to 41.0%, a large portion 
of which was purchased by
<a target="_blank" href="http://www.atlantis-investment.com/">Atlantis 
Investment Management</a>, which now holds over 15%. <i>Webb-site.com</i> editor 
David Webb currently holds over 5% of Sinotronics.</p>
<p>Since Sinotronics first revealed the derivatives in the results announced on 
24-Oct-07, the shares have fallen 39% from $1.77 to $1.08, wiping HK$385m off 
its market value. That's despite the fact that operating profit rose 18% 
year-on-year, with turnover up 32%. Beneath the appallingly inept financial 
management, there is a growing business on an expansion path, which is why your 
editor held the stock in the first place. After the toxic convertibles, we 
thought they had learned a lesson not to do things they don't understand, but 
apparently not. A stupidity discount is now appropriate, and the market price 
reflects that. They would need a change of management to overcome it.</p>
<h3>Getting out of it</h3>
<p>The biggest problem with such exotic products is that there is no ready 
market for them, so the client has absolutely no idea of what a product is 
really worth, except by observing the collapse in 
their share price after they disclose that they bought it. Nor do they know how 
large the 
bank's profit margin is. How does the client know that the upfront payment in 
the product is a big enough compensation for the risk they are taking? They 
don't, and once the client has signed a binding contract, it is locked in 
(unless they can get a court to void it). In its disclaimer, DB says <i>&quot;While 
we may quote an unwind or bid price for this transaction (which we have no 
obligation to do), prices quoted may materially differ from our economic 
assessment of this transaction or its component parts&quot;. </i>In other words, we 
know what it's worth, but that isn't what we'll pay you.</p>
<p>In order to produce interim and annual reports, the client has to go back to 
the bank and ask for a valuation of the product - in essence, the price at which 
the bank would be willing to buy it back. In each case we identified, this 
resulted in an immediate and substantial loss of fair value.</p>
<p>According to management, on 2-Nov-07, Sinotronics asked DB for a quote for unwinding the two products. 
The indicative verbal quote, together with previous payments, would have 
resulted in an overall loss of about HK$71m (including the amount already booked in the 
30-Jun report) compared with the upfront payments received of HK$117m. You could 
probably do better borrowing money from a Macanese loan shark.</p>
<p>Now let's move on to the other two cases involving DB which have so far come 
to light...</p>
<h3>Spread Prospects</h3>
<p><a target="_blank" href="http://www.spp.com.hk/">Spread Prospects Holdings 
Ltd</a> (<b>Spread Prospects</b>, 0572) is, quite literally, a tin-pot little 
company. It makes tinplate cans for the packaging of foods and beverage and is 
based in Fujian. At 31-Dec-06 (according to the accounts), they had net cash 
of RMB312m. On page 18 of its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070921/LTN20070921343.pdf">
interim report</a> for the six months to 30-Jun-07, it disclosed that it had 
entered into exactly the same pair of products, as Sinotronics, with maturity of 
28-Feb-12 for the non-inversion bet, and 23-Apr-12 for the Forward Rate Bias 
bet, although the latter was smaller, with a notional amount of US$50m rather 
than $100m in Sinotronics case. The timing is remarkable - just 14 and 4 days 
respectively after the Sinotronics contracts. During the period, Spread 
Prospects received up-front payments totaling HK$78m and booked a loss of 
RMB15.469m on the products. They certainly didn't need the cash.</p>
<p>Incidentally, the IPO of Spread Prospects in Jun-03 was sponsored by Upbest 
Securities Co Ltd, which is owned by Upbest Group Ltd, which featured heavily in 
our <a target="_blank" href="eganaupbest.asp">recent article</a> on 
Egana.</p>
<p>We can make a past connection between Sinotronics and Spread Prospects. 
According to the prospectus of Spread Prospects dated 10-Jun-03, Mr Tong Yiu On 
owned 21m shares, or 5.48% of the post-IPO share capital, which was acquired on 
8-Jul-02 for US$339,500 (HK$2.65m), which works out to a P/E of just 1.18 times 
the previous year's earnings. A year later, at the IPO price of HK$1.23, the shares were 
worth HK$25.83m. Mr Tong is the Finance Director of Sinotronics. He sold 15m 
Spread Prospects shares at $0.81 per share on 5-Feb-04 shortly after the lock-up 
expired, dropping below the disclosure threshold.</p>
<p>Spread Prospects is currently 5% held by
<a target="_blank" href="http://www.concordiafunds.com/recruitment.htm">
Concordia Advisors (Bermuda) Ltd</a> and 8% by the SFP Asia Fund run by Symphony 
Financial Partners. </p>
<h3>First Natural Foods </h3>
<p><a target="_blank" href="http://www.firstfoods.com.hk/">First Natural Foods 
Holdings Ltd</a> (<b>FNF</b>, 1076) is a Fujian-based food processor. Page 19 of 
the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070925/01076_224724/E101.pdf">
interim report</a> for the six months dated 30-Jun-07 states:</p>

<blockquote>
	<p>&quot;The Group had a structured financial instrument with the 
	notional principal amount of US$100,000,000 (approximately RMB753,000,000). 
	Its tenor has 5 years. Coupon payment is semi-annually. The first coupon 
	rate is fixed at 2% and thereafter the subsequent coupon rate are floating 
	based on Deutsche Bank Pan-Asian Forward Rate Bias Index (AFRB Index). 
	Nonetheless, the Group has capped at 5% and floored at 0% for floating rate 
	coupon payments. As at 30 June 2007, the fair value of the structured 
	financial instrument was RMB94,394,000.&quot;</p>
</blockquote>
<p>That instrument was booked as a liability, and FNF booked a fair value loss 
of RMB19.166m in the report - in other words, a liability of RMB75.228m had 
grown to RMB94.394m since the product was issued some time in that six-month 
period.</p>
<p>We can make a connection between Sinotronics and FNF. According to page 57 of 
its IPO prospectus dated 30-Jan-02, on 11-Jul-01, Mr Lin, Sinotronics' then 
Chairman, and Mr Tung Fai (<b>Mr Tung</b>) jointly (in the ratio of 60:40) acquired an effective 35% pre-IPO 
stake in FNF for just US$1.75m (HK$13.65m). Mr Lin held 
21% and Mr Tung 14%, which were diluted in the IPO to 15.75% and 10.50% 
respectively. The IPO was priced at HK$0.73 per share, valuing FNF at HK$800m, so 
Mr Lin's stake was worth HK$126m, compared with the $8.19m he paid for it just 7 
months earlier! On top of that, the pre-IPO company paid a dividend of RMB75.61m 
(then HK$71.33m) to its shareholders in Sep-01, so Mr Lin would have been due 
HK$15.0m of that - or twice what he paid for the shares two months beforehand. 
Don't ask why the vendor sold for such a low price.</p>
<p>Mr Lin was a non-executive director of FNF from 10-Oct-01 to 3-Jun-02. He is 
no longer a disclosed shareholder of FNF.</p>
<p>Mr Tung seems to be a serial IPO man. He joined China Agrotech 
Holdings Ltd (<b>China Agrotech</b>, 1073) in 1998, before its IPO, and was an 
executive director until 31-Dec-02. Overlapping with this, in 
Jun-00, he joined Techwayson Holdings Ltd, now known as The Quaypoint 
Corporation Ltd (2330), ahead of its IPO. That company was listed on 8-Feb-01 
with Mr Tung as an executive director. He left them on 4-Nov-05. Overlapping 
with that directorship, in Jan-03 he joined Fu Ji Food and Catering Services 
Holdings Ltd (1175), ahead of its listing on 17-Dec-04, and he's still there as 
an executive director.</p>
<p>Incidentally, Raymond Tong Hing Wah, the CFO of China Agrotech, has been an 
INED of Spread Prospects since its IPO.</p>
<p>FNF is currently held 7% by SPF Asia Fund (yes, them again) and 5% by
<a target="_blank" href="http://www.vpv.nl/">Veer Palthe Voute</a> of the 
Netherlands, part of <a target="_blank" href="http://www.allianz.com">Allianz Group</a>. On 14-Sep-06, FNF
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060816/LTN20060816025.pdf">
issued</a> a 5-year convertible note for HK$116m to DKR SoundShore Oasis Holding 
Fund Ltd. Up to 18-Sep-07 $56m had been converted.</p>
<h3>Panva Gas</h3>
<p>Writing about these cases brings to mind other companies which have been 
burnt by derivatives, including Panva Gas Holdings Ltd (now Towngas China Co 
Ltd, 1083). We don't know who the bank in that case was. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060503/LTN20060503261.htm">
2005 annual report</a> revealed that they had made some kind of bet on the 
difference between the 2-year and 30-year US$ swap rates, resulting in a 
HK$208.1m loss on the position that year. The formulae in note 25 of the 
financial statements are unintelligible, but the loss was clear. In the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070430/LTN20070430454.HTM">
2006 annual report</a>, a further write-down of $124.2m was taken when the group 
early-terminated the contracts on 21-22-Sep-06 by making payments totaling 
HK$433.6m; see note 24 of the financial statements.</p>
<h3>Dream</h3>
<p>Another disaster-prone company is stuffed toy maker Dream International Ltd (<b>Dream</b>, 
1126), which should probably be renamed Nightmare International Ltd.</p>
<p>In 2003 Dream entered into a &quot;long-term structured deposit contract&quot; with an 
unnamed bank to place a total of US$15m in installments over 3 years to Jul-05, 
placing US$8m by 31-Dec-03 and topping it up to US$12m by 31-Dec-04. Interest 
was paid at 6% in the first year and in subsequent years at rates &quot;based on&quot; 
LIBOR. Whenever you see the words &quot;based on&quot; in corporate disclosures, you can 
fairly bet that it doesn't mean &quot;equal to&quot;. In early 2005 they terminated the 
contract, paid a penalty of US$1.5m and booked a revaluation loss of 
HK$8m in the 2004 accounts (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050421/1126/EWF114.pdf">notes</a> 3 and 19) and a loss of HK$3.7m in the 2005 
accounts (<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060428/01126/EWF116.pdf">note</a> 18(i)).</p>
<p>Flushed with the success of its first foray, in 2005, it entered into another 
&quot;long-term structured deposit&quot; with a principal value of US$12m (HK$93.3m). This 
had a teaser rate of 6.5% for the first year and then for the next 11 years a 
rate based in an unspecified way on the spread between the 30-year and 10-year 
US dollar swap rates - a yield curve bet. This was paying only 1.3% at 
31-Dec-06, and had been written down to a fair value of HK$69.2m as shown in
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070426/01126/EWF115.pdf">
note 11</a> of its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070426/LTN20070426218.htm">
annual report</a>. As of 
31-Dec-05, Dream
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060428/01126/EWF116.pdf">estimated</a> 
(note 29(c)) that a 0.05% change in the spread between 10-year 
and 30-year rates would result in a HK$4m loss. No such disclosure was made in 
the 2006 report.</p>
<h3>The Bottom Line</h3>
<p>There are two sides to this behaviour, listed companies and banks, and both 
are to blame. Listed 
companies have absolutely no mandate to invest shareholders' funds in long-term 
(more than 1-year) deposits, structured or otherwise, or to put shareholders' 
money at risk in speculative derivative instruments. If they have surplus 
capital beyond their budgeted requirements, then it should be returned to 
shareholders by way of dividends. Controlling shareholders can then take their 
dividends and do whatever they like with it, without affecting 
minority shareholders' wealth. The only time that the use of derivatives can be 
justified by a listed company is if it is part of an exercise to <u>reduce</u> 
risk (such as hedging of commercial transactions in foreign currencies), not to 
increase risk.</p>
<p>On the other side, banks of global standing such as Deutsche Bank should know 
better than to peddle such toxic instruments to ignorant customers, whether they 
are listed companies or private individuals. A company cannot be assumed to be a 
sophisticated investor just because it is listed. If it is run by 
unsophisticated directors then it is just the same as if the product was sold to 
them personally. There is a clear and well-accepted
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/faqs/super/faq_ia_eng.pdf">
standard</a> of &quot;suitability&quot; in the investment advisory industry, which 
requires that advisers should only sell products to clients 
who they reasonably believe are capable of understanding the product and all its 
risks, <u>and</u> where the product matches the needs and circumstances of the 
client. Morally and reputationally, you can't get out of that by pitching a product 
with a glossy presentation and then claiming in the small print not to be advising the client on 
the merits of the product and suitability for the client's needs.</p>
<p>Clearly from the risk profile, these products are not suitable for listed 
companies. They don't reduce risk, they increase it, so they fail the suitability test. Furthermore, in our view, anyone 
who understood the risks in the Deutsche Bank products would be out of their 
mind to buy them on those terms. The almost immediate loss of value (just a few 
months into a 5-year term) indicated by the quotations used for fair value 
accounting indicates how overpriced the products were in the first place.</p>
<p>Let this article serve as a warning to all banks and listed companies out 
there - if we find this behaviour again, we will name you and shame you. 
Meanwhile, if Deutsche Bank wishes to do the decent thing, then they should 
cancel the contracts without loss to the their clients.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=138350">DEUTSCHE BANK AKTIENGESELLSCHAFT</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15161">DREAM INTERNATIONAL LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23847">Fresh Express Delivery Holdings Group Co., Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17463">Future World Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15154">Imperial Pacific International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13475">Kingwell Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13348">Towngas Smart Energy Company Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13477">Lin, Wan Qaing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9347">Tung, Fai</a></li>
				
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