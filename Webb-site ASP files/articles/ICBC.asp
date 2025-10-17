
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

<script type="text/javascript">document.title="ICBC rights issue - just practising?";</script>

	<div class="summary">We look at the hidden cost of ICBC's mini-rights issue, which raised less than they paid out in last year's dividend. Non-government shareholders could have avoided billions in tax if the bank had just kept the profit instead - unless it plans to cut this year's dividend as well. More likely, the rights issue was just a practise run for something larger next time.</div>

<h2 class="center">ICBC rights issue - just practising?<br>
<span class="headlinedate">14 January 2011</span></h2>
<p>State-controlled <a href="../dbpub/orgdata.asp?p=1689">Industrial and 
Commercial Bank of China Ltd</a> (<strong>ICBC</strong>, 1398), spent most of 
last year planning and executing a rights issue - but what was the point of it 
all? After some gestation, the issue was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100728/LTN20100728821.pdf" target="_blank">
announced</a> on 28-Jul-2010, a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100729/LTN201007291013.pdf" target="_blank">
circular</a> proposing it went out on 29-Jul-2010 and a shareholders meeting
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100921/LTN20100921638.pdf" target="_blank">
approved</a> it on 21-Sep-2010. Then there was a 6-week tea break until the 
CSRC's &quot;Public Offering Review Committee&quot;
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101105/LTN20101105839.pdf" target="_blank">
approved it</a> on 5-Nov-2010 - unlike HK, you need regulatory approval to do a 
rights issue - the CSRC, on behalf of the State, manages the rate of equity 
issuance by Chinese companies.</p>
<p>Finally, on 10-Nov-2010, the rights issue got underway, when the terms were
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101111/LTN20101111005.pdf" target="_blank">
announced</a>: an issue of 0.45 shares for every 10 shares held, priced at 
CNY2.99 for the A-shares listed in Shanghai, and HK$3.49 (equivalent to CNY2.99) 
for the H-shares listed in HK. The issue price amounted to a discount of 47.4% 
to the closing H-share price and 36.8% discount to the A-share price. The 
purpose of the issue was &quot;to strengthen the capital base of the Bank&quot;.</p>
<p>Now the first thing that might strike you as odd is the issue ratio, but this 
is just an oddity of mainland Chinese rights issues:&nbsp; they seem to be often 
expressed with a denominator of 10 shares, rather than per share or in terms of 
whole numbers of shares (in this case, 0.045 for 1, or 9 for 200).</p>
<p>But the biggest oddity was that they were going to all this effort for such a 
tiny rights issue - just a 4.5% increase in the number of shares. There was 
nothing wrong with the discount - that was available to everyone, and virtually 
eliminated the risk of failure, but as a result, the issue raised only <strong>
CNY0.134</strong> (HK$0.157) for each existing share held, or about 2.4% of the 
market capitalisation. That is less than the 2009 dividend paid out on 
25-Jun-2010, of <strong>CNY0.17</strong> per share. They distributed CNY56,783m 
as dividend (before tax), and only raised CNY44,948m from the rights issue.</p>
<p>So instead of going through the rights issue process, they could instead of 
just announced that, to improve the capital ratios, they would reduce the 
dividend by the same amount, from CNY0.17 to CNY0.036 per share - or just not 
pay a dividend at all. According to the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101128/LTN20101128017.pdf" target="_blank">
circular</a> (p196) of 29-Nov-2010, the expenses of the rights issue were 
HK$280m (CNY240m). Dividends from PRC companies (for foreign holders other than 
humans) are subject to a withholding tax of 10%, while PRC residents pay 20% 
income tax on dividends. Even applying a 10% overall rate, paying out the money 
as a dividend and then taking it back in a rights issue cost shareholders 
another CNY4,495m. <strong>That takes the total cost of this move to CNY4,735m</strong> 
(HK$5,524m). </p>
<p>That's great if you are the largest shareholder, the PRC Government, 
because you are also the tax-collector, but it is bad news for everyone else - 
particularly those who are subject to taxes on dividends received. Shareholders 
would have been better served if the company had cut its dividend and retained 
its earnings to improve its capital ratios. Far simpler, far cheaper.</p>
<p>So why bother with a rights issue when you could have reduced or cancelled 
the 2009 or 2010 dividend? Perhaps they will do both: the rights issue
<u>and</u> not pay a dividend for 2010, further boosting 
the capital ratio. Otherwise, the rights issue looks like a huge waste of time 
and money. They giveth with one hand and taketh away with the other, plus tax.</p>
<p>There is one benefit, though - ICBC now knows how to execute a rights issue. 
This could be seen as a practice run for more substantial rights issues in the 
years to come, which they will probably need after the policy-driven lending 
binge of 2009, as the bad debts start piling up again.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1689">Industrial and Commercial Bank of China Limited</a></li>
				
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