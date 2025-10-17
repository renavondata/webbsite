
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

<script type="text/javascript">document.title="Webb-site Total Returns launched";</script>

	<div class="summary">Our new system allows investors, journalists and academics to know what the total return on investment in any HK-listed stock has been in the last 18 years, and to produce comparisons and rankings over any period. Say goodbye to bare price charts, where the dividends and other distributions belong to the fairies. We demonstrate with a review of 15-year returns in the HKSAR.</div>

<h2 class="center">Webb-site Total Returns launched<br>
<span class="headlinedate">6 August 2012</span></h2>
<p>Webb-site is pleased to announce the 
beta-test launch of <strong>Webb-site Total Returns</strong>, a unique system that 
will allow users to calculate the total returns on HK-listed stocks over any 
period since 3-Jan-1994. The system includes:</p>
<ul>
	<li><a href="../dbpub/str.asp?i=1088" target="_blank">
	Single-stock Total Return</a> graphs, rebased to the current stock price</li>
	<li><a href="../dbpub/ctr.asp?i1=1088&amp;i2=14" target="_blank">
	Compare percentage total returns</a> for 1 to 5 stocks, either in absolute 
	or relative terms</li>
	<li><a href="../dbpub/alltotrets.asp" target="_blank">
	Total returns over a fixed period</a> for all stocks which were listed at 
	the beginning of the period</li>
</ul>
<h3>Why are we doing this?</h3>
<p>No other web site that we know of provides total returns time series for HK 
stocks, including the reinvestment of distributions such as dividends, demergers 
(distributions of shares in other companies) and bonus warrants. Distributions 
are a huge component of the overall market return. This leaves retail investors 
unable to know what their total investment return would have been over any 
period, or to fairly compare the graphs of two stocks which have different 
dividend yields. Instead, all you get is share price graphs, as if the distributions 
belonged to someone else. The graphs for companies with high dividend payouts 
can look like they are stagnant or losing money when in fact they are generating 
very good total returns. Journalists regularly produce tables (particularly at 
year-ends) comparing share price gains and losses over a period without taking 
account of distributions, like comparing lychees with kumquats.</p>
<p>Information is the antidote to speculation. It requires a lot of work, 
but Webb-site has produced the Webb-site Total Returns system to fill that gap.</p>
<p>We are aware that a professional terminal, which costs around US$2,000 per 
month, includes a total returns service, although we doubt that it fully adjusts 
for some of the more novel distributions in Hong Kong, such as bonus warrants 
and warrants attached to rights issues. So even if professionals and academics 
have access to that system, they may be relying on understated returns. </p>
<p>In the near future, we will link the past and present listed company directors 
in our &quot;Webb-site Who's Who&quot; database to 
the total returns during the period in which they were directors, so you can see 
how the companies they directed performed. We can also do the same for sponsors 
and auditors - so much fun ahead! Our system covers every HK-listed stock since 
1994. Unlike many financial web sites, we also cover stocks which have delisted. 
On most sites, key in a stock code for a delisted stock and you will find 
nothing. Coverage of delisted stocks allows you to remove &quot;survivor bias&quot; 
because you can look at all the stocks you could have bought at any point in 
time, not just the ones which didn't go bankrupt or get privatised.</p>
<p>To find data on a historic stock, just key in its stock code in the blue bar 
at the top of any page, and hit &quot;past&quot;. For current stocks, hit &quot;current&quot; or 
just hit your Enter key. If you don't know stock codes, you can look up
<a href="../dbpub/listed.asp" target="_blank">current ones here</a> and
<a href="../dbpub/delisted.asp" target="_blank">historic ones here</a>.</p>
<p>Raw stock prices and other market data are facts, not creative works, and you 
cannot copyright facts, but Webb-site Total Returns, like stock market indices, 
are a creative work over which we sweat and for which we assert copyright. 
However, we encourage media to quote them freely and academics to use them in 
research, <strong>provided</strong> that attribution to &quot;Webb-site.com&quot; is 
given. Our goal is for Webb-site Total Returns to become the &quot;gold standard&quot; in 
the same way that students of US stock performance tend to use products from the
<a href="http://www.crsp.com/" target="_blank">Center for Research in Security 
Prices</a> at the Booth School of Business of the University of Chicago. </p>
<p>If you operate a financial web site and wish to enhance your product with 
Webb-site Total Returns, then <a href="../contact">
contact us</a> for a confidential discussion on terms. Don't your users deserve 
better? The fees would help support the running costs of Webb-site, which is not 
for-profit.</p>
<h3>Jump right in</h3>
<p>If you want to get started on the system, jump into the
<a href="../dbpub/ctr.asp" target="_blank">Compare Webb-site Total Returns</a> page and enter a 
stock code, and up to 4 more. There you will find instructions and a link to
<a href="../dbpub/TRnotes.asp" target="_blank">detailed notes</a> for 
explanation and help. A warning: the graphs are rendered in your browser, and 
Internet Explorer 8 cannot handle it. So if you are still on Windows XP, which 
does not allow IE9, then you will need
<a href="http://www.firefox.com" target="_blank">Firefox</a> or another browser. 
IE9 works just fine. To see relative returns, check the box, and you will see 
how the other stocks under-performed or out-performed the first stock. If you 
want a benchmark, try using 2800, the Tracker Fund of HK, listed on 12-Nov-1999. 
It does of course bear costs of about 0.2% p.a. and suffers withholding tax on 
its mainland dividends.</p>
<h3>15 years of the HKSAR</h3>
<p>Now to demonstrate the system, let's pick a period of 15 years to 
30-Jun-2012, the first 15 years (or 30%) of the HKSAR, which we've all recently 
been celebrating, or at least commemorating. We will actually use 27-Jun-1997 as the base date, because 
this was the last trading day before the Handover of sovereignty. So we go to 
the &quot;Database&quot; link in the navigation bar above, and choose &quot;All Webb-site Total 
Returns&quot;, then we punch in the dates, and
<a href="../dbpub/alltotrets.asp?d1=1997-06-27&amp;d2=2012-06-30&amp;s=tretdn" target="_blank">click here to see what we get</a>. You can sort the table by clicking on the 
column headings.</p>
<p>There were only 612 stocks you could have bought on the last ever trading day in 
the Colony of Hong Kong. Of those, 258 would have made gains over the 15-year 
period, including those which were delisted, for whatever reason (usually either 
a privatisation or financial difficulties). On the other hand, 3 were unchanged 
and 351, or about 57%, had negative total returns - even ignoring transaction 
costs, you would have lost money in them over the 15-year period. We should note 
that HK was in one of its market bubbles in 1997, so there is a high base point.</p>
<h3>Index members</h3>
<p>Of the 33 stocks in the Hang Seng Index on 27-Jun-1997, the best performer, 
Henderson Investment Ltd (<strong>HI</strong>, 0097) was in 40th place out of 
612 stocks, 
with a total return of 587.9%, or 13.71% p.a.. That was partly because at the 
end of 2007, it realised the value of its controlling stake in Hong Kong and 
China Gas Co Ltd (<strong>HKCG</strong>, 0003) in a deal with HI's parent, 
Henderson Land Development Ltd (<strong>HLD</strong>, 0012). But shareholders in 
HLD, one of HK's largest property developers, have seen a total return of just 
0.73%, or 0.05% p.a. in the 15 years.</p>
<p>Property was in a bubble in 1997 (as it is now), but even so, some property 
plays did better than others. In the index, 2nd and 3rd places were Hang Lung 
Group Ltd (0010) which gained 502.8%, or 12.72% p.a., and its subsidiary Hang 
Lung Properties Ltd (0101) which gained 475.8%, or 12.37% p.a.. Places 4, 5 and 
6 were utilities: HKCG gained 306.8%, or 9.80% p.a., and the HK electricity duopoly Power 
Assets Holdings Ltd (0006) gained 299.1%, or 9.66% p.a. and CLP Holdings Ltd 
(0002) gained 280.3%, or 9.31% p.a.</p>
<p>The worst-performing index members were SCMP Group Ltd (0583), -64.97%, New 
World Development Co Ltd (0017), -63.79%, and red chip CITIC Pacific Ltd (0267), -48.89%. That 
figure is hardly surprising after the damage from its Australian dollar 
speculation. Red chip Guangdong Investment Ltd (0270) lost 35.32% and Oriental 
Press Group Ltd (0018) lost 20.58%, or 1.52% p.a.. These 5 were the only index members 
to have a negative return in the 15-year period.</p>
<p>For reference, the US
<a href="http://en.wikipedia.org/wiki/Federal_funds_rate" target="_blank">
Federal Funds Target Rate</a> (roughly the risk-free rate for cash) returned 
about 53.8% in that 15-year period, or about 2.91% p.a.. The HK dollar has been 
pegged to the US dollar throughout the period. 21 of the 33 HSI stocks did 
better than risk-free cash, and 12 did not. The HK Composite Consumer Price 
Index gained 9.2% in 15 years, or about 0.59% p.a., so savers (assuming they got 
close to market interest rates) have had positive real returns.</p>
<h3>Top performers, anomalies</h3>
<p>We should remind you at this point that the past stock performance is not 
necessarily a guide to the 
future (although past governance is).&nbsp; However, we would say that past governance is a guide to future 
governance - it heavily affects our investment choices, and it should yours. Returns over fixed periods can be heavily affected by the choice of 
starting date, and they can also be affected by anomalies.</p>
<p>A good example of anomalies is the stock in number 1 position over 15 
years, now known as South China (China) Ltd (<strong>SCC</strong>, 0413). Its 
total return of 8672% is affected by the fact that in 2009 it
<a href="../dbpub/eventdets.asp?e=19221" target="_blank">distributed</a> shares 
in another company, South China Land Ltd (<strong>SCL</strong>, 8155), and on 
4-Aug-2009, the last date before the ex-dividend date, the distribution was 
worth about $1.1128 per SCC share, because SCL was in a bubble. SCC's share 
price was only $1.18 per share that day, probably because SCC shareholders 
didn't believe the SCL value would hold up. Consequently the theoretical 
ex-dividend price for the total return calculation was about $0.067, flattering 
the subsequent returns. By the time of the delivery of the SCL shares on 
21-Aug-2009, it had fallen from $0.30 to $0.195. Such anomalies are fairly rare though, 
and can work both ways, overstating or 
understating actual returns. They just reflect the inefficiencies of markets, 
particularly in small, closely-held companies.</p>
<p>The next stocks in the list, from positions 2 onwards, include a number of 
success stories of small companies that have become very much larger since the 
Handover, such as Luk Fook Holdings (International) Ltd (0590), ASM Pacific 
Technology Ltd (0522) and Techtronic Industries Co Ltd (0669). Others have shown 
very good total returns while remaining fairly small companies, because they 
paid out high dividends. Shareholders who reinvested their dividends would have 
captured these returns by building up their shareholdings (as your editor did in 
several of the top performers), although of course, not all shareholders could 
have done that, as they would be buying from other shareholders.</p>
<h3>Worst performers</h3>
<p>Of the companies still listed after 15 years, the worst performers include 
many companies which have featured on Webb-site for their appalling governance. 
We had to extend to 6 decimal places of percent (or 1 part in 100 million) to 
show what has happened to Heritage International Holdings Ltd (0412), which has 
lost 99.999993% in 15 years. Willie International Holdings Ltd (0273) lost 
99.999984% and Freeman Financial Corp Ltd (0279) lost 99.999927%. All 3 of them 
are in what we call the "Chung Nam Network". 
Looking over a
shorter
<a href="../dbpub/alltotrets.asp?d1=2009-6-30&amp;d2=2012-6-29&amp;s=tretup" target="_blank">
3-year period to 29-Jun-2012</a> (this time sorted from worst to best) you can 
see much the same thing, with many names from our stories.</p>
<p>As we mentioned, this is a &quot;beta-test&quot; of the system: we want you to
<a href="../contact">tell us</a> what features you would like us to add, and 
also let us know if you spot any errors in the event data. In common with the 
rest of Webb-site, we disclaim any liability for any reliance on Webb-site Total 
Returns and for any errors or omissions.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="#top">Back to top</a></p>
<hr>
</div>

</body>
</html>