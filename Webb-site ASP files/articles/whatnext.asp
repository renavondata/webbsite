
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

<script type="text/javascript">document.title="Cashing up at Next Media";</script>

	<div class="summary">If Next Media (0282) completes the sale of its Taiwan units, it will have a profitable HK business and net cash of about HK$4.4bn with no use for it. Rather than drag shareholders into a new business as City Telecom (1137) has done, we expect Next to do the right thing and distribute the proceeds in a special dividend. The potential payout is $1.79 per share, and majority shareholder Jimmy Lai will get 74% of that to use as he pleases.</div>

<h2 class="center">Cashing up at Next Media<br>
<span class="headlinedate">26 October 2012</span></h2>
<p>On 15-Oct-2012, <a href="../dbpub/articles.asp?p=1832">Next Media Ltd</a> (<strong>Next</strong>, 
0282)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/1017/LTN20121017189.pdf" target="_blank">
signed</a> two memoranda of understanding for the possible sales of its Taiwan 
print and TV businesses, including Taiwan Apple Daily and Taiwan Next Magazine, 
to <a href="../dbpub/positions.asp?p=10606">Jeffrey Koo Jr</a>. The print business goes for NT$16,500m (HK$4,243m) and the TV 
business for NT$1,500m (about HK$398m), for a total of NT$17,500m (HK$4,641m).</p>
<p>At 31-Mar-2012, Next had net borrowings of HK$288m, so the influx of cash 
would change this to a surplus of about $4.35bn, plus or minus any cash flow 
since the year end. There will also be some transaction costs, probably not 
material. We are assuming that the subsidiaries are sold with no net cash or 
debt inside them.</p>
<p>There are about 2,412m shares in issue.
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/1008/LTN20121008610.pdf" target="_blank">
At 30-Sep-2012</a> there were 48.684m share options outstanding, little changed 
from the year-end of 31-Mar-2012 when there were 45.864m with an average 
subscription price of $1.067. There were also &quot;invitations&quot; over 33.504m shares 
under the 2007 &quot;<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2007/1029/LTN20071029370.pdf" target="_blank">share 
subscription and financing plan</a>&quot;, which is in essence a share option scheme 
with a 3-year loan if the shares are subscribed. All except 1m of the 
subscription invitations lapses on 7-Nov-2012, and as the current market price 
is below the $2.12 subscription price, we can ignore those. The remaining 1m 
have a $2.49 subscription price and lapse on 24-Feb-2013.</p>
<p>So if all options are exercised, they will bring in about $52m, increasing 
net cash to about $4.40bn, and increasing outstanding shares to 2,461m. That's
<strong>net cash of $1.79 per share</strong>.</p>
<p>Next has no need for that cash. The remaining business is the profitable HK 
media business, including the original Apple Daily and Next Magazine, and it 
also has substantial fixed assets in HK, including its print works in Tseung 
Kwan O, against which a reasonable level of debt can be maintained.</p>
<p>In 2011, <a href="../dbpub/positions.asp?p=37182">Jimmy Lai Chee Ying</a>, 
Chairman and 74.05% shareholder of Next,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/0714/LTN20110714256.pdf" target="_blank">
injected</a> US$100m (HK$776m) in return for 70% of the animation business, 
which had net liabilities and was loss-making. He is also known to have lost 
about HK$1bn on the failed AdMart online supermarket business 12 years ago, and 
to have been a generous financial supporter of the pan-democrat parties in HK. 
All of these factors suggest that he has decided to refocus on the core HK 
business, and like all his fellow shareholders, he would be keen to recover his 
share of the proceeds from the Taiwan sale.</p>
<p>If the Taiwan sale completes, then at yesterday's close of $1.56, Next is 
trading at a discount to its estimated net cash. We expect all or most of that 
cash to be distributed as a special dividend, so investors are in essence 
getting the HK business for free. There are of course downside risks:</p>
<ul>
	<li>the deal might not complete; we regard that as unlikely, perhaps a 
	20% chance of not completing. The deal seems reasonably priced, and Mr Koo 
	is getting a trophy asset - the most widely-read newspaper in Taiwan. Even 
	if he were to back out, a valuation has been established and others would 
	likely be interested;</li>
	<li>Mr Lai might decide to trap the cash inside Next and blow it all 
	on a new loss-making project - such as getting involved in the highly 
	competitive battle for broadcast TV in HK at a time when most of us are 
	spending much less time watching it and more time on the internet and 
	video-on-demand.&nbsp; However, we think Mr Lai has probably learned a 
	lesson from the Taiwan TV market and will stay away from HK TV, unlike 
	fellow entrepreneur Ricky Wong Wai Kay at
	<a href="../dbpub/articles.asp?p=4809">City Telecom (H.K.) Ltd</a> (1137). 
	Mr Lai is also more sensitive to public opinion - he doesn't want a bad 
	reputation for failing to return capital to shareholders rather than drag 
	them along into a new business. That is one reason why Mr Lai injected cash 
	through the animation acquisition, rather than force a fund-raising on 
	shareholders to finance the Taiwan TV losses.</li>
</ul>
<p>If Mr Lai has any interest in pursuing new businesses, then he should do that 
with his own money from the dividend. His 74% share of a $4.4bn dividend would 
leave him with $3.25bn to play with. The MoUs call for definitive contracts on 
17-Nov-2012 and a completion by 17-Dec-2012. It should be a merry Christmas for 
Mr Lai and his fellow shareholders.</p>
<p>Disclosure: Webb-site editor David Webb is a shareholder of Next.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4809">Hong Kong Technology Venture Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1832">NEXT DIGITAL LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10606">Koo, Jeffrey John Leon Jr</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=37182">Lai, Jimmy Chee Ying</a></li>
				
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