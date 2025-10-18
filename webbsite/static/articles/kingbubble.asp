
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
</style>
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

<script type="text/javascript">document.title="Inside the Kingdee bubble";</script>

	<div class="summary">It appears to be a Shenzhen success story, conquering the World with the "Chinese management model", but we burn through the techno-fog of the disclosures and dig deep inside the accounts. You won't like what you see.</div>

<h2 class="center">Inside the Kingdee bubble<br>
<span class="headlinedate">18 March 2019</span></h2>
<p>On the face of it, <a href="../dbpub/orgdata.asp?p=13032">Kingdee 
International Software Group Co Ltd</a> (<strong>Kingdee</strong>, 0268) might 
seem like a made-in-Shenzhen success story, a demonstration of what its Chairman, 
CEO and largest shareholder <a href="../dbpub/positions.asp?p=13034">Robert Xu Shao Chun</a> (<strong>Mr Xu</strong>) calls "the Chinese management 
model". Who knew that there is a better way of doing things, unique to China? 
The stock has <a href="../dbpub/ctr.asp?i1=2901&amp;rel=0&amp;d1=2017-03-15">
more than tripled</a> in the last 2 years.</p>
<p>Dig deeper, and you will find that it's a bubble stock, in a company which has relied on 
sector-specific tax 
breaks, government grants, property investment gains and questionable 
transactions with related parties to book any profit at all. Pour yourself a 
coffee and we'll explain.</p>
<p>At the closing price of $10.62 on Friday (15-Mar-2019), Kingdee has a market 
value of HK$35.08bn. The 2018
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0313/LTN20190313738.pdf" target="_blank">
results</a> published last week show revenues of CNY2.81bn (HK$3.20bn at the year-end rate), so it 
is trading on 11.0x revenues. You read that right: revenues, not earnings. We'll 
get to whether there is any E in the P/E later.</p>
<p>Note 4 of the results shows an alarming increase in the "loans to related 
parties", up from CNY164m to CNY722m. All of this increase happened in the 
second half of the year, and without any announcement of new connected 
transactions, if these are. The 30-Jun-2018
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2018/0831/LTN20180831457.pdf" target="_blank">
interim report</a> showed a balance of&nbsp; CNY134m, because CNY30m had been 
repaid in the first half. At that point, these loans were to 2 companies 
controlled by Mr Xu but formerly controlled by Kingdee. The results do not 
include any explanation for the increase, or any discussion of the balance sheet 
at all.</p>
<h3>2016 disposal: off balance-sheet, but not off-risk</h3>
<p>To understand the origin of these loans, we need to review a 
transaction
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2016/0728/LTN20160728453.pdf" target="_blank">
announced</a> on 28-Jul-2016, in which Kingdee sold interests in 3 companies to 
Mr Xu:</p>
<ul>
	<li>Shenzhen Qianhai Baidi Network Co Ltd, 
	"principally engaged in the provision of courier and logistics information 
	services such as courier enquiry and tracking services". Kingdee sold 100% 
	for CNY55.7m.</li>
	<li>Shenzhen CloudHub Network Co Ltd (<strong>Cloudhub</strong>), 
	"principally engaged in the provision of mobile Internet enterprise services 
	through a mobile office platform". Kingdee sold 85% for CNY43.3m 
	and retained 15%, subsequently diluted.</li>
	<li>Shanghai Kingdee Medical Software Co., Ltd. (<strong>SKM</strong>), 
	"principally engaged in the development and operation of medical information 
	systems and software and medical records database, as well as the provision 
	of mobile Internet hospital services through mobile service platforms which 
	connect patients and hospitals." Kingdee sold 100% for CNY8.4m.</li>
</ul>
<p>All 3 were loss-making. No figures for their respective net 
assets/liabilities were disclosed, but for the total price of CNY107.4m, Kingdee 
booked a disposal gain of CNY138.8m before tax (CNY133.6m after tax), implying 
that the 3 had combined negative net assets of CNY31.4m.</p>
<p>The stated reasons for the disposals included "to alleviate further 
operating margin and financial pressures on the Group". It surely did, and we'll 
get to that below. However, it didn't eliminate financial risk, because Kingdee 
generously left outstanding loans to CloudHub and SKM in the amounts of CNY61.7m 
and CNY105.0m respectively. No reason was given for that. The 3-year loan 
agreements purportedly pre-dated the sale, being dated 1-Jan-2016, which was a 
public holiday even in mainland China. On 14-Dec-2018, Kingdee
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2018/1214/LTN20181214491.pdf" target="_blank">
announced</a> that the loans would be extended for another 3 years, but with the 
Cloudhub loan reduced by CNY30m. Giving reasons for the extension, Kingdee 
described the two borrowers as "important business partners of the Group" to 
which it should "continue to provide financial support".</p>
<p>There was no discussion in the announcement of how Mr Xu would divide his 
time and efforts between his private and public entities. In each case in this article, under the Listing Rules thresholds which were 
relaxed some years ago, none of the connected transactions was large enough to 
require independent shareholders' approval, so it was left to the board of 
directors (excluding Mr Xu) to approve them on each occasion.</p>
<h3>Kingdee Medical</h3>
<p>Going back further, we see that SKM was set up by Kingdee in 2011 to buy 75% 
of Guangzhou Wisetop Computer Co Ltd, which it renamed "Kingdee Medical Software 
Technology Co Ltd" (<strong>KMS</strong>). The price on that deal,
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2011/0801/LTN201108011433.pdf" target="_blank">
announced</a> on 1-Aug-2011, was CNY120m, of which about CNY46m was subject to 
adjustment based on 2011 and 2012 profits. Kingdee, via SKM, then injected 
CNY30m of cash and CNY26m of existing business into KMS to raise its stake to 
81.48%. So the outstanding loan of Kingdee to SKM basically represents the high 
price it paid out to the unnamed vendor of KMS.</p>
<p>The
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2012/0405/ltn20120405396.pdf" target="_blank">
2011 Kingdee accounts</a> (Note 35(a)) show that KMS made full-year turnover of 
CNY38.98m and net profit of CNY4.13m, so the P/E on the purchase was about 29. 
The
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2013/0402/ltn20130402860.pdf" target="_blank">
2012 accounts</a> (Note 34) show that as a result of the (poor) performance of KMS in 
2012, the contingent consideration was reduced by CNY13.01m, recognised as a 
1-off gain in Kingdee's income statement. The
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2014/0402/ltn201404021395.pdf" target="_blank">
2013 accounts</a> (Note 21(c)) show a further reduction of the contingent 
consideration by CNY23.16m, generating another gain.&nbsp; Despite this, in both 
years there was no impairment of the goodwill previously paid on the acquisition 
of KMS. Isn't it great how poor performance&nbsp; of a subsidiary can increase 
your profits? In the following years there never was any impairment of the 
goodwill on KMS, but the 2016 disposal announcement reveals that in 2014 and 
2015, SKM (including KMS) made losses of CNY7.57m and CNY18.18m respectively.</p>
<h3>Cloudhub</h3>
<p>Now we turn to Cloudhub. The 2016 disposal announcement stated that in 2014 
and 2015, Cloudhub lost CNY24.1m and CNY81.3m respectively. </p>
<p>Reading the Kingdee reports for 2016 and 2017, you might forget that 
Kingdee had sold 85% of the Cloudhub business. The word "cloud" appears 123 and 
151 times in the 2016 and 2017 annual reports. In the
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2017/0403/ltn201704032142.pdf" target="_blank">
2016 annual report</a>, the Chairman writes "the business volume of CloudHub 
experienced robust growth." Well he should know - he owned it.</p>
<p>Meanwhile in an unannounced transaction on 29-Feb-2016, Kingdee bought 58% of 
Shanghai Guanyi Cloudcomputing Software Co Ltd (<strong>Guanyi</strong>) for 
CNY247.4m including CNY191.9m in cash and CNY55.4m contingent payout, although 
Kingdee reckoned on reclaiming CNY16.7m under a profit guarantee. The 2016 
accounts detail the transaction in Note 37 but fail to disclose what the 
turnover or profit contribution of Guanyi was post-acquisition or what it would 
have been for the whole year. Such disclosure is required by IFRS3 (or its HK 
equivalent,
<a href="https://app1.hkicpa.org.hk/ebook/HKSA_Members_Handbook_Master/volumeII/hkfrs3revised.pdf" target="_blank">
HKFRS3</a>, para B64(q)). In 2017, the related profit guarantee was cancelled, 
and Kingdee booked a gain of CNY25.1m, implying that the final earn-out was only 
CNY13.6m. Kingdee still holds CNY181.3m of goodwill for this acquisition, 
unimpaired.</p>
<h3>The return of Cloudhub</h3>
<p>On 6-Mar-2019, a week before the results announcement, Kingdee
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0306/LTN201903061175.pdf" target="_blank">
announced</a> that it would buy back control of Cloudhub from Mr Xu, paying 
CNY50.5m for his 51.73% stake. The stakes of both Kingdee and Mr Xu had been 
diluted since the 2016 transaction, reducing Kingdee to 9.13%. The other 39.14% 
is said to be owned by unnamed independent third parties.</p>
<p>The announcement revealed that in 2017 and 2018, Cloudhub lost CNY140.6m and 
CNY122.5m respectively, and had negative net assets at 31-Dec-2018 of CNY326.4m. 
We don't know what it lost in 2016, but if we average between 2015 and 2017, 
then that would be a 2016 loss of CNY111m, of which (pro rata) about CNY46m was 
in the 5 months after the disposal. Hence we estimate Cloudhub has lost about 
CNY309m from its disposal in 2016 until 31-Dec-2018, plus whatever it has lost 
since then.</p>
<p>Now, we don't (yet) know which related parties increased their borrowings 
from Kingdee in the second half of 2018 and whether that includes Cloudhub, but 
whatever outstanding loans there are to Cloudhub will disappear in the Kingdee 
group accounts when Cloudhub becomes a subsidiary again. Magic!</p>
<p>While Cloudhub was controlled by Mr Xu, there were ongoing
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0102/LTN201901021949.pdf" target="_blank">
connected transactions</a> between Kingdee and Cloudhub in the form of 
distribution by Kingdee of Cloudhub's products and cross-promotion of Kingdee's 
products. These transactions were renewed as
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0102/LTN201901021949.pdf" target="_blank">
announced</a> on 2-Jan-2019, and it seems fairly clear that Cloudhub is and 
always has been an integral part of the Kingdee product offering and strategy - 
see for example
<a href="http://www.kingdee.com.hk/en/cloud-hub/" target="_blank">this page</a> 
on the Kingdee web site. In the
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2018/0403/ltn201804031190.pdf" target="_blank">
2017 annual report</a>, the Chairman wrote: "the newly-launched CloudHub was 
further integrated with the Group's Cloud products, including Kingdee Cloud, 
Jingdou Cloud and Guanyi Cloud...".</p>
<p>In the period from disposal on 28-Jul-2016 to 30-Nov-2018, Cloudhub paid 
Kingdee fees of CNY37.3m for promoting its "PublicCloud Products", and in the 
other direction, Kingdee paid Cloudhub CNY61.0m as a distributor of Cloudhub's 
products and for promoting Kingdee products.</p>
<p>All of this invites the inference that Cloudhub was used as an 
off-balance-sheet part of the Kingdee group, helping absorb losses on an 
integral part of the Kingdee product offering while receiving financial support 
from Kingdee, and is now brought back without those losses ever hitting the 
Kingdee income statement; instead there will be another large goodwill item 
representing the difference between the purchase price and the negative net 
assets of Cloudhub. We hope that their software engineering is as good as their 
financial engineering.</p>
<h3>Property investment</h3>
<p>Since 2008, Kingdee has had a growing property investment segment which 
appears to be surplus floors or buildings in its Shanghai and Shenzhen "Research 
Centers". We say "appears", because the last time there was even the vaguest 
description of these properties was in Note 9 of the
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2013/0402/ltn20130402860.pdf" target="_blank">
2012 annual accounts</a>, but even then, there was no disclosure of the exact 
addresses as required by paragraph 23 of
<a href="http://en-rules.hkex.com.hk/node/3830" target="_blank">Appendix 16 of 
the Listing Rules</a> when your investment properties exceed 5% of total assets. 
At 31-Dec-2018, the investment properties were valued at CNY1.82bn (HK$2.07bn), 
or about 40% of the net tangible assets attributable to owners of CNY4.57bn 
(HK$5.21bn).</p>
<p>In the 11 years since 2008 inclusive, Kingdee has booked gains on 
revaluation of its investment properties of CNY590m and net rental income before 
tax of CNY453m. There's nothing wrong with the accounting on that, but it does 
help mask the poor profitability of its software business.</p>
<p>We combed through the management discussion and analyses since 2008 and could 
not find any mention of the strategy or plan for this business, presumably 
because there isn't one. No discussion of tenancies, rental yields or occupancy 
rates, for example. The Kingdee segment analyses simply record it as "Others", 
even though it contributed CNY150.7m, or 36.6%, of the 2018 profit attributable 
to shareholders.</p>
<h3>Corporate income tax break</h3>
<p>Kingdee's main subsidiary, Kingdee Software (China) Co Ltd, is what China 
calls a "National Important Software Enterprise" (NISE), so it gets a 
preferential tax rate of 10%. NISE if you can get it. We can't blame Kingdee for 
eating a free lunch, but it does underline the central planning and 
sector-favouritism that goes into the PRC economy, and we've seen the same 
policies <a href="profitstax.asp">encroaching</a> on Hong Kong. The 
question is whether sector-specific tax rates are sustainable if China decides, 
as part of its trade negotiations, to stop favouring specific sectors.</p>
<p>Even in the property investment ("Other") segment, Kingdee applies this 10% 
rate to its revaluation gains and net rental income, although it is difficult to 
see why it should be treated differently to other landlords. It probably holds 
these assets through its NISE-qualified subsidiaries because Kingdee staff are 
in other floors or buildings of the same sites.</p>
<h3>VAT tax break</h3>
<p>Under PRC Value-Added Tax (VAT)
<a href="https://www.pwchk.com/en/china-tax-news/chinatax-news-may2016-14.pdf" target="_blank">
regulations</a>, companies involved in developing software and integrated 
circuits in the PRC collect VAT at 16% (before 1-May-2018: 17%) on their sales 
but then get a refund which reduces their VAT (net of VAT they have paid on 
input costs) to 3% of their sales. This has been a huge contributor to Kingdee's 
profitability. In 2018, Kingdee booked a VAT refund of CNY178.5m, or 39.8% of 
its pre-tax profit. In the 11 years since 2008 inclusive, it has booked 
CNY1.60bn of VAT refunds. This again may be an unsustainable state subsidy. If 
the refund went away without any rate adjustment, then customers would still be 
paying the 16% VAT and if they are VAT-registered enterprises themselves, they 
would still get the input credit for it. So it is hard to see how Kingdee could 
raise its prices to compensate for the lost refunds.</p>
<h3>Government grants</h3>
<p>As if the 10% income tax rate and the VAT refunds weren't enough, the state 
also pours government grants into software developers. Kingdee booked CNY43.3m 
in 2018 and CNY491m in the 11 years since 2008 inclusive. Again, we can't blame 
Kingdee for eating a free lunch, but that stream of Chinese take-aways is 
probably not something to depend on, particularly if China is trying to 
demonstrate to its trade partners that it doesn't micro-manage the economy or 
subsidise its corporates.</p>
<h3>One-off gains</h3>
<p>We've mentioned several of the one-off gains which have supplemented 
Kingdee's "operating profit" over the years, including the 2016 gain on disposal 
of Cloudhub and 2 other entities, and the gains on reducing deferred acquisition 
pay-outs without impairing goodwill. Here's a summary of all of them since 2008:</p>
<p></p>
<img class="center" alt="Kingdee 1-time gains" src="../images/Kingdee1off.gif">
<h3>The core software business</h3>
<p>OK, so despite all of that, excluding all the one-off gains, surely the 
market can't be wrong? Of course it can. Here are the combined core operating 
profits of Kingdee and, assuming they had never shifted it out-and-back, 
Cloudhub, starting with the reported "operating profit". As noted above, 2016 is 
an estimate of 5 months of Cloudhub's losses:</p>
<img class="center" alt="Kingdee core profit" src="../images/KingdeeCoreProfit.gif">
<p>So now you see that even with VAT refunds, the software business struggles to make 
much profit. After deducting VAT refunds, it made operating losses in 6 of 
the last 8 years. If you also factor Cloudhub back in, as if they had never 
shifted it out, then you are looking at a combined operating loss of CNY65m in 
the last financial year and CNY950m over 11 years. In that time, they've made 
more investing in property than they've lost on selling software and 
services.</p>
<p>Yes, revenue has grown, by about 38.9% between 2011 and 2018, or a compound 
average of 4.8% per year - but that's only a bit more than consumer price 
inflation, even if the growth rate has been higher in the last 2 years. 
Investors should not extrapolate that erratic record too far.</p>
<h3>Funding and shareholders</h3>
<p>Mr Xu currently holds about 24.1% of Kingdee.</p>
<p>Kingdee has conducted 2 substantial fund-raisings, in 2014 and 2015. In 2014, 
Kingdee
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2014/0408/LTN20140408239.pdf" target="_blank">
issued</a> a US$175m (HK$1357m) bond convertible at HK$3.90 per share, resulting 
in 348.075m new shares when it had fully converted on 24-Apr-2018. On 
16-May-2015, Nasdaq-listed Chinese online retailer JD.com Inc 
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2015/0518/LTN20150518013.pdf" target="_blank">subscribed</a> for 
288.526m shares at $4.60, raising HK$1327m gross. That was 10% of Kingdee at the 
time, although subsequent dilution would make it 8.74% unless it has bought more 
shares. There has been no subsequent filing. Amongst institutions, 
Capital Group
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=CS20190125E00030&amp;sa2" target="_blank">
holds</a> 10.08%.</p>
<p>Kingdee has been quite popular on the Shenzhen Southbound Connect, where the 
depository
<a href="../ccass/chistory.asp?i=2901&amp;part=1456" target="_blank">currently holds</a> 8.61% of the stock, down from a peak of 15.03% on 
28-May-2018. The outstanding aggregate <a href="../dbpub/short.asp?i=2901">short 
position</a> disclosed to the SFC was 7.77% at 8-Mar-2019, making it the
<a href="../dbpub/shortdate.asp?d=2019-03-08">5th most shorted stock</a> as a 
percentage of outstanding shares, excluding H-shares and ETFs. That also means 
there are 107.77% long positions.</p>
<h3>Other corporate governance issues</h3>
<p>Apart from the unexplained increase in "loans to related parties", the 
balance sheet holds some other horrors. Given that the bonds fully converted and 
with all that money from JD.com, Kingdee has far more capital than it needs. It 
hasn't invested in data centers or other capital-intensive infrastructure - is 
outsources that, including to Amazon's cloud. It has fixed assets (excluding the 
investment properties) of just CNY558m. It has net cash of CNY1511m, and it has 
financial assets of CNY639m which are probably all "wealth management products" 
based on the interim report, although we'll have to wait for the 2018 annual 
report to be sure. The cash flow statement shows a heavy turnover of these - 
they bought and sold or redeemed over CNY3.7bn of financial assets during the 
year.</p>
<p>In 2017, Kingdee also seems to have started a money-lending business, with 
year-end loans to third parties of CNY65m, growing to CNY108m in 2018. The 2018 
cash flow statement refers to this as "the micro-credit business".</p>
<p>Despite being listed in HK and having no listing anywhere else, Kingdee holds 
all its AGMs in Shenzhen, making attendance challenging, particularly if you 
don't have a Mainland Travel Permit or a visa. We suspect non-employee 
attendance is minimal. AGM locations should not be chosen for employees who can see their bosses 
any day that they are available - they are an annual opportunity for outside 
shareholders to meet with all the directors. A review of the Corporate Governance reports shows that 
none of the NEDs or INEDs attended the AGM since reports of attendance began in 
2013, in breach of then
<a href="http://en-rules.hkex.com.hk/node/4703/revisions/4753/view" target="_blank">
Corporate Governance code provision A.6.7</a>, even though Kingdee claims to have 
conformed with the Code.</p>
<p>Despite the huge CNY2.15bn (HK$2.45bn) pile of net cash and wealth management products, 
Kingdee has proposed a dividend of just CNY0.01 for the 2018 year, or about 
CNY33m in total. How they reach that number, or why they even bother to pay such 
a token amount, is a mystery. There is no 
mention of the obese balance sheet in the Management Discussion and Analysis (MD&amp;A) in 
the results announcement, nor has it featured in MD&amp;As in previous annual 
reports, in breach of 32(1) and (2) of
<a href="http://en-rules.hkex.com.hk/node/3830" target="_blank">Appendix 16 of 
the Listing Rules</a>. Readers would be forgiven for thinking that none of the 
directors had actually read the balance sheet, and also that the for-profit 
Stock Exchange of Hong Kong has been failing to enforce its own Listing 
Rules on disclosure, because they don't want to put more resources into actually 
reviewing the disclosures.</p>
<h3>So what's it worth then?</h3>
<p>Enterprise software is a competitive market, but there's clearly a real 
business in Kingdee - it just rarely or barely makes a core operating profit, is heavily 
dependent on state favours to its sector, and is run by people who appear to be 
comfortable with out-and-back transactions over Cloudhub, lending to businesses 
controlled by the Chairman, investing shareholders' money in wealth management 
products and starting up a microfinance business; and <span class="auto-style1">
un</span>comfortable with the idea of independent shareholders talking to 
independent directors at AGMs and perhaps asking awkward questions like "where's 
the return on my equity?" It's difficult to attach much value to such a business 
and if this is "the Chinese management model" then we'll manage without it, 
thank you.</p>
<p>Kingdee has a net tangible asset value of HK$1.58 per share including $0.74 
of net cash and investments and $0.63 of investment properties, so that provides 
some modest underpinning. Although Mr Xu calls himself the "controlling 
shareholder", his 24% stake is not enough to prevent activists pushing for 
change after the bubble bursts (as all bubbles do), so some of that value could 
be extracted, but as the stock is trading at 6.7x book value, at this point it 
doesn't matter.</p>
<p>We'll leave you with this quote from the 2018 results - they may be short on 
disclosure, but they're very long on technobabble:</p>
<blockquote>
	"Kingdee created the unique KDDM Cloud dynamic domain model to support 
	personalized Cloud service, and integrated social networking, artificial 
	intelligence, Big Data and Blockchain technologies to provide scenario-based 
	platform services for enterprise applications."</blockquote>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=13032">KINGDEE INTERNATIONAL SOFTWARE GROUP COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22908129">Kingdee Medical Software Technology Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22908133">Shenzhen CloudHub Network Co., Ltd.</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13034">Xu, Robert Shao Chun</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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