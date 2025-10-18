
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

<script type="text/javascript">document.title="DHL/SCMP's Sell Signal";</script>

	<div class="summary">We've found it - the best contra-indicator of performance for HK stocks yet - the DHL/SCMP Business Awards. Sitting at the awards dinner on Thursday night during a particularly boring speech, we had time to read the track record of these awards, which looks like a corporate graveyard of Hong Kong, with a good measure of walking wounded. Remember names like Siu-Fung Ceramics, Peregrine Capital, Akai Holdings and PCCW? They're all there, and more...</div>

<h2 class="center">DHL/SCMP's Sell Signal<br>
<span class="headlinedate">12 December 2001</span></h2>
<p>A word of advice to this year's winners of the DHL/SCMP
Business Awards: keep quiet about it! As we endured a
particularly boring swansong speech on Thursday night by Mr Po Chung, founder
of DHL International, who told us of all the awards that he and his company would have won if
they had not been conflicted by sponsoring the awards in the first place, we
couldn't help wishing that he had taken the awards anyway rather than give them
to some of the budding corporate basket cases who have won in the past. </p>

<p>The awards have been going 12 years now and, rather bravely, the
organisers saw fit to remind us of the winners of the 1990-2000 awards in the
centrefold of the evening's brochure. All the way through Mr Chung's speech, we
couldn't stop laughing - we were thinking about how to write this article! </p>

<p>For the purpose of measuring the post-award performance of
stocks, we'll assume that the judging decisions were made on the last trading
day of November each year, in time for an announcement in December. As you will
see, for some stocks, it doesn't matter what date we pick - they lost 100% and
went bust. </p>

<p>From the start in 1990 there were four main awards meant to
represent the crème de la crème of Hong Kong business. They are the Young
Entrepreneur Award, the International Award, the
Enterprise Trophy and the flagship Businessman of the Year Award. In 1992 they added the Executive of the Year Award, taking the total to 5
main awards each year. </p>

<h3>1990</h3>

<p>Let's kick off in 1990, which saw
James Ting, founder of Semi-Tech (Global) Ltd, pick up the Young Entrepreneur award. That
company was later renamed <a href="../dbpub/articles.asp?p=1827" target="_blank"> Akai Holdings Ltd</a> and went on to record the biggest
loss in HK corporate history of US$1.73bn in the year to 31-Jan-00 before going
bust. It then emerged that management control of its entire business was delegated to
another listed company on 12-Nov-99 without informing shareholders. The <a href="http://www.accountancyworld.com/website/pressarea/mediarelease.doc" target="_blank"> press
release</a> by the liquidators makes interesting reading. </p>

<p>Also in 1990, Peregrine Capital Ltd, a subsidiary of <a href="../dbpub/articles.asp?p=834" target="_blank"> Peregrine
Investment Holdings Ltd</a>, won the Enterprise Trophy. If you don't know what happened to PIHL,
then words like &quot;incompetence&quot; from the pen of the inspector appointed
to investigate its collapse in 1998 will enlighten you. </p>

<h3>1991</h3>

<p>In 1991, Businessman of the Year went to pro-democracy activist
(we're kidding) Gordon Wu, of Hopewell (Holdings) Ltd, which went on to lose
buckets of money in South-East Asian infrastructure projects and earned the
nick-name &quot;Hopeless Holdings&quot;. The stock closed
at an adjusted $15.125 on 29-Nov-91, peaked at $50.50 on 31-Dec-93 (at the
height of a bubble in Chinese infrastructure plays) and yesterday closed at
$4.725, down <b> 69%</b> in the 11 years since the award and 91% from its high. </p>

<p>Mr Wu famously remarked in Mar-00 that if Martin Lee, head of
the Democratic Party, had been Chief Executive of Hong Kong, then <i>&quot;the
Hang Seng Index would have dropped to 3,000 and we wouldn't be able to enjoy a
relaxed meal today&quot;</i>. Let's be thankful that Hopewell wasn't the only
stock in the HSI in 1993, or it would be a lot lower now. Hopewell was <a href="http://www.hsi.com.hk/constituent/hist-hsi20.html" target="_blank">evicted</a>
from the index on 6-Dec-99. </p>

<h3>1992</h3>

<p>In 1992, the Young Entrepreneur Award went to Eddy Tsang Man
Chung, Chairman of Ocean Information Holdings Ltd, listed on 15-Apr-92. That
company has been through two name changes and changes of control since then, and
is now known as Capital Strategic Investment Ltd. It closed on 30-Nov-92 at an
adjusted $1.335, and yesterday at $0.229, down <b>83%</b>. </p>

<h3>1993</h3>

<p>In 1993, the Young Entrepreneur Award went to Siegfried Lee Siu Fung, founder of <a href="../dbpub/articles.asp?p=4973" target="_blank">Siu
Fung Ceramics Holdings Ltd</a>. That company
recorded a loss of HK$1.44bn in calendar 1998 and went into liquidation
last year after several aborted rescue attempts. It was finally delisted on
10-Dec-01. </p>

<p>The Businessman of the Year award went to Cheng Yu-tung, Chairman of
New World Development Co Ltd, now a highly indebted company which closed on
30-Nov-93 at&nbsp; $27.30, peaked at $58.75 on 8-Aug-97 and yesterday closed at
$7.15, down <b>74%</b> since the award and 88% from the high. </p>

<h3>1994</h3>

<p>In 1994, the Young Entrepreneur Award went to Matthew Koon Wing
Yee, President &amp; CEO of Easyknit Enterprise Co Ltd, a private company which
went on to listing on 30-Jan-95 as Easyknit International Holdings Ltd. It came
undone in 1998-99, recording a total loss of HK$1.92bn in the 2 years to
31-Mar-99. Umpteen rights issues later, the company is still around, but from an
adjusted price of $5.604 on the first day of trading, it closed yesterday at
$0.144, down <b>97%</b> since IPO. </p>

<p>Not content with just awarding Mr Koon, the judges also awarded
a certificate of excellence to Alfred Siu Wing
Fung, Chairman of Australian-listed OLS Asia Holdings Ltd, a subsidiary of which, OLS Group Ltd,
was floated on 26-Jun-97. Both parent and subsidiary were taken over in 1999,
and the Hong Kong company is now known as <a href="../dbpub/articles.asp?p=3855" target="_blank"> Prosper
eVision
Ltd</a>. The Australian parent lost about HK$100m punting the equity market in
the 1997 crash,&nbsp; and then it turned out that between 1-Jul-97 (4 days after
the float) and 28-Feb-98, the HK subsidiary had made payments totalling over
HK$46m to or on behalf of its parent in breach of the listing rules, including
payment of an interim dividend on behalf of OLS Asia in Oct-97. Mr Siu and
several of his board were <a href="http://www.irasia.com/regbod/hk/sehk/press/p990316.htm" target="_blank"> censured</a> by the Stock Exchange on
16-Mar-99. </p>

<h3>1995</h3>

<p>In 1995, the Young Entrepreneur Award went to W.W. Wong,
Chairman of <a href="../dbpub/articles.asp?p=4554" target="_blank">Gilbert Holdings Ltd</a>, a linen
company which went bust in 1999, with a net deficit of HK$1.45bn. </p>

<h3>1996</h3>

<p>In 1996, the Enterprise Trophy went to privately-held <a href="http://www.consumer.org.hk/980806e.htm" target="_blank">KPS
Retail Stores Ltd</a>, which went bust in Oct-98 leaving thousands of
video-rental coupon holders as unsecured creditors (unless they kept the
tapes), after a last-ditch effort to get consumers to &quot;burn&quot; their
coupons by setting an expiration date. </p>

<h3>1997</h3>

<p>In 1997, Businessman of the Year went to Dickson Poon, Chairman
of <a href="../dbpub/articles.asp?p=4820" target="_blank">Dickson Concepts International Ltd</a>, a
company which now has a long history of controversial connected transactions with Mr Poon
and his private companies. Mr Poon had also won the Young Entrepreneur Award in
1991 and Dickson Concepts won a minor International certificate of excellence
award in 1996. The shares reached a monthly peak of $29.40 on 29-Aug-97, crashed
to $14.50 by 28-Nov-97 and yesterday closed at $1.98, down 93% from the high and
<b>86%</b> from the time of the top award. </p>

<h3>1998</h3>

<p>In 1998, Businessman of the Year went to Allan Wong, Chairman of
cordless phone and educational toy maker VTech Holdings Ltd, which also won the
International Award in 1996. The company went on to make a disastrous
acquisition in the US and its stock has fallen from $33.50 on 30-Nov-98 to $6.20
yesterday, down <b>81%</b>. </p>

<h3>1999</h3>

<p>In 1999, the judging panel clearly had phones on the brain and
awarded the Businessman of the Year Award (or should that be <a href="undergrad.asp" target="_blank"> undergraduate</a> of
the year?) to Richard Li, Chairman of <a href="../dbpub/articles.asp?p=2925" target="_blank">PCCW</a>,
with Executive of the Year going to Linus Cheung, CEO of <a href="../dbpub/articles.asp?p=368" target="_blank">Cable
&amp; Wireless HKT</a>. If you were a shareholder in either company then you
don't need reminding of how the stock price collapsed after their merger
financed by a combination of PCCW's hot-air paper and piles of debt. Between
them, billions of dollars of shareholder wealth has vanished. </p>

<p>Not content with just PCCW/HKT, in the same year the panel gave
the Enterprise Trophy to Ricky Wong's City Telecom (HK) Ltd, which on 30-Nov-99
closed at $7.35 per share. Yesterday it closed at $0.80, down <b>89%</b>. To
round things off, the Young Entrepreneur of the Year went to Ian Henry and Peter
Hamilton of China.com, which closed on 30-Nov-99 at US$$112 and yesterday at
$2.58, down <b>98%.</b> </p>

<h3>2000</h3>

<p>In 2000, Business Man of the Year was Patrick Wang of Johnson
Electric Holdings Ltd, a quality company which reached excessive valuations. Mr
Wang had previously won the Executive of the Year award in 1995. It closed on
30-Nov-00 at $14.70 and yesterday at $8.30, down <b>44%. </b>The International
Award went to Li &amp; Fung, whose listed shares fell from $16.30 on 30-Nov-00
to $9.05 yesterday, also down <b>44%</b>. In the same period, the Hang Seng
Index fell just 16%. Victor Fung, of Li &amp; Fung, was Businessman of the Year
in 1995, and his brother was Executive of the Year in 1993. </p>

<h3>2001 - Winners Beware!</h3>

<p>If you were a recipient of this year's awards (we'll spare you
the embarrassment of naming you), having read this article, you may wish to
reconsider whether the award is something you want to mention in your annual
report. Don't let it go to your head - best to ignore it and focus on running
your business and generating shareholder value. </p>

<p>Of course, there have been a few exceptions to the rule, and the
judges have on occasion picked people and companies which are still successful
today, such as Li Ka-shing (1990), HSBC and Boto (1992) and Esprit Holdings
(1998). There are also a number of awards to private companies for whom success
is more difficult to measure, and a number of &quot;safe&quot; awards to people
who were soon to retire, such as Swire's Peter Sutch (Businessman of the Year
1996), Hang Seng Bank's Lee Quo Wei (1994) and HSBC's William Purves (1992).
Another went on to be Financial Secretary - Anthony Leung won Executive of the
Year award while at Citibank in 1994. </p>

<p>However, the list of past award winners contains a
disproportionate number of abject failures, corporate governance basket cases
and simply over-hyped stocks. Unfortunately, a list of past judges was not
published, so they are spared that embarrassment unless anyone would care to
send us one! </p>

<p>Let's put it this way - a successful investment strategy in the
past would have been to sell short the listed winners of these awards for the
long-run. Perhaps some fund manager would care to set up the DHL/SCMP Short Fund
in their honour. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
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