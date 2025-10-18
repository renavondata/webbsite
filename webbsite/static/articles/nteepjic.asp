
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

<script type="text/javascript">document.title="Nam Tai restructuring proposals";</script>

	<div class="summary">Nam Tai Electronics (NYSE:NTE) has proposed a complex restructuring involving its two HK-listed subsidiaries, JIC (0987) and NTEEP (2633), subject to independent shareholders' approval. Webb-site.com editor David Webb is a significant holder of NTEEP shares. We give our voting opinion on all the transactions by both companies. The meeting is soon, so VOTE NOW.</div>

<h2 class="center">Nam Tai restructuring proposals<br>
<span class="headlinedate">9 December 2007</span></h2>
<p>Back on 8-Oct-07, Nam Tai Electronics, Inc. (<b>NTEI</b>, NYSE:NTE) and its 
two HK-listed subsidiaries, 
<a target="_blank" href="http://www.namtaieep.com.hk/">Nam Tai Electronic &amp; Electrical Products Ltd</a> (<b>NTEEP</b>, 
2633) and 
<a target="_blank" href="http://www.jic-group.com">J.I.C. Technology Co Ltd</a> (<b>JIC</b>, 0987)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071008/LTN20071008444.pdf">
jointly announced</a> a complicated restructuring proposal which was extremely 
bad value for NTEEP minority shareholders. Soon after that, your editor David Webb, who holds a 
significant number of NTEEP shares (but less than the 5% disclosure threshold) 
went to visit the NTEI Chairman, CEO and founder, Mr Koo Ming Kown and his latest 
CFO, Mr John Farina, to explain why.</p>
<p>We needn't go into the details of the old 
proposal, because it has been replaced with new proposals announced in two parts
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071128/LTN20071128273.pdf">
by NTEEP</a> and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071128/LTN20071128278.pdf">
by JIC</a> on 28-Nov-07. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071204/LTN20071204108.pdf">
NTEEP circular</a> and the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071204/LTN20071204106.pdf">
JIC circular</a> were posted on 5-Dec-07. The EGM of both companies is on 
20-Dec-07, at which only independent shareholders can vote and a simple 
majority of votes cast on a poll will decide the outcome.</p>
<p>In this article, we will review the new proposals and give our 
<a href="#opinion">voting opinion</a>.</p>
<h3>Background</h3>
<p>For historical reasons which aren't relevant, NTEI has ended up with a 
complicated group structure with related businesses in three different pockets. It owns 73.2% of NTEEP, 75.0% of JIC and 100% of 
<a target="_blank" href="http://www.zastrongroup.com/">Zastron Precision-Tech Ltd</a> (<b>Zastron</b>). Zastron makes LCD modules, flexible 
printed circuit (FPC) boards and subassemblies for use in third-party products 
such as mobile phones and other devices. NTEEP makes consumer electronics such 
as video game accessories and telecom products such as Bluetooth headsets. One 
of its latest jobs is to make the
<a target="_blank" href="http://www.flyworld.com/">Fly Fusion</a> digital pen 
for <a target="_blank" href="http://www.leapfrog.com">Leapfrog Enterprises, Inc.</a>. 
JIC makes passive LCD panels and modules for use in third-party products such as watches, 
clocks, cordless phones, calculators and car audio systems. It sells some panels 
to NTEI, presumably for use by Zastron.</p>
<p>Zastron and NTEEP share a factory complex at Gushu Industrial Estate, Xixiang 
Town, Baoan District, Shenzhen. NTEEP owns it, and Zastron leases 49,824 sq.m. 
of space from NTEEP as well as sharing a 3-storey canteen and an office. The 
lease was last
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060327/LTN20060327092.pdf">
renewed</a> in 2006 and expires on 31-Mar-12. The monthly rent is HK$830,000, or 
about HK$1.55 per sq ft.</p>
<p>Zastron has plans to move to a new site at the Guang Ming New District 
Hi-Tech Industrial Park, also in Baoan, Shenzhen. It has paid a 10% deposit on a 
piece of land which will cost RMB56.6m in total. Currently the land is being used as a 
plantation farms by various occupants. Zastron has permission to build a 5-storey 
factory and a 15-storey dormitory with a total gross floor area of 265,000 sq m.</p>
<p>Zastron also has two parcels of land in Wuxi City, Jiangsu Province, which 
the valuers say are currently vacant without any construction activities. In 
total these are valued at HK$29m, assuming they have utilities connected to 
their periphery, which the valuers were unable to verify. One of these sites is 
in Wuxi National Hi-Tech Industries Development Zone, where one of Zastron's 
customers, <a target="_blank" href="http://www.sharp-wsec.com/">Wuxi Sharp 
Electronic Components Co., Ltd.</a>, also has a facility.</p>
<p>Because Zastron, NTEEP and JIC are all in similar and in some cases 
overlapping businesses, it makes sense to combine their businesses under one 
corporate entity, so that they can trade with each other freely, share premises 
without leasing from each other, and offer a more integrated approach to 
customers. They can probably also save overhead costs in areas such as 
accounting and human resources. However, this restructuring cannot be accepted 
if it damages the interests of NTEEP or JIC minority shareholders, so let's take 
a look.</p>
<h3>The proposals</h3>
<p>NTEI proposes to buy essentially all of JIC's business, in a subsidiary 
called Jetup Electronic (Shenzhen) Co., Ltd. (<b>Jetup</b>) for HK$381.8m 
(US$48.9m) in cash. NTEI would then immediately sell Jetup and Zastron to NTEEP, 
for US$353.1m, of which US$41.7m is in cash and the rest is a 12-year loan 
repayable in equal annual instalments and bearing interest at 3.9% p.a.. (the <b>
NTEEP Loan</b>).</p>
<p>As a smaller and separate element, NTEEP would sell two wholly-owned 
subsidiaries, Namtek Japan Co Ltd and 
<a target="_blank" href="http://www.namtek.com.cn/">Shenzhen Namtek Co., Ltd.</a> (together, <b>
Namtek</b>), a designer of electronic dictionaries and other devices for the 
Japanese market, to JIC for HK$80.5m (US$10.3m) in cash. This would give JIC a business to maintain its listing, 
because otherwise it would just hold a pile of cash from the sale of Jetup to 
NTEI.</p>
<p>JIC's sale of Jetup and purchase of Namtek are interconditional. NTEEP's sale 
of Namtek is not conditional on its purchase of Zastron and Jetup. Therefore, 
one possible outcome is that JIC sells Jetup to NTEI and buys Namtek, while 
NTEEP just sells Namtek and does not buy Zastron and Jetup.</p>
<p>Let's deal with the easy parts first.</p>
<h3>NTEEP's sale of Namtek</h3>
<p>Namtek was sold by NTEI to NTEEP for US$26.7m in new NTEEP shares, in a 
connected transaction in Apr-05. The shares were issued at HK$2.55 each. 
Interestingly, the &quot;independent financial adviser&quot; in that transaction was the 
same as in the current proposal, DBS Asia Capital Ltd (<b>DBS</b>), and the 
managing director who signed the opinion in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050425/LTN20050425153.pdf">
2005 circular</a>, Kelvin Lau Siu Ki, also signed the opinion on the proposals 
this time around. He thinks all of them are fair and reasonable.</p>
<p>Namtek had very little in the way of net assets, so of the US$26.7m, US$24.3m 
was goodwill, and NTEEP wrote off all of that in the first half of 2007. The 
2005 circular did not include an accountants' report, but the bottom-line net 
profit for 2004 was US$2.36m. Revenue for 2005 was US$5.9m and profits improved to US$3.0m. However, in 2006, sales fell to US$3.4m and profits fell 
to US$1.0m, which NTEEP says is due to &quot;saturation&quot; of the Japanese digital 
dictionary market. For the trailing 12 months to 30-Sep-07, Namtek had revenue 
of US$2.9m and net profit of US$0.82m, partly due to a rise in research and 
development expenditure. Namtek had net assets of US$2.8m at 30-Jun-07.</p>
<p>Namtek is working on new products, including a GPS location tracking device 
for a customer to be launched in 2008 and 3G sensor applications. The NTEEP 
circular states that <i>&quot;the respective board of Namtek (Japan) and Namtek 
(Shenzhen) expect a decent growth in 2008, and that the preparatory works in the 
three new application areas will bring a solid recovery in 2009.&quot;</i></p>
<p>Based on this, we consider the sale price of US$10.3m to be fair and 
reasonable. Also, as NTEI has almost equal stakes in NTEEP and JIC, they have no 
real interest in tilting the transaction terms one way or the other. 
Accordingly, <b>we recommend NTEEP independent shareholders to vote in favour of 
Resolution 1, to sell Namtek to JIC</b>.</p>
<h3>JIC's sale of Jetup to NTEI</h3>
<p>The price NTEI is offering to JIC for Jetup 
(essentially all of JIC's business) is precisely HK$0.50 per JIC share. The day 
before the first proposals were announced, the shares closed at $0.405, so the 
purchase price is, in effect, a 23% premium for NTEI to take 100% ownership of 
JIC's business, without shareholders losing the listing value of JIC.</p>
<p>This sale price is equivalent to 13.5 times 2006 net 
profit. However, although sales have been growing strongly in 2007, JIC has also seen a downturn in profits, which they blame 
on low LCD yields from newly-trained staff using newly-purchased equipment. It 
could also be because of the margin compression in low-end displays as staff and 
other costs rise. Headcount grew from 2,393 at 31-Dec-06 to 3,274 at 30-Jun-07. 
As a result of the margin squeeze, based on the net profit for the twelve months 
to 30-Sep-07, the exit P/E is 39.8 times. The net tangible assets of Jetup at 
30-Jun-07 were US$21.0m. Net debt is US$3.8m. Accordingly the sale price 
represents about 2.3x NTA.</p>
<p>As noted in the latest quarterly results, 
Jetup has begun pilot production of small-medium sized TFT module assembly 
(using third-party panels), which is a higher-value product than the passive 
displays they have been making previously. We would expect margins to gradually 
recover over time.</p>
<p>Overall, we regard the terms of the sale of 
Jetup to NTEI as fair and reasonable. Accordingly, <b>we recommend JIC 
independent shareholders to vote in favour of Resolution 1, to sell Jetup to 
NTEI.</b></p>
<h3>JIC's purchase of Namtek</h3>
<p>As noted above, we regard the terms of the Namtek deal as fair and 
reasonable. Also, if JIC sells Jetup to NTEI, then it must have a business in 
order to maintain its listing status. Namtek will be that business. For this 
reason, the two deals are inter-conditional. Accordingly, <b>we recommend JIC 
minority shareholders to vote in favour of Resolution 2, to buy Namtek from JIC.</b></p>
<p>However, since JIC will be predominantly a pile of cash, we think it is quite 
possible in the medium term that JIC will undergo further restructuring, or 
possibly be sold off as a &quot;shell&quot; for someone looking for a back-door listing. 
Dozens of small companies have been through that in the last couple of years, 
often becoming speculative natural resources plays.</p>
<h3>NTEEP's purchase of Zastron and Jetup</h3>
<p>So far, so good. Now we get to the bad part. The basis of the purchase prices which NTEEP would pay for Zastron and Jetup 
is 10 times 2006 earnings of each company. However, here we are in December, and we already have 
the first 3 quarters of 2007 behind us. By looking at the quarterly reports of NTEI filed with the US SEC, we have been able to extract the quarter-by-quarter 
figures for Zastron (prepared under US GAAP) as this was reported as a business 
segment. This shows that there has been an alarming collapse in sales and 
profits of Zastron this year. As a result, based on the results for the 12 
months to 30-Sep-07, the P/E is not 10x but 15.7x, which is acknowledged on page 
25 of the circular. Here is the turnover:</p>
<img class="center" alt="" src="../images/nteepj1.gif">
<p>As you can see, sales in the latest quarter were 39% lower than a year 
earlier. Now here is the quarterly net profit:</p>
<img class="center" alt="" src="../images/nteepj2.gif">
<p><em>Note: there is a slight difference between the US GAAP segment profit 
and the HK GAAP figures reported in the shareholders' circular, but it is immaterial, and to be consistent with previous quarters, we use the segment 
figures.</em></p>
<p>At the same time, NTEEP's profit has been 
climbing. If we eliminate one-time items, namely (1) the cost of share 
restructuring of TCL Corp; (2) the subsequent profit on the sale of A-shares; 
and (3) the provision for loss on Namtek (acquired from NTEI in 2005), then the 
results of NTEEP are as follows:</p>
<img class="center" alt="" src="../images/nteepj3.gif">
<p>Now of course, the business of both companies 
is seasonal, so to smooth it out, we should look at the rolling 12-month 
figures. Here's the comparison between NTEEP and Zastron:</p>
<img class="center" alt="" src="../images/nteepj4.gif">
<p>The graph shows clearly the contrasting 
fortunes of NTEEP and Zastron. Of course, this could change, but right now there 
is a great deal of uncertainty over Zastron's prospects. Both revenue and profit 
have declined, which the company blames on shrinkage of business of an indirect 
customer in the mobile phone space. In our view, if Zastron 
were a listed company, there is no way it would trade at the 15.7x trailing 
earnings which NTEI is now asking NTEEP to pay. Comparable companies are trading 
at 7-8x trailing earnings. For example, even after a rally this week, NTEEP 
closed at $2.00 per share on 7-Dec-07, valuing it at US$226m. That puts NTEEP on a trailing 
P/E of 7.7 for the twelve months to 30-Sep-07. NTEEP also has US$120m of net 
cash, or about HK$1.06 per share, mostly a windfall from the TCL share sale, so 
if you take that off the valuation, then NTEEP's core P/E is more like 4 times.</p>
<p>Zastron comes with net cash at 30-Jun-07 of 
US$46.2m, and other net assets of just US$33.3m. Unlike NTEEP, Zastron does not 
own factory premises but rents from NTEEP. Zastron faces substantial capital 
expenditure to develop its own premises in Shenzhen, as well as the Wuxi 
facilities, with a budgeted cost of US$62.0m, so that cash is already more than spoken for, particularly given the decline in 
earnings which makes it less likely to finance capital expenditure from free 
cashflow.</p>
<p>If we look at the net profit as a percentage of sales of Zastron and NTEEP, 
we can see that the NTEEP business has been able to sustain much higher margins 
than Zastron, which is a reflection of the nature of their business; Zastron 
makes low margin components and sub-assemblies, while NTEEP adds more value 
through its completed products:</p>
<img class="center" alt="" src="../images/nteepj5.gif">
<p><b>Jetup</b></p>
<p>As for Jetup, its sales have been 
growing strongly, but it has also seen a downturn in profits, which they blame 
on low LCD yields from newly-trained staff using newly-purchased equipment. We 
would expect it to recover over time. However, as it is a much smaller business 
than Zastron and is bundled into the same transaction, we need not go into the 
details to reach a voting decision on the acquisition of both of them.</p>
<h4>Balance sheet</h4>
<p>The NTEEP circular contains on page V-3 a pro forma balance sheet as of 
30-Jun-07. Before the deal, NTEEP had cash at 30-Jun-07 of US$130.8m and no 
borrowings. Its net tangible assets were US$186.9m, or about HK$1.65 per share. 
If this deal goes ahead, then because of the high acquisition price relative to 
net assets, NTEEP would end up with <u>negative</u> net tangible assets of 
-US$58.6m. It would have cash of US$145.1m, but it would owe US$311.4m to NTEI, 
and it would have US$6.2m of bank borrowings from Jetup. This is a highly-geared 
situation.</p>
<p>The annual principal repayment on the NTEEP loan of US$26.0m, and the initial 
annual interest of US$12.1m, amount to US$38.1m and would take a substantial 
bite out of cash flow. Also, Zastron has planned capital expenditure of US$62m 
for its new facilities in Shenzhen and Wuxi.</p>
<h4>NTEEP Loan</h4>
<p>The terms of the NTEEP Loan are favourable to NTEEP, with an interest rate of 
3.9%, which is less than they would have to pay a bank. Furthermore, in our view 
a bank would not lend NTEEP this much money based on its financials. We can 
reach an estimate of fair value of the loan by discounting the future payments 
of principal and interest at a more realistic borrowing rate of 5.5% (2% over 
the current 5-year US bond yield of 3.49%, given that the NTEEP Loan is 
equivalent to 12 bonds of duration 1 year, 2, years and so on, so 5 years is the 
closest benchmark). This results in a net present value on the US$311.4m NTEEP 
Loan of US$285.9m. Including the up-front cash, this reduces the acquisition 
price for Zastron and Jetup by about 7% from US$353.1m to US$327.6m.</p>
<p>However, taken as a whole, the favourable loan terms do not compensate for 
the excessive price being paid for the acquisition. Crediting a 7% reduction in 
the effective purchase price due to the low interest rate, we still have a 
purchase P/E of 14.6 times trailing earnings. You could put money into numerous 
good listed electronics manufacturers in HK below 8x earnings, so why would you 
pay 14.6x for Zastron?</p>
<p>Incidentally, the unsecured loan would, after the deal is over, constitute 
ongoing financial assistance to NTEEP by a connected person (NTEI), but under
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_14.pdf">
Listing Rule 14A.65(4)</a>, any amendments to the loan (as long as it remains on 
no worse than normal commercial terms) would be exempt from independent 
shareholders' approval. So there is a risk that NTEEP could surrender the 
benefit of the cheap loan by earlier repayments.</p>
<h4>The NTEEP circular</h4>
<p>Whatever the merits and demerits of the deal, the NTEEP circular is one of the 
most disingenuous we have read in a long time. It leads off on pages 8-12 with a 
diatribe against its own management, in essence claiming that the parent (NTEI) 
cannot control the child (NTEEP) and that the child <i>&quot;lacks sufficient ability 
and knowledge&quot;.</i> We've never seen a majority-controlled 
HK-listed company which cannot be controlled by its parent. After all, they can 
appoint or remove directors at will. There are also a bunch of empty threats 
that basically say that if the deal isn't approved then NTEI will do things 
which might damage NTEEP's value such as getting NTEEP to make acquisitions from 
third parties (on which NTEI could vote) on terms which would be even more 
expensive - but why on Earth would they? It is their 
money too!</p>
<p>NTEEP has been doing just fine, with its sales and profits rising, at 
the same time as NTEI's Zastron sales and profits have been falling. If anyone 
needs help, it's the parent.&nbsp; NTEI can always change the board of 
its subsidiary if it wants to. There is nothing to stop NTEI appointing 
executives to joining the NTEEP Board. The current NTEEP CEO, Karene Wong Kuen 
Ling, has been with various parts of the NTEI group since 1989. The current 
NTEEP CFO, Connie Sit Fung Ying, joined the NTEI group in 2001. If there are any 
management issues at NTEEP, then they are of NTEI's own making.</p>
<p>The question of management quality is more relevant to NTEI, which has tried to impose 
unreasonable proposals on NTEEP, including the
<a target="_blank" href="namtai.asp">previous attempt to privatise it</a> at a 
deep discount to its IPO price while offering a 1% bounty to brokers who 
tendered the stock, and then the <a target="_blank" href="NTEEP070522.asp">
breach of the free float limit</a> earlier this year (they have since sold down 
to restore the float).</p>
<p>There are also several claims in the circular which in our view are spurious 
or misleading, such as pro forma EBITDA which includes a one-time gain from the 
sale of Namtek, the gain on sale of TCL Corp shares and the provisions on 
Namtek, but in the interests of avoiding any further length to this article, we 
won't bother going into these claims. If our analysis hasn't convinced you 
already, then we don't know what will.</p>
<h3 id="opinion">Conclusions and opinion</h3>
<p>As we said above, it is easy to appreciate the logic for combining these 
three businesses, but the terms of the Zastron acquisition are simply far too 
expensive, and the result would be a merger achieved at the expense of NTEEP 
minority shareholders, putting their future returns at greater risk. Both 
outcomes (the current proposal or a veto) are sub-optimal - there is a price at 
which it would make sense to bring the operations together in a win-win 
proposition. It is still open to NTEI to revise the terms, in which case a fresh 
vote would be called, but for now we must assume that the meeting will go ahead 
on 20-Dec-07 on the current proposals and we will have to vote it down. <b>VOTE 
NOW</b>, as there are only a few days left before your bank, broker or custodian 
will stop processing proxy instructions.</p>
<ul>
	<li>JIC independent shareholders should vote <b>FOR</b> the sale of Jetup to 
	NTEI (Resolution 1) and <b>FOR</b> the purchase of Namtek from NTEEP 
	(Resolution 2).</li>
	<li>NTEEP independent shareholders should vote <b>FOR</b> the sale of Namtek 
	to JIC (Resolution 1), and <b>AGAINST</b> the purchase of Zastron and Jetup 
	from NTEI (Resolution 2).</li>
</ul>
<p>Your editor will of course vote his NTEEP shares in accordance with these 
recommendations, but that won't be enough on its own to block the proposal, so 
don't sit back and assume others will vote for you. And if you are an 
institution or trustee which allows your shares to be loaned out, then be sure 
to recall them and vote them the way you would want.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4656">China Renewable Energy Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20902">NAM TAI ELECTRONIC & ELECTRICAL PRODUCTS LIMITED</a></li>
				
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