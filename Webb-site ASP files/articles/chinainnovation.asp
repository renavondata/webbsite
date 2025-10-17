
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

<script type="text/javascript">document.title="HKEx and the kind of innovation we don't need";</script>

	<div class="summary">Has HKEx CEO Charles Li learned nothing from last year? A third-class board for third-class companies is not the way to go. It's time to merge the GEM and Main Board and execute the Expert Group recommendation of 2003, moving the Listing Rules regulation to the SFC. One Board, One Rule.</div>

<h2 class="center">HKEx and the kind of innovation we don't need<br>
<span class="headlinedate">2 February 2016</span></h2>
<p><a href="../dbpub/orgdata.asp?p=16163">China Innovation Investment Ltd</a> (<strong>China 
Innovation</strong>, 1217) is a small closed-end investment company that we
<a href="trouble2015.asp#CYChan">warned you about</a> last year, but 
it paints a larger picture about HK stock market regulation. The company has an
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0115/LTN20160115257.pdf" target="_blank">
unaudited NAV</a> at 31-Dec-2015 of HK$0.057 per share, and a share price of 
$0.067 (US$0.0086), making it a sub-penny stock in US terms, but according to an
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2016/0201/LTN201602012002.pdf" target="_blank">
announcement last night</a> (1-Feb-2016), the directors consider that the share 
price is too high! They propose an open offer of 2 new shares at $0.07 for every 
5 held, followed by a 4:1 bonus issue (basically a 5:1 stock split) that would 
reduce the price to about HK$0.0136, together with a bonus warrant that would 
edge it down to $0.0134 if exercised.</p>
<p>The Stock Exchange rejects this (as it must, under
<a href="http://en-rules.hkex.com.hk/net_file_store/new_rulebooks/h/k/HKEX4476_2472_VER10.pdf" target="_blank">
Listing Rule 13.64</a>) because it gets close to the minimum quote of $0.01
<a href="https://www.hkex.com.hk/eng/rulesreg/traderules/sehk/Documents/sch-2_eng.pdf" target="_blank">
where the tick size is 10%</a> ($0.001), so the company is appealing to the 
<a href="../dbpub/orgdata.asp?p=13780">Listing Committee</a>, which is now known to be keen on "innovations" such as 
listing second-class low-voting or no-voting shares, and is now supposed to 
consider a proposal for a third-class board for third-class companies, contained 
in the ballyhooed
<a href="http://mms.prnasia.com/events/event.aspx?id=cb5b48668pc" target="_blank">
strategic plan</a> (see index tab, slide 22) of <a href="../dbpub/orgdata.asp?p=9643">Hong 
Kong Exchanges and Clearing Limited</a> (<strong>HKEx</strong>, 0388) CEO
<a href="../dbpub/natperson.asp?p=52480">Charles Li Xiao Jia</a>. </p>
<p>Rather than create a third board, the sensible thing to do is adopt what we 
will call the "<strong>One Board, One Rule</strong>" approach:</p>
<ul>
	<li>Clean up the existing 2-board mess by merging GEM with the Main Board 
	and moving to a disclosure-based regime, eliminating the existing Main Board 
	entry requirement of having made a certain profit in the year before 
	listing, because that is just a target for accounting manipulation, and 
	because after all, we don't delist companies just because they made a loss 
	last year.</li>
	<li>Require all companies on the merged board to report quarterly, as GEM 
	already does, and as dual A/H listed companies do, because the mainland 
	requires it. For over a decade, HK has been the last major market in Asia not to require quarterly 
	reporting.</li>
	<li>Scrap the requirement for a public offer tranche, because applying for 
	IPOs is not a basic human right.</li>
	<li>The appointment and election of all so-called independent 
	non-executive directors should be <a href="boardgames.asp">
	subject to approval by independent shareholders</a>, or we should stop 
	pretending that the INEDs are independent of controlling shareholders and 
	management.</li>
	<li>Finally, the Listing Rules regulatory function should be moved to the SFC 
	and combined with Takeovers Code regulation. That's the "One Rule" part.
	</li>
</ul>
<p>Instead, Mr Li wants to divide the market further so that companies which 
can't meet HK listing standards (which already leave a lot to be desired) can still 
claim to be HK-listed. Has he <a href="../codocs/SFC150625.pdf">learned nothing</a> 
from last year? Perhaps he thinks that the Government is now willing to push the 
SFC to allow convoluted voting structures - after all, Hong Kong's Chief Executive is 
appointed by one. Instead, the Government should recognise Mr Li's proposal for 
what it is, another demonstration of the conflict of interests for HKEx as a 
for-profit regulator. It has been 13 years since the Government-Appointed
<a href="../dbpub/articles.asp?p=38148">Expert Group recommended</a> moving the 
listing function out of HKEx to the SFC, which already regulates Takeovers 
and Mergers, but the Government has failed to act and continues to limp along 
with the defective "dual filing" system.</p>
<p>In the meantime, we seriously doubt that even the current Listing 
Committee would stoop so low as to find China Innovation's appeal appealing. </p>
<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16163">China Innovation Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=52480">Li, Charles Xiaojia</a></li>
				
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