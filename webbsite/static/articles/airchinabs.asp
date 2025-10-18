
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

<script type="text/javascript">document.title="Air China's balance sheet worries";</script>

	<div class="summary">We look at the highly-geared balance sheet of Air China, the bizarre and unfinished mini-subscription by its parent launched 6 months ago, and the likely need for a much larger equity financing if it is going to run on free-market principles, which in turn has implications for Cathay Pacific's 20% stake.</div>

<h2 class="center">Air China's balance sheet worries<br>
<span class="headlinedate">24 October 2012</span></h2>
<p>What is <a href="../dbpub/articles.asp?p=23809">Air China Ltd</a> (<strong>Air 
China</strong>, 0753.HK, 601111.SH), the flag carrier, trying to do with its 
highly-geared balance sheet? On 27-Apr-2012, the airline
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0427/LTN20120427062.pdf" target="_blank">
announced</a> a proposed subscription by its state-owned parent, China National 
Aviation Holding Co (<strong>CNAHC</strong>), of 188,642,729 new A-shares at 
CNY5.57 each, raising about CNY1,051m. The proposed new shares were equivalent 
to just 1.46% of its existing issued shares, and would increase CNAHC's holding 
from 52.06% to 52.75%, while diluting <a href="../dbpub/articles.asp?p=385">
Cathay Pacific Airways Ltd</a> (<strong>Cathay</strong>, 0293) from 19.53% to 
19.25%. Incidentally, Cathay is 29.99% owned by Air China and 45.00% by
<a href="../dbpub/articles.asp?p=384">Swire Pacific Ltd</a> (19/87).</p>
<p>A
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0507/LTN20120507686.pdf" target="_blank">
circular</a> went out on 8-May-2012 and other shareholders (including Cathay)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0626/LTN20120626534.pdf" target="_blank">
approved the deal</a> on 26-Jun-2012.</p>
<p>The tiny subscription was priced at a generous 10% discount to the 20-day 
average price before 27-Apr-2012. On 24-Jul-2012, with the subscription still 
not completed, the price was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0724/LTN20120724421.pdf" target="_blank">
adjusted down</a> to CNY5.45 for the 2011 final dividend of CNY0.118 (before 
tax), and the number of new shares was increased to 192,796,331 to raise the 
same proceeds.</p>
<p>To put the CNY1.05bn being raised in perspective, at 31-Dec-2011, Air China 
had net debt of CNY73.96bn, or 160% of shareholders' 
equity (CNY46.12bn). The amount to be raised was so small that it was less than 
the CNY1.52bn paid out in the 2011 final dividend on 23-Jul-2012. Air 
China could simply have paid a smaller dividend and saved the trouble of the 
share subscription. CNAHC could have then topped up its shareholding by buying 
shares in the market (without the benefit of the discount).</p>
<p>So the subscription made almost no difference to the balance sheet, for all 
the paperwork involved. Air China did not explain why that particular amount of 
money, and a particularly precise number of shares, was to be issued, and not a 
larger amount by way of a rights issue to all shareholders. Although the 
subscription involved a single shareholder, it was described as a &quot;non-public 
offering&quot; by Air China. An offering open to nobody except CNAHC.</p>
<p>On 9-Oct-2012, trading in Air China was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/1009/LTN20121009039.PDF" target="_blank">
suspended</a> pending another &quot;potential non-public offering of shares of the 
Company&quot;. To whom these shares would be offered it did not say. Obviously Cathay 
would have some concern if it was to be diluted. Silence ensued until this 
Monday 22-Oct-2012, when Air China
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/1022/LTN20121022488.pdf" target="_blank">
announced</a> that it has &quot;actively engaged in consultations and discussions 
with the relevant parties&quot;, whomever they might be, and had decided not to 
proceed, at least for another 3 months.</p>
<p>Air China also disclosed that the subscription by CNAHC has still not 
completed, almost 4 months after shareholders approved it. No reason was given 
for the delay. Since the deal was first announced, the A-shares have fallen 
19.4% from CNY6.12 (ex-dividend) to CNY4.93 yesterday. What was a 10% discount 
subscription has now become a 10.5% premium. We wonder whether this has anything 
to do with the delay. Is CNAHC trying to have it both ways, benefitting from a 
discount but walking away when it becomes a premium?</p>
<p>The deal was conditional on approval from the China Securities Regulatory 
Commission (CSRC), the State Asset Supervision and Administration Commission 
(SASAC), and the Civil Aviation Administration of China (CAAC). <strong>Six 
months after it was announced, we call on Air China to explain which conditions, 
if any, remain unsatisfied, and why. </strong>In the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0913/LTN20120913667.pdf" target="_blank">
interim report</a> filed on 13-Sep-2012, Air China said that the deal was still 
subject to CSRC approval, without saying why. Treat it as just another 
indication that China's market reforms have stalled - such an approval should be 
a formality.</p>
<p>Cathay shareholders should also be worried by all this. Ultimately if Air China 
needs fresh equity then it is going to be in much larger size than the April 
subscription, and if Cathay is going to maintain its shareholding, then it will 
need to pony up a substantial chunk of cash, some of which will go around in a 
circle if it raises the money from a rights issue itself, since Air China owns 
nearly 30% of Cathay. By 30-Jun-2012, Air China's net debt had risen to 
CNY82.36bn, or 181% of equity and almost 12 times last year's net profit. It 
also has commitments to purchase another CNY83.8bn of aircraft. Cutting net debt 
in half, and reducing the gearing to about 50% (similar to Cathay's 55%), would 
mean an Air China rights issue of CNY41bn (HK$51bn) and Cathay would need to 
come up with about HK$10bn to maintain its stake, compared with its current 
market capitalisation of HK$54bn.</p>
<p>Of course, being a state-controlled airline, in an economy with 
stake-controlled banks, state-owned asset managers and a state-run social 
security fund, the Chinese Government could continue to support Air 
China with state-directed loans and bond investments without diluting shareholders with an equity 
call, but that is not the way free markets are supposed to function.</p>
<p>Incidentally, the <em>SCMP</em> was
<a href="http://www.scmp.com/business/companies/article/1068303/air-china-scraps-1b-yuan-share-sale" target="_blank">
so bewildered by Monday's announcement</a> that it thought Air China had also 
scrapped the April subscription, which it hasn't, at least not yet.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=23809">Air China Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=385">CATHAY PACIFIC AIRWAYS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=384">SWIRE PACIFIC LIMITED</a></li>
				
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