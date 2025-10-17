
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

<script type="text/javascript">document.title="Webb-site.com launches CCASS Analysis";</script>

	<div class="summary">Following the commendable step by HKEx in April to start disclosing the shareholdings of participants in Hong Kong's securities clearing system, Webb-site.com now launches an analysis system which helps you to interpret the data.</div>

<h2 class="center">Webb-site.com launches CCASS Analysis<br>
<span class="headlinedate">19 November 2008</span></h2>
<p><em>Webb-site.com</em> is pleased to announce a new free service for our 
readers - an analysis of the holdings in the Central Clearing and Automated 
Settlement System (<strong>CCASS</strong>), which is Hong Kong's book-entry 
depository system for securities traded on the stock exchange. To get started 
right away, go to our <a target="_blank" href="../default.asp">home page</a> and 
key in a stock code in the box on its right, then following the CCASS link.</p>
<h3>Background</h3>
<p>It used to be possible to see the holdings of stockbrokers, banks, custodians 
and individuals by inspecting the share registers of HK-listed companies, but 
after the advent of CCASS in 1993, most publicly-held shares (outside of 
controlling shareholders and employees) moved into the CCASS system and were 
registered in the name of HKSCC Nominees Limited, in a system known as 
&quot;immobilisation&quot;. Shares have to be deposited in CCASS in order to settle trades 
on the exchange. CCASS is operated by Hong Kong Securities Clearing Co Ltd (<strong>HKSCC</strong>), 
a wholly-owned subsidiary of <a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> (<strong>HKEx</strong>, 
0388).</p>
<p>Only 15 years late(r), on 28-Apr-08, HKEx
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/0804232news.htm">
announced</a> that to improve transparency, the CCASS holding data would now be
<a target="_blank" href="http://www.hkexnews.hk/sdw/search/search_sdw.asp">
available</a> online. We commend this step. The HKEx site shows, on any date in 
a rolling 1-year period, the holdings in each stock. The data are deleted after 
1 year.</p>
<p>In order to preserve the data for future researchers and to add our 
analytical overlay, we have been capturing the data, starting from 26-Jun-07, so 
we now have a 17-month archive and growing. Each day, we download the data 
(about 250,000 holdings), compare them with previous holdings in our database, and 
record the changes, including removal of delisted stocks and holdings which have 
vanished (gone to zero). About 10-25% of the 
holdings change on any day, depending on the activity level in the market. This 
allows us to add the following analysis:</p>
<ul>
	<li>Each day for each stock, we show a list of holdings and the date on 
	which they last changed. You can then sort by date to see which are the most 
	recently-changed holdings.</li>
	<li>For each holder in each stock, a 1-page history can be generated, 
	showing the day-to-day changes in the holder's position in that stock. This 
	saves you having to look at one page after another just to compare holdings 
	from day to day.</li>
	<li>We can generate a list of stockholdings for each holder, on any given 
	date, showing the percentage holding in each company, based on the latest 
	known number of issued shares as published from time to time.</li>
</ul>
<h3>Know your broker</h3>
<p>Our CCASS Analysis Service will allow readers to see what stocks certain 
brokers specialise in, and if you have a margin account, what the pool of 
collateral might include. You've heard about &quot;know your client&quot;, but this 
improves your ability to &quot;know your broker&quot;. This collateral pool is often 
pledged to lenders, and if its value falls suddenly then it can, in extreme 
cases, trigger a brokerage collapse.</p>
<h3>Trend following</h3>
<p>By looking at recent trends, you can have some idea, up to 2 days before the 
report (since transactions are usually settled 2 days after the trade), whether 
a broker was selling or buying a line of stock. For institutional brokers, it is 
harder to tell, as most of their clients hold stock through major custodians. If 
custodian holdings are increasing overall, then institutions are probably net 
buyers, in which case retail and other investors are net sellers.</p>
<h3>Risks</h3>
<p>Our analysis process isn't perfect. One thing we don't bother with is trying 
to track the holdings during &quot;parallel trading&quot; on different stock codes. 
Parallel trading (for overseas readers who may not be familiar with it) is an 
archaic practice which dates back to the B.C. era (Before CCASS) and was due to 
be <a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080422news.htm">
abolished</a> on 3-Nov-08, but has been
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080723news.htm">
delayed</a> until &quot;the second half&quot; of 2009. So if a stock is in the middle of a 
split or consolidation then you may see strange results, and no holding changes 
for several days. Also, the numbers of shares outstanding are not updated daily 
(the Listing Rules don't require it), so sometimes the percentages will be 
wrong. Finally, we cannot rule out the possibility of errors in our coding or 
data storage systems. <strong>Webb-site.com and its associates do not accept any liability for 
any use of the data or the analysis we present</strong>.</p>
<p>Also, note that HKEx does not disclose the CCASS holdings in derivative 
warrants, callable bull/bear certificates or any other instrument other than 
shares and warrants which are issued by listed companies and admitted to CCASS.</p>
<h3>Holdings, but not ownership</h3>
<p>Beware that you cannot tell from a holding by a bank, broker or custodian 
whether it is beneficially owned by them or held for one or more clients. The 
CCASS holding data only tell you the immediate holders of share interests, not 
the beneficial owners. The only exception to this is for those few Investor 
Participants (<strong>IPs</strong>) who have consented to their CCASS 
shareholdings being disclosed by HKEx. Most IPs, like the clients of banks and 
brokers, prefer to remain anonymous, as is their right. The reports show their 
holdings in aggregate.</p>
<h3>Non-dealings and pledges</h3>
<p>Bear in mind that CCASS holdings can change for reasons other than market 
transactions. Such reason include rights issue subscriptions, warrant exercises, 
stock splits, consolidations and bonus issues, or simply moving accounts between 
custodians and/or brokers. Also, the sudden appearance of a large block of stock 
(particularly one far greater than the relevant day's volume) may be indicative 
of a share pledge. There is no certainty, but you can at least factor in the 
risk to your investment decision. Brokers, Banks and Insurers are currently 
exempt from having to disclose &quot;security interests&quot; in shares pledged to them, 
which they would otherwise have to do under the Securities and Futures 
Ordinance, and controlling shareholders do not have to disclose when they have 
pledged their holdings either.</p>
<h3>Registrars, still offline</h3>
<p>It would be relatively simple for the registrars to publish on their web 
sites (in a machine-readable form) the share registers and the numbers of 
outstanding shares updated immediately for allotments and cancellations. This 
would also help substantial shareholders to know what the denominator is for 
calculating whether changes in their holdings are discloseable (when they move 
through a 1% boundary at 5% or higher). The data could also be submitted by the 
registrars daily to HKEx. So far HKEx has not seen fit to require the registrars 
to do this. The top 3 registrars have 99.7% of the market - they are
<a target="_blank" href="http://www.hk.tricorglobal.com">Tricor</a> (53.2% of 
listed companies), <a target="_blank" href="http://www.computershare.com">
Computershare</a> (43.1%) and
<a target="_blank" href="http://www.unionregistrars.com.hk/">Union Registrars</a> 
(3.3%). Three other registrars have 4 listed clients between them. None of the 
registrars provides online inspection of share registers. They should.</p>
<h3>The legislation vacuum</h3>
<p>Incidentally, since 1998 the Government has been
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/others/scefi%20report(english).pdf">
talking</a> about introducing scripless (electronic) registration of shares, 
which would remove the need for a vault full of paper and potentially would give 
CCASS participants legal title to their shares (if the CCASS register was 
recognised as a branch register), with all the rights that would go with it. But 
this is another piece of proposed legislation that has vanished from the radar, 
along with legislation for statutory backing of the Listing Rules which was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200501/07/0107167.htm">
supposed</a> to have been tabled in 2004-5. Ministers find it easier to talk 
about building an Islamic finance hub and attracting Russian oligarchs to list 
here rather than the complex but vital work of building our legal 
infrastructure.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=108">CCASS</a></li>
				
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