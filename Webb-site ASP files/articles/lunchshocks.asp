
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

<script type="text/javascript">document.title="Stock Exchange launches lunchtime shocks";</script>

	<div class="summary">Under "minor listing rule amendments" announced tonight, HKEx will allow companies to release unscheduled price-sensitive information during lunchtime, leaving outstanding orders from the morning session at risk of being hit.</div>

<h2 class="center">Stock Exchange launches lunchtime shocks<br>
<span class="headlinedate">1 February 2008</span></h2>
<p>Hong Kong Exchanges and Clearing Limited (<b>HKEx</b>, 0388) tonight
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080201news.htm">
announced</a> a <i>&quot;revised policy&quot;</i> and <i>&quot;minor listing rule amendments&quot;</i> 
to allow price sensitive information (<b>PSI</b>) to be published in <i>&quot;a more 
timely manner&quot;</i>, effective 10-Mar-08. In the past, &quot;minor listing rule 
amendments&quot; has been a euphemism for &quot;major things we should have consulted the 
market on first&quot; - an example being the <a href="receivables.asp">
abolition</a> of disclosure of large accounts receivable.</p>
<p>Disclosure: although your editor is an elected independent non-executive director of HKEx, 
the board has no role in listing policy, and the rules are in fact 
made by a subsidiary, the Stock Exchange of Hong Kong Limited (<b>SEHK</b>), 
with the approval of its Listing Committee and the SFC. Rather confusingly, 
today's announcement was made by HKEx rather than SEHK and contains no mention 
of SEHK.</p>
<p>Showing an exceptional amount of tardiness even by the glacial pace of 
consultations in Hong Kong, the announcement referred back to a
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/HKEX%20Cover.PDF">
consultation paper</a> issued six years ago, on 12-Mar-02, and claims to now be 
publishing the responses to the consultation paper, although in fact what it has 
published today is just a
<a target="_blank" href="http://www.hkex.com.hk/consul/response/2002response.pdf">
summary of responses</a> with selected statistics on the responses. In any 
event, the consultation proposals were only loosely related to what was 
announced today. Time has moved on.</p>
<p>In relation to early-morning PSI announcements between 06:00 and 09:00, SEHK 
is bringing the main board into line with the GEM, and allowing share trading to 
begin at the normal time (10:00 for the main session, with a pre-market auction 
starting at 09:45) rather than a half-day suspension. We have no objection to 
that.</p>
<p>We also have no objection to the existing practice of allowing <u>scheduled</u> 
full results announcements to be made during the lunchtime break between 12:30 
and 13:30, which allows 1 hour to digest this information before trading begins. 
That's because the market is always given 10 days' notice of the results date, so 
investors can be aware of the risk that the results may come out at lunch-time 
that day and affect the afternoon price, and they will have 1 hour to absorb the 
information before trading begins again at 14:30. Duly warned, they can cancel 
unfilled orders after the morning session if they want to.</p>
<p>
<img alt="" src="../images/bombshell.gif" style="float:left">The 
real bombshell in today's announcement, however, is that companies will be 
allowed to make <i>any</i> announcement during the lunch break, including <u>
unscheduled</u> announcements of price-sensitive information which may seriously 
impact the share price, positively or negatively. This is a problem, because 
under standard trading practice in Hong Kong, unsatisfied limit orders (to buy 
or sell shares at a set price) which are placed in the morning session are 
carried over automatically to the afternoon session, and unfilled orders are 
only cancelled at the end of each day.</p>
<p>So if a company can shock the market during the lunch break, then if the 
announcement is negative (such as a profit warning, or the arrest of the chief 
executive), an investor who has placed a buy order in the morning and fails to 
hear the news and cancel the order, will get stock at a price she would no 
longer be willing to pay, had she known. Similarly, if a company announces 
during lunchtime that it has received a takeover approach or some other piece of 
good news, an investor who has placed a sell order in the morning session may 
find his shares snapped up at a price he would no longer accept if he had known 
the good news.</p>
<p>While it is reasonable to expect investors to check for the latest company 
news before placing orders, it is surely unreasonable to expect investors who 
have placed orders to watch the screens and check e-mail after lunchtime on the 
off-chance that some price-sensitive information has been published. Under the 
new rules, if you place an order in the morning, then that is exactly what you 
are expected to do. In effect, the day is divided into two sessions: the morning 
session, when all orders benefit from equal information, and the afternoon 
session, when carried-over orders might get hit by those with new information. 
Indeed, if the information is price-sensitive, then by definition it is likely 
to move the price one way or the other, and it is almost certain that some 
carried-over morning orders will get hit.</p>
<p>Not only that, but the new rule halves the lunchtime digestion period from 60 to 
just 30 minutes, allowing companies to release news up to 14:00. So if you have 
outstanding morning orders, you are only safe if you check the news site (or 
your e-mail) during 
the 30 minutes after 14:00 and before the market re-opens. Indeed, since e-mail 
alerts take time to send out, you will have less than 30 minutes if you rely on 
them. Why has this interval been shortened? We don't know. It is difficult to 
imagine who would be disadvantaged by a full hour of digestion time - it still 
gives issuers 90 minutes to file announcements.</p>
<h3><b>Solution</b></h3>
<p>SEHK has a statutory duty to run fair and orderly markets. We don't think it is fair to 
investors with unfilled morning orders to be hit by others who have the benefit 
of surprise lunchtime price-sensitive information. It wouldn't be fair at any 
other time of day either. If companies release price-sensitive information during lunch-time, 
then when that happens, all remaining orders from the morning session should be 
automatically cancelled by the Stock Exchange. That would put investors on an equal footing, as they 
are at the beginning of each trading day, and allow trading to recommence in a 
fair and orderly way. Anyone who then places an order can be assumed to have 
checked for new information first.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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