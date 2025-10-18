
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

<script type="text/javascript">document.title="China Motion Telecom - recent history";</script>

	<div class="summary">We examine the recent history of China Motion Telecom (0989), including two aborted acquisitions and a highly dilutive placing "for working capital" at a time when the company was flush with cash. Why did the board agree to that and where did the shares go? We also query the sustainability of margins in a recent acquisition from CMT's controlling shareholders.</div>

<h2 class="center">China Motion Telecom - recent history<br>
<span class="headlinedate">10 December 2009</span></h2>
<p> <a href="../dbpub/articles.asp?p=4810">China 
Motion Telecom International Ltd</a> (<strong>CMT</strong>, 0989) was defrauded by 
two of its former directors, <a href="../dbpub/natarts.asp?p=7845">Hau Tung Ying</a> 
(<strong>Mr Hau</strong>) and Mr <a href="../dbpub/natarts.asp?p=20825">Li Bin</a>, between Sep-00 and Apr-05 using bogus consultancy 
agreements. They were jailed for 4 years in Feb-09 and thereby inducted into the 
Webb-site.com <a href="../pages/hallofshame.asp">Hall of Shame</a>. Li Bin 
resigned on 19-Dec-05 for &quot;personal reason&quot;.</p>
<p>On 23-Dec-05, <a href="../dbpub/positions.asp?p=32308">Wu Chi Chiu</a> (<strong>Mr 
Wu</strong>)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060113/LTN20060113022.pdf">
acquired</a> 41.14% of CMT for HK$15m or $0.0694 per share, a 52% discount to 
market, triggering a general offer at that price. He became an ED of CMT on 
9-Feb-06 and Deputy Chairman and CEO on 6-Mar-06, where he remains.</p>
<p>On 8-Sep-06, Marvel Bonus Holdings Ltd (BVI, <strong>Marvel Bonus</strong>)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060911/LTN20060911043.pdf">
agreed</a> to subscribe 1.8bn shares at $0.02 each (an 82% discount to market) 
for $36m, obtaining 76.58% of the enlarged share capital, and to provide a $30m 
loan facility. Marvel Bonus is equally owned by
<a href="../dbpub/positions.asp?p=36708">Raymond Ting Pang Wan</a> (<strong>Mr 
Ting</strong>) and <a href="../dbpub/natarts.asp?p=52015">Yam Tak Cheung</a> 
(<strong>Mr Yam</strong>). If that name seems familiar, Mr Yam was one of the 
subscribers of the convertible notes in our
<a href="chinastrategic.asp">China Strategic Bubble</a> story last 
month.</p>
<p>After the announcement of Marvel Bonus' injection, the shares took off in a 
big way, rising from a pre-suspension $0.11 on 30-Aug-06 to $0.62 at the end of 
Sep-06.</p>
<p>On 20-Oct-06, Mr Wu
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061024/LTN20061024056.pdf">
sold</a> all his shares (by then diluted to 9.2% of CMT) in a placing at $0.55 
per share or $119m in total.</p>
<p>On 14-Nov-06, Marvel Bonus
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061116/LTN20061116023.pdf">
sold</a> 46,167,578 shares (1.96%) of CMT in a placing at $0.57, or 28.5 times 
what they paid for them, for gross proceeds of $26.3m, recovering most of its 
entire 
investment cost in CMT and cutting its stake to 74.67%. On 20-Apr-07 it 
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=62359&amp;lang=EN&amp;dia=Y">sold</a> 100m 
shares at $0.46 off-market, and on 9-Jul-07 it 
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=69838&amp;lang=EN&amp;dia=Y">sold</a> another 100m shares at 
$0.50 on-market, cutting its stake to 66.16% and cashing in $96m. The remaining 
shares are currently held via the
<a href="../ccass/chistory.asp?i=1012&amp;part=475">CCASS account</a> of ABN 
Amro Bank N.V..</p>
<h3>Grand Promise, not fulfilled</h3>
<p>On 2-Jan-07, CMT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070124/LTN20070124088.pdf">
agreed</a> to buy Grand Promise International Ltd (BVI, <strong>Grand Promise</strong>) 
from Best Delight Group Ltd (BVI, <strong>Best Delight</strong>), for $240m, 
comprising $120m in cash and $120m in 200m shares at $0.60. The owner of the 
vendor was not disclosed, but a
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=15109&amp;lang=EN&amp;dia=Y">
disclosure filing</a> shows that it was Ms
<a href="../dbpub/positions.asp?p=19432">Cheung Kwai Lan</a> (<strong>Ms Cheung</strong>). 
She is the Chairman and controlling shareholder of
<a href="../dbpub/articles.asp?p=16957">China Vanguard Group Ltd</a> (<strong>China 
Vanguard</strong>, 8156, formerly B&amp;B Group Holdings Ltd).</p>
<p>Grand Promise owns 49% of a joint venture with registered capital of RMB100m, 
which has &quot;exclusive authorisation&quot; from the &quot;Cultural Market Development 
Centre&quot; under the administration of the Ministry of Culture of the PRC, &quot;to 
develop and operate a nationwide karaoke content administration system&quot;. In 
other words, collecting copyright performance fees for songs and videos.</p>
<p>On 29-Mar-07, the agreement for CMT to buy Grand Promise was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070329/LTN20070329208.pdf">
terminated</a> because of the &quot;very limited information&quot; available for due 
diligence. However, that wasn't the last the market had seen of Grand Promise. 
In Jan-2008, Ms Cheung sold it to China Vanguard for 6.5 times the previous 
asking price, and that's not all that China Vanguard has been up to, so read 
today's <a target="_blank" href="chinavanguard.asp">separate story</a> on that!</p>
<h3>Vietnam property</h3>
<p>On 14-Aug-07, CMT conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070920/LTN20070920026.pdf">
agreed</a> to buy <a target="_blank" href="http://www.timessquare.vn/">Times 
Square (Vietnam) Investment Joint Stock Co</a>, which owns a parcel of land at 
22-36 Nguyen Hue Avenue and 57-69F Dong Khoi Street, Ben Nghe Ward, District 1, 
Ho Chi Minh City from <a href="../dbpub/natarts.asp?p=55416">Eric Chu Nap Kee</a>, 
for HK$2.59bn, to be satisfied in shares, a convertible bond and a promissory 
note. CB Richard Ellis (Vietnam) Co Ltd valued the undeveloped site in its 
existing state at US$328m (HK$2.56bn). The deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071206/LTN20071206379.pdf">
aborted</a> on 4-Dec-07.</p>
<h3>Unlisted warrants</h3>
<p>On 14-Jan-08, CMT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080114/LTN20080114306.pdf">
announced</a> the issue of unlisted 2-year warrants to subscribe 460m shares in 
CMT at $0.345 (a 4.2% discount to market), to Mr Ding Lu, potentially diluting 
existing shareholders by 20%. He paid just H$1m, or about $0.002 per warrant. Mr 
Ding &quot;has extensive experience in the telecommunications services and property 
investment industries of PRC&quot;. The reasons for the issue included that it 
&quot;creates business opportunity with Mr Ding based on his business network&quot;. So 
far none of the warrants has been exercised and they are underwater, as the 
shares closed yesterday (9-Dec-09) at $0.153. The warrants expire on 22-Jan-10.</p>
<h3>Highly dilutive placing</h3>
<p>In the depth of the market meltdown, on 1-Dec-08, CMT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081201/LTN20081201577.pdf">
launched</a> a placing via <a href="../dbpub/articles.asp?p=16123">Kingston 
Securities Ltd</a> at $0.042 per share (a 19.23% discount to market), raising 
only $19.5m and diluting existing holdings by 20%, &quot;for general working 
capital&quot;. In our view, there was no need for working capital and this was a 
classic abuse of the <a href="issuemandate.asp">general mandate</a>, 
given that CMT's
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081230/LTN20081230211.pdf">
interim report</a> at 30-Sep-08 shows net current assets of $168m at 30-Sep-08, 
including net cash of $184.9m. The placing was also at a huge 76% discount to 
net asset value. Unusually, none of these 470.02m new shares has been
<a href="../ccass/ctothist.asp?i=1012">deposited into CCASS</a>, so they 
remain untraded. <strong>We wonder why Mr Ting and Mr Yam were willing to accept 
this dilution to their majority holding and who the board allotted the shares to</strong>.</p>
<h3>CMT's deal with Mr Ting and Mr Yam</h3>
<p>On 1-Jun-09, Mr Ting and Mr Yam sold <a href="../dbpub/orgdata.asp?p=55420">
Victory Marker Ltd</a> (HK, <strong>Victory Marker</strong>) to CMT for HK$127m, 
satisfied by $67.1m of properties in Harbour Centre, Wanchai and $59.9m in cash. 
Victory Marker owns Jinhan Yintong (PRC) which owns Runxun Concept (PRC) and 
Hongyi (PRC). These are defined names from the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090619/LTN20090619139.pdf">
circular</a> - full translations of Chinese names were not given. Runxun Concept 
was established on 14-Apr-00 and operates retail outlets for mobile phones in 
Shanghai under the &quot;China Mobile&quot; brand in co-operation with China Mobile Group 
Shanghai Co Ltd, while Hongyi was established on 23-Apr-03 and wholesales mobile 
SIM cards in Shanghai.</p>
<p>Mr Ting and Mr Yam acquired the two companies for a total of just RMB3.0m 
(HK$3.5m) in 2006. They have warranted profits for Victory Marker of $12.7m in 
the year to 30-Jun-10, compared with $12.5m for calendar 2008 and just $0.7m in 
2007. The core business achieved a gross profit margin of 60% in 2008 (p149 of 
the circular). This depends on short-term (10 months to 3 years) contracts with 
China Mobile, for whom it operates the stores. Even if you believe the accounts, 
it is hard to believe that China Mobile would allow such margins to be 
sustainable in the long run, for which CMT paid 10x earnings. Victory Marker had 
net tangible assets (after adding back the shareholders' loan) of just HK$11.2m 
at 31-Dec-08, including $8m of cash. The barriers to competition do not look 
high.</p>
<p>The connected transaction was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090714/LTN20090714119.pdf">
approved</a> without objection on 14-Jul-09. So far then, Mr Ting and Mr Yam 
have paid $36m to acquire control of CMT, then sold a small part of that for 
$122.3m. They paid HK$3.5m, plus shareholder loans of $4.0m, to set up Victory 
Marker, and later sold it to CMT for HK$127m in cash and properties. So as a 
result, they have gained $138.7m in net cash, $67.1m of properties and 55.13% of 
CMT. Nice work!</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4810">China Changbaishan International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16957">Sinopharm Tech Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=19432">Cheung, Kwai Lan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=55416">Chu, Eric Nap Kee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=36708">Ting, Raymond Pang Wan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=32308">Wu, Chi Chiu (1963-03-31)</a></li>
				
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