
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

<script type="text/javascript">document.title="Bubble warning: CFII (1227)";</script>

	<div class="summary">Webb-site.com warns investors to avoid China Financial Industry Investment Fund Ltd (1227), a closed-end investment company trading at over 28 times its net asset value. We also find a surprising addition to the ranks of its independent directors.</div>

<h2 class="center">Bubble warning: CFII (1227)<br>
<span class="headlinedate">13 July 2007</span></h2>
<p>China Financial Industry Investment Fund Ltd (<b>CFII</b>, 1227) is a 
closed-end investment company listed in 2002 without a track record under
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_21.pdf">
Chapter 21</a> of the Listing Rules. All such companies are exempt from the rule 
requiring a minimum amount of shares in public hands, or &quot;free float&quot;, leaving 
their stocks more prone than others to manipulation. As investment companies, 
they are not allowed to invest more than 20% of their net assets in any one 
company (or related group of companies) and cannot own more than 30% of any 
other company or take management control of other companies.</p>
<p>We <a target="_blank" href="../articles/toxicIPOs.asp#FAF">
wrote</a> about the earlier history of CFII in Mar-05.</p>
<p>As of 31-Dec-06, CFII was technically bust, with negative equity of HK$1.9m. 
On 10-May-07, it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070511/LTN20070511007.pdf">
announced</a> a placing of 12m new shares at $0.43 through
<a target="_blank" href="http://www.shkco.com">Sun Hung Kai International Ltd</a> 
(<b>SHKI</b>), raising $4.9m net of expenses.</p>
<p>On 16-May-07, two Independent Non-executive Directors
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070517/LTN20070517000.pdf">
resigned</a>, both citing the need to spend more time on other things. The next 
day, Danny F. Wong (<b>Danny Wong</b>), through his BVI company Canossa Capital 
Ltd,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=46885&lang=EN&dia=Y">
acquired</a> 12.372m shares, then 20.62% of CFII, at a reported $2.269 per share 
from Nelson Wong Kam Fu (<b>Nelson Wong</b>, no relation we know of) in an 
off-market transaction, for a total of $28m. Nelson Wong
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040629/LTN20040629129.pdf">
acquired</a> the stake on 29-Jun-04 at $0.605 per share.</p>
<p>Danny Wong was once a director of SHKI, at least until 2004. </p>
<p>On 21-May-07 at the CFII AGM, Danny Wong apparently voted his newly-acquired 
stake against the re-election of the only remaining INED, Kelvin Tang King Fai, 
who
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070522/LTN20070522043.pdf">
survived</a> by a vote of 58:42, but resigned the next day, again finding 
himself too busy with other things. Two new INEDs were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070523/LTN20070523028.pdf">
appointed</a>, leaving one seat left to fill to reach the mandatory three. One 
of the new INEDs, Mr Fung Kwok Leung, was an executive director of
<a target="_blank" href="../dbpub/articles.asp?p=14229">Forefront Group Ltd</a> (0885) until 
18-May-07. At the same time, Ms Yang Xiao Feng, Danny Wong's wife, was an INED 
of Forefront. That company deserves a <i>Webb-site.com</i> article of its own, 
but trust us, you don't want to own that stock either.</p>
<p>Danny Wong and his wife joined the board of CFII after the AGM on 21-May-07. 
On 29-May-07 he acquired another 8.806m shares off-market from Yim Sang (<b>Mr 
Yim</b>) at $0.38, or $3.35m in total. That took his stake to 29.41%, just below 
the takeover threshold. Mr Yim had
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050323/LTN20050323155.pdf">
subscribed</a> for 10m shares on 21-Mar-05 at $0.188 per share. From 1990 to 
1997 Mr Yim was an executive director of Star Telecom International Holding Ltd 
(now COL Capital Ltd, 0303), which Nelson Wong founded. It was floated by SHKI 
in 1991. The past association of the two men prompted an enquiry as to whether 
they were acting in concert to control CFII, which the company
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050805/LTN20050805109.pdf">
denied</a>. </p>
<h3>What's it worth?</h3>
<p>On 1-Jun-07, CFII
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070604/LTN20070604059.pdf">
announced</a> another placing of 12m shares at $0.60 per share, again through 
SHKI, raising $7m net. As of 30-Jun-07, the unaudited
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070713/LTN20070713168.pdf">
net asset value</a> was $0.115 per share and there were 84m shares in issue, so 
that implies NAV of about $9.6m.</p>
<p>On 21-Jun-07, CFII
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070622/LTN20070622018.pdf">
announced</a> a massive rights issue of 1,008m shares on the basis of 12 new 
shares for each existing share at $0.05 per share, to raise $48.4m net, advised 
and partly underwritten by SHKI. That would take the net asset value to $58m. 
Based on the enlarged capital of 1,092m shares, that's about <b>$0.053</b> per 
share.</p>
<p>This stock has been trading at artificial prices far above its net asset 
value for a long time, but today it went to new levels. The stock went ex-rights 
today, which means if you buy now, then you won't be offered the new shares. It 
closed at <b>$1.50</b> per share, which is more than <b>28 times the net asset 
value</b> of $0.053. In developed markets, closed-end investment companies 
usually trade at a discount to net asset value.</p>
<p>The current share price values CFII, after the rights issue, at $1,638m, when 
its assets are worth only $58m, so 96% of it is hot air, unless you believe that 
the new management can somehow conjure up a 2700% net return from future 
investment decisions.</p>
<h3>The new INED</h3>
<p>Now, remember we mentioned that there was one INED seat left to fill? On 
29-Jun-07 Legislator for Accounting
<a target="_blank" href="http://www.mandytam.com">Mandy Tam Heung Man</a> was 
appointed as an INED. The biography in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070702/LTN20070702046.pdf">
announcement</a> began <i>&quot;Ms. Tam, aged 50, is a Christian.&quot;</i> How is this 
relevant, we wonder? She had better put in a prayer for shareholders of CFII.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17131">National Investments Fund Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=38694">Fung, Kwok Leung (1966)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=25352">Tam, Mandy Heung Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12976">Tang, Kelvin King Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=39699">Wong, Danny F (1962)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2912">Wong, Nelson Kam Fu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=39124">Yang, Xiao Feng</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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