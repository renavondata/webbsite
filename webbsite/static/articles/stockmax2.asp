
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

<script type="text/javascript">document.title="Why did the SFC kill HSBC's Stockmax?";</script>

	<div class="summary">Two years after the SFC shut retail investors out HSBC's automated trading system, an SFC announcement gives some indication of what happened, but still leaves retail investors wondering why a pioneering service which offered potential price improvement and competition for HKEx's monopoly stock market was not allowed.</div>

<h2 class="center">Why did the SFC kill HSBC's Stockmax?<br>
<span class="headlinedate">20 December 2013</span></h2>
<p>Cast your mind back to August 2011, and you may recall that Hong Kong's 
<a href="../dbpub/officers.asp?p=503">Securities and Futures Commission</a> (<strong>SFC</strong>) <a href="stockmin.asp">amended</a> 
the license on HSBC's &quot;Stockmax&quot; Automated Trading System to limit it to 
professional investors only. This killed the prospect of HSBC's retail 
stockbroking customers gaining access to price improvement on their orders by 
matching them internally with institutional orders. This would have been a first 
for Hong Kong and would have introduced <a href="darkspread.asp">
real competition</a> to the monopoly Stock Exchange run by
<a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388), with its wide bid-offer
<a href="spreadout.asp" target="_blank">spread table</a>, 
particularly for stocks priced below HK$5.</p>
<p>So why did the SFC intervene? Yesterday's
<a href="../codocs/SFC131219.pdf" target="_blank">announcement</a> from the SFC 
provides only a partial answer, or perhaps just an excuse. It emerges that the 
SFC was peeved that HSBC had failed to tell it that its business plan had 
changed from an &quot;opt-in&quot; system to an &quot;opt-out&quot; system. Under the opt-in system, 
retail investors would have to sign a form in order to benefit from the Stockmax 
service, while in an opt-out system, they would have to sign a form if they 
insisted that their orders should go only to the Stock Exchange. An
<a href="../codocs/StockMax110808.pdf" target="_blank">archived FAQ</a> is here.</p>
<p>It was really a no-brainer to make this an opt-out scheme, because if an 
investor is offered a chance of instant price-improvement on their order (paying 
less than expected on a purchase, or receiving more than expected on a sale), 
then they will take it, so HSBC was right to make this an opt-out system. Very 
few people would opt out. It also has the administrative advantage of less 
paperwork. Any orders that could not be matched internally at a price at least 
as good as that quoted on HKEx would be sent to HKEx in the normal way.</p>
<p>You might think that this was a relatively minor detail in the overall 
licensing of an Automated Trading System, but when news media started reporting 
on Stockmax on 15-Jul-2011, the SFC realised that they were out of date, 
apparently hit the roof, and on 8-Aug-2011, the regulator modified the license 
to professionals-only. Yesterday, the SFC announced a reprimand and HK$5m fine 
on HSBC for failing to keep the SFC informed of the &quot;<a href="http://www.hklii.hk/eng/hk/legis/reg/571S/sch3.html" target="_blank">significant 
change</a>&quot; of plan.</p>
<p>This outcome doesn't make a lot of sense. The SFC could have dealt with the 
disciplinary matter separately, and could have imposed a license condition that 
the retail service be amended to opt-in, if that was their real concern, and 
then allowed HSBC to go ahead and launch Stockmax. Two years later, retail 
investors still don't have this option, and they regularly sit and watch as 
institutions get price improvement by dealing with each other in off-market 
pools (such trades are reported to HKEx and tagged with an &quot;X&quot;).</p>
<p>So the market will continue to wonder whether, after Stockmax received 
widespread publicity ahead of its launch, there were pressures on the regulator, 
and on HSBC itself, 
to prevent HSBC going into competition with HKEx for retail business as an 
automated trading system. A miscommunication in the details of a license 
application does not seem like a good reason to stop it dead-on-arrival. After 
all, the SFC was initially willing to license, and did license, what it thought 
was an opt-in retail system. HSBC of course has other important relations with 
the Government, and perhaps was told to back off.</p>
<p>Don't forget that the Government protects and controls HKEx. The Government 
directly and indirectly appoints 7 of its 13 directors, the Chief Executive of 
HK approves the Chairman, and nobody can own more than 5% without the SFC's 
approval &quot;after consulting the Financial Secretary&quot;. Every Chairman of HKEx has 
simultaneously been an Executive Councillor (a member of HK's cabinet). By law, 
nobody can run a physical &quot;stock market&quot; in HK other than The Stock Exchange of 
Hong Kong Ltd, the 100% subsidiary of HKEx. As a consequence, HKEx in 2011 
(before buying LME) had a pre-tax profit margin of 77% on its revenue, far above 
peers in more competitive markets, and that is why it was able to pay through 
the nose to buy the London Metal Exchange (stand by for nose bleed).</p>
<p>Meanwhile, HK retail investors get a monopoly market with wide spreads, high 
trading costs, and where brokers bicker about having their lunch hours shortened 
or their working day lengthened, stand in the way of spread reductions and 
propose a return to cartel minimum commissions. Those same small broking firms, 
who elected 18 members of the Chief Executive's Election Committee and 1 
Legislative Councillor, can't have been excited about HSBC offering a better 
service to customers either.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=382">HSBC HOLDINGS PLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50856">HSBC SECURITIES BROKERS (ASIA) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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