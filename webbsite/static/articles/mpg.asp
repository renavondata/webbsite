
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

<script type="text/javascript">document.title="Bubble warning: MPG (8147)";</script>

	<div class="summary">This stock closed at a record daily high of $12.40 on Wednesday, 91.8x its listing price for a US$1.67bn bubble, but even as a shell, in our view it is only worth about $0.25, for 98% downside.</div>

<h2 class="center">Bubble warning: MPG (8147)<br>
<span class="headlinedate">1 October 2015</span></h2>
<p class="revisedate"><a href="#update2">update</a> 10-Oct-2015</p>
<p>Time for a bubble warning on <a href="../dbpub/orgdata.asp?p=2144394">
Millennium Pacific Group Holdings Ltd</a> (<strong>MPG</strong>, 8147).&nbsp;MPG makes consumer electronic products such as &quot;GPS personal navigation 
devices&quot; (not so popular now that we nearly all have smartphones with GPS) and 
&quot;mobile internet devices&quot; including tablets and e-books. Turnover reached 
HK$348.3m in 2013, up 34.4%, and $169.3m in the
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0814/GLN20140814059.pdf" target="_blank">
first half of 2014</a>.</p>
<p>The stock listed on 18-Jul-2014, following a placing of 345m shares 
(33.0%) at HK$0.135 (adjusted for the 10:1 split on 8-Jan-2015), raising $46.6m 
gross and $30.3m net of expenses. The top 25 placees
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/0717/GLN20140717019.pdf" target="_blank">
took 91.5%</a> of the placing. The initial custody positions are
<a href="../ccass/choldings.asp?d=2013-09-16&amp;sort=holddn&amp;i=12566">
shown in Webb-site Who's Who here</a>. Apart from 560,000 options (adjusted) 
exercised in Aug-2014 at the IPO price, no further shares have been issued.</p>
<p>After the listing, in the second half of 2014, turnover collapsed, with the <a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0320/GLN20150320043.pdf" target="_blank">
full-year booking</a> HK$237.2m, down 31.9%, and the second half $67.9m, down 
63.0%. The collapse continued into 2015, with
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0814/GLN20150814211.pdf" target="_blank">
first half turnover</a>  of $40.7m, down 76.0% year-on-year. Even worse, only 
$10.7m of turnover was booked in the 2nd quarter of 2015, and of that, only 
$8.5m was manufactured products and the rest was trading electronic accessories. 
So MPG is basically now a loss-making shell. Net tangible assets (NTA) at 
30-Jun-2015 were HK$60.3m or $0.0577 per share.</p>
<p>But you wouldn't know that from looking at the market action. The lowest daily 
closing price was $0.535, the day after listing, still 4.0x the placing price, 
and the bubble grew from there. The stock closed 
on 30-Sep-2015 at a record daily high of $12.40, up 91.9x since the placing, valuing the company at 
HK$12.96bn (US$1.67bn), or 215x NTA. Even if you think that a GEM shell has a listing value 
of say HK$200m over NTA, MPG is still only worth about $0.25 per share, so there 
is about 98% downside from here. The graph is a classic staircase pattern that 
we often see in cornered stocks - watch out for it. </p>
<a href="../dbpub/str.asp?i=12566"><img class="center" alt="" src="../images/MPGbubble.png"></a>
<p>Immediately after listing (split-adjusted), <a href="../dbpub/orgdata.asp?p=2481444">CPIT Investments Ltd</a> (<strong>CPITI</strong>) 
held 459m shares (43.9%) of MPG. CPITI is 99% owned by MPG Chairman and CEO
<a href="../dbpub/natperson.asp?p=2289545">Samson Tang Wai Ting</a> and 1% by 
his wife, Dawn Chan Kai Hei, who is an Executive Director of MPG. 241m shares 
(23.10%) was owned by a pre-IPO investor,
<a href="../dbpub/natperson.asp?p=2481446">Michael Kor Sing Mung</a>, who paid 
HK$8.8m for the stake in 2 tranches 2012 and 2013, an average $0.0365 per share. 
We can see that on 26-Feb-2015, CPITI
<a href="../ccass/chldchg.asp?i=12566&amp;d=2015-02-26">moved its shares</a> 
from the custody of Upbest Securities Co Ltd to Emperor Securities Ltd. Mr Kor's 
shares are apparently not yet in CCASS.</p>
<p>There have been no changes in the ownership structure apart from one 
significant but so far unexplained movement: according to a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=277514" target="_blank">
disclosure of interest</a> on 17-Aug-2015, CPITI disposed of 200m shares 
(19.13%) off-market for non-cash consideration, cutting the couple's stake to 
24.77%.
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=73370" target="_blank">
Another filing</a> shows a person named &quot;<span id="lblDChiName">&#26954;&#27494;&quot;,</span> who 
gave no English name, as the buyer. As of 30-Sep-2015, these shares are still in 
the custody of Emperor Securities Ltd.</p>
<p>MPG should make an announcement explaining the apparent change in substantial 
shareholdings in the company. We also urge the SFC to investigate the ownership 
of the public float.</p>
<p>A further 5:1 stock split is due on 9-Oct-2015 which would reduce the current 
stock price to $2.48 and our valuation to about $0.05 per share.</p>
<h3 id="update1">Update, 5-Oct-2015</h3>
<p>Following our article, MPG has today made
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/1005/GLN20151005027.pdf" target="_blank">
this announcement</a> regarding the &quot;potential disposal&quot; of 19.13% of MPG in 
exchange for &quot;shareholding interests in a company incorporated in Hong Kong&quot; 
from a Mr Yang Wu.</p>
<h3 id="update2">Update, 10-Oct-2015</h3>
<p>Mr Yang Wu was described in the previous announcement as an &quot;independent 
third party of the Company&quot;. It turns out that this was a false statement. Last 
night, the company
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2015/1009/GLN20151009059.pdf" target="_blank">
announced</a> that he is a &quot;director, general manager and legal person of a 
subsidiary&quot; which was set up in May 2015. </p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2481444">CPIT Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2144394">Millennium Pacific Group Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2289546">Chan, Dawn Kai Hei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2481446">Kor, Michael Sing Mung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2289545">Tang, Samson Wai Ting</a></li>
				
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