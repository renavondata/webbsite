
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

<script type="text/javascript">document.title="Government supermarket vouchers";</script>

	<div class="summary">Supermarket vouchers are often used as a sales incentive in HK, for anything from minibonds to TVs. The Government's last proposal for a competition law would still allow behaviour such as resale price maintenance, which the EU outlaws because it is "severely anti-competitive". Have you ever wondered how much those supermarket vouchers actually cost? A government tender to buy them reveals the answer.</div>

<h2 class="center">Government supermarket vouchers<br>
<span class="headlinedate">27 March 2010</span></h2>
<p>HK residents are familiar with supermarket vouchers as a near-cash form of 
incentive. It's a symptom of resale price maintenance (<strong>RPM</strong>), in 
which a supplier tells its distributors and retailers that they cannot sell 
below a certain price. RPM is illegal in many countries with a competition law, 
but perfectly legal in HK, where we don't have a competition law, and even if we 
get one, the last
<a href="http://www.compag.gov.hk/reference/Public_Consultation.pdf" target="_blank">
government proposal</a> was that it would still allow such price-fixing. RPM is 
outlawed in the European Union, where there is a
<a href="http://eur-lex.europa.eu/pri/en/oj/dat/1999/l_336/l_33619991229en00210025.pdf" target="_blank">
block exemption</a> for certain types of vertical agreements, but it 
specifically says:</p>
<blockquote>&quot;vertical agreements containing certain types of <strong>
severely anti-competitive restraints such as minimum and fixed resale-prices</strong>, 
as well as certain types of territorial protection, <strong>should be excluded 
from the benefit of the block exemption</strong> established by this Regulation
<strong>irrespective of the market share</strong> of the undertakings 
concerned.&quot; (emphasis added)</blockquote>
<p>So rather than compete on price, retailers tend to hand out things you didn't 
really want, and the closer that thing is to cash, the better, because then you 
can exchange it for something you would have bought anyway, such as food.</p>
<p>Even between suppliers of competing products, such as unit trusts or unlisted 
&quot;structured products&quot;, there is sometimes an industry practice that they won't 
compress distribution commissions by offering lower commissions, so instead, the 
suppliers themselves offer goodies, such as the famous TVs, digital cameras or 
ParknShop coupons
<a href="http://www.sfc.hk/sfcCOPro/EN/displayFileServlet?refno=0504&amp;fname=080409_MB36_Take1_eng.pdf" target="_blank">
handed out</a> with Lehman minibonds (distributors had the discretion to give an 
equivalent cash rebate instead).</p>
<p>Now have you ever wondered how much the retailers and others pay for these supermarket 
vouchers? It's been something of a trade secret, but a close look at Government 
tenders reveals what the going rate is. On 11-Dec-09 the HK 
Government's Electrical and Mechanical Services Trading Fund
<a href="http://www.gld.gov.hk/egazette/pdf/20091351/egn200913517808.pdf" target="_blank">
launched</a> a tender for the supply of supermarket gift coupons at face value 
of HK$50.</p>
<p>The result was
<a href="http://www.gld.gov.hk/egazette/pdf/20101412/egn201014121818.pdf" target="_blank">
disclosed</a> in the Government Gazette yesterday (26-Mar-2010), with 54,670 
vouchers with a face value of $50 each to be supplied by Wellcome supermarkets 
(owned by The Dairy Farm Co Ltd) for HK$2,542,155. That works out at $46.50 each, 
or a 
7% discount. We have no idea why the Government is buying these vouchers - 
presumably they are going be handed out as some form of incentive or prize, but 
for what? <a href="../contact">Answers welcome</a>. Maybe some of it goes in 
prizes for the
<a href="http://www.emsd.gov.hk/emsd/e_download/pps/Eng-A2-poster-01-f.pdf" target="_blank">
Electrical Workers Safety Competition</a> which promises prizes in the form of 
an unspecified coupon.</p>
<p>In fact, Government has been buying supermarket vouchers for several years, 
but the public information on such tenders often does not disclose the numbers 
of coupons or face value purchased, so it is impossible for the public to 
monitor whether the Government is getting value for money. One exception was a
<a href="http://www.gld.gov.hk/egazette/pdf/20091307/egn20091307980.pdf" target="_blank">
tender</a> for Hongkong Post on 13-Feb-09 to supply $50 coupons. This was
<a href="http://www.gld.gov.hk/egazette/pdf/20091331/egn200913314838.pdf" target="_blank">
awarded</a> on 31-Jul-09, with 36,000 ParknShop coupons for $1,681,200, or an 
average of $46.70 each, a 6.6% discount.</p>
<p>Hongkong Post uses these and other vouchers to incentivise customers to use 
their Speedpost service with a
<a href="http://www.hongkongpost.com/speedpost/eng/promotion/scheme2009/" target="_blank">
Bonus Point Scheme</a>. You might wonder why they don't just charge lower prices 
for their services. They are probably exploiting an agency conflict between the 
person who decides on the supplier and the person who pays for it. In other 
words, a thinly-disguised kickback scheme for office workers who get to keep the 
vouchers and spend them at places like Cafe de Coral, Starbucks and so on. If 
the employer consents to this, then there is nothing wrong with it, although the 
resulting employee benefit is almost certainly not taxed, so it works against 
public policy (if the employee earns enough to pay salaries tax in the first 
place). If the employer does not consent, then it is corruption, because the 
employee is in effect receiving a bribe from a supplier.</p>
<p>Of course, all of this is small beer compared to what the airlines get up to. 
Recently Virgin Atlantic has been offering &quot;Upper Class&quot; (Business) passengers 
from HK to Sydney and back a HK$2,000 (US$258) shopping coupon, enough to buy a 
high-end iPod, and that's on top of the regular air miles. They could just offer 
lower fares, but that would be too competitive and would not exploit the agency 
conflict between passengers and their employers.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1814">AS Watson & Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=57317">DAIRY FARM COMPANY, LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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