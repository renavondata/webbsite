
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

<script type="text/javascript">document.title="Webb-site upgrades CCASS Analysis, spotlights share pledges";</script>

	<div class="summary">New features in the Webb-site CCASS Analysis System (WCAS) allow investors and regulators to see the largest daily CCASS movements across the market and the history of large moves in each stock and by each broker. Movements of large blocks into CCASS or between brokers without a corresponding transaction often indicate a pledging of shares for loans, which are not disclosed due to inadequate law and Listing Rules.</div>

<h2 class="center">Webb-site upgrades CCASS Analysis, spotlights share pledges<br>
<span class="headlinedate">19 December 2017</span></h2>

<p>Webb-site is pleased to announce today's launch of new features in our 
extremely popular Webb-site CCASS Analysis System (<strong>WCAS</strong>) which 
tracks the movements of custody positions in the Central Clearing and Automated 
Settlement System (<strong>CCASS</strong>) run by Hong Kong Securities Clearing 
Co Ltd (<strong>HKSCC</strong>). One of our aims in doing so is to increase the 
transparency and scrutiny of probable share pledges by controlling shareholders 
in the face of an inadequate law and Listing Rules on disclosures.</p>
<h3>Background</h3>
<p>Practically all trades on the local monopoly Stock Exchange of Hong 
Kong Ltd (<strong>SEHK</strong>) are cleared through CCASS, so to sell shares, 
they must be deposited into CCASS. All the shares in CCASS are held on share 
registers in the name of HKSCC Nominees Ltd (<strong>HKSCCN</strong>), making it 
the only registered shareholder for the vast majority of the free float of 
shares in HK. SEHK, HKSCC and HKSCCN are 100% subsidiaries of Hong Kong 
Exchanges and Clearing Ltd (0388). The Government has exempted all of them from 
the Competition Ordinance.</p>
<p>Since 26-Jun-2007, we've been collecting data which show the daily movements 
in CCASS in each stock. Some of these movements arise from settlement of net 
sales or purchases two days earlier by clients of each CCASS Participant - a 
bank, broker or custodian, or by individual named Investor Participants (IPs). 
Not all movements are the result of transactions though. One reason why large 
blocks of shares can move between participants is if the beneficial owner of 
those shares has pledged them as collateral for a loan.</p>
<p>In the absence of a loan, an intention to borrow, or an intention to 
sell, there are few good reasons for a controlling shareholder to incur the 
risks of leaving large blocks of shares in the account of a bank or broker. 
Doing so makes it harder to vote the shares (an extra layer of admin), incurs 
CCASS "scrip fees" on the first book close after the deposit at the rate of 
$1.50 per board lot of shares, and incurs the risk of broker default. However, 
CCASS charges an extortionate $3.50 per board lot to remove shares from the 
system entirely, so it can 
make sense for a formerly-pledged block of shares to be left inside CCASS even 
after the loan has been repaid.</p>
<p>Moving shares between CCASS Participants results in a further round of scrip 
fees at the next book closure date if the shares are still in their new home, so 
investors should generally assume, when they see a large shareholding moved 
between participants or into CCASS without a corresponding transaction, that those shares are or may soon be pledged and/or sold. 
For smaller shareholding movements without corresponding market volume, those 
can also relate to hedge funds moving stock between "prime brokers".</p>
<p>We wish that we could be more certain about the reasons for each large 
movement, but under HK's law on disclosures of interests (the
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/" target="_blank">Securities 
and Futures Ordinance</a>), "qualified lenders", including licensed banks, 
stockbrokers and insurers, are exempt from disclosing "security interests" 
(pledges) of shares. Listing rules (<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=2398" target="_blank">Rule 
10.07</a>) only require disclosure of pledges by controlling shareholders in the 
first 12 months after listing. Both of these things should change - the 
exemption should be repealed from the legislation so that security interests of 
5% or more are disclosed, and controlling shareholders, who are often also 
directors, should have to disclose their pledges at all times. In the meantime, 
the best we can do for investors is to enhance our WCAS features so that you 
can make your own guesses about share pledges from the movements.</p>
<p>We should note that If a controlling shareholding is held outside of CCASS, 
that doesn't mean it has <em>not</em> been pledged. A broker or bank could still 
hold the certificates with an undated, signed transfer deed, as collateral for a 
loan. It just makes it less likely, because those shares cannot so easily be 
sold in the market. It takes time to deposit them into CCASS and for HKSCC to 
register them in the name of HKSCCN.</p>
<h3>New features</h3>
<p>So without further ado, let's describe the new features of WCAS.</p>
<p>We have run calculations on all our data back to 26-Jun-2007, which show the 
daily "Big changes" - movements over 0.25% of the outstanding shares in all 
listed stocks. From now on, these calculations will be run overnight, so today, for example, you 
can see the <a href="../ccass/bigchanges.asp" target="_blank">Big Changes</a> 
for 18-Dec-2017, and you can pick any earlier date. Click on the issue name, and 
you can see all the CCASS movements in that stock for the day. Click on the 
participant's name, and you can see the history of that participant's holding in 
the stock, including an optional graph. For example, today's biggest movement 
was a 28.93% block <a href="../ccass/chldchg.asp?i=968&amp;d=2017-12-18">
moved</a> by the controller of GR Properties Ltd (0108) from HSBC to CCBI.</p>
<p>At the individual stock level, click on "Big changes" to see the history of 
all movements exceeding 0.25% in that stock. For example, we can see the
<a href="../ccass/bigchangesissue.asp?i=968" target="_blank">history for GR 
Properties here</a>. You can click the column-headings to sort by the absolute 
size (positive or negative) of the change, or by date, or by CCASS Participant 
and date. Click on a participant name to see the history of its holding in that 
stock.</p>
<p>At the individual participant level, click on "Big changes" to see movements 
exceeding 5% of outstanding shares in all companies over time. For example, the 
big movements for CCB International Securities Ltd
<a href="../ccass/bigchangespart.asp?p=411" target="_blank">are here</a>, and 
Kingston Securities Ltd
<a href="/ccass/bigchangespart.asp?p=150" target="_blank">
are here</a>. Again, you can sort by size, by date or by issue name and date. 
For more examples, consider brokers with large holdings in what we call the "<a href="../dbpub/subject.asp?c=136">Enigma 
Network</a>" such as <a href="../ccass/bigchangespart.asp?p=980" target="_blank">
Astrum Capital Management Ltd</a>,
<a href="../ccass/bigchangespart.asp?p=316" target="_blank">Black Marble 
Securities Ltd</a>, <a href="../ccass/bigchangespart.asp?p=1121" target="_blank">
China Demeter Securities Ltd</a>,
<a href="../ccass/cholder.asp?sort=stakdn&amp;part=406" target="_blank">China 
Gather Wealth Financial Co Ltd</a>, <a href="../ccass/bigchangespart.asp?p=1088" target="_blank">
China Jianxin Financial Services Ltd</a>,
<a href="../ccass/bigchangespart.asp?p=139" target="_blank">CSL Securities Ltd</a> 
or <a href="../ccass/bigchangespart.asp?p=310">Jun Yang Securities Co Ltd</a>, 
to name just a few of them. This feature should also be useful for regulators!</p>
<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=127">Disclosure of interests - securities</a></li>
				
				<li><a href="/dbpub/subject.asp?c=136">Enigma Network</a></li>
				
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