
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

<script type="text/javascript">document.title="Hong Kong's broker siesta";</script>

	<div class="summary">We need your help! Read our article on the debate over HK stock exchange trading hours, and then take our opinion poll. The results will be submitted to HKEx, without names.</div>

<h2 class="center">Hong Kong's broker siesta<br>
<span class="headlinedate">14 September 2010</span></h2>
<div class="pollbox">
	
	<ul class="navlist">
		<li id="livebutton">Poll</li>
		<li><a target="_blank" href='../vote/result.asp?p=38'>Results</a></li>
		<li><a href="../vote/">More polls</a></li>
		
			<li><a href="../webbmail/login.asp">Log in</a></li>
			<li><a href="../webbmail/join.asp">Sign up</a></li>
		
	</ul>
	<div class="clear"></div>
	<h3><b>Poll: Trading hours</b></h3>
	<p><b>Please <a href='../webbmail/login.asp'>log in</a> to see how you voted, if you did. </b></p>
	
			<p>	
			Poll closed: 18:00:00 30-Sep-2010
			</p>
		
		<script type="text/javascript">
		function NoEnter(e)
		{
			var key;
			if(window.event)
				key = window.event.keyCode;     //IE
			else
				key = e.which;     //firefox
			if(key == 13)
				return false;
			else
			return true;
		}
		</script>
		<form method="post" action="/articles/tradinghours.asp">
			<hr>
			<p class=''>1. Should the HK stock exchange trading hours be changed?</p><p class=''><select name='184' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>2. Should the lunchtime trading break be abolished?</p><p class=''><select name='185' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>3. If the lunchtime trading break is kept then how long should it be?</p><p class=''><select name='186' class=''><option value=''>Select</option><option value='105'>1 hour</option><option value='107'>90 minutes</option><option value='106'>2 hours</option><option value='74'>Undecided</option></select></p><p class=''>4. Has a broker taken you to lunch in the last year?</p><p class=''><select name='187' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option></select></p><p class=''>5. What time should the market open in the mornings?</p><p class=''><select name='188' class=''><option value=''>Select</option><option value='115'>Earlier than 09:00</option><option value='108'>09:00</option><option value='109'>09:30</option><option value='110'>10:00 (current)</option><option value='74'>Undecided</option></select></p><p class=''>6. What time should the market close in the afternoon?</p><p class=''><select name='189' class=''><option value=''>Select</option><option value='111'>15:00</option><option value='112'>15:30</option><option value='113'>16:00 (current)</option><option value='114'>16:30</option><option value='116'>Later than 16:30</option><option value='74'>Undecided</option></select></p>
			<p>
			
			</p>
		</form>
	
</div>
<p>There's been a lot of media discussion recently about a possible change to 
Hong Kong's 4-hour stock exchange trading day, which runs in two sessions from 
10:00-12:30 and 14:30-16:00. There is also a 
<a href="http://www.hkex.com.hk/eng/market/sec_tradinfra/documents/pleaflet.pdf" target="_blank">warm-up period</a> 
with a pre-opening auction from 09:30 to 10:00, 
and the Hong Kong Futures Exchange runs an extra 15 minutes until 16:15.</p>
<p>As we stroll around Hong Kong during the lunch hour, we find that banks, 
shops, estate agents and travel agents are all still open and the trains, buses, 
trams and ferries are still running, serving the public, and their staff manage 
to rotate their lunch hours to achieve this. In Hong Kong, we still fire off the 
noonday gun, but there is no modern truth to
<a href="http://www.traditionalmusic.co.uk/folk-song-lyrics/Mad_Dogs_and_Englishmen.htm" target="_blank">
Noel Coward's claim</a> that only &quot;Mad dogs and Englishmen go out in the midday 
sun&quot;. There is no national siesta.</p>
<p>Yet somehow, many stockbrokers have until now seemed incapable of arranging 
their affairs to stay open during the lunch hours. Only in a monopoly environment 
can a business get away with such poor levels of customer service. If we had
<a href="hkexopoly.asp">competing exchanges</a> available to the 
public, then we would not even be having this debate, because at least one of 
them would stay open, and then all of them would. Can you imagine Park 'n Shop, 
one half of our supermarket near-duopoly, closing for lunch while Wellcome 
remained open? It would simply be uncommercial to do so.</p>
<p>Yet <a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing 
Limited</a> (<strong>HKEx</strong>, 0388), in its soft consultation with the market (by which 
they mean brokers, not investors), is apparently not even considering staying 
open at lunchtimes. All the discussion seems to centre around whether the lunch 
break should be 90 minutes or 60 minutes long, rather than the current 120 
minutes. Brokers claim that they need the lunch hour to entertain their clients. 
Really? When was the last time your broker took you out to lunch? Even if she 
did, isn't there someone else who can staff the office and service other 
clients? After all, even the smallest firms are required to have two responsible 
officers.</p>
<p>Complicating this debate is that a large proportion of HK's market value now 
comprises dual-listed mainland companies, with listings in Shanghai or Shenzhen. 
The mainland markets run two sessions from 09:30-11:30 and 13:00-15:00. Despite 
mainland capital controls, there is probably already some arbitrage between the 
two, and this will increase as capital controls loosen. So it makes sense for HK 
to be open at least whenever Shanghai is. Assuming Shanghai is not in the mood 
to co-operate by changing its hours, then HK has to re-open by 13:00. Couple 
this with our existing morning closing time of 12:30, and that would only leave 
30 minutes - hardly worth stopping for. The alternative is to shift the morning 
session to start at 09:30 and stop at the noonday gun with a 1-hour break, then 
run from 13:00 to 16:00. Stopping earlier in the afternoon is not a viable 
option if HK is not to lose business from Europe, particularly in the winter 
when the UK and Europe are 8 hours and 7 hours behind respectively.</p>
<p>HKEx should cut through all this noise and just go for a single 09:30-16:00 
session, a 6.5 hour day (plus the pre-market auction), covering all the times 
when the mainland is open and more. An increasing amount of retail broking takes 
place online anyway, and computers don't need to shut down for lunch. Indeed, if 
individual investors had market access during their lunch hours, then they might 
be more willing and interested to manage their own investments rather than 
outsourcing them to managers of mutual funds, because they could get instant 
execution of their orders rather than having to submit them during a market-wide 
halt and be exposed to news-flow until the market re-opens. They might also 
spend less time trading during office hours on their employer's time!</p>
<p>Furthermore, for traders who are highly leveraged with the overall aim of 
market-neutral positions, continuous trading would allow them to react sooner to 
news which emerges during the lunch hour. Otherwise they may need to square 
their position before the lunch break and re-open it afterwards, in case some 
market-moving event happens while HK brokers are stuffing themselves rather than 
their clients.</p>
<p>In moving to a continuous trading day, HKEx would also need to amend its 
rules to allow trading in an individual stock to be halted for the release of 
price-sensitive information, or a &quot;news halt&quot;. One hour from the time of 
announcement would be a reasonable minimum - enough time to read and digest it. 
Currently, the lunch break serves this purpose, but news halts should be 
available throughout the day.</p>
<p>However, after a news halt, the order queue for that stock (and related 
derivatives) should be cleared before trading resumes, to avoid unfairly hitting 
uninformed orders remaining from before the trading halt. It is unfair to leave 
sell orders outstanding after a takeover is announced, for example, and it is 
similarly unfair to leave buy orders outstanding after a negative profit 
warning. People who placed those orders did not have that information. 
Currently, the order queues are cleared at the end of each day, but not the end 
of the morning session, and this gives rise to the problem of
<a href="lunchshocks.asp">lunchtime shocks</a> which were introduced 
in Feb-2008. The Exchange has done nothing about that, even though it would only 
take a fairly simple bit of programming in their system to address it.</p>
<p>What do you think - is the ability to trade during your lunch time attractive 
to you? Should there be a mandatory siesta? Take our opinion poll and we'll 
forward the results (no names) to HKEx.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=122">Dealing costs</a></li>
				
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