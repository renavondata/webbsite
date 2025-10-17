
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

<script type="text/javascript">document.title="SFC proposal sells HK short";</script>

	<div class="summary">We need your help! Support our submission to the SFC against draconian short-selling restrictions and reporting requirements in HK. Under 1 Country 2 Systems, there is no reason to follow China's demonisation of short-selling or to affirm that bias with a dragnet approach to reporting of short positions at 0.02% when long buyers only have to disclose at 5%.</div>

<h2 class="center">SFC proposal sells HK short<br>
<span class="headlinedate">28 December 2015</span></h2>
<p>Late on Friday 27-Nov-2015, the SFC
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=15PR114" target="_blank">
announced</a> a proposal (<strong><a href="http://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=15CP6" target="_blank">consultation 
paper here</a></strong>) to expand the requirement for investors to privately 
report their short positions to the SFC. In our view, this expands an earlier 
regulatory error and imposes an unnecessary burden on the market for no 
regulatory benefit, thereby reducing HK's economic competitiveness. The 
consultation window is short, straddling Christmas and closing on New Year's 
Eve, so we've spent much of the holiday writing this. Please wake up from your holiday slumbers and submit your views, however 
brief, in the next 3 
days - we'll tell you how to <a href="#speakout"><strong>have your say</strong></a> at the end of this article. 
This article is Webb-site's submission.</p>
<p>Webb-site has always been in favour of greater disclosure requirements where 
it adds value to investors, that is, where the benefits outweigh the costs, but 
not where it does nothing but pander to prejudices and political or regulatory 
whims while burdening participants with filing obligations and placing them at 
risk of criminal penalties for non-compliance (HK$100k and 2 years in jail in 
this case).</p>
<p>Such a dragnet of reporting requirements is rather like the difference 
between targeted, warranted wire-taps and global NSA surveillance, and it is 
not even a symmetric dragnet - there is no obligation to disclose long positions 
until you get to 5%, but short positions of 0.02% or HK$30m (if less) must be reported to 
the SFC. This portrays a clear regulatory bias against short sellers - but no 
evidence has ever been provided by any regulator that short sellers cause systemic market 
failures, while there is plenty of academic evidence showing that short selling 
improves price discovery and market efficiency, as you would expect when 
non-owners who have a negative view on a stock are able to sell it rather than 
laugh at it.</p>
<p>When syndicates are ramping a stock price upwards, with each member holding less 
than 5%, there is no reporting obligation of the long positions, but short 
sellers who are betting against a bubble stock are obliged to report their 
position to the SFC.</p>
<p>The SFC's proposal should be seen against the background of the Global Financial 
Crisis of 2008/9 and the 2015 mainland stock market bubble and partial crash, 
where the PRC Government has been looking for scapegoats, blaming foreigners 
(who are barely allowed into the mainland markets) and accusing unknown parties 
of "<a href="http://www.reuters.com/article/us-china-stock-crime-idUSKCN0PJ08C20150709" target="_blank">malicious 
short selling</a>". In China, the Government is even more infallible than others, so the bubble and 
crash must be someone else's fault.</p>
<h3>The current short position reporting Rules</h3>
<p>Webb-site <a href="soldshort.asp">opposed</a> this law and made 
counter-proposals to enhance public disclosure when it was first proposed back 
in 2010, but we failed, and the
<a href="http://www.hklii.hk/eng/hk/legis/reg/571AJ/" target="_blank">Securities and Futures 
(Short Position Reporting) Rules</a> (<strong>SPR Rules</strong>),
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=12PR55" target="_blank">
took effect</a> on 18-Jun-2012. A person who, on the last business day of each 
week, holds a net short position of 0.02% (1/5000th) of the "specified shares", 
or HK$30m if that is lower, is required to report his net short position to the 
SFC within 2 business days. In
<a href="http://www.hklii.hk/eng/hk/legis/reg/571AJ/s7.html" target="_blank">
certain circumstances</a>, the SFC can order daily reports to be made within 1 
business day, where it believes that circumstances exist which "threaten the 
financial stability of Hong Kong" and that as a result, it believes that it 
needs to know.</p>
<p>Under
<a href="http://www.hklii.hk/eng/hk/legis/reg/571AJ/sch1.html" target="_blank">
Schedule 1</a> of the SPR Rules, the specified share are constituents of the 
blue-chip Hang Seng Index, the Hang Seng China Enterprises Index (also known as 
the H-Share index), and any other stock which is classified as a "financial 
stock" by <a href="../dbpub/orgdata.asp?p=56825">Hang Seng Indexes Co Ltd</a>, 
even relatively small brokerages or investment companies. 
As of <a href="../dbpub/shortdate.asp?d=2015-12-11&amp;s=mcapdn" target="_blank">11-Dec-2015</a>, 
there are 124 specified shares. The largest stock in the list is China Mobile 
Ltd (0941) with a market value of HK$1,834bn. Therefore a disclosable short 
position of $30m of that is just 0.0016%. The smallest stock is Huahua Finacial 
Holding Co Ltd (3903), an H-share, with a market cap of $1,217m, so 0.02% of 
that is just HK$243k. Keep in mind that for H-shares, they only represent the 
HK-listed shares, not the entire issued shares of the company, so the percentage 
short position of the H-shares is much higher than the percentage of outstanding 
shares. There are <a href="../dbpub/listingtrend.asp" target="_blank">currently 1851 companies</a> 
with a primary listing on the Main Board or GEM.</p>
<p>In the European Union (<strong>EU</strong>),
<a href="https://www.esma.europa.eu/regulation/trading/short-selling" target="_blank">
Regulation EU 236/2012</a> requires reporting to regulators of short positions 
at a 0.2% threshold, <strong>10 times higher than HK</strong>, and public 
disclosure at a 0.5% threshold, with incremental thresholds of 0.1% thereafter, 
so if your position doesn't change from week to week, then no reporting is 
required. Unlike HK, there is no value threshold, so you don't get 
ridiculously small reports like the 0.0016% of China Mobile that equates to 
HK$30m. The European Securities and Markets Authority published a
<a href="../codocs/ESMA2013_614.pdf" target="_blank">review</a> of its 
regulation in 2013, noting that some participants considered the thresholds were 
too low. There was no suggestion in this review that the thresholds were too 
high.</p>
<p>The SFC's initial consultation of 31-Jul-2009 proposed a threshold of not 
more than 0.25%, but when the conclusions came out on 2-Mar-2010 they slammed it 
down to 0.02% and added the monetary threshold of HK$30m. The perverse logic the 
SFC adopted was that because the amount of short selling in HK is lower than 
some other markets, our thresholds should be lower so that we can measure it. 
This neglects the purported purpose which is not just measurement for 
measurement's sake, but to detect any substantial short positions that may 
(purportedly) affect market stability. We drew the analogy of lowering the speed 
limits because not enough people were caught speeding, even if they were driving 
at safe speeds. The addition of the dollar threshold was totally unnecessary 
given that this would only result in disclosures even smaller than 0.02%.</p>
<h3>SPR Rules only apply to sales in HK</h3>
<p>The reporting obligation only applies to positions arising from short sales 
on SEHK, not sales off-market or in other markets - for example, short positions 
arising from sales of HSBC Holdings plc or Standard Chartered plc on the London 
Stock Exchange are not included. The SPR Rules apply to H-shares listed in HK 
but do not apply to A-Shares of the same companies listed in Shanghai or 
Shenzhen. The result is that the reporting threshold, as a percentage of all 
ordinary shares in such companies, is even lower, and the picture is distorted 
by the fact that a person might be short A-shares but long H-shares, or vice 
versa.</p>
<h3>Short positions not growing</h3>
<p>In the 
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=15PR114" target="_blank">press release</a> for the current consultation, SFC CEO Ashley Alder 
states:</p>
<blockquote>&nbsp;"We have seen growth in short selling since the 
position reporting regime was introduced in 2012".</blockquote>
<p>Really? The facts do not support this. Webb-site has been
<a href="../dbpub/shortdate.asp">tracking</a> the weekly aggregate disclosures 
since they began with the first snapshot on 31-Aug-2012. The data show that the 
reported short position
<a href="../dbpub/shortdate.asp?d=2012-08-31&amp;s=stakdn">on 31-Aug-2012</a> 
was 1.353% of the market value of specified shares, and it was
<a href="../dbpub/shortdate.asp?d=2015-10-30&amp;s=stakdn">1.185% on 30-Oct-2015</a>, 
the last date in the consultation paper. The reported short position reached a 
high of 1.506% of the market capitalisation on 21-Mar-2014 and has not exceeded 
1.3%&nbsp; in 2015.&nbsp;A graph of this statistic is shown in Chart A on page 6 of 
the consultation paper, but we can do better - click on the chart below to see 
the Webb-site interactive version:</p>
<a href="../dbpub/shortsum.asp" target="_blank">
<img class="center" alt="Short position chart" src="../images/shortGraph.png"></a>
<h3>The proposed amendments</h3>
<p>Under the new proposals, the SFC wants to expand the list to cover all 
"designated securities" that can be short-sold, as determined by the rules of 
the monopoly "Stock Exchange Company", that is, The Stock Exchange of Hong Kong 
Limited (<strong>SEHK</strong>), owned by <a href="../dbpub/articles.asp?p=9643">
Hong Kong Exchanges and Clearing Ltd</a> (HKEx, 0388). In the case of ETFs, where the number of 
outstanding units can vary from day to day, the trigger would be HK$30m without 
a percentage threshold.</p>
<h3>Designated securities and the uptick rule</h3>
<p>Of course, in a free market, you should be able to borrow and sell any shares 
you like, at your own risk. HK is not a free market. To understand the context 
of the SFC's proposals, you have to understand the history of short-selling 
regulation in HK. Short selling on SEHK wasn't even allowed until January 1994, 
although participants were already able to do it by means of offshore borrowing. 
Today it is only allowed in stocks which meet certain paternalistic criteria.</p>
<p>On 3-Jan-1994, regulated short selling was introduced, with 16 stocks in a 
pilot scheme. Each stock had a market cap of at least HK$10bn and a public float 
of at least HK$5bn. Short-selling was subject to an "uptick rule" in which short 
sales could only occur at the best offer price, preventing the sellers from 
hitting the best bid and thereby slowing them down. In 1995, there were only 226 
transactions worth HK$415m marked as short-sales, in 12 of the 16 designated 
stocks. The low number was partly because until Sep-1994 there was stamp duty on 
borrowing shares and returning them afterwards. </p>
<p>On 25-Mar-1996, a larger list of 113 stocks (or 21.1% of the 536 
primary-listed companies on that date) was introduced and the uptick rule was 
abolished. That year there were $8.75bn of transactions marked as short sales. 
On 1-May-1997, the list was expanded by adding 129 stocks, including H-shares 
and shares underlying derivative products. The total number of designated 
securities was then 241, or about <strong>40.6%</strong> of the 594 
primary-listed companies at that date.</p>
<p>Abolition of the tick rule was a step forward, but it didn't last. In August 
1998, the Government <a href="interven.asp">intervened</a> in the 
stock market for the first time ever, and on 2-Sep-1998 (effective 7-Sep-1998) 
the Council of SEHK reinstated the tick rule "[a]s part of the anti-speculative 
measures introduced by the Government" (<em>SEHK Fact Book</em>, 1998) or as the 
HKEx web site
<a href="https://www.hkex.com.hk/eng/market/sec_tradinfo/regshortsell.htm" target="_blank">
now euphemistically says</a> "upon changes in market conditions". </p>
<p>The Government was upset that short-sellers hitting its bids had made it 
harder for the Government to manipulate the the market upwards, which was the 
stated objective of the market intervention, or as then Hong Kong Monetary 
Authority chief Joseph Yam
<a href="http://edition.cnn.com/ASIANOW/asiaweek/98/0828/biz_1_hkd.html" target="_blank">
famously put it</a> "I'm going to hit them where it hurts". In HK, market 
manipulation is only illegal if the manipulator is not the Government. 
Apparently those "market conditions" are still with us, as the tick rule is 
still with us nearly 20 years later. Alongside that move, the number of eligible 
stocks was also cut from 241 to 195, or 29.1% of the 670 primary-listed 
companies at that time.</p>
<p>The uptick rule was actually up for review in 2007. In a 
<a href="../codocs/SFC070201.pdf">speech</a> on 
1-Feb-2007, the SFC's then-CEO Martin Wheatley said:</p>
<blockquote>"the current uptick rule for short-selling may 
inhibit timely execution of transactions and affect the price-formation process 
in the stock market...The SFC is now working with the Exchange to consider 
putting in place a mechanism that would allow for the suspension of the uptick 
rule."</blockquote>
<p>However, this plan was <a href="../codocs/SFC080926.pdf">abandoned</a> on 
26-Sep-2008, 10 days after Lehman Brothers collapsed, and has never come back. 
The SFC said at the time:</p>
<blockquote>"This decision will be reviewed when the global 
environment is more stable and a clearer picture emerges on how short-selling 
activities will be regulated in other leading markets."</blockquote>
<p>But it hasn't conducted that review. Incidentally, professionals are able to 
avoid the rule anyway using off-market contracts with investment banks which 
maintain a long inventory (hedged against futures or otherwise) that they can 
sell on the downtick.</p>
<p>On 10-May-2012, SEHK
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2012/120510news.htm" target="_blank">tightened eligibility</a> for stocks that can be sold short, raising the minimum 
market capitalisation from HK$1bn to HK$3bn and turnover velocity (annual 
turnover/market capitalisation) from 40% to 50%. Today, the list
<a href="https://www.hkex.com.hk/eng/market/sec_tradinfo/alphabetic.htm" target="_blank">
covers</a> 847 securities. That may sound impressive until you realise that of 
these, 163 are ETFs, 6 are the survivors of the long-forgotten
<a href="https://www.hkex.com.hk/eng/newsconsul/hkexnews/2000/sehk/0524a.htm" target="_blank">
NASDAQ pilot program</a> (somebody please euthanise it), 9 are REITs, and 1 is the 
RMB counter of the
<a href="https://www.hkex.com.hk/eng/newsconsul/hkexnews/2012/121025news.htm" target="_blank">
first and only</a> dual-currency (HKD, RMB) ordinary share, 
<a href="../dbpub/articles.asp?p=18199">Hopewell Highway 
Infrastructure Ltd</a> (0737,80737). <strong>That leaves 668 stocks, or 36.1% of the 
current 1851 primary-listed companies. So in fact, short-selling regulation in 
HK is more restrictive now than it was in 1996, both because of the uptick rule 
and because a smaller proportion of listed companies is eligible.</strong></p>
<p>The uptick rule is of course a form of regulatory bias: there is no 
"downtick" rule that requires buyers to wait patiently at the best bid price and 
not to drive prices higher by taking the offer - even when a stock is obviously 
in a bubble.</p>
<h3>What is short selling?</h3>
<p>Let's just dispense with some basic concepts. Anyone who sells shares, long 
or short, sells because they think the shares will go down in price, at least 
relative to other things they could own. If that person already owns shares then 
she is a "long seller", but if she doesn't, then she is a "short seller", 
creating or enlarging a "short position". Correspondingly, a long buyer buys 
shares and holds them, while a short buyer buys them and returns them to the 
lender, reducing or eliminating her short position. If the long buyer doesn't 
have enough money, then he has to borrow the difference (known as margin 
lending) and repay it when he sells the shares.</p>
<p>Both types of seller hold the same view on the future price movement 
(relative to other assets), but the short seller has to borrow the shares in 
order to sell them. The long seller seeks to avoid a loss, while the short 
seller seeks to make a gain, but these amount to the same objective, because to 
the extent of the negative price movement, the long seller and the short seller 
will be better off by the same amount compared to doing nothing. 
Correspondingly, a long buyer seeks to make a gain from a price increase, while 
a short buyer seeks to avoid a loss from a price increase.</p>
<p>A short sale does not necessarily increase the total of all short positions 
in the market, because the buyer could be a short buyer who is reducing her 
short position, in which case the short interest is just changing hands.</p>
<p>However, because shares are limited liability investments, the potential 
pay-offs of long and short positions are asymmetric. A long buyer has infinite 
potential gain but can never lose more than her initial investment (including 
any borrowed money), but a short seller can't gain more than 100% (if the stock 
goes to zero) and takes the risk of an infinite increase in the share price, and 
being forced to either put up more collateral as security for the stock loan, or 
"cover" the short position by buying back the shares at higher prices.</p>
<p>At any time, in any stock, the sum of all the long positions, minus the sum 
of all the short positions, will always equal 100% of the outstanding shares. 
For example, if there are 10% short positions, then there must be 110% long 
positions. The expansion of this balance is theoretically unlimited. A stock 
could have 500% long and 400% short, but the the difference will always be 100%. 
That may sound counter-intuitive - how can more than 100% of the stock be 
borrowed and sold? The answer is that a share that is borrowed, sold and 
delivered is still just a share, and it can be loaned by its new owner again,
<em>ad infinitum</em>. Of course, when it comes to voting those shares, only the 
owners who currently hold 100% of the shares in their accounts have the votes. 
Those who have loaned their holdings cannot vote unless they call in the loan 
and recover the shares. </p>
<p>At most, all that the symmetric enlargement of the total long and short positions in a stock 
indicates is a stronger diversity of opinions on the fair value of the stock 
relative to its market price, or put simply, which way a stock price will move. 
This has a parallel in the futures markets: the number of contracts in the 
aggregate short position is the same as the number of contracts in the aggregate 
long position. The difference is always zero. An expansion of open interest in 
futures contracts, or short positions in shares, doesn't mean that the market is 
more "bullish" or "bearish". The most that can be said is that (excluding other 
reasons, such as arbitrage and hedging) it just indicates a diversity of views.</p>
<p>So why are short-sellers
<a href="http://www.economist.com/node/808860" target="_blank">so demonized</a>? 
This, we submit, comes down to a basic human psychological bias against "betting 
that others will lose".</p>
<h3>The importance of short-selling to market efficiency</h3>
<p>Short selling plays an important role in price discovery, liquidity and 
market efficiency. If short selling is not permitted then someone who thinks a 
stock is overvalued but doesn't own it can only stand back and privately or 
publicly laugh at it. He does not have the option of putting his money where his 
mouth is. This reduces the number of potential participants in the market for 
that stock, slowing down price discovery. By contrast, anyone who thinks a stock 
is undervalued but doesn't own it can buy it, thereby affecting the price at 
which demand and supply are in equilibrium.</p>
<p>Most regulators (<a href="../dbpub/artlinks.asp?s=11085">including 
the SFC</a>) know all this, and there is a wealth of academic evidence to 
support it. They know that short-selling is intrinsically a good thing, for 
market efficiency, liquidity and price discovery, but many politicians, and a 
minority of regulators, don't. There is a very raw, primal instinct that tells 
the ignorant that it is somehow bad or immoral to bet on something going down in 
value, because those who own it will lose money. You are betting on other people 
to lose. But when you bet that something will increase in value, you are you are 
betting that others who own it will win. It is like betting on a horse to lose a 
race rather than to win it - and yet, if you bet on all the other horses to win, 
then you are doing the exact same thing: your horse will only lose if one of the 
others wins. Indeed, in hedge funds, when they short a stock, they are often 
doing so in order to buy stock in a similar company, betting on relative 
performance.</p>
<p>This psychological bias means that short sellers and those who negatively 
criticise companies are routinely demonized and subjected to greater scrutiny 
than those who are long buyers and praise companies, particularly when markets 
fall rather than rise. This bias is reflected in policy and legislation. Why is 
it that the SFC's law requires people with 0.02% short positions to report to them, 
but not people with 0.02% long positions? Both positions are equally trivial.</p>
<p>Even when sellers (short or long) take the view that a bank is likely to 
fail, others will disagree, and the market will reflect this diversity. A 
falling bank share price doesn't <em>make </em>a bank fail, it just reflects an 
exogenous view on whether it will. Around the world, politicians and regulators 
seek to blame short-sellers for financial crises, to avoid blaming themselves 
for their own policy, legislative and regulatory errors. They shoot the messenger and ask 
questions later, if ever. In China in 2015 as the bubble was bursting, the regulator even
<a href="http://www.bloomberg.com/news/articles/2015-07-08/china-bans-stock-sales-by-major-shareholders-for-six-months" target="_blank">
banned</a> long holders of 5% or more (and Directors and Supervisors of 
companies) from selling for 6 months. That expires on 8-Jan-2016, so it will be 
interesting to see what happens next.</p>
<h3>Stock Futures</h3>
<p>For larger companies, since 1995 there have been stock futures contracts 
traded on the Hong Kong Futures Exchange (<strong>HKFE, </strong>now owned by 
HKEx) where one can 
take a short position without borrowing shares, because these contracts are 
cash-settled at expiry.</p>
<p>Large open positions (long or short) must be reported to HKFE (and through 
them, the SFC) with a
<a href="https://www.hkex.com.hk/eng/market/dv_tradfinfo/lop.htm" target="_blank">
current trigger</a> of 1,000 open stock futures contracts in any one Contract 
Month. For years that market has been quiet, with 38 companies and 3 ETFs 
covered at the end of 2014, and a total open interest of 14,916 contracts. </p>
<p>Until recently, each stock futures contract related to one board lot of 
shares (except the ETFs), but on 30-Nov-2015 and 7-Dec-2015 HKFE
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2015/151118news.htm" target="_blank">
began trading</a> a new batch of stock futures, covering 34 more companies with 
up to 100 board lots of each stock. This appears to be something of an 
experiment to relaunch the product and test the market at different contract 
sizes, loosely related to market capitalisation of the stock. Taking closing 
share prices on 24-Dec-2015, the largest contract is in 
<a href="../dbpub/orgdata.asp?p=21290">Tencent Holdings Ltd</a> 
(0700), for 100 board lots worth $1.518m, while the smallest is for 5 board lots 
of <a href="../dbpub/orgdata.asp?p=51514">China South City Holdings Ltd</a> (1668) worth $17,400, with an average of 
$141,478.</p>
<p>The 1,000-contract reporting trigger for these 34 new stocks, as a percentage 
of issued shares, ranges from 0.106% to 0.910% with an average of 0.33%. <strong>
That is about 16.5x higher than the SFC's short position reporting of 0.02% for 
shares. </strong>For the 37 surviving older series, the 1-board-lot contract 
ranges from $814 for the dilapidated retailer Esprit Holdings Ltd (0330) up to 
$95,000 for Sun Hung Kai Properties Ltd (0016) with an average of $20,205. The 
1000-contract reporting trigger represents between 0.0004% and 0.0552% of the 
issued shares, with an average of 0.0156%.</p>
<p>There does not appear to be any sound basis for the HKFE reporting 
thresholds, other than the fact that humans count in base 10 and 1000 contracts 
is therefore a nice round number. In other words, the regulators place an 
arbitrary and gratuitous reporting obligation on participants. In the case of 
Esprit, a short position of just HK$814,000 would be a "large open position".</p>
<p>Holders of short positions in Stock Futures are not subject to the SPR Rules, 
and "Stock Futures Hedging Short Selling" by a "Designated Stock Futures Hedging 
Short Selling Participant" (yes, really) is exempt from the SEHK short-selling rules, including the uptick rule.</p>
<h3>Public disclosure can be improved</h3>
<p>As we said in our 2010 submission,
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s313.html" target="_blank">
Section 571</a> in Part XV of the Securities and Futures Ordinance requires that 
long positions of 5% be publicly disclosed, but to this day, it only requires 
short positions to be publicly disclosed if they exceed 1%
<u>and</u> the person also has a 5% 
long position. With the exception of investment bank stock-lending pools and 
underwriters, that situation almost never arises, because it wouldn't make sense 
for an investor to be both long and short. If a person is just short, then there 
is no public disclosure requirement regardless of the size of the position.</p>
<p>The outdated logic of this is that the only purpose of the disclosure 
regime is to let the public know when investors may be able to influence the 
affairs of a company through their voting rights, possibly on the road to a 
takeover at higher levels of ownership. But there is another purpose. The same 
framework also warns investors of large long positions that could cause a 
sharp decrease in the share price if they are suddenly sold, for example because 
of foreclosure on a monetary loan after the shares have been pledged as 
security. For the same reason, investors deserve to know of large individual 
short positions that could cause a sharp increase in the share price if they are 
suddenly bought back, for example because the stock loan is recalled.</p>
<p>Sunshine is the best disinfectant, so as we said in 2010, the correct 
solution is to require public disclosure of short positions at the same 
threshold, 5%. If that is considered too large, then the threshold for both long 
and short positions should be lowered, but there should not be a regulatory bias 
against short positions.</p>
<h3>Conclusion</h3>
<p>Hong Kong can and must do better than this. The SFC's proposal, and the 
existing restrictions on short-selling, sell HK short. We are supposed to have a free 
market economy, under the "One Country Two Systems" formula, and not blindly 
follow the prejudices of authoritarian states, including China. HK should adopt 
a free and fair market approach:</p>
<ol>
	<li>The uptick rule should be scrapped, as it was in 1996 before being 
	reinstated in 1998.</li>
	<li>The list of designated securities should be scrapped, and investors 
	should be free to borrow and sell any listed stock, as they are in other 
	leading markets.</li>
	<li>The Short Position Reporting Rules should be scrapped.</li>
	<li>The law should be amended to require public disclosure by those who have 
	a short position of 5% or more in listed shares, bringing it into line with the law on 
	disclosure of long positions.</li>
</ol>
<p>However, if the political backing for doing the right thing is not 
forthcoming, then as the next best thing, the Short Position Reporting Rules 
should be amended to raise the reporting threshold to 0.2%, the same as the EU, 
and to scrap the monetary threshold of HK$30m. You simply don't need to know 
about positions that are below the percentage threshold, however large the 
monetary value may be.</p>
<h3 id="speakout">Have your say</h3>
<p>Since regulators often treat these consultations as opinion polls rather than 
looking at the validity of arguments, we need your help to push them to do the 
right thing. <strong>
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/comment?refNo=15CP6" target="_blank">
Click here</a></strong> to send a submission, or e-mail your views directly to
<a href="mailto:SPR-consult@sfc.hk">SPR-consult@sfc.hk</a>. Feel free to copy 
all or part of our submission above in your submission, or just link to it, and 
send a copy to: contact [at] webb-site.com if you wish.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=185">Short-selling</a></li>
				
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