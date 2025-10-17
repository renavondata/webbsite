
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

<script type="text/javascript">document.title="China Vanguard's Grand Promise";</script>

	<div class="summary">China Vanguard (8156) bought an asset from its controlling shareholder at 6.5 
times the price at which China Motion (0989) turned it down. Now it is struggling to redeem convertible bonds the target issued to Goldman Sachs and Evolution Capital. We also query a year-end HK$139m cash outflow to buy a 
company which was once owned by the controlling shareholder, with negative net assets. Finally we look at a pending acquisition by Aptus, its subsidiary.</div>

<h2 class="center">China Vanguard's Grand Promise<br>
<span class="headlinedate">10 December 2009</span></h2>
<p>In a <a href="chinamotion.asp">separate story</a> today on the recent history 
of <a href="../dbpub/articles.asp?p=4810">China 
Motion Telecom International Ltd</a> (<strong>CMT</strong>, 0989), we mentioned 
that CMT had
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070329/LTN20070329208.pdf">
aborted</a> the HK$240m acquisition of Grand Promise International Ltd (<strong>Grand 
Promise</strong>), from Best Delight Group Ltd (BVI, <strong>Best Delight</strong>) 
because of the &quot;very limited information&quot; available for due diligence, and that 
a
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=15109&amp;lang=EN&amp;dia=Y">
disclosure filing</a> shows that Best Delight was owned by Ms
<a href="../dbpub/positions.asp?p=19432">Cheung Kwai Lan</a> (<strong>Ms Cheung</strong>).</p>
<p>Ms Cheung is the Chairman and controlling shareholder of
<a href="../dbpub/articles.asp?p=16957">China Vanguard Group Ltd</a> (<strong>China 
Vanguard</strong>, 8156, formerly B&amp;B Group Holdings Ltd) and its subsidiary
<a href="../dbpub/articles.asp?p=15917">Aptus Holdings Ltd</a> (<strong>Aptus</strong>, 
8212). We wrote about them in our article <a href="b&baptus.asp">B&amp;B 
and Aptus</a> on 22-May-06, warning of a bubble in both stocks. Since then until 
yesterday (9-Dec-09), China Vanguard (bonus-adjusted) has dropped 73.1% from $1.60 
to $0.43, and Aptus has dropped 86.2% from $2.50 to $0.345. Hoo-hah!</p>
<p>Grand Promise owns Birdview Group Ltd (HK, <strong>Birdview</strong>), which 
owns 49% of a sino-foreign equity joint venture with registered capital of 
RMB100m, which has &quot;exclusive authorisation&quot; from the &quot;Cultural Market 
Development Centre&quot; under the administration of the Ministry of Culture of the 
PRC, &quot;to develop and operate a nationwide karaoke content administration 
system&quot;. In other words, collecting copyright performance fees for songs and 
videos.</p>
<h3>China Vanguard buys Grand Promise</h3>
<p>You will be delighted to learn that China Vanguard did not perceive any 
problem with due diligence, because less than 8 months after CMT gave up, on 
17-Jan-08, China Vanguard
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080117/GLN20080117047.pdf">
agreed</a> to buy Grand Promise from Ms Cheung and others for a whopping US$200m 
(HK$1.56bn), or 6.5 times the price at which Ms Cheung had offered to sell it to 
CMT. Of course, China Vanguard didn't mention the previous deal in its 
announcement. The consideration was satisfied by issuing about 2.26bn shares at 
$0.69.</p>
<p>Notice that by now, Ms Cheung was no longer the sole owner of Grand Promise. 
She owned 80% of it via Best Frontier Investments Ltd, which was 99.89% owned by 
her and 0.11% by her husband. For the remaining 20%, 7.2% was owned by Mr 
Soraharjo Wong, 3.4% by Mr Lo Po Tong, 3.0% by Anna Lo Wai Kwan, 2.0% by Rocky 
Tang Ping Fai, 2% by Mr <a href="../dbpub/natarts.asp?p=52015">Yam Tak Cheung</a> 
(the joint controlling shareholder of CMT), 1.4% by
<a href="../dbpub/positions.asp?p=51983">Chan Ka Yin</a>, the company secretary 
of Aptus, and 1.0% by Mr Wong Sze Chuen. We don't know what they paid for their 
shareholdings, if anything.</p>
<p>In between the China Motion and China Vanguard deals, Grand Promise had done 
some fund-raising, issuing 5-year convertible notes on 30-Nov-07 in the amounts 
of US$25m to Liberty Harbour Master Fund I, L.P. (<strong>Liberty Harbour</strong>), 
which is managed by a unit of Goldman Sachs, and US$10m to Evolution Master Fund 
Ltd, Segregated Portfolio M (<strong>Evolution</strong>), managed by
<a href="../dbpub/officers.asp?p=55505">Evo Capital Management Asia Ltd</a>, the 
local unit of Evolution Capital Management LLC. Apparently they too were happy 
with their own due diligence. The notes were convertible at a Grand Promise 
valuation of US$240m, 20% over the price of the China Vanguard purchase. As part 
of the deal with China Vanguard, the two noteholders were given an option to 
exchange the Grand Promise convertible notes into shares of China Vanguard at 
HK$0.80 each. The notes have an accruing yield of 7% p.a., and security over the 
shares of Birdview. Not only that, but China Vanguard executed a &quot;deed of 
adherence&quot; which makes it jointly and severally liable for the debt with Grand 
Promise.</p>
<p>In the year to 30-Jun-09, China Vanguard booked revenue of HK$22.9m on the 
provision of Karaoke content management system services and licence fee 
collections, and an operating loss of $8.2m. In the latest
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20091113/GLN20091113028.pdf">
quarterly report</a> for the 3 months to 30-Sep-09, China Vanguard said it had 
coverage of 2,200 venues with its Karaoke content management system. It didn't 
specify the revenue, but by deducting other segments from the total we can see 
that it was not more than $11.05m.</p>
<p>As a consequence of the poor performance of Grand Promise, after a partial 
redemption, China Vanguard has entered into a series of agreements and 
undertakings to delay the rights of Liberty Harbour and Evolution to redeem the 
remainder of their bonds, the latest of which was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20091030/GLN20091030102.pdf">
announced</a> on 30-Oct-09, in return for restrictions on withdrawals from China 
Vanguard's group bank accounts. <strong>For a company in this much trouble, it 
is somewhat amazing that China Vanguard still has a market cap of HK$1.38bn at 
tonight's closing price of $0.43. </strong>Although it had net assets of $2.17bn 
at 30-Jun-09, that included $2.22bn of goodwill, including $1.88bn on the 
acquisition of Grand Promise and $0.14bn was on the acquisition of Best Delight. 
So there is very little in the way of tangible value. Which brings us neatly 
onto:</p>
<h3>China Vanguard buys Best Delight - from whom?</h3>
<p>Now, do you remember that when CMT was going to buy Grand Promise, the vendor 
was Best Delight, and that a
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=15109&amp;lang=EN&amp;dia=Y">
disclosure of interest</a> shows that Best Delight was owned by Ms Cheung, 
Chairman and controlling shareholder of China Vanguard?</p>
<p>Well, on 8-May-08, China Vanguard agreed to buy Best Delight from Capital Day 
Investments Ltd (<strong>Capital Day</strong>) for HK$139m in cash, which was 
completed on 30-Jun-08, the last day of China Vanguard's financial year. The 
deal was not disclosed at the time. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080925/GLN20080925034.pdf">
annual report</a> for the year ended 30-Jun-08 mentions on page 24 that China 
Vanguard acquired Best Delight without saying what it is. Note 32 on page 113 of 
the accounts tell us more. It shows that Best Delight had &quot;Available-for-sale 
financial asset&quot; of $63.78m, non-bank borrowings of $63.9m, and negative net 
assets of $0.07m.</p>
<p>On 30-Jun-08, China Vanguard only had one available-for-sale financial asset, 
so this must be the one it acquired that day by buying Best Delight. Note 21 on 
page 98 shows that the $63.78m asset is &quot;equity securities issued by a private 
entity incorporated in the PRC&quot; and that the group &quot;holds a 9.99% shareholding 
right&quot;. The same asset was still in the accounts on 30-Jun-09. We have no idea 
what it is. The goodwill of $139.07m paid for this single-asset company implies 
that this asset is worth $202.9m, or more than 3 times Best Delight's carrying 
cost for it.</p>
<p>The accounts still didn't say when the acquisition was made or from whom. 
Fortunately, China Vanguard needed to produce a &quot;Major Transaction&quot; circular for 
something completely unrelated, on 24-Jun-09, and such circulars are required to 
disclose all &quot;material contracts&quot; within the last 2 years, so there,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20080925/GLN20080925034.pdf">
on page 162 of the PDF</a>, you will find the dates and the name of the vendor. 
The contract was briefly on display in the company's office, but we didn't spot 
this in time to go and find out who signed it for Capital Day.</p>
<p class="regbox">Policy issue: the Listing Rules should be amended to require 
&quot;documents on display&quot; to be filed electronically with HKEx and left in the 
archive forever.</p>
<p><strong>Investors should be told: why did China Vanguard pay so much ($139m) 
for so little ($0.07m of net liabilities)? Who owned Capital Day - was it Ms 
Cheung (in which case this should have been treated as a connected transaction) 
or someone else? If she had sold Best Delight to Capital Day, which then flipped 
it to China Vanguard, then how much did she get for it? Who provided the 
non-bank loan to Best Delight? And what is Best Delight's principal asset 
anyway?</strong></p>
<h3>Personal properties of ancestors</h3>
<p>The latest wheeze of China Vanguard's subsidiary Aptus is to get into the 
death industry. They have conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20091202/GLN20091202046.pdf">
agreed</a> to buy a BVI company which &quot;currently holds various parcels of land 
and a number of old houses in Yuen Long, New Territories, Hong Kong and 
construction works have commenced to refurbish them as ancestral halls for 
providing the storage space of personal properties of ancestors&quot;. We assume that 
&quot;personal properties of ancestors&quot; is a euphemism for ashes. The price on this 
deal is a modest HK$1,755m, somewhat more than its net negative assets of 
$12,512 at 30-Nov-09. The vendor is owned by &quot;Kong Lung Cheung&quot;.
<a href="../dbpub/positions.asp?p=21911">A person of that name</a> was an ED of
<a href="../dbpub/orgdata.asp?p=1670">Skyfame Realty (Holdings) Ltd</a> (0059) 
from 26-Jul-04 to 29-Dec-04, when it was known as renren Holdings Ltd.</p>
<p>The price shall be satisfied&nbsp; as to HK$85m in cash deposit, HK$1.5bn in 
Aptus convertible bonds, $20m in secured promissory note, $150m in unsecured 
promissory note; and $20m in cash on completion. Rather worryingly, the $85m 
deposit can be paid &quot;at any time and in any amount after signing the S&amp;P 
agreement&quot;. At 30-Sep-09, Aptus had net assets of just HK$28.3m.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15917">Celebrate International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4810">China Changbaishan International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55505">Evo Capital Management Asia Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=39885">Evolution Capital Management LLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5596">GOLDMAN SACHS (ASIA) L.L.C.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16957">Sinopharm Tech Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=51983">Chan, Ka Yin (1974)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=19432">Cheung, Kwai Lan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=21911">Kong, Lung Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=52015">Yam, Tak Cheung</a></li>
				
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