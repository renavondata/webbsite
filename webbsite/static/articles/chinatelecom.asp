
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

<script type="text/javascript">document.title="China Telecom - Just Let it Ring";</script>

	<div class="summary">Where in the world are long-distance call costs rising 750%? Only between HK and mainland China, and wouldn't you know it, just 2 days before the offer for China Telecom Corp Ltd closes, close on the heels of unauthorised remarks about profit forecasts and asset injections not covered in the prospectus. This smacks of desperation and is unlikely to stick.</div>

<h2 class="center">China Telecom - Just Let it Ring<br>
<span class="headlinedate">29 October 2002</span></h2>
<p>So China Telecom is being floated - again. What do we mean, again? Well, the
first spin-off from the former state telecommunications monopoly was called
&quot;China Telecom (Hong Kong) Limited&quot; when it was floated on 23-Oct-97,
in the waning days of a red-chip bubble. Despite its name, it did not have any
licenses in Hong Kong - it was a bundle of two provincial mobile licenses
(Guangdong and Zhejiang), a morsel to whet the appetite of investors, who for
some reason were gullible enough to believe that the Chinese government would
henceforth structure its telecoms industry to provide monopolistic tariffs for
the benefit of international investors, rather than competitively priced phones
for the people's republic. </p>

<p>In the prospectus of 13-Oct-97, the company now known as <a href="http://www.chinamobilehk.com/" target="_blank">China
Mobile (Hong Kong) Ltd</a> (<b>CMHK,</b> 0941) which still has no licence in HK,
proudly claimed: </p>

<blockquote>

<p>&quot;[CMHK] is the primary commercial vehicle for the MPT System to access
the international capital markets&quot;. </p>

</blockquote>

<p>The MPT System meant the Ministry of Posts and Telecommunications of the PRC
(<b>MPT</b>), the Directorate General of Telecommunications (a State-owned
enterprise under the control of the MPT) and the provincial and municipal level
posts and telecommunications administrations under the ultimate control of the
MPT. </p>

<p>That was then, and this is now. Five years on, CMHK has nearly completed the
gradual, phased acquisition of mobile licenses from its parent, and has a strong
mobile competitor, <a href="http://www.chinaunicom.com.hk/" target="_blank">China
Unicom Ltd</a> (<b>CUHK</b>, 0762, floated on 22-Jun-00) which is following the
same model of phased acquisitions. It is 77.47% owned by China Unicom (BVI) Ltd
(<b>CUBVI</b>), which is 51% owned by China United Telecommunications Corp Ltd (<b>CUSH</b>),
which has recently issued A-shares on the Shanghai Stock Exchange, trying to
exploit what remains of the mainland equity bubble relative to the price of the
underlying HK-listed shares. In effect, CUSH is nothing more than a holding
vehicle for CUHK. </p>

<p>CUSH itself is&nbsp; 99.98% owned by <a href="http://www.chinaunicom.com.cn/" target="_blank">China
United Telecommunications Corp</a> (<b>CUCN</b>, which brands itself as China
Unicom). CUCN owns the other 49% of CUBVI. You will notice that CUCN and CUSH
have very similar names, and this is perhaps an intentional fudge - the media
inevitably and frequently mixes them all up when writing about what &quot;China
Unicom&quot; is doing, and it makes it that much harder for investors to know
whether they are talking about the Shanghai-listed company, the top parent
company or the HK subsidiary. </p>

<p>Meanwhile, in fixed lines, what was a national network known as <a href="http://www.chinatelecom.com.cn/" target="_blank">China
Telecommunications Corp</a> (<b>China Telecom</b>) was split up, with 10
northern provinces merging with China Netcom Corp and Jitong Communications Co
Ltd to form <a href="http://www.cnc.net.cn/" target="_blank">China Netcom
Communications Group Corp</a> (<b>China Netcom</b>). </p>

<p>That left China Telecom with 21 provinces. So you are being offered shares in
China Telecom? Well no, not quite, because again, China Telecom has created a
new PRC subsidiary called China Telecom Corp Ltd (<b>CTHK, </b>0728), which has
been given just 4 licenses in the city of Shanghai and the provinces of
Guangdong, Jiangsu and Zhejiang. And that is what you are being offered. </p>

<p>All of the fixed line restructuring took place during the summer and the
details of how the different networks will interact with each other are still
being worked out, but China never lets things like that stop an IPO. </p>

<p>Meanwhile on the mobile front, the ministers have blown hot and cold over
whether and when they would grant mobile licenses to the fixed line providers,
increasing the competition for China Mobile and China Unicom. On the one hand,
it makes the China Telecom story &quot;sexier&quot; with a potential new source
of revenue, and on the other hand, it dents the value of the existing listed
providers. </p>

<h3>Fast and loose</h3>

<p>Despite the difficult equity markets, China has its heart set on getting the
CTHK IPO away before the year end and has pulled out all the stops to do it, as
have its bankers. The sponsors are China International Capital Corp (a JV
between Morgan Stanley and government-owned China Construction Bank), Merrill
Lynch and Morgan Stanley itself. You can read the prospectus <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021025/LTN20021025016.htm" target="_blank">here</a>. </p>

<p>Surely these experienced sponsors know that they have to &quot;train&quot;
their clients on what they can and cannot say during roadshows to promote a
share offer, but it seems that CTHK's people could not help themselves but to
start issuing unauthorised profit forecasts and announcing plans for asset
injections, right in the middle of the press conference to launch the IPO. The
Chairman and Chief Executive, Mr Zhou Deqiang reportedly said in a video
conference from New York: </p>

<blockquote>

<p>&quot;We'll consider acquiring about five provincial networks from our parent
six months after listing&quot; </p>

</blockquote>

<p>Not to miss out, the Chief Financial Officer, Ms Wu Andi reportedly said the
firm expected to achieve 8% annual revenue growth over the next three years, and
an 8%-11% rise in net profit. </p>

<p>We believe the Sponsors should be held to account for failing to control
their client's outbursts of such information, which was not in the prospectus.
It is the most basic no-no that you do not give out more financial information
than you have put in a prospectus, which is meant to tell the whole story,
nothing more and nothing less, and you are not allowed to embellish it with
verbal commentary. </p>

<p>As a result of this charade, CTHK has been obliged to issue a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021028/LTN20021028068.pdf" target="_blank">supplemental
prospectus</a> to try and put the genie back in the bottle, now claiming that
there are no profit forecasts, just <i>&quot;internal benchmarks&quot;</i> and <i>&quot;targets&quot;</i>
and that <i>&quot;we have no current plans or anticipated timing in respect of
any such acquisition and we have no plans as to the number or identity of the
provinces that this may involve&quot;.</i> </p>

<h3>HK connection fees</h3>

<p>How many places in the world are long distance calling rates on the rise?
Probably just one, for now. Not only have company officials been playing fast
and loose with the extra-prospectus material, but China Telecom yesterday
announced that the Ministry of Information Industry (the successor to the MPT)
has approved a <b>750%</b> increase in delivery fees for calls from HK from
US$0.02 to US$0.17 per minute, effective from this Friday. That means that calls
which make the short hop from Hong Kong to Guangdong are going to cost about 4
times the typical cost of a call from HK to New York, at least for now. </p>

<p>That comes just two days before CTHK closes its IPO and smacks of desperation,
not to mention the need for a 2nd supplemental prospectus to explain what this
major tariff change means to CTHK. Like we said before, China will not run its
industry to stifle economic growth for the benefit of foreign investors, and we
do not expect the increase will stick. So if you are an institutional fund
manager and your broker is on the phone telling you what exciting news it is
that the tariffs have been raised, and that you had better get your cheque book
out for those shares, just hang up the phone. </p>

<p>If you pass on this one, don't worry, there will be CTHK issues 2, 3 and 4,
as well as China Netcom 1, 2, 3 and 4. Like bad movies, the sequels just keep on
coming. </p>

<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17594">CHINA TELECOM CORPORATION LIMITED</a></li>
				
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