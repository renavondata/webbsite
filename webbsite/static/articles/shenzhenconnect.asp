
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

<script type="text/javascript">document.title="The Shenzhen Connection";</script>

	<div class="summary">When is a controlling shareholder not a related party? When it is the Shenzhen Government. At midnight two nights ago, the government took over the toll roads operated by their HK-listed issuer Shenzhen Expressway without prior announcement or minority shareholders' approval. We look at the double standards employed by HKEx in their special treatment of PRC government-controlled companies.</div>

<h2 class="center">The Shenzhen Connection<br>
<span class="headlinedate">20 March 2003</span></h2>
<p>H-Share issuer Shenzhen Expressway Company Limited (<b>SEC,</b> 0548) today <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030320/LTN20030320007.pdf" target="_blank">announced</a>
that it has sold its franchise on two toll roads back to its ultimate
controlling shareholder, the Shenzhen Municipal Government (<b>SMG</b>) for
RMB1,930m, mostly payable later. In fact, SMG took over the toll operations on
Tuesday night, 18-Mar-03. Nice of them to tell us. </p>

<p>We are not going to dig deeply into the merits or demerits of the deal, but
the key travesty here is that the deal has been classified by the Stock Exchange
of Hong Kong (<b>SEHK</b>, a subsidiary of <a href="../dbpub/articles.asp?p=9643" target="_blank">HKEx</a>)
as only a &quot;Discloseable Transaction&quot; (due to its size) but not as a
&quot;Connected Transaction&quot;. As such, the deal is not subject to minority
shareholders' approval or veto. Put simply, SEHK does not think that the SMG is
related or &quot;connected&quot; to SEC, a fact which should be obvious to any
reader. </p>

<p>SEC is 30.03% controlled by Shenzhen International Holdings Limited (0152)
which in turn is 44.26% controlled by the SMG. That means that SEC is dealing
with its ultimate controlling shareholder. &quot;Control&quot; is defined in the
Listing Rules and Takeover Code to be a shareholding of 30% or more. </p>

<p>In addition, SMG has a 20.99% holding in SEC, so SMG is a &quot;substantial
shareholder&quot; (one who owns more than 10%) of SEC in its own right. This
takes its total voting interest to 51.02%. In a hair-splitting exercise, the
announcement contains a chart which purports to show that the 20.99% stake is
under 3 layers of &quot;supervision&quot; - a holding company under the Roads
Bureau, under the Communications Bureau, under the SMG. This makes no difference
- the stake is clearly a government asset.&nbsp; </p>

<p>We first objected to the SEHK's treatment of relations between listed
companies and their governmental shareholders in 1998 when we complained that
the Beijing government had siphoned IPO cash out of Beijing Enterprises Holdings
Ltd (<b>BEH</b>) for use in the government's water company, again without
minority shareholders' approval. After that, on 26-Apr-99 the SEHK changed its
rules and inserted the following giant loophole in Rule 19A.21: </p>

<blockquote>
  <p>&quot;the Exchange will normally not treat a PRC Governmental Body... as a
  connected person of a PRC issuer&quot; </p>

</blockquote>
<p>Investors take note, because this strips you of all protections you might
expect when a government starts to interfere with the operations of a listed
company which it in reality controls. This disgraceful episode is documented in
our article the <a href="beijingsiphon.asp" target="_blank">The Beijing Siphon</a>
and is another example of how the SEHK has put the wishes of controlling
shareholders above those of investors, and why it must be stripped of its
regulatory role. It was true 5 years ago, and it is true today. </p>

<p>Because of an obscure clause in the Articles of SEC, the sale of more than
33% of its fixed assets does require shareholders' approval in general meeting,
but the SMG has control over 51.02% of the votes so the outcome is not in doubt. </p>

<p>You may or may not think that SEC is getting a good deal, but if you are a
minority shareholder, you will have no say in the matter. For the record,
though, the terms look uncommercial to <i>Webb-site.com</i>, because: </p>

<ol>
  <li>
    The price of RMB1,930m is payable in instalments
    over almost 3 years. Only 25% is payable within 10 days of signing, 25% by
    31-Dec-03, 30% by 31-Dec-04 and 20% by 31-Dec-05.</li>
  <li>
    The transfer of title to the roads will take
    place 10 days after signing, even before the shareholders' meeting (even
    though we know that SMG will approve it). SEC is not granted any security
    over the roads to ensure payment of the remaining 75%. SEC says that SMG has
    <i>&quot;certain credit standing&quot;</i> - but if that is the case, then
    why doesn't SMG pay the whole amount up front and borrow from the banks?</li>
  <li>
    The SMG took over operation of the toll roads
    (including employees) at midnight on 18-Mar-03, the date the deal was
    signed, before any payment had changed hands, before the title had been
    transferred, and before the deal had even been announced. Done deal.</li>
</ol>

<p>Imagine the outcry if the Hong Kong Government (or one of its bureaux)
announced that it had taken back the MTR rail operations last Tuesday at a price
of its choosing and without minority shareholders' approval. Clearly this would
break the Listing Rules, and someone might even be held accountable. So why does
HKEx think that the Shenzhen Government should be treated any differently? </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4964">Shenzhen Expressway Corporation Limited</a></li>
				
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