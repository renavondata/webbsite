
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
		<a href="../index.html" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
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
			<form class="box4b" method="post" action="https://webb-site.com/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="https://webb-site.com/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="https://webb-site.com/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="https://webb-site.com/dbpub/orgdata.asp" method="get" name="f1">
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
		<li><a href="../index.html">Home</a></li>
		<li><a href="/dbpub/">Database</a></li>
		<li><a href="/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="/webbmail/login.asp">Log in</a></li>
				
				<li><a href="/webbmail/join.asp">Sign up</a></li>
				<li><a href="/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
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
				<li><a href="PECSregister.asp">PECS register</a></li>
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

<script type="text/javascript">document.title="IKEA removes smart-home products from HK, citing National Security Law";</script>

	<div class="summary">Not entirely consistent with the Government's goal to make Hong Kong a Smart City by investing hundreds of HK$ billions into "Innovation and Technology".</div>

<h2 class="center">IKEA removes smart-home products from HK, citing National Security Law<br>
<span class="headlinedate">12 September 2024</span></h2>
<p>In Hong Kong, how many lawyers does it take to change a smart light bulb?</p>
<p>Back in 2021, locked in HK by the COVID border closure, we embarked on a nerdy upgrade to Webb-site Headquarters, 
installing a range of smart lighting, including motion-sensors to turn them on, and remote controls to change their 
colour-tint and dim them. All of this gear came from the local IKEA store, using their "Tradfri" range of smart 
products, including a hub (connected to the WiFi router) to connect all the gizmos, which can then be controlled via a 
smartphone app.</p>
<p>In late 2022, IKEA
<a href="https://www.ikea.com/global/en/newsroom/innovation/ikea-introduces-dirigera-and-the-new-ikea-home-smart-app-221024/" target="_blank">
replaced</a> the Tradfri hub in its global product range with a newer product, the Dirigera hub, which remains 
compatible with its Tradfri light bulbs and other components. But it turns out that the new hub was never introduced in 
HK. Recently, when we wanted to buy more Tradfri light bulbs to connect to our Tradfri hub, we realised that almost the 
entire smart product range has been withdrawn from IKEA HK stores. We emailed an enquiry to IKEA (which in HK is a 
division of Jardine-controlled Dairy Farm) asking when the product 
range would be restocked. The initial response was:</p>
<blockquote></blockquote>
<blockquote>"We are sorry to inform you that due to Hong Kong safety laws, the related products will not be sold in Hong 
Kong."</blockquote>
<p>Oh dear, we thought, perhaps we have rigged our home with dangerous devices! We wrote back:</p>
<blockquote>"Specifically which laws, and when did they change? I purchased all these products in HK before. Are the 
products I purchased unsafe, and if so, why?"</blockquote>
<p>IKEA replied:</p>
<blockquote>"Dirigera hub, this has never been available for HK market as mention under pervious email due to Hong Kong 
safety laws - <strong>The National Security Law</strong>, the related products will not be sold in Hong Kong." (their 
bold)</blockquote>
<blockquote></blockquote>
<p>Wow. Not so much for our safety as the Country's safety? But proceeding on the assumption that they must have a good 
reason, we asked:</p>
<blockquote></blockquote>
<blockquote>"How would the Dirigera hub contravene the National Security Law? Please explain which section(s) of the law 
are involved. For reference, the law is here:<br>
<a href="https://www.isd.gov.hk/nationalsecurity/eng/law.html" target="_blank">Safeguarding National Security in Hong 
Kong - The National Security Law (isd.gov.hk)</a>"</blockquote>
<p>Unfortunately the response was less than helpful:</p>
<blockquote>
	"Due to licensing issues, the DIRIGERA series will not be available in Hong Kong and Macau IKEA. This issue is 
	caused by the HK government and The National Security Law concern.<br>As an understanding of this law IKEA Hong Kong 
	has not input this device to HK market.<br>As Hong Kong citizens and companies located in Hong Kong, all must obey 
	the law of the country.<br>If customers have enquiry regarding the law please raise this concern to the Hong Kong 
	government the national security law department, thank you!"</blockquote>
<p></p>
<p>Webb-site does not give up easily. We gave them another chance:</p>
<blockquote>
	"So what section of the law does IKEA “understand” to be the problem? Please identify the relevant section or 
	sections so that we can follow up with the Government before publication."</blockquote>
<p>But now for the first time, a "sales team" was blamed:</p>
<blockquote>
</blockquote>
<blockquote>
	"Please note we do not have further information.<br>We were only informed by the sales team.<br>Customers can 
	enquiry the Hong Kong government regarding the law."</blockquote>
<p>We asked IKEA to get the so-called "sales team" to respond. We'll post an update if we get a meaningful reply. We're 
not going to waste time asking the Government to comment on IKEA products without any idea which section of law IKEA 
thinks is relevant.</p>
<p>In a place where the Government is pouring <a href="https://www.itib.gov.hk/en/attractingenterprises/index.php" target="_blank">hundreds 
of billions</a> of taxpayers' Hong Kong dollars into what it calls the "Innovation and Technology Industry" and branding 
us <a href="https://www.smartcity.gov.hk/" target="_blank">"Hong Kong Smart City</a>", it is somewhat ironic that one can no longer buy smart lighting from one of the most popular household stores. Must everything be 
about National Security? We note that the products remain available in multiple Asian countries including
<a href="https://www.ikea.co.id/en/products/electronics-and-accessories/connectivity-and-control/dirigera-art-30503797" target="_blank">
Indonesia</a>, <a href="https://www.ikea.com/sg/en/cat/smart-lighting-36812/" target="_blank">Singapore</a>, <a href="https://www.ikea.com/kr/en/cat/home-smart-hs001/" target="_blank">South Korea</a>  and
<a href="https://www.ikea.com/th/en/cat/smart-home-hs001/" target="_blank">Thailand</a> and the
<a href="https://www.ikea.com.tw/en/products/electronics/connectivity-and-control/dirigera-art-10503798" target="_blank">
place known as Taiwan</a>, apparently none of which feel threatened by a 
light bulb.</p>
<h3>Update, 12-Sep-2024</h3>
<p>After publication of this article, we received an email from Elliot Lee, Managing Director, IKEA Hong Kong. He wrote, 
in part:</p>
<blockquote>
	"Upon reviewing the correspondence between our team and yourself, it has become clear that the information provided 
	to you was indeed incorrect. I sincerely apologise for any confusion and inconvenience this may have caused.</blockquote>
<blockquote>
	I would like to clarify that the DIRIGERA hub is currently unavailable in Hong Kong due to specific technical 
	limitations, not other factors. This has no connection to the Hong Kong National Security Law. It is important to us 
	at IKEA that we communicate clearly and accurately, and it is evident in this instance that we fell short."</blockquote>
<p>So the reason has now changed to unspecified "specific technical limitations". We have written back asking him to be 
specific about what those limitations are, and why they are not a factor in Indonesia, Singapore, South Korea, Thailand, 
Taiwan and most other places in the World, but they prohibit the use of the Dirigera hub in HK and Macau. We'll post any 
update here. Meanwhile, the fact remains that in HK, IKEA has taken a step backwards from smart to dumb home lighting.</p>
<h3>Update, 14-Sep-2024</h3>
<p>Last night we received a further response from Mr Lee, and although it doesn't really answer the questions we asked, 
we're posting it here:</p>
<blockquote>"As part of IKEA’s strategic goals, we are committed to expanding our product offerings in Hong Kong. The 
ambition of Inter IKEA Group, the worldwide IKEA franchisor responsible for the development of products and product 
supply for all IKEA markets, is to offer DIRIGERA and smart products in all IKEA markets, which requires careful 
planning and thoughtful execution. Introducing DIRIGERA and the Home Smart system into new IKEA markets involves 
addressing technical limitations and prioritizing resources to determine where and when these products will be 
available. One key factor is technical adaptation, including adjustments to local network infrastructure, regulatory 
compliance, and localization to meet language and usability standards, among others."</blockquote>
<p>It seems like "localization to meet language and usability standards" should not be difficult given that Taiwan also 
uses traditional Chinese and the product is sold there. You can read the
<a href="https://www.ikea.com.tw/dairyfarm/tw/pdfs/advice/en/362/AA-2375362-1_pub.pdf#page=20" target="_blank">manual, 
in traditional Chinese, here</a>. As regards "local network infrastructure" and "regulatory compliance", this is a box 
that you plug into an ethernet port on a WiFi router or swich, and HK does not have a different kind of ethernet port to 
the rest of the world, nor do we use materially different WiFi frequencies. Like its Tradfri predecessor, the Dirigera 
operating frequencies are all in the 2.4GHz and 5GHz WiFi bands, which are
<a href="https://www.ofca.gov.hk/en/consumer_focus/guide/general/smart_choice_of_wi_fi_devices/index.html" target="_blank">
exempt from licensing</a> in HK and almost everywhere else. As regards "prioritizing resources" - well that's an IKEA 
issue. Maybe they just don't think HK is ready to be a Smart City, unlike Singapore, where IKEA serves a smaller 
population.</p>
<p><em>&copy; Webb-site.com, 2024</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=57317">DAIRY FARM COMPANY, LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1210">DFI Retail Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=646">JARDINE MATHESON HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=171">National Security Law</a></li>
				
		</ul>
	<hr>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="IKEA.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>