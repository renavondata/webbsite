
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

<script type="text/javascript">document.title="Guo Xin Toxin";</script>

	<div class="summary">In a follow-up to our story on the Interchina bubble, we tell you about Guo Xin Holdings, which is controlled by the same man after he bailed it out of difficulties. Guo Xin is trading in a bubble of 7x net assets, and Mr Zhang has already dumped stock and got his money back and $129m cash on top, while holding shares and warrants currently priced at $491m. You have been warned.</div>

<h2 class="center">Guo Xin Toxin<br>
<span class="headlinedate">29 May 2002</span></h2>
<p class="revisedate">update 29-May-02</p>
<p>Last Thursday we told you again about the <a href="interchinaboiler.asp" target="_blank"> Interchina
bubble</a>,
which had been freshly inflated following MSCI's announcement that the stock would
join its small-cap index. On Friday, that stock fell 15%. </p>

<p>Mr Zhang Yang (<b>Mr Zhang</b>), the Chairman and controlling
shareholder of Interchina Holdings Ltd (<b>Interchina</b>, 202), is also the
Chairman and controlling shareholder of Guo Xin
Holdings Ltd (<b>Guo Xin</b>, 1215), until recently known as Wah Lee Resources
Holdings Ltd. </p>

<p>The sordid history of this company is beyond the scope of this
article, suffice to say that it was first listed on 17-Jan-97 and was then an
authorised distributor of various air-conditioners, audio-visual products and
photographic products to the PRC market. It went into provisional liquidation on 20-Apr-00, was rescued, then went bust again, and was rescued by Mr Zhang
with a restructuring which completed on 10-Dec-01. </p>

<p>In that restructuring, Mr Zhang injected&nbsp; HK$55m for 5,500m
shares at $0.01 each. He also received 16,500m warrants to subscribe new shares
at the same price. As a result, the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020408/LTN20020408074.htm" target="_blank">interim
report</a> shows that Guo Xin had unaudited <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020408/1215e/f104.pdf" target="_blank">net
tangible assets</a> of just HK$1.627m at 31-Dec-01.&nbsp; </p>

<p>On 13-Dec-01, Mr Zhang sold 2,000m shares at $0.052, raising
$104m. The <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011214/LTN20011214024.doc" target="_blank">placing</a>
was done through Interchina Securities Ltd, which is controlled by Interchina, and through Shenyin Wanguo Capital (Hong Kong) Ltd. </p>

<p>On 7-Feb-02, Mr Zhang <a href="http://www.hkex.com.hk/listedco/sdi/20020211a.htm" target="_blank">exercised</a>
11,500m warrants, injecting $115m. This increased pro forma net assets to
$116.6m. There were then 21,862m shares in issue, so net tangible assets per
share were $0.0053 per share. </p>

<p>On 11-Mar-02 he <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020311/LTN20020311078.doc" target="_blank">sold</a>
799m shares in the market between $0.052-0.054 each, so we'll call that $0.053 and proceeds of
$42.3m. Between 12-15-Mar-02, he <a href="http://www.hkex.com.hk/listedco/sdi/20020319a.htm" target="_blank">sold</a>
a further 706.06m shares between $0.045-0.053 each, so we'll call that $0.049
and proceeds of $34.6m.&nbsp; </p>

<p>On 18-Apr-02 he <a href="http://www.hkex.com.hk/listedco/sdi/20020424a.htm" target="_blank">sold</a>
374.58m shares at between $0.033-0.037, so we'll call that $0.035 and proceeds
of $13.1m. </p>

<p>The next day, Mr Zhang sold 3,500m shares at $0.03 to raise
$105m. The <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020422/LTN20020422052.doc" target="_blank">placing</a>
was done through Interchina Securities and Kingston Securities Ltd. </p>

<h3>Net result</h3>

<p>In summary, Mr Zhang has injected <b>$170m</b> for 17,000m
shares, and sold a total of 7,379.64m shares for <b>$299m</b>, or an average of
$0.03405 per share, or <b>7.6x</b> net asset value. So before any expenses, he
has received <b>net cash of $129m</b>. </p>

<p>Mr Zhang now owns 9,620.36m shares and 5,000m warrants,
exercisable at $0.01 each. The shares closed on Friday 17-May-02 at <b>$0.037</b>
each, so the shares are valued at $356m and the warrants have an intrinsic value
(the difference between market price and exercise price) of $135m, for a total
of <b>$491m</b>. </p>

<p>Of course, none of this changes the reality, that Guo Xin has
net assets of just <b>$0.0053</b> per issued share, and the shares trade
at&nbsp; <b>7.0x</b> net asset value. The market capitalisation is HK$809m, but
net assets are only about $117m. </p>

<p>Of course, it may be a pure coincidence that both Interchina and
Guo Xin are trading at bubble prices and that both companies are controlled by
Mr Zhang. </p>
<p>Beware the Guo Xin Toxin.</p>
<hr>
<h3>Update 29-May-02</h3>
<p>Since we published the above article, it has been <a href="http://www.hkex.com.hk/listedco/sdi/20020522a.htm" target="_blank">disclosed</a>
on 22-May-02 that Mr Zhang has exercised the remaining 5,000m warrants at $0.01
each on 14-May-02, at a total cost of $50m. The same day, he sold 120.36m shares
at&nbsp; $0.038-0.039 each, and two days later he sold 5,000m shares at between
$0.039-0.046 each. We estimate from the mid-prices that the total sale proceeds
were $217m, so the net cash extracted (excluding expenses) was <b>$167m</b>.
That takes Mr Zhang's net cash received to <b>$295m</b>. His resulting
shareholding is 9,500m shares, and there are 26,862m shares in issue, so he has
a stake of 35.4%.</p>

<p>The pro forma net tangible assets are now about $167m, so NTA
per share is about $0.0062.</p>

<p>On 16-May-02, the same day as the latest sale of 5,000m shares
(or about 18.6% of the company) Guo Xin put out a standard <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020516/LTN20020516078.HTM" target="_blank">statement</a>
that:</p>

<blockquote>
<p>&quot;We have noted the recent increases in the trading volume
of the Company and wish to state that we are not aware of any reasons for such
increases.&quot;</p>
</blockquote>
<p>Surely the company is aware of what its Chairman is doing?</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5007">Kai Yuan Holdings Limited</a></li>
				
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